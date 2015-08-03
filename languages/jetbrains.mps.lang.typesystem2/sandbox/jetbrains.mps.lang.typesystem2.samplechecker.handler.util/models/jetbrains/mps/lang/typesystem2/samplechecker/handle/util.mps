<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:94702bd0-f623-44e8-af0a-f2730f7d2518(jetbrains.mps.lang.typesystem2.samplechecker.handle.util)">
  <persistence version="9" />
  <languages>
    <use id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.unification.tree)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="4t1t" ref="r:703839e2-c38f-4b71-8602-72ccb87dd74e(jetbrains.mps.lang.typesystem2.runtime.util)" />
    <import index="bspi" ref="r:b094f86e-558c-4295-8b38-f6a26ad07b4f(jetbrains.mps.logic.constraint)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
      </concept>
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
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
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
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
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
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
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="2546654756694997551" name="jetbrains.mps.baseLanguage.javadoc.structure.LinkInlineDocTag" flags="ng" index="92FcH">
        <child id="2546654756694997556" name="reference" index="92FcQ" />
        <child id="3106559687488913694" name="line" index="2XjZqd" />
      </concept>
      <concept id="5858074156537516430" name="jetbrains.mps.baseLanguage.javadoc.structure.ReturnBlockDocTag" flags="ng" index="x79VA">
        <property id="5858074156537516431" name="text" index="x79VB" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv">
        <child id="5858074156537516440" name="return" index="x79VK" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="2217234381367530195" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocReference" flags="ng" index="VXe0Z">
        <reference id="2217234381367530196" name="methodDeclaration" index="VXe0S" />
      </concept>
      <concept id="8970989240999019145" name="jetbrains.mps.baseLanguage.javadoc.structure.InlineTagCommentLinePart" flags="ng" index="1dT_AA">
        <child id="6962838954693749192" name="tag" index="qph3F" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="238586457668550951" name="jetbrains.mps.logic.structure.LogicalSubstitution" flags="ng" index="22Ky0T">
        <child id="238586457668550958" name="expression" index="22Ky0K" />
      </concept>
      <concept id="2105510410850132386" name="jetbrains.mps.logic.structure.ListNode" flags="ng" index="KCUsM">
        <child id="2105510410850136264" name="contents" index="KCVpo" />
      </concept>
      <concept id="7571593955706120730" name="jetbrains.mps.logic.structure.Ast" flags="ng" index="1oi1Uc">
        <child id="7571593955706125526" name="root" index="1oi0x0" />
      </concept>
      <concept id="7571593955706137263" name="jetbrains.mps.logic.structure.ChildRole" flags="ng" index="1oi5ST">
        <child id="7571593955706137319" name="contents" index="1oi5TL" />
      </concept>
      <concept id="7571593955706137125" name="jetbrains.mps.logic.structure.Node" flags="ng" index="1oi5UN" />
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
  <node concept="312cEu" id="5H6hZahmlon">
    <property role="TrG5h" value="LubSolver" />
    <node concept="2tJIrI" id="5H6hZahrdLM" role="jymVt" />
    <node concept="2YIFZL" id="5H6hZahmloU" role="jymVt">
      <property role="TrG5h" value="findLub" />
      <node concept="37vLTG" id="5H6hZahmlpn" role="3clF46">
        <property role="TrG5h" value="result" />
        <node concept="3uibUv" id="5H6hZahmlpB" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="5H6hZahmlpH" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="5H6hZahmlqj" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="5H6hZahmlpT" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="5H6hZahmlqy" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="10P_77" id="5H6hZahmlpi" role="3clF45" />
      <node concept="3Tm1VV" id="5H6hZahmloX" role="1B3o_S" />
      <node concept="3clFbS" id="5H6hZahmloY" role="3clF47">
        <node concept="3clFbH" id="5H6hZahmlqI" role="3cqZAp" />
        <node concept="3cpWs8" id="4xBopTztvti" role="3cqZAp">
          <node concept="3cpWsn" id="4xBopTztvtj" role="3cpWs9">
            <property role="TrG5h" value="computingSession" />
            <node concept="3uibUv" id="4xBopTztvth" role="1tU5fm">
              <ref role="3uigEE" to="bspi:6Kcfpq7B0b0" resolve="ComputingSession" />
            </node>
            <node concept="2YIFZM" id="4xBopTztvtk" role="33vP2m">
              <ref role="37wK5l" to="bspi:4xBopTzo4e1" resolve="getDefault" />
              <ref role="1Pybhc" to="bspi:6Kcfpq7B0b0" resolve="ComputingSession" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5H6hZahoEVV" role="3cqZAp" />
        <node concept="3cpWs8" id="5H6hZahmo9u" role="3cqZAp">
          <node concept="3cpWsn" id="5H6hZahmo9v" role="3cpWs9">
            <property role="TrG5h" value="leftVal" />
            <node concept="3uibUv" id="5H6hZahmo9t" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
            <node concept="2OqwBi" id="5H6hZahmo9w" role="33vP2m">
              <node concept="2OqwBi" id="5H6hZahmo9x" role="2Oq$k0">
                <node concept="37vLTw" id="5H6hZahmo9y" role="2Oq$k0">
                  <ref role="3cqZAo" node="5H6hZahmlpH" resolve="left" />
                </node>
                <node concept="liA8E" id="5H6hZahmo9z" role="2OqNvi">
                  <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                </node>
              </node>
              <node concept="liA8E" id="5H6hZahmo9$" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5H6hZahmr3u" role="3cqZAp">
          <node concept="3cpWsn" id="5H6hZahmr3v" role="3cpWs9">
            <property role="TrG5h" value="rightVal" />
            <node concept="3uibUv" id="5H6hZahmr3p" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
            <node concept="2OqwBi" id="5H6hZahmr3w" role="33vP2m">
              <node concept="2OqwBi" id="5H6hZahmr3x" role="2Oq$k0">
                <node concept="37vLTw" id="5H6hZahmr3y" role="2Oq$k0">
                  <ref role="3cqZAo" node="5H6hZahmlpT" resolve="right" />
                </node>
                <node concept="liA8E" id="5H6hZahmr3z" role="2OqNvi">
                  <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                </node>
              </node>
              <node concept="liA8E" id="5H6hZahmr3$" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5H6hZahmlqR" role="3cqZAp" />
        <node concept="3clFbJ" id="5H6hZahmrm9" role="3cqZAp">
          <node concept="3clFbS" id="5H6hZahmrmb" role="3clFbx">
            <node concept="3cpWs6" id="5H6hZahmrME" role="3cqZAp">
              <node concept="3clFbT" id="5H6hZahmrPb" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="5H6hZahmrtn" role="3clFbw">
            <node concept="3clFbC" id="5H6hZahmrKV" role="3uHU7w">
              <node concept="10Nm6u" id="5H6hZahmrLJ" role="3uHU7w" />
              <node concept="37vLTw" id="5H6hZahmrJ3" role="3uHU7B">
                <ref role="3cqZAo" node="5H6hZahmr3v" resolve="rightVal" />
              </node>
            </node>
            <node concept="3clFbC" id="5H6hZahmrqQ" role="3uHU7B">
              <node concept="37vLTw" id="5H6hZahmroC" role="3uHU7B">
                <ref role="3cqZAo" node="5H6hZahmo9v" resolve="leftVal" />
              </node>
              <node concept="10Nm6u" id="5H6hZahmrsK" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5H6hZahmrjY" role="3cqZAp" />
        <node concept="3clFbH" id="2DKqMqOsL8O" role="3cqZAp" />
        <node concept="3SKdUt" id="5H6hZahmFlw" role="3cqZAp">
          <node concept="3SKdUq" id="5H6hZahmFqa" role="3SKWNk">
            <property role="3SKdUp" value="TODO: factor out standard feature names" />
          </node>
        </node>
        <node concept="3cpWs8" id="5H6hZahmJ47" role="3cqZAp">
          <node concept="3cpWsn" id="5H6hZahmJ48" role="3cpWs9">
            <property role="TrG5h" value="leftPaths" />
            <node concept="3uibUv" id="5H6hZahmJ3n" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3qUE_q" id="5H6hZahmJ3$" role="11_B2D">
                <node concept="3uibUv" id="5H6hZahmJ3_" role="3qUE_r">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5H6hZahmJ49" role="33vP2m">
              <node concept="2YIFZM" id="5H6hZahmJ4a" role="2Oq$k0">
                <ref role="1Pybhc" to="ie8e:3JgCwkqd3K7" resolve="Finders" />
                <ref role="37wK5l" to="ie8e:3OPtF03pX11" resolve="findList" />
                <node concept="37vLTw" id="5H6hZahmJ4c" role="37wK5m">
                  <ref role="3cqZAo" node="5H6hZahmo9v" resolve="leftVal" />
                </node>
                <node concept="Xl_RD" id="5H6hZahmJ4e" role="37wK5m">
                  <property role="Xl_RC" value="list" />
                </node>
                <node concept="Xl_RD" id="5H6hZahqBye" role="37wK5m">
                  <property role="Xl_RC" value="contents" />
                </node>
              </node>
              <node concept="liA8E" id="5H6hZahmJ4g" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:3OPtF03nYWm" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5H6hZahmK7p" role="3cqZAp">
          <node concept="3cpWsn" id="5H6hZahmK7q" role="3cpWs9">
            <property role="TrG5h" value="rightPaths" />
            <node concept="3uibUv" id="5H6hZahmK75" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3qUE_q" id="5H6hZahmK7i" role="11_B2D">
                <node concept="3uibUv" id="5H6hZahmK7j" role="3qUE_r">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5H6hZahmK7r" role="33vP2m">
              <node concept="2YIFZM" id="5H6hZahmK7s" role="2Oq$k0">
                <ref role="37wK5l" to="ie8e:3OPtF03pX11" resolve="findList" />
                <ref role="1Pybhc" to="ie8e:3JgCwkqd3K7" resolve="Finders" />
                <node concept="37vLTw" id="5H6hZahmK7u" role="37wK5m">
                  <ref role="3cqZAo" node="5H6hZahmr3v" resolve="rightVal" />
                </node>
                <node concept="Xl_RD" id="5H6hZahmK7w" role="37wK5m">
                  <property role="Xl_RC" value="list" />
                </node>
                <node concept="Xl_RD" id="5H6hZahqFV7" role="37wK5m">
                  <property role="Xl_RC" value="contents" />
                </node>
              </node>
              <node concept="liA8E" id="5H6hZahmK7y" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:3OPtF03nYWm" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2DKqMqOt37b" role="3cqZAp" />
        <node concept="3clFbJ" id="5H6hZahohdB" role="3cqZAp">
          <node concept="3clFbS" id="5H6hZahohdD" role="3clFbx">
            <node concept="3cpWs6" id="5H6hZahom9k" role="3cqZAp">
              <node concept="3clFbT" id="5H6hZahom9M" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="5H6hZahol0X" role="3clFbw">
            <node concept="3fqX7Q" id="5H6hZaholLx" role="3uHU7w">
              <node concept="2OqwBi" id="5H6hZaholRe" role="3fr31v">
                <node concept="2OqwBi" id="2DKqMqOsX3B" role="2Oq$k0">
                  <node concept="37vLTw" id="2DKqMqOsX3C" role="2Oq$k0">
                    <ref role="3cqZAo" node="5H6hZahmK7q" resolve="rightPaths" />
                  </node>
                  <node concept="liA8E" id="2DKqMqOsX3D" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.iterator():java.util.Iterator" resolve="iterator" />
                  </node>
                </node>
                <node concept="liA8E" id="5H6hZahom6y" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="5H6hZahok7D" role="3uHU7B">
              <node concept="2OqwBi" id="5H6hZahok7F" role="3fr31v">
                <node concept="2OqwBi" id="2DKqMqOsWX7" role="2Oq$k0">
                  <node concept="37vLTw" id="2DKqMqOsWX8" role="2Oq$k0">
                    <ref role="3cqZAo" node="5H6hZahmJ48" resolve="leftPaths" />
                  </node>
                  <node concept="liA8E" id="2DKqMqOsWX9" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.iterator():java.util.Iterator" resolve="iterator" />
                  </node>
                </node>
                <node concept="liA8E" id="5H6hZahok7H" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5H6hZahmrcx" role="3cqZAp" />
        <node concept="3cpWs8" id="5H6hZahnYQW" role="3cqZAp">
          <node concept="3cpWsn" id="5H6hZahnYQX" role="3cpWs9">
            <property role="TrG5h" value="resultList" />
            <node concept="3uibUv" id="5H6hZahnZG6" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="5H6hZahnZPo" role="11_B2D">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
            </node>
            <node concept="2ShNRf" id="5H6hZahnYQY" role="33vP2m">
              <node concept="1pGfFk" id="5H6hZahnYQZ" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="5H6hZahnYR0" role="1pMfVU">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2DKqMqOsS4B" role="3cqZAp" />
        <node concept="3cpWs8" id="5H6hZahmMWg" role="3cqZAp">
          <node concept="3cpWsn" id="5H6hZahmMWh" role="3cpWs9">
            <property role="TrG5h" value="leftPathIt" />
            <node concept="3uibUv" id="5H6hZahmMW0" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
              <node concept="3qUE_q" id="5H6hZahmMWd" role="11_B2D">
                <node concept="3uibUv" id="5H6hZahmMWe" role="3qUE_r">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5H6hZahmMWi" role="33vP2m">
              <node concept="37vLTw" id="5H6hZahmMWj" role="2Oq$k0">
                <ref role="3cqZAo" node="5H6hZahmJ48" resolve="leftPaths" />
              </node>
              <node concept="liA8E" id="5H6hZahmMWk" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.iterator():java.util.Iterator" resolve="iterator" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5H6hZahmQla" role="3cqZAp">
          <node concept="3cpWsn" id="5H6hZahmQlb" role="3cpWs9">
            <property role="TrG5h" value="rightPathIt" />
            <node concept="3uibUv" id="5H6hZahmQjE" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
              <node concept="3qUE_q" id="5H6hZahmQjR" role="11_B2D">
                <node concept="3uibUv" id="5H6hZahmQjS" role="3qUE_r">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5H6hZahmQlc" role="33vP2m">
              <node concept="37vLTw" id="5H6hZahmQld" role="2Oq$k0">
                <ref role="3cqZAo" node="5H6hZahmK7q" resolve="rightPaths" />
              </node>
              <node concept="liA8E" id="5H6hZahmQle" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.iterator():java.util.Iterator" resolve="iterator" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2DKqMqOt5ZX" role="3cqZAp" />
        <node concept="3cpWs8" id="5H6hZahmUVE" role="3cqZAp">
          <node concept="3cpWsn" id="5H6hZahmUVF" role="3cpWs9">
            <property role="TrG5h" value="nextPathLeft" />
            <node concept="3uibUv" id="5H6hZahmUVG" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
            <node concept="2OqwBi" id="5H6hZahmUVI" role="33vP2m">
              <node concept="37vLTw" id="5H6hZahmUVJ" role="2Oq$k0">
                <ref role="3cqZAo" node="5H6hZahmMWh" resolve="leftPathIt" />
              </node>
              <node concept="liA8E" id="5H6hZahmUVK" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5H6hZahmVAM" role="3cqZAp">
          <node concept="3cpWsn" id="5H6hZahmVAN" role="3cpWs9">
            <property role="TrG5h" value="nextPathRight" />
            <node concept="3uibUv" id="5H6hZahmVAO" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
            <node concept="2OqwBi" id="5H6hZahmVAQ" role="33vP2m">
              <node concept="37vLTw" id="5H6hZahmVAR" role="2Oq$k0">
                <ref role="3cqZAo" node="5H6hZahmQlb" resolve="rightPathIt" />
              </node>
              <node concept="liA8E" id="5H6hZahmVAS" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5H6hZaho6br" role="3cqZAp" />
        <node concept="2$JKZl" id="5H6hZahmRXj" role="3cqZAp">
          <node concept="3clFbS" id="5H6hZahmRXl" role="2LFqv$">
            <node concept="3clFbH" id="5H6hZahmTKW" role="3cqZAp" />
            <node concept="3SKdUt" id="5H6hZahnxrc" role="3cqZAp">
              <node concept="3SKdUq" id="5H6hZahnxrd" role="3SKWNk">
                <property role="3SKdUp" value="TODO: factor out standard feature names" />
              </node>
            </node>
            <node concept="3cpWs8" id="5H6hZahnxre" role="3cqZAp">
              <node concept="3cpWsn" id="5H6hZahnxrf" role="3cpWs9">
                <property role="TrG5h" value="leftPath" />
                <node concept="3uibUv" id="5H6hZahnxrg" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3qUE_q" id="5H6hZahnxrh" role="11_B2D">
                    <node concept="3uibUv" id="5H6hZahnxri" role="3qUE_r">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5H6hZahnxrk" role="33vP2m">
                  <node concept="2YIFZM" id="5H6hZahnxrl" role="2Oq$k0">
                    <ref role="37wK5l" to="ie8e:3OPtF03pX11" resolve="findList" />
                    <ref role="1Pybhc" to="ie8e:3JgCwkqd3K7" resolve="Finders" />
                    <node concept="37vLTw" id="5H6hZahny3u" role="37wK5m">
                      <ref role="3cqZAo" node="5H6hZahmUVF" resolve="nextPathLeft" />
                    </node>
                    <node concept="Xl_RD" id="5H6hZahnxrp" role="37wK5m">
                      <property role="Xl_RC" value="list" />
                    </node>
                    <node concept="Xl_RD" id="5H6hZahqI5t" role="37wK5m">
                      <property role="Xl_RC" value="contents" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5H6hZahnxrr" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:3OPtF03nYWm" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5H6hZahnxrs" role="3cqZAp">
              <node concept="3cpWsn" id="5H6hZahnxrt" role="3cpWs9">
                <property role="TrG5h" value="rightPath" />
                <node concept="3uibUv" id="5H6hZahnxru" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3qUE_q" id="5H6hZahnxrv" role="11_B2D">
                    <node concept="3uibUv" id="5H6hZahnxrw" role="3qUE_r">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5H6hZahnxry" role="33vP2m">
                  <node concept="2YIFZM" id="5H6hZahnxrz" role="2Oq$k0">
                    <ref role="37wK5l" to="ie8e:3OPtF03pX11" resolve="findList" />
                    <ref role="1Pybhc" to="ie8e:3JgCwkqd3K7" resolve="Finders" />
                    <node concept="37vLTw" id="5H6hZahnya_" role="37wK5m">
                      <ref role="3cqZAo" node="5H6hZahmVAN" resolve="nextPathRight" />
                    </node>
                    <node concept="Xl_RD" id="5H6hZahnxrB" role="37wK5m">
                      <property role="Xl_RC" value="list" />
                    </node>
                    <node concept="Xl_RD" id="5H6hZahqJhY" role="37wK5m">
                      <property role="Xl_RC" value="contents" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5H6hZahnxrD" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:3OPtF03nYWm" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5H6hZahnAZ5" role="3cqZAp" />
            <node concept="3cpWs8" id="5H6hZahnE0c" role="3cqZAp">
              <node concept="3cpWsn" id="5H6hZahnE0d" role="3cpWs9">
                <property role="TrG5h" value="leftIt" />
                <node concept="3uibUv" id="5H6hZahnDZy" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
                  <node concept="3qUE_q" id="5H6hZahnDZJ" role="11_B2D">
                    <node concept="3uibUv" id="5H6hZahnDZK" role="3qUE_r">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5H6hZahnE0e" role="33vP2m">
                  <node concept="37vLTw" id="5H6hZahnE0f" role="2Oq$k0">
                    <ref role="3cqZAo" node="5H6hZahnxrf" resolve="leftPath" />
                  </node>
                  <node concept="liA8E" id="5H6hZahnE0g" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.iterator():java.util.Iterator" resolve="iterator" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5H6hZahnHty" role="3cqZAp">
              <node concept="3cpWsn" id="5H6hZahnHtz" role="3cpWs9">
                <property role="TrG5h" value="rightIt" />
                <node concept="3uibUv" id="5H6hZahnHqj" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
                  <node concept="3qUE_q" id="5H6hZahnHqw" role="11_B2D">
                    <node concept="3uibUv" id="5H6hZahnHqx" role="3qUE_r">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5H6hZahnHt$" role="33vP2m">
                  <node concept="37vLTw" id="5H6hZahnHt_" role="2Oq$k0">
                    <ref role="3cqZAo" node="5H6hZahnxrt" resolve="rightPath" />
                  </node>
                  <node concept="liA8E" id="5H6hZahnHtA" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.iterator():java.util.Iterator" resolve="iterator" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5H6hZahnBL5" role="3cqZAp" />
            <node concept="3cpWs8" id="5H6hZahnqqq" role="3cqZAp">
              <node concept="3cpWsn" id="5H6hZahnqqr" role="3cpWs9">
                <property role="TrG5h" value="lastMatch" />
                <node concept="3uibUv" id="5H6hZahnqo0" role="1tU5fm">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
                <node concept="10Nm6u" id="5H6hZahnrmr" role="33vP2m" />
              </node>
            </node>
            <node concept="2$JKZl" id="5H6hZahnJqJ" role="3cqZAp">
              <node concept="3clFbS" id="5H6hZahnJqL" role="2LFqv$">
                <node concept="3cpWs8" id="5H6hZahnLIG" role="3cqZAp">
                  <node concept="3cpWsn" id="5H6hZahnLIH" role="3cpWs9">
                    <property role="TrG5h" value="nextLeft" />
                    <node concept="3uibUv" id="5H6hZahnLII" role="1tU5fm">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                    <node concept="2OqwBi" id="5H6hZahnLIK" role="33vP2m">
                      <node concept="37vLTw" id="5H6hZahnLIL" role="2Oq$k0">
                        <ref role="3cqZAo" node="5H6hZahnE0d" resolve="leftIt" />
                      </node>
                      <node concept="liA8E" id="5H6hZahnLIM" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5H6hZahnMGR" role="3cqZAp">
                  <node concept="3cpWsn" id="5H6hZahnMGS" role="3cpWs9">
                    <property role="TrG5h" value="nextRight" />
                    <node concept="3uibUv" id="5H6hZahnMGT" role="1tU5fm">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                    <node concept="2OqwBi" id="5H6hZahnMGV" role="33vP2m">
                      <node concept="37vLTw" id="5H6hZahnMGW" role="2Oq$k0">
                        <ref role="3cqZAo" node="5H6hZahnHtz" resolve="rightIt" />
                      </node>
                      <node concept="liA8E" id="5H6hZahnMGX" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="5H6hZahnL4q" role="3cqZAp" />
                <node concept="3cpWs8" id="5H6hZahnpsC" role="3cqZAp">
                  <node concept="3cpWsn" id="5H6hZahnpsD" role="3cpWs9">
                    <property role="TrG5h" value="match" />
                    <node concept="10P_77" id="5H6hZahnprw" role="1tU5fm" />
                    <node concept="2OqwBi" id="5H6hZahnpsE" role="33vP2m">
                      <node concept="37vLTw" id="4xBopTztzmi" role="2Oq$k0">
                        <ref role="3cqZAo" node="4xBopTztvtj" resolve="computingSession" />
                      </node>
                      <node concept="liA8E" id="5H6hZahnpsG" role="2OqNvi">
                        <ref role="37wK5l" to="bspi:4xBopTznHV5" resolve="ask" />
                        <node concept="10M0yZ" id="5H6hZahnpsH" role="37wK5m">
                          <ref role="1PxDUh" to="oy3s:2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                          <ref role="3cqZAo" to="oy3s:2GO7tyJY8Rr" resolve="INSTANCE" />
                        </node>
                        <node concept="37vLTw" id="6r6omRle21L" role="37wK5m">
                          <ref role="3cqZAo" node="5H6hZahnLIH" resolve="nextLeft" />
                        </node>
                        <node concept="37vLTw" id="6r6omRle23D" role="37wK5m">
                          <ref role="3cqZAo" node="5H6hZahnMGS" resolve="nextRight" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5H6hZahnpXw" role="3cqZAp">
                  <node concept="3clFbS" id="5H6hZahnpXy" role="3clFbx">
                    <node concept="3clFbF" id="5H6hZahnqsO" role="3cqZAp">
                      <node concept="37vLTI" id="5H6hZahnqsQ" role="3clFbG">
                        <node concept="37vLTw" id="5H6hZahqU8S" role="37vLTx">
                          <ref role="3cqZAo" node="5H6hZahnLIH" resolve="nextLeft" />
                        </node>
                        <node concept="37vLTw" id="5H6hZahnqsU" role="37vLTJ">
                          <ref role="3cqZAo" node="5H6hZahnqqr" resolve="lastMatch" />
                        </node>
                      </node>
                    </node>
                    <node concept="3N13vt" id="5H6hZahnrop" role="3cqZAp" />
                    <node concept="3clFbH" id="5H6hZahnrow" role="3cqZAp" />
                  </node>
                  <node concept="37vLTw" id="5H6hZahnq5a" role="3clFbw">
                    <ref role="3cqZAo" node="5H6hZahnpsD" resolve="match" />
                  </node>
                  <node concept="9aQIb" id="5H6hZahnroJ" role="9aQIa">
                    <node concept="3clFbS" id="5H6hZahnroK" role="9aQI4">
                      <node concept="3zACq4" id="5H6hZahnrt8" role="3cqZAp" />
                      <node concept="3clFbH" id="5H6hZahnrp7" role="3cqZAp" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="5H6hZahnK9F" role="2$JKZa">
                <node concept="2OqwBi" id="5H6hZahnKfu" role="3uHU7w">
                  <node concept="37vLTw" id="5H6hZahnKbY" role="2Oq$k0">
                    <ref role="3cqZAo" node="5H6hZahnHtz" resolve="rightIt" />
                  </node>
                  <node concept="liA8E" id="5H6hZahnKup" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5H6hZahnJNw" role="3uHU7B">
                  <node concept="37vLTw" id="5H6hZahnJKP" role="2Oq$k0">
                    <ref role="3cqZAo" node="5H6hZahnE0d" resolve="leftIt" />
                  </node>
                  <node concept="liA8E" id="5H6hZahnK1t" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5H6hZahnSV_" role="3cqZAp" />
            <node concept="3clFbJ" id="5H6hZahnsvh" role="3cqZAp">
              <node concept="3clFbS" id="5H6hZahnsvj" role="3clFbx">
                <node concept="3clFbJ" id="5H6hZaho1D_" role="3cqZAp">
                  <node concept="3clFbS" id="5H6hZaho1DB" role="3clFbx">
                    <node concept="3clFbF" id="5H6hZaho0Se" role="3cqZAp">
                      <node concept="2OqwBi" id="5H6hZaho14p" role="3clFbG">
                        <node concept="37vLTw" id="5H6hZaho0Sc" role="2Oq$k0">
                          <ref role="3cqZAo" node="5H6hZahnYQX" resolve="resultList" />
                        </node>
                        <node concept="liA8E" id="5H6hZaho4Zt" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                          <node concept="37vLTw" id="5H6hZaho52S" role="37wK5m">
                            <ref role="3cqZAo" node="5H6hZahnqqr" resolve="lastMatch" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="5H6hZaho3Kr" role="3clFbw">
                    <node concept="2OqwBi" id="5H6hZaho3Kt" role="3fr31v">
                      <node concept="37vLTw" id="5H6hZaho3Ku" role="2Oq$k0">
                        <ref role="3cqZAo" node="5H6hZahnYQX" resolve="resultList" />
                      </node>
                      <node concept="liA8E" id="5H6hZaho3Kv" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object):boolean" resolve="contains" />
                        <node concept="37vLTw" id="5H6hZaho3Kw" role="37wK5m">
                          <ref role="3cqZAo" node="5H6hZahnqqr" resolve="lastMatch" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="5H6hZaho55c" role="3cqZAp" />
                <node concept="3clFbF" id="5H6hZahqQ9t" role="3cqZAp">
                  <node concept="37vLTI" id="5H6hZahqQ9u" role="3clFbG">
                    <node concept="37vLTw" id="5H6hZahqQ9v" role="37vLTJ">
                      <ref role="3cqZAo" node="5H6hZahmUVF" resolve="nextPathLeft" />
                    </node>
                    <node concept="3K4zz7" id="5H6hZahqQ9w" role="37vLTx">
                      <node concept="10Nm6u" id="5H6hZahqQ9x" role="3K4GZi" />
                      <node concept="2OqwBi" id="5H6hZahqQ9y" role="3K4Cdx">
                        <node concept="37vLTw" id="5H6hZahqQ9z" role="2Oq$k0">
                          <ref role="3cqZAo" node="5H6hZahmMWh" resolve="leftPathIt" />
                        </node>
                        <node concept="liA8E" id="5H6hZahqQ9$" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5H6hZahqQ9_" role="3K4E3e">
                        <node concept="37vLTw" id="5H6hZahqQ9A" role="2Oq$k0">
                          <ref role="3cqZAo" node="5H6hZahmMWh" resolve="leftPathIt" />
                        </node>
                        <node concept="liA8E" id="5H6hZahqQ9B" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5H6hZahqRGe" role="3cqZAp">
                  <node concept="37vLTI" id="5H6hZahqRGf" role="3clFbG">
                    <node concept="37vLTw" id="5H6hZahqRGg" role="37vLTJ">
                      <ref role="3cqZAo" node="5H6hZahmVAN" resolve="nextPathRight" />
                    </node>
                    <node concept="3K4zz7" id="5H6hZahqRGh" role="37vLTx">
                      <node concept="10Nm6u" id="5H6hZahqRGi" role="3K4GZi" />
                      <node concept="2OqwBi" id="5H6hZahqRGj" role="3K4Cdx">
                        <node concept="37vLTw" id="5H6hZahqRGk" role="2Oq$k0">
                          <ref role="3cqZAo" node="5H6hZahmQlb" resolve="rightPathIt" />
                        </node>
                        <node concept="liA8E" id="5H6hZahqRGl" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5H6hZahqRGm" role="3K4E3e">
                        <node concept="37vLTw" id="5H6hZahqRGn" role="2Oq$k0">
                          <ref role="3cqZAo" node="5H6hZahmQlb" resolve="rightPathIt" />
                        </node>
                        <node concept="liA8E" id="5H6hZahqRGo" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="5H6hZahow6H" role="3cqZAp" />
              </node>
              <node concept="3y3z36" id="5H6hZahntvf" role="3clFbw">
                <node concept="10Nm6u" id="5H6hZahntTO" role="3uHU7w" />
                <node concept="37vLTw" id="5H6hZahnsWV" role="3uHU7B">
                  <ref role="3cqZAo" node="5H6hZahnqqr" resolve="lastMatch" />
                </node>
              </node>
              <node concept="9aQIb" id="5H6hZahoyNW" role="9aQIa">
                <node concept="3clFbS" id="5H6hZahoyNX" role="9aQI4">
                  <node concept="3cpWs8" id="5H6hZahoBbK" role="3cqZAp">
                    <node concept="3cpWsn" id="5H6hZahoBbL" role="3cpWs9">
                      <property role="TrG5h" value="compare" />
                      <node concept="10Oyi0" id="5H6hZahoBbe" role="1tU5fm" />
                      <node concept="1rXfSq" id="5H6hZahoBbM" role="33vP2m">
                        <ref role="37wK5l" node="5H6hZahoyat" resolve="compare" />
                        <node concept="2OqwBi" id="5H6hZahoBbN" role="37wK5m">
                          <node concept="37vLTw" id="5H6hZahoBbO" role="2Oq$k0">
                            <ref role="3cqZAo" node="5H6hZahnxrf" resolve="leftPath" />
                          </node>
                          <node concept="liA8E" id="5H6hZahoBbP" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                            <node concept="3cmrfG" id="5H6hZahoBbQ" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5H6hZahoBbR" role="37wK5m">
                          <node concept="37vLTw" id="5H6hZahoBbS" role="2Oq$k0">
                            <ref role="3cqZAo" node="5H6hZahnxrt" resolve="rightPath" />
                          </node>
                          <node concept="liA8E" id="5H6hZahoBbT" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                            <node concept="3cmrfG" id="5H6hZahoBbU" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="5H6hZahoBrj" role="3cqZAp">
                    <node concept="3clFbS" id="5H6hZahoBrl" role="3clFbx">
                      <node concept="3clFbF" id="5H6hZahoCGC" role="3cqZAp">
                        <node concept="37vLTI" id="5H6hZahoCGD" role="3clFbG">
                          <node concept="37vLTw" id="5H6hZahoCGH" role="37vLTJ">
                            <ref role="3cqZAo" node="5H6hZahmUVF" resolve="nextPathLeft" />
                          </node>
                          <node concept="3K4zz7" id="5H6hZahoE0G" role="37vLTx">
                            <node concept="10Nm6u" id="5H6hZahoE6u" role="3K4GZi" />
                            <node concept="2OqwBi" id="5H6hZahoDBc" role="3K4Cdx">
                              <node concept="37vLTw" id="5H6hZahoD$H" role="2Oq$k0">
                                <ref role="3cqZAo" node="5H6hZahmMWh" resolve="leftPathIt" />
                              </node>
                              <node concept="liA8E" id="5H6hZahoDPC" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="5H6hZahoCGE" role="3K4E3e">
                              <node concept="37vLTw" id="5H6hZahoCGF" role="2Oq$k0">
                                <ref role="3cqZAo" node="5H6hZahmMWh" resolve="leftPathIt" />
                              </node>
                              <node concept="liA8E" id="5H6hZahoCGG" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="5H6hZahoCGv" role="3cqZAp" />
                    </node>
                    <node concept="3eOVzh" id="5H6hZahoCcf" role="3clFbw">
                      <node concept="3cmrfG" id="5H6hZahoCcw" role="3uHU7w">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="37vLTw" id="5H6hZahoBz6" role="3uHU7B">
                        <ref role="3cqZAo" node="5H6hZahoBbL" resolve="compare" />
                      </node>
                    </node>
                    <node concept="9aQIb" id="5H6hZahoD6$" role="9aQIa">
                      <node concept="3clFbS" id="5H6hZahoD6_" role="9aQI4">
                        <node concept="3clFbF" id="5H6hZahoCJA" role="3cqZAp">
                          <node concept="37vLTI" id="5H6hZahoCJB" role="3clFbG">
                            <node concept="37vLTw" id="5H6hZahoCJF" role="37vLTJ">
                              <ref role="3cqZAo" node="5H6hZahmVAN" resolve="nextPathRight" />
                            </node>
                            <node concept="3K4zz7" id="5H6hZahoEM1" role="37vLTx">
                              <node concept="10Nm6u" id="5H6hZahoERM" role="3K4GZi" />
                              <node concept="2OqwBi" id="5H6hZahoEoy" role="3K4Cdx">
                                <node concept="37vLTw" id="5H6hZahoElP" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5H6hZahmQlb" resolve="rightPathIt" />
                                </node>
                                <node concept="liA8E" id="5H6hZahoEAX" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="5H6hZahoCJC" role="3K4E3e">
                                <node concept="37vLTw" id="5H6hZahoCJD" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5H6hZahmQlb" resolve="rightPathIt" />
                                </node>
                                <node concept="liA8E" id="5H6hZahoCJE" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="5H6hZahopqN" role="2$JKZa">
            <node concept="3y3z36" id="5H6hZahoqlA" role="3uHU7w">
              <node concept="10Nm6u" id="5H6hZahoqmB" role="3uHU7w" />
              <node concept="37vLTw" id="5H6hZahoqcR" role="3uHU7B">
                <ref role="3cqZAo" node="5H6hZahmVAN" resolve="nextPathRight" />
              </node>
            </node>
            <node concept="3y3z36" id="5H6hZahooCT" role="3uHU7B">
              <node concept="37vLTw" id="5H6hZahonJR" role="3uHU7B">
                <ref role="3cqZAo" node="5H6hZahmUVF" resolve="nextPathLeft" />
              </node>
              <node concept="10Nm6u" id="5H6hZahopq5" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5H6hZahnr_9" role="3cqZAp" />
        <node concept="3clFbJ" id="5H6hZahoReK" role="3cqZAp">
          <node concept="2OqwBi" id="5H6hZahoW49" role="3clFbw">
            <node concept="37vLTw" id="5H6hZahoW4a" role="2Oq$k0">
              <ref role="3cqZAo" node="5H6hZahnYQX" resolve="resultList" />
            </node>
            <node concept="liA8E" id="5H6hZahoW4b" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
            </node>
          </node>
          <node concept="3clFbS" id="5H6hZahsjFL" role="3clFbx">
            <node concept="3cpWs6" id="4JRKVCv29eV" role="3cqZAp">
              <node concept="3clFbT" id="4JRKVCv2bHD" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5H6hZahoYYv" role="3cqZAp" />
        <node concept="3clFbF" id="5H6hZahpbYO" role="3cqZAp">
          <node concept="2OqwBi" id="5H6hZahpbZD" role="3clFbG">
            <node concept="37vLTw" id="4xBopTzt_1g" role="2Oq$k0">
              <ref role="3cqZAo" node="4xBopTztvtj" resolve="computingSession" />
            </node>
            <node concept="liA8E" id="5H6hZahpc3J" role="2OqNvi">
              <ref role="37wK5l" to="bspi:4xBopTznPKO" resolve="tell" />
              <node concept="10M0yZ" id="4xBopTztd7s" role="37wK5m">
                <ref role="1PxDUh" to="oy3s:3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
                <ref role="3cqZAo" to="oy3s:3HJTsBn4kQs" resolve="INSTANCE" />
              </node>
              <node concept="37vLTw" id="5H6hZahpcMG" role="37wK5m">
                <ref role="3cqZAo" node="5H6hZahmlpn" resolve="result" />
              </node>
              <node concept="2ShNRf" id="5H6hZahpnpU" role="37wK5m">
                <node concept="1pGfFk" id="5H6hZahpnJ_" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="TreeLogical" />
                  <node concept="1rXfSq" id="5H6hZahpnTD" role="37wK5m">
                    <ref role="37wK5l" node="5H6hZahoMly" resolve="buildLub" />
                    <node concept="37vLTw" id="5H6hZahpo7W" role="37wK5m">
                      <ref role="3cqZAo" node="5H6hZahnYQX" resolve="resultList" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5H6hZahmREM" role="3cqZAp" />
        <node concept="3clFbF" id="5H6hZahmrgk" role="3cqZAp">
          <node concept="3clFbT" id="5H6hZahmrgj" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="5H6hZahoII1" role="lGtFl">
        <node concept="TZ5HA" id="5H6hZahoII2" role="TZ5H$">
          <node concept="1dT_AC" id="5H6hZahoII3" role="1dT_Ay">
            <property role="1dT_AB" value="Finds the lowest upper bound of two sets of subtype paths. " />
          </node>
        </node>
        <node concept="TZ5HA" id="5H6hZahoJTR" role="TZ5H$">
          <node concept="1dT_AC" id="5H6hZahoJTS" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="5H6hZahoJU1" role="TZ5H$">
          <node concept="1dT_AC" id="5H6hZahoJU2" role="1dT_Ay">
            <property role="1dT_AB" value="Parameters &quot;left&quot; and &quot;right&quot; contain the lists of &quot;subtype paths&quot; organized as follows:" />
          </node>
        </node>
        <node concept="TZ5HA" id="5H6hZahoJUx" role="TZ5H$">
          <node concept="1dT_AC" id="5H6hZahoJUy" role="1dT_Ay">
            <property role="1dT_AB" value="  - every path starts at the top type and continues down to the type, at which it originated" />
          </node>
        </node>
        <node concept="TZ5HA" id="5H6hZahoJVO" role="TZ5H$">
          <node concept="1dT_AC" id="5H6hZahoJVP" role="1dT_Ay">
            <property role="1dT_AB" value="  - paths on both lists are sorted naturally on the first element " />
          </node>
        </node>
        <node concept="TZ5HA" id="5H6hZahoJWo" role="TZ5H$">
          <node concept="1dT_AC" id="5H6hZahoJWp" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="5H6hZahoJWY" role="TZ5H$">
          <node concept="1dT_AC" id="5H6hZahoJWZ" role="1dT_Ay">
            <property role="1dT_AB" value="Both &quot;left&quot; and &quot;right&quot; must be bound, otherwise &quot;false&quot; is returned. " />
          </node>
        </node>
        <node concept="TZ5HA" id="5H6hZahoJXW" role="TZ5H$">
          <node concept="1dT_AC" id="5H6hZahoJXX" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="5H6hZahoJTl" role="TZ5H$">
          <node concept="1dT_AC" id="5H6hZahoJTm" role="1dT_Ay">
            <property role="1dT_AB" value="On returning &quot;true&quot;, the &quot;result&quot; variable is bound to the list of elements of the LUB intersection type." />
          </node>
        </node>
        <node concept="TZ5HA" id="5H6hZahoJTr" role="TZ5H$">
          <node concept="1dT_AC" id="5H6hZahoJTs" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5H6hZahoxnx" role="jymVt" />
    <node concept="2YIFZL" id="2DKqMqOtbrF" role="jymVt">
      <property role="TrG5h" value="findLub2" />
      <node concept="37vLTG" id="2DKqMqOtbJf" role="3clF46">
        <property role="TrG5h" value="result" />
        <node concept="3uibUv" id="2DKqMqOtbJ$" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="2DKqMqOyREC" role="3clF46">
        <property role="TrG5h" value="leftRaw" />
        <node concept="3uibUv" id="2c3nq4GUapK" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:2c3nq4GU7kP" resolve="ListLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="2DKqMqOySOC" role="3clF46">
        <property role="TrG5h" value="rightRaw" />
        <node concept="3uibUv" id="2c3nq4GUb2M" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:2c3nq4GU7kP" resolve="ListLogical" />
        </node>
      </node>
      <node concept="10P_77" id="2DKqMqOtbJ4" role="3clF45" />
      <node concept="3Tm1VV" id="2DKqMqOtbrI" role="1B3o_S" />
      <node concept="3clFbS" id="2DKqMqOtbrJ" role="3clF47">
        <node concept="3cpWs8" id="2DKqMqOyH_z" role="3cqZAp">
          <node concept="3cpWsn" id="2DKqMqOyH_A" role="3cpWs9">
            <property role="TrG5h" value="left" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="2DKqMqOyH_C" role="1tU5fm">
              <ref role="3uigEE" to="oy3s:2DKqMqOqXrq" resolve="DataLogical" />
              <node concept="3uibUv" id="2DKqMqOyH_D" role="11_B2D">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="2DKqMqOyH_E" role="11_B2D">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="2DKqMqOyH_F" role="11_B2D">
                    <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="10QFUN" id="2DKqMqOyVcU" role="33vP2m">
              <node concept="3uibUv" id="2DKqMqOyVcO" role="10QFUM">
                <ref role="3uigEE" to="oy3s:2DKqMqOqXrq" resolve="DataLogical" />
                <node concept="3uibUv" id="2DKqMqOyVcP" role="11_B2D">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="2DKqMqOyVcQ" role="11_B2D">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="2DKqMqOyVcR" role="11_B2D">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1eOMI4" id="2p$DpYKQVks" role="10QFUP">
                <node concept="10QFUN" id="2p$DpYKQVkp" role="1eOMHV">
                  <node concept="3uibUv" id="2p$DpYKQW3_" role="10QFUM">
                    <ref role="3uigEE" to="oy3s:2DKqMqOqXrq" resolve="DataLogical" />
                  </node>
                  <node concept="37vLTw" id="2p$DpYKQVku" role="10QFUP">
                    <ref role="3cqZAo" node="2DKqMqOyREC" resolve="leftRaw" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2DKqMqOyIQL" role="3cqZAp">
          <node concept="3cpWsn" id="2DKqMqOyIQO" role="3cpWs9">
            <property role="TrG5h" value="right" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="2DKqMqOyIQQ" role="1tU5fm">
              <ref role="3uigEE" to="oy3s:2DKqMqOqXrq" resolve="DataLogical" />
              <node concept="3uibUv" id="2DKqMqOyIQR" role="11_B2D">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="2DKqMqOyIQS" role="11_B2D">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="2DKqMqOyIQT" role="11_B2D">
                    <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="10QFUN" id="2DKqMqOyX3Q" role="33vP2m">
              <node concept="3uibUv" id="2DKqMqOyX3K" role="10QFUM">
                <ref role="3uigEE" to="oy3s:2DKqMqOqXrq" resolve="DataLogical" />
                <node concept="3uibUv" id="2DKqMqOyX3L" role="11_B2D">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="2DKqMqOyX3M" role="11_B2D">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="2DKqMqOyX3N" role="11_B2D">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1eOMI4" id="2p$DpYKQWFO" role="10QFUP">
                <node concept="10QFUN" id="2p$DpYKQWFL" role="1eOMHV">
                  <node concept="3uibUv" id="2p$DpYKQXqu" role="10QFUM">
                    <ref role="3uigEE" to="oy3s:2DKqMqOqXrq" resolve="DataLogical" />
                  </node>
                  <node concept="37vLTw" id="2p$DpYKQWFQ" role="10QFUP">
                    <ref role="3cqZAo" node="2DKqMqOySOC" resolve="rightRaw" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2DKqMqOyGom" role="3cqZAp" />
        <node concept="3cpWs8" id="2DKqMqOtkGX" role="3cqZAp">
          <node concept="3cpWsn" id="2DKqMqOtkGY" role="3cpWs9">
            <property role="TrG5h" value="leftPaths" />
            <node concept="3uibUv" id="2DKqMqOtkGN" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2DKqMqOtWlv" role="11_B2D">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="2DKqMqOtWxx" role="11_B2D">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2DKqMqOtkGZ" role="33vP2m">
              <node concept="2OqwBi" id="2DKqMqOtkH0" role="2Oq$k0">
                <node concept="37vLTw" id="2DKqMqOtkH1" role="2Oq$k0">
                  <ref role="3cqZAo" node="2DKqMqOyH_A" resolve="left" />
                </node>
                <node concept="liA8E" id="2DKqMqOtkH2" role="2OqNvi">
                  <ref role="37wK5l" to="oy3s:2DKqMqOr0kU" resolve="findRoot" />
                </node>
              </node>
              <node concept="liA8E" id="2DKqMqOtkH3" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2DKqMqOtoUk" role="3cqZAp">
          <node concept="3cpWsn" id="2DKqMqOtoUl" role="3cpWs9">
            <property role="TrG5h" value="rightPaths" />
            <node concept="3uibUv" id="2DKqMqOtoUb" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2DKqMqOtXi$" role="11_B2D">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="2DKqMqOtXu3" role="11_B2D">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2DKqMqOtoUm" role="33vP2m">
              <node concept="2OqwBi" id="2DKqMqOtoUn" role="2Oq$k0">
                <node concept="37vLTw" id="2DKqMqOtoUo" role="2Oq$k0">
                  <ref role="3cqZAo" node="2DKqMqOyIQO" resolve="right" />
                </node>
                <node concept="liA8E" id="2DKqMqOtoUp" role="2OqNvi">
                  <ref role="37wK5l" to="oy3s:2DKqMqOr0kU" resolve="findRoot" />
                </node>
              </node>
              <node concept="liA8E" id="2DKqMqOtoUq" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2DKqMqOthfB" role="3cqZAp" />
        <node concept="3clFbJ" id="2DKqMqOteM0" role="3cqZAp">
          <node concept="3clFbS" id="2DKqMqOteM2" role="3clFbx">
            <node concept="3cpWs6" id="2DKqMqOtqRj" role="3cqZAp">
              <node concept="3clFbT" id="2DKqMqOtqVX" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="2DKqMqOtp_q" role="3clFbw">
            <node concept="3clFbC" id="2DKqMqOtqAv" role="3uHU7B">
              <node concept="10Nm6u" id="2DKqMqOtqBs" role="3uHU7w" />
              <node concept="37vLTw" id="2DKqMqOtpUI" role="3uHU7B">
                <ref role="3cqZAo" node="2DKqMqOtkGY" resolve="leftPaths" />
              </node>
            </node>
            <node concept="2OqwBi" id="2DKqMqOtf7S" role="3uHU7w">
              <node concept="37vLTw" id="2DKqMqOtp$M" role="2Oq$k0">
                <ref role="3cqZAo" node="2DKqMqOtkGY" resolve="leftPaths" />
              </node>
              <node concept="liA8E" id="2DKqMqOtqPm" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2DKqMqOtr4S" role="3cqZAp">
          <node concept="3clFbS" id="2DKqMqOtr4T" role="3clFbx">
            <node concept="3cpWs6" id="2DKqMqOtr4U" role="3cqZAp">
              <node concept="3clFbT" id="2DKqMqOtr4V" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="2DKqMqOtr4W" role="3clFbw">
            <node concept="3clFbC" id="2DKqMqOtr4X" role="3uHU7B">
              <node concept="10Nm6u" id="2DKqMqOtr4Y" role="3uHU7w" />
              <node concept="37vLTw" id="2DKqMqOtrgL" role="3uHU7B">
                <ref role="3cqZAo" node="2DKqMqOtoUl" resolve="rightPaths" />
              </node>
            </node>
            <node concept="2OqwBi" id="2DKqMqOtr50" role="3uHU7w">
              <node concept="37vLTw" id="2DKqMqOtriB" role="2Oq$k0">
                <ref role="3cqZAo" node="2DKqMqOtoUl" resolve="rightPaths" />
              </node>
              <node concept="liA8E" id="2DKqMqOtr52" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2DKqMqOtrkA" role="3cqZAp" />
        <node concept="3cpWs8" id="2DKqMqOteKq" role="3cqZAp">
          <node concept="3cpWsn" id="2DKqMqOteKr" role="3cpWs9">
            <property role="TrG5h" value="computingSession" />
            <node concept="3uibUv" id="2DKqMqOteKs" role="1tU5fm">
              <ref role="3uigEE" to="bspi:6Kcfpq7B0b0" resolve="ComputingSession" />
            </node>
            <node concept="2YIFZM" id="2DKqMqOteKt" role="33vP2m">
              <ref role="1Pybhc" to="bspi:6Kcfpq7B0b0" resolve="ComputingSession" />
              <ref role="37wK5l" to="bspi:4xBopTzo4e1" resolve="getDefault" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2DKqMqOtrS0" role="3cqZAp">
          <node concept="3cpWsn" id="2DKqMqOtrS1" role="3cpWs9">
            <property role="TrG5h" value="resultList" />
            <node concept="3uibUv" id="2DKqMqOtrS2" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2DKqMqOtrS3" role="11_B2D">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
            </node>
            <node concept="2ShNRf" id="2DKqMqOtrS5" role="33vP2m">
              <node concept="1pGfFk" id="2DKqMqOtrS6" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2DKqMqOtrS7" role="1pMfVU">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2DKqMqOtXYF" role="3cqZAp" />
        <node concept="3cpWs8" id="2DKqMqOu2$E" role="3cqZAp">
          <node concept="3cpWsn" id="2DKqMqOu2$F" role="3cpWs9">
            <property role="TrG5h" value="leftPathsIt" />
            <node concept="3uibUv" id="2DKqMqOu2zq" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
              <node concept="3uibUv" id="2DKqMqOu2zB" role="11_B2D">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="2DKqMqOu2zC" role="11_B2D">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2DKqMqOu2$G" role="33vP2m">
              <node concept="37vLTw" id="2DKqMqOu2$H" role="2Oq$k0">
                <ref role="3cqZAo" node="2DKqMqOtkGY" resolve="leftPaths" />
              </node>
              <node concept="liA8E" id="2DKqMqOu2$I" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.iterator():java.util.Iterator" resolve="iterator" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2DKqMqOu8P9" role="3cqZAp">
          <node concept="3cpWsn" id="2DKqMqOu8Pa" role="3cpWs9">
            <property role="TrG5h" value="rightPathsIt" />
            <node concept="3uibUv" id="2DKqMqOu8OD" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
              <node concept="3uibUv" id="2DKqMqOu8OQ" role="11_B2D">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="2DKqMqOu8OR" role="11_B2D">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2DKqMqOu8Pb" role="33vP2m">
              <node concept="37vLTw" id="2DKqMqOu8Pc" role="2Oq$k0">
                <ref role="3cqZAo" node="2DKqMqOtoUl" resolve="rightPaths" />
              </node>
              <node concept="liA8E" id="2DKqMqOu8Pd" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.iterator():java.util.Iterator" resolve="iterator" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2DKqMqOtrvI" role="3cqZAp" />
        <node concept="3cpWs8" id="2DKqMqOugee" role="3cqZAp">
          <node concept="3cpWsn" id="2DKqMqOugef" role="3cpWs9">
            <property role="TrG5h" value="nextLeftPath" />
            <node concept="3uibUv" id="2DKqMqOugdl" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2DKqMqOugds" role="11_B2D">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
            </node>
            <node concept="2OqwBi" id="2DKqMqOugeg" role="33vP2m">
              <node concept="37vLTw" id="2DKqMqOugeh" role="2Oq$k0">
                <ref role="3cqZAo" node="2DKqMqOu2$F" resolve="leftPathsIt" />
              </node>
              <node concept="liA8E" id="2DKqMqOugei" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2DKqMqOul2Z" role="3cqZAp">
          <node concept="3cpWsn" id="2DKqMqOul30" role="3cpWs9">
            <property role="TrG5h" value="nextRightPath" />
            <node concept="3uibUv" id="2DKqMqOul1H" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2DKqMqOul1O" role="11_B2D">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
            </node>
            <node concept="2OqwBi" id="2DKqMqOul31" role="33vP2m">
              <node concept="37vLTw" id="2DKqMqOul32" role="2Oq$k0">
                <ref role="3cqZAo" node="2DKqMqOu8Pa" resolve="rightPathsIt" />
              </node>
              <node concept="liA8E" id="2DKqMqOul33" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2DKqMqOuo8Y" role="3cqZAp" />
        <node concept="2$JKZl" id="2DKqMqOuc65" role="3cqZAp">
          <node concept="3clFbS" id="2DKqMqOuc67" role="2LFqv$">
            <node concept="3clFbH" id="2DKqMqOusDp" role="3cqZAp" />
            <node concept="3cpWs8" id="2DKqMqOuuDb" role="3cqZAp">
              <node concept="3cpWsn" id="2DKqMqOuuDc" role="3cpWs9">
                <property role="TrG5h" value="leftIt" />
                <node concept="3uibUv" id="2DKqMqOuuBK" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
                  <node concept="3uibUv" id="2DKqMqOuuBR" role="11_B2D">
                    <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2DKqMqOuuDd" role="33vP2m">
                  <node concept="37vLTw" id="2DKqMqOuuDe" role="2Oq$k0">
                    <ref role="3cqZAo" node="2DKqMqOugef" resolve="nextLeftPath" />
                  </node>
                  <node concept="liA8E" id="2DKqMqOuuDf" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.iterator():java.util.Iterator" resolve="iterator" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2DKqMqOuwYm" role="3cqZAp">
              <node concept="3cpWsn" id="2DKqMqOuwYn" role="3cpWs9">
                <property role="TrG5h" value="rightIt" />
                <node concept="3uibUv" id="2DKqMqOuwXH" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
                  <node concept="3uibUv" id="2DKqMqOuwXO" role="11_B2D">
                    <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2DKqMqOuwYo" role="33vP2m">
                  <node concept="37vLTw" id="2DKqMqOuwYp" role="2Oq$k0">
                    <ref role="3cqZAo" node="2DKqMqOul30" resolve="nextRightPath" />
                  </node>
                  <node concept="liA8E" id="2DKqMqOuwYq" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.iterator():java.util.Iterator" resolve="iterator" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2DKqMqOuxwV" role="3cqZAp" />
            <node concept="3cpWs8" id="2DKqMqOuxKB" role="3cqZAp">
              <node concept="3cpWsn" id="2DKqMqOuxKC" role="3cpWs9">
                <property role="TrG5h" value="lastMatch" />
                <node concept="3uibUv" id="2DKqMqOuxKD" role="1tU5fm">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
                <node concept="10Nm6u" id="2DKqMqOuxKF" role="33vP2m" />
              </node>
            </node>
            <node concept="2$JKZl" id="2DKqMqOuxKG" role="3cqZAp">
              <node concept="3clFbS" id="2DKqMqOuxKH" role="2LFqv$">
                <node concept="3cpWs8" id="2DKqMqOuxKI" role="3cqZAp">
                  <node concept="3cpWsn" id="2DKqMqOuxKJ" role="3cpWs9">
                    <property role="TrG5h" value="nextLeft" />
                    <node concept="3uibUv" id="2DKqMqOuxKK" role="1tU5fm">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                    <node concept="2OqwBi" id="2DKqMqOuxKM" role="33vP2m">
                      <node concept="37vLTw" id="2DKqMqOuxKN" role="2Oq$k0">
                        <ref role="3cqZAo" node="2DKqMqOuuDc" resolve="leftIt" />
                      </node>
                      <node concept="liA8E" id="2DKqMqOuxKO" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="2DKqMqOuxKP" role="3cqZAp">
                  <node concept="3cpWsn" id="2DKqMqOuxKQ" role="3cpWs9">
                    <property role="TrG5h" value="nextRight" />
                    <node concept="3uibUv" id="2DKqMqOuxKR" role="1tU5fm">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                    <node concept="2OqwBi" id="2DKqMqOuxKT" role="33vP2m">
                      <node concept="37vLTw" id="2DKqMqOuxKU" role="2Oq$k0">
                        <ref role="3cqZAo" node="2DKqMqOuwYn" resolve="rightIt" />
                      </node>
                      <node concept="liA8E" id="2DKqMqOuxKV" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2DKqMqOuxKW" role="3cqZAp" />
                <node concept="3cpWs8" id="2DKqMqOuxKX" role="3cqZAp">
                  <node concept="3cpWsn" id="2DKqMqOuxKY" role="3cpWs9">
                    <property role="TrG5h" value="match" />
                    <node concept="10P_77" id="2DKqMqOuxKZ" role="1tU5fm" />
                    <node concept="2OqwBi" id="2DKqMqOuxL0" role="33vP2m">
                      <node concept="37vLTw" id="2DKqMqOuxL1" role="2Oq$k0">
                        <ref role="3cqZAo" node="2DKqMqOteKr" resolve="computingSession" />
                      </node>
                      <node concept="liA8E" id="2DKqMqOuxL2" role="2OqNvi">
                        <ref role="37wK5l" to="bspi:4xBopTznHV5" resolve="ask" />
                        <node concept="10M0yZ" id="2DKqMqOuxL3" role="37wK5m">
                          <ref role="1PxDUh" to="oy3s:2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                          <ref role="3cqZAo" to="oy3s:2GO7tyJY8Rr" resolve="INSTANCE" />
                        </node>
                        <node concept="37vLTw" id="6r6omRle1Yg" role="37wK5m">
                          <ref role="3cqZAo" node="2DKqMqOuxKJ" resolve="nextLeft" />
                        </node>
                        <node concept="37vLTw" id="6r6omRle208" role="37wK5m">
                          <ref role="3cqZAo" node="2DKqMqOuxKQ" resolve="nextRight" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="2DKqMqOuxL8" role="3cqZAp">
                  <node concept="3clFbS" id="2DKqMqOuxL9" role="3clFbx">
                    <node concept="3clFbF" id="2DKqMqOuxLa" role="3cqZAp">
                      <node concept="37vLTI" id="2DKqMqOuxLb" role="3clFbG">
                        <node concept="37vLTw" id="2DKqMqOuxLc" role="37vLTx">
                          <ref role="3cqZAo" node="2DKqMqOuxKJ" resolve="nextLeft" />
                        </node>
                        <node concept="37vLTw" id="2DKqMqOuxLd" role="37vLTJ">
                          <ref role="3cqZAo" node="2DKqMqOuxKC" resolve="lastMatch" />
                        </node>
                      </node>
                    </node>
                    <node concept="3N13vt" id="2DKqMqOuxLe" role="3cqZAp" />
                    <node concept="3clFbH" id="2DKqMqOuxLf" role="3cqZAp" />
                  </node>
                  <node concept="37vLTw" id="2DKqMqOuxLg" role="3clFbw">
                    <ref role="3cqZAo" node="2DKqMqOuxKY" resolve="match" />
                  </node>
                  <node concept="9aQIb" id="2DKqMqOuxLh" role="9aQIa">
                    <node concept="3clFbS" id="2DKqMqOuxLi" role="9aQI4">
                      <node concept="3zACq4" id="2DKqMqOuxLj" role="3cqZAp" />
                      <node concept="3clFbH" id="2DKqMqOuxLk" role="3cqZAp" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="2DKqMqOuxLl" role="2$JKZa">
                <node concept="2OqwBi" id="2DKqMqOuxLm" role="3uHU7w">
                  <node concept="37vLTw" id="2DKqMqOuxLn" role="2Oq$k0">
                    <ref role="3cqZAo" node="2DKqMqOuwYn" resolve="rightIt" />
                  </node>
                  <node concept="liA8E" id="2DKqMqOuxLo" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2DKqMqOuxLp" role="3uHU7B">
                  <node concept="37vLTw" id="2DKqMqOuxLq" role="2Oq$k0">
                    <ref role="3cqZAo" node="2DKqMqOuuDc" resolve="leftIt" />
                  </node>
                  <node concept="liA8E" id="2DKqMqOuxLr" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2DKqMqOuxLu" role="3cqZAp" />
            <node concept="3clFbJ" id="2DKqMqOuyx2" role="3cqZAp">
              <node concept="3clFbS" id="2DKqMqOuyx3" role="3clFbx">
                <node concept="3clFbJ" id="2DKqMqOuyx4" role="3cqZAp">
                  <node concept="3clFbS" id="2DKqMqOuyx5" role="3clFbx">
                    <node concept="3clFbF" id="2DKqMqOuyx6" role="3cqZAp">
                      <node concept="2OqwBi" id="2DKqMqOuyx7" role="3clFbG">
                        <node concept="37vLTw" id="2DKqMqOuyx8" role="2Oq$k0">
                          <ref role="3cqZAo" node="2DKqMqOtrS1" resolve="resultList" />
                        </node>
                        <node concept="liA8E" id="2DKqMqOuyx9" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                          <node concept="37vLTw" id="2DKqMqOuyxa" role="37wK5m">
                            <ref role="3cqZAo" node="2DKqMqOuxKC" resolve="lastMatch" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="2DKqMqOuyxb" role="3clFbw">
                    <node concept="2OqwBi" id="2DKqMqOuyxc" role="3fr31v">
                      <node concept="37vLTw" id="2DKqMqOuyxd" role="2Oq$k0">
                        <ref role="3cqZAo" node="2DKqMqOtrS1" resolve="resultList" />
                      </node>
                      <node concept="liA8E" id="2DKqMqOuyxe" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object):boolean" resolve="contains" />
                        <node concept="37vLTw" id="2DKqMqOuyxf" role="37wK5m">
                          <ref role="3cqZAo" node="2DKqMqOuxKC" resolve="lastMatch" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2DKqMqOuyxg" role="3cqZAp" />
                <node concept="3clFbF" id="2DKqMqOuyxh" role="3cqZAp">
                  <node concept="37vLTI" id="2DKqMqOuyxi" role="3clFbG">
                    <node concept="37vLTw" id="2DKqMqOuzSN" role="37vLTJ">
                      <ref role="3cqZAo" node="2DKqMqOugef" resolve="nextLeftPath" />
                    </node>
                    <node concept="3K4zz7" id="2DKqMqOuyxk" role="37vLTx">
                      <node concept="10Nm6u" id="2DKqMqOuyxl" role="3K4GZi" />
                      <node concept="2OqwBi" id="2DKqMqOuyxm" role="3K4Cdx">
                        <node concept="37vLTw" id="2DKqMqOu$k9" role="2Oq$k0">
                          <ref role="3cqZAo" node="2DKqMqOu2$F" resolve="leftPathsIt" />
                        </node>
                        <node concept="liA8E" id="2DKqMqOuyxo" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2DKqMqOuyxp" role="3K4E3e">
                        <node concept="37vLTw" id="2DKqMqOu$vp" role="2Oq$k0">
                          <ref role="3cqZAo" node="2DKqMqOu2$F" resolve="leftPathsIt" />
                        </node>
                        <node concept="liA8E" id="2DKqMqOuyxr" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2DKqMqOuyxs" role="3cqZAp">
                  <node concept="37vLTI" id="2DKqMqOuyxt" role="3clFbG">
                    <node concept="37vLTw" id="2DKqMqOu$6v" role="37vLTJ">
                      <ref role="3cqZAo" node="2DKqMqOul30" resolve="nextRightPath" />
                    </node>
                    <node concept="3K4zz7" id="2DKqMqOuyxv" role="37vLTx">
                      <node concept="10Nm6u" id="2DKqMqOuyxw" role="3K4GZi" />
                      <node concept="2OqwBi" id="2DKqMqOuyxx" role="3K4Cdx">
                        <node concept="37vLTw" id="2DKqMqOu$pN" role="2Oq$k0">
                          <ref role="3cqZAo" node="2DKqMqOu8Pa" resolve="rightPathsIt" />
                        </node>
                        <node concept="liA8E" id="2DKqMqOuyxz" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2DKqMqOuyx$" role="3K4E3e">
                        <node concept="37vLTw" id="2DKqMqOu$Dn" role="2Oq$k0">
                          <ref role="3cqZAo" node="2DKqMqOu8Pa" resolve="rightPathsIt" />
                        </node>
                        <node concept="liA8E" id="2DKqMqOuyxA" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2DKqMqOuyxB" role="3cqZAp" />
              </node>
              <node concept="3y3z36" id="2DKqMqOuyxC" role="3clFbw">
                <node concept="10Nm6u" id="2DKqMqOuyxD" role="3uHU7w" />
                <node concept="37vLTw" id="2DKqMqOuyxE" role="3uHU7B">
                  <ref role="3cqZAo" node="2DKqMqOuxKC" resolve="lastMatch" />
                </node>
              </node>
              <node concept="9aQIb" id="2DKqMqOuyxF" role="9aQIa">
                <node concept="3clFbS" id="2DKqMqOuyxG" role="9aQI4">
                  <node concept="3cpWs8" id="2DKqMqOuyxH" role="3cqZAp">
                    <node concept="3cpWsn" id="2DKqMqOuyxI" role="3cpWs9">
                      <property role="TrG5h" value="compare" />
                      <node concept="10Oyi0" id="2DKqMqOuyxJ" role="1tU5fm" />
                      <node concept="1rXfSq" id="2DKqMqOuyxK" role="33vP2m">
                        <ref role="37wK5l" node="5H6hZahoyat" resolve="compare" />
                        <node concept="2OqwBi" id="2DKqMqOuyxL" role="37wK5m">
                          <node concept="37vLTw" id="2DKqMqOu$NT" role="2Oq$k0">
                            <ref role="3cqZAo" node="2DKqMqOugef" resolve="nextLeftPath" />
                          </node>
                          <node concept="liA8E" id="2DKqMqOuyxN" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                            <node concept="3cmrfG" id="2DKqMqOuyxO" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="2DKqMqOuyxP" role="37wK5m">
                          <node concept="37vLTw" id="2DKqMqOu_0X" role="2Oq$k0">
                            <ref role="3cqZAo" node="2DKqMqOul30" resolve="nextRightPath" />
                          </node>
                          <node concept="liA8E" id="2DKqMqOuyxR" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                            <node concept="3cmrfG" id="2DKqMqOuyxS" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="2DKqMqOuyxT" role="3cqZAp">
                    <node concept="3clFbS" id="2DKqMqOuyxU" role="3clFbx">
                      <node concept="3clFbF" id="2DKqMqOuyxV" role="3cqZAp">
                        <node concept="37vLTI" id="2DKqMqOuyxW" role="3clFbG">
                          <node concept="37vLTw" id="2DKqMqOu_qr" role="37vLTJ">
                            <ref role="3cqZAo" node="2DKqMqOugef" resolve="nextLeftPath" />
                          </node>
                          <node concept="3K4zz7" id="2DKqMqOuyxY" role="37vLTx">
                            <node concept="10Nm6u" id="2DKqMqOuyxZ" role="3K4GZi" />
                            <node concept="2OqwBi" id="2DKqMqOuyy0" role="3K4Cdx">
                              <node concept="37vLTw" id="2DKqMqOu_bf" role="2Oq$k0">
                                <ref role="3cqZAo" node="2DKqMqOu2$F" resolve="leftPathsIt" />
                              </node>
                              <node concept="liA8E" id="2DKqMqOuyy2" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="2DKqMqOuyy3" role="3K4E3e">
                              <node concept="37vLTw" id="2DKqMqOu_gT" role="2Oq$k0">
                                <ref role="3cqZAo" node="2DKqMqOu2$F" resolve="leftPathsIt" />
                              </node>
                              <node concept="liA8E" id="2DKqMqOuyy5" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="2DKqMqOuyy6" role="3cqZAp" />
                    </node>
                    <node concept="3eOVzh" id="2DKqMqOuyy7" role="3clFbw">
                      <node concept="3cmrfG" id="2DKqMqOuyy8" role="3uHU7w">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="37vLTw" id="2DKqMqOuyy9" role="3uHU7B">
                        <ref role="3cqZAo" node="2DKqMqOuyxI" resolve="compare" />
                      </node>
                    </node>
                    <node concept="9aQIb" id="2DKqMqOuyya" role="9aQIa">
                      <node concept="3clFbS" id="2DKqMqOuyyb" role="9aQI4">
                        <node concept="3clFbF" id="2DKqMqOuyyc" role="3cqZAp">
                          <node concept="37vLTI" id="2DKqMqOuyyd" role="3clFbG">
                            <node concept="37vLTw" id="2DKqMqOu_zN" role="37vLTJ">
                              <ref role="3cqZAo" node="2DKqMqOul30" resolve="nextRightPath" />
                            </node>
                            <node concept="3K4zz7" id="2DKqMqOuyyf" role="37vLTx">
                              <node concept="10Nm6u" id="2DKqMqOuyyg" role="3K4GZi" />
                              <node concept="2OqwBi" id="2DKqMqOuyyh" role="3K4Cdx">
                                <node concept="37vLTw" id="2DKqMqOu_Lt" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2DKqMqOu8Pa" resolve="rightPathsIt" />
                                </node>
                                <node concept="liA8E" id="2DKqMqOuyyj" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="2DKqMqOuyyk" role="3K4E3e">
                                <node concept="37vLTw" id="2DKqMqOu_R3" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2DKqMqOu8Pa" resolve="rightPathsIt" />
                                </node>
                                <node concept="liA8E" id="2DKqMqOuyym" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="2DKqMqOurhx" role="2$JKZa">
            <node concept="3y3z36" id="2DKqMqOus_6" role="3uHU7w">
              <node concept="10Nm6u" id="2DKqMqOusBb" role="3uHU7w" />
              <node concept="37vLTw" id="2DKqMqOusdc" role="3uHU7B">
                <ref role="3cqZAo" node="2DKqMqOul30" resolve="nextRightPath" />
              </node>
            </node>
            <node concept="3y3z36" id="2DKqMqOuqlL" role="3uHU7B">
              <node concept="37vLTw" id="2DKqMqOup5$" role="3uHU7B">
                <ref role="3cqZAo" node="2DKqMqOugef" resolve="nextLeftPath" />
              </node>
              <node concept="10Nm6u" id="2DKqMqOurgc" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2DKqMqOuGcj" role="3cqZAp" />
        <node concept="3clFbJ" id="2DKqMqOuA17" role="3cqZAp">
          <node concept="2OqwBi" id="2DKqMqOuA18" role="3clFbw">
            <node concept="37vLTw" id="2DKqMqOuA19" role="2Oq$k0">
              <ref role="3cqZAo" node="2DKqMqOtrS1" resolve="resultList" />
            </node>
            <node concept="liA8E" id="2DKqMqOuA1a" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
            </node>
          </node>
          <node concept="3clFbS" id="2DKqMqOuA1b" role="3clFbx">
            <node concept="3cpWs6" id="2DKqMqOuA1c" role="3cqZAp">
              <node concept="3clFbT" id="2DKqMqOuA1d" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2DKqMqOuA1e" role="3cqZAp" />
        <node concept="3clFbF" id="2DKqMqOuA1f" role="3cqZAp">
          <node concept="2OqwBi" id="2DKqMqOuA1g" role="3clFbG">
            <node concept="37vLTw" id="2DKqMqOuA1h" role="2Oq$k0">
              <ref role="3cqZAo" node="2DKqMqOteKr" resolve="computingSession" />
            </node>
            <node concept="liA8E" id="2DKqMqOuA1i" role="2OqNvi">
              <ref role="37wK5l" to="bspi:4xBopTznPKO" resolve="tell" />
              <node concept="10M0yZ" id="2DKqMqOuA1j" role="37wK5m">
                <ref role="3cqZAo" to="oy3s:3HJTsBn4kQs" resolve="INSTANCE" />
                <ref role="1PxDUh" to="oy3s:3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
              </node>
              <node concept="37vLTw" id="2DKqMqOuA1k" role="37wK5m">
                <ref role="3cqZAo" node="2DKqMqOtbJf" resolve="result" />
              </node>
              <node concept="2ShNRf" id="2DKqMqOuA1l" role="37wK5m">
                <node concept="1pGfFk" id="2DKqMqOuA1m" role="2ShVmc">
                  <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="TreeLogical" />
                  <node concept="1rXfSq" id="2DKqMqOuA1n" role="37wK5m">
                    <ref role="37wK5l" node="5H6hZahoMly" resolve="buildLub" />
                    <node concept="37vLTw" id="2DKqMqOuA1o" role="37wK5m">
                      <ref role="3cqZAo" node="2DKqMqOtrS1" resolve="resultList" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2DKqMqOuA1r" role="3cqZAp" />
        <node concept="3clFbF" id="2DKqMqOuA1s" role="3cqZAp">
          <node concept="3clFbT" id="2DKqMqOuA1t" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
        <node concept="3clFbH" id="2DKqMqOuxCI" role="3cqZAp" />
      </node>
      <node concept="P$JXv" id="NEUfp8Lzjr" role="lGtFl">
        <node concept="TZ5HA" id="NEUfp8Lzjs" role="TZ5H$">
          <node concept="1dT_AC" id="NEUfp8Lzjt" role="1dT_Ay">
            <property role="1dT_AB" value="This is the same code as " />
          </node>
          <node concept="1dT_AA" id="NEUfp8LD0y" role="1dT_Ay">
            <node concept="92FcH" id="NEUfp8LD0C" role="qph3F">
              <node concept="TZ5HA" id="NEUfp8LD0E" role="2XjZqd" />
              <node concept="VXe0Z" id="NEUfp8LFCb" role="92FcQ">
                <ref role="VXe0S" node="5H6hZahmloU" resolve="findLub" />
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="NEUfp8LD0x" role="1dT_Ay">
            <property role="1dT_AB" value=" only using java.util.List as the datatype. Not used since" />
          </node>
        </node>
        <node concept="TZ5HA" id="NEUfp8LGFV" role="TZ5H$">
          <node concept="1dT_AC" id="NEUfp8LGFW" role="1dT_Ay">
            <property role="1dT_AB" value="the JCHR solver supports generic types poorly. Besides, one would have to create a way to save lists" />
          </node>
        </node>
        <node concept="TZ5HA" id="NEUfp8LGGF" role="TZ5H$">
          <node concept="1dT_AC" id="NEUfp8LGGG" role="1dT_Ay">
            <property role="1dT_AB" value="literals a model to support this. In the future this method should be used instead of the one above." />
          </node>
        </node>
        <node concept="x79VA" id="NEUfp8LzjB" role="x79VK">
          <property role="x79VB" value="true if succesful" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2DKqMqOtb8o" role="jymVt" />
    <node concept="2YIFZL" id="5H6hZahoMly" role="jymVt">
      <property role="TrG5h" value="buildLub" />
      <node concept="37vLTG" id="5H6hZahoMRV" role="3clF46">
        <property role="TrG5h" value="components" />
        <node concept="3uibUv" id="5H6hZahoMS7" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="5H6hZahoMSO" role="11_B2D">
            <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5H6hZahs_Lp" role="3clF45">
        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
      </node>
      <node concept="3Tm6S6" id="5H6hZahoMQB" role="1B3o_S" />
      <node concept="3clFbS" id="5H6hZahoMlA" role="3clF47">
        <node concept="3cpWs8" id="5H6hZahszJ7" role="3cqZAp">
          <node concept="3cpWsn" id="5H6hZahszJ8" role="3cpWs9">
            <property role="TrG5h" value="array" />
            <node concept="10Q1$e" id="5H6hZahszJ9" role="1tU5fm">
              <node concept="3uibUv" id="5H6hZahszJa" role="10Q1$1">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
            </node>
            <node concept="2ShNRf" id="5H6hZahszJb" role="33vP2m">
              <node concept="3$_iS1" id="5H6hZahszJc" role="2ShVmc">
                <node concept="3$GHV9" id="5H6hZahszJd" role="3$GQph">
                  <node concept="2OqwBi" id="5H6hZahszJe" role="3$I4v7">
                    <node concept="37vLTw" id="5H6hZahszJf" role="2Oq$k0">
                      <ref role="3cqZAo" node="5H6hZahoMRV" resolve="components" />
                    </node>
                    <node concept="liA8E" id="5H6hZahszJg" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="5H6hZahszJh" role="3$_nBY">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="5H6hZahszJi" role="3cqZAp">
          <node concept="3uNrnE" id="5H6hZahszJj" role="1Dwrff">
            <node concept="37vLTw" id="5H6hZahszJk" role="2$L3a6">
              <ref role="3cqZAo" node="5H6hZahszJx" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="5H6hZahszJl" role="2LFqv$">
            <node concept="3clFbF" id="5H6hZahszJm" role="3cqZAp">
              <node concept="37vLTI" id="5H6hZahszJn" role="3clFbG">
                <node concept="2OqwBi" id="5H6hZahszJo" role="37vLTx">
                  <node concept="2OqwBi" id="5H6hZahszJp" role="2Oq$k0">
                    <node concept="37vLTw" id="5H6hZahszJq" role="2Oq$k0">
                      <ref role="3cqZAo" node="5H6hZahoMRV" resolve="components" />
                    </node>
                    <node concept="liA8E" id="5H6hZahszJr" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                      <node concept="37vLTw" id="5H6hZahszJs" role="37wK5m">
                        <ref role="3cqZAo" node="5H6hZahszJx" resolve="i" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="5H6hZahszJt" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:2QE4RCGndD7" resolve="asRoot" />
                  </node>
                </node>
                <node concept="AH0OO" id="5H6hZahszJu" role="37vLTJ">
                  <node concept="37vLTw" id="5H6hZahszJv" role="AHEQo">
                    <ref role="3cqZAo" node="5H6hZahszJx" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="5H6hZahszJw" role="AHHXb">
                    <ref role="3cqZAo" node="5H6hZahszJ8" resolve="array" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5H6hZahszJx" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="5H6hZahszJy" role="1tU5fm" />
            <node concept="3cmrfG" id="5H6hZahszJz" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="5H6hZahszJ$" role="1Dwp0S">
            <node concept="2OqwBi" id="5H6hZahszJ_" role="3uHU7w">
              <node concept="37vLTw" id="5H6hZahszJA" role="2Oq$k0">
                <ref role="3cqZAo" node="5H6hZahoMRV" resolve="components" />
              </node>
              <node concept="liA8E" id="5H6hZahszJB" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
              </node>
            </node>
            <node concept="37vLTw" id="5H6hZahszJC" role="3uHU7B">
              <ref role="3cqZAo" node="5H6hZahszJx" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5H6hZahsyrH" role="3cqZAp">
          <node concept="1oi1Uc" id="5H6hZahsAIB" role="3clFbG">
            <node concept="1oi5ST" id="5H6hZahsAIC" role="1oi0x0">
              <property role="TrG5h" value="list" />
              <node concept="1oi5ST" id="5H6hZahsAID" role="1oi5TL">
                <property role="TrG5h" value="contents" />
                <node concept="KCUsM" id="5H6hZahsAIE" role="1oi5TL">
                  <node concept="1oi5UN" id="5H6hZahsAIF" role="KCVpo">
                    <node concept="22Ky0T" id="5H6hZahsAIG" role="lGtFl">
                      <node concept="37vLTw" id="5H6hZahsAIH" role="22Ky0K">
                        <ref role="3cqZAo" node="5H6hZahszJ8" resolve="array" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5H6hZahoLOt" role="jymVt" />
    <node concept="2YIFZL" id="5H6hZahoyat" role="jymVt">
      <property role="TrG5h" value="compare" />
      <node concept="37vLTG" id="5H6hZahoy$v" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="5H6hZahoy$J" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="5H6hZahoyA2" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="5H6hZahoyAl" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="10Oyi0" id="5H6hZahoy$s" role="3clF45" />
      <node concept="3Tm6S6" id="5H6hZahoyzF" role="1B3o_S" />
      <node concept="3clFbS" id="5H6hZahoyax" role="3clF47">
        <node concept="3SKdUt" id="5H6hZahoI_z" role="3cqZAp">
          <node concept="3SKdUq" id="5H6hZahoIGR" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: implement real comparator instead of comparing strings" />
          </node>
        </node>
        <node concept="3clFbF" id="5H6hZahoHfd" role="3cqZAp">
          <node concept="2OqwBi" id="5H6hZahoHHE" role="3clFbG">
            <node concept="2YIFZM" id="5H6hZahoHgi" role="2Oq$k0">
              <ref role="1Pybhc" to="4t1t:4peSo3CHy8D" resolve="NodePrinter" />
              <ref role="37wK5l" to="4t1t:4peSo3CHBfF" resolve="print" />
              <node concept="37vLTw" id="5H6hZahoHjh" role="37wK5m">
                <ref role="3cqZAo" node="5H6hZahoy$v" resolve="left" />
              </node>
            </node>
            <node concept="liA8E" id="5H6hZahoIcz" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.compareTo(java.lang.String):int" resolve="compareTo" />
              <node concept="2YIFZM" id="5H6hZahoIjR" role="37wK5m">
                <ref role="1Pybhc" to="4t1t:4peSo3CHy8D" resolve="NodePrinter" />
                <ref role="37wK5l" to="4t1t:4peSo3CHBfF" resolve="print" />
                <node concept="37vLTw" id="5H6hZahoIlf" role="37wK5m">
                  <ref role="3cqZAo" node="5H6hZahoyA2" resolve="right" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5H6hZahrbuT" role="jymVt" />
    <node concept="3Tm1VV" id="5H6hZahmloo" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="2DKqMqOsrje">
    <property role="TrG5h" value="Meet" />
    <node concept="2tJIrI" id="2DKqMqOsrjR" role="jymVt" />
    <node concept="2YIFZL" id="2DKqMqOsskR" role="jymVt">
      <property role="TrG5h" value="create" />
      <node concept="37vLTG" id="2DKqMqOssqT" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="8X2XB" id="2DKqMqOstvZ" role="1tU5fm">
          <node concept="3uibUv" id="2DKqMqOssKq" role="8Xvag">
            <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2DKqMqOsspm" role="3clF45">
        <ref role="3uigEE" node="2DKqMqOsrje" resolve="Meet" />
      </node>
      <node concept="3Tm1VV" id="2DKqMqOsskU" role="1B3o_S" />
      <node concept="3clFbS" id="2DKqMqOsskV" role="3clF47">
        <node concept="3clFbF" id="2DKqMqOsuaD" role="3cqZAp">
          <node concept="2ShNRf" id="2DKqMqOsuaB" role="3clFbG">
            <node concept="1pGfFk" id="2DKqMqOsuhi" role="2ShVmc">
              <ref role="37wK5l" node="2DKqMqOsrmg" resolve="Meet" />
              <node concept="2YIFZM" id="2DKqMqOswMk" role="37wK5m">
                <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                <node concept="37vLTw" id="2DKqMqOswOa" role="37wK5m">
                  <ref role="3cqZAo" node="2DKqMqOssqT" resolve="component" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2DKqMqOssgu" role="jymVt" />
    <node concept="3clFbW" id="2DKqMqOsrmg" role="jymVt">
      <node concept="37vLTG" id="2DKqMqOsrmz" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="2DKqMqOsrn4" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="2DKqMqOsrob" role="11_B2D">
            <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="2DKqMqOsrmi" role="3clF45" />
      <node concept="3Tm6S6" id="2DKqMqOsroR" role="1B3o_S" />
      <node concept="3clFbS" id="2DKqMqOsrmk" role="3clF47">
        <node concept="3clFbF" id="2DKqMqOsrpb" role="3cqZAp">
          <node concept="37vLTI" id="2DKqMqOsrJY" role="3clFbG">
            <node concept="2OqwBi" id="2DKqMqOsrp_" role="37vLTJ">
              <node concept="Xjq3P" id="2DKqMqOsrpa" role="2Oq$k0" />
              <node concept="2OwXpG" id="2DKqMqOsrw$" role="2OqNvi">
                <ref role="2Oxat5" node="2DKqMqOsrks" resolve="componentList" />
              </node>
            </node>
            <node concept="2ShNRf" id="2DKqMqOsul0" role="37vLTx">
              <node concept="1pGfFk" id="2DKqMqOsu_4" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(java.util.Collection)" resolve="ArrayList" />
                <node concept="37vLTw" id="2DKqMqOsAP0" role="37wK5m">
                  <ref role="3cqZAo" node="2DKqMqOsrmz" resolve="component" />
                </node>
                <node concept="3uibUv" id="2DKqMqOsv7K" role="1pMfVU">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2DKqMqOsrjT" role="jymVt" />
    <node concept="3clFb_" id="2DKqMqOsrRv" role="jymVt">
      <property role="TrG5h" value="component" />
      <node concept="3uibUv" id="2DKqMqOsrU$" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2DKqMqOsrX5" role="11_B2D">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2DKqMqOsrRy" role="1B3o_S" />
      <node concept="3clFbS" id="2DKqMqOsrRz" role="3clF47">
        <node concept="3clFbF" id="2DKqMqOss7i" role="3cqZAp">
          <node concept="2YIFZM" id="2DKqMqOss7S" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="2DKqMqOss90" role="37wK5m">
              <ref role="3cqZAo" node="2DKqMqOsrks" resolve="componentList" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2DKqMqOsrk9" role="jymVt" />
    <node concept="312cEg" id="2DKqMqOsrks" role="jymVt">
      <property role="TrG5h" value="componentList" />
      <node concept="3Tm6S6" id="2DKqMqOsrkt" role="1B3o_S" />
      <node concept="3uibUv" id="2DKqMqOsrkN" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2DKqMqOsrla" role="11_B2D">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="2DKqMqOsrjf" role="1B3o_S" />
  </node>
</model>

