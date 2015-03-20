/*
 * Copyright 2015 JetBrains s.r.o.
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
import static org.junit.Assert.*;

import java.util.*;

/**
 * @author Fedor Isakov
 */
public class AssertStructurallyEquivalent {

    public static void assertEquivalent(Node a, Node b) throws Exception {

        final Signature signature = new Signature();
        signature.setWalkers(
                // first pass
                new NodeWalker(
                    new NodeVisitor<Node>(Node.Kind.FUN) {
                        @Override
                        public Collection<? extends Node> visit(Node term) throws Exception {
                            signature.label(term);
                            return term.children();
                        }
                    }),
                // second pass
                new NodeWalker(
                    new NodeVisitor<Node>(Node.Kind.FUN) {
                        @Override
                        public Collection<? extends Node> visit(Node term) throws Exception {
                            signature.appendSignature("@").append(signature.getLabel(term)).append(term.symbol());
                            return term.children();
                        }
                    },
                    new NodeVisitor<Node>(Node.Kind.VAR) {
                        @Override
                        public Collection<? extends Node> visit(Node var) throws Exception {
                            signature.appendSignature("$").append(var.symbol());
                            return Collections.emptyList();
                        }
                    }, new NodeVisitor<Node>(Node.Kind.REF) {
                        @Override
                        public Collection<? extends Node> visit(Node ref) throws Exception {
                            if (ref.get().is(Node.Kind.FUN)) {
                                Integer label = signature.getLabel(ref.get());
                                assertNotNull("not found label for '"+ref.get() + "'", label);
                                signature.appendSignature("^").append(label);
                                return Collections.emptyList();
                            }
                            else if (ref.get().is(Node.Kind.VAR)) {
                                signature.appendSignature("^").append(ref.get().symbol());
                                return Collections.emptyList();
                            }
                            else {
                                throw new UnsupportedOperationException();
                            }

                        }
                    })
                );

        String signa = signature.getSignature(a);
        String signb = signature.getSignature(b);

        assertEquals(signa, signb);
    }


    private static class Signature {

        private IdentityHashMap<Node, Integer> labels = new IdentityHashMap<Node, Integer>();
        private int label = 1;
        private StringBuilder signature = new StringBuilder();
        private NodeWalker[] walkers;

        protected void label(Node node) {
            labels.put(node, label++);
        }

        protected Integer getLabel(Node node) {
            return labels.get(node);
        }

        protected StringBuilder appendSignature(String str) {
            return signature.append(str);
        }

        public String getSignature (Node node) throws Exception {
            reset();
            for (NodeWalker walker : walkers) {
                walker.walk(node);
            }
            return signature.toString();
        }

        protected void reset() {
            labels.clear();
            this.label = 1;
            signature.setLength(0);
        }

        protected void setWalkers(NodeWalker ... walkers) {
            this.walkers = walkers;
        }
    }

    private static abstract class NodeVisitor <T extends Node> {

        private Node.Kind kind;

        public NodeVisitor(Node.Kind kind) {
            this.kind = kind;
        }

        public Node.Kind applicableTo() {
            return kind;
        }

        public abstract Collection<? extends Node> visit(T t) throws Exception ;

    }

    private static class NodeWalker {

        private Map<Node.Kind, NodeVisitor<? extends Node>> visitorMap = new HashMap<Node.Kind, NodeVisitor<? extends Node>>();

        public NodeWalker(NodeVisitor<? extends Node>... visitors) {
            for (NodeVisitor<? extends Node> visitor : visitors) {
                visitorMap.put(visitor.applicableTo(), visitor);
            }
        }

        public void walk(Node node) throws Exception {
            Collection<? extends Node> children = switchClass(node);
            for (Node child : children) {
                walk(child);
            }
        }

        private Collection<? extends Node> switchClass(Node node) throws Exception {
            for (Map.Entry<Node.Kind, NodeVisitor<? extends Node>> e : visitorMap.entrySet()) {
                if (node.is(e.getKey())) {
                    NodeVisitor<Node> value = (NodeVisitor<Node>) e.getValue();
                    return value.visit(node);
                }
            }
            return Collections.emptyList();
        }

    }

}
