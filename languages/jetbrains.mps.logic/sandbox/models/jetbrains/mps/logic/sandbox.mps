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
    <import index="tqye" ref="r:a96ed64c-59f1-465b-8d59-dbd0e8856971(jetbrains.mps.unification.ast)" />
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
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
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
      <concept id="7932111957678624766" name="jetbrains.mps.logic.structure.ExpressionVariable" flags="ng" index="3a18CM">
        <child id="7932111957678625620" name="expression" index="3a19qo" />
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
      <concept id="7571593955706284481" name="jetbrains.mps.logic.structure.Symbol" flags="ng" index="1ojpPn" />
      <concept id="1611448358170966948" name="jetbrains.mps.logic.structure.Variable" flags="ng" index="1$XVwq" />
      <concept id="1503029989441024" name="jetbrains.mps.logic.structure.AbstractNode" flags="ng" index="1KByzZ">
        <child id="1503029989483908" name="symbol" index="1KAndV" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="5JQSuNswWrq">
    <property role="TrG5h" value="TreeBuilder" />
    <node concept="2tJIrI" id="5JQSuNswWsu" role="jymVt" />
    <node concept="2tJIrI" id="5JQSuNsx3tS" role="jymVt" />
    <node concept="2YIFZL" id="5JQSuNs_q75" role="jymVt">
      <property role="TrG5h" value="main" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="5JQSuNsx3JY" role="3clF47">
        <node concept="3clFbH" id="5JQSuNsz8l9" role="3cqZAp" />
        <node concept="3cpWs8" id="5JQSuNs_orP" role="3cqZAp">
          <node concept="3cpWsn" id="5JQSuNs_orQ" role="3cpWs9">
            <property role="TrG5h" value="tree" />
            <node concept="3uibUv" id="5JQSuNs_orO" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="2YIFZM" id="5JQSuNs_orR" role="33vP2m">
              <ref role="37wK5l" to="ie8e:5JQSuNsxMa3" resolve="tree" />
              <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
              <node concept="2YIFZM" id="5JQSuNs_orS" role="37wK5m">
                <ref role="37wK5l" to="ie8e:5JQSuNsxgzn" resolve="child" />
                <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                <node concept="Xl_RD" id="5JQSuNs_orT" role="37wK5m">
                  <property role="Xl_RC" value="node1" />
                </node>
                <node concept="2YIFZM" id="5JQSuNs_orU" role="37wK5m">
                  <ref role="37wK5l" to="ie8e:5JQSuNsx4I5" resolve="value" />
                  <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                  <node concept="Xl_RD" id="5JQSuNs_orV" role="37wK5m">
                    <property role="Xl_RC" value="prop1" />
                  </node>
                  <node concept="Xl_RD" id="5JQSuNs_orW" role="37wK5m">
                    <property role="Xl_RC" value="value" />
                  </node>
                </node>
                <node concept="2YIFZM" id="5JQSuNs_orX" role="37wK5m">
                  <ref role="37wK5l" to="ie8e:5JQSuNsxgzn" resolve="child" />
                  <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                  <node concept="Xl_RD" id="5JQSuNs_orY" role="37wK5m">
                    <property role="Xl_RC" value="child1" />
                  </node>
                  <node concept="2YIFZM" id="5JQSuNs_orZ" role="37wK5m">
                    <ref role="37wK5l" to="ie8e:5JQSuNsxgzn" resolve="child" />
                    <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                    <node concept="Xl_RD" id="5JQSuNs_os0" role="37wK5m">
                      <property role="Xl_RC" value="node2" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5JQSuNs_pxu" role="3cqZAp" />
        <node concept="3clFbF" id="5JQSuNs_sUc" role="3cqZAp">
          <node concept="2OqwBi" id="5JQSuNs_sU8" role="3clFbG">
            <node concept="10M0yZ" id="5JQSuNs_sU9" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="5JQSuNs_sUa" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="5JQSuNs_tQP" role="37wK5m">
                <node concept="Xl_RD" id="5JQSuNs_sUb" role="3uHU7B">
                  <property role="Xl_RC" value="&gt; " />
                </node>
                <node concept="2OqwBi" id="5JQSuNs_tA3" role="3uHU7w">
                  <node concept="37vLTw" id="5JQSuNs_tA4" role="2Oq$k0">
                    <ref role="3cqZAo" node="5JQSuNs_orQ" resolve="tree" />
                  </node>
                  <node concept="liA8E" id="5JQSuNs_tA5" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:5JQSuNs_vzS" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="uNmovXfqew" role="3cqZAp" />
        <node concept="3cpWs8" id="uNmovXg2L7" role="3cqZAp">
          <node concept="3cpWsn" id="uNmovXg2L8" role="3cpWs9">
            <property role="TrG5h" value="tree2" />
            <node concept="3uibUv" id="uNmovXg2KU" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="2YIFZM" id="uNmovXg2L9" role="33vP2m">
              <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
              <ref role="37wK5l" to="ie8e:5JQSuNsxMa3" resolve="tree" />
              <node concept="2YIFZM" id="uNmovXg2La" role="37wK5m">
                <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                <ref role="37wK5l" to="ie8e:5JQSuNsxgzn" resolve="child" />
                <node concept="Xl_RD" id="uNmovXg2Lb" role="37wK5m">
                  <property role="Xl_RC" value="node1" />
                </node>
                <node concept="2YIFZM" id="uNmovXg2Lc" role="37wK5m">
                  <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                  <ref role="37wK5l" to="ie8e:5JQSuNsx4I5" resolve="value" />
                  <node concept="Xl_RD" id="uNmovXg2Ld" role="37wK5m">
                    <property role="Xl_RC" value="concept" />
                  </node>
                  <node concept="Xl_RD" id="uNmovXg2Le" role="37wK5m">
                    <property role="Xl_RC" value="ClassifierType" />
                  </node>
                </node>
                <node concept="2YIFZM" id="uNmovXg2Lf" role="37wK5m">
                  <ref role="37wK5l" to="ie8e:5JQSuNsx4I5" resolve="value" />
                  <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                  <node concept="Xl_RD" id="uNmovXg2Lg" role="37wK5m">
                    <property role="Xl_RC" value="classifier" />
                  </node>
                  <node concept="Xl_RD" id="uNmovXg2Lh" role="37wK5m">
                    <property role="Xl_RC" value="List" />
                  </node>
                </node>
                <node concept="2YIFZM" id="uNmovXg2Li" role="37wK5m">
                  <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                  <ref role="37wK5l" to="ie8e:5JQSuNsxgzn" resolve="child" />
                  <node concept="Xl_RD" id="uNmovXg2Lj" role="37wK5m">
                    <property role="Xl_RC" value="parameter" />
                  </node>
                  <node concept="2YIFZM" id="uNmovXg2Lk" role="37wK5m">
                    <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                    <ref role="37wK5l" to="ie8e:5JQSuNsxgzn" resolve="child" />
                    <node concept="Xl_RD" id="uNmovXg2Ll" role="37wK5m">
                      <property role="Xl_RC" value="node2" />
                    </node>
                    <node concept="2YIFZM" id="uNmovXg2Lm" role="37wK5m">
                      <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                      <ref role="37wK5l" to="ie8e:5JQSuNsx4I5" resolve="value" />
                      <node concept="Xl_RD" id="uNmovXg2Ln" role="37wK5m">
                        <property role="Xl_RC" value="concept" />
                      </node>
                      <node concept="Xl_RD" id="uNmovXg2Lo" role="37wK5m">
                        <property role="Xl_RC" value="ClassifierType" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="uNmovXg2Lp" role="37wK5m">
                      <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                      <ref role="37wK5l" to="ie8e:5JQSuNsx4I5" resolve="value" />
                      <node concept="Xl_RD" id="uNmovXg2Lq" role="37wK5m">
                        <property role="Xl_RC" value="classifier" />
                      </node>
                      <node concept="Xl_RD" id="uNmovXg2Lr" role="37wK5m">
                        <property role="Xl_RC" value="String" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="uNmovXg8NB" role="3cqZAp" />
        <node concept="3clFbF" id="uNmovXgaj8" role="3cqZAp">
          <node concept="2OqwBi" id="uNmovXgaj4" role="3clFbG">
            <node concept="10M0yZ" id="uNmovXgaj5" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="uNmovXgaj6" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="uNmovXgc0W" role="37wK5m">
                <node concept="37vLTw" id="uNmovXgcaH" role="3uHU7w">
                  <ref role="3cqZAo" node="uNmovXg2L8" resolve="tree2" />
                </node>
                <node concept="Xl_RD" id="uNmovXgaj7" role="3uHU7B">
                  <property role="Xl_RC" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5JQSuNsxPhi" role="3cqZAp" />
        <node concept="3clFbH" id="uNmovXhk2M" role="3cqZAp" />
        <node concept="3cpWs8" id="uNmovXiqZk" role="3cqZAp">
          <node concept="3cpWsn" id="uNmovXiqZl" role="3cpWs9">
            <property role="TrG5h" value="tree3" />
            <node concept="3uibUv" id="uNmovXiqYK" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="2YIFZM" id="uNmovXiqZm" role="33vP2m">
              <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
              <ref role="37wK5l" to="ie8e:5JQSuNsxMa3" resolve="tree" />
              <node concept="2YIFZM" id="uNmovXiqZn" role="37wK5m">
                <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                <ref role="37wK5l" to="ie8e:5JQSuNsxgzn" resolve="child" />
                <node concept="Xl_RD" id="uNmovXiqZo" role="37wK5m">
                  <property role="Xl_RC" value="node1" />
                </node>
                <node concept="2YIFZM" id="uNmovXiqZp" role="37wK5m">
                  <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                  <ref role="37wK5l" to="ie8e:5JQSuNsx4I5" resolve="value" />
                  <node concept="Xl_RD" id="uNmovXiqZq" role="37wK5m">
                    <property role="Xl_RC" value="concept" />
                  </node>
                  <node concept="Xl_RD" id="uNmovXiqZr" role="37wK5m">
                    <property role="Xl_RC" value="FunctionType" />
                  </node>
                </node>
                <node concept="2YIFZM" id="uNmovXiqZs" role="37wK5m">
                  <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                  <ref role="37wK5l" to="ie8e:5JQSuNsxgzn" resolve="child" />
                  <node concept="Xl_RD" id="uNmovXiqZt" role="37wK5m">
                    <property role="Xl_RC" value="parameterType" />
                  </node>
                  <node concept="2YIFZM" id="uNmovXiqZu" role="37wK5m">
                    <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                    <ref role="37wK5l" to="ie8e:5JQSuNsxgzn" resolve="child" />
                    <node concept="Xl_RD" id="uNmovXiqZv" role="37wK5m">
                      <property role="Xl_RC" value="node2" />
                    </node>
                    <node concept="2YIFZM" id="uNmovXiqZw" role="37wK5m">
                      <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                      <ref role="37wK5l" to="ie8e:5JQSuNsx4I5" resolve="value" />
                      <node concept="Xl_RD" id="uNmovXiqZx" role="37wK5m">
                        <property role="Xl_RC" value="concept" />
                      </node>
                      <node concept="Xl_RD" id="uNmovXiqZy" role="37wK5m">
                        <property role="Xl_RC" value="ClassifierType" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="uNmovXiqZz" role="37wK5m">
                      <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                      <ref role="37wK5l" to="ie8e:5JQSuNsx4I5" resolve="value" />
                      <node concept="Xl_RD" id="uNmovXiqZ$" role="37wK5m">
                        <property role="Xl_RC" value="classifier" />
                      </node>
                      <node concept="Xl_RD" id="uNmovXiqZ_" role="37wK5m">
                        <property role="Xl_RC" value="Integer" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="uNmovXiqZA" role="37wK5m">
                  <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                  <ref role="37wK5l" to="ie8e:5JQSuNsxgzn" resolve="child" />
                  <node concept="Xl_RD" id="uNmovXiqZB" role="37wK5m">
                    <property role="Xl_RC" value="returnType" />
                  </node>
                  <node concept="2YIFZM" id="uNmovXiqZC" role="37wK5m">
                    <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                    <ref role="37wK5l" to="ie8e:5JQSuNsxgzn" resolve="child" />
                    <node concept="Xl_RD" id="uNmovXiqZD" role="37wK5m">
                      <property role="Xl_RC" value="node3" />
                    </node>
                    <node concept="2YIFZM" id="uNmovXiqZE" role="37wK5m">
                      <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                      <ref role="37wK5l" to="ie8e:5JQSuNsx4I5" resolve="value" />
                      <node concept="Xl_RD" id="uNmovXiqZF" role="37wK5m">
                        <property role="Xl_RC" value="concept" />
                      </node>
                      <node concept="Xl_RD" id="uNmovXiqZG" role="37wK5m">
                        <property role="Xl_RC" value="ClassifierType" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="uNmovXiqZH" role="37wK5m">
                      <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                      <ref role="37wK5l" to="ie8e:5JQSuNsx4I5" resolve="value" />
                      <node concept="Xl_RD" id="uNmovXiqZI" role="37wK5m">
                        <property role="Xl_RC" value="classifier" />
                      </node>
                      <node concept="Xl_RD" id="uNmovXiqZJ" role="37wK5m">
                        <property role="Xl_RC" value="String" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="uNmovXinzw" role="3cqZAp" />
        <node concept="3clFbF" id="uNmovXixRW" role="3cqZAp">
          <node concept="2OqwBi" id="uNmovXixRS" role="3clFbG">
            <node concept="10M0yZ" id="uNmovXixRT" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="uNmovXixRU" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="uNmovXi_3V" role="37wK5m">
                <node concept="37vLTw" id="uNmovXi_dn" role="3uHU7w">
                  <ref role="3cqZAo" node="uNmovXiqZl" resolve="tree3" />
                </node>
                <node concept="Xl_RD" id="uNmovXixRV" role="3uHU7B">
                  <property role="Xl_RC" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1R$Cm9qF9oh" role="3cqZAp" />
        <node concept="3cpWs8" id="1R$Cm9qFf1u" role="3cqZAp">
          <node concept="3cpWsn" id="1R$Cm9qFf1v" role="3cpWs9">
            <property role="TrG5h" value="a" />
            <node concept="3uibUv" id="1R$Cm9qFf1w" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:1R$Cm9qEqLU" resolve="Path" />
            </node>
            <node concept="2YIFZM" id="1R$Cm9qFhQs" role="33vP2m">
              <ref role="37wK5l" to="ie8e:1R$Cm9qEBDL" resolve="create" />
              <ref role="1Pybhc" to="ie8e:1R$Cm9qEqLU" resolve="Path" />
              <node concept="Xl_RD" id="1R$Cm9qFhRA" role="37wK5m">
                <property role="Xl_RC" value="a" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R$Cm9qFnzI" role="3cqZAp">
          <node concept="3cpWsn" id="1R$Cm9qFnzJ" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="1R$Cm9qFnzK" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:1R$Cm9qEqLU" resolve="Path" />
            </node>
            <node concept="2YIFZM" id="1R$Cm9qFqqe" role="33vP2m">
              <ref role="37wK5l" to="ie8e:1R$Cm9qEBDL" resolve="create" />
              <ref role="1Pybhc" to="ie8e:1R$Cm9qEqLU" resolve="Path" />
              <node concept="Xl_RD" id="1R$Cm9qFqrq" role="37wK5m">
                <property role="Xl_RC" value="b" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R$Cm9qGBpU" role="3cqZAp">
          <node concept="3cpWsn" id="1R$Cm9qGBpV" role="3cpWs9">
            <property role="TrG5h" value="c" />
            <node concept="3uibUv" id="1R$Cm9qGBpW" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:1R$Cm9qEqLU" resolve="Path" />
            </node>
            <node concept="2YIFZM" id="1R$Cm9qGBpX" role="33vP2m">
              <ref role="37wK5l" to="ie8e:1R$Cm9qEBDL" resolve="create" />
              <ref role="1Pybhc" to="ie8e:1R$Cm9qEqLU" resolve="Path" />
              <node concept="Xl_RD" id="1R$Cm9qGBpY" role="37wK5m">
                <property role="Xl_RC" value="c" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1R$Cm9qFqvO" role="3cqZAp" />
        <node concept="3clFbF" id="1R$Cm9qFwcS" role="3cqZAp">
          <node concept="2OqwBi" id="1R$Cm9qFx_P" role="3clFbG">
            <node concept="37vLTw" id="1R$Cm9qFwcR" role="2Oq$k0">
              <ref role="3cqZAo" node="1R$Cm9qFnzJ" resolve="b" />
            </node>
            <node concept="liA8E" id="1R$Cm9qF$qs" role="2OqNvi">
              <ref role="37wK5l" to="ie8e:1R$Cm9qEroc" resolve="prepend" />
              <node concept="37vLTw" id="1R$Cm9qF$rO" role="37wK5m">
                <ref role="3cqZAo" node="1R$Cm9qFf1v" resolve="a" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R$Cm9qGEoD" role="3cqZAp">
          <node concept="2OqwBi" id="1R$Cm9qGFNF" role="3clFbG">
            <node concept="37vLTw" id="1R$Cm9qGEoC" role="2Oq$k0">
              <ref role="3cqZAo" node="1R$Cm9qGBpV" resolve="c" />
            </node>
            <node concept="liA8E" id="1R$Cm9qGIGM" role="2OqNvi">
              <ref role="37wK5l" to="ie8e:1R$Cm9qEroc" resolve="prepend" />
              <node concept="37vLTw" id="1R$Cm9qGIIh" role="37wK5m">
                <ref role="3cqZAo" node="1R$Cm9qFnzJ" resolve="b" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1R$Cm9qGIJG" role="3cqZAp" />
        <node concept="3clFbF" id="1R$Cm9qFE8r" role="3cqZAp">
          <node concept="2OqwBi" id="1R$Cm9qFE8n" role="3clFbG">
            <node concept="10M0yZ" id="1R$Cm9qFE8o" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="1R$Cm9qFE8p" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="1R$Cm9qFHoW" role="37wK5m">
                <node concept="2OqwBi" id="1R$Cm9qFHu7" role="3uHU7w">
                  <node concept="37vLTw" id="1R$Cm9qFLWG" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R$Cm9qFf1v" resolve="a" />
                  </node>
                  <node concept="liA8E" id="1R$Cm9qFHDr" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:1R$Cm9qE$U4" resolve="toString" />
                  </node>
                </node>
                <node concept="Xl_RD" id="1R$Cm9qFE8q" role="3uHU7B">
                  <property role="Xl_RC" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R$Cm9qFITq" role="3cqZAp">
          <node concept="2OqwBi" id="1R$Cm9qFITr" role="3clFbG">
            <node concept="10M0yZ" id="1R$Cm9qFITs" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="1R$Cm9qFITt" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="1R$Cm9qFITu" role="37wK5m">
                <node concept="2OqwBi" id="1R$Cm9qFITv" role="3uHU7w">
                  <node concept="37vLTw" id="1R$Cm9qFITw" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R$Cm9qFnzJ" resolve="b" />
                  </node>
                  <node concept="liA8E" id="1R$Cm9qFITx" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:1R$Cm9qE$U4" resolve="toString" />
                  </node>
                </node>
                <node concept="Xl_RD" id="1R$Cm9qFITy" role="3uHU7B">
                  <property role="Xl_RC" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R$Cm9qGLIs" role="3cqZAp">
          <node concept="2OqwBi" id="1R$Cm9qGLIt" role="3clFbG">
            <node concept="10M0yZ" id="1R$Cm9qGLIu" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="1R$Cm9qGLIv" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="1R$Cm9qGLIw" role="37wK5m">
                <node concept="2OqwBi" id="1R$Cm9qGLIx" role="3uHU7w">
                  <node concept="37vLTw" id="1R$Cm9qGOPj" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R$Cm9qGBpV" resolve="c" />
                  </node>
                  <node concept="liA8E" id="1R$Cm9qGLIz" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:1R$Cm9qE$U4" resolve="toString" />
                  </node>
                </node>
                <node concept="Xl_RD" id="1R$Cm9qGLI$" role="3uHU7B">
                  <property role="Xl_RC" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5JQSuNsx3JW" role="3clF45" />
      <node concept="3Tm1VV" id="5JQSuNsx3JX" role="1B3o_S" />
      <node concept="37vLTG" id="5JQSuNs_rHG" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="5JQSuNs_sio" role="1tU5fm">
          <node concept="17QB3L" id="6SkxsMz$UWY" role="10Q1$1" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5JQSuNszRpT" role="jymVt" />
    <node concept="3Tm1VV" id="5JQSuNswWrr" role="1B3o_S" />
    <node concept="3uibUv" id="5JQSuNszRph" role="1zkMxy">
      <ref role="3uigEE" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
    </node>
  </node>
  <node concept="312cEu" id="uNmovXiDbe">
    <property role="TrG5h" value="UnificationTest" />
    <node concept="2tJIrI" id="uNmovXiDbC" role="jymVt" />
    <node concept="2YIFZL" id="uNmovXiDc7" role="jymVt">
      <property role="TrG5h" value="main" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="uNmovXiDca" role="3clF47">
        <node concept="3clFbH" id="1R$Cm9qDohh" role="3cqZAp" />
        <node concept="3cpWs8" id="uNmovXjN1K" role="3cqZAp">
          <node concept="3cpWsn" id="uNmovXjN1L" role="3cpWs9">
            <property role="TrG5h" value="tree1" />
            <node concept="3uibUv" id="uNmovXjN1C" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="2YIFZM" id="1R$Cm9qAtjk" role="33vP2m">
              <ref role="37wK5l" to="ie8e:5JQSuNsxMa3" resolve="tree" />
              <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
              <node concept="2YIFZM" id="1R$Cm9qHE$z" role="37wK5m">
                <ref role="1Pybhc" to="tqye:1R$Cm9qIi2j" resolve="AstBuilder" />
                <ref role="37wK5l" to="tqye:1R$Cm9qHxAg" resolve="node" />
                <node concept="2YIFZM" id="1R$Cm9qHE$_" role="37wK5m">
                  <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                  <ref role="37wK5l" to="ie8e:5JQSuNsx4I5" resolve="value" />
                  <node concept="Xl_RD" id="1R$Cm9qHE$A" role="37wK5m">
                    <property role="Xl_RC" value="concept" />
                  </node>
                  <node concept="Xl_RD" id="1R$Cm9qHE$B" role="37wK5m">
                    <property role="Xl_RC" value="FunctionType" />
                  </node>
                </node>
                <node concept="2YIFZM" id="6$jH9oLjl6C" role="37wK5m">
                  <ref role="1Pybhc" to="tqye:1R$Cm9qIi2j" resolve="AstBuilder" />
                  <ref role="37wK5l" to="tqye:6$jH9oLaYQA" resolve="nodeList" />
                  <node concept="Xl_RD" id="6$jH9oLjqtk" role="37wK5m">
                    <property role="Xl_RC" value="parameterType" />
                  </node>
                  <node concept="2YIFZM" id="6$jH9oLjv_r" role="37wK5m">
                    <ref role="1Pybhc" to="tqye:1R$Cm9qIi2j" resolve="AstBuilder" />
                    <ref role="37wK5l" to="tqye:1R$Cm9qHxAg" resolve="node" />
                    <node concept="2YIFZM" id="6$jH9oLjv_s" role="37wK5m">
                      <ref role="37wK5l" to="ie8e:5JQSuNsx4I5" resolve="value" />
                      <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                      <node concept="Xl_RD" id="6$jH9oLjv_t" role="37wK5m">
                        <property role="Xl_RC" value="concept" />
                      </node>
                      <node concept="Xl_RD" id="6$jH9oLjv_u" role="37wK5m">
                        <property role="Xl_RC" value="ClassifierType" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="6$jH9oLjv_v" role="37wK5m">
                      <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                      <ref role="37wK5l" to="ie8e:5JQSuNsx4I5" resolve="value" />
                      <node concept="Xl_RD" id="6$jH9oLjv_w" role="37wK5m">
                        <property role="Xl_RC" value="classifier" />
                      </node>
                      <node concept="Xl_RD" id="6$jH9oLjv_x" role="37wK5m">
                        <property role="Xl_RC" value="Integer" />
                      </node>
                    </node>
                  </node>
                  <node concept="2YIFZM" id="6$jH9oLkg45" role="37wK5m">
                    <ref role="1Pybhc" to="tqye:1R$Cm9qIi2j" resolve="AstBuilder" />
                    <ref role="37wK5l" to="tqye:1R$Cm9qHxAg" resolve="node" />
                    <node concept="2YIFZM" id="6$jH9oLkg46" role="37wK5m">
                      <ref role="37wK5l" to="ie8e:5JQSuNsx4I5" resolve="value" />
                      <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                      <node concept="Xl_RD" id="6$jH9oLkg47" role="37wK5m">
                        <property role="Xl_RC" value="concept" />
                      </node>
                      <node concept="Xl_RD" id="6$jH9oLkg48" role="37wK5m">
                        <property role="Xl_RC" value="ClassifierType" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="6$jH9oLkg49" role="37wK5m">
                      <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                      <ref role="37wK5l" to="ie8e:5JQSuNsx4I5" resolve="value" />
                      <node concept="Xl_RD" id="6$jH9oLkg4a" role="37wK5m">
                        <property role="Xl_RC" value="classifier" />
                      </node>
                      <node concept="Xl_RD" id="6$jH9oLkg4b" role="37wK5m">
                        <property role="Xl_RC" value="String" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="5oZZzbre8Ui" role="37wK5m">
                  <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                  <ref role="37wK5l" to="ie8e:uNmovXjpCg" resolve="variable" />
                  <node concept="Xl_RD" id="5oZZzbre8Uj" role="37wK5m">
                    <property role="Xl_RC" value="returnType" />
                  </node>
                  <node concept="Xl_RD" id="5oZZzbre8Uk" role="37wK5m">
                    <property role="Xl_RC" value="RetType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1R$Cm9qDlUc" role="3cqZAp" />
        <node concept="3cpWs8" id="1R$Cm9qA99H" role="3cqZAp">
          <node concept="3cpWsn" id="1R$Cm9qA99I" role="3cpWs9">
            <property role="TrG5h" value="tree2" />
            <node concept="3uibUv" id="1R$Cm9qA99A" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="2YIFZM" id="1R$Cm9qAuLd" role="33vP2m">
              <ref role="37wK5l" to="ie8e:5JQSuNsxMa3" resolve="tree" />
              <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
              <node concept="2YIFZM" id="1R$Cm9qHJmv" role="37wK5m">
                <ref role="1Pybhc" to="tqye:1R$Cm9qIi2j" resolve="AstBuilder" />
                <ref role="37wK5l" to="tqye:1R$Cm9qHxAg" resolve="node" />
                <node concept="2YIFZM" id="1R$Cm9qHJmx" role="37wK5m">
                  <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                  <ref role="37wK5l" to="ie8e:5JQSuNsx4I5" resolve="value" />
                  <node concept="Xl_RD" id="1R$Cm9qHJmy" role="37wK5m">
                    <property role="Xl_RC" value="concept" />
                  </node>
                  <node concept="Xl_RD" id="1R$Cm9qHJmz" role="37wK5m">
                    <property role="Xl_RC" value="FunctionType" />
                  </node>
                </node>
                <node concept="2YIFZM" id="6$jH9oLkupC" role="37wK5m">
                  <ref role="1Pybhc" to="tqye:1R$Cm9qIi2j" resolve="AstBuilder" />
                  <ref role="37wK5l" to="tqye:6$jH9oLaYQA" resolve="nodeList" />
                  <node concept="Xl_RD" id="6$jH9oLkx$Y" role="37wK5m">
                    <property role="Xl_RC" value="parameterType" />
                  </node>
                  <node concept="2YIFZM" id="6$jH9oLkFdu" role="37wK5m">
                    <ref role="37wK5l" to="ie8e:uNmovXiPrH" resolve="create" />
                    <ref role="1Pybhc" to="ie8e:uNmovXiEd4" resolve="Variable" />
                    <node concept="Xl_RD" id="6$jH9oLkGBb" role="37wK5m">
                      <property role="Xl_RC" value="P1" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="6$jH9oLl3N8" role="37wK5m">
                    <ref role="37wK5l" to="tqye:1R$Cm9qHxAg" resolve="node" />
                    <ref role="1Pybhc" to="tqye:1R$Cm9qIi2j" resolve="AstBuilder" />
                    <node concept="2YIFZM" id="6$jH9oLl3N9" role="37wK5m">
                      <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                      <ref role="37wK5l" to="ie8e:5JQSuNsx4I5" resolve="value" />
                      <node concept="Xl_RD" id="6$jH9oLl3Na" role="37wK5m">
                        <property role="Xl_RC" value="concept" />
                      </node>
                      <node concept="Xl_RD" id="6$jH9oLl3Nb" role="37wK5m">
                        <property role="Xl_RC" value="ClassifierType" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="6$jH9oLl3Nc" role="37wK5m">
                      <ref role="37wK5l" to="ie8e:5JQSuNsx4I5" resolve="value" />
                      <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                      <node concept="Xl_RD" id="6$jH9oLl3Nd" role="37wK5m">
                        <property role="Xl_RC" value="classifier" />
                      </node>
                      <node concept="Xl_RD" id="6$jH9oLl3Ne" role="37wK5m">
                        <property role="Xl_RC" value="String" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="1R$Cm9qHJmI" role="37wK5m">
                  <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                  <ref role="37wK5l" to="ie8e:5JQSuNsxgzn" resolve="child" />
                  <node concept="Xl_RD" id="1R$Cm9qHJmJ" role="37wK5m">
                    <property role="Xl_RC" value="returnType" />
                  </node>
                  <node concept="2YIFZM" id="1R$Cm9qHZgi" role="37wK5m">
                    <ref role="1Pybhc" to="tqye:1R$Cm9qIi2j" resolve="AstBuilder" />
                    <ref role="37wK5l" to="tqye:1R$Cm9qHxAg" resolve="node" />
                    <node concept="2YIFZM" id="1R$Cm9qHZgk" role="37wK5m">
                      <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                      <ref role="37wK5l" to="ie8e:5JQSuNsx4I5" resolve="value" />
                      <node concept="Xl_RD" id="1R$Cm9qHZgl" role="37wK5m">
                        <property role="Xl_RC" value="concept" />
                      </node>
                      <node concept="Xl_RD" id="1R$Cm9qHZgm" role="37wK5m">
                        <property role="Xl_RC" value="ClassifierType" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="1R$Cm9qHZgn" role="37wK5m">
                      <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                      <ref role="37wK5l" to="ie8e:5JQSuNsx4I5" resolve="value" />
                      <node concept="Xl_RD" id="1R$Cm9qHZgo" role="37wK5m">
                        <property role="Xl_RC" value="classifier" />
                      </node>
                      <node concept="Xl_RD" id="1R$Cm9qHZgp" role="37wK5m">
                        <property role="Xl_RC" value="String" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1R$Cm9qAaux" role="3cqZAp" />
        <node concept="3clFbF" id="1R$Cm9qBOf0" role="3cqZAp">
          <node concept="2OqwBi" id="1R$Cm9qBOeW" role="3clFbG">
            <node concept="10M0yZ" id="1R$Cm9qBOeX" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="1R$Cm9qBOeY" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="1R$Cm9qBRbZ" role="37wK5m">
                <node concept="37vLTw" id="1R$Cm9qBRk7" role="3uHU7w">
                  <ref role="3cqZAo" node="uNmovXjN1L" resolve="tree1" />
                </node>
                <node concept="Xl_RD" id="1R$Cm9qBOeZ" role="3uHU7B">
                  <property role="Xl_RC" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R$Cm9qBUxm" role="3cqZAp">
          <node concept="2OqwBi" id="1R$Cm9qBUxi" role="3clFbG">
            <node concept="10M0yZ" id="1R$Cm9qBUxj" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="1R$Cm9qBUxk" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="1R$Cm9qBXBP" role="37wK5m">
                <node concept="37vLTw" id="1R$Cm9qBXLG" role="3uHU7w">
                  <ref role="3cqZAo" node="1R$Cm9qA99I" resolve="tree2" />
                </node>
                <node concept="Xl_RD" id="1R$Cm9qBUxl" role="3uHU7B">
                  <property role="Xl_RC" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1R$Cm9qBLwd" role="3cqZAp" />
        <node concept="3cpWs8" id="1R$Cm9qAcFi" role="3cqZAp">
          <node concept="3cpWsn" id="1R$Cm9qAcFj" role="3cpWs9">
            <property role="TrG5h" value="unify" />
            <node concept="3uibUv" id="1R$Cm9qAcF8" role="1tU5fm">
              <ref role="3uigEE" to="jfki:~Substitution" resolve="Substitution" />
            </node>
            <node concept="2YIFZM" id="1R$Cm9qAcFk" role="33vP2m">
              <ref role="37wK5l" to="jfki:~Unification.unify(Node,Node)" resolve="unify" />
              <ref role="1Pybhc" to="jfki:~Unification" resolve="Unification" />
              <node concept="2OqwBi" id="1R$Cm9qAcFl" role="37wK5m">
                <node concept="37vLTw" id="1R$Cm9qAcFm" role="2Oq$k0">
                  <ref role="3cqZAo" node="uNmovXjN1L" resolve="tree1" />
                </node>
                <node concept="liA8E" id="1R$Cm9qAcFn" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                </node>
              </node>
              <node concept="2OqwBi" id="1R$Cm9qAcFo" role="37wK5m">
                <node concept="37vLTw" id="1R$Cm9qAcFp" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R$Cm9qA99I" resolve="tree2" />
                </node>
                <node concept="liA8E" id="1R$Cm9qAcFq" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1R$Cm9qAddt" role="3cqZAp" />
        <node concept="3clFbF" id="1R$Cm9qAegW" role="3cqZAp">
          <node concept="2OqwBi" id="1R$Cm9qAegS" role="3clFbG">
            <node concept="10M0yZ" id="1R$Cm9qAegT" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="1R$Cm9qAegU" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="1R$Cm9qAeVH" role="37wK5m">
                <node concept="37vLTw" id="1R$Cm9qAeXO" role="3uHU7w">
                  <ref role="3cqZAo" node="1R$Cm9qAcFj" resolve="unify" />
                </node>
                <node concept="Xl_RD" id="1R$Cm9qAegV" role="3uHU7B">
                  <property role="Xl_RC" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="uNmovXiDbM" role="1B3o_S" />
      <node concept="3cqZAl" id="uNmovXiDc1" role="3clF45" />
      <node concept="37vLTG" id="uNmovXiDcm" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="uNmovXiDd$" role="1tU5fm">
          <node concept="17QB3L" id="6SkxsMz$UWZ" role="10Q1$1" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="uNmovXiDkN" role="jymVt" />
    <node concept="3Tm1VV" id="uNmovXiDbf" role="1B3o_S" />
    <node concept="3uibUv" id="1R$Cm9qIwC6" role="1zkMxy">
      <ref role="3uigEE" to="tqye:1R$Cm9qIi2j" resolve="AstBuilder" />
    </node>
  </node>
  <node concept="312cEu" id="6$jH9oLfVBM">
    <property role="TrG5h" value="ListTest" />
    <node concept="2tJIrI" id="6$jH9oLfVCc" role="jymVt" />
    <node concept="2YIFZL" id="6$jH9oLfVEE" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="37vLTG" id="6$jH9oLfVEF" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="6$jH9oLfVEG" role="1tU5fm">
          <node concept="17QB3L" id="6$jH9oLfVEH" role="10Q1$1" />
        </node>
      </node>
      <node concept="3cqZAl" id="6$jH9oLfVEI" role="3clF45" />
      <node concept="3Tm1VV" id="6$jH9oLfVEJ" role="1B3o_S" />
      <node concept="3clFbS" id="6$jH9oLfVEK" role="3clF47">
        <node concept="3cpWs8" id="6$jH9oLfVPB" role="3cqZAp">
          <node concept="3cpWsn" id="6$jH9oLfVPC" role="3cpWs9">
            <property role="TrG5h" value="childrenList" />
            <node concept="3uibUv" id="6$jH9oLfVPz" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:3OPtF03lco4" resolve="ListBranch" />
              <node concept="3qTvmN" id="6$jH9oLfZg2" role="11_B2D" />
            </node>
            <node concept="2YIFZM" id="6$jH9oLfVPD" role="33vP2m">
              <ref role="1Pybhc" to="tqye:1R$Cm9qIi2j" resolve="AstBuilder" />
              <ref role="37wK5l" to="tqye:6$jH9oLaYQA" resolve="nodeList" />
              <node concept="Xl_RD" id="6$jH9oLhvUI" role="37wK5m">
                <property role="Xl_RC" value="childrenList" />
              </node>
              <node concept="2YIFZM" id="6$jH9oLg$cG" role="37wK5m">
                <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                <ref role="37wK5l" to="ie8e:5JQSuNsxgzn" resolve="child" />
                <node concept="Xl_RD" id="6$jH9oLg$pZ" role="37wK5m">
                  <property role="Xl_RC" value="child1" />
                </node>
              </node>
              <node concept="2YIFZM" id="6$jH9oLgLQB" role="37wK5m">
                <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                <ref role="37wK5l" to="ie8e:5JQSuNsxgzn" resolve="child" />
                <node concept="Xl_RD" id="6$jH9oLgMoH" role="37wK5m">
                  <property role="Xl_RC" value="child2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6$jH9oLhFKS" role="3cqZAp">
          <node concept="3cpWsn" id="6$jH9oLhFKT" role="3cpWs9">
            <property role="TrG5h" value="valuesList" />
            <node concept="3uibUv" id="6$jH9oLhFKU" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:3OPtF03lco4" resolve="ListBranch" />
              <node concept="3qTvmN" id="6$jH9oLhFKV" role="11_B2D" />
            </node>
            <node concept="2YIFZM" id="5s497Vql4si" role="33vP2m">
              <ref role="37wK5l" to="ie8e:5s497Vql4ru" resolve="valueList" />
              <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
              <node concept="Xl_RD" id="6$jH9oLiSat" role="37wK5m">
                <property role="Xl_RC" value="valuesList" />
              </node>
              <node concept="Xl_RD" id="6$jH9oLiStm" role="37wK5m">
                <property role="Xl_RC" value="val1" />
              </node>
              <node concept="Xl_RD" id="6$jH9oLiUap" role="37wK5m">
                <property role="Xl_RC" value="val2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6$jH9oLj4$x" role="3cqZAp">
          <node concept="3cpWsn" id="6$jH9oLj4$y" role="3cpWs9">
            <property role="TrG5h" value="varList" />
            <node concept="3uibUv" id="6$jH9oLj4$z" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:3OPtF03lco4" resolve="ListBranch" />
              <node concept="3qTvmN" id="6$jH9oLj4$$" role="11_B2D" />
            </node>
            <node concept="2YIFZM" id="5s497Vql4sh" role="33vP2m">
              <ref role="37wK5l" to="ie8e:5s497Vql4ru" resolve="valueList" />
              <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
              <node concept="Xl_RD" id="6$jH9oLj4$A" role="37wK5m">
                <property role="Xl_RC" value="varList" />
              </node>
              <node concept="Xl_RD" id="6$jH9oLj4$B" role="37wK5m">
                <property role="Xl_RC" value="var1" />
              </node>
              <node concept="Xl_RD" id="6$jH9oLj4$C" role="37wK5m">
                <property role="Xl_RC" value="var2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6$jH9oLfWle" role="3cqZAp" />
        <node concept="3clFbF" id="6$jH9oLfW$m" role="3cqZAp">
          <node concept="2OqwBi" id="6$jH9oLfW$i" role="3clFbG">
            <node concept="10M0yZ" id="6$jH9oLfW$j" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="6$jH9oLfW$k" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="6$jH9oLfWM$" role="37wK5m">
                <node concept="37vLTw" id="6$jH9oLfWOL" role="3uHU7w">
                  <ref role="3cqZAo" node="6$jH9oLfVPC" resolve="childrenList" />
                </node>
                <node concept="Xl_RD" id="6$jH9oLfW$l" role="3uHU7B">
                  <property role="Xl_RC" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6$jH9oLj2Yq" role="3cqZAp">
          <node concept="2OqwBi" id="6$jH9oLj2Yr" role="3clFbG">
            <node concept="10M0yZ" id="6$jH9oLj2Ys" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="6$jH9oLj2Yt" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="6$jH9oLj2Yu" role="37wK5m">
                <node concept="37vLTw" id="6$jH9oLj3pV" role="3uHU7w">
                  <ref role="3cqZAo" node="6$jH9oLhFKT" resolve="valuesList" />
                </node>
                <node concept="Xl_RD" id="6$jH9oLj2Yw" role="3uHU7B">
                  <property role="Xl_RC" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6$jH9oLj6Wl" role="3cqZAp">
          <node concept="2OqwBi" id="6$jH9oLj6Wm" role="3clFbG">
            <node concept="10M0yZ" id="6$jH9oLj6Wn" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="6$jH9oLj6Wo" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="6$jH9oLj6Wp" role="37wK5m">
                <node concept="37vLTw" id="6$jH9oLj7t8" role="3uHU7w">
                  <ref role="3cqZAo" node="6$jH9oLj4$y" resolve="varList" />
                </node>
                <node concept="Xl_RD" id="6$jH9oLj6Wr" role="3uHU7B">
                  <property role="Xl_RC" value="&gt; " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6$jH9oLfVFY" role="jymVt" />
    <node concept="3Tm1VV" id="6$jH9oLfVBN" role="1B3o_S" />
    <node concept="3uibUv" id="6$jH9oLfVC3" role="1zkMxy">
      <ref role="3uigEE" to="tqye:1R$Cm9qIi2j" resolve="AstBuilder" />
    </node>
  </node>
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
                <node concept="1ojpPn" id="1pt0VTMwg2D" role="1KAndV">
                  <property role="TrG5h" value="node1" />
                </node>
                <node concept="1oi5Wm" id="1pt0VTMwg2E" role="1ojpOf">
                  <property role="TrG5h" value="concept" />
                  <property role="1oi5Z2" value="single" />
                  <node concept="1oi5XN" id="1pt0VTMwg2F" role="1oi5zu">
                    <property role="1oi5yK" value="ClassifierType" />
                    <node concept="1ojpPn" id="5lJXKC5eA" role="1KAndV" />
                  </node>
                </node>
                <node concept="1oi5Wm" id="1pt0VTMwg2G" role="1ojpOf">
                  <property role="TrG5h" value="cls" />
                  <property role="1oi5Z2" value="single" />
                  <node concept="1oi5XN" id="1pt0VTMwg2H" role="1oi5zu">
                    <property role="1oi5yK" value="Map" />
                    <node concept="1ojpPn" id="5lJXKC5dF" role="1KAndV" />
                  </node>
                </node>
                <node concept="1oi5ST" id="1pt0VTMwg2I" role="1ojpOf">
                  <property role="TrG5h" value="param" />
                  <property role="1oi5Z2" value="multiple" />
                  <node concept="1$XVwq" id="1pt0VTMFKy6" role="1oi5TL">
                    <property role="TrG5h" value="FIRST" />
                    <node concept="1ojpPn" id="1pt0VTMFKy9" role="1KAndV" />
                  </node>
                  <node concept="1oi5UN" id="1pt0VTMxWaE" role="1oi5TL">
                    <node concept="1oi5Wm" id="1pt0VTMxWaF" role="1ojpOf">
                      <property role="TrG5h" value="concept" />
                      <node concept="1oi5XN" id="1pt0VTMxWaG" role="1oi5zu">
                        <property role="1oi5yK" value="ClassifierType" />
                        <node concept="1ojpPn" id="5lJXKC5eQ" role="1KAndV" />
                      </node>
                    </node>
                    <node concept="1oi5Wm" id="1pt0VTMxWaH" role="1ojpOf">
                      <property role="TrG5h" value="cls" />
                      <node concept="1oi5XN" id="1pt0VTMxWaI" role="1oi5zu">
                        <property role="1oi5yK" value="Map" />
                        <node concept="1ojpPn" id="5lJXKC5gg" role="1KAndV" />
                      </node>
                    </node>
                    <node concept="1ojpPn" id="1pt0VTMxWaJ" role="1KAndV">
                      <property role="TrG5h" value="node3" />
                    </node>
                    <node concept="1oi5ST" id="1bm7a6FkZZ7" role="1ojpOf">
                      <property role="TrG5h" value="param" />
                      <property role="1oi5Z2" value="multiple" />
                      <node concept="1oi5UN" id="1bm7a6Fl0le" role="1oi5TL">
                        <node concept="1ojpPn" id="1bm7a6Fl0lh" role="1KAndV" />
                        <node concept="1oi5Wm" id="1bm7a6Fl0wN" role="1ojpOf">
                          <property role="TrG5h" value="concept" />
                          <node concept="1oi5XN" id="1bm7a6Fl0Im" role="1oi5zu">
                            <property role="1oi5yK" value="ClassifierType" />
                            <node concept="1ojpPn" id="5lJXKC5es" role="1KAndV" />
                          </node>
                        </node>
                        <node concept="1oi5Wm" id="1bm7a6Fl2Ex" role="1ojpOf">
                          <property role="TrG5h" value="cls" />
                          <node concept="1oi5XN" id="1bm7a6Fl2Io" role="1oi5zu">
                            <property role="1oi5yK" value="Integer" />
                            <node concept="1ojpPn" id="5lJXKC5d_" role="1KAndV" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="1bm7a6Fl2vn" role="1oi5TL">
                        <node concept="1ojpPn" id="1bm7a6Fl2vo" role="1KAndV" />
                        <node concept="1oi5Wm" id="1bm7a6Fl2vp" role="1ojpOf">
                          <property role="TrG5h" value="concept" />
                          <node concept="1oi5XN" id="1bm7a6Fl2vq" role="1oi5zu">
                            <property role="1oi5yK" value="ClassifierType" />
                            <node concept="1ojpPn" id="5lJXKC5eM" role="1KAndV" />
                          </node>
                        </node>
                        <node concept="1oi5Wm" id="1bm7a6Fl2N3" role="1ojpOf">
                          <property role="TrG5h" value="cls" />
                          <node concept="1oi5XN" id="1bm7a6Fl2ON" role="1oi5zu">
                            <property role="1oi5yK" value="String" />
                            <node concept="1ojpPn" id="5lJXKC5dz" role="1KAndV" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1$XVwq" id="1pt0VTMIn10" role="1oi5TL">
                    <property role="TrG5h" value="THIRD" />
                    <node concept="1ojpPn" id="1pt0VTMIn11" role="1KAndV" />
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
                <node concept="1ojpPn" id="1pt0VTMEUH9" role="1KAndV">
                  <property role="TrG5h" value="node1" />
                </node>
                <node concept="1oi5Wm" id="1pt0VTMEUHa" role="1ojpOf">
                  <property role="TrG5h" value="concept" />
                  <property role="1oi5Z2" value="single" />
                  <node concept="3a18CM" id="5iubxWjkAbK" role="1oi5zu">
                    <node concept="Xl_RD" id="5iubxWjkAeB" role="3a19qo">
                      <property role="Xl_RC" value="BAR" />
                    </node>
                    <node concept="1ojpPn" id="5iubxWjkAbS" role="1KAndV" />
                  </node>
                </node>
                <node concept="1oi5Wm" id="1pt0VTMEUHc" role="1ojpOf">
                  <property role="TrG5h" value="cls" />
                  <property role="1oi5Z2" value="single" />
                  <node concept="1$XVwq" id="5iubxWjksNB" role="1oi5zu">
                    <property role="TrG5h" value="FOO" />
                    <node concept="1ojpPn" id="5iubxWjksNE" role="1KAndV" />
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
                        <node concept="1ojpPn" id="5lJXKC5ec" role="1KAndV" />
                      </node>
                    </node>
                    <node concept="1oi5Wm" id="1pt0VTMEUHi" role="1ojpOf">
                      <property role="TrG5h" value="cls" />
                      <node concept="1oi5XN" id="1pt0VTMEUHj" role="1oi5zu">
                        <property role="1oi5yK" value="String" />
                        <node concept="1ojpPn" id="5lJXKC5dB" role="1KAndV" />
                      </node>
                    </node>
                    <node concept="1ojpPn" id="1pt0VTMEUHk" role="1KAndV">
                      <property role="TrG5h" value="node2" />
                    </node>
                  </node>
                  <node concept="1$XVwq" id="1pt0VTMEURr" role="1oi5TL">
                    <property role="TrG5h" value="SECOND" />
                    <node concept="1ojpPn" id="1pt0VTMEURu" role="1KAndV" />
                  </node>
                  <node concept="1oi5UN" id="1pt0VTMIoSx" role="1oi5TL">
                    <node concept="1oi5Wm" id="1pt0VTMIoSy" role="1ojpOf">
                      <property role="TrG5h" value="concept" />
                      <node concept="1oi5XN" id="1pt0VTMIoSz" role="1oi5zu">
                        <property role="1oi5yK" value="ClassifierType" />
                        <node concept="1ojpPn" id="5lJXKC5eK" role="1KAndV" />
                      </node>
                    </node>
                    <node concept="1oi5Wm" id="1pt0VTMIoS$" role="1ojpOf">
                      <property role="TrG5h" value="cls" />
                      <node concept="1oi5XN" id="1pt0VTMIoS_" role="1oi5zu">
                        <property role="1oi5yK" value="Long" />
                        <node concept="1ojpPn" id="5lJXKC5eC" role="1KAndV" />
                      </node>
                    </node>
                    <node concept="1ojpPn" id="1pt0VTMIoSA" role="1KAndV">
                      <property role="TrG5h" value="node3" />
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
                  <node concept="1ojpPn" id="5lJXKtbeE" role="1KAndV" />
                  <node concept="1oi5Wm" id="5lJXKtbeF" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="5lJXKtbeG" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                      <node concept="1ojpPn" id="5lJXKC5ew" role="1KAndV" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="5lJXKtbeH" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="5lJXKtbeI" role="1oi5zu">
                      <property role="1oi5yK" value="String" />
                      <node concept="1ojpPn" id="5lJXKC5ek" role="1KAndV" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1oi5Wm" id="5lJXKtbeJ" role="1ojpOf">
                <property role="TrG5h" value="concept" />
                <node concept="1oi5XN" id="5lJXKtbeK" role="1oi5zu">
                  <property role="1oi5yK" value="ClassifierType" />
                  <node concept="1ojpPn" id="5lJXKC5dD" role="1KAndV" />
                </node>
              </node>
              <node concept="1oi5Wm" id="5lJXKtbeL" role="1ojpOf">
                <property role="TrG5h" value="classifier" />
                <node concept="1oi5XN" id="5lJXKtbeM" role="1oi5zu">
                  <property role="1oi5yK" value="Bar" />
                  <node concept="1ojpPn" id="5lJXKC5em" role="1KAndV" />
                </node>
              </node>
              <node concept="1ojpPn" id="5lJXKtbeN" role="1KAndV" />
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
                      <node concept="1ojpPn" id="5lJXKtbeZ" role="1KAndV" />
                      <node concept="1oi5Wm" id="5lJXKtbf0" role="1ojpOf">
                        <property role="TrG5h" value="concept" />
                        <node concept="1oi5XN" id="5lJXKtbf1" role="1oi5zu">
                          <property role="1oi5yK" value="ClassifierType" />
                          <node concept="1ojpPn" id="5lJXKC5e8" role="1KAndV" />
                        </node>
                      </node>
                      <node concept="1oi5Wm" id="5lJXKtbf2" role="1ojpOf">
                        <property role="TrG5h" value="classifier" />
                        <node concept="1oi5XN" id="5lJXKtbf3" role="1oi5zu">
                          <property role="1oi5yK" value="Foo" />
                          <node concept="1ojpPn" id="5lJXKC5eu" role="1KAndV" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1ojpPn" id="5lJXKtbf4" role="1KAndV" />
                  <node concept="1oi5Wm" id="5lJXKtbf5" role="1ojpOf">
                    <property role="TrG5h" value="concept" />
                    <node concept="1oi5XN" id="5lJXKtbf6" role="1oi5zu">
                      <property role="1oi5yK" value="ClassifierType" />
                      <node concept="1ojpPn" id="5lJXKC5ee" role="1KAndV" />
                    </node>
                  </node>
                  <node concept="1oi5Wm" id="5lJXKtbf7" role="1ojpOf">
                    <property role="TrG5h" value="classifier" />
                    <node concept="1oi5XN" id="5lJXKtbf8" role="1oi5zu">
                      <property role="1oi5yK" value="Integer" />
                      <node concept="1ojpPn" id="5lJXKC5eO" role="1KAndV" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1ojpPn" id="5lJXKtbf9" role="1KAndV" />
              <node concept="1oi5Wm" id="5lJXKtbfa" role="1ojpOf">
                <property role="TrG5h" value="concept" />
                <node concept="1oi5XN" id="5lJXKtbfb" role="1oi5zu">
                  <property role="1oi5yK" value="ClassifierType" />
                  <node concept="1ojpPn" id="5lJXKC5ei" role="1KAndV" />
                </node>
              </node>
              <node concept="1oi5Wm" id="5lJXKtbfc" role="1ojpOf">
                <property role="TrG5h" value="classifier" />
                <node concept="1oi5XN" id="5lJXKtbfd" role="1oi5zu">
                  <property role="1oi5yK" value="Bar" />
                  <node concept="1ojpPn" id="5lJXKC5eE" role="1KAndV" />
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
              <node concept="1ojpPn" id="5lJXKtbfn" role="1KAndV" />
              <node concept="1oi5Wm" id="5lJXKtbfo" role="1ojpOf">
                <property role="TrG5h" value="concept" />
                <node concept="1oi5XN" id="5lJXKtbfp" role="1oi5zu">
                  <property role="1oi5yK" value="ClassifierType" />
                  <node concept="1ojpPn" id="5lJXKC5e$" role="1KAndV" />
                </node>
              </node>
              <node concept="1oi5Wm" id="5lJXKtbfq" role="1ojpOf">
                <property role="TrG5h" value="classifier" />
                <node concept="1oi5XN" id="5lJXKtbfr" role="1oi5zu">
                  <property role="1oi5yK" value="Bar" />
                  <node concept="1ojpPn" id="5lJXKC5eI" role="1KAndV" />
                </node>
              </node>
              <node concept="1oi5ST" id="5lJXKtbfs" role="1ojpOf">
                <property role="TrG5h" value="parameter" />
                <property role="1oi5Z2" value="multiple" />
                <node concept="3a18CM" id="5lJXKtbft" role="1oi5TL">
                  <node concept="2OqwBi" id="5lJXKtbfu" role="3a19qo">
                    <node concept="37vLTw" id="5lJXKtbfv" role="2Oq$k0">
                      <ref role="3cqZAo" node="5lJXKtbfh" resolve="T" />
                    </node>
                    <node concept="liA8E" id="5lJXKtbfw" role="2OqNvi">
                      <ref role="37wK5l" to="w2rx:~Logical.getName():java.lang.String" resolve="getName" />
                    </node>
                  </node>
                  <node concept="1ojpPn" id="5lJXKtbfx" role="1KAndV" />
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
              <node concept="1ojpPn" id="5lJXKtbfD" role="1KAndV" />
              <node concept="1oi5Wm" id="5lJXKtbfE" role="1ojpOf">
                <property role="TrG5h" value="concept" />
                <node concept="1oi5XN" id="5lJXKtbfF" role="1oi5zu">
                  <property role="1oi5yK" value="ClassifierType" />
                  <node concept="1ojpPn" id="5lJXKC5eG" role="1KAndV" />
                </node>
              </node>
              <node concept="1oi5Wm" id="5lJXKtbfG" role="1ojpOf">
                <property role="TrG5h" value="classifier" />
                <node concept="1oi5XN" id="5lJXKtbfH" role="1oi5zu">
                  <property role="1oi5yK" value="String" />
                  <node concept="1ojpPn" id="5lJXKC5ey" role="1KAndV" />
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
  <node concept="312cEu" id="5lJXKyLj6">
    <property role="TrG5h" value="SubstitutionTest" />
    <node concept="2tJIrI" id="5lJXKyLwf" role="jymVt" />
    <node concept="2YIFZL" id="5lJXKyLxa" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="37vLTG" id="5lJXKyLxb" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="5lJXKyLxc" role="1tU5fm">
          <node concept="17QB3L" id="5lJXKyLxd" role="10Q1$1" />
        </node>
      </node>
      <node concept="3cqZAl" id="5lJXKyLxe" role="3clF45" />
      <node concept="3Tm1VV" id="5lJXKyLxf" role="1B3o_S" />
      <node concept="3clFbS" id="5lJXKyLxg" role="3clF47">
        <node concept="3clFbH" id="5lJXKyOdF" role="3cqZAp" />
        <node concept="3clFbH" id="5lJXKAoQq" role="3cqZAp" />
        <node concept="3cpWs8" id="5lJXKyR3d" role="3cqZAp">
          <node concept="3cpWsn" id="5lJXKyR3e" role="3cpWs9">
            <property role="TrG5h" value="t1" />
            <node concept="3uibUv" id="5lJXKyR38" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="2YIFZM" id="5lJXKyR3f" role="33vP2m">
              <ref role="37wK5l" to="ie8e:5JQSuNsxMa3" resolve="tree" />
              <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
              <node concept="2YIFZM" id="5lJXKyR3g" role="37wK5m">
                <ref role="37wK5l" to="tqye:1R$Cm9qHxAg" resolve="node" />
                <ref role="1Pybhc" to="tqye:1R$Cm9qIi2j" resolve="AstBuilder" />
                <node concept="2YIFZM" id="5lJXKyR3h" role="37wK5m">
                  <ref role="37wK5l" to="ie8e:5JQSuNsx4I5" resolve="value" />
                  <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                  <node concept="Xl_RD" id="5lJXKyR3i" role="37wK5m">
                    <property role="Xl_RC" value="val" />
                  </node>
                  <node concept="Xl_RD" id="5lJXKzFJz" role="37wK5m">
                    <property role="Xl_RC" value="TestValue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5lJXKyT13" role="3cqZAp" />
        <node concept="3cpWs8" id="5lJXKzL1I" role="3cqZAp">
          <node concept="3cpWsn" id="5lJXKzL1J" role="3cpWs9">
            <property role="TrG5h" value="t2" />
            <node concept="3uibUv" id="5lJXKzL1G" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="2YIFZM" id="5lJXKzL1K" role="33vP2m">
              <ref role="37wK5l" to="ie8e:5JQSuNsxMa3" resolve="tree" />
              <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
              <node concept="2YIFZM" id="5lJXKzL1L" role="37wK5m">
                <ref role="37wK5l" to="tqye:1R$Cm9qHxAg" resolve="node" />
                <ref role="1Pybhc" to="tqye:1R$Cm9qIi2j" resolve="AstBuilder" />
                <node concept="2YIFZM" id="5lJXK_AsQ" role="37wK5m">
                  <ref role="37wK5l" to="ie8e:uNmovXjpCg" resolve="variable" />
                  <ref role="1Pybhc" to="ie8e:5JQSuNsx4Gq" resolve="Builder" />
                  <node concept="Xl_RD" id="5lJXK_AsR" role="37wK5m">
                    <property role="Xl_RC" value="val" />
                  </node>
                  <node concept="Xl_RD" id="5lJXK_AsS" role="37wK5m">
                    <property role="Xl_RC" value="X" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5lJXK$$M5" role="3cqZAp" />
        <node concept="3cpWs8" id="5lJXKzRuB" role="3cqZAp">
          <node concept="3cpWsn" id="5lJXKzRuC" role="3cpWs9">
            <property role="TrG5h" value="subs" />
            <node concept="3uibUv" id="5lJXKzRud" role="1tU5fm">
              <ref role="3uigEE" to="jfki:~Substitution" resolve="Substitution" />
            </node>
            <node concept="2YIFZM" id="5lJXKzRuD" role="33vP2m">
              <ref role="37wK5l" to="jfki:~Unification.unify(Node,Node)" resolve="unify" />
              <ref role="1Pybhc" to="jfki:~Unification" resolve="Unification" />
              <node concept="2OqwBi" id="5lJXKzVq9" role="37wK5m">
                <node concept="37vLTw" id="5lJXKzRuE" role="2Oq$k0">
                  <ref role="3cqZAo" node="5lJXKyR3e" resolve="t1" />
                </node>
                <node concept="liA8E" id="5lJXKzVtu" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                </node>
              </node>
              <node concept="2OqwBi" id="5lJXKzV_r" role="37wK5m">
                <node concept="37vLTw" id="5lJXKzRuF" role="2Oq$k0">
                  <ref role="3cqZAo" node="5lJXKzL1J" resolve="t2" />
                </node>
                <node concept="liA8E" id="5lJXKzVFC" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5lJXKzTlE" role="3cqZAp" />
        <node concept="3clFbF" id="5lJXKzUg$" role="3cqZAp">
          <node concept="2OqwBi" id="5lJXKzUgw" role="3clFbG">
            <node concept="10M0yZ" id="5lJXKzUgx" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="5lJXKzUgy" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="5lJXKzWgn" role="37wK5m">
                <node concept="2OqwBi" id="5lJXKzWr3" role="3uHU7w">
                  <node concept="37vLTw" id="5lJXKzWil" role="2Oq$k0">
                    <ref role="3cqZAo" node="5lJXKzRuC" resolve="subs" />
                  </node>
                  <node concept="liA8E" id="5lJXKzWup" role="2OqNvi">
                    <ref role="37wK5l" to="jfki:~Substitution.isSuccessful()" resolve="isSuccessful" />
                  </node>
                </node>
                <node concept="Xl_RD" id="5lJXKzUgz" role="3uHU7B">
                  <property role="Xl_RC" value="&gt; success=" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5lJXK$2lF" role="3cqZAp" />
        <node concept="1DcWWT" id="5lJXK$541" role="3cqZAp">
          <node concept="3clFbS" id="5lJXK$542" role="2LFqv$">
            <node concept="3clFbF" id="5lJXK$6lm" role="3cqZAp">
              <node concept="2OqwBi" id="5lJXK$6li" role="3clFbG">
                <node concept="10M0yZ" id="5lJXK$6lj" role="2Oq$k0">
                  <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
                  <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
                </node>
                <node concept="liA8E" id="5lJXK$6lk" role="2OqNvi">
                  <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
                  <node concept="3cpWs3" id="5lJXK$7qO" role="37wK5m">
                    <node concept="2OqwBi" id="5lJXK$7Ks" role="3uHU7w">
                      <node concept="37vLTw" id="5lJXK$7GN" role="2Oq$k0">
                        <ref role="3cqZAo" node="5lJXK$545" resolve="b" />
                      </node>
                      <node concept="liA8E" id="5lJXK$7V5" role="2OqNvi">
                        <ref role="37wK5l" to="jfki:~Substitution.Binding.node()" resolve="node" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="5lJXK$6Uf" role="3uHU7B">
                      <node concept="3cpWs3" id="5lJXK$6xR" role="3uHU7B">
                        <node concept="Xl_RD" id="5lJXK$6ll" role="3uHU7B">
                          <property role="Xl_RC" value="&gt; " />
                        </node>
                        <node concept="2OqwBi" id="5lJXK$6BP" role="3uHU7w">
                          <node concept="37vLTw" id="5lJXK$6$E" role="2Oq$k0">
                            <ref role="3cqZAo" node="5lJXK$545" resolve="b" />
                          </node>
                          <node concept="liA8E" id="5lJXK$6FK" role="2OqNvi">
                            <ref role="37wK5l" to="jfki:~Substitution.Binding.var()" resolve="var" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="5lJXK$7bB" role="3uHU7w">
                        <property role="Xl_RC" value=" = " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5lJXK$545" role="1Duv9x">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="5lJXK$549" role="1tU5fm">
              <ref role="3uigEE" to="jfki:~Substitution.Binding" resolve="Substitution.Binding" />
            </node>
          </node>
          <node concept="2OqwBi" id="5lJXK$54a" role="1DdaDG">
            <node concept="37vLTw" id="5lJXK$54b" role="2Oq$k0">
              <ref role="3cqZAo" node="5lJXKzRuC" resolve="subs" />
            </node>
            <node concept="liA8E" id="5lJXK$54c" role="2OqNvi">
              <ref role="37wK5l" to="jfki:~Substitution.bindings()" resolve="bindings" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5lJXKyQ$d" role="3cqZAp" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5lJXKyLj7" role="1B3o_S" />
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
                <node concept="1ojpPn" id="47nvOnTXstf" role="1KAndV">
                  <property role="TrG5h" value="node1" />
                </node>
                <node concept="1oi5Wm" id="47nvOnTXstg" role="1ojpOf">
                  <property role="TrG5h" value="concept" />
                  <property role="1oi5Z2" value="single" />
                  <node concept="1oi5XN" id="47nvOnTXsth" role="1oi5zu">
                    <property role="1oi5yK" value="ClassifierType" />
                    <node concept="1ojpPn" id="47nvOnTXsti" role="1KAndV" />
                  </node>
                </node>
                <node concept="1oi5Wm" id="47nvOnTXstj" role="1ojpOf">
                  <property role="TrG5h" value="classifier" />
                  <property role="1oi5Z2" value="single" />
                  <node concept="1oi5XN" id="47nvOnTXstk" role="1oi5zu">
                    <property role="1oi5yK" value="List" />
                    <node concept="1ojpPn" id="47nvOnTXstl" role="1KAndV" />
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
                        <node concept="1ojpPn" id="47nvOnTXstq" role="1KAndV" />
                      </node>
                    </node>
                    <node concept="1oi5Wm" id="47nvOnTXstr" role="1ojpOf">
                      <property role="TrG5h" value="classifier" />
                      <node concept="1oi5XN" id="47nvOnTXsts" role="1oi5zu">
                        <property role="1oi5yK" value="String" />
                        <node concept="1ojpPn" id="47nvOnTXstt" role="1KAndV" />
                      </node>
                    </node>
                    <node concept="1ojpPn" id="47nvOnTXstu" role="1KAndV">
                      <property role="TrG5h" value="node3" />
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
                <node concept="1ojpPn" id="47nvOnU4vhx" role="1KAndV">
                  <property role="TrG5h" value="node1" />
                </node>
                <node concept="1oi5Wm" id="47nvOnU4vhy" role="1ojpOf">
                  <property role="TrG5h" value="concept" />
                  <property role="1oi5Z2" value="single" />
                  <node concept="1oi5XN" id="47nvOnU4vhz" role="1oi5zu">
                    <property role="1oi5yK" value="FunctionType" />
                    <node concept="1ojpPn" id="47nvOnU4vh$" role="1KAndV" />
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
                        <node concept="1ojpPn" id="47nvOnU4vhD" role="1KAndV" />
                      </node>
                    </node>
                    <node concept="1oi5Wm" id="47nvOnU4vhE" role="1ojpOf">
                      <property role="TrG5h" value="classifier" />
                      <node concept="1oi5XN" id="47nvOnU4vhF" role="1oi5zu">
                        <property role="1oi5yK" value="String" />
                        <node concept="1ojpPn" id="47nvOnU4vhG" role="1KAndV" />
                      </node>
                    </node>
                    <node concept="1ojpPn" id="47nvOnU4vhH" role="1KAndV">
                      <property role="TrG5h" value="node3" />
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
                        <node concept="1ojpPn" id="47nvOnU4vhM" role="1KAndV" />
                      </node>
                    </node>
                    <node concept="1oi5Wm" id="47nvOnU4vhN" role="1ojpOf">
                      <property role="TrG5h" value="classifier" />
                      <node concept="1oi5XN" id="47nvOnU4vhO" role="1oi5zu">
                        <property role="1oi5yK" value="Integer" />
                        <node concept="1ojpPn" id="47nvOnU4vhP" role="1KAndV" />
                      </node>
                    </node>
                    <node concept="1ojpPn" id="47nvOnU4vhQ" role="1KAndV">
                      <property role="TrG5h" value="node3" />
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
                    <property role="TrG5h" value="walkValue" />
                    <node concept="3uibUv" id="3OPtF03iTXe" role="3clF45">
                      <ref role="3uigEE" to="ie8e:3JgCwkqiP3j" resolve="TreeWalk.Action" />
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
                          <ref role="1Px2BO" to="ie8e:3JgCwkqiP3j" resolve="TreeWalk.Action" />
                          <ref role="Rm8GQ" to="ie8e:3JgCwkqiP3k" resolve="WALK" />
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
                      <ref role="3uigEE" to="ie8e:3JgCwkqiP3j" resolve="TreeWalk.Action" />
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
                          <ref role="3uigEE" to="ie8e:1msb0mq9ID4" resolve="Branch" />
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
                          <ref role="1Px2BO" to="ie8e:3JgCwkqiP3j" resolve="TreeWalk.Action" />
                          <ref role="Rm8GQ" to="ie8e:3JgCwkqiP3k" resolve="WALK" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3OPtF03j9ls" role="2AJF6D">
                      <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="3OPtF03j2k2" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="walkVariable" />
                    <node concept="3uibUv" id="3OPtF03j2k3" role="3clF45">
                      <ref role="3uigEE" to="ie8e:3JgCwkqiP3j" resolve="TreeWalk.Action" />
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
                          <ref role="1Px2BO" to="ie8e:3JgCwkqiP3j" resolve="TreeWalk.Action" />
                          <ref role="Rm8GQ" to="ie8e:3JgCwkqiP3k" resolve="WALK" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3OPtF03j9YY" role="2AJF6D">
                      <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="3OPtF03j4fE" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="walkList" />
                    <node concept="3uibUv" id="3OPtF03j4fF" role="3clF45">
                      <ref role="3uigEE" to="ie8e:3JgCwkqiP3j" resolve="TreeWalk.Action" />
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
                          <ref role="Rm8GQ" to="ie8e:3JgCwkqiP3k" resolve="WALK" />
                          <ref role="1Px2BO" to="ie8e:3JgCwkqiP3j" resolve="TreeWalk.Action" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3OPtF03jap7" role="2AJF6D">
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
                        <node concept="1ojpPn" id="3AEuFq_Oyuk" role="1KAndV" />
                        <node concept="1oi5Wm" id="3AEuFq_Oyul" role="1ojpOf">
                          <property role="TrG5h" value="concept" />
                          <node concept="1oi5XN" id="3AEuFq_Oyum" role="1oi5zu">
                            <property role="1oi5yK" value="ClassifierType" />
                            <node concept="1ojpPn" id="3AEuFq_Oyun" role="1KAndV" />
                          </node>
                        </node>
                        <node concept="1oi5Wm" id="3AEuFq_Oyuo" role="1ojpOf">
                          <property role="TrG5h" value="classifier" />
                          <node concept="1oi5XN" id="3AEuFq_Oyup" role="1oi5zu">
                            <property role="1oi5yK" value="String" />
                            <node concept="1ojpPn" id="3AEuFq_Oyuq" role="1KAndV" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1ojpPn" id="3AEuFq_Oyur" role="1KAndV" />
                    <node concept="1oi5Wm" id="3AEuFq_Oyus" role="1ojpOf">
                      <property role="TrG5h" value="concept" />
                      <node concept="1oi5XN" id="3AEuFq_Oyut" role="1oi5zu">
                        <property role="1oi5yK" value="ClassifierType" />
                        <node concept="1ojpPn" id="3AEuFq_Oyuu" role="1KAndV" />
                      </node>
                    </node>
                    <node concept="1oi5Wm" id="3AEuFq_Oyuv" role="1ojpOf">
                      <property role="TrG5h" value="classifier" />
                      <node concept="1oi5XN" id="3AEuFq_Oyuw" role="1oi5zu">
                        <property role="1oi5yK" value="List" />
                        <node concept="1ojpPn" id="3AEuFq_Oyux" role="1KAndV" />
                      </node>
                    </node>
                  </node>
                  <node concept="1oi5UN" id="3AEuFq_Oyuy" role="1oi5TL">
                    <node concept="1oi5ST" id="3AEuFq_Oyuz" role="1ojpOf">
                      <property role="TrG5h" value="parameter" />
                      <property role="1oi5Z2" value="multiple" />
                      <node concept="1oi5UN" id="3AEuFq_Oyu$" role="1oi5TL">
                        <node concept="1ojpPn" id="3AEuFq_Oyu_" role="1KAndV" />
                        <node concept="1oi5Wm" id="3AEuFq_OyuA" role="1ojpOf">
                          <property role="TrG5h" value="concept" />
                          <node concept="1oi5XN" id="3AEuFq_OyuB" role="1oi5zu">
                            <property role="1oi5yK" value="ClassifierType" />
                            <node concept="1ojpPn" id="3AEuFq_OyuC" role="1KAndV" />
                          </node>
                        </node>
                        <node concept="1oi5Wm" id="3AEuFq_OyuD" role="1ojpOf">
                          <property role="TrG5h" value="classifier" />
                          <node concept="1oi5XN" id="3AEuFq_OyuE" role="1oi5zu">
                            <property role="1oi5yK" value="String" />
                            <node concept="1ojpPn" id="3AEuFq_OyuF" role="1KAndV" />
                          </node>
                        </node>
                      </node>
                      <node concept="1oi5UN" id="3AEuFq_OyuG" role="1oi5TL">
                        <node concept="1oi5ST" id="3AEuFq_OyuH" role="1ojpOf">
                          <property role="TrG5h" value="parameter" />
                          <property role="1oi5Z2" value="multiple" />
                          <node concept="1oi5UN" id="3AEuFq_OyuI" role="1oi5TL">
                            <node concept="1ojpPn" id="3AEuFq_OyuJ" role="1KAndV" />
                            <node concept="1oi5Wm" id="3AEuFq_OyuK" role="1ojpOf">
                              <property role="TrG5h" value="concept" />
                              <node concept="1oi5XN" id="3AEuFq_OyuL" role="1oi5zu">
                                <property role="1oi5yK" value="ClassifierType" />
                                <node concept="1ojpPn" id="3AEuFq_OyuM" role="1KAndV" />
                              </node>
                            </node>
                            <node concept="1oi5Wm" id="3AEuFq_OyuN" role="1ojpOf">
                              <property role="TrG5h" value="classifier" />
                              <node concept="1oi5XN" id="3AEuFq_OyuO" role="1oi5zu">
                                <property role="1oi5yK" value="String" />
                                <node concept="1ojpPn" id="3AEuFq_OyuP" role="1KAndV" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1ojpPn" id="3AEuFq_OyuQ" role="1KAndV" />
                        <node concept="1oi5Wm" id="3AEuFq_OyuR" role="1ojpOf">
                          <property role="TrG5h" value="concept" />
                          <node concept="1oi5XN" id="3AEuFq_OyuS" role="1oi5zu">
                            <property role="1oi5yK" value="ClassifierType" />
                            <node concept="1ojpPn" id="3AEuFq_OyuT" role="1KAndV" />
                          </node>
                        </node>
                        <node concept="1oi5Wm" id="3AEuFq_OyuU" role="1ojpOf">
                          <property role="TrG5h" value="classifier" />
                          <node concept="1oi5XN" id="3AEuFq_OyuV" role="1oi5zu">
                            <property role="1oi5yK" value="List" />
                            <node concept="1ojpPn" id="3AEuFq_OyuW" role="1KAndV" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1ojpPn" id="3AEuFq_OyuX" role="1KAndV" />
                    <node concept="1oi5Wm" id="3AEuFq_OyuY" role="1ojpOf">
                      <property role="TrG5h" value="concept" />
                      <node concept="1oi5XN" id="3AEuFq_OyuZ" role="1oi5zu">
                        <property role="1oi5yK" value="ClassifierType" />
                        <node concept="1ojpPn" id="3AEuFq_Oyv0" role="1KAndV" />
                      </node>
                    </node>
                    <node concept="1oi5Wm" id="3AEuFq_Oyv1" role="1ojpOf">
                      <property role="TrG5h" value="classifier" />
                      <node concept="1oi5XN" id="3AEuFq_Oyv2" role="1oi5zu">
                        <property role="1oi5yK" value="Map" />
                        <node concept="1ojpPn" id="3AEuFq_Oyv3" role="1KAndV" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1ojpPn" id="3AEuFq_Oyv4" role="1KAndV" />
                <node concept="1oi5Wm" id="3AEuFq_Oyv5" role="1ojpOf">
                  <property role="TrG5h" value="concept" />
                  <node concept="1oi5XN" id="3AEuFq_Oyv6" role="1oi5zu">
                    <property role="1oi5yK" value="ClassifierType" />
                    <node concept="1ojpPn" id="3AEuFq_Oyv7" role="1KAndV" />
                  </node>
                </node>
                <node concept="1oi5Wm" id="3AEuFq_Oyv8" role="1ojpOf">
                  <property role="TrG5h" value="classifier" />
                  <node concept="1oi5XN" id="3AEuFq_Oyv9" role="1oi5zu">
                    <property role="1oi5yK" value="Pair" />
                    <node concept="1ojpPn" id="3AEuFq_Oyva" role="1KAndV" />
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
                    <node concept="1ojpPn" id="3AEuFq_Ozjt" role="1KAndV" />
                  </node>
                  <node concept="1oi5UN" id="3AEuFq_OyCf" role="1oi5TL">
                    <node concept="1oi5ST" id="3AEuFq_OyCg" role="1ojpOf">
                      <property role="TrG5h" value="parameter" />
                      <property role="1oi5Z2" value="multiple" />
                      <node concept="1oi5UN" id="3AEuFq_OyCh" role="1oi5TL">
                        <node concept="1ojpPn" id="3AEuFq_OyCi" role="1KAndV" />
                        <node concept="1oi5Wm" id="3AEuFq_OyCj" role="1ojpOf">
                          <property role="TrG5h" value="concept" />
                          <node concept="1oi5XN" id="3AEuFq_OyCk" role="1oi5zu">
                            <property role="1oi5yK" value="ClassifierType" />
                            <node concept="1ojpPn" id="3AEuFq_OyCl" role="1KAndV" />
                          </node>
                        </node>
                        <node concept="1oi5Wm" id="3AEuFq_OyCm" role="1ojpOf">
                          <property role="TrG5h" value="classifier" />
                          <node concept="1oi5XN" id="3AEuFq_OyCn" role="1oi5zu">
                            <property role="1oi5yK" value="String" />
                            <node concept="1ojpPn" id="3AEuFq_OyCo" role="1KAndV" />
                          </node>
                        </node>
                      </node>
                      <node concept="1$XVwq" id="3AEuFq_Ozr3" role="1oi5TL">
                        <property role="TrG5h" value="X" />
                        <node concept="1ojpPn" id="3AEuFq_Ozrl" role="1KAndV" />
                      </node>
                    </node>
                    <node concept="1ojpPn" id="3AEuFq_OyCE" role="1KAndV" />
                    <node concept="1oi5Wm" id="3AEuFq_OyCF" role="1ojpOf">
                      <property role="TrG5h" value="concept" />
                      <node concept="1oi5XN" id="3AEuFq_OyCG" role="1oi5zu">
                        <property role="1oi5yK" value="ClassifierType" />
                        <node concept="1ojpPn" id="3AEuFq_OyCH" role="1KAndV" />
                      </node>
                    </node>
                    <node concept="1oi5Wm" id="3AEuFq_OyCI" role="1ojpOf">
                      <property role="TrG5h" value="classifier" />
                      <node concept="1oi5XN" id="3AEuFq_OyCJ" role="1oi5zu">
                        <property role="1oi5yK" value="Map" />
                        <node concept="1ojpPn" id="3AEuFq_OyCK" role="1KAndV" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1ojpPn" id="3AEuFq_OyCL" role="1KAndV" />
                <node concept="1oi5Wm" id="3AEuFq_OyCM" role="1ojpOf">
                  <property role="TrG5h" value="concept" />
                  <node concept="1oi5XN" id="3AEuFq_OyCN" role="1oi5zu">
                    <property role="1oi5yK" value="ClassifierType" />
                    <node concept="1ojpPn" id="3AEuFq_OyCO" role="1KAndV" />
                  </node>
                </node>
                <node concept="1oi5Wm" id="3AEuFq_OyCP" role="1ojpOf">
                  <property role="TrG5h" value="classifier" />
                  <node concept="1oi5XN" id="3AEuFq_OyCQ" role="1oi5zu">
                    <property role="1oi5yK" value="Pair" />
                    <node concept="1ojpPn" id="3AEuFq_OyCR" role="1KAndV" />
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
                      <ref role="3uigEE" to="ie8e:47nvOnTQwHQ" resolve="ITreeBranch" />
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
                      <ref role="3uigEE" to="ie8e:47nvOnTQwHQ" resolve="ITreeBranch" />
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

