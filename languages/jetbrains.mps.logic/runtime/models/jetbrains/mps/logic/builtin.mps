<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="3" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.logic.atom)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="yt73" ref="7526e0cf-1ce7-46f8-a555-9eca1e06c23b/java:jetbrains.mps.unification(jetbrains.mps.unification.tree/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="eifs" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:runtime(jetbrains.mps.jchr.runtime/)" />
    <import index="45ys" ref="r:7365f7fe-12e6-4229-8901-f6dc6d5df03f(jetbrains.mps.logic.reactor.logical)" />
    <import index="qrld" ref="r:2a79c8aa-e372-4c00-8d71-5d7f3db517e4(jetbrains.mps.logic.reactor.constraint)" />
    <import index="i8dg" ref="r:e8529b97-a186-4c32-8f12-771b2a92b55a(jetbrains.mps.logic.reactor.rule)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
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
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
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
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="5JTOzCR38s8">
    <property role="TrG5h" value="LogicalFactory" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="5JTOzCR38Xf" role="jymVt" />
    <node concept="2tJIrI" id="5JTOzCR3f25" role="jymVt" />
    <node concept="Wx3nA" id="5JTOzCR38We" role="jymVt">
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="INSTANCE" />
      <node concept="3uibUv" id="5JTOzCR38Wb" role="1tU5fm">
        <ref role="3uigEE" node="5JTOzCR38s8" resolve="LogicalFactory" />
      </node>
      <node concept="2ShNRf" id="5JTOzCR3f3_" role="33vP2m">
        <node concept="YeOm9" id="5JTOzCR3hYy" role="2ShVmc">
          <node concept="1Y3b0j" id="5JTOzCR3hY_" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="5JTOzCR38s8" resolve="LogicalFactory" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="2tJIrI" id="5JTOzCR3zrP" role="jymVt" />
            <node concept="3Tm1VV" id="5JTOzCR3hYA" role="1B3o_S" />
            <node concept="3clFb_" id="5JTOzCR3hYB" role="jymVt">
              <property role="TrG5h" value="unbound" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="5JTOzCR3hYC" role="3clF46">
                <property role="TrG5h" value="cls" />
                <node concept="3uibUv" id="5JTOzCR3hYD" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                  <node concept="16syzq" id="5JTOzCR3hYE" role="11_B2D">
                    <ref role="16sUi3" node="5JTOzCR3hYI" resolve="T" />
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="5JTOzCR3pAY" role="3clF46">
                <property role="TrG5h" value="name" />
                <node concept="17QB3L" id="5JTOzCR3pYY" role="1tU5fm" />
              </node>
              <node concept="16syzq" id="5JTOzCR3hYF" role="3clF45">
                <ref role="16sUi3" node="5JTOzCR3hYI" resolve="T" />
              </node>
              <node concept="3Tm1VV" id="5JTOzCR3hYG" role="1B3o_S" />
              <node concept="16euLQ" id="5JTOzCR3hYI" role="16eVyc">
                <property role="TrG5h" value="T" />
                <node concept="3uibUv" id="5JTOzCR3hYJ" role="3ztrMU">
                  <ref role="3uigEE" node="qubcdt1pkm" resolve="ILogicalExt" />
                  <node concept="3qTvmN" id="5JTOzCR3y8e" role="11_B2D" />
                </node>
              </node>
              <node concept="3clFbS" id="5JTOzCR3hYK" role="3clF47">
                <node concept="3SKdUt" id="5JTOzCR3i5t" role="3cqZAp">
                  <node concept="3SKdUq" id="5JTOzCR3i5w" role="3SKWNk">
                    <property role="3SKdUp" value="TODO: inversion of control" />
                  </node>
                </node>
                <node concept="3clFbJ" id="5JTOzCR3i6e" role="3cqZAp">
                  <node concept="3clFbS" id="5JTOzCR3i6g" role="3clFbx">
                    <node concept="3cpWs6" id="5JTOzCR3kmJ" role="3cqZAp">
                      <node concept="10QFUN" id="5JTOzCR3CaO" role="3cqZAk">
                        <node concept="16syzq" id="5JTOzCR3CaK" role="10QFUM">
                          <ref role="16sUi3" node="5JTOzCR3hYI" resolve="T" />
                        </node>
                        <node concept="2ShNRf" id="5JTOzCR3CaL" role="10QFUP">
                          <node concept="1pGfFk" id="5JTOzCR3CaM" role="2ShVmc">
                            <ref role="37wK5l" to="oy3s:1GDBwhEEL82" resolve="AtomLogical" />
                            <node concept="37vLTw" id="5JTOzCR3CaN" role="37wK5m">
                              <ref role="3cqZAo" node="5JTOzCR3pAY" resolve="name" />
                            </node>
                            <node concept="10Nm6u" id="677NV56dDLb" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5JTOzCR3iLm" role="3clFbw">
                    <node concept="3VsKOn" id="5JTOzCR3i7T" role="2Oq$k0">
                      <ref role="3VsUkX" node="dfChU1jXdE" resolve="IAtomLogical" />
                    </node>
                    <node concept="liA8E" id="5JTOzCR3jU4" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                      <node concept="37vLTw" id="5JTOzCR3k3o" role="37wK5m">
                        <ref role="3cqZAo" node="5JTOzCR3hYC" resolve="cls" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6YyAPwCQM7n" role="3cqZAp">
                  <node concept="3clFbS" id="6YyAPwCQM7p" role="3clFbx">
                    <node concept="3cpWs6" id="6YyAPwCQNMc" role="3cqZAp">
                      <node concept="10QFUN" id="6YyAPwCQPmn" role="3cqZAk">
                        <node concept="16syzq" id="6YyAPwCQPmi" role="10QFUM">
                          <ref role="16sUi3" node="5JTOzCR3hYI" resolve="T" />
                        </node>
                        <node concept="2ShNRf" id="6YyAPwCQPmj" role="10QFUP">
                          <node concept="1pGfFk" id="6YyAPwCQPmk" role="2ShVmc">
                            <ref role="37wK5l" to="oy3s:1H8E3iB8adK" resolve="StringLogical" />
                            <node concept="37vLTw" id="6YyAPwCQPml" role="37wK5m">
                              <ref role="3cqZAo" node="5JTOzCR3pAY" resolve="name" />
                            </node>
                            <node concept="10Nm6u" id="6YyAPwCQPmm" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6YyAPwCQMHd" role="3clFbw">
                    <node concept="3VsKOn" id="6YyAPwCQMhb" role="2Oq$k0">
                      <ref role="3VsUkX" node="7jC45KcfYla" resolve="IStringLogical" />
                    </node>
                    <node concept="liA8E" id="6YyAPwCQNAs" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                      <node concept="37vLTw" id="6YyAPwCQNG9" role="37wK5m">
                        <ref role="3cqZAo" node="5JTOzCR3hYC" resolve="cls" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6YyAPwCQCsC" role="3cqZAp" />
                <node concept="YS8fn" id="5JTOzCR3rqm" role="3cqZAp">
                  <node concept="2ShNRf" id="5JTOzCR3rOQ" role="YScLw">
                    <node concept="1pGfFk" id="5JTOzCR3slq" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="5JTOzCR3G89" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="677NV56dyNm" role="jymVt" />
            <node concept="3clFb_" id="6YyAPwCTS4Q" role="jymVt">
              <property role="TrG5h" value="bound" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="6YyAPwCTS4R" role="3clF46">
                <property role="TrG5h" value="cls" />
                <node concept="3uibUv" id="6YyAPwCTS4S" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                  <node concept="16syzq" id="6YyAPwCTS4T" role="11_B2D">
                    <ref role="16sUi3" node="6YyAPwCTS50" resolve="T" />
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="2DKqMqOqoey" role="3clF46">
                <property role="TrG5h" value="name" />
                <node concept="17QB3L" id="2DKqMqOqozn" role="1tU5fm" />
              </node>
              <node concept="37vLTG" id="6YyAPwCTS4U" role="3clF46">
                <property role="TrG5h" value="value" />
                <node concept="16syzq" id="6YyAPwCTS4V" role="1tU5fm">
                  <ref role="16sUi3" node="6YyAPwCTS4Z" resolve="V" />
                </node>
              </node>
              <node concept="16syzq" id="6YyAPwCTS4W" role="3clF45">
                <ref role="16sUi3" node="6YyAPwCTS50" resolve="T" />
              </node>
              <node concept="3Tm1VV" id="6YyAPwCTS4X" role="1B3o_S" />
              <node concept="16euLQ" id="6YyAPwCTS4Z" role="16eVyc">
                <property role="TrG5h" value="V" />
              </node>
              <node concept="16euLQ" id="6YyAPwCTS50" role="16eVyc">
                <property role="TrG5h" value="T" />
                <node concept="3uibUv" id="6YyAPwCTS51" role="3ztrMU">
                  <ref role="3uigEE" node="qubcdt1pkm" resolve="ILogicalExt" />
                  <node concept="16syzq" id="6YyAPwCTS52" role="11_B2D">
                    <ref role="16sUi3" node="6YyAPwCTS4Z" resolve="V" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6YyAPwCTS54" role="3clF47">
                <node concept="3SKdUt" id="6YyAPwCTTcu" role="3cqZAp">
                  <node concept="3SKdUq" id="6YyAPwCTTcv" role="3SKWNk">
                    <property role="3SKdUp" value="TODO: inversion of control" />
                  </node>
                </node>
                <node concept="3clFbJ" id="6YyAPwCTTcw" role="3cqZAp">
                  <node concept="3clFbS" id="6YyAPwCTTcx" role="3clFbx">
                    <node concept="3cpWs6" id="6YyAPwCTTcy" role="3cqZAp">
                      <node concept="10QFUN" id="6YyAPwCTTcz" role="3cqZAk">
                        <node concept="16syzq" id="6YyAPwCTTc$" role="10QFUM">
                          <ref role="16sUi3" node="6YyAPwCTS50" resolve="T" />
                        </node>
                        <node concept="2ShNRf" id="6YyAPwCTTc_" role="10QFUP">
                          <node concept="1pGfFk" id="6YyAPwCTTcA" role="2ShVmc">
                            <ref role="37wK5l" to="oy3s:1GDBwhEEL82" resolve="AtomLogical" />
                            <node concept="37vLTw" id="2DKqMqOqoHr" role="37wK5m">
                              <ref role="3cqZAo" node="2DKqMqOqoey" resolve="name" />
                            </node>
                            <node concept="10QFUN" id="6YyAPwCTUrF" role="37wK5m">
                              <node concept="37vLTw" id="6YyAPwCTU7F" role="10QFUP">
                                <ref role="3cqZAo" node="6YyAPwCTS4U" resolve="value" />
                              </node>
                              <node concept="3uibUv" id="6YyAPwCTUrG" role="10QFUM">
                                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6YyAPwCTTcD" role="3clFbw">
                    <node concept="3VsKOn" id="6YyAPwCTTcE" role="2Oq$k0">
                      <ref role="3VsUkX" node="dfChU1jXdE" resolve="IAtomLogical" />
                    </node>
                    <node concept="liA8E" id="6YyAPwCTTcF" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                      <node concept="37vLTw" id="6YyAPwCTTcG" role="37wK5m">
                        <ref role="3cqZAo" node="6YyAPwCTS4R" resolve="cls" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6YyAPwCTTcH" role="3cqZAp">
                  <node concept="3clFbS" id="6YyAPwCTTcI" role="3clFbx">
                    <node concept="3cpWs6" id="6YyAPwCTTcJ" role="3cqZAp">
                      <node concept="10QFUN" id="6YyAPwCTTcK" role="3cqZAk">
                        <node concept="16syzq" id="6YyAPwCTTcL" role="10QFUM">
                          <ref role="16sUi3" node="6YyAPwCTS50" resolve="T" />
                        </node>
                        <node concept="2ShNRf" id="6YyAPwCTTcM" role="10QFUP">
                          <node concept="1pGfFk" id="6YyAPwCTTcN" role="2ShVmc">
                            <ref role="37wK5l" to="oy3s:1H8E3iB8adK" resolve="StringLogical" />
                            <node concept="37vLTw" id="2DKqMqOqoWv" role="37wK5m">
                              <ref role="3cqZAo" node="2DKqMqOqoey" resolve="name" />
                            </node>
                            <node concept="10QFUN" id="6YyAPwCTVvH" role="37wK5m">
                              <node concept="37vLTw" id="6YyAPwCTVc_" role="10QFUP">
                                <ref role="3cqZAo" node="6YyAPwCTS4U" resolve="value" />
                              </node>
                              <node concept="17QB3L" id="6YyAPwCTVvI" role="10QFUM" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6YyAPwCTTcQ" role="3clFbw">
                    <node concept="3VsKOn" id="6YyAPwCTTcR" role="2Oq$k0">
                      <ref role="3VsUkX" node="7jC45KcfYla" resolve="IStringLogical" />
                    </node>
                    <node concept="liA8E" id="6YyAPwCTTcS" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                      <node concept="37vLTw" id="6YyAPwCTTcT" role="37wK5m">
                        <ref role="3cqZAo" node="6YyAPwCTS4R" resolve="cls" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6YyAPwCTTcU" role="3cqZAp" />
                <node concept="YS8fn" id="6YyAPwCTTcV" role="3cqZAp">
                  <node concept="2ShNRf" id="6YyAPwCTTcW" role="YScLw">
                    <node concept="1pGfFk" id="6YyAPwCTTcX" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="6YyAPwCTSNo" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="6YyAPwCTStx" role="jymVt" />
            <node concept="3clFb_" id="677NV56dysj" role="jymVt">
              <property role="TrG5h" value="anon" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="677NV56dysk" role="3clF46">
                <property role="TrG5h" value="cls" />
                <node concept="3uibUv" id="677NV56dysl" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                  <node concept="16syzq" id="677NV56dysm" role="11_B2D">
                    <ref role="16sUi3" node="677NV56dysq" resolve="T" />
                  </node>
                </node>
              </node>
              <node concept="16syzq" id="677NV56dysn" role="3clF45">
                <ref role="16sUi3" node="677NV56dysq" resolve="T" />
              </node>
              <node concept="3Tm1VV" id="677NV56dyso" role="1B3o_S" />
              <node concept="16euLQ" id="677NV56dysq" role="16eVyc">
                <property role="TrG5h" value="T" />
                <node concept="3uibUv" id="677NV56dysr" role="3ztrMU">
                  <ref role="3uigEE" node="qubcdt1pkm" resolve="ILogicalExt" />
                  <node concept="3qTvmN" id="677NV56dyss" role="11_B2D" />
                </node>
              </node>
              <node concept="3clFbS" id="677NV56dysu" role="3clF47">
                <node concept="3SKdUt" id="677NV56dzrc" role="3cqZAp">
                  <node concept="3SKdUq" id="677NV56dzrd" role="3SKWNk">
                    <property role="3SKdUp" value="TODO: inversion of control" />
                  </node>
                </node>
                <node concept="3clFbJ" id="677NV56dzrf" role="3cqZAp">
                  <node concept="3clFbS" id="677NV56dzrg" role="3clFbx">
                    <node concept="3cpWs6" id="677NV56dzrh" role="3cqZAp">
                      <node concept="10QFUN" id="677NV56dzri" role="3cqZAk">
                        <node concept="16syzq" id="677NV56dzrj" role="10QFUM">
                          <ref role="16sUi3" node="677NV56dysq" resolve="T" />
                        </node>
                        <node concept="2ShNRf" id="677NV56dzrk" role="10QFUP">
                          <node concept="1pGfFk" id="677NV56dzrl" role="2ShVmc">
                            <ref role="37wK5l" to="oy3s:1GDBwhEEL82" resolve="AtomLogical" />
                            <node concept="10Nm6u" id="677NV56d$LO" role="37wK5m" />
                            <node concept="10Nm6u" id="677NV56d_Ab" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="677NV56dzrn" role="3clFbw">
                    <node concept="3VsKOn" id="677NV56dzro" role="2Oq$k0">
                      <ref role="3VsUkX" node="dfChU1jXdE" resolve="IAtomLogical" />
                    </node>
                    <node concept="liA8E" id="677NV56dzrp" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                      <node concept="37vLTw" id="677NV56dzrq" role="37wK5m">
                        <ref role="3cqZAo" node="677NV56dysk" resolve="cls" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6YyAPwCQRP4" role="3cqZAp">
                  <node concept="3clFbS" id="6YyAPwCQRP5" role="3clFbx">
                    <node concept="3cpWs6" id="6YyAPwCQRP6" role="3cqZAp">
                      <node concept="10QFUN" id="6YyAPwCQRP7" role="3cqZAk">
                        <node concept="16syzq" id="6YyAPwCQRP8" role="10QFUM">
                          <ref role="16sUi3" node="677NV56dysq" resolve="T" />
                        </node>
                        <node concept="2ShNRf" id="6YyAPwCQRP9" role="10QFUP">
                          <node concept="1pGfFk" id="6YyAPwCQRPa" role="2ShVmc">
                            <ref role="37wK5l" to="oy3s:1H8E3iB8adK" resolve="StringLogical" />
                            <node concept="10Nm6u" id="6YyAPwCQUmX" role="37wK5m" />
                            <node concept="10Nm6u" id="6YyAPwCQRPc" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6YyAPwCQRPd" role="3clFbw">
                    <node concept="3VsKOn" id="6YyAPwCQRPe" role="2Oq$k0">
                      <ref role="3VsUkX" node="7jC45KcfYla" resolve="IStringLogical" />
                    </node>
                    <node concept="liA8E" id="6YyAPwCQRPf" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                      <node concept="37vLTw" id="6YyAPwCQRPg" role="37wK5m">
                        <ref role="3cqZAo" node="677NV56dysk" resolve="cls" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="677NV56dzrr" role="3cqZAp" />
                <node concept="YS8fn" id="677NV56dzrs" role="3cqZAp">
                  <node concept="2ShNRf" id="677NV56dzrt" role="YScLw">
                    <node concept="1pGfFk" id="677NV56dzru" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="677NV56dz7S" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="2DKqMqOilHi" role="jymVt" />
            <node concept="3clFb_" id="2DKqMqOildV" role="jymVt">
              <property role="TrG5h" value="wildcard" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="2DKqMqOildW" role="3clF46">
                <property role="TrG5h" value="cls" />
                <node concept="3uibUv" id="2DKqMqOildX" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                  <node concept="16syzq" id="2DKqMqOildY" role="11_B2D">
                    <ref role="16sUi3" node="2DKqMqOile1" resolve="T" />
                  </node>
                </node>
              </node>
              <node concept="16syzq" id="2DKqMqOildZ" role="3clF45">
                <ref role="16sUi3" node="2DKqMqOile1" resolve="T" />
              </node>
              <node concept="3Tm1VV" id="2DKqMqOile0" role="1B3o_S" />
              <node concept="16euLQ" id="2DKqMqOile1" role="16eVyc">
                <property role="TrG5h" value="T" />
                <node concept="3uibUv" id="2DKqMqOile2" role="3ztrMU">
                  <ref role="3uigEE" node="qubcdt1pkm" resolve="ILogicalExt" />
                  <node concept="3qTvmN" id="2DKqMqOile3" role="11_B2D" />
                </node>
              </node>
              <node concept="3clFbS" id="2DKqMqOile4" role="3clF47">
                <node concept="3SKdUt" id="2DKqMqOile5" role="3cqZAp">
                  <node concept="3SKdUq" id="2DKqMqOile6" role="3SKWNk">
                    <property role="3SKdUp" value="TODO: inversion of control" />
                  </node>
                </node>
                <node concept="3clFbJ" id="2DKqMqOile7" role="3cqZAp">
                  <node concept="3clFbS" id="2DKqMqOile8" role="3clFbx">
                    <node concept="3cpWs6" id="2DKqMqOile9" role="3cqZAp">
                      <node concept="10QFUN" id="2DKqMqOilea" role="3cqZAk">
                        <node concept="16syzq" id="2DKqMqOileb" role="10QFUM">
                          <ref role="16sUi3" node="2DKqMqOile1" resolve="T" />
                        </node>
                        <node concept="2ShNRf" id="2DKqMqOilec" role="10QFUP">
                          <node concept="1pGfFk" id="2DKqMqOiled" role="2ShVmc">
                            <ref role="37wK5l" to="oy3s:2DKqMqOlTiR" resolve="AtomLogical" />
                            <node concept="3clFbT" id="2DKqMqOlVO$" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2DKqMqOileg" role="3clFbw">
                    <node concept="3VsKOn" id="2DKqMqOileh" role="2Oq$k0">
                      <ref role="3VsUkX" node="dfChU1jXdE" resolve="IAtomLogical" />
                    </node>
                    <node concept="liA8E" id="2DKqMqOilei" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                      <node concept="37vLTw" id="2DKqMqOilej" role="37wK5m">
                        <ref role="3cqZAo" node="2DKqMqOildW" resolve="cls" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="2DKqMqOilek" role="3cqZAp">
                  <node concept="3clFbS" id="2DKqMqOilel" role="3clFbx">
                    <node concept="3cpWs6" id="2DKqMqOilem" role="3cqZAp">
                      <node concept="10QFUN" id="2DKqMqOilen" role="3cqZAk">
                        <node concept="16syzq" id="2DKqMqOileo" role="10QFUM">
                          <ref role="16sUi3" node="2DKqMqOile1" resolve="T" />
                        </node>
                        <node concept="2ShNRf" id="2DKqMqOilep" role="10QFUP">
                          <node concept="1pGfFk" id="2DKqMqOileq" role="2ShVmc">
                            <ref role="37wK5l" to="oy3s:2DKqMqOlWOd" resolve="StringLogical" />
                            <node concept="3clFbT" id="2DKqMqOlYQ8" role="37wK5m">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2DKqMqOilet" role="3clFbw">
                    <node concept="3VsKOn" id="2DKqMqOileu" role="2Oq$k0">
                      <ref role="3VsUkX" node="7jC45KcfYla" resolve="IStringLogical" />
                    </node>
                    <node concept="liA8E" id="2DKqMqOilev" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                      <node concept="37vLTw" id="2DKqMqOilew" role="37wK5m">
                        <ref role="3cqZAo" node="2DKqMqOildW" resolve="cls" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2DKqMqOilex" role="3cqZAp" />
                <node concept="YS8fn" id="2DKqMqOiley" role="3cqZAp">
                  <node concept="2ShNRf" id="2DKqMqOilez" role="YScLw">
                    <node concept="1pGfFk" id="2DKqMqOile$" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="2DKqMqOile_" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5JTOzCR38sI" role="jymVt" />
    <node concept="2YIFZL" id="5JTOzCR38tg" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="3uibUv" id="5JTOzCR38t_" role="3clF45">
        <ref role="3uigEE" node="5JTOzCR38s8" resolve="LogicalFactory" />
      </node>
      <node concept="3Tm1VV" id="5JTOzCR38tj" role="1B3o_S" />
      <node concept="3clFbS" id="5JTOzCR38tk" role="3clF47">
        <node concept="3clFbF" id="5JTOzCR38u7" role="3cqZAp">
          <node concept="37vLTw" id="5JTOzCR38Wh" role="3clFbG">
            <ref role="3cqZAo" node="5JTOzCR38We" resolve="INSTANCE" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5JTOzCR38sR" role="jymVt" />
    <node concept="3clFb_" id="677NV56dwQ$" role="jymVt">
      <property role="TrG5h" value="anon" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="677NV56dwQ_" role="3clF46">
        <property role="TrG5h" value="cls" />
        <node concept="3uibUv" id="677NV56dwQA" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="677NV56dwQB" role="11_B2D">
            <ref role="16sUi3" node="677NV56dwQH" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="677NV56dwQE" role="3clF45">
        <ref role="16sUi3" node="677NV56dwQH" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="677NV56dwQF" role="1B3o_S" />
      <node concept="3clFbS" id="677NV56dwQG" role="3clF47" />
      <node concept="16euLQ" id="677NV56dwQH" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="677NV56dwQI" role="3ztrMU">
          <ref role="3uigEE" node="qubcdt1pkm" resolve="ILogicalExt" />
          <node concept="3qTvmN" id="677NV56dwQJ" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2DKqMqOijj4" role="jymVt" />
    <node concept="3clFb_" id="2DKqMqOiiR8" role="jymVt">
      <property role="TrG5h" value="wildcard" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="2DKqMqOiiR9" role="3clF46">
        <property role="TrG5h" value="cls" />
        <node concept="3uibUv" id="2DKqMqOiiRa" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="2DKqMqOiiRb" role="11_B2D">
            <ref role="16sUi3" node="2DKqMqOiiRf" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="2DKqMqOiiRc" role="3clF45">
        <ref role="16sUi3" node="2DKqMqOiiRf" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="2DKqMqOiiRd" role="1B3o_S" />
      <node concept="3clFbS" id="2DKqMqOiiRe" role="3clF47" />
      <node concept="16euLQ" id="2DKqMqOiiRf" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="2DKqMqOiiRg" role="3ztrMU">
          <ref role="3uigEE" node="qubcdt1pkm" resolve="ILogicalExt" />
          <node concept="3qTvmN" id="2DKqMqOiiRh" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="677NV56dxVi" role="jymVt" />
    <node concept="3clFb_" id="6YyAPwCTQx_" role="jymVt">
      <property role="TrG5h" value="bound" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="6YyAPwCTQxA" role="3clF46">
        <property role="TrG5h" value="cls" />
        <node concept="3uibUv" id="6YyAPwCTQxB" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="6YyAPwCTQxC" role="11_B2D">
            <ref role="16sUi3" node="6YyAPwCTQxG" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2DKqMqOqn71" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="2DKqMqOqnuh" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6YyAPwCTRCZ" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="16syzq" id="6YyAPwCTRJj" role="1tU5fm">
          <ref role="16sUi3" node="6YyAPwCTRsW" resolve="V" />
        </node>
      </node>
      <node concept="16syzq" id="6YyAPwCTQxD" role="3clF45">
        <ref role="16sUi3" node="6YyAPwCTQxG" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="6YyAPwCTQxE" role="1B3o_S" />
      <node concept="3clFbS" id="6YyAPwCTQxF" role="3clF47" />
      <node concept="16euLQ" id="6YyAPwCTRsW" role="16eVyc">
        <property role="TrG5h" value="V" />
      </node>
      <node concept="16euLQ" id="6YyAPwCTQxG" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="6YyAPwCTQxH" role="3ztrMU">
          <ref role="3uigEE" node="qubcdt1pkm" resolve="ILogicalExt" />
          <node concept="16syzq" id="6YyAPwCTRxO" role="11_B2D">
            <ref role="16sUi3" node="6YyAPwCTRsW" resolve="V" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6YyAPwCTR9T" role="jymVt" />
    <node concept="3clFb_" id="5JTOzCR390E" role="jymVt">
      <property role="TrG5h" value="unbound" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="5JTOzCR397c" role="3clF46">
        <property role="TrG5h" value="cls" />
        <node concept="3uibUv" id="5JTOzCR397K" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="5JTOzCR3986" role="11_B2D">
            <ref role="16sUi3" node="5JTOzCR393n" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5JTOzCR3zOf" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="5JTOzCR3$dI" role="1tU5fm" />
      </node>
      <node concept="16syzq" id="5JTOzCR396t" role="3clF45">
        <ref role="16sUi3" node="5JTOzCR393n" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="5JTOzCR390H" role="1B3o_S" />
      <node concept="3clFbS" id="5JTOzCR390I" role="3clF47" />
      <node concept="16euLQ" id="5JTOzCR393n" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="5JTOzCR3949" role="3ztrMU">
          <ref role="3uigEE" node="qubcdt1pkm" resolve="ILogicalExt" />
          <node concept="3qTvmN" id="5JTOzCR3FZc" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5JTOzCR38YV" role="jymVt" />
    <node concept="2YIFZL" id="4OKkcneUI21" role="jymVt">
      <property role="TrG5h" value="anonString" />
      <node concept="3uibUv" id="4OKkcneUIru" role="3clF45">
        <ref role="3uigEE" node="7jC45KcfYla" resolve="IStringLogical" />
      </node>
      <node concept="3Tm1VV" id="4OKkcneUI24" role="1B3o_S" />
      <node concept="3clFbS" id="4OKkcneUI25" role="3clF47">
        <node concept="3clFbF" id="4OKkcneUILi" role="3cqZAp">
          <node concept="2OqwBi" id="4OKkcneUJ8y" role="3clFbG">
            <node concept="1rXfSq" id="4OKkcneUILh" role="2Oq$k0">
              <ref role="37wK5l" node="5JTOzCR38tg" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="4OKkcneUJgx" role="2OqNvi">
              <ref role="37wK5l" node="677NV56dwQ$" resolve="anon" />
              <node concept="3VsKOn" id="4OKkcneUJmp" role="37wK5m">
                <ref role="3VsUkX" node="7jC45KcfYla" resolve="IStringLogical" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2DKqMqOjjm0" role="jymVt" />
    <node concept="2YIFZL" id="2DKqMqOjiQ4" role="jymVt">
      <property role="TrG5h" value="wildcardString" />
      <node concept="3uibUv" id="2DKqMqOjiQ5" role="3clF45">
        <ref role="3uigEE" node="7jC45KcfYla" resolve="IStringLogical" />
      </node>
      <node concept="3Tm1VV" id="2DKqMqOjiQ6" role="1B3o_S" />
      <node concept="3clFbS" id="2DKqMqOjiQ7" role="3clF47">
        <node concept="3clFbF" id="2DKqMqOjiQ8" role="3cqZAp">
          <node concept="2OqwBi" id="2DKqMqOjiQ9" role="3clFbG">
            <node concept="1rXfSq" id="2DKqMqOjiQa" role="2Oq$k0">
              <ref role="37wK5l" node="5JTOzCR38tg" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="2DKqMqOjiQb" role="2OqNvi">
              <ref role="37wK5l" node="2DKqMqOiiR8" resolve="wildcard" />
              <node concept="3VsKOn" id="2DKqMqOjiQc" role="37wK5m">
                <ref role="3VsUkX" node="7jC45KcfYla" resolve="IStringLogical" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4OKkcnfbs9t" role="jymVt" />
    <node concept="2YIFZL" id="4OKkcnfbrFS" role="jymVt">
      <property role="TrG5h" value="anonString" />
      <node concept="3uibUv" id="4OKkcnfbrFT" role="3clF45">
        <ref role="3uigEE" node="7jC45KcfYla" resolve="IStringLogical" />
      </node>
      <node concept="3Tm1VV" id="4OKkcnfbrFU" role="1B3o_S" />
      <node concept="3clFbS" id="4OKkcnfbrFV" role="3clF47">
        <node concept="3clFbF" id="4OKkcnfbrFW" role="3cqZAp">
          <node concept="2OqwBi" id="4OKkcnfbrFX" role="3clFbG">
            <node concept="1rXfSq" id="4OKkcnfbrFY" role="2Oq$k0">
              <ref role="37wK5l" node="5JTOzCR38tg" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="4OKkcnfbrFZ" role="2OqNvi">
              <ref role="37wK5l" node="5JTOzCR390E" resolve="unbound" />
              <node concept="3VsKOn" id="4OKkcnfbrG0" role="37wK5m">
                <ref role="3VsUkX" node="7jC45KcfYla" resolve="IStringLogical" />
              </node>
              <node concept="37vLTw" id="4OKkcnfbtVM" role="37wK5m">
                <ref role="3cqZAo" node="4OKkcnfbtyJ" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4OKkcnfbtyJ" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="4OKkcnfbtyI" role="1tU5fm" />
      </node>
      <node concept="2AHcQZ" id="5zfvpQ78N6e" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="2tJIrI" id="4OKkcneVVJe" role="jymVt" />
    <node concept="2YIFZL" id="4OKkcneVVfn" role="jymVt">
      <property role="TrG5h" value="anonAtom" />
      <node concept="3uibUv" id="4OKkcneVWnm" role="3clF45">
        <ref role="3uigEE" node="dfChU1jXdE" resolve="IAtomLogical" />
      </node>
      <node concept="3Tm1VV" id="4OKkcneVVfp" role="1B3o_S" />
      <node concept="3clFbS" id="4OKkcneVVfq" role="3clF47">
        <node concept="3clFbF" id="4OKkcneVVfr" role="3cqZAp">
          <node concept="2OqwBi" id="4OKkcneVVfs" role="3clFbG">
            <node concept="1rXfSq" id="4OKkcneVVft" role="2Oq$k0">
              <ref role="37wK5l" node="5JTOzCR38tg" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="4OKkcneVVfu" role="2OqNvi">
              <ref role="37wK5l" node="677NV56dwQ$" resolve="anon" />
              <node concept="3VsKOn" id="4OKkcneVVfv" role="37wK5m">
                <ref role="3VsUkX" node="dfChU1jXdE" resolve="IAtomLogical" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2DKqMqOikCD" role="jymVt" />
    <node concept="2YIFZL" id="2DKqMqOike0" role="jymVt">
      <property role="TrG5h" value="wildcardAtom" />
      <node concept="3uibUv" id="2DKqMqOike1" role="3clF45">
        <ref role="3uigEE" node="dfChU1jXdE" resolve="IAtomLogical" />
      </node>
      <node concept="3Tm1VV" id="2DKqMqOike2" role="1B3o_S" />
      <node concept="3clFbS" id="2DKqMqOike3" role="3clF47">
        <node concept="3clFbF" id="2DKqMqOike4" role="3cqZAp">
          <node concept="2OqwBi" id="2DKqMqOike5" role="3clFbG">
            <node concept="1rXfSq" id="2DKqMqOike6" role="2Oq$k0">
              <ref role="37wK5l" node="5JTOzCR38tg" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="2DKqMqOike7" role="2OqNvi">
              <ref role="37wK5l" node="2DKqMqOiiR8" resolve="wildcard" />
              <node concept="3VsKOn" id="2DKqMqOike8" role="37wK5m">
                <ref role="3VsUkX" node="dfChU1jXdE" resolve="IAtomLogical" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4OKkcnfbuBm" role="jymVt" />
    <node concept="2YIFZL" id="4OKkcnfbu8p" role="jymVt">
      <property role="TrG5h" value="anonAtom" />
      <node concept="3uibUv" id="4OKkcnfbu8q" role="3clF45">
        <ref role="3uigEE" node="dfChU1jXdE" resolve="IAtomLogical" />
      </node>
      <node concept="3Tm1VV" id="4OKkcnfbu8r" role="1B3o_S" />
      <node concept="3clFbS" id="4OKkcnfbu8s" role="3clF47">
        <node concept="3clFbF" id="4OKkcnfbu8t" role="3cqZAp">
          <node concept="2OqwBi" id="4OKkcnfbu8u" role="3clFbG">
            <node concept="1rXfSq" id="4OKkcnfbu8v" role="2Oq$k0">
              <ref role="37wK5l" node="5JTOzCR38tg" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="4OKkcnfbv_f" role="2OqNvi">
              <ref role="37wK5l" node="5JTOzCR390E" resolve="unbound" />
              <node concept="3VsKOn" id="4OKkcnfbvFq" role="37wK5m">
                <ref role="3VsUkX" node="dfChU1jXdE" resolve="IAtomLogical" />
              </node>
              <node concept="37vLTw" id="4OKkcnfbvIO" role="37wK5m">
                <ref role="3cqZAo" node="4OKkcnfbv5M" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4OKkcnfbv5M" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="4OKkcnfbv5L" role="1tU5fm" />
      </node>
      <node concept="2AHcQZ" id="5zfvpQ78NnW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5JTOzCR38s9" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="677NV565N1x">
    <property role="TrG5h" value="LogicalUtil" />
    <node concept="2tJIrI" id="677NV565N1L" role="jymVt" />
    <node concept="2YIFZL" id="677NV565VC2" role="jymVt">
      <property role="TrG5h" value="asAtomArray" />
      <node concept="37vLTG" id="677NV565VMW" role="3clF46">
        <property role="TrG5h" value="logicalArr" />
        <node concept="8X2XB" id="677NV565VO6" role="1tU5fm">
          <node concept="3uibUv" id="qubcdt7lYi" role="8Xvag">
            <ref role="3uigEE" node="qubcdt1pkm" resolve="ILogicalExt" />
          </node>
        </node>
      </node>
      <node concept="10Q1$e" id="677NV565VLO" role="3clF45">
        <node concept="3uibUv" id="677NV565VLD" role="10Q1$1">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3Tm1VV" id="677NV565VC5" role="1B3o_S" />
      <node concept="3clFbS" id="677NV565VC6" role="3clF47">
        <node concept="3cpWs8" id="677NV565Z2M" role="3cqZAp">
          <node concept="3cpWsn" id="677NV565Z2N" role="3cpWs9">
            <property role="TrG5h" value="array" />
            <node concept="10Q1$e" id="677NV565Z2E" role="1tU5fm">
              <node concept="3uibUv" id="677NV565Z2H" role="10Q1$1">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
            </node>
            <node concept="2ShNRf" id="677NV565Z2O" role="33vP2m">
              <node concept="3$_iS1" id="677NV565Z2P" role="2ShVmc">
                <node concept="3$GHV9" id="677NV565Z2Q" role="3$GQph">
                  <node concept="2OqwBi" id="677NV565ZG1" role="3$I4v7">
                    <node concept="37vLTw" id="677NV565ZcD" role="2Oq$k0">
                      <ref role="3cqZAo" node="677NV565VMW" resolve="logicalArr" />
                    </node>
                    <node concept="1Rwk04" id="677NV5660Jm" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3uibUv" id="677NV565Z2R" role="3$_nBY">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="677NV5660P6" role="3cqZAp">
          <node concept="3clFbS" id="677NV5660P8" role="2LFqv$">
            <node concept="3clFbF" id="677NV566355" role="3cqZAp">
              <node concept="37vLTI" id="677NV5663dk" role="3clFbG">
                <node concept="2OqwBi" id="677NV5664S0" role="37vLTx">
                  <node concept="2OqwBi" id="677NV56641N" role="2Oq$k0">
                    <node concept="AH0OO" id="677NV5663zs" role="2Oq$k0">
                      <node concept="37vLTw" id="677NV5663K_" role="AHEQo">
                        <ref role="3cqZAo" node="677NV5660P9" resolve="i" />
                      </node>
                      <node concept="37vLTw" id="677NV5663ha" role="AHHXb">
                        <ref role="3cqZAo" node="677NV565VMW" resolve="logicalArr" />
                      </node>
                    </node>
                    <node concept="liA8E" id="677NV5664Mj" role="2OqNvi">
                      <ref role="37wK5l" node="7jC45Kci98e" resolve="asAtom" />
                    </node>
                  </node>
                  <node concept="liA8E" id="677NV5665A4" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:2QE4RCGndD7" resolve="asRoot" />
                  </node>
                </node>
                <node concept="AH0OO" id="677NV56636O" role="37vLTJ">
                  <node concept="37vLTw" id="677NV56639b" role="AHEQo">
                    <ref role="3cqZAo" node="677NV5660P9" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="677NV566353" role="AHHXb">
                    <ref role="3cqZAo" node="677NV565Z2N" resolve="array" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="677NV5660P9" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="677NV5660QJ" role="1tU5fm" />
            <node concept="3cmrfG" id="677NV5660T9" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="677NV56j4xv" role="1Dwp0S">
            <node concept="37vLTw" id="677NV5660Uc" role="3uHU7B">
              <ref role="3cqZAo" node="677NV5660P9" resolve="i" />
            </node>
            <node concept="2OqwBi" id="677NV5661$p" role="3uHU7w">
              <node concept="37vLTw" id="677NV5661mM" role="2Oq$k0">
                <ref role="3cqZAo" node="677NV565VMW" resolve="logicalArr" />
              </node>
              <node concept="1Rwk04" id="677NV5662Ak" role="2OqNvi" />
            </node>
          </node>
          <node concept="3uNrnE" id="677NV5662VZ" role="1Dwrff">
            <node concept="37vLTw" id="677NV5662W1" role="2$L3a6">
              <ref role="3cqZAo" node="677NV5660P9" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="677NV565X25" role="3cqZAp">
          <node concept="37vLTw" id="677NV565Z2S" role="3clFbG">
            <ref role="3cqZAo" node="677NV565Z2N" resolve="array" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="677NV565VBQ" role="jymVt" />
    <node concept="3Tm1VV" id="677NV565N1y" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5_6ImQZ8j9D">
    <property role="TrG5h" value="SolverUtil" />
    <node concept="2tJIrI" id="5_6ImQZ8j9N" role="jymVt" />
    <node concept="2YIFZL" id="5_6ImQZ8ja0" role="jymVt">
      <property role="TrG5h" value="fail" />
      <node concept="3cqZAl" id="5_6ImQZ8ja2" role="3clF45" />
      <node concept="3Tm1VV" id="5_6ImQZ8ja3" role="1B3o_S" />
      <node concept="3clFbS" id="5_6ImQZ8ja4" role="3clF47">
        <node concept="YS8fn" id="5_6ImQZ8jaz" role="3cqZAp">
          <node concept="2ShNRf" id="5_6ImQZ8jaX" role="YScLw">
            <node concept="1pGfFk" id="5_6ImQZ8l0Z" role="2ShVmc">
              <ref role="37wK5l" to="eifs:~FailureException.&lt;init&gt;(java.lang.String)" resolve="FailureException" />
              <node concept="37vLTw" id="5_6ImQZ8l2j" role="37wK5m">
                <ref role="3cqZAo" node="5_6ImQZ8l1u" resolve="message" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5_6ImQZ8l1u" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="5_6ImQZ8l1t" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5_6ImQZ8j9E" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="qubcdt1pkm">
    <property role="TrG5h" value="ILogicalExt" />
    <node concept="2tJIrI" id="qubcdt7pFV" role="jymVt" />
    <node concept="3clFb_" id="dfChU1eNVy" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="findRoot" />
      <node concept="3uibUv" id="dfChU1eNWP" role="3clF45">
        <ref role="3uigEE" node="qubcdt1pkm" resolve="ILogicalExt" />
        <node concept="16syzq" id="dfChU1eNXI" role="11_B2D">
          <ref role="16sUi3" node="qubcdt52KU" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="dfChU1eNV_" role="1B3o_S" />
      <node concept="3clFbS" id="dfChU1eNVA" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="qubcdt7pGl" role="jymVt" />
    <node concept="3clFb_" id="7jC45Kci98e" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="asAtom" />
      <node concept="3uibUv" id="7jC45Kci98f" role="3clF45">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
      </node>
      <node concept="3Tm1VV" id="7jC45Kci98h" role="1B3o_S" />
      <node concept="3clFbS" id="7jC45Kci98i" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7MlQDeOyaKI" role="jymVt" />
    <node concept="3clFb_" id="7MlQDeOy9SE" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="asAtom" />
      <node concept="3uibUv" id="7MlQDeOy9SF" role="3clF45">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
      </node>
      <node concept="3Tm1VV" id="7MlQDeOy9SG" role="1B3o_S" />
      <node concept="3clFbS" id="7MlQDeOy9SH" role="3clF47" />
      <node concept="37vLTG" id="7MlQDeOybAm" role="3clF46">
        <property role="TrG5h" value="prototype" />
        <node concept="3uibUv" id="7MlQDeOybAl" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qUE_q" id="7MlQDeOybG7" role="11_B2D">
            <node concept="3uibUv" id="7MlQDeOybIO" role="3qUE_r">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5zfvpQ7aL7l" role="jymVt" />
    <node concept="3clFb_" id="6Sag3Ksvh9N" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="isValid" />
      <node concept="37vLTG" id="6Sag3Ksvngn" role="3clF46">
        <property role="TrG5h" value="prototype" />
        <node concept="3uibUv" id="6Sag3KsvnoC" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qUE_q" id="6Sag3KsvnJK" role="11_B2D">
            <node concept="3uibUv" id="6Sag3KsvnR$" role="3qUE_r">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="6Sag3KsvhiY" role="3clF45" />
      <node concept="3Tm1VV" id="6Sag3Ksvh9Q" role="1B3o_S" />
      <node concept="3clFbS" id="6Sag3Ksvh9R" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6Sag3Ksvh8c" role="jymVt" />
    <node concept="3Tm1VV" id="qubcdt1pkn" role="1B3o_S" />
    <node concept="3uibUv" id="qubcdt1pkF" role="3HQHJm">
      <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="ILogical" />
      <node concept="16syzq" id="qubcdt52Lk" role="11_B2D">
        <ref role="16sUi3" node="qubcdt52KU" resolve="T" />
      </node>
    </node>
    <node concept="16euLQ" id="qubcdt52KU" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
  </node>
  <node concept="3HP615" id="7jC45KcfYla">
    <property role="TrG5h" value="IStringLogical" />
    <node concept="2tJIrI" id="7jC45Kci97m" role="jymVt" />
    <node concept="3Tm1VV" id="7jC45KcfYlb" role="1B3o_S" />
    <node concept="3uibUv" id="7jC45KcfYsJ" role="3HQHJm">
      <ref role="3uigEE" node="qubcdt1pkm" resolve="ILogicalExt" />
      <node concept="17QB3L" id="7jC45KcfYsV" role="11_B2D" />
    </node>
  </node>
  <node concept="3HP615" id="dfChU1jXdE">
    <property role="TrG5h" value="IAtomLogical" />
    <node concept="2tJIrI" id="5JTOzCR38bS" role="jymVt" />
    <node concept="3Tm1VV" id="dfChU1jXdF" role="1B3o_S" />
    <node concept="3uibUv" id="dfChU1jXdV" role="3HQHJm">
      <ref role="3uigEE" node="qubcdt1pkm" resolve="ILogicalExt" />
      <node concept="3uibUv" id="2s5CcPafK7I" role="11_B2D">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="qubcdtxBiR">
    <property role="TrG5h" value="ComputingTracerExt" />
    <node concept="2tJIrI" id="qubcdtxBuI" role="jymVt" />
    <node concept="3clFb_" id="7nkyKX7gU0T" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="result" />
      <node concept="37vLTG" id="7nkyKX7gU0U" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="7nkyKX7gU0V" role="1tU5fm">
          <ref role="3uigEE" to="eifs:~IConstraint" resolve="IConstraint" />
        </node>
      </node>
      <node concept="3cqZAl" id="7nkyKX7gU0Y" role="3clF45" />
      <node concept="3Tm1VV" id="7nkyKX7gU0Z" role="1B3o_S" />
      <node concept="3clFbS" id="7nkyKX7gU10" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7nkyKX7gUfX" role="jymVt" />
    <node concept="3clFb_" id="7nkyKX7gU3L" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="garbage" />
      <node concept="37vLTG" id="7nkyKX7gU3M" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="7nkyKX7gU3N" role="1tU5fm">
          <ref role="3uigEE" to="eifs:~IConstraint" resolve="IConstraint" />
        </node>
      </node>
      <node concept="3cqZAl" id="7nkyKX7gU3Q" role="3clF45" />
      <node concept="3Tm1VV" id="7nkyKX7gU3R" role="1B3o_S" />
      <node concept="3clFbS" id="7nkyKX7gU3S" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="qubcdtxBuK" role="jymVt" />
    <node concept="Wx3nA" id="24Vro6cS5rK" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="NULL" />
      <node concept="3Tm1VV" id="24Vro6cS5rM" role="1B3o_S" />
      <node concept="2ShNRf" id="24Vro6cS5M$" role="33vP2m">
        <node concept="YeOm9" id="24Vro6cS5SL" role="2ShVmc">
          <node concept="1Y3b0j" id="24Vro6cS5SO" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" node="qubcdtxBiR" resolve="ComputingTracerExt" />
            <node concept="3Tm1VV" id="24Vro6cS5SP" role="1B3o_S" />
            <node concept="3clFb_" id="24Vro6cS5SQ" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="askSuccess" />
              <node concept="37vLTG" id="24Vro6cS5SR" role="3clF46">
                <property role="TrG5h" value="autoConstraint" />
                <node concept="3uibUv" id="24Vro6cS5SS" role="1tU5fm">
                  <ref role="3uigEE" to="qrld:6Kcfpq7Bj7q" resolve="AutoConstraint" />
                </node>
              </node>
              <node concept="37vLTG" id="24Vro6cS5ST" role="3clF46">
                <property role="TrG5h" value="args" />
                <node concept="8X2XB" id="24Vro6cS5SU" role="1tU5fm">
                  <node concept="3uibUv" id="24Vro6cS5SV" role="8Xvag">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="3cqZAl" id="24Vro6cS5SW" role="3clF45" />
              <node concept="3Tm1VV" id="24Vro6cS5SX" role="1B3o_S" />
              <node concept="3clFbS" id="24Vro6cS5SZ" role="3clF47" />
            </node>
            <node concept="3clFb_" id="24Vro6cS5T1" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="askFailure" />
              <node concept="37vLTG" id="24Vro6cS5T2" role="3clF46">
                <property role="TrG5h" value="autoConstraint" />
                <node concept="3uibUv" id="24Vro6cS5T3" role="1tU5fm">
                  <ref role="3uigEE" to="qrld:6Kcfpq7Bj7q" resolve="AutoConstraint" />
                </node>
              </node>
              <node concept="37vLTG" id="24Vro6cS5T4" role="3clF46">
                <property role="TrG5h" value="args" />
                <node concept="8X2XB" id="24Vro6cS5T5" role="1tU5fm">
                  <node concept="3uibUv" id="24Vro6cS5T6" role="8Xvag">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="3cqZAl" id="24Vro6cS5T7" role="3clF45" />
              <node concept="3Tm1VV" id="24Vro6cS5T8" role="1B3o_S" />
              <node concept="3clFbS" id="24Vro6cS5Ta" role="3clF47" />
            </node>
            <node concept="3clFb_" id="7nkyKX7h9eG" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="result" />
              <node concept="37vLTG" id="7nkyKX7h9eH" role="3clF46">
                <property role="TrG5h" value="constraint" />
                <node concept="3uibUv" id="7nkyKX7h9eI" role="1tU5fm">
                  <ref role="3uigEE" to="eifs:~IConstraint" resolve="IConstraint" />
                </node>
              </node>
              <node concept="3cqZAl" id="7nkyKX7h9eJ" role="3clF45" />
              <node concept="3Tm1VV" id="7nkyKX7h9eK" role="1B3o_S" />
              <node concept="3clFbS" id="7nkyKX7h9eN" role="3clF47" />
            </node>
            <node concept="3clFb_" id="7nkyKX7h9eO" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="garbage" />
              <node concept="37vLTG" id="7nkyKX7h9eP" role="3clF46">
                <property role="TrG5h" value="constraint" />
                <node concept="3uibUv" id="7nkyKX7h9eQ" role="1tU5fm">
                  <ref role="3uigEE" to="eifs:~IConstraint" resolve="IConstraint" />
                </node>
              </node>
              <node concept="3cqZAl" id="7nkyKX7h9eR" role="3clF45" />
              <node concept="3Tm1VV" id="7nkyKX7h9eS" role="1B3o_S" />
              <node concept="3clFbS" id="7nkyKX7h9eV" role="3clF47" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="qubcdtxJQt" role="1tU5fm">
        <ref role="3uigEE" node="qubcdtxBiR" resolve="ComputingTracerExt" />
      </node>
    </node>
    <node concept="2tJIrI" id="qubcdtxJFT" role="jymVt" />
    <node concept="3Tm1VV" id="qubcdtxBiS" role="1B3o_S" />
    <node concept="3uibUv" id="qubcdtxBjm" role="3HQHJm">
      <ref role="3uigEE" to="qrld:24Vro6cQnrj" resolve="ComputingTracer" />
    </node>
  </node>
</model>

