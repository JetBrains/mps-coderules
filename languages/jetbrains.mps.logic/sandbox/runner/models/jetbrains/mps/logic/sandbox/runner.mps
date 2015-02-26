<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6f96e7a1-f1bc-4a86-b567-30d6df597894(jetbrains.mps.logic.sandbox.runner)">
  <persistence version="9" />
  <languages>
    <use id="894463aa-8754-49c0-bf4b-6a32af66b376" name="jetbrains.mps.jchr" version="-1" />
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
  </languages>
  <imports>
    <import index="3ypq" ref="r:ecf59ef9-2b17-40ee-91aa-e7999d4518f0(jetbrains.mps.unification.sandbox)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="k7g3" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="fxg7" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" />
    <import index="w2rx" ref="f:java_stub#b984ee52-f34d-4b6d-8812-866c1d3eae31#runtime(jetbrains.mps.jchr.runtime/runtime@java_stub)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="894463aa-8754-49c0-bf4b-6a32af66b376" name="jetbrains.mps.jchr">
      <concept id="1503029981970139" name="jetbrains.mps.jchr.structure.ParameterizedConstraintOperation" flags="ng" index="1Kb2w$">
        <child id="1503029982813032" name="parameter" index="1KcKQn" />
      </concept>
      <concept id="1503029981964506" name="jetbrains.mps.jchr.structure.HandlerType" flags="ig" index="1Kb3S_">
        <reference id="1503029982163244" name="handler" index="1Kaivj" />
      </concept>
      <concept id="1503029982035201" name="jetbrains.mps.jchr.structure.HandlerCreator" flags="ng" index="1KbMJY">
        <reference id="1503029982159404" name="handler" index="1Kajjj" />
        <child id="1503029984919269" name="solver" index="1KkMwq" />
      </concept>
      <concept id="1503029982882979" name="jetbrains.mps.jchr.structure.TellConstraintOperation" flags="ng" index="1KczDs" />
      <concept id="1503029983867083" name="jetbrains.mps.jchr.structure.AllConstraintsOperation" flags="ng" index="1KgMoO" />
      <concept id="1503029983897936" name="jetbrains.mps.jchr.structure.ConstraintOperation" flags="ng" index="1KgVYJ">
        <reference id="1503029983918490" name="constraint" index="1KgAX_" />
      </concept>
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="7571593955706120730" name="jetbrains.mps.logic.structure.Ast" flags="ng" index="1oi1Uc">
        <child id="7571593955706125526" name="root" index="1oi0x0" />
      </concept>
      <concept id="7571593955706137263" name="jetbrains.mps.logic.structure.ChildRole" flags="ng" index="1oi5ST">
        <child id="7571593955706137319" name="contents" index="1oi5TL" />
      </concept>
      <concept id="7571593955706137125" name="jetbrains.mps.logic.structure.Node" flags="ng" index="1oi5UN">
        <property id="7166797808989209772" name="kind" index="2IF10e" />
        <child id="7571593955706284441" name="role" index="1ojpOf" />
      </concept>
      <concept id="7571593955706137189" name="jetbrains.mps.logic.structure.Role" flags="ng" index="1oi5VN">
        <property id="7571593955706137428" name="cardinality" index="1oi5Z2" />
      </concept>
      <concept id="7571593955706137472" name="jetbrains.mps.logic.structure.ValueRole" flags="ng" index="1oi5Wm">
        <child id="7571593955706137672" name="contents" index="1oi5zu" />
      </concept>
      <concept id="7571593955706137573" name="jetbrains.mps.logic.structure.ValueHolder" flags="ng" index="1oi5XN">
        <property id="7571593955706137638" name="value" index="1oi5yK" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="5lJXKt5l0">
    <property role="TrG5h" value="TestTypeOf" />
    <node concept="2tJIrI" id="5lJXKt5l1" role="jymVt" />
    <node concept="2YIFZL" id="5lJXKt5l2" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="37vLTG" id="5lJXKt5l3" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="5lJXKt5l4" role="1tU5fm">
          <node concept="17QB3L" id="5lJXKt5l5" role="10Q1$1" />
        </node>
      </node>
      <node concept="3cqZAl" id="5lJXKt5l6" role="3clF45" />
      <node concept="3Tm1VV" id="5lJXKt5l7" role="1B3o_S" />
      <node concept="3clFbS" id="5lJXKt5l8" role="3clF47">
        <node concept="3cpWs8" id="5lJXKt5l9" role="3cqZAp">
          <node concept="3cpWsn" id="5lJXKt5la" role="3cpWs9">
            <property role="TrG5h" value="handler" />
            <node concept="1Kb3S_" id="5lJXKt5lb" role="1tU5fm">
              <ref role="1Kaivj" to="3ypq:6SkxsMzGW42" resolve="typeOf" />
            </node>
            <node concept="2ShNRf" id="5lJXKt5lc" role="33vP2m">
              <node concept="1KbMJY" id="5lJXKt5ld" role="2ShVmc">
                <ref role="1Kajjj" to="3ypq:6SkxsMzGW42" resolve="typeOf" />
                <node concept="2ShNRf" id="5lJXKt5le" role="1KkMwq">
                  <node concept="1pGfFk" id="5lJXKt5lf" role="2ShVmc">
                    <ref role="37wK5l" to="oy3s:4U_yxogDDy9" resolve="UnificationSolverImpl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5lJXKwaQC" role="3cqZAp" />
        <node concept="3clFbF" id="5lJXKt5lh" role="3cqZAp">
          <node concept="2OqwBi" id="5lJXKt5li" role="3clFbG">
            <node concept="37vLTw" id="5lJXKt5lj" role="2Oq$k0">
              <ref role="3cqZAo" node="5lJXKt5la" resolve="handler" />
            </node>
            <node concept="1KczDs" id="5lJXKt5lk" role="2OqNvi">
              <ref role="1KgAX_" to="3ypq:6SkxsMzGX8n" resolve="typeOf" />
              <node concept="3cmrfG" id="5lJXKt5ll" role="1KcKQn">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="1oi1Uc" id="5lJXKt5lm" role="1KcKQn">
                <node concept="1oi5UN" id="5lJXKt5ln" role="1oi0x0">
                  <property role="2IF10e" value="CLASSIFIER_TYPE" />
                  <node concept="1oi5Wm" id="5lJXKt5lp" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="5lJXKt5lq" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="5lJXKt5lr" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="5lJXKt5ls" role="1oi5zu">
                      <property role="1oi5yK" value="Foo" />
                    </node>
                  </node>
                  <node concept="1oi5ST" id="5lJXKv6Ge" role="1ojpOf">
                    <property role="TrG5h" value="parameter" />
                    <property role="1oi5Z2" value="multiple" />
                    <node concept="1oi5UN" id="5lJXKv6H_" role="1oi5TL">
                      <node concept="1oi5Wm" id="5lJXKv6HA" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="5lJXKv6HB" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="5lJXKv6HC" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="5lJXKv6HD" role="1oi5zu">
                          <property role="1oi5yK" value="String" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5lJXKt5lt" role="3cqZAp">
          <node concept="2OqwBi" id="5lJXKt5lu" role="3clFbG">
            <node concept="37vLTw" id="5lJXKt5lv" role="2Oq$k0">
              <ref role="3cqZAo" node="5lJXKt5la" resolve="handler" />
            </node>
            <node concept="1KczDs" id="5lJXKt5lw" role="2OqNvi">
              <ref role="1KgAX_" to="3ypq:6SkxsMzGX8n" resolve="typeOf" />
              <node concept="3cmrfG" id="5lJXKt5lx" role="1KcKQn">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="1oi1Uc" id="5lJXKt5ly" role="1KcKQn">
                <node concept="1oi5UN" id="5lJXKt5lz" role="1oi0x0">
                  <property role="2IF10e" value="CLASSIFIER_TYPE" />
                  <node concept="1oi5ST" id="5lJXKt5l$" role="1ojpOf">
                    <property role="TrG5h" value="parameter" />
                    <property role="1oi5Z2" value="multiple" />
                    <node concept="1oi5UN" id="5lJXKt5l_" role="1oi5TL">
                      <node concept="1oi5Wm" id="5lJXKt5lB" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="5lJXKt5lC" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="5lJXKt5lD" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="5lJXKt5lE" role="1oi5zu">
                          <property role="1oi5yK" value="String" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="5lJXKt5lF" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="5lJXKt5lG" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="5lJXKt5lH" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="5lJXKt5lI" role="1oi5zu">
                      <property role="1oi5yK" value="Bar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5lJXKt5lK" role="3cqZAp" />
        <node concept="3cpWs8" id="5lJXKtFNl" role="3cqZAp">
          <node concept="3cpWsn" id="5lJXKtFNm" role="3cpWs9">
            <property role="TrG5h" value="allTypeOf" />
            <node concept="3uibUv" id="5lJXKtFN1" role="1tU5fm">
              <ref role="3uigEE" to="k7g3:~Collection" resolve="Collection" />
              <node concept="3qUE_q" id="5lJXKtFN8" role="11_B2D">
                <node concept="3uibUv" id="5lJXKtFN9" role="3qUE_r">
                  <ref role="3uigEE" to="w2rx:~IConstraint" resolve="IConstraint" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5lJXKtFNn" role="33vP2m">
              <node concept="37vLTw" id="5lJXKtFNo" role="2Oq$k0">
                <ref role="3cqZAo" node="5lJXKt5la" resolve="handler" />
              </node>
              <node concept="1KgMoO" id="5lJXKtFNp" role="2OqNvi">
                <ref role="1KgAX_" to="3ypq:6SkxsMzGX8n" resolve="typeOf" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5lJXKt5lS" role="3cqZAp" />
        <node concept="1DcWWT" id="5lJXKtIkb" role="3cqZAp">
          <node concept="3clFbS" id="5lJXKtIkc" role="2LFqv$">
            <node concept="3cpWs8" id="5lJXKtK9s" role="3cqZAp">
              <node concept="3cpWsn" id="5lJXKtK9t" role="3cpWs9">
                <property role="TrG5h" value="toargs" />
                <node concept="10Q1$e" id="5lJXKtK9o" role="1tU5fm">
                  <node concept="3uibUv" id="5lJXKtK9r" role="10Q1$1">
                    <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5lJXKtK9u" role="33vP2m">
                  <node concept="37vLTw" id="5lJXKtK9v" role="2Oq$k0">
                    <ref role="3cqZAo" node="5lJXKtIkf" resolve="to" />
                  </node>
                  <node concept="liA8E" id="5lJXKtK9w" role="2OqNvi">
                    <ref role="37wK5l" to="w2rx:~IConstraint.getArguments():java.lang.Object[]" resolve="getArguments" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5lJXKt5lT" role="3cqZAp">
              <node concept="2OqwBi" id="5lJXKt5lU" role="3clFbG">
                <node concept="10M0yZ" id="5lJXKt5lV" role="2Oq$k0">
                  <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
                  <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
                </node>
                <node concept="liA8E" id="5lJXKt5lW" role="2OqNvi">
                  <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
                  <node concept="3cpWs3" id="5lJXKtKGZ" role="37wK5m">
                    <node concept="AH0OO" id="5lJXKtLxd" role="3uHU7w">
                      <node concept="3cmrfG" id="5lJXKtLxq" role="AHEQo">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="37vLTw" id="5lJXKtLnA" role="AHHXb">
                        <ref role="3cqZAo" node="5lJXKtK9t" resolve="toargs" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="5lJXKt5lX" role="3uHU7B">
                      <node concept="3cpWs3" id="5lJXKtJIG" role="3uHU7B">
                        <node concept="AH0OO" id="5lJXKtKmD" role="3uHU7w">
                          <node concept="3cmrfG" id="5lJXKtKv9" role="AHEQo">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="37vLTw" id="5lJXKtK9x" role="AHHXb">
                            <ref role="3cqZAo" node="5lJXKtK9t" resolve="toargs" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="5lJXKt5lZ" role="3uHU7B">
                          <property role="Xl_RC" value="&gt; " />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="5lJXKtL27" role="3uHU7w">
                        <property role="Xl_RC" value="=" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5lJXKtIkf" role="1Duv9x">
            <property role="TrG5h" value="to" />
            <node concept="3uibUv" id="5lJXKtIF1" role="1tU5fm">
              <ref role="3uigEE" to="w2rx:~IConstraint" resolve="IConstraint" />
            </node>
          </node>
          <node concept="37vLTw" id="5lJXKtIkl" role="1DdaDG">
            <ref role="3cqZAo" node="5lJXKtFNm" resolve="allTypeOf" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5lJXKt5m0" role="jymVt" />
    <node concept="3Tm1VV" id="5lJXKt5m1" role="1B3o_S" />
  </node>
</model>

