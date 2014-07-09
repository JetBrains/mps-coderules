/*
 * Copyright 2014 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package jetbrains.mps.unification;

import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static jetbrains.mps.unification.MockNode.*;

/**
 * Created by fyodor on 10.06.2014.
 */
public class MockTreeParser {

    public static Collection<Node> parseAll(String str) {
        return new RecursiveDescent().parse(str);
    }

    public static Node parse(String str) {
        List<Node> nodes = new RecursiveDescent().parse(str);
        if (nodes.size() != 1) {
            throw new IllegalArgumentException("expected single term or var");
        }
        return nodes.get(0);
    }

    public static Term parseTerm(String str) {
        return (Term) parse(str);
    }

    public static Var parseVar(String str) {
        return (Var) parse(str);
    }

    private static class RecursiveDescent {

        private Token lastToken;
        private LinkedList<String> termsStack = new LinkedList<String>();
        private LinkedList<List<Node>> childrenStack = new LinkedList<List<Node>>();

        private List<Node> parse(String toParse) {
            parseNextToken(Token.START, null);
            loop(toParse);
            parseNextToken(Token.END, null);
            checkFinalState();
            return Collections.unmodifiableList(childrenStack.pop());
        }

        private void loop(String toParse) {
            Matcher matcher = null;
            do {
                for (Token token: Token.values()) {
                    if (token.pattern == null) continue;

                    if ((matcher = token.pattern.matcher(toParse)).lookingAt()) {
                        parseNextToken(token, matcher.group());
                        toParse = toParse.substring(matcher.end());
                        break;
                    }
                }
                // see if the last matching succeeded
                assert matcher != null;
                if (!matcher.lookingAt() && !matcher.hitEnd()) {
                    throw new ParseException("unexpected input");
                }
            } while (!matcher.hitEnd());
        }

        private void parseNextToken(Token token, String value) {
            switch (token) {
                case START:
                    childrenStack.push(new ArrayList<Node>());
                    break;
                case END:
                    checkLastTokenOneOf(Token.TERM, Token.VAR, Token.RBRACE);
                    if (lastToken == Token.TERM) {
                        emptyTerm();
                    }
                    break;
                case TERM:
                    if (lastToken == Token.TERM) {
                        emptyTerm();
                    }
                    beginTerm(value);
                    break;
                case VAR:
                    if (lastToken == Token.TERM) {
                        emptyTerm();
                    }
                    addVar(value);
                    break;
                case LBRACE:
                    checkLastTokenOneOf(Token.TERM);
                    beginChildren();
                    break;
                case RBRACE:
                    checkLastTokenOneOf(Token.TERM, Token.VAR, Token.RBRACE);
                    if (lastToken == Token.TERM) {
                        emptyTerm();
                    }
                    checkCloseBraceState();
                    endChildren();
                    break;
                case WHITESPACE:
                    return; // ignore
            }
            this.lastToken = token;
        }

        private void checkLastTokenOneOf(Token ... tokens) {
            for (Token token : tokens) {
                if (token == lastToken) return;
            }
            throw new ParseException("parse error");
        }

        private void checkFinalState() {
            if (childrenStack.size() != 1 || childrenStack.peek().isEmpty() || !termsStack.isEmpty()) {
                throw new ParseException("unexpected end of input");
            }
        }

        private void checkCloseBraceState() {
            if (childrenStack.isEmpty() || childrenStack.peek().isEmpty() || termsStack.isEmpty()) {
                throw new ParseException("unexpected closing brace");
            }
        }

        private void beginTerm(String name) {
            termsStack.push(name);
        }

        private void emptyTerm() {
            String term = termsStack.pop();
            childrenStack.peek().add(term(term));
        }

        private void beginChildren(){
            childrenStack.push(new ArrayList<Node>());
        }

        private void endChildren() {
            String term = termsStack.pop();
            List<Node> children = childrenStack.pop();
            childrenStack.peek().add(term(term, children.toArray(new Node[children.size()])));
        }

        private void addVar(String name) {
            childrenStack.peek().add(var(name));
        }
    }

    private static enum Token {
        START(null),
        END(null),
        TERM(Pattern.compile("[a-z][a-zA-Z0-9_]*")),
        VAR(Pattern.compile("[A-Z][a-zA-Z0-9_]*")),
        LBRACE(Pattern.compile("\\{")),
        RBRACE(Pattern.compile("\\}")),
        WHITESPACE(Pattern.compile("\\s+"));

        private Pattern pattern;

        Token(Pattern pattern) {
            this.pattern = pattern;
        }
    }

    public static class ParseException extends RuntimeException {
        private ParseException(String s) {
            super(s);
        }
    }
}





