<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7175cf50-f44a-499d-9f38-ec0eb0ee874d(jetbrains.mps.logic.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="-1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
  </languages>
  <imports>
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.unification.tree)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="jfki" ref="f:java_stub#7526e0cf-1ce7-46f8-a555-9eca1e06c23b#jetbrains.mps.unification(jetbrains.mps.unification@java_stub)" />
    <import index="fxg7" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="w2rx" ref="f:java_stub#b984ee52-f34d-4b6d-8812-866c1d3eae31#runtime(jetbrains.mps.jchr.runtime/runtime@java_stub)" />
    <import index="k7g3" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ">
        <child id="1214996921760" name="bound" index="3ztrMU" />
      </concept>
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
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
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
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
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
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
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="238586457668550951" name="jetbrains.mps.logic.structure.LogicalSubstitution" flags="ng" index="22Ky0T">
        <child id="238586457668550958" name="expression" index="22Ky0K" />
      </concept>
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
      <concept id="1611448358170966948" name="jetbrains.mps.logic.structure.Variable" flags="ng" index="1$XVwq" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="1pt0VTMCtZb">
    <property role="TrG5h" value="DslTest" />
    <node concept="2tJIrI" id="1pt0VTMCtZx" role="jymVt" />
    <node concept="2YIFZL" id="1pt0VTMCtZF" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="37vLTG" id="1pt0VTMCtZG" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="1pt0VTMCtZH" role="1tU5fm">
          <node concept="17QB3L" id="1pt0VTMCtZI" role="10Q1$1" />
        </node>
      </node>
      <node concept="3cqZAl" id="1pt0VTMCtZJ" role="3clF45" />
      <node concept="3Tm1VV" id="1pt0VTMCtZK" role="1B3o_S" />
      <node concept="3clFbS" id="1pt0VTMCtZL" role="3clF47">
        <node concept="3clFbH" id="1pt0VTMGyBr" role="3cqZAp" />
        <node concept="3cpWs8" id="1pt0VTMwfzE" role="3cqZAp">
          <node concept="3cpWsn" id="1pt0VTMwfzF" role="3cpWs9">
            <property role="TrG5h" value="tree1" />
            <node concept="3uibUv" id="1pt0VTMF5o1" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="1oi1Uc" id="1pt0VTMwg2B" role="33vP2m">
              <node concept="1oi5UN" id="1pt0VTMwg2C" role="1oi0x0">
                <node concept="1oi5Wm" id="1pt0VTMwg2E" role="1ojpOf">
                  <property role="TrG5h" value="concept" />
                  <property role="1oi5Z2" value="single" />
                  <node concept="1oi5XN" id="1pt0VTMwg2F" role="1oi5zu">
                    <property role="1oi5yK" value="ClassifierType" />
                  </node>
                </node>
                <node concept="1oi5Wm" id="1pt0VTMwg2G" role="1ojpOf">
                  <property role="TrG5h" value="cls" />
                  <property role="1oi5Z2" value="single" />
                  <node concept="1oi5XN" id="1pt0VTMwg2H" role="1oi5zu">
                    <property role="1oi5yK" value="Map" />
                  </node>
                </node>
                <node concept="1oi5ST" id="1pt0VTMwg2I" role="1ojpOf">
                  <property role="TrG5h" value="param" />
                  <property role="1oi5Z2" value="multiple" />
                  <node concept="1$XVwq" id="1pt0VTMFKy6" role="1oi5TL">
                    <property role="TrG5h" value="FIRST" />
                  </node>
                  <node concept="1oi5UN" id="1pt0VTMxWaE" role="1oi5TL">
                    <node concept="1oi5Wm" id="1pt0VTMxWaF" role="1ojpOf">
                      <property role="TrG5h" value="concept" />
                      <node concept="1oi5XN" id="1pt0VTMxWaG" role="1oi5zu">
                        <property role="1oi5yK" value="ClassifierType" />
                      </node>
                    </node>
                    <node concept="1oi5Wm" id="1pt0VTMxWaH" role="1ojpOf">
                      <property role="TrG5h" value="cls" />
                      <node concept="1oi5XN" id="1pt0VTMxWaI" role="1oi5zu">
                        <property role="1oi5yK" value="Map" />
                      </node>
                    </node>
                    <node concept="1oi5ST" id="1bm7a6FkZZ7" role="1ojpOf">
                      <property role="TrG5h" value="param" />
                      <property role="1oi5Z2" value="multiple" />
                      <node concept="1oi5UN" id="1bm7a6Fl0le" role="1oi5TL">
                        <node concept="1oi5Wm" id="1bm7a6Fl0wN" role="1ojpOf">
                          <property role="TrG5h" value="concept" />
                          <node concept="1oi5XN" id="1bm7a6Fl0Im" role="1oi5zu">
                            <property role="1oi5yK" value="ClassifierType" />
                          </node>
                        </node>
                        <node concept="1oi5Wm" id="1bm7a6Fl2Ex" role="1ojpOf">
                          <property role="TrG5h" value="cls" />
                          <node concept="1oi5XN" id="1bm7a6Fl2Io" role="1oi5zu">
                            <property role="1oi5yK" value="Integer" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="1bm7a6Fl2vn" role="1oi5TL">
                        <node concept="1oi5Wm" id="1bm7a6Fl2vp" role="1ojpOf">
                          <property role="TrG5h" value="concept" />
                          <node concept="1oi5XN" id="1bm7a6Fl2vq" role="1oi5zu">
                            <property role="1oi5yK" value="ClassifierType" />
                          </node>
                        </node>
                        <node concept="1oi5Wm" id="1bm7a6Fl2N3" role="1ojpOf">
                          <property role="TrG5h" value="cls" />
                          <node concept="1oi5XN" id="1bm7a6Fl2ON" role="1oi5zu">
                            <property role="1oi5yK" value="String" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1$XVwq" id="1pt0VTMIn10" role="1oi5TL">
                    <property role="TrG5h" value="THIRD" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1pt0VTMIA8$" role="3cqZAp" />
        <node concept="3cpWs8" id="1pt0VTMEUH4" role="3cqZAp">
          <node concept="3cpWsn" id="1pt0VTMEUH5" role="3cpWs9">
            <property role="TrG5h" value="tree2" />
            <node concept="3uibUv" id="1pt0VTMF5yw" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="1oi1Uc" id="1pt0VTMEUH7" role="33vP2m">
              <node concept="1oi5UN" id="1pt0VTMEUH8" role="1oi0x0">
                <node concept="1oi5Wm" id="1pt0VTMEUHa" role="1ojpOf">
                  <property role="TrG5h" value="concept" />
                  <property role="1oi5Z2" value="single" />
                  <node concept="1oi5XN" id="CCcKPljIyx" role="1oi5zu">
                    <property role="1oi5yK" value="_" />
                    <node concept="22Ky0T" id="CCcKPljIzp" role="lGtFl">
                      <node concept="Xl_RD" id="CCcKPljIZa" role="22Ky0K">
                        <property role="Xl_RC" value="BAR" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1oi5Wm" id="1pt0VTMEUHc" role="1ojpOf">
                  <property role="TrG5h" value="cls" />
                  <property role="1oi5Z2" value="single" />
                  <node concept="1$XVwq" id="5iubxWjksNB" role="1oi5zu">
                    <property role="TrG5h" value="FOO" />
                  </node>
                </node>
                <node concept="1oi5ST" id="1pt0VTMEUHe" role="1ojpOf">
                  <property role="TrG5h" value="param" />
                  <property role="1oi5Z2" value="multiple" />
                  <node concept="1oi5UN" id="1pt0VTMEUHf" role="1oi5TL">
                    <node concept="1oi5Wm" id="1pt0VTMEUHg" role="1ojpOf">
                      <property role="TrG5h" value="concept" />
                      <node concept="1oi5XN" id="1pt0VTMEUHh" role="1oi5zu">
                        <property role="1oi5yK" value="ClassifierType" />
                      </node>
                    </node>
                    <node concept="1oi5Wm" id="1pt0VTMEUHi" role="1ojpOf">
                      <property role="TrG5h" value="cls" />
                      <node concept="1oi5XN" id="1pt0VTMEUHj" role="1oi5zu">
                        <property role="1oi5yK" value="String" />
                      </node>
                    </node>
                  </node>
                  <node concept="1$XVwq" id="1pt0VTMEURr" role="1oi5TL">
                    <property role="TrG5h" value="SECOND" />
                  </node>
                  <node concept="1oi5UN" id="1pt0VTMIoSx" role="1oi5TL">
                    <node concept="1oi5Wm" id="1pt0VTMIoSy" role="1ojpOf">
                      <property role="TrG5h" value="concept" />
                      <node concept="1oi5XN" id="1pt0VTMIoSz" role="1oi5zu">
                        <property role="1oi5yK" value="ClassifierType" />
                      </node>
                    </node>
                    <node concept="1oi5Wm" id="1pt0VTMIoS$" role="1ojpOf">
                      <property role="TrG5h" value="cls" />
                      <node concept="1oi5XN" id="1pt0VTMIoS_" role="1oi5zu">
                        <property role="1oi5yK" value="Long" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5lJXKD_QH" role="3cqZAp" />
        <node concept="3clFbF" id="1pt0VTMwXRd" role="3cqZAp">
          <node concept="2OqwBi" id="1pt0VTMwXR9" role="3clFbG">
            <node concept="10M0yZ" id="1pt0VTMwXRa" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="1pt0VTMwXRb" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="1pt0VTMwZ4w" role="37wK5m">
                <node concept="37vLTw" id="1pt0VTMwZa_" role="3uHU7w">
                  <ref role="3cqZAo" node="1pt0VTMwfzF" resolve="tree1" />
                </node>
                <node concept="Xl_RD" id="1pt0VTMwXRc" role="3uHU7B">
                  <property role="Xl_RC" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1pt0VTMEUYJ" role="3cqZAp">
          <node concept="2OqwBi" id="1pt0VTMEUYK" role="3clFbG">
            <node concept="10M0yZ" id="1pt0VTMEUYL" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="1pt0VTMEUYM" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="1pt0VTMEUYN" role="37wK5m">
                <node concept="37vLTw" id="1pt0VTMEVdP" role="3uHU7w">
                  <ref role="3cqZAo" node="1pt0VTMEUH5" resolve="tree2" />
                </node>
                <node concept="Xl_RD" id="1pt0VTMEUYP" role="3uHU7B">
                  <property role="Xl_RC" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1pt0VTMF4rE" role="3cqZAp" />
        <node concept="3cpWs8" id="1pt0VTMF4uP" role="3cqZAp">
          <node concept="3cpWsn" id="1pt0VTMF4uQ" role="3cpWs9">
            <property role="TrG5h" value="unify" />
            <node concept="3uibUv" id="1pt0VTMF4uR" role="1tU5fm">
              <ref role="3uigEE" to="jfki:~Substitution" resolve="Substitution" />
            </node>
            <node concept="2YIFZM" id="1pt0VTMF4uS" role="33vP2m">
              <ref role="37wK5l" to="jfki:~Unification.unify(Node,Node)" resolve="unify" />
              <ref role="1Pybhc" to="jfki:~Unification" resolve="Unification" />
              <node concept="2OqwBi" id="1pt0VTMF4uT" role="37wK5m">
                <node concept="37vLTw" id="1pt0VTMF4uU" role="2Oq$k0">
                  <ref role="3cqZAo" node="1pt0VTMwfzF" resolve="tree1" />
                </node>
                <node concept="liA8E" id="1pt0VTMF4uV" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                </node>
              </node>
              <node concept="2OqwBi" id="1pt0VTMF4uW" role="37wK5m">
                <node concept="37vLTw" id="1pt0VTMF4uX" role="2Oq$k0">
                  <ref role="3cqZAo" node="1pt0VTMEUH5" resolve="tree2" />
                </node>
                <node concept="liA8E" id="1pt0VTMF4uY" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1pt0VTMF4uZ" role="3cqZAp" />
        <node concept="3clFbF" id="1pt0VTMF4v0" role="3cqZAp">
          <node concept="2OqwBi" id="1pt0VTMF4v1" role="3clFbG">
            <node concept="10M0yZ" id="1pt0VTMF4v2" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="1pt0VTMF4v3" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="1pt0VTMF4v4" role="37wK5m">
                <node concept="37vLTw" id="1pt0VTMF4v5" role="3uHU7w">
                  <ref role="3cqZAo" node="1pt0VTMF4uQ" resolve="unify" />
                </node>
                <node concept="Xl_RD" id="1pt0VTMF4v6" role="3uHU7B">
                  <property role="Xl_RC" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1bm7a6EWZV3" role="3cqZAp" />
        <node concept="1DcWWT" id="1bm7a6EX0CT" role="3cqZAp">
          <node concept="3clFbS" id="1bm7a6EX0CU" role="2LFqv$">
            <node concept="3cpWs8" id="1bm7a6Femk0" role="3cqZAp">
              <node concept="3cpWsn" id="1bm7a6Femk1" role="3cpWs9">
                <property role="TrG5h" value="term" />
                <node concept="3uibUv" id="1bm7a6FemjY" role="1tU5fm">
                  <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
                </node>
                <node concept="2OqwBi" id="1bm7a6Femk2" role="33vP2m">
                  <node concept="37vLTw" id="1bm7a6Femk3" role="2Oq$k0">
                    <ref role="3cqZAo" node="1bm7a6EX0CX" resolve="bnd" />
                  </node>
                  <node concept="liA8E" id="1bm7a6Femk4" role="2OqNvi">
                    <ref role="37wK5l" to="jfki:~Substitution.Binding.node()" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1bm7a6Fena0" role="3cqZAp">
              <node concept="3cpWsn" id="1bm7a6Fena1" role="3cpWs9">
                <property role="TrG5h" value="copy" />
                <node concept="3uibUv" id="1bm7a6Fen9N" role="1tU5fm">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="ITreePart" />
                  <node concept="3uibUv" id="1bm7a6Fen9Q" role="11_B2D">
                    <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1bm7a6Fena2" role="33vP2m">
                  <node concept="1eOMI4" id="1bm7a6Fena3" role="2Oq$k0">
                    <node concept="10QFUN" id="1bm7a6Fena4" role="1eOMHV">
                      <node concept="3uibUv" id="1bm7a6Fena5" role="10QFUM">
                        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="ITreePart" />
                        <node concept="3uibUv" id="1bm7a6Fena6" role="11_B2D">
                          <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1bm7a6Fena7" role="10QFUP">
                        <ref role="3cqZAo" node="1bm7a6Femk1" resolve="term" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1bm7a6Fena8" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:1bm7a6EXvNI" resolve="copyRecursively" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1bm7a6EX0ZJ" role="3cqZAp">
              <node concept="2OqwBi" id="1bm7a6EX0ZF" role="3clFbG">
                <node concept="10M0yZ" id="1bm7a6EX0ZG" role="2Oq$k0">
                  <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
                  <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
                </node>
                <node concept="liA8E" id="1bm7a6EX0ZH" role="2OqNvi">
                  <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
                  <node concept="3cpWs3" id="1bm7a6EX2vZ" role="37wK5m">
                    <node concept="37vLTw" id="1bm7a6FenAJ" role="3uHU7w">
                      <ref role="3cqZAo" node="1bm7a6Fena1" resolve="copy" />
                    </node>
                    <node concept="3cpWs3" id="1bm7a6EX244" role="3uHU7B">
                      <node concept="3cpWs3" id="1bm7a6EX1EG" role="3uHU7B">
                        <node concept="Xl_RD" id="1bm7a6EX0ZI" role="3uHU7B">
                          <property role="Xl_RC" value="&gt; " />
                        </node>
                        <node concept="2OqwBi" id="1bm7a6EX1NO" role="3uHU7w">
                          <node concept="37vLTw" id="1bm7a6EX1Ho" role="2Oq$k0">
                            <ref role="3cqZAo" node="1bm7a6EX0CX" resolve="bnd" />
                          </node>
                          <node concept="liA8E" id="1bm7a6EX1SZ" role="2OqNvi">
                            <ref role="37wK5l" to="jfki:~Substitution.Binding.var()" resolve="var" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="1bm7a6EX24d" role="3uHU7w">
                        <property role="Xl_RC" value="=" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1bm7a6EX0CX" role="1Duv9x">
            <property role="TrG5h" value="bnd" />
            <node concept="3uibUv" id="1bm7a6EX0D1" role="1tU5fm">
              <ref role="3uigEE" to="jfki:~Substitution.Binding" resolve="Substitution.Binding" />
            </node>
          </node>
          <node concept="2OqwBi" id="1bm7a6EX0D2" role="1DdaDG">
            <node concept="37vLTw" id="1bm7a6EX0D3" role="2Oq$k0">
              <ref role="3cqZAo" node="1pt0VTMF4uQ" resolve="unify" />
            </node>
            <node concept="liA8E" id="1bm7a6EX0D4" role="2OqNvi">
              <ref role="37wK5l" to="jfki:~Substitution.bindings()" resolve="bindings" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1bm7a6FesVX" role="3cqZAp" />
        <node concept="3cpWs8" id="1bm7a6Fevtt" role="3cqZAp">
          <node concept="3cpWsn" id="1bm7a6Fevtu" role="3cpWs9">
            <property role="TrG5h" value="copy1" />
            <node concept="3uibUv" id="1bm7a6Fevtk" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="ITreePart" />
              <node concept="3qUE_q" id="1bm7a6FkXyL" role="11_B2D">
                <node concept="3uibUv" id="1bm7a6FkXOY" role="3qUE_r">
                  <ref role="3uigEE" to="jfki:~Node" resolve="Node" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1bm7a6Fevtv" role="33vP2m">
              <node concept="2OqwBi" id="1bm7a6Fevt$" role="2Oq$k0">
                <node concept="37vLTw" id="1bm7a6Fevt_" role="2Oq$k0">
                  <ref role="3cqZAo" node="1pt0VTMwfzF" resolve="tree1" />
                </node>
                <node concept="liA8E" id="1bm7a6FevtA" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                </node>
              </node>
              <node concept="liA8E" id="1bm7a6FevtB" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:1bm7a6EXvNI" resolve="copyRecursively" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1bm7a6FewxT" role="3cqZAp" />
        <node concept="3clFbF" id="1bm7a6FexaA" role="3cqZAp">
          <node concept="2OqwBi" id="1bm7a6Fexay" role="3clFbG">
            <node concept="10M0yZ" id="1bm7a6Fexaz" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="1bm7a6Fexa$" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="1bm7a6FexSl" role="37wK5m">
                <node concept="37vLTw" id="1bm7a6FexSX" role="3uHU7w">
                  <ref role="3cqZAo" node="1bm7a6Fevtu" resolve="copy1" />
                </node>
                <node concept="Xl_RD" id="1bm7a6Fexa_" role="3uHU7B">
                  <property role="Xl_RC" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1pt0VTMF4sO" role="3cqZAp" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1pt0VTMCtZc" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5lJXKtbex">
    <property role="TrG5h" value="Forest" />
    <node concept="2tJIrI" id="5lJXKtbey" role="jymVt" />
    <node concept="2YIFZL" id="5lJXKtbez" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="t_Bar_of_string" />
      <node concept="3clFbS" id="5lJXKtbe$" role="3clF47">
        <node concept="3clFbF" id="5lJXKtbe_" role="3cqZAp">
          <node concept="1oi1Uc" id="5lJXKtbeA" role="3clFbG">
            <node concept="1oi5UN" id="5lJXKtbeB" role="1oi0x0">
              <node concept="1oi5ST" id="5lJXKtbeC" role="1ojpOf">
                <property role="TrG5h" value="parameter" />
                <property role="1oi5Z2" value="multiple" />
                <node concept="1oi5UN" id="5lJXKtbeD" role="1oi5TL">
                  <node concept="1oi5Wm" id="5lJXKtbeF" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="5lJXKtbeG" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="5lJXKtbeH" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="5lJXKtbeI" role="1oi5zu">
                      <property role="1oi5yK" value="String" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1oi5Wm" id="5lJXKtbeJ" role="1ojpOf">
                <property role="TrG5h" value="concept" />
                <node concept="1oi5XN" id="5lJXKtbeK" role="1oi5zu">
                  <property role="1oi5yK" value="ClassifierType" />
                </node>
              </node>
              <node concept="1oi5Wm" id="5lJXKtbeL" role="1ojpOf">
                <property role="TrG5h" value="classifier" />
                <node concept="1oi5XN" id="5lJXKtbeM" role="1oi5zu">
                  <property role="1oi5yK" value="Bar" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5lJXKtbeO" role="3clF45">
        <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
      </node>
      <node concept="3Tm1VV" id="5lJXKtbeP" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="5lJXKtbeQ" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="t_Bar_of_integer" />
      <node concept="3clFbS" id="5lJXKtbeR" role="3clF47">
        <node concept="3clFbF" id="5lJXKtbeS" role="3cqZAp">
          <node concept="1oi1Uc" id="5lJXKtbeT" role="3clFbG">
            <node concept="1oi5UN" id="5lJXKtbeU" role="1oi0x0">
              <node concept="1oi5ST" id="5lJXKtbeV" role="1ojpOf">
                <property role="TrG5h" value="parameter" />
                <property role="1oi5Z2" value="multiple" />
                <node concept="1oi5UN" id="5lJXKtbeW" role="1oi5TL">
                  <node concept="1oi5ST" id="5lJXKtbeX" role="1ojpOf">
                    <property role="TrG5h" value="parameter" />
                    <property role="1oi5Z2" value="multiple" />
                    <node concept="1oi5UN" id="5lJXKtbeY" role="1oi5TL">
                      <node concept="1oi5Wm" id="5lJXKtbf0" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="5lJXKtbf1" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="5lJXKtbf2" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="5lJXKtbf3" role="1oi5zu">
                          <property role="1oi5yK" value="Foo" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="5lJXKtbf5" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="5lJXKtbf6" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="5lJXKtbf7" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="5lJXKtbf8" role="1oi5zu">
                      <property role="1oi5yK" value="Integer" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1oi5Wm" id="5lJXKtbfa" role="1ojpOf">
                <property role="TrG5h" value="concept" />
                <node concept="1oi5XN" id="5lJXKtbfb" role="1oi5zu">
                  <property role="1oi5yK" value="ClassifierType" />
                </node>
              </node>
              <node concept="1oi5Wm" id="5lJXKtbfc" role="1ojpOf">
                <property role="TrG5h" value="classifier" />
                <node concept="1oi5XN" id="5lJXKtbfd" role="1oi5zu">
                  <property role="1oi5yK" value="Bar" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5lJXKtbfe" role="3clF45">
        <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
      </node>
      <node concept="3Tm1VV" id="5lJXKtbff" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="5lJXKtbfg" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="t_Bar_of_T" />
      <node concept="37vLTG" id="5lJXKtbfh" role="3clF46">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="5lJXKtbfi" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="3clFbS" id="5lJXKtbfj" role="3clF47">
        <node concept="3clFbF" id="5lJXKtbfk" role="3cqZAp">
          <node concept="1oi1Uc" id="5lJXKtbfl" role="3clFbG">
            <node concept="1oi5UN" id="5lJXKtbfm" role="1oi0x0">
              <node concept="1oi5Wm" id="5lJXKtbfo" role="1ojpOf">
                <property role="TrG5h" value="concept" />
                <node concept="1oi5XN" id="5lJXKtbfp" role="1oi5zu">
                  <property role="1oi5yK" value="ClassifierType" />
                </node>
              </node>
              <node concept="1oi5Wm" id="5lJXKtbfq" role="1ojpOf">
                <property role="TrG5h" value="classifier" />
                <node concept="1oi5XN" id="5lJXKtbfr" role="1oi5zu">
                  <property role="1oi5yK" value="Bar" />
                </node>
              </node>
              <node concept="1oi5ST" id="5lJXKtbfs" role="1ojpOf">
                <property role="TrG5h" value="parameter" />
                <property role="1oi5Z2" value="multiple" />
                <node concept="1$XVwq" id="CCcKPljNMj" role="1oi5TL">
                  <property role="TrG5h" value="T" />
                  <node concept="22Ky0T" id="CCcKPljNMt" role="lGtFl">
                    <node concept="2OqwBi" id="5lJXKtbfu" role="22Ky0K">
                      <node concept="37vLTw" id="5lJXKtbfv" role="2Oq$k0">
                        <ref role="3cqZAo" node="5lJXKtbfh" resolve="T" />
                      </node>
                      <node concept="liA8E" id="5lJXKtbfw" role="2OqNvi">
                        <ref role="37wK5l" to="w2rx:~Logical.getName():java.lang.String" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5lJXKtbfy" role="3clF45">
        <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
      </node>
      <node concept="3Tm1VV" id="5lJXKtbfz" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="5lJXKtbf$" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="t_string" />
      <node concept="3clFbS" id="5lJXKtbf_" role="3clF47">
        <node concept="3clFbF" id="5lJXKtbfA" role="3cqZAp">
          <node concept="1oi1Uc" id="5lJXKtbfB" role="3clFbG">
            <node concept="1oi5UN" id="5lJXKtbfC" role="1oi0x0">
              <property role="2IF10e" value="CLASSIFIER_TYPE" />
              <node concept="1oi5Wm" id="5lJXKtbfE" role="1ojpOf">
                <property role="TrG5h" value="concept" />
                <node concept="1oi5XN" id="5lJXKtbfF" role="1oi5zu">
                  <property role="1oi5yK" value="ClassifierType" />
                </node>
              </node>
              <node concept="1oi5Wm" id="5lJXKtbfG" role="1ojpOf">
                <property role="TrG5h" value="classifier" />
                <node concept="1oi5XN" id="5lJXKtbfH" role="1oi5zu">
                  <property role="1oi5yK" value="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5lJXKtbfI" role="3clF45">
        <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
      </node>
      <node concept="3Tm1VV" id="5lJXKtbfJ" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="5lJXKtbfK" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="47nvOnTXnOl">
    <property role="TrG5h" value="TreeWalkerTest" />
    <node concept="2tJIrI" id="47nvOnTXnUw" role="jymVt" />
    <node concept="2YIFZL" id="47nvOnTXnWW" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="37vLTG" id="47nvOnTXnWX" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="47nvOnTXnWY" role="1tU5fm">
          <node concept="17QB3L" id="47nvOnTXnWZ" role="10Q1$1" />
        </node>
      </node>
      <node concept="3cqZAl" id="47nvOnTXnX0" role="3clF45" />
      <node concept="3Tm1VV" id="47nvOnTXnX1" role="1B3o_S" />
      <node concept="3clFbS" id="47nvOnTXnX2" role="3clF47">
        <node concept="3cpWs8" id="47nvOnTXsta" role="3cqZAp">
          <node concept="3cpWsn" id="47nvOnTXstb" role="3cpWs9">
            <property role="TrG5h" value="list" />
            <node concept="3uibUv" id="47nvOnTXstc" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="1oi1Uc" id="47nvOnTXstd" role="33vP2m">
              <node concept="1oi5UN" id="47nvOnTXste" role="1oi0x0">
                <property role="2IF10e" value="CLASSIFIER_TYPE" />
                <node concept="1oi5Wm" id="47nvOnTXstg" role="1ojpOf">
                  <property role="TrG5h" value="concept" />
                  <property role="1oi5Z2" value="single" />
                  <node concept="1oi5XN" id="47nvOnTXsth" role="1oi5zu">
                    <property role="1oi5yK" value="ClassifierType" />
                  </node>
                </node>
                <node concept="1oi5Wm" id="47nvOnTXstj" role="1ojpOf">
                  <property role="TrG5h" value="classifier" />
                  <property role="1oi5Z2" value="single" />
                  <node concept="1oi5XN" id="47nvOnTXstk" role="1oi5zu">
                    <property role="1oi5yK" value="List" />
                  </node>
                </node>
                <node concept="1oi5ST" id="47nvOnTXstm" role="1ojpOf">
                  <property role="TrG5h" value="parameter" />
                  <property role="1oi5Z2" value="multiple" />
                  <node concept="1oi5UN" id="47nvOnTXstn" role="1oi5TL">
                    <node concept="1oi5Wm" id="47nvOnTXsto" role="1ojpOf">
                      <property role="TrG5h" value="concept" />
                      <node concept="1oi5XN" id="47nvOnTXstp" role="1oi5zu">
                        <property role="1oi5yK" value="ClassifierType" />
                      </node>
                    </node>
                    <node concept="1oi5Wm" id="47nvOnTXstr" role="1ojpOf">
                      <property role="TrG5h" value="classifier" />
                      <node concept="1oi5XN" id="47nvOnTXsts" role="1oi5zu">
                        <property role="1oi5yK" value="String" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="47nvOnTXsvB" role="3cqZAp" />
        <node concept="3cpWs8" id="47nvOnU4vhs" role="3cqZAp">
          <node concept="3cpWsn" id="47nvOnU4vht" role="3cpWs9">
            <property role="TrG5h" value="fun" />
            <node concept="3uibUv" id="47nvOnU4vhu" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="1oi1Uc" id="47nvOnU4vhv" role="33vP2m">
              <node concept="1oi5UN" id="47nvOnU4vhw" role="1oi0x0">
                <node concept="1oi5Wm" id="47nvOnU4vhy" role="1ojpOf">
                  <property role="TrG5h" value="concept" />
                  <property role="1oi5Z2" value="single" />
                  <node concept="1oi5XN" id="47nvOnU4vhz" role="1oi5zu">
                    <property role="1oi5yK" value="FunctionType" />
                  </node>
                </node>
                <node concept="1oi5ST" id="47nvOnU4vh_" role="1ojpOf">
                  <property role="TrG5h" value="returnType" />
                  <property role="1oi5Z2" value="single" />
                  <node concept="1oi5UN" id="47nvOnU4vhA" role="1oi5TL">
                    <node concept="1oi5Wm" id="47nvOnU4vhB" role="1ojpOf">
                      <property role="TrG5h" value="concept" />
                      <node concept="1oi5XN" id="47nvOnU4vhC" role="1oi5zu">
                        <property role="1oi5yK" value="ClassifierType" />
                      </node>
                    </node>
                    <node concept="1oi5Wm" id="47nvOnU4vhE" role="1ojpOf">
                      <property role="TrG5h" value="classifier" />
                      <node concept="1oi5XN" id="47nvOnU4vhF" role="1oi5zu">
                        <property role="1oi5yK" value="String" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1oi5ST" id="47nvOnU4vhI" role="1ojpOf">
                  <property role="TrG5h" value="parameterType" />
                  <property role="1oi5Z2" value="multiple" />
                  <node concept="1oi5UN" id="47nvOnU4vhJ" role="1oi5TL">
                    <node concept="1oi5Wm" id="47nvOnU4vhK" role="1ojpOf">
                      <property role="TrG5h" value="concept" />
                      <node concept="1oi5XN" id="47nvOnU4vhL" role="1oi5zu">
                        <property role="1oi5yK" value="ClassifierType" />
                      </node>
                    </node>
                    <node concept="1oi5Wm" id="47nvOnU4vhN" role="1ojpOf">
                      <property role="TrG5h" value="classifier" />
                      <node concept="1oi5XN" id="47nvOnU4vhO" role="1oi5zu">
                        <property role="1oi5yK" value="Integer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="47nvOnU4v8T" role="3cqZAp" />
        <node concept="3cpWs8" id="47nvOnTXPqS" role="3cqZAp">
          <node concept="3cpWsn" id="47nvOnTXPqT" role="3cpWs9">
            <property role="TrG5h" value="walker" />
            <node concept="3uibUv" id="3OPtF03nNaG" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:3JgCwkqiP3h" resolve="TreeWalk.Walker" />
            </node>
            <node concept="2ShNRf" id="47nvOnTXPqU" role="33vP2m">
              <node concept="YeOm9" id="47nvOnTXPqV" role="2ShVmc">
                <node concept="1Y3b0j" id="47nvOnTXPqW" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="e2lb:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="ie8e:3JgCwkqiP3h" resolve="TreeWalk.Walker" />
                  <node concept="3Tm1VV" id="47nvOnTXPqX" role="1B3o_S" />
                  <node concept="3clFb_" id="3OPtF03iTXd" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="walkValues" />
                    <node concept="3uibUv" id="3OPtF03iTXe" role="3clF45">
                      <ref role="3uigEE" to="ie8e:2q_78a95hAL" resolve="Action" />
                    </node>
                    <node concept="3Tm1VV" id="3OPtF03iTXf" role="1B3o_S" />
                    <node concept="37vLTG" id="3OPtF03iTXh" role="3clF46">
                      <property role="TrG5h" value="valb" />
                      <node concept="3uibUv" id="3OPtF03iTXi" role="1tU5fm">
                        <ref role="3uigEE" to="ie8e:1msb0mq99GH" resolve="ValuesBranch" />
                        <node concept="16syzq" id="3OPtF03iTXj" role="11_B2D">
                          <ref role="16sUi3" node="3OPtF03iTXn" resolve="V" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="3OPtF03iTXk" role="3clF46">
                      <property role="TrG5h" value="values" />
                      <node concept="10Q1$e" id="3OPtF03iTXl" role="1tU5fm">
                        <node concept="16syzq" id="3OPtF03iTXm" role="10Q1$1">
                          <ref role="16sUi3" node="3OPtF03iTXn" resolve="V" />
                        </node>
                      </node>
                    </node>
                    <node concept="16euLQ" id="3OPtF03iTXn" role="16eVyc">
                      <property role="TrG5h" value="V" />
                    </node>
                    <node concept="3clFbS" id="3OPtF03iTXq" role="3clF47">
                      <node concept="3clFbF" id="47nvOnTXPr7" role="3cqZAp">
                        <node concept="2OqwBi" id="47nvOnTXPr8" role="3clFbG">
                          <node concept="10M0yZ" id="47nvOnTXPr9" role="2Oq$k0">
                            <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
                            <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
                          </node>
                          <node concept="liA8E" id="47nvOnTXPra" role="2OqNvi">
                            <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
                            <node concept="3cpWs3" id="47nvOnTXPrb" role="37wK5m">
                              <node concept="2YIFZM" id="47nvOnU71SX" role="3uHU7w">
                                <ref role="37wK5l" to="k7g3:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                                <ref role="1Pybhc" to="k7g3:~Arrays" resolve="Arrays" />
                                <node concept="37vLTw" id="3OPtF03iWgm" role="37wK5m">
                                  <ref role="3cqZAo" node="3OPtF03iTXk" resolve="values" />
                                </node>
                              </node>
                              <node concept="3cpWs3" id="47nvOnTXPrd" role="3uHU7B">
                                <node concept="Xl_RD" id="47nvOnTXPre" role="3uHU7w">
                                  <property role="Xl_RC" value=": " />
                                </node>
                                <node concept="3cpWs3" id="47nvOnTXPrf" role="3uHU7B">
                                  <node concept="Xl_RD" id="47nvOnTXPrh" role="3uHU7B">
                                    <property role="Xl_RC" value="value&gt; " />
                                  </node>
                                  <node concept="2OqwBi" id="3OPtF03iVFJ" role="3uHU7w">
                                    <node concept="37vLTw" id="3OPtF03iVwx" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3OPtF03iTXh" resolve="valb" />
                                    </node>
                                    <node concept="liA8E" id="3OPtF03iVT2" role="2OqNvi">
                                      <ref role="37wK5l" to="ie8e:1R$Cm9qGRoH" resolve="symbol" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="47nvOnTXPri" role="3cqZAp">
                        <node concept="Rm8GO" id="47nvOnTXPrj" role="3clFbG">
                          <ref role="1Px2BO" to="ie8e:2q_78a95hAL" resolve="Action" />
                          <ref role="Rm8GQ" to="ie8e:2q_78a95hAM" resolve="WALK" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3OPtF03j8Hp" role="2AJF6D">
                      <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="3OPtF03iXL6" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="walkChild" />
                    <node concept="3uibUv" id="3OPtF03iXL7" role="3clF45">
                      <ref role="3uigEE" to="ie8e:2q_78a95hAL" resolve="Action" />
                    </node>
                    <node concept="3Tm1VV" id="3OPtF03iXL8" role="1B3o_S" />
                    <node concept="37vLTG" id="3OPtF03iXLa" role="3clF46">
                      <property role="TrG5h" value="cb" />
                      <node concept="3uibUv" id="3OPtF03iXLb" role="1tU5fm">
                        <ref role="3uigEE" to="ie8e:5JQSuNswOXL" resolve="ChildrenBranch" />
                        <node concept="16syzq" id="3OPtF03iXLc" role="11_B2D">
                          <ref role="16sUi3" node="3OPtF03iXLh" resolve="T" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="3OPtF03iXLd" role="3clF46">
                      <property role="TrG5h" value="children" />
                      <node concept="10Q1$e" id="3OPtF03iXLe" role="1tU5fm">
                        <node concept="3uibUv" id="3OPtF03iXLf" role="10Q1$1">
                          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="ITreePart" />
                          <node concept="3qTvmN" id="3OPtF03iXLg" role="11_B2D" />
                        </node>
                      </node>
                    </node>
                    <node concept="16euLQ" id="3OPtF03iXLh" role="16eVyc">
                      <property role="TrG5h" value="T" />
                      <node concept="3uibUv" id="3OPtF03iXLi" role="3ztrMU">
                        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="ITreePart" />
                        <node concept="3qTvmN" id="3OPtF03iXLj" role="11_B2D" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="3OPtF03iXLm" role="3clF47">
                      <node concept="3clFbF" id="47nvOnU50LK" role="3cqZAp">
                        <node concept="2OqwBi" id="47nvOnU50LL" role="3clFbG">
                          <node concept="10M0yZ" id="47nvOnU50LM" role="2Oq$k0">
                            <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
                            <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
                          </node>
                          <node concept="liA8E" id="47nvOnU50LN" role="2OqNvi">
                            <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
                            <node concept="3cpWs3" id="47nvOnU50LO" role="37wK5m">
                              <node concept="2YIFZM" id="47nvOnU73ZE" role="3uHU7w">
                                <ref role="37wK5l" to="k7g3:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                                <ref role="1Pybhc" to="k7g3:~Arrays" resolve="Arrays" />
                                <node concept="37vLTw" id="47nvOnU74eF" role="37wK5m">
                                  <ref role="3cqZAo" node="3OPtF03iXLd" resolve="children" />
                                </node>
                              </node>
                              <node concept="3cpWs3" id="47nvOnU50LQ" role="3uHU7B">
                                <node concept="Xl_RD" id="47nvOnU50LR" role="3uHU7w">
                                  <property role="Xl_RC" value=": " />
                                </node>
                                <node concept="3cpWs3" id="47nvOnU50LS" role="3uHU7B">
                                  <node concept="2OqwBi" id="3OPtF03iZjM" role="3uHU7w">
                                    <node concept="37vLTw" id="3OPtF03iZcG" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3OPtF03iXLa" resolve="cb" />
                                    </node>
                                    <node concept="liA8E" id="3OPtF03iZto" role="2OqNvi">
                                      <ref role="37wK5l" to="ie8e:1R$Cm9qGRoH" resolve="symbol" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="47nvOnU50LU" role="3uHU7B">
                                    <property role="Xl_RC" value="child&gt; " />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="47nvOnU50DQ" role="3cqZAp">
                        <node concept="Rm8GO" id="47nvOnU50EH" role="3clFbG">
                          <ref role="1Px2BO" to="ie8e:2q_78a95hAL" resolve="Action" />
                          <ref role="Rm8GQ" to="ie8e:2q_78a95hAM" resolve="WALK" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3OPtF03j9ls" role="2AJF6D">
                      <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="3OPtF03j2k2" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="walkVariables" />
                    <node concept="3uibUv" id="3OPtF03j2k3" role="3clF45">
                      <ref role="3uigEE" to="ie8e:2q_78a95hAL" resolve="Action" />
                    </node>
                    <node concept="3Tm1VV" id="3OPtF03j2k4" role="1B3o_S" />
                    <node concept="37vLTG" id="3OPtF03j2k6" role="3clF46">
                      <property role="TrG5h" value="varb" />
                      <node concept="3uibUv" id="3OPtF03j2k7" role="1tU5fm">
                        <ref role="3uigEE" to="ie8e:uNmovXiSQ6" resolve="VariableBranch" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="3OPtF03j2k8" role="3clF46">
                      <property role="TrG5h" value="variables" />
                      <node concept="10Q1$e" id="3OPtF03j2k9" role="1tU5fm">
                        <node concept="17QB3L" id="3OPtF03j2ka" role="10Q1$1" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="3OPtF03j2kd" role="3clF47">
                      <node concept="3clFbF" id="3JgCwkqiEqN" role="3cqZAp">
                        <node concept="Rm8GO" id="3JgCwkqiEsp" role="3clFbG">
                          <ref role="1Px2BO" to="ie8e:2q_78a95hAL" resolve="Action" />
                          <ref role="Rm8GQ" to="ie8e:2q_78a95hAM" resolve="WALK" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3OPtF03j9YY" role="2AJF6D">
                      <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="104EUzG2gx2" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="walkVariable" />
                    <node concept="3uibUv" id="104EUzG2gx3" role="3clF45">
                      <ref role="3uigEE" to="ie8e:2q_78a95hAL" resolve="Action" />
                    </node>
                    <node concept="3Tm1VV" id="104EUzG2gx4" role="1B3o_S" />
                    <node concept="37vLTG" id="104EUzG2gx6" role="3clF46">
                      <property role="TrG5h" value="variable" />
                      <node concept="3uibUv" id="104EUzG2gx7" role="1tU5fm">
                        <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="104EUzG2gx9" role="3clF47">
                      <node concept="3clFbF" id="104EUzG2huH" role="3cqZAp">
                        <node concept="Rm8GO" id="104EUzG2huI" role="3clFbG">
                          <ref role="1Px2BO" to="ie8e:2q_78a95hAL" resolve="Action" />
                          <ref role="Rm8GQ" to="ie8e:2q_78a95hAM" resolve="WALK" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="104EUzG2h5Y" role="2AJF6D">
                      <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="3OPtF03j4fE" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="walkList" />
                    <node concept="3uibUv" id="3OPtF03j4fF" role="3clF45">
                      <ref role="3uigEE" to="ie8e:2q_78a95hAL" resolve="Action" />
                    </node>
                    <node concept="3Tm1VV" id="3OPtF03j4fG" role="1B3o_S" />
                    <node concept="37vLTG" id="3OPtF03j4fI" role="3clF46">
                      <property role="TrG5h" value="listb" />
                      <node concept="3uibUv" id="3OPtF03j4fJ" role="1tU5fm">
                        <ref role="3uigEE" to="ie8e:3OPtF03lco4" resolve="ListBranch" />
                        <node concept="16syzq" id="3OPtF03j4fK" role="11_B2D">
                          <ref role="16sUi3" node="3OPtF03j4fQ" resolve="T" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="3OPtF03j4fL" role="3clF46">
                      <property role="TrG5h" value="children" />
                      <node concept="3uibUv" id="3OPtF03j4fM" role="1tU5fm">
                        <ref role="3uigEE" to="k7g3:~List" resolve="List" />
                        <node concept="3qUE_q" id="3OPtF03j4fN" role="11_B2D">
                          <node concept="3uibUv" id="3OPtF03j4fO" role="3qUE_r">
                            <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="ITreePart" />
                            <node concept="3qTvmN" id="3OPtF03j4fP" role="11_B2D" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="16euLQ" id="3OPtF03j4fQ" role="16eVyc">
                      <property role="TrG5h" value="T" />
                      <node concept="3uibUv" id="3OPtF03j4fR" role="3ztrMU">
                        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="ITreePart" />
                        <node concept="3qTvmN" id="3OPtF03j4fS" role="11_B2D" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="3OPtF03j4fU" role="3clF47">
                      <node concept="3clFbF" id="3JgCwkqmOIf" role="3cqZAp">
                        <node concept="2OqwBi" id="3JgCwkqmOIg" role="3clFbG">
                          <node concept="10M0yZ" id="3JgCwkqmOIh" role="2Oq$k0">
                            <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
                            <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
                          </node>
                          <node concept="liA8E" id="3JgCwkqmOIi" role="2OqNvi">
                            <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
                            <node concept="3cpWs3" id="3JgCwkqmOIj" role="37wK5m">
                              <node concept="37vLTw" id="3OPtF03j6uQ" role="3uHU7w">
                                <ref role="3cqZAo" node="3OPtF03j4fL" resolve="children" />
                              </node>
                              <node concept="3cpWs3" id="3JgCwkqmOIm" role="3uHU7B">
                                <node concept="Xl_RD" id="3JgCwkqmOIn" role="3uHU7w">
                                  <property role="Xl_RC" value=": " />
                                </node>
                                <node concept="3cpWs3" id="3JgCwkqmOIo" role="3uHU7B">
                                  <node concept="2OqwBi" id="3OPtF03j5Z3" role="3uHU7w">
                                    <node concept="37vLTw" id="3OPtF03j5Bj" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3OPtF03j4fI" resolve="listb" />
                                    </node>
                                    <node concept="liA8E" id="3OPtF03j6gy" role="2OqNvi">
                                      <ref role="37wK5l" to="ie8e:1R$Cm9qGRoH" resolve="symbol" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="3JgCwkqmOIq" role="3uHU7B">
                                    <property role="Xl_RC" value="list&gt; " />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="3JgCwkqmQl1" role="3cqZAp">
                        <node concept="Rm8GO" id="3JgCwkqmQSb" role="3clFbG">
                          <ref role="Rm8GQ" to="ie8e:2q_78a95hAM" resolve="WALK" />
                          <ref role="1Px2BO" to="ie8e:2q_78a95hAL" resolve="Action" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3OPtF03jap7" role="2AJF6D">
                      <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="104EUzFZFTO" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="walkValue" />
                    <node concept="3uibUv" id="104EUzFZFTP" role="3clF45">
                      <ref role="3uigEE" to="ie8e:2q_78a95hAL" resolve="Action" />
                    </node>
                    <node concept="3Tm1VV" id="104EUzFZFTQ" role="1B3o_S" />
                    <node concept="37vLTG" id="104EUzFZFTS" role="3clF46">
                      <property role="TrG5h" value="value" />
                      <node concept="3uibUv" id="104EUzFZFTT" role="1tU5fm">
                        <ref role="3uigEE" to="ie8e:2xQ7eRAD2dj" resolve="Value" />
                        <node concept="3qTvmN" id="104EUzFZFTU" role="11_B2D" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="104EUzFZFTW" role="3clF47">
                      <node concept="3clFbF" id="104EUzFZHfA" role="3cqZAp">
                        <node concept="2OqwBi" id="104EUzFZHfB" role="3clFbG">
                          <node concept="10M0yZ" id="104EUzFZHfC" role="2Oq$k0">
                            <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
                            <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
                          </node>
                          <node concept="liA8E" id="104EUzFZHfD" role="2OqNvi">
                            <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
                            <node concept="3cpWs3" id="104EUzG1Z6F" role="37wK5m">
                              <node concept="3cpWs3" id="104EUzFZHfJ" role="3uHU7B">
                                <node concept="Xl_RD" id="104EUzFZHfK" role="3uHU7B">
                                  <property role="Xl_RC" value="value&gt; \&quot;" />
                                </node>
                                <node concept="2YIFZM" id="104EUzFZIFj" role="3uHU7w">
                                  <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                                  <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                                  <node concept="37vLTw" id="104EUzFZIVS" role="37wK5m">
                                    <ref role="3cqZAo" node="104EUzFZFTS" resolve="value" />
                                  </node>
                                </node>
                              </node>
                              <node concept="Xl_RD" id="104EUzFZMEY" role="3uHU7w">
                                <property role="Xl_RC" value="\&quot;" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="104EUzFZHfY" role="3cqZAp">
                        <node concept="Rm8GO" id="104EUzFZHfZ" role="3clFbG">
                          <ref role="1Px2BO" to="ie8e:2q_78a95hAL" resolve="Action" />
                          <ref role="Rm8GQ" to="ie8e:2q_78a95hAM" resolve="WALK" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="104EUzFZGu3" role="2AJF6D">
                      <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="5s497Vr3N1A" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="endWalk" />
                    <node concept="3cqZAl" id="5s497Vr3N1B" role="3clF45" />
                    <node concept="3Tm1VV" id="5s497Vr3N1C" role="1B3o_S" />
                    <node concept="3clFbS" id="5s497Vr3N1F" role="3clF47" />
                    <node concept="2AHcQZ" id="5s497Vr3Ntb" role="2AJF6D">
                      <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="47nvOnTXsTk" role="3cqZAp" />
        <node concept="3clFbF" id="47nvOnTXsDB" role="3cqZAp">
          <node concept="2OqwBi" id="47nvOnTXPZC" role="3clFbG">
            <node concept="2ShNRf" id="47nvOnTXsDz" role="2Oq$k0">
              <node concept="1pGfFk" id="47nvOnTXsRm" role="2ShVmc">
                <ref role="37wK5l" to="ie8e:47nvOnTQN6Q" resolve="TreeWalk" />
                <node concept="37vLTw" id="47nvOnTXPXk" role="37wK5m">
                  <ref role="3cqZAo" node="47nvOnTXPqT" resolve="walker" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="47nvOnTXQ4W" role="2OqNvi">
              <ref role="37wK5l" to="ie8e:1hOy_Afq63K" resolve="walk" />
              <node concept="2OqwBi" id="47nvOnTXQ9U" role="37wK5m">
                <node concept="37vLTw" id="47nvOnTXQ7f" role="2Oq$k0">
                  <ref role="3cqZAo" node="47nvOnTXstb" resolve="list" />
                </node>
                <node concept="liA8E" id="47nvOnTXQe6" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="47nvOnU4vI_" role="3cqZAp" />
        <node concept="3clFbF" id="47nvOnU4vuq" role="3cqZAp">
          <node concept="2OqwBi" id="47nvOnU4vur" role="3clFbG">
            <node concept="2ShNRf" id="47nvOnU4vus" role="2Oq$k0">
              <node concept="1pGfFk" id="47nvOnU4vut" role="2ShVmc">
                <ref role="37wK5l" to="ie8e:47nvOnTQN6Q" resolve="TreeWalk" />
                <node concept="37vLTw" id="47nvOnU4vuu" role="37wK5m">
                  <ref role="3cqZAo" node="47nvOnTXPqT" resolve="walker" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="47nvOnU4vuv" role="2OqNvi">
              <ref role="37wK5l" to="ie8e:1hOy_Afq63K" resolve="walk" />
              <node concept="2OqwBi" id="47nvOnU4vuw" role="37wK5m">
                <node concept="37vLTw" id="47nvOnU4vZs" role="2Oq$k0">
                  <ref role="3cqZAo" node="47nvOnU4vht" resolve="fun" />
                </node>
                <node concept="liA8E" id="47nvOnU4vuy" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3JgCwkqao6i" role="3cqZAp" />
        <node concept="3cpWs8" id="3JgCwkqaq6l" role="3cqZAp">
          <node concept="3cpWsn" id="3JgCwkqaq6m" role="3cpWs9">
            <property role="TrG5h" value="find" />
            <node concept="3uibUv" id="3JgCwkqkZFR" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:3JgCwkqkUKX" resolve="Finders.IValueFinder" />
            </node>
            <node concept="2YIFZM" id="3JgCwkqaq6n" role="33vP2m">
              <ref role="1Pybhc" to="ie8e:3JgCwkqd3K7" resolve="Finders" />
              <ref role="37wK5l" to="ie8e:3JgCwkqd8va" resolve="findValue" />
              <node concept="2OqwBi" id="3AEuFq_R0FS" role="37wK5m">
                <node concept="37vLTw" id="3JgCwkqawO_" role="2Oq$k0">
                  <ref role="3cqZAo" node="47nvOnTXstb" resolve="list" />
                </node>
                <node concept="liA8E" id="3AEuFq_R0Qw" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                </node>
              </node>
              <node concept="Xl_RD" id="3JgCwkqaq6p" role="37wK5m">
                <property role="Xl_RC" value="node" />
              </node>
              <node concept="Xl_RD" id="3JgCwkqaq6q" role="37wK5m">
                <property role="Xl_RC" value="concept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3JgCwkqar2T" role="3cqZAp">
          <node concept="2OqwBi" id="3JgCwkqar2P" role="3clFbG">
            <node concept="10M0yZ" id="3JgCwkqar2Q" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="3JgCwkqar2R" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="3JgCwkqavYp" role="37wK5m">
                <node concept="Xl_RD" id="3JgCwkqavYy" role="3uHU7w">
                  <property role="Xl_RC" value="'" />
                </node>
                <node concept="3cpWs3" id="3JgCwkqasrb" role="3uHU7B">
                  <node concept="3cpWs3" id="3JgCwkqarXv" role="3uHU7B">
                    <node concept="3cpWs3" id="3JgCwkqarBB" role="3uHU7B">
                      <node concept="Xl_RD" id="3JgCwkqar2S" role="3uHU7B">
                        <property role="Xl_RC" value="find&gt; " />
                      </node>
                      <node concept="2OqwBi" id="3JgCwkqarGX" role="3uHU7w">
                        <node concept="37vLTw" id="3JgCwkqarD$" role="2Oq$k0">
                          <ref role="3cqZAo" node="3JgCwkqaq6m" resolve="find" />
                        </node>
                        <node concept="liA8E" id="3JgCwkqarKp" role="2OqNvi">
                          <ref role="37wK5l" to="ie8e:3JgCwkqkUKY" resolve="found" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="3JgCwkqarXC" role="3uHU7w">
                      <property role="Xl_RC" value=": '" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3JgCwkqasMy" role="3uHU7w">
                    <node concept="37vLTw" id="3JgCwkqasIw" role="2Oq$k0">
                      <ref role="3cqZAo" node="3JgCwkqaq6m" resolve="find" />
                    </node>
                    <node concept="liA8E" id="3JgCwkqasUW" role="2OqNvi">
                      <ref role="37wK5l" to="ie8e:3JgCwkqkUL2" resolve="result" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3JgCwkqwGsi" role="3cqZAp" />
        <node concept="3cpWs8" id="3JgCwkqax2b" role="3cqZAp">
          <node concept="3cpWsn" id="3JgCwkqax2c" role="3cpWs9">
            <property role="TrG5h" value="find2" />
            <node concept="3uibUv" id="3JgCwkqkZYD" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:3JgCwkqkUKX" resolve="Finders.IValueFinder" />
            </node>
            <node concept="2YIFZM" id="3JgCwkqax2e" role="33vP2m">
              <ref role="1Pybhc" to="ie8e:3JgCwkqd3K7" resolve="Finders" />
              <ref role="37wK5l" to="ie8e:3JgCwkqd8va" resolve="findValue" />
              <node concept="2OqwBi" id="3AEuFq_R1gz" role="37wK5m">
                <node concept="37vLTw" id="3JgCwkqaGmD" role="2Oq$k0">
                  <ref role="3cqZAo" node="47nvOnU4vht" resolve="fun" />
                </node>
                <node concept="liA8E" id="3AEuFq_R1sl" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                </node>
              </node>
              <node concept="Xl_RD" id="3JgCwkqax2g" role="37wK5m">
                <property role="Xl_RC" value="node" />
              </node>
              <node concept="Xl_RD" id="3JgCwkqax2h" role="37wK5m">
                <property role="Xl_RC" value="returnType" />
              </node>
              <node concept="Xl_RD" id="3JgCwkqaIYf" role="37wK5m">
                <property role="Xl_RC" value="node" />
              </node>
              <node concept="Xl_RD" id="3JgCwkqayf_" role="37wK5m">
                <property role="Xl_RC" value="classifier" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3JgCwkqax1U" role="3cqZAp">
          <node concept="2OqwBi" id="3JgCwkqax1V" role="3clFbG">
            <node concept="10M0yZ" id="3JgCwkqax1W" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="3JgCwkqax1X" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="3JgCwkqax1Y" role="37wK5m">
                <node concept="Xl_RD" id="3JgCwkqax1Z" role="3uHU7w">
                  <property role="Xl_RC" value="'" />
                </node>
                <node concept="3cpWs3" id="3JgCwkqax20" role="3uHU7B">
                  <node concept="3cpWs3" id="3JgCwkqax21" role="3uHU7B">
                    <node concept="3cpWs3" id="3JgCwkqax22" role="3uHU7B">
                      <node concept="Xl_RD" id="3JgCwkqax23" role="3uHU7B">
                        <property role="Xl_RC" value="find&gt; " />
                      </node>
                      <node concept="2OqwBi" id="3JgCwkqax24" role="3uHU7w">
                        <node concept="37vLTw" id="3JgCwkqaDWm" role="2Oq$k0">
                          <ref role="3cqZAo" node="3JgCwkqax2c" resolve="find2" />
                        </node>
                        <node concept="liA8E" id="3JgCwkqax26" role="2OqNvi">
                          <ref role="37wK5l" to="ie8e:3JgCwkqkUKY" resolve="found" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="3JgCwkqax27" role="3uHU7w">
                      <property role="Xl_RC" value=": '" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3JgCwkqax28" role="3uHU7w">
                    <node concept="37vLTw" id="3JgCwkqaE3P" role="2Oq$k0">
                      <ref role="3cqZAo" node="3JgCwkqax2c" resolve="find2" />
                    </node>
                    <node concept="liA8E" id="3JgCwkqax2a" role="2OqNvi">
                      <ref role="37wK5l" to="ie8e:3JgCwkqkUL2" resolve="result" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3JgCwkqeHoE" role="3cqZAp" />
        <node concept="3cpWs8" id="3JgCwkqwL4f" role="3cqZAp">
          <node concept="3cpWsn" id="3JgCwkqwL4g" role="3cpWs9">
            <property role="TrG5h" value="find3" />
            <node concept="3uibUv" id="3JgCwkqwL4a" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:3OPtF03nYWl" resolve="Finders.IListFinder" />
            </node>
            <node concept="2YIFZM" id="3OPtF03pX1r" role="33vP2m">
              <ref role="37wK5l" to="ie8e:3OPtF03pX11" resolve="findList" />
              <ref role="1Pybhc" to="ie8e:3JgCwkqd3K7" resolve="Finders" />
              <node concept="2OqwBi" id="3AEuFq_QX7c" role="37wK5m">
                <node concept="37vLTw" id="3JgCwkqwL4i" role="2Oq$k0">
                  <ref role="3cqZAo" node="47nvOnTXstb" resolve="list" />
                </node>
                <node concept="liA8E" id="3AEuFq_QXjI" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                </node>
              </node>
              <node concept="Xl_RD" id="3JgCwkqwL4j" role="37wK5m">
                <property role="Xl_RC" value="node" />
              </node>
              <node concept="Xl_RD" id="3JgCwkqwL4k" role="37wK5m">
                <property role="Xl_RC" value="parameter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3JgCwkqwNWo" role="3cqZAp">
          <node concept="2OqwBi" id="3JgCwkqwNWk" role="3clFbG">
            <node concept="10M0yZ" id="3JgCwkqwNWl" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="3JgCwkqwNWm" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="3JgCwkqwSEA" role="37wK5m">
                <node concept="2OqwBi" id="3JgCwkqwTFA" role="3uHU7w">
                  <node concept="37vLTw" id="3JgCwkqwTgw" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JgCwkqwL4g" resolve="find3" />
                  </node>
                  <node concept="liA8E" id="3JgCwkqwW_A" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:3OPtF03nYWm" resolve="result" />
                  </node>
                </node>
                <node concept="3cpWs3" id="3JgCwkqwRz$" role="3uHU7B">
                  <node concept="3cpWs3" id="3JgCwkqwPOK" role="3uHU7B">
                    <node concept="Xl_RD" id="3JgCwkqwNWn" role="3uHU7B">
                      <property role="Xl_RC" value="find&gt; " />
                    </node>
                    <node concept="2OqwBi" id="3JgCwkqwQDd" role="3uHU7w">
                      <node concept="37vLTw" id="3JgCwkqwQf5" role="2Oq$k0">
                        <ref role="3cqZAo" node="3JgCwkqwL4g" resolve="find3" />
                      </node>
                      <node concept="liA8E" id="3JgCwkqwR3U" role="2OqNvi">
                        <ref role="37wK5l" to="ie8e:3JgCwkqkUKY" resolve="found" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3JgCwkqwS7H" role="3uHU7w">
                    <property role="Xl_RC" value=": " />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3JgCwkqwHlx" role="3cqZAp" />
        <node concept="3cpWs8" id="3JgCwkqy1_e" role="3cqZAp">
          <node concept="3cpWsn" id="3JgCwkqy1_f" role="3cpWs9">
            <property role="TrG5h" value="find4" />
            <node concept="3uibUv" id="3JgCwkqy1_g" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:3OPtF03nYWl" resolve="Finders.IListFinder" />
            </node>
            <node concept="2YIFZM" id="3OPtF03pX1q" role="33vP2m">
              <ref role="37wK5l" to="ie8e:3OPtF03pX11" resolve="findList" />
              <ref role="1Pybhc" to="ie8e:3JgCwkqd3K7" resolve="Finders" />
              <node concept="2OqwBi" id="3AEuFq_QWua" role="37wK5m">
                <node concept="37vLTw" id="3JgCwkqy2PR" role="2Oq$k0">
                  <ref role="3cqZAo" node="47nvOnU4vht" resolve="fun" />
                </node>
                <node concept="liA8E" id="3AEuFq_QWFj" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                </node>
              </node>
              <node concept="Xl_RD" id="3JgCwkqy1_j" role="37wK5m">
                <property role="Xl_RC" value="node" />
              </node>
              <node concept="Xl_RD" id="3JgCwkqy1_k" role="37wK5m">
                <property role="Xl_RC" value="parameterType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3JgCwkqy1$Z" role="3cqZAp">
          <node concept="2OqwBi" id="3JgCwkqy1_0" role="3clFbG">
            <node concept="10M0yZ" id="3JgCwkqy1_1" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="3JgCwkqy1_2" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="3JgCwkqy1_3" role="37wK5m">
                <node concept="2OqwBi" id="3JgCwkqy1_4" role="3uHU7w">
                  <node concept="37vLTw" id="3JgCwkqy3pc" role="2Oq$k0">
                    <ref role="3cqZAo" node="3JgCwkqy1_f" resolve="find4" />
                  </node>
                  <node concept="liA8E" id="3JgCwkqy1_6" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:3OPtF03nYWm" resolve="result" />
                  </node>
                </node>
                <node concept="3cpWs3" id="3JgCwkqy1_7" role="3uHU7B">
                  <node concept="3cpWs3" id="3JgCwkqy1_8" role="3uHU7B">
                    <node concept="Xl_RD" id="3JgCwkqy1_9" role="3uHU7B">
                      <property role="Xl_RC" value="find&gt; " />
                    </node>
                    <node concept="2OqwBi" id="3JgCwkqy1_a" role="3uHU7w">
                      <node concept="37vLTw" id="3JgCwkqy3gO" role="2Oq$k0">
                        <ref role="3cqZAo" node="3JgCwkqy1_f" resolve="find4" />
                      </node>
                      <node concept="liA8E" id="3JgCwkqy1_c" role="2OqNvi">
                        <ref role="37wK5l" to="ie8e:3JgCwkqkUKY" resolve="found" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3JgCwkqy1_d" role="3uHU7w">
                    <property role="Xl_RC" value=": " />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3JgCwkqy1$Y" role="3cqZAp" />
      </node>
    </node>
    <node concept="2tJIrI" id="47nvOnTXnZ8" role="jymVt" />
    <node concept="3Tm1VV" id="47nvOnTXnOm" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3AEuFq_Ots5">
    <property role="TrG5h" value="UnifyDuplicates" />
    <node concept="2YIFZL" id="3AEuFq_OtPi" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="37vLTG" id="3AEuFq_OtPj" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="3AEuFq_OtPk" role="1tU5fm">
          <node concept="17QB3L" id="3AEuFq_OtPl" role="10Q1$1" />
        </node>
      </node>
      <node concept="3cqZAl" id="3AEuFq_OtPm" role="3clF45" />
      <node concept="3Tm1VV" id="3AEuFq_OtPn" role="1B3o_S" />
      <node concept="3clFbS" id="3AEuFq_OtPo" role="3clF47">
        <node concept="3cpWs8" id="3AEuFq_Oyuc" role="3cqZAp">
          <node concept="3cpWsn" id="3AEuFq_Oyud" role="3cpWs9">
            <property role="TrG5h" value="tree1" />
            <node concept="3uibUv" id="3AEuFq_Oyub" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="1oi1Uc" id="3AEuFq_Oyue" role="33vP2m">
              <node concept="1oi5UN" id="3AEuFq_Oyuf" role="1oi0x0">
                <node concept="1oi5ST" id="3AEuFq_Oyug" role="1ojpOf">
                  <property role="TrG5h" value="parameter" />
                  <property role="1oi5Z2" value="multiple" />
                  <node concept="1oi5UN" id="3AEuFq_Oyuh" role="1oi5TL">
                    <node concept="1oi5ST" id="3AEuFq_Oyui" role="1ojpOf">
                      <property role="TrG5h" value="parameter" />
                      <property role="1oi5Z2" value="multiple" />
                      <node concept="1oi5UN" id="3AEuFq_Oyuj" role="1oi5TL">
                        <node concept="1oi5Wm" id="3AEuFq_Oyul" role="1ojpOf">
                          <property role="TrG5h" value="concept" />
                          <node concept="1oi5XN" id="3AEuFq_Oyum" role="1oi5zu">
                            <property role="1oi5yK" value="ClassifierType" />
                          </node>
                        </node>
                        <node concept="1oi5Wm" id="3AEuFq_Oyuo" role="1ojpOf">
                          <property role="TrG5h" value="classifier" />
                          <node concept="1oi5XN" id="3AEuFq_Oyup" role="1oi5zu">
                            <property role="1oi5yK" value="String" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5Wm" id="3AEuFq_Oyus" role="1ojpOf">
                      <property role="TrG5h" value="concept" />
                      <node concept="1oi5XN" id="3AEuFq_Oyut" role="1oi5zu">
                        <property role="1oi5yK" value="ClassifierType" />
                      </node>
                    </node>
                    <node concept="1oi5Wm" id="3AEuFq_Oyuv" role="1ojpOf">
                      <property role="TrG5h" value="classifier" />
                      <node concept="1oi5XN" id="3AEuFq_Oyuw" role="1oi5zu">
                        <property role="1oi5yK" value="List" />
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5UN" id="3AEuFq_Oyuy" role="1oi5TL">
                    <node concept="1oi5ST" id="3AEuFq_Oyuz" role="1ojpOf">
                      <property role="TrG5h" value="parameter" />
                      <property role="1oi5Z2" value="multiple" />
                      <node concept="1oi5UN" id="3AEuFq_Oyu$" role="1oi5TL">
                        <node concept="1oi5Wm" id="3AEuFq_OyuA" role="1ojpOf">
                          <property role="TrG5h" value="concept" />
                          <node concept="1oi5XN" id="3AEuFq_OyuB" role="1oi5zu">
                            <property role="1oi5yK" value="ClassifierType" />
                          </node>
                        </node>
                        <node concept="1oi5Wm" id="3AEuFq_OyuD" role="1ojpOf">
                          <property role="TrG5h" value="classifier" />
                          <node concept="1oi5XN" id="3AEuFq_OyuE" role="1oi5zu">
                            <property role="1oi5yK" value="String" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="3AEuFq_OyuG" role="1oi5TL">
                        <node concept="1oi5ST" id="3AEuFq_OyuH" role="1ojpOf">
                          <property role="TrG5h" value="parameter" />
                          <property role="1oi5Z2" value="multiple" />
                          <node concept="1oi5UN" id="3AEuFq_OyuI" role="1oi5TL">
                            <node concept="1oi5Wm" id="3AEuFq_OyuK" role="1ojpOf">
                              <property role="TrG5h" value="concept" />
                              <node concept="1oi5XN" id="3AEuFq_OyuL" role="1oi5zu">
                                <property role="1oi5yK" value="ClassifierType" />
                              </node>
                            </node>
                            <node concept="1oi5Wm" id="3AEuFq_OyuN" role="1ojpOf">
                              <property role="TrG5h" value="classifier" />
                              <node concept="1oi5XN" id="3AEuFq_OyuO" role="1oi5zu">
                                <property role="1oi5yK" value="String" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1oi5Wm" id="3AEuFq_OyuR" role="1ojpOf">
                          <property role="TrG5h" value="concept" />
                          <node concept="1oi5XN" id="3AEuFq_OyuS" role="1oi5zu">
                            <property role="1oi5yK" value="ClassifierType" />
                          </node>
                        </node>
                        <node concept="1oi5Wm" id="3AEuFq_OyuU" role="1ojpOf">
                          <property role="TrG5h" value="classifier" />
                          <node concept="1oi5XN" id="3AEuFq_OyuV" role="1oi5zu">
                            <property role="1oi5yK" value="List" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1oi5Wm" id="3AEuFq_OyuY" role="1ojpOf">
                      <property role="TrG5h" value="concept" />
                      <node concept="1oi5XN" id="3AEuFq_OyuZ" role="1oi5zu">
                        <property role="1oi5yK" value="ClassifierType" />
                      </node>
                    </node>
                    <node concept="1oi5Wm" id="3AEuFq_Oyv1" role="1ojpOf">
                      <property role="TrG5h" value="classifier" />
                      <node concept="1oi5XN" id="3AEuFq_Oyv2" role="1oi5zu">
                        <property role="1oi5yK" value="Map" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1oi5Wm" id="3AEuFq_Oyv5" role="1ojpOf">
                  <property role="TrG5h" value="concept" />
                  <node concept="1oi5XN" id="3AEuFq_Oyv6" role="1oi5zu">
                    <property role="1oi5yK" value="ClassifierType" />
                  </node>
                </node>
                <node concept="1oi5Wm" id="3AEuFq_Oyv8" role="1ojpOf">
                  <property role="TrG5h" value="classifier" />
                  <node concept="1oi5XN" id="3AEuFq_Oyv9" role="1oi5zu">
                    <property role="1oi5yK" value="Pair" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3AEuFq_OyG_" role="3cqZAp" />
        <node concept="3cpWs8" id="3AEuFq_OyBS" role="3cqZAp">
          <node concept="3cpWsn" id="3AEuFq_OyBT" role="3cpWs9">
            <property role="TrG5h" value="tree2" />
            <node concept="3uibUv" id="3AEuFq_OyBU" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="1oi1Uc" id="3AEuFq_OyBV" role="33vP2m">
              <node concept="1oi5UN" id="3AEuFq_OyBW" role="1oi0x0">
                <node concept="1oi5ST" id="3AEuFq_OyBX" role="1ojpOf">
                  <property role="TrG5h" value="parameter" />
                  <property role="1oi5Z2" value="multiple" />
                  <node concept="1$XVwq" id="3AEuFq_Ozjb" role="1oi5TL">
                    <property role="TrG5h" value="X" />
                  </node>
                  <node concept="1oi5UN" id="3AEuFq_OyCf" role="1oi5TL">
                    <node concept="1oi5ST" id="3AEuFq_OyCg" role="1ojpOf">
                      <property role="TrG5h" value="parameter" />
                      <property role="1oi5Z2" value="multiple" />
                      <node concept="1oi5UN" id="3AEuFq_OyCh" role="1oi5TL">
                        <node concept="1oi5Wm" id="3AEuFq_OyCj" role="1ojpOf">
                          <property role="TrG5h" value="concept" />
                          <node concept="1oi5XN" id="3AEuFq_OyCk" role="1oi5zu">
                            <property role="1oi5yK" value="ClassifierType" />
                          </node>
                        </node>
                        <node concept="1oi5Wm" id="3AEuFq_OyCm" role="1ojpOf">
                          <property role="TrG5h" value="classifier" />
                          <node concept="1oi5XN" id="3AEuFq_OyCn" role="1oi5zu">
                            <property role="1oi5yK" value="String" />
                          </node>
                        </node>
                      </node>
                      <node concept="1$XVwq" id="3AEuFq_Ozr3" role="1oi5TL">
                        <property role="TrG5h" value="X" />
                      </node>
                    </node>
                    <node concept="1oi5Wm" id="3AEuFq_OyCF" role="1ojpOf">
                      <property role="TrG5h" value="concept" />
                      <node concept="1oi5XN" id="3AEuFq_OyCG" role="1oi5zu">
                        <property role="1oi5yK" value="ClassifierType" />
                      </node>
                    </node>
                    <node concept="1oi5Wm" id="3AEuFq_OyCI" role="1ojpOf">
                      <property role="TrG5h" value="classifier" />
                      <node concept="1oi5XN" id="3AEuFq_OyCJ" role="1oi5zu">
                        <property role="1oi5yK" value="Map" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1oi5Wm" id="3AEuFq_OyCM" role="1ojpOf">
                  <property role="TrG5h" value="concept" />
                  <node concept="1oi5XN" id="3AEuFq_OyCN" role="1oi5zu">
                    <property role="1oi5yK" value="ClassifierType" />
                  </node>
                </node>
                <node concept="1oi5Wm" id="3AEuFq_OyCP" role="1ojpOf">
                  <property role="TrG5h" value="classifier" />
                  <node concept="1oi5XN" id="3AEuFq_OyCQ" role="1oi5zu">
                    <property role="1oi5yK" value="Pair" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3AEuFq_Ozuj" role="3cqZAp" />
        <node concept="3clFbF" id="5s497VrflMN" role="3cqZAp">
          <node concept="2OqwBi" id="5s497VrfqFu" role="3clFbG">
            <node concept="10M0yZ" id="5s497VrfqFv" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="5s497VrfqFw" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="5s497Vrfs$8" role="37wK5m">
                <node concept="Xl_RD" id="5s497VrfqFx" role="3uHU7B">
                  <property role="Xl_RC" value="tree1&gt;" />
                </node>
                <node concept="2YIFZM" id="5s497VrfmdF" role="3uHU7w">
                  <ref role="37wK5l" to="ie8e:5s497VqXK1B" resolve="prettyPrint" />
                  <ref role="1Pybhc" to="ie8e:5s497VqXwA7" resolve="PrettyPrinter" />
                  <node concept="10QFUN" id="5s497VrfnjT" role="37wK5m">
                    <node concept="3uibUv" id="5s497VrfnjO" role="10QFUM">
                      <ref role="3uigEE" to="ie8e:1msb0mq9ID4" resolve="Branch" />
                      <node concept="3qTvmN" id="5s497VrfnjP" role="11_B2D" />
                    </node>
                    <node concept="2OqwBi" id="5s497VrfnjQ" role="10QFUP">
                      <node concept="37vLTw" id="5s497VrfnjR" role="2Oq$k0">
                        <ref role="3cqZAo" node="3AEuFq_Oyud" resolve="tree1" />
                      </node>
                      <node concept="liA8E" id="5s497VrfnjS" role="2OqNvi">
                        <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="5s497Vrfnx0" role="37wK5m">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5s497Vrfv$O" role="3cqZAp">
          <node concept="2OqwBi" id="5s497Vrfv$P" role="3clFbG">
            <node concept="10M0yZ" id="5s497Vrfv$Q" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="5s497Vrfv$R" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="5s497Vrfv$S" role="37wK5m">
                <node concept="Xl_RD" id="5s497Vrfv$T" role="3uHU7B">
                  <property role="Xl_RC" value="tree2&gt;" />
                </node>
                <node concept="2YIFZM" id="5s497Vrfv$U" role="3uHU7w">
                  <ref role="37wK5l" to="ie8e:5s497VqXK1B" resolve="prettyPrint" />
                  <ref role="1Pybhc" to="ie8e:5s497VqXwA7" resolve="PrettyPrinter" />
                  <node concept="10QFUN" id="5s497Vrfv$V" role="37wK5m">
                    <node concept="3uibUv" id="5s497Vrfv$W" role="10QFUM">
                      <ref role="3uigEE" to="ie8e:1msb0mq9ID4" resolve="Branch" />
                      <node concept="3qTvmN" id="5s497Vrfv$X" role="11_B2D" />
                    </node>
                    <node concept="2OqwBi" id="5s497Vrfv$Y" role="10QFUP">
                      <node concept="37vLTw" id="5s497VrfwqO" role="2Oq$k0">
                        <ref role="3cqZAo" node="3AEuFq_OyBT" resolve="tree2" />
                      </node>
                      <node concept="liA8E" id="5s497Vrfv_0" role="2OqNvi">
                        <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cmrfG" id="5s497Vrfv_1" role="37wK5m">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5s497VrflnW" role="3cqZAp" />
        <node concept="3cpWs8" id="3AEuFq_O$bM" role="3cqZAp">
          <node concept="3cpWsn" id="3AEuFq_O$bN" role="3cpWs9">
            <property role="TrG5h" value="subs" />
            <node concept="3uibUv" id="3AEuFq_O$bH" role="1tU5fm">
              <ref role="3uigEE" to="jfki:~Substitution" resolve="Substitution" />
            </node>
            <node concept="2YIFZM" id="3AEuFq_O$bO" role="33vP2m">
              <ref role="37wK5l" to="jfki:~Unification.unify(Node,Node)" resolve="unify" />
              <ref role="1Pybhc" to="jfki:~Unification" resolve="Unification" />
              <node concept="2OqwBi" id="3AEuFq_O$md" role="37wK5m">
                <node concept="37vLTw" id="3AEuFq_O$bP" role="2Oq$k0">
                  <ref role="3cqZAo" node="3AEuFq_Oyud" resolve="tree1" />
                </node>
                <node concept="liA8E" id="3AEuFq_O$qu" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                </node>
              </node>
              <node concept="2OqwBi" id="3AEuFq_O$$c" role="37wK5m">
                <node concept="37vLTw" id="3AEuFq_O$bQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="3AEuFq_OyBT" resolve="tree2" />
                </node>
                <node concept="liA8E" id="3AEuFq_O$HQ" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3AEuFq_O_7f" role="3cqZAp" />
        <node concept="3clFbF" id="3AEuFq_O_ll" role="3cqZAp">
          <node concept="2OqwBi" id="3AEuFq_O_lh" role="3clFbG">
            <node concept="10M0yZ" id="3AEuFq_O_li" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="3AEuFq_O_lj" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="3AEuFq_O_T8" role="37wK5m">
                <node concept="2OqwBi" id="3AEuFq_OA4M" role="3uHU7w">
                  <node concept="37vLTw" id="3AEuFq_O_W3" role="2Oq$k0">
                    <ref role="3cqZAo" node="3AEuFq_O$bN" resolve="subs" />
                  </node>
                  <node concept="liA8E" id="3AEuFq_OA87" role="2OqNvi">
                    <ref role="37wK5l" to="jfki:~Substitution.isSuccessful()" resolve="isSuccessful" />
                  </node>
                </node>
                <node concept="Xl_RD" id="3AEuFq_O_lk" role="3uHU7B">
                  <property role="Xl_RC" value="&gt; success=" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3AEuFq_OBlS" role="3cqZAp">
          <node concept="3clFbS" id="3AEuFq_OBlT" role="2LFqv$">
            <node concept="3clFbF" id="3AEuFq_OBN9" role="3cqZAp">
              <node concept="2OqwBi" id="3AEuFq_OBN5" role="3clFbG">
                <node concept="10M0yZ" id="3AEuFq_OBN6" role="2Oq$k0">
                  <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
                  <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
                </node>
                <node concept="liA8E" id="3AEuFq_OBN7" role="2OqNvi">
                  <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
                  <node concept="3cpWs3" id="3AEuFq_OD0k" role="37wK5m">
                    <node concept="2OqwBi" id="3AEuFq_ODCs" role="3uHU7w">
                      <node concept="37vLTw" id="3AEuFq_ODh$" role="2Oq$k0">
                        <ref role="3cqZAo" node="3AEuFq_OBlW" resolve="bnd" />
                      </node>
                      <node concept="liA8E" id="3AEuFq_ODMg" role="2OqNvi">
                        <ref role="37wK5l" to="jfki:~Substitution.Binding.node()" resolve="node" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="3AEuFq_OCw6" role="3uHU7B">
                      <node concept="3cpWs3" id="3AEuFq_OC3G" role="3uHU7B">
                        <node concept="Xl_RD" id="3AEuFq_OBN8" role="3uHU7B">
                          <property role="Xl_RC" value="binding&gt; " />
                        </node>
                        <node concept="2OqwBi" id="3AEuFq_OCcO" role="3uHU7w">
                          <node concept="37vLTw" id="3AEuFq_OC6n" role="2Oq$k0">
                            <ref role="3cqZAo" node="3AEuFq_OBlW" resolve="bnd" />
                          </node>
                          <node concept="liA8E" id="3AEuFq_OCh$" role="2OqNvi">
                            <ref role="37wK5l" to="jfki:~Substitution.Binding.var()" resolve="var" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="3AEuFq_OCLn" role="3uHU7w">
                        <property role="Xl_RC" value="=" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3AEuFq_OBlW" role="1Duv9x">
            <property role="TrG5h" value="bnd" />
            <node concept="3uibUv" id="3AEuFq_OBm0" role="1tU5fm">
              <ref role="3uigEE" to="jfki:~Substitution.Binding" resolve="Substitution.Binding" />
            </node>
          </node>
          <node concept="2OqwBi" id="3AEuFq_OBm1" role="1DdaDG">
            <node concept="37vLTw" id="3AEuFq_OBm2" role="2Oq$k0">
              <ref role="3cqZAo" node="3AEuFq_O$bN" resolve="subs" />
            </node>
            <node concept="liA8E" id="3AEuFq_OBm3" role="2OqNvi">
              <ref role="37wK5l" to="jfki:~Substitution.bindings()" resolve="bindings" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3AEuFq_Ots6" role="1B3o_S" />
  </node>
</model>

