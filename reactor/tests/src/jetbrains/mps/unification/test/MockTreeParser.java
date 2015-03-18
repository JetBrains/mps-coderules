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

package jetbrains.mps.unification.test;

import jetbrains.mps.unification.Node;
import jetbrains.mps.unification.Node;
import jetbrains.mps.unification.Var;

import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static jetbrains.mps.unification.test.MockNode.*;

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
            throw new IllegalArgumentException("expected single asTerm or asVar");
        }
        return nodes.get(0);
    }

    public static Node parseTerm(String str) {
        return (Node) parse(str);
    }

    public static Var parseVar(String str) {
        return (Var) parse(str);
    }

    private static class RecursiveDescent {

        private Token lastToken;
        private LinkedList<String> termsStack = new LinkedList<String>();
        private LinkedList<Integer> termsLabelsStack = new LinkedList<Integer>();
        private LinkedList<List<Node>> childrenStack = new LinkedList<List<Node>>();
        private int lastLabel = -1;
        private Map<Integer, Node> termRefs = new HashMap<Integer, Node>();
        // initialized on the parse finished
        private LookupHelper lookupHelper = new LookupHelper();

        private List<Node> parse(String toParse) {
            parseNextToken(Token.START, null);
            loop(toParse);
            parseNextToken(Token.END, null);
            checkFinalState();
            checkAllRefsExist();
            lookupHelper.setTermRefs(Collections.unmodifiableMap(new HashMap<Integer, Node>(termRefs)));
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
                    throw new ParseException("unexpected input: '"+toParse+"'");
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
                    checkLastTokenNotOneOf(Token.LABEL);
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
                    checkLastTokenOneOf(Token.TERM, Token.VAR, Token.REF, Token.RBRACE);
                    if (lastToken == Token.TERM) {
                        emptyTerm();
                    }
                    checkCloseBraceState();
                    endChildren();
                    break;
                case WHITESPACE:
                    return; // ignore
                case LABEL:
                    checkLastTokenNotOneOf(Token.LABEL);
                    if (lastToken == Token.TERM) {
                        emptyTerm();
                    }
                    lastLabel = Integer.parseInt(value.substring(1));
                    break;
                case REF:
                    checkLastTokenNotOneOf(Token.LABEL);
                    if (lastToken == Token.TERM) {
                        emptyTerm();
                    }
                    addRef(value);
                    break;
            }
            this.lastToken = token;
        }

        private void checkLastTokenOneOf(Token ... tokens) {
            if (lastToken == Token.WHITESPACE) return;
            for (Token token : tokens) {
                if (token == lastToken) return;
            }
            throw new ParseException("parse error: unexpected token '"+lastToken+"'");
        }

        private void checkLastTokenNotOneOf(Token ... tokens) {
            if (lastToken == Token.WHITESPACE) return;
            for (Token token : tokens) {
                if (token == lastToken) {
                    throw new ParseException("parse error: unexpected token '"+lastToken+"'");
                }
            }
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

        private void checkAllRefsExist() {
            for (Map.Entry<Integer, Node> e: termRefs.entrySet()) {
                if (e.getValue() == null) {
                    throw new ParseException("non-existing label '" + e.getKey() + "'");
                }
            }
        }

        private void beginTerm(String name) {
            termsStack.push(name);
            termsLabelsStack.push(lastLabel >= 0 ? lastLabel : null);
            lastLabel = -1;
        }

        private void emptyTerm() {
            String name = termsStack.pop();
            Integer label = termsLabelsStack.pop();
            Node newTerm = term(name);
            childrenStack.peek().add(newTerm);
            if (label != null) {
                termRefs.put(label, newTerm);
            }
        }

        private void beginChildren(){
            childrenStack.push(new ArrayList<Node>());
        }

        private void endChildren() {
            List<Node> children = childrenStack.pop();
            String name = termsStack.pop();
            Integer label = termsLabelsStack.pop();
            Node newTerm = term(name, children.toArray(new Node[children.size()]));
            childrenStack.peek().add(newTerm);
            if (label != null) {
                termRefs.put(label, newTerm);
            }
        }

        private void addVar(String name) {
            childrenStack.peek().add(var(name));
        }

        private void addRef(String ref) {
            final int label = Integer.parseInt(ref.substring(1));
            if (termRefs.containsKey(label)) {
                childrenStack.peek().add(ref(termRefs.get(label)));
            }
            else {
                termRefs.put(label, null);
                childrenStack.peek().add(ref(lookupHelper.lookup(label)));
            }
        }
    }

    private static enum Token {
        START(null),
        END(null),
        TERM(Pattern.compile("[a-z][a-zA-Z0-9_]*")),
        VAR(Pattern.compile("[A-Z][a-zA-Z0-9_]*")),
        LBRACE(Pattern.compile("\\{")),
        RBRACE(Pattern.compile("\\}")),
        WHITESPACE(Pattern.compile("\\s+")),
        LABEL(Pattern.compile("@[0-9]+")),
        REF(Pattern.compile("\\^[0-9]+"));

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

    private static class LookupHelper {
        private Map<Integer, Node> termRefs;

        private void setTermRefs (Map<Integer, Node> termRefs) {
            this.termRefs = termRefs;
        }

        public TermLookup lookup(final int label) {
            return new TermLookup() {
                @Override
                public Node lookupTerm() {
                    if (termRefs == null) {
                        throw new IllegalStateException("call to uninitialized lookup");
                    }
                    if (!termRefs.containsKey(label)) {
                        throw new IllegalStateException("non-existing label '" + label + "'");
                    }
                    return termRefs.get(label);
                }
            };
        }

    }
}





