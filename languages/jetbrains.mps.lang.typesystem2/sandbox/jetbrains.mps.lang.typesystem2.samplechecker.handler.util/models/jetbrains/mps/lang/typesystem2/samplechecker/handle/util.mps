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
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.logic.atom)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="4t1t" ref="r:703839e2-c38f-4b71-8602-72ccb87dd74e(jetbrains.mps.lang.typesystem2.runtime.util)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="qrld" ref="r:2a79c8aa-e372-4c00-8d71-5d7f3db517e4(jetbrains.mps.logic.reactor.constraint)" />
    <import index="rchb" ref="r:f43ee4a0-488a-425a-87a0-594ab3b0d15f(jetbrains.mps.logic.reactor.program)" />
    <import index="95zw" ref="r:f3ff7852-b9dd-4760-b213-a8a031c77d0e(jetbrains.mps.logic.jchr.predicate)" />
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
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
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
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
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
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
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
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
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
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
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
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
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
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="2546654756694997551" name="jetbrains.mps.baseLanguage.javadoc.structure.LinkInlineDocTag" flags="ng" index="92FcH">
        <child id="2546654756694997556" name="reference" index="92FcQ" />
        <child id="3106559687488913694" name="line" index="2XjZqd" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="2217234381367188008" name="jetbrains.mps.baseLanguage.javadoc.structure.FieldDocReference" flags="ng" index="VUqz4" />
      <concept id="2217234381367049075" name="jetbrains.mps.baseLanguage.javadoc.structure.CodeInlineDocTag" flags="ng" index="VVOAv">
        <child id="3106559687488741665" name="line" index="2Xj1qM" />
      </concept>
      <concept id="2217234381367530195" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocReference" flags="ng" index="VXe0Z">
        <reference id="2217234381367530196" name="methodDeclaration" index="VXe0S" />
      </concept>
      <concept id="5562345046718956738" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseVariableDocReference" flags="ng" index="YTMYr">
        <reference id="5562345046718956740" name="declaration" index="YTMYt" />
      </concept>
      <concept id="8970989240999019145" name="jetbrains.mps.baseLanguage.javadoc.structure.InlineTagCommentLinePart" flags="ng" index="1dT_AA">
        <child id="6962838954693749192" name="tag" index="qph3F" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
    </language>
    <language id="35320f26-77cb-4c55-be9f-a97a27770af1" name="jetbrains.mps.logic">
      <concept id="238586457668550951" name="jetbrains.mps.logic.structure.Splice" flags="ng" index="22Ky0T">
        <child id="238586457668550958" name="expression" index="22Ky0K" />
      </concept>
      <concept id="2105510410850132386" name="jetbrains.mps.logic.structure.List" flags="ng" index="KCUsM">
        <child id="2105510410850136264" name="contents" index="KCVpo" />
      </concept>
      <concept id="7571593955706120730" name="jetbrains.mps.logic.structure.AtomExpression" flags="ng" index="1oi1Uc">
        <child id="7571593955706125526" name="root" index="1oi0x0" />
      </concept>
      <concept id="7571593955706137263" name="jetbrains.mps.logic.structure.ChildRole" flags="ng" index="1oi5ST">
        <child id="7571593955706137319" name="contents" index="1oi5TL" />
      </concept>
      <concept id="7571593955706137125" name="jetbrains.mps.logic.structure.Compound" flags="ng" index="1oi5UN" />
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
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="5H6hZahmlpH" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="5H6hZahmlqj" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="5H6hZahmlpT" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="5H6hZahmlqy" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="10P_77" id="5H6hZahmlpi" role="3clF45" />
      <node concept="3Tm1VV" id="5H6hZahmloX" role="1B3o_S" />
      <node concept="3clFbS" id="5H6hZahmloY" role="3clF47">
        <node concept="3cpWs8" id="3KV3FXjZHhF" role="3cqZAp">
          <node concept="3cpWsn" id="3KV3FXjZHhG" role="3cpWs9">
            <property role="TrG5h" value="leftVal" />
            <node concept="3uibUv" id="3KV3FXjZHhH" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
            <node concept="2OqwBi" id="3KV3FXjZHhI" role="33vP2m">
              <node concept="2OqwBi" id="3KV3FXjZHhJ" role="2Oq$k0">
                <node concept="37vLTw" id="3KV3FXjZHhK" role="2Oq$k0">
                  <ref role="3cqZAo" node="5H6hZahmlpH" resolve="left" />
                </node>
                <node concept="liA8E" id="3KV3FXjZHhL" role="2OqNvi">
                  <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                </node>
              </node>
              <node concept="liA8E" id="3KV3FXjZHhM" role="2OqNvi">
                <ref role="37wK5l" to="95zw:3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3KV3FXjZHhN" role="3cqZAp">
          <node concept="3cpWsn" id="3KV3FXjZHhO" role="3cpWs9">
            <property role="TrG5h" value="rightVal" />
            <node concept="3uibUv" id="3KV3FXjZHhP" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
            <node concept="2OqwBi" id="3KV3FXjZHhQ" role="33vP2m">
              <node concept="2OqwBi" id="3KV3FXjZHhR" role="2Oq$k0">
                <node concept="37vLTw" id="3KV3FXjZHhS" role="2Oq$k0">
                  <ref role="3cqZAo" node="5H6hZahmlpT" resolve="right" />
                </node>
                <node concept="liA8E" id="3KV3FXjZHhT" role="2OqNvi">
                  <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                </node>
              </node>
              <node concept="liA8E" id="3KV3FXjZHhU" role="2OqNvi">
                <ref role="37wK5l" to="95zw:3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3KV3FXjZHhV" role="3cqZAp">
          <node concept="3clFbS" id="3KV3FXjZHhW" role="3clFbx">
            <node concept="3cpWs6" id="3KV3FXjZHhX" role="3cqZAp">
              <node concept="3clFbT" id="3KV3FXjZHhY" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="3KV3FXjZHhZ" role="3clFbw">
            <node concept="3clFbC" id="3KV3FXjZHi0" role="3uHU7w">
              <node concept="10Nm6u" id="3KV3FXjZHi1" role="3uHU7w" />
              <node concept="37vLTw" id="3KV3FXjZHi2" role="3uHU7B">
                <ref role="3cqZAo" node="3KV3FXjZHhO" resolve="rightVal" />
              </node>
            </node>
            <node concept="3clFbC" id="3KV3FXjZHi3" role="3uHU7B">
              <node concept="37vLTw" id="3KV3FXjZHi4" role="3uHU7B">
                <ref role="3cqZAo" node="3KV3FXjZHhG" resolve="leftVal" />
              </node>
              <node concept="10Nm6u" id="3KV3FXjZHi5" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3KV3FXjZHi6" role="3cqZAp" />
        <node concept="3cpWs8" id="5uFPQ7ClQgq" role="3cqZAp">
          <node concept="3cpWsn" id="5uFPQ7ClQgr" role="3cpWs9">
            <property role="TrG5h" value="sessionSolver" />
            <node concept="3uibUv" id="5uFPQ7ClQgn" role="1tU5fm">
              <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="SessionSolver" />
            </node>
            <node concept="2OqwBi" id="5uFPQ7ClQgs" role="33vP2m">
              <node concept="2YIFZM" id="5uFPQ7ClQgt" role="2Oq$k0">
                <ref role="37wK5l" to="rchb:5uFPQ7Bwt5n" resolve="current" />
                <ref role="1Pybhc" to="rchb:5uFPQ7BvN_d" resolve="EvaluationSession" />
              </node>
              <node concept="liA8E" id="5uFPQ7ClQgu" role="2OqNvi">
                <ref role="37wK5l" to="rchb:5uFPQ7ClOzA" resolve="computingSession" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3KV3FXk0plc" role="3cqZAp">
          <node concept="3cpWsn" id="3KV3FXk0pld" role="3cpWs9">
            <property role="TrG5h" value="resultList" />
            <node concept="3uibUv" id="3KV3FXk0pl4" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="3KV3FXk0pl7" role="11_B2D">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
            </node>
            <node concept="2OqwBi" id="3KV3FXk0ple" role="33vP2m">
              <node concept="2ShNRf" id="3KV3FXk0plf" role="2Oq$k0">
                <node concept="1pGfFk" id="3KV3FXk0plg" role="2ShVmc">
                  <ref role="37wK5l" node="3KV3FXjZFyb" resolve="LubSolver" />
                  <node concept="37vLTw" id="3KV3FXk0r_h" role="37wK5m">
                    <ref role="3cqZAo" node="5uFPQ7ClQgr" resolve="sessionSolver" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3KV3FXk0pli" role="2OqNvi">
                <ref role="37wK5l" node="3KV3FXjZGYZ" resolve="doFind" />
                <node concept="37vLTw" id="3KV3FXk0plk" role="37wK5m">
                  <ref role="3cqZAo" node="3KV3FXjZHhG" resolve="leftVal" />
                </node>
                <node concept="37vLTw" id="3KV3FXk0pll" role="37wK5m">
                  <ref role="3cqZAo" node="3KV3FXjZHhO" resolve="rightVal" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3KV3FXjZMU_" role="3cqZAp">
          <node concept="2OqwBi" id="3KV3FXjZMUA" role="3clFbw">
            <node concept="37vLTw" id="3KV3FXjZMUB" role="2Oq$k0">
              <ref role="3cqZAo" node="3KV3FXk0pld" resolve="resultList" />
            </node>
            <node concept="liA8E" id="3KV3FXjZMUC" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
            </node>
          </node>
          <node concept="3clFbS" id="3KV3FXjZMUD" role="3clFbx">
            <node concept="3clFbF" id="5_6ImQZ8n1E" role="3cqZAp">
              <node concept="2YIFZM" id="5_6ImQZ8n8A" role="3clFbG">
                <ref role="37wK5l" to="yg8f:5_6ImQZ8ja0" resolve="fail" />
                <ref role="1Pybhc" to="yg8f:5_6ImQZ8j9D" resolve="SolverUtil" />
                <node concept="Xl_RD" id="5_6ImQZ8nfH" role="37wK5m">
                  <property role="Xl_RC" value="could not find LUB" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3KV3FXjZMUE" role="3cqZAp">
              <node concept="3clFbT" id="3KV3FXjZMUF" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
            <node concept="3clFbH" id="5_6ImQZ8n8S" role="3cqZAp" />
          </node>
          <node concept="9aQIb" id="3KV3FXk0tjw" role="9aQIa">
            <node concept="3clFbS" id="3KV3FXk0tjx" role="9aQI4">
              <node concept="3clFbF" id="3KV3FXjZMUG" role="3cqZAp">
                <node concept="2OqwBi" id="3KV3FXjZMUH" role="3clFbG">
                  <node concept="37vLTw" id="3KV3FXk0rYO" role="2Oq$k0">
                    <ref role="3cqZAo" node="5uFPQ7ClQgr" resolve="sessionSolver" />
                  </node>
                  <node concept="liA8E" id="3KV3FXjZMUJ" role="2OqNvi">
                    <ref role="37wK5l" to="qrld:4xBopTznPKO" resolve="tell" />
                    <node concept="10M0yZ" id="3KV3FXjZMUK" role="37wK5m">
                      <ref role="1PxDUh" to="oy3s:3HJTsBn4kk_" resolve="EqualsPredicate" />
                      <ref role="3cqZAo" to="oy3s:5uFPQ7C23RV" resolve="EQ_SYM" />
                    </node>
                    <node concept="37vLTw" id="3KV3FXjZMUL" role="37wK5m">
                      <ref role="3cqZAo" node="5H6hZahmlpn" resolve="result" />
                    </node>
                    <node concept="2ShNRf" id="3KV3FXjZMUM" role="37wK5m">
                      <node concept="1pGfFk" id="3KV3FXjZMUN" role="2ShVmc">
                        <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                        <node concept="2YIFZM" id="3KV3FXk1qgA" role="37wK5m">
                          <ref role="1Pybhc" node="3KV3FXk1mCr" resolve="AbstractSolver" />
                          <ref role="37wK5l" node="5H6hZahoMly" resolve="buildResult" />
                          <node concept="37vLTw" id="3KV3FXjZMUP" role="37wK5m">
                            <ref role="3cqZAo" node="3KV3FXk0pld" resolve="resultList" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3KV3FXk0sZe" role="3cqZAp">
                <node concept="3clFbT" id="3KV3FXjZMUU" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
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
            <property role="1dT_AB" value="Parameters " />
          </node>
          <node concept="1dT_AA" id="3KV3FXk0Xal" role="1dT_Ay">
            <node concept="VVOAv" id="3KV3FXk13HE" role="qph3F">
              <node concept="TZ5HA" id="3KV3FXk13HI" role="2Xj1qM">
                <node concept="1dT_AC" id="3KV3FXk13HO" role="1dT_Ay">
                  <property role="1dT_AB" value="left" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="3KV3FXk0Xak" role="1dT_Ay">
            <property role="1dT_AB" value=" and " />
          </node>
          <node concept="1dT_AA" id="3KV3FXk13HR" role="1dT_Ay">
            <node concept="VVOAv" id="3KV3FXk13I2" role="qph3F">
              <node concept="TZ5HA" id="3KV3FXk13I4" role="2Xj1qM">
                <node concept="1dT_AC" id="3KV3FXk13I8" role="1dT_Ay">
                  <property role="1dT_AB" value="right" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="3KV3FXk13HQ" role="1dT_Ay">
            <property role="1dT_AB" value=" contain the lists of &quot;subtype paths&quot; organized as follows:" />
          </node>
        </node>
        <node concept="TZ5HA" id="5H6hZahoJUx" role="TZ5H$">
          <node concept="1dT_AC" id="5H6hZahoJUy" role="1dT_Ay">
            <property role="1dT_AB" value="every path starts at the top type and continues down, following the subtype relation," />
          </node>
        </node>
        <node concept="TZ5HA" id="3KV3FXjXkpE" role="TZ5H$">
          <node concept="1dT_AC" id="3KV3FXjXkpF" role="1dT_Ay">
            <property role="1dT_AB" value="to the type at which it originated." />
          </node>
        </node>
        <node concept="TZ5HA" id="3KV3FXjXkm7" role="TZ5H$">
          <node concept="1dT_AC" id="3KV3FXjXkm8" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="3KV3FXjXkmA" role="TZ5H$">
          <node concept="1dT_AC" id="3KV3FXjXkmB" role="1dT_Ay">
            <property role="1dT_AB" value="The algorithm compares pairwise all paths from &quot;left&quot; and &quot;right&quot; and finds, for each pair," />
          </node>
        </node>
        <node concept="TZ5HA" id="3KV3FXjXknr" role="TZ5H$">
          <node concept="1dT_AC" id="3KV3FXjXkns" role="1dT_Ay">
            <property role="1dT_AB" value="the farthest from the root matching term, remembering the intermediate visited terms in the process. " />
          </node>
        </node>
        <node concept="TZ5HA" id="3KV3FXk13IW" role="TZ5H$">
          <node concept="1dT_AC" id="3KV3FXk13IX" role="1dT_Ay">
            <property role="1dT_AB" value="It then walks all the paths again in order to eliminate all terms that should be marked as intermediate." />
          </node>
        </node>
        <node concept="TZ5HA" id="3KV3FXjXkoi" role="TZ5H$">
          <node concept="1dT_AC" id="3KV3FXjXkoj" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="3KV3FXjXkoJ" role="TZ5H$">
          <node concept="1dT_AC" id="3KV3FXjXkoK" role="1dT_Ay">
            <property role="1dT_AB" value="The result is the list of unique terms representing the LUB of the two types." />
          </node>
        </node>
        <node concept="TZ5HA" id="5H6hZahoJVO" role="TZ5H$">
          <node concept="1dT_AC" id="5H6hZahoJWp" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="5H6hZahoJWY" role="TZ5H$">
          <node concept="1dT_AC" id="5H6hZahoJWZ" role="1dT_Ay">
            <property role="1dT_AB" value="Both &quot;left&quot; and &quot;right&quot; parameters must be bound, otherwise " />
          </node>
          <node concept="1dT_AA" id="3KV3FXk13II" role="1dT_Ay">
            <node concept="VVOAv" id="3KV3FXk13IO" role="qph3F">
              <node concept="TZ5HA" id="3KV3FXk13IQ" role="2Xj1qM">
                <node concept="1dT_AC" id="3KV3FXk13IU" role="1dT_Ay">
                  <property role="1dT_AB" value="false" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="3KV3FXk13IH" role="1dT_Ay">
            <property role="1dT_AB" value=" is returned. " />
          </node>
        </node>
        <node concept="TZ5HA" id="5H6hZahoJXW" role="TZ5H$">
          <node concept="1dT_AC" id="5H6hZahoJXX" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="5H6hZahoJTl" role="TZ5H$">
          <node concept="1dT_AC" id="5H6hZahoJTm" role="1dT_Ay">
            <property role="1dT_AB" value="On returning " />
          </node>
          <node concept="1dT_AA" id="3KV3FXk13Ib" role="1dT_Ay">
            <node concept="VVOAv" id="3KV3FXk13Ih" role="qph3F">
              <node concept="TZ5HA" id="3KV3FXk13Ij" role="2Xj1qM">
                <node concept="1dT_AC" id="3KV3FXk13In" role="1dT_Ay">
                  <property role="1dT_AB" value="true" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="3KV3FXk13Ia" role="1dT_Ay">
            <property role="1dT_AB" value=", the " />
          </node>
          <node concept="1dT_AA" id="3KV3FXk13Iq" role="1dT_Ay">
            <node concept="VVOAv" id="3KV3FXk13I_" role="qph3F">
              <node concept="TZ5HA" id="3KV3FXk13IB" role="2Xj1qM">
                <node concept="1dT_AC" id="3KV3FXk13IF" role="1dT_Ay">
                  <property role="1dT_AB" value="result" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="3KV3FXk13Ip" role="1dT_Ay">
            <property role="1dT_AB" value=" parameter is bound to the list of elements of the LUB intersection type." />
          </node>
        </node>
        <node concept="TZ5HA" id="5H6hZahoJTr" role="TZ5H$">
          <node concept="1dT_AC" id="5H6hZahoJTs" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KV3FXjZFHE" role="jymVt" />
    <node concept="3clFb_" id="3KV3FXjZGYZ" role="jymVt">
      <property role="TrG5h" value="doFind" />
      <node concept="3uibUv" id="3KV3FXk0o6d" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3KV3FXk0oGr" role="11_B2D">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3KV3FXjZPWJ" role="1B3o_S" />
      <node concept="3clFbS" id="3KV3FXjZGZ3" role="3clF47">
        <node concept="3cpWs8" id="3KV3FXjZHi9" role="3cqZAp">
          <node concept="3cpWsn" id="3KV3FXjZHia" role="3cpWs9">
            <property role="TrG5h" value="leftPaths" />
            <node concept="3uibUv" id="3KV3FXjZHib" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3qUE_q" id="3KV3FXjZHic" role="11_B2D">
                <node concept="3uibUv" id="3KV3FXjZHid" role="3qUE_r">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="3KV3FXk1vIO" role="33vP2m">
              <ref role="1Pybhc" node="3KV3FXk1mCr" resolve="AbstractSolver" />
              <ref role="37wK5l" node="3KV3FXjZXXV" resolve="getList" />
              <node concept="37vLTw" id="3KV3FXjZT9c" role="37wK5m">
                <ref role="3cqZAo" node="3KV3FXjZHfU" resolve="leftVal" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3KV3FXjZHij" role="3cqZAp">
          <node concept="3cpWsn" id="3KV3FXjZHik" role="3cpWs9">
            <property role="TrG5h" value="rightPaths" />
            <node concept="3uibUv" id="3KV3FXjZHil" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3qUE_q" id="3KV3FXjZHim" role="11_B2D">
                <node concept="3uibUv" id="3KV3FXjZHin" role="3qUE_r">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="3KV3FXk1vIR" role="33vP2m">
              <ref role="1Pybhc" node="3KV3FXk1mCr" resolve="AbstractSolver" />
              <ref role="37wK5l" node="3KV3FXjZXXV" resolve="getList" />
              <node concept="37vLTw" id="3KV3FXjZTLt" role="37wK5m">
                <ref role="3cqZAo" node="3KV3FXjZHfW" resolve="rightVal" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3KV3FXjZHit" role="3cqZAp">
          <node concept="3clFbS" id="3KV3FXjZHiu" role="3clFbx">
            <node concept="3cpWs6" id="3KV3FXjZHiv" role="3cqZAp">
              <node concept="2YIFZM" id="3KV3FXk0Mm4" role="3cqZAk">
                <ref role="37wK5l" to="33ny:~Collections.emptyList():java.util.List" resolve="emptyList" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="3KV3FXjZHix" role="3clFbw">
            <node concept="3fqX7Q" id="3KV3FXjZHiy" role="3uHU7w">
              <node concept="2OqwBi" id="3KV3FXjZHiz" role="3fr31v">
                <node concept="2OqwBi" id="3KV3FXjZHi$" role="2Oq$k0">
                  <node concept="37vLTw" id="3KV3FXjZHi_" role="2Oq$k0">
                    <ref role="3cqZAo" node="3KV3FXjZHik" resolve="rightPaths" />
                  </node>
                  <node concept="liA8E" id="3KV3FXjZHiA" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.iterator():java.util.Iterator" resolve="iterator" />
                  </node>
                </node>
                <node concept="liA8E" id="3KV3FXjZHiB" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="3KV3FXjZHiC" role="3uHU7B">
              <node concept="2OqwBi" id="3KV3FXjZHiD" role="3fr31v">
                <node concept="2OqwBi" id="3KV3FXjZHiE" role="2Oq$k0">
                  <node concept="37vLTw" id="3KV3FXjZHiF" role="2Oq$k0">
                    <ref role="3cqZAo" node="3KV3FXjZHia" resolve="leftPaths" />
                  </node>
                  <node concept="liA8E" id="3KV3FXjZHiG" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.iterator():java.util.Iterator" resolve="iterator" />
                  </node>
                </node>
                <node concept="liA8E" id="3KV3FXjZHiH" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3KV3FXjZH$e" role="3cqZAp" />
        <node concept="3clFbF" id="3KV3FXjZHMV" role="3cqZAp">
          <node concept="1rXfSq" id="3KV3FXjZKA_" role="3clFbG">
            <ref role="37wK5l" node="3KV3FXjZJPH" resolve="collectCandidates" />
            <node concept="37vLTw" id="3KV3FXjZHMX" role="37wK5m">
              <ref role="3cqZAo" node="3KV3FXjZHia" resolve="leftPaths" />
            </node>
            <node concept="37vLTw" id="3KV3FXjZHMY" role="37wK5m">
              <ref role="3cqZAo" node="3KV3FXjZHik" resolve="rightPaths" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3KV3FXk0Dn8" role="3cqZAp">
          <node concept="1rXfSq" id="3KV3FXk0Dn7" role="3clFbG">
            <ref role="37wK5l" node="3KV3FXk0Dn3" resolve="collectIntermediate" />
            <node concept="37vLTw" id="3KV3FXk0Dn6" role="37wK5m">
              <ref role="3cqZAo" node="3KV3FXjZHia" resolve="leftPaths" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3KV3FXk0GxC" role="3cqZAp">
          <node concept="1rXfSq" id="3KV3FXk0GxD" role="3clFbG">
            <ref role="37wK5l" node="3KV3FXk0Dn3" resolve="collectIntermediate" />
            <node concept="37vLTw" id="3KV3FXk0H_c" role="37wK5m">
              <ref role="3cqZAo" node="3KV3FXjZHik" resolve="rightPaths" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3KV3FXk0Jce" role="3cqZAp" />
        <node concept="3cpWs8" id="3KV3FXjZMUc" role="3cqZAp">
          <node concept="3cpWsn" id="3KV3FXjZMUd" role="3cpWs9">
            <property role="TrG5h" value="resultList" />
            <node concept="3uibUv" id="3KV3FXjZMUe" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="3KV3FXjZMUf" role="11_B2D">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
            </node>
            <node concept="2ShNRf" id="3KV3FXjZMUg" role="33vP2m">
              <node concept="1pGfFk" id="3KV3FXjZMUh" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="3KV3FXjZMUi" role="1pMfVU">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3KV3FXjZMUj" role="3cqZAp">
          <node concept="3clFbS" id="3KV3FXjZMUk" role="2LFqv$">
            <node concept="3clFbJ" id="3KV3FXjZMUl" role="3cqZAp">
              <node concept="3clFbS" id="3KV3FXjZMUm" role="3clFbx">
                <node concept="3clFbF" id="3KV3FXjZMUn" role="3cqZAp">
                  <node concept="2OqwBi" id="3KV3FXjZMUo" role="3clFbG">
                    <node concept="37vLTw" id="3KV3FXjZMUp" role="2Oq$k0">
                      <ref role="3cqZAo" node="3KV3FXjZMUd" resolve="resultList" />
                    </node>
                    <node concept="liA8E" id="3KV3FXjZMUq" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                      <node concept="37vLTw" id="3KV3FXjZMUr" role="37wK5m">
                        <ref role="3cqZAo" node="3KV3FXjZMUx" resolve="c" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="3KV3FXjZMUs" role="3clFbw">
                <node concept="1rXfSq" id="3KV3FXjZMUt" role="3fr31v">
                  <ref role="37wK5l" node="3KV3FXk025v" resolve="contains" />
                  <node concept="37vLTw" id="3KV3FXjZMUu" role="37wK5m">
                    <ref role="3cqZAo" node="3KV3FXjZMUx" resolve="c" />
                  </node>
                  <node concept="37vLTw" id="3KV3FXjZMUv" role="37wK5m">
                    <ref role="3cqZAo" node="3KV3FXjZG69" resolve="intermediateList" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3KV3FXjZMUx" role="1Duv9x">
            <property role="TrG5h" value="c" />
            <node concept="3uibUv" id="3KV3FXjZMUy" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
          </node>
          <node concept="37vLTw" id="3KV3FXjZMUz" role="1DdaDG">
            <ref role="3cqZAo" node="3KV3FXjZG64" resolve="candidateList" />
          </node>
        </node>
        <node concept="3clFbF" id="3KV3FXk0HB6" role="3cqZAp">
          <node concept="37vLTw" id="3KV3FXk0HB4" role="3clFbG">
            <ref role="3cqZAo" node="3KV3FXjZMUd" resolve="resultList" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3KV3FXjZHfU" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="3uibUv" id="3KV3FXk0viY" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="3KV3FXjZHfW" role="3clF46">
        <property role="TrG5h" value="rightVal" />
        <node concept="3uibUv" id="3KV3FXk0viZ" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KV3FXk0RYp" role="jymVt" />
    <node concept="3clFb_" id="3KV3FXjZJPH" role="jymVt">
      <property role="TrG5h" value="collectCandidates" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="3KV3FXjZDGD" role="3clF47">
        <node concept="1DcWWT" id="3KV3FXjZDGE" role="3cqZAp">
          <node concept="3clFbS" id="3KV3FXjZDGF" role="2LFqv$">
            <node concept="1DcWWT" id="3KV3FXjZDGG" role="3cqZAp">
              <node concept="3clFbS" id="3KV3FXjZDGH" role="2LFqv$">
                <node concept="3cpWs8" id="3KV3FXjZDGK" role="3cqZAp">
                  <node concept="3cpWsn" id="3KV3FXjZDGL" role="3cpWs9">
                    <property role="TrG5h" value="leftPath" />
                    <node concept="3uibUv" id="3KV3FXjZDGM" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~List" resolve="List" />
                      <node concept="3qUE_q" id="3KV3FXjZDGN" role="11_B2D">
                        <node concept="3uibUv" id="3KV3FXjZDGO" role="3qUE_r">
                          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                        </node>
                      </node>
                    </node>
                    <node concept="2YIFZM" id="3KV3FXk1vIL" role="33vP2m">
                      <ref role="1Pybhc" node="3KV3FXk1mCr" resolve="AbstractSolver" />
                      <ref role="37wK5l" node="3KV3FXjZXXV" resolve="getList" />
                      <node concept="37vLTw" id="3KV3FXjZTTV" role="37wK5m">
                        <ref role="3cqZAo" node="3KV3FXjZDIE" resolve="nextPathLeft" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3KV3FXjZDGU" role="3cqZAp">
                  <node concept="3cpWsn" id="3KV3FXjZDGV" role="3cpWs9">
                    <property role="TrG5h" value="rightPath" />
                    <node concept="3uibUv" id="3KV3FXjZDGW" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~List" resolve="List" />
                      <node concept="3qUE_q" id="3KV3FXjZDGX" role="11_B2D">
                        <node concept="3uibUv" id="3KV3FXjZDGY" role="3qUE_r">
                          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                        </node>
                      </node>
                    </node>
                    <node concept="2YIFZM" id="3KV3FXk1vIU" role="33vP2m">
                      <ref role="1Pybhc" node="3KV3FXk1mCr" resolve="AbstractSolver" />
                      <ref role="37wK5l" node="3KV3FXjZXXV" resolve="getList" />
                      <node concept="37vLTw" id="3KV3FXjZU0R" role="37wK5m">
                        <ref role="3cqZAo" node="3KV3FXjZDIB" resolve="nextPathRight" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3KV3FXjZDH4" role="3cqZAp" />
                <node concept="3cpWs8" id="3KV3FXjZDH5" role="3cqZAp">
                  <node concept="3cpWsn" id="3KV3FXjZDH6" role="3cpWs9">
                    <property role="TrG5h" value="leftIt" />
                    <node concept="3uibUv" id="3KV3FXjZDH7" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
                      <node concept="3qUE_q" id="3KV3FXjZDH8" role="11_B2D">
                        <node concept="3uibUv" id="3KV3FXjZDH9" role="3qUE_r">
                          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3KV3FXjZDHa" role="33vP2m">
                      <node concept="37vLTw" id="3KV3FXjZDHb" role="2Oq$k0">
                        <ref role="3cqZAo" node="3KV3FXjZDGL" resolve="leftPath" />
                      </node>
                      <node concept="liA8E" id="3KV3FXjZDHc" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.iterator():java.util.Iterator" resolve="iterator" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3KV3FXjZDHd" role="3cqZAp">
                  <node concept="3cpWsn" id="3KV3FXjZDHe" role="3cpWs9">
                    <property role="TrG5h" value="rightIt" />
                    <node concept="3uibUv" id="3KV3FXjZDHf" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
                      <node concept="3qUE_q" id="3KV3FXjZDHg" role="11_B2D">
                        <node concept="3uibUv" id="3KV3FXjZDHh" role="3qUE_r">
                          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3KV3FXjZDHi" role="33vP2m">
                      <node concept="37vLTw" id="3KV3FXjZDHj" role="2Oq$k0">
                        <ref role="3cqZAo" node="3KV3FXjZDGV" resolve="rightPath" />
                      </node>
                      <node concept="liA8E" id="3KV3FXjZDHk" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.iterator():java.util.Iterator" resolve="iterator" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3KV3FXjZDHm" role="3cqZAp">
                  <node concept="3cpWsn" id="3KV3FXjZDHn" role="3cpWs9">
                    <property role="TrG5h" value="lastMatch" />
                    <node concept="3uibUv" id="3KV3FXjZDHo" role="1tU5fm">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                    <node concept="10Nm6u" id="3KV3FXjZDHp" role="33vP2m" />
                  </node>
                </node>
                <node concept="2$JKZl" id="3KV3FXjZDHq" role="3cqZAp">
                  <node concept="3clFbS" id="3KV3FXjZDHr" role="2LFqv$">
                    <node concept="3cpWs8" id="3KV3FXjZDHs" role="3cqZAp">
                      <node concept="3cpWsn" id="3KV3FXjZDHt" role="3cpWs9">
                        <property role="TrG5h" value="nextLeft" />
                        <node concept="3uibUv" id="3KV3FXjZDHu" role="1tU5fm">
                          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                        </node>
                        <node concept="2OqwBi" id="3KV3FXjZDHv" role="33vP2m">
                          <node concept="37vLTw" id="3KV3FXjZDHw" role="2Oq$k0">
                            <ref role="3cqZAo" node="3KV3FXjZDH6" resolve="leftIt" />
                          </node>
                          <node concept="liA8E" id="3KV3FXjZDHx" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="3KV3FXjZDHy" role="3cqZAp">
                      <node concept="3cpWsn" id="3KV3FXjZDHz" role="3cpWs9">
                        <property role="TrG5h" value="nextRight" />
                        <node concept="3uibUv" id="3KV3FXjZDH$" role="1tU5fm">
                          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                        </node>
                        <node concept="2OqwBi" id="3KV3FXjZDH_" role="33vP2m">
                          <node concept="37vLTw" id="3KV3FXjZDHA" role="2Oq$k0">
                            <ref role="3cqZAo" node="3KV3FXjZDHe" resolve="rightIt" />
                          </node>
                          <node concept="liA8E" id="3KV3FXjZDHB" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="3KV3FXjZDHC" role="3cqZAp" />
                    <node concept="3cpWs8" id="3KV3FXjZDHD" role="3cqZAp">
                      <node concept="3cpWsn" id="3KV3FXjZDHE" role="3cpWs9">
                        <property role="TrG5h" value="match" />
                        <node concept="10P_77" id="3KV3FXjZDHF" role="1tU5fm" />
                        <node concept="1rXfSq" id="3KV3FXk0aIA" role="33vP2m">
                          <ref role="37wK5l" node="3KV3FXk0aK5" resolve="matches" />
                          <node concept="37vLTw" id="3KV3FXjZDHH" role="37wK5m">
                            <ref role="3cqZAo" node="3KV3FXjZDHt" resolve="nextLeft" />
                          </node>
                          <node concept="37vLTw" id="3KV3FXjZDHI" role="37wK5m">
                            <ref role="3cqZAo" node="3KV3FXjZDHz" resolve="nextRight" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="3KV3FXjZDHK" role="3cqZAp">
                      <node concept="3clFbS" id="3KV3FXjZDHL" role="3clFbx">
                        <node concept="3clFbJ" id="3KV3FXjZDHM" role="3cqZAp">
                          <node concept="3clFbS" id="3KV3FXjZDHN" role="3clFbx">
                            <node concept="3clFbF" id="3KV3FXjZDHO" role="3cqZAp">
                              <node concept="2OqwBi" id="3KV3FXjZDHP" role="3clFbG">
                                <node concept="37vLTw" id="3KV3FXjZDJ2" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3KV3FXjZG69" resolve="intermediateList" />
                                </node>
                                <node concept="liA8E" id="3KV3FXjZDHR" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                                  <node concept="37vLTw" id="3KV3FXjZDHS" role="37wK5m">
                                    <ref role="3cqZAo" node="3KV3FXjZDHn" resolve="lastMatch" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1Wc70l" id="3KV3FXjZDHT" role="3clFbw">
                            <node concept="3y3z36" id="3KV3FXjZDHU" role="3uHU7B">
                              <node concept="37vLTw" id="3KV3FXjZDHV" role="3uHU7B">
                                <ref role="3cqZAo" node="3KV3FXjZDHn" resolve="lastMatch" />
                              </node>
                              <node concept="10Nm6u" id="3KV3FXjZDHW" role="3uHU7w" />
                            </node>
                            <node concept="3fqX7Q" id="3KV3FXjZDHX" role="3uHU7w">
                              <node concept="1rXfSq" id="3KV3FXjZDHY" role="3fr31v">
                                <ref role="37wK5l" node="3KV3FXk025v" resolve="contains" />
                                <node concept="37vLTw" id="3KV3FXjZDHZ" role="37wK5m">
                                  <ref role="3cqZAo" node="3KV3FXjZDHn" resolve="lastMatch" />
                                </node>
                                <node concept="37vLTw" id="3KV3FXjZDJ5" role="37wK5m">
                                  <ref role="3cqZAo" node="3KV3FXjZG69" resolve="intermediateList" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="3KV3FXjZDI2" role="3cqZAp">
                          <node concept="37vLTI" id="3KV3FXjZDI3" role="3clFbG">
                            <node concept="2OqwBi" id="3KV3FXjZDI4" role="37vLTx">
                              <node concept="37vLTw" id="3KV3FXjZDI5" role="2Oq$k0">
                                <ref role="3cqZAo" node="3KV3FXjZDHt" resolve="nextLeft" />
                              </node>
                              <node concept="liA8E" id="3KV3FXjZDI6" role="2OqNvi">
                                <ref role="37wK5l" to="ie8e:2QE4RCGndD7" resolve="asRoot" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="3KV3FXjZDI7" role="37vLTJ">
                              <ref role="3cqZAo" node="3KV3FXjZDHn" resolve="lastMatch" />
                            </node>
                          </node>
                        </node>
                        <node concept="3N13vt" id="3KV3FXjZDI8" role="3cqZAp" />
                        <node concept="3clFbH" id="3KV3FXjZDI9" role="3cqZAp" />
                      </node>
                      <node concept="37vLTw" id="3KV3FXjZDIa" role="3clFbw">
                        <ref role="3cqZAo" node="3KV3FXjZDHE" resolve="match" />
                      </node>
                      <node concept="9aQIb" id="3KV3FXjZDIb" role="9aQIa">
                        <node concept="3clFbS" id="3KV3FXjZDIc" role="9aQI4">
                          <node concept="3zACq4" id="3KV3FXjZDId" role="3cqZAp" />
                          <node concept="3clFbH" id="3KV3FXjZDIe" role="3cqZAp" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="3KV3FXjZDIf" role="2$JKZa">
                    <node concept="2OqwBi" id="3KV3FXjZDIg" role="3uHU7w">
                      <node concept="37vLTw" id="3KV3FXjZDIh" role="2Oq$k0">
                        <ref role="3cqZAo" node="3KV3FXjZDHe" resolve="rightIt" />
                      </node>
                      <node concept="liA8E" id="3KV3FXjZDIi" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3KV3FXjZDIj" role="3uHU7B">
                      <node concept="37vLTw" id="3KV3FXjZDIk" role="2Oq$k0">
                        <ref role="3cqZAo" node="3KV3FXjZDH6" resolve="leftIt" />
                      </node>
                      <node concept="liA8E" id="3KV3FXjZDIl" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3KV3FXjZDIm" role="3cqZAp" />
                <node concept="3clFbJ" id="3KV3FXjZDIn" role="3cqZAp">
                  <node concept="3clFbS" id="3KV3FXjZDIo" role="3clFbx">
                    <node concept="3clFbF" id="3KV3FXjZDIp" role="3cqZAp">
                      <node concept="2OqwBi" id="3KV3FXjZDIq" role="3clFbG">
                        <node concept="37vLTw" id="3KV3FXjZDJ1" role="2Oq$k0">
                          <ref role="3cqZAo" node="3KV3FXjZG64" resolve="candidateList" />
                        </node>
                        <node concept="liA8E" id="3KV3FXjZDIs" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                          <node concept="37vLTw" id="3KV3FXjZDIt" role="37wK5m">
                            <ref role="3cqZAo" node="3KV3FXjZDHn" resolve="lastMatch" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1Wc70l" id="3KV3FXjZDIu" role="3clFbw">
                    <node concept="3fqX7Q" id="3KV3FXjZDIv" role="3uHU7w">
                      <node concept="1rXfSq" id="3KV3FXjZDIw" role="3fr31v">
                        <ref role="37wK5l" node="3KV3FXk025v" resolve="contains" />
                        <node concept="37vLTw" id="3KV3FXjZDIx" role="37wK5m">
                          <ref role="3cqZAo" node="3KV3FXjZDHn" resolve="lastMatch" />
                        </node>
                        <node concept="37vLTw" id="3KV3FXjZDIZ" role="37wK5m">
                          <ref role="3cqZAo" node="3KV3FXjZG64" resolve="candidateList" />
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="3KV3FXjZDI$" role="3uHU7B">
                      <node concept="37vLTw" id="3KV3FXjZDI_" role="3uHU7B">
                        <ref role="3cqZAo" node="3KV3FXjZDHn" resolve="lastMatch" />
                      </node>
                      <node concept="10Nm6u" id="3KV3FXjZDIA" role="3uHU7w" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="3KV3FXjZDIB" role="1Duv9x">
                <property role="TrG5h" value="nextPathRight" />
                <node concept="3uibUv" id="3KV3FXjZDIC" role="1tU5fm">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
              <node concept="37vLTw" id="3KV3FXjZDJ0" role="1DdaDG">
                <ref role="3cqZAo" node="3KV3FXjZDIL" resolve="rightPaths" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3KV3FXjZDIE" role="1Duv9x">
            <property role="TrG5h" value="nextPathLeft" />
            <node concept="3uibUv" id="3KV3FXjZDIF" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
          </node>
          <node concept="37vLTw" id="3KV3FXjZDJ4" role="1DdaDG">
            <ref role="3cqZAo" node="3KV3FXjZDIH" resolve="leftPaths" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3KV3FXjZDIH" role="3clF46">
        <property role="TrG5h" value="leftPaths" />
        <node concept="3uibUv" id="3KV3FXjZDII" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qUE_q" id="3KV3FXjZDIJ" role="11_B2D">
            <node concept="3uibUv" id="3KV3FXjZDIK" role="3qUE_r">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3KV3FXjZDIL" role="3clF46">
        <property role="TrG5h" value="rightPaths" />
        <node concept="3uibUv" id="3KV3FXjZDIM" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qUE_q" id="3KV3FXjZDIN" role="11_B2D">
            <node concept="3uibUv" id="3KV3FXjZDIO" role="3qUE_r">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3KV3FXjZDJa" role="3clF45" />
      <node concept="3Tm6S6" id="3KV3FXjZDJ9" role="1B3o_S" />
      <node concept="P$JXv" id="3KV3FXk0SAH" role="lGtFl">
        <node concept="TZ5HA" id="3KV3FXk0SAI" role="TZ5H$">
          <node concept="1dT_AC" id="3KV3FXk0SAJ" role="1dT_Ay">
            <property role="1dT_AB" value="Compare all paths pairwise and find the matching term farthest from the path root, storing" />
          </node>
        </node>
        <node concept="TZ5HA" id="3KV3FXk0Tbr" role="TZ5H$">
          <node concept="1dT_AC" id="3KV3FXk0Tbs" role="1dT_Ay">
            <property role="1dT_AB" value="the results in " />
          </node>
          <node concept="1dT_AC" id="3KV3FXk0TbC" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
          <node concept="1dT_AA" id="3KV3FXk0TbW" role="1dT_Ay">
            <node concept="92FcH" id="3KV3FXk0Tc3" role="qph3F">
              <node concept="TZ5HA" id="3KV3FXk0Tc5" role="2XjZqd" />
              <node concept="VUqz4" id="3KV3FXk0VNO" role="92FcQ">
                <ref role="YTMYt" node="3KV3FXjZG64" resolve="candidateList" />
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="3KV3FXk0TbV" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="3KV3FXk0TaV" role="TZ5H$">
          <node concept="1dT_AC" id="3KV3FXk0TaW" role="1dT_Ay">
            <property role="1dT_AB" value="All intermediate terms get collected into " />
          </node>
          <node concept="1dT_AA" id="3KV3FXk0Tbd" role="1dT_Ay">
            <node concept="92FcH" id="3KV3FXk0VPc" role="qph3F">
              <node concept="TZ5HA" id="3KV3FXk0VPe" role="2XjZqd" />
              <node concept="VUqz4" id="3KV3FXk0X99" role="92FcQ">
                <ref role="YTMYt" node="3KV3FXjZG69" resolve="intermediateList" />
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="3KV3FXk0Tbc" role="1dT_Ay">
            <property role="1dT_AB" value="." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KV3FXk0Eq5" role="jymVt" />
    <node concept="3clFb_" id="3KV3FXk0Dn3" role="jymVt">
      <property role="TrG5h" value="collectIntermediate" />
      <node concept="3Tm6S6" id="3KV3FXk0Dn4" role="1B3o_S" />
      <node concept="3cqZAl" id="3KV3FXk0Dn5" role="3clF45" />
      <node concept="37vLTG" id="3KV3FXk0DmW" role="3clF46">
        <property role="TrG5h" value="paths" />
        <node concept="3uibUv" id="3KV3FXk0DmX" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qUE_q" id="3KV3FXk0DmY" role="11_B2D">
            <node concept="3uibUv" id="3KV3FXk0DmZ" role="3qUE_r">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3KV3FXk0Dle" role="3clF47">
        <node concept="1DcWWT" id="3KV3FXk0Dlf" role="3cqZAp">
          <node concept="3clFbS" id="3KV3FXk0Dlg" role="2LFqv$">
            <node concept="3cpWs8" id="3KV3FXk0Dlh" role="3cqZAp">
              <node concept="3cpWsn" id="3KV3FXk0Dli" role="3cpWs9">
                <property role="TrG5h" value="tmpList" />
                <node concept="3uibUv" id="3KV3FXk0Dlj" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="3KV3FXk0Dlk" role="11_B2D">
                    <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                  </node>
                </node>
                <node concept="2ShNRf" id="3KV3FXk0Dll" role="33vP2m">
                  <node concept="1pGfFk" id="3KV3FXk0Dlm" role="2ShVmc">
                    <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                    <node concept="3uibUv" id="3KV3FXk0Dln" role="1pMfVU">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3KV3FXk0Dlo" role="3cqZAp">
              <node concept="3cpWsn" id="3KV3FXk0Dlp" role="3cpWs9">
                <property role="TrG5h" value="path" />
                <node concept="3uibUv" id="3KV3FXk0Dlq" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3qUE_q" id="3KV3FXk0Dlr" role="11_B2D">
                    <node concept="3uibUv" id="3KV3FXk0Dls" role="3qUE_r">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="3KV3FXk1vIF" role="33vP2m">
                  <ref role="1Pybhc" node="3KV3FXk1mCr" resolve="AbstractSolver" />
                  <ref role="37wK5l" node="3KV3FXjZXXV" resolve="getList" />
                  <node concept="37vLTw" id="3KV3FXk0Dlu" role="37wK5m">
                    <ref role="3cqZAo" node="3KV3FXk0DmT" resolve="nextPath" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3KV3FXk0Dlv" role="3cqZAp">
              <node concept="3cpWsn" id="3KV3FXk0Dlw" role="3cpWs9">
                <property role="TrG5h" value="next" />
                <node concept="3uibUv" id="3KV3FXk0Dlx" role="1tU5fm">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
            </node>
            <node concept="1Dw8fO" id="3KV3FXk0Dly" role="3cqZAp">
              <node concept="3clFbS" id="3KV3FXk0Dlz" role="2LFqv$">
                <node concept="3clFbF" id="3KV3FXk0Dl$" role="3cqZAp">
                  <node concept="37vLTI" id="3KV3FXk0Dl_" role="3clFbG">
                    <node concept="2OqwBi" id="3KV3FXk0DlA" role="37vLTx">
                      <node concept="37vLTw" id="3KV3FXk0DlB" role="2Oq$k0">
                        <ref role="3cqZAo" node="3KV3FXk0DmJ" resolve="pathIt" />
                      </node>
                      <node concept="liA8E" id="3KV3FXk0DlC" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3KV3FXk0DlD" role="37vLTJ">
                      <ref role="3cqZAo" node="3KV3FXk0Dlw" resolve="next" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3KV3FXk0DlE" role="3cqZAp">
                  <node concept="3clFbS" id="3KV3FXk0DlF" role="3clFbx">
                    <node concept="3N13vt" id="3KV3FXk0DlG" role="3cqZAp" />
                  </node>
                  <node concept="1rXfSq" id="3KV3FXk0DlH" role="3clFbw">
                    <ref role="37wK5l" node="3KV3FXk025v" resolve="contains" />
                    <node concept="37vLTw" id="3KV3FXk0DlI" role="37wK5m">
                      <ref role="3cqZAo" node="3KV3FXk0Dlw" resolve="next" />
                    </node>
                    <node concept="37vLTw" id="3KV3FXk0DlJ" role="37wK5m">
                      <ref role="3cqZAo" node="3KV3FXjZG69" resolve="intermediateList" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3KV3FXk0DlK" role="3cqZAp">
                  <node concept="3clFbS" id="3KV3FXk0DlL" role="3clFbx">
                    <node concept="3clFbF" id="3KV3FXk0DlO" role="3cqZAp">
                      <node concept="2OqwBi" id="3KV3FXk0DlP" role="3clFbG">
                        <node concept="37vLTw" id="3KV3FXk0DlQ" role="2Oq$k0">
                          <ref role="3cqZAo" node="3KV3FXk0Dli" resolve="tmpList" />
                        </node>
                        <node concept="liA8E" id="3KV3FXk0DlR" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                          <node concept="37vLTw" id="3KV3FXk0DlS" role="37wK5m">
                            <ref role="3cqZAo" node="3KV3FXk0Dlw" resolve="next" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1Dw8fO" id="3KV3FXk0DlY" role="3cqZAp">
                      <node concept="3clFbS" id="3KV3FXk0DlZ" role="2LFqv$">
                        <node concept="3clFbF" id="3KV3FXk0Dm0" role="3cqZAp">
                          <node concept="37vLTI" id="3KV3FXk0Dm1" role="3clFbG">
                            <node concept="2OqwBi" id="3KV3FXk0Dm2" role="37vLTx">
                              <node concept="37vLTw" id="3KV3FXk0Dm3" role="2Oq$k0">
                                <ref role="3cqZAo" node="3KV3FXk0DmJ" resolve="pathIt" />
                              </node>
                              <node concept="liA8E" id="3KV3FXk0Dm4" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="3KV3FXk0Dm5" role="37vLTJ">
                              <ref role="3cqZAo" node="3KV3FXk0Dlw" resolve="next" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="3KV3FXk0Dmm" role="3cqZAp">
                          <node concept="3clFbS" id="3KV3FXk0Dmn" role="3clFbx">
                            <node concept="3clFbF" id="3KV3FXk0Dmo" role="3cqZAp">
                              <node concept="2OqwBi" id="3KV3FXk0Dmp" role="3clFbG">
                                <node concept="37vLTw" id="3KV3FXk0Dmq" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3KV3FXjZG69" resolve="intermediateList" />
                                </node>
                                <node concept="liA8E" id="3KV3FXk0Dmr" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection):boolean" resolve="addAll" />
                                  <node concept="37vLTw" id="3KV3FXk0Dms" role="37wK5m">
                                    <ref role="3cqZAo" node="3KV3FXk0Dli" resolve="tmpList" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="3KV3FXk0Dmt" role="3cqZAp">
                              <node concept="2OqwBi" id="3KV3FXk0Dmu" role="3clFbG">
                                <node concept="37vLTw" id="3KV3FXk0Dmv" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3KV3FXk0Dli" resolve="tmpList" />
                                </node>
                                <node concept="liA8E" id="3KV3FXk0Dmw" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~List.clear():void" resolve="clear" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="3KV3FXk0Dmx" role="3cqZAp">
                              <node concept="2OqwBi" id="3KV3FXk0Dmy" role="3clFbG">
                                <node concept="37vLTw" id="3KV3FXk0Dmz" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3KV3FXk0Dli" resolve="tmpList" />
                                </node>
                                <node concept="liA8E" id="3KV3FXk0Dm$" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                                  <node concept="37vLTw" id="3KV3FXk0Dm_" role="37wK5m">
                                    <ref role="3cqZAo" node="3KV3FXk0Dlw" resolve="next" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="3KV3FXk0PP7" role="3cqZAp" />
                          </node>
                          <node concept="1rXfSq" id="3KV3FXk0DmA" role="3clFbw">
                            <ref role="37wK5l" node="3KV3FXk025v" resolve="contains" />
                            <node concept="37vLTw" id="3KV3FXk0DmB" role="37wK5m">
                              <ref role="3cqZAo" node="3KV3FXk0Dlw" resolve="next" />
                            </node>
                            <node concept="37vLTw" id="3KV3FXk0DmC" role="37wK5m">
                              <ref role="3cqZAo" node="3KV3FXjZG64" resolve="candidateList" />
                            </node>
                          </node>
                          <node concept="3eNFk2" id="3KV3FXk0Pi9" role="3eNLev">
                            <node concept="3clFbS" id="3KV3FXk0Pib" role="3eOfB_">
                              <node concept="3clFbF" id="3KV3FXk0Dm8" role="3cqZAp">
                                <node concept="2OqwBi" id="3KV3FXk0Dm9" role="3clFbG">
                                  <node concept="37vLTw" id="3KV3FXk0Dma" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3KV3FXk0Dli" resolve="tmpList" />
                                  </node>
                                  <node concept="liA8E" id="3KV3FXk0Dmb" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                                    <node concept="37vLTw" id="3KV3FXk0Dmc" role="37wK5m">
                                      <ref role="3cqZAo" node="3KV3FXk0Dlw" resolve="next" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1Wc70l" id="3KV3FXk0Pp9" role="3eO9$A">
                              <node concept="3fqX7Q" id="3KV3FXk0Ppa" role="3uHU7w">
                                <node concept="1rXfSq" id="3KV3FXk0Ppb" role="3fr31v">
                                  <ref role="37wK5l" node="3KV3FXk025v" resolve="contains" />
                                  <node concept="37vLTw" id="3KV3FXk0Ppc" role="37wK5m">
                                    <ref role="3cqZAo" node="3KV3FXk0Dlw" resolve="next" />
                                  </node>
                                  <node concept="37vLTw" id="3KV3FXk0Ppd" role="37wK5m">
                                    <ref role="3cqZAo" node="3KV3FXjZG69" resolve="intermediateList" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3fqX7Q" id="3KV3FXk0Ppe" role="3uHU7B">
                                <node concept="1rXfSq" id="3KV3FXk0Ppf" role="3fr31v">
                                  <ref role="37wK5l" node="3KV3FXk025v" resolve="contains" />
                                  <node concept="37vLTw" id="3KV3FXk0Ppg" role="37wK5m">
                                    <ref role="3cqZAo" node="3KV3FXk0Dlw" resolve="next" />
                                  </node>
                                  <node concept="37vLTw" id="3KV3FXk0Pph" role="37wK5m">
                                    <ref role="3cqZAo" node="3KV3FXk0Dli" resolve="tmpList" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3KV3FXk0DmD" role="1Dwp0S">
                        <node concept="37vLTw" id="3KV3FXk0DmE" role="2Oq$k0">
                          <ref role="3cqZAo" node="3KV3FXk0DmJ" resolve="pathIt" />
                        </node>
                        <node concept="liA8E" id="3KV3FXk0DmF" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="3KV3FXk0DmG" role="3clFbw">
                    <ref role="37wK5l" node="3KV3FXk025v" resolve="contains" />
                    <node concept="37vLTw" id="3KV3FXk0DmH" role="37wK5m">
                      <ref role="3cqZAo" node="3KV3FXk0Dlw" resolve="next" />
                    </node>
                    <node concept="37vLTw" id="3KV3FXk0DmI" role="37wK5m">
                      <ref role="3cqZAo" node="3KV3FXjZG64" resolve="candidateList" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="3KV3FXk0DmJ" role="1Duv9x">
                <property role="TrG5h" value="pathIt" />
                <node concept="3uibUv" id="3KV3FXk0DmK" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
                  <node concept="3qUE_q" id="3KV3FXk0DmL" role="11_B2D">
                    <node concept="3uibUv" id="3KV3FXk0DmM" role="3qUE_r">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3KV3FXk0DmN" role="33vP2m">
                  <node concept="37vLTw" id="3KV3FXk0DmO" role="2Oq$k0">
                    <ref role="3cqZAo" node="3KV3FXk0Dlp" resolve="path" />
                  </node>
                  <node concept="liA8E" id="3KV3FXk0DmP" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.iterator():java.util.Iterator" resolve="iterator" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3KV3FXk0DmQ" role="1Dwp0S">
                <node concept="37vLTw" id="3KV3FXk0DmR" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KV3FXk0DmJ" resolve="pathIt" />
                </node>
                <node concept="liA8E" id="3KV3FXk0DmS" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3KV3FXk0DmT" role="1Duv9x">
            <property role="TrG5h" value="nextPath" />
            <node concept="3uibUv" id="3KV3FXk0DmU" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
          </node>
          <node concept="37vLTw" id="3KV3FXk0Dn0" role="1DdaDG">
            <ref role="3cqZAo" node="3KV3FXk0DmW" resolve="paths" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="3KV3FXk13Ma" role="lGtFl">
        <node concept="TZ5HA" id="3KV3FXk13Mb" role="TZ5H$">
          <node concept="1dT_AC" id="3KV3FXk13Mc" role="1dT_Ay">
            <property role="1dT_AB" value="Walk the path until first &quot;candidate&quot; is found, and record it. Then walk further until the next" />
          </node>
        </node>
        <node concept="TZ5HA" id="3KV3FXk14mj" role="TZ5H$">
          <node concept="1dT_AC" id="3KV3FXk14mk" role="1dT_Ay">
            <property role="1dT_AB" value="&quot;candidate&quot;, recording all visited terms. If the second &quot;candidate&quot; is found, all the recorded terms" />
          </node>
        </node>
        <node concept="TZ5HA" id="3KV3FXk14mp" role="TZ5H$">
          <node concept="1dT_AC" id="3KV3FXk14mq" role="1dT_Ay">
            <property role="1dT_AB" value="are added to " />
          </node>
          <node concept="1dT_AA" id="3KV3FXk14mC" role="1dT_Ay">
            <node concept="92FcH" id="3KV3FXk14mI" role="qph3F">
              <node concept="TZ5HA" id="3KV3FXk14mK" role="2XjZqd" />
              <node concept="VUqz4" id="3KV3FXk16Yv" role="92FcQ">
                <ref role="YTMYt" node="3KV3FXjZG69" resolve="intermediateList" />
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="3KV3FXk14mB" role="1dT_Ay">
            <property role="1dT_AB" value=". Then the process repeats." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KV3FXjZF4v" role="jymVt" />
    <node concept="3clFbW" id="3KV3FXjZFyb" role="jymVt">
      <node concept="37vLTG" id="3KV3FXjZFT2" role="3clF46">
        <property role="TrG5h" value="computingSession" />
        <node concept="3uibUv" id="3KV3FXjZFTc" role="1tU5fm">
          <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="SessionSolver" />
        </node>
      </node>
      <node concept="3cqZAl" id="3KV3FXjZFyd" role="3clF45" />
      <node concept="3Tm6S6" id="3KV3FXjZFHB" role="1B3o_S" />
      <node concept="3clFbS" id="3KV3FXjZFyf" role="3clF47">
        <node concept="XkiVB" id="3KV3FXk1ucM" role="3cqZAp">
          <ref role="37wK5l" node="3KV3FXk1tGv" resolve="AbstractSolver" />
          <node concept="37vLTw" id="3KV3FXk1udj" role="37wK5m">
            <ref role="3cqZAo" node="3KV3FXjZFT2" resolve="computingSession" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5H6hZahoLOt" role="jymVt" />
    <node concept="3Tm1VV" id="5H6hZahmloo" role="1B3o_S" />
    <node concept="312cEg" id="3KV3FXjZG64" role="jymVt">
      <property role="TrG5h" value="candidateList" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="3KV3FXjZG65" role="1B3o_S" />
      <node concept="3uibUv" id="3KV3FXjZG67" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3KV3FXjZG68" role="11_B2D">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="2ShNRf" id="3KV3FXjZGkF" role="33vP2m">
        <node concept="1pGfFk" id="3KV3FXjZGrO" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="3KV3FXjZGwh" role="1pMfVU">
            <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3KV3FXjZG69" role="jymVt">
      <property role="TrG5h" value="intermediateList" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="3KV3FXjZG6a" role="1B3o_S" />
      <node concept="3uibUv" id="3KV3FXjZG6c" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3KV3FXjZG6d" role="11_B2D">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="2ShNRf" id="3KV3FXjZGzO" role="33vP2m">
        <node concept="1pGfFk" id="3KV3FXjZGzP" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="3KV3FXjZGzQ" role="1pMfVU">
            <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="3KV3FXk1o$R" role="1zkMxy">
      <ref role="3uigEE" node="3KV3FXk1mCr" resolve="AbstractSolver" />
    </node>
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
  <node concept="312cEu" id="3KV3FXk1fjd">
    <property role="TrG5h" value="SubtypePathSolver" />
    <node concept="2tJIrI" id="3KV3FXk1fFS" role="jymVt" />
    <node concept="2YIFZL" id="3KV3FXk1fGe" role="jymVt">
      <property role="TrG5h" value="findSubtypingPath" />
      <node concept="37vLTG" id="3KV3FXk1fGz" role="3clF46">
        <property role="TrG5h" value="result" />
        <node concept="3uibUv" id="3KV3FXk1fGJ" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="3KV3FXk1fGZ" role="3clF46">
        <property role="TrG5h" value="fullPaths" />
        <node concept="3uibUv" id="3KV3FXk1fHd" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="3KV3FXk1fHy" role="3clF46">
        <property role="TrG5h" value="startFrom" />
        <node concept="3uibUv" id="3KV3FXk1fHM" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="10P_77" id="3KV3FXk1j6w" role="3clF45" />
      <node concept="3Tm1VV" id="3KV3FXk1fGh" role="1B3o_S" />
      <node concept="3clFbS" id="3KV3FXk1fGi" role="3clF47">
        <node concept="3cpWs8" id="3KV3FXk1h3T" role="3cqZAp">
          <node concept="3cpWsn" id="3KV3FXk1h3U" role="3cpWs9">
            <property role="TrG5h" value="fullPathVal" />
            <node concept="3uibUv" id="3KV3FXk1h3N" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
            <node concept="2OqwBi" id="3KV3FXk1h3V" role="33vP2m">
              <node concept="2OqwBi" id="3KV3FXk1h3W" role="2Oq$k0">
                <node concept="37vLTw" id="3KV3FXk1h3X" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KV3FXk1fGZ" resolve="fullPaths" />
                </node>
                <node concept="liA8E" id="3KV3FXk1h3Y" role="2OqNvi">
                  <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                </node>
              </node>
              <node concept="liA8E" id="3KV3FXk1h3Z" role="2OqNvi">
                <ref role="37wK5l" to="95zw:3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3KV3FXk1iAj" role="3cqZAp">
          <node concept="3cpWsn" id="3KV3FXk1iAk" role="3cpWs9">
            <property role="TrG5h" value="startFromVal" />
            <node concept="3uibUv" id="3KV3FXk1iAd" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
            <node concept="2OqwBi" id="3KV3FXk1iAl" role="33vP2m">
              <node concept="2OqwBi" id="3KV3FXk1iAm" role="2Oq$k0">
                <node concept="37vLTw" id="3KV3FXk1iAn" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KV3FXk1fHy" resolve="startFrom" />
                </node>
                <node concept="liA8E" id="3KV3FXk1iAo" role="2OqNvi">
                  <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                </node>
              </node>
              <node concept="liA8E" id="3KV3FXk1iAp" role="2OqNvi">
                <ref role="37wK5l" to="95zw:3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3KV3FXk1iNd" role="3cqZAp">
          <node concept="3clFbS" id="3KV3FXk1iNf" role="3clFbx">
            <node concept="3cpWs6" id="3KV3FXk1j1W" role="3cqZAp">
              <node concept="3clFbT" id="3KV3FXk1j4j" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="3KV3FXk1iVy" role="3clFbw">
            <node concept="3clFbC" id="3KV3FXk1j0o" role="3uHU7w">
              <node concept="10Nm6u" id="3KV3FXk1j18" role="3uHU7w" />
              <node concept="37vLTw" id="3KV3FXk1iXZ" role="3uHU7B">
                <ref role="3cqZAo" node="3KV3FXk1iAk" resolve="startFromVal" />
              </node>
            </node>
            <node concept="3clFbC" id="3KV3FXk1iT8" role="3uHU7B">
              <node concept="37vLTw" id="3KV3FXk1iP$" role="3uHU7B">
                <ref role="3cqZAo" node="3KV3FXk1h3U" resolve="fullPathVal" />
              </node>
              <node concept="10Nm6u" id="3KV3FXk1iV2" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3KV3FXk1j8I" role="3cqZAp" />
        <node concept="3cpWs8" id="5uFPQ7ClVCJ" role="3cqZAp">
          <node concept="3cpWsn" id="5uFPQ7ClVCK" role="3cpWs9">
            <property role="TrG5h" value="computingSession" />
            <node concept="3uibUv" id="5uFPQ7ClVCL" role="1tU5fm">
              <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="SessionSolver" />
            </node>
            <node concept="2OqwBi" id="5uFPQ7ClVCM" role="33vP2m">
              <node concept="2YIFZM" id="5uFPQ7ClVCN" role="2Oq$k0">
                <ref role="1Pybhc" to="rchb:5uFPQ7BvN_d" resolve="EvaluationSession" />
                <ref role="37wK5l" to="rchb:5uFPQ7Bwt5n" resolve="current" />
              </node>
              <node concept="liA8E" id="5uFPQ7ClVCO" role="2OqNvi">
                <ref role="37wK5l" to="rchb:5uFPQ7ClOzA" resolve="computingSession" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3KV3FXk1ku8" role="3cqZAp">
          <node concept="3cpWsn" id="3KV3FXk1ku9" role="3cpWs9">
            <property role="TrG5h" value="resultList" />
            <node concept="3uibUv" id="3KV3FXk1ku3" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="3KV3FXk1ku6" role="11_B2D">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
            </node>
            <node concept="2OqwBi" id="3KV3FXk1kua" role="33vP2m">
              <node concept="2ShNRf" id="3KV3FXk1kub" role="2Oq$k0">
                <node concept="1pGfFk" id="3KV3FXk1kuc" role="2ShVmc">
                  <ref role="37wK5l" node="3KV3FXk1jky" resolve="SubtypePathSolver" />
                  <node concept="37vLTw" id="3KV3FXk1kud" role="37wK5m">
                    <ref role="3cqZAo" node="5uFPQ7ClVCK" resolve="computingSession" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3KV3FXk1kue" role="2OqNvi">
                <ref role="37wK5l" node="3KV3FXk1jPV" resolve="doFind" />
                <node concept="37vLTw" id="3KV3FXk1kuf" role="37wK5m">
                  <ref role="3cqZAo" node="3KV3FXk1h3U" resolve="fullPathVal" />
                </node>
                <node concept="37vLTw" id="3KV3FXk1kug" role="37wK5m">
                  <ref role="3cqZAo" node="3KV3FXk1iAk" resolve="startFromVal" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3KV3FXk1jbh" role="3cqZAp" />
        <node concept="3clFbJ" id="3KV3FXk1kIP" role="3cqZAp">
          <node concept="3clFbS" id="3KV3FXk1kIR" role="3clFbx">
            <node concept="3clFbF" id="5_6ImQZ8rNY" role="3cqZAp">
              <node concept="2YIFZM" id="5_6ImQZ8rNZ" role="3clFbG">
                <ref role="1Pybhc" to="yg8f:5_6ImQZ8j9D" resolve="SolverUtil" />
                <ref role="37wK5l" to="yg8f:5_6ImQZ8ja0" resolve="fail" />
                <node concept="Xl_RD" id="5_6ImQZ8rO0" role="37wK5m">
                  <property role="Xl_RC" value="could not find subtyping path" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5_6ImQZ8rO1" role="3cqZAp">
              <node concept="3clFbT" id="5_6ImQZ8rO2" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
            <node concept="3clFbH" id="3KV3FXk1lYT" role="3cqZAp" />
          </node>
          <node concept="22lmx$" id="5_6ImQYdpbz" role="3clFbw">
            <node concept="3clFbC" id="5_6ImQYdptn" role="3uHU7B">
              <node concept="10Nm6u" id="5_6ImQYdpuI" role="3uHU7w" />
              <node concept="37vLTw" id="5_6ImQYdpjL" role="3uHU7B">
                <ref role="3cqZAo" node="3KV3FXk1ku9" resolve="resultList" />
              </node>
            </node>
            <node concept="2OqwBi" id="3KV3FXk1kZn" role="3uHU7w">
              <node concept="37vLTw" id="3KV3FXk1kNA" role="2Oq$k0">
                <ref role="3cqZAo" node="3KV3FXk1ku9" resolve="resultList" />
              </node>
              <node concept="liA8E" id="3KV3FXk1lxk" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="3KV3FXk1lG1" role="9aQIa">
            <node concept="3clFbS" id="3KV3FXk1lG2" role="9aQI4">
              <node concept="3clFbF" id="3KV3FXk1m38" role="3cqZAp">
                <node concept="2OqwBi" id="3KV3FXk1m39" role="3clFbG">
                  <node concept="37vLTw" id="3KV3FXk1m3a" role="2Oq$k0">
                    <ref role="3cqZAo" node="5uFPQ7ClVCK" resolve="computingSession" />
                  </node>
                  <node concept="liA8E" id="3KV3FXk1m3b" role="2OqNvi">
                    <ref role="37wK5l" to="qrld:4xBopTznPKO" resolve="tell" />
                    <node concept="10M0yZ" id="3KV3FXk1m3c" role="37wK5m">
                      <ref role="1PxDUh" to="oy3s:3HJTsBn4kk_" resolve="EqualsPredicate" />
                      <ref role="3cqZAo" to="oy3s:5uFPQ7C23RV" resolve="EQ_SYM" />
                    </node>
                    <node concept="37vLTw" id="3KV3FXk1m3d" role="37wK5m">
                      <ref role="3cqZAo" node="3KV3FXk1fGz" resolve="result" />
                    </node>
                    <node concept="2ShNRf" id="3KV3FXk1m3e" role="37wK5m">
                      <node concept="1pGfFk" id="3KV3FXk1m3f" role="2ShVmc">
                        <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                        <node concept="2YIFZM" id="3KV3FXk1m8m" role="37wK5m">
                          <ref role="37wK5l" node="5H6hZahoMly" resolve="buildResult" />
                          <ref role="1Pybhc" node="3KV3FXk1mCr" resolve="AbstractSolver" />
                          <node concept="37vLTw" id="3KV3FXk1m3h" role="37wK5m">
                            <ref role="3cqZAo" node="3KV3FXk1ku9" resolve="resultList" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3KV3FXk1m3k" role="3cqZAp">
                <node concept="3clFbT" id="3KV3FXk1m3l" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="3KV3FXk1Zlo" role="lGtFl">
        <node concept="TZ5HA" id="3KV3FXk1Zlp" role="TZ5H$">
          <node concept="1dT_AC" id="3KV3FXk1Zlq" role="1dT_Ay">
            <property role="1dT_AB" value="Find the shortest path among those specified in " />
          </node>
          <node concept="1dT_AA" id="3KV3FXk1ZsS" role="1dT_Ay">
            <node concept="VVOAv" id="3KV3FXk1ZsY" role="qph3F">
              <node concept="TZ5HA" id="3KV3FXk1Zt0" role="2Xj1qM">
                <node concept="1dT_AC" id="3KV3FXk1Zt4" role="1dT_Ay">
                  <property role="1dT_AB" value="fullPaths" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="3KV3FXk1ZsR" role="1dT_Ay">
            <property role="1dT_AB" value=" parameter that starts with the term in" />
          </node>
        </node>
        <node concept="TZ5HA" id="3KV3FXk1Zt6" role="TZ5H$">
          <node concept="1dT_AC" id="3KV3FXk1Zt7" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
          <node concept="1dT_AA" id="3KV3FXk1Ztt" role="1dT_Ay">
            <node concept="VVOAv" id="3KV3FXk1Ztz" role="qph3F">
              <node concept="TZ5HA" id="3KV3FXk1Zt_" role="2Xj1qM">
                <node concept="1dT_AC" id="3KV3FXk1ZtD" role="1dT_Ay">
                  <property role="1dT_AB" value="startFrom" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="3KV3FXk1Zts" role="1dT_Ay">
            <property role="1dT_AB" value=". Then reverse the path so that it becomes a supertypes path." />
          </node>
        </node>
        <node concept="TZ5HA" id="3KV3FXk1ZtF" role="TZ5H$">
          <node concept="1dT_AC" id="3KV3FXk1ZtG" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="3KV3FXk1Zu3" role="TZ5H$">
          <node concept="1dT_AC" id="3KV3FXk1Zu4" role="1dT_Ay">
            <property role="1dT_AB" value="Parameter " />
          </node>
          <node concept="1dT_AA" id="3KV3FXk1Zuz" role="1dT_Ay">
            <node concept="VVOAv" id="3KV3FXk1ZuD" role="qph3F">
              <node concept="TZ5HA" id="3KV3FXk1ZuF" role="2Xj1qM">
                <node concept="1dT_AC" id="3KV3FXk1ZuJ" role="1dT_Ay">
                  <property role="1dT_AB" value="fullPaths" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="3KV3FXk1Zuy" role="1dT_Ay">
            <property role="1dT_AB" value=" is expected to be a list of &quot;subtype paths&quot; same as the parameters in " />
          </node>
          <node concept="1dT_AA" id="3KV3FXk1ZuM" role="1dT_Ay">
            <node concept="92FcH" id="3KV3FXk1ZuX" role="qph3F">
              <node concept="TZ5HA" id="3KV3FXk1ZuZ" role="2XjZqd" />
              <node concept="VXe0Z" id="3KV3FXk27va" role="92FcQ">
                <ref role="VXe0S" node="5H6hZahmloU" resolve="findLub" />
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="3KV3FXk1ZuL" role="1dT_Ay">
            <property role="1dT_AB" value=":" />
          </node>
        </node>
        <node concept="TZ5HA" id="3KV3FXk28ze" role="TZ5H$">
          <node concept="1dT_AC" id="3KV3FXk28zf" role="1dT_Ay">
            <property role="1dT_AB" value="every path starts at the top type and continues down, following the subtype relation," />
          </node>
        </node>
        <node concept="TZ5HA" id="3KV3FXk28$x" role="TZ5H$">
          <node concept="1dT_AC" id="3KV3FXk28_b" role="1dT_Ay">
            <property role="1dT_AB" value="to the type at which it originated." />
          </node>
          <node concept="1dT_AC" id="3KV3FXk28$y" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="3KV3FXk28_e" role="TZ5H$">
          <node concept="1dT_AC" id="3KV3FXk28_f" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="3KV3FXk28zO" role="TZ5H$">
          <node concept="1dT_AC" id="3KV3FXk28zP" role="1dT_Ay">
            <property role="1dT_AB" value="On returning " />
          </node>
          <node concept="1dT_AA" id="3KV3FXk28AK" role="1dT_Ay">
            <node concept="VVOAv" id="3KV3FXk28AQ" role="qph3F">
              <node concept="TZ5HA" id="3KV3FXk28AS" role="2Xj1qM">
                <node concept="1dT_AC" id="3KV3FXk28AW" role="1dT_Ay">
                  <property role="1dT_AB" value="true" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="3KV3FXk28AJ" role="1dT_Ay">
            <property role="1dT_AB" value=", the " />
          </node>
          <node concept="1dT_AA" id="3KV3FXk28AZ" role="1dT_Ay">
            <node concept="VVOAv" id="3KV3FXk28Ba" role="qph3F">
              <node concept="TZ5HA" id="3KV3FXk28Bc" role="2Xj1qM">
                <node concept="1dT_AC" id="3KV3FXk28Bg" role="1dT_Ay">
                  <property role="1dT_AB" value="result" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="3KV3FXk28AY" role="1dT_Ay">
            <property role="1dT_AB" value=" contains the shortest path originating at the type in question" />
          </node>
        </node>
        <node concept="TZ5HA" id="5_6ImQZlA11" role="TZ5H$">
          <node concept="1dT_AC" id="5_6ImQZlA12" role="1dT_Ay">
            <property role="1dT_AB" value="and ending at " />
          </node>
          <node concept="1dT_AA" id="3KV3FXk28Ce" role="1dT_Ay">
            <node concept="VVOAv" id="3KV3FXk28Cu" role="qph3F">
              <node concept="TZ5HA" id="3KV3FXk28Cw" role="2Xj1qM">
                <node concept="1dT_AC" id="3KV3FXk28C$" role="1dT_Ay">
                  <property role="1dT_AB" value="startFrom" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="3KV3FXk28Cd" role="1dT_Ay">
            <property role="1dT_AB" value="." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KV3FXk1fFX" role="jymVt" />
    <node concept="3clFb_" id="3KV3FXk1jPV" role="jymVt">
      <property role="TrG5h" value="doFind" />
      <node concept="37vLTG" id="3KV3FXk1k9N" role="3clF46">
        <property role="TrG5h" value="fullPathsVal" />
        <node concept="3uibUv" id="3KV3FXk1kby" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="3KV3FXk1kjq" role="3clF46">
        <property role="TrG5h" value="startFromVal" />
        <node concept="3uibUv" id="3KV3FXk1kll" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3uibUv" id="3KV3FXk1jRS" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3KV3FXk1jTp" role="11_B2D">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3Tm6S6" id="WauyOOvMr0" role="1B3o_S" />
      <node concept="3clFbS" id="3KV3FXk1jPZ" role="3clF47">
        <node concept="3cpWs8" id="3KV3FXk1J2G" role="3cqZAp">
          <node concept="3cpWsn" id="3KV3FXk1J2H" role="3cpWs9">
            <property role="TrG5h" value="fullPathsList" />
            <node concept="3uibUv" id="3KV3FXk1J2I" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3qUE_q" id="3KV3FXk1J2J" role="11_B2D">
                <node concept="3uibUv" id="3KV3FXk1J2K" role="3qUE_r">
                  <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="3KV3FXk1J2L" role="33vP2m">
              <ref role="1Pybhc" node="3KV3FXk1mCr" resolve="AbstractSolver" />
              <ref role="37wK5l" node="3KV3FXjZXXV" resolve="getList" />
              <node concept="37vLTw" id="3KV3FXk1J6J" role="37wK5m">
                <ref role="3cqZAo" node="3KV3FXk1k9N" resolve="fullPathsVal" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3KV3FXk1J8e" role="3cqZAp">
          <node concept="3clFbS" id="3KV3FXk1J8f" role="3clFbx">
            <node concept="3cpWs6" id="3KV3FXk1J8g" role="3cqZAp">
              <node concept="2YIFZM" id="3KV3FXk1J8h" role="3cqZAk">
                <ref role="37wK5l" to="33ny:~Collections.emptyList():java.util.List" resolve="emptyList" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="3KV3FXk1J8p" role="3clFbw">
            <node concept="2OqwBi" id="3KV3FXk1J8q" role="3fr31v">
              <node concept="2OqwBi" id="3KV3FXk1J8r" role="2Oq$k0">
                <node concept="37vLTw" id="3KV3FXk1J8s" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KV3FXk1J2H" resolve="fullPathsList" />
                </node>
                <node concept="liA8E" id="3KV3FXk1J8t" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.iterator():java.util.Iterator" resolve="iterator" />
                </node>
              </node>
              <node concept="liA8E" id="3KV3FXk1J8u" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3KV3FXk1jY3" role="3cqZAp" />
        <node concept="3cpWs8" id="3KV3FXk1KVh" role="3cqZAp">
          <node concept="3cpWsn" id="3KV3FXk1KVn" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="3KV3FXk1KVp" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="3KV3FXk1L7M" role="11_B2D">
                <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
              </node>
            </node>
            <node concept="10Nm6u" id="3KV3FXk2g7X" role="33vP2m" />
          </node>
        </node>
        <node concept="1DcWWT" id="3KV3FXk1KbU" role="3cqZAp">
          <node concept="3clFbS" id="3KV3FXk1KbW" role="2LFqv$">
            <node concept="3cpWs8" id="3KV3FXk1Lsp" role="3cqZAp">
              <node concept="3cpWsn" id="3KV3FXk1Lsq" role="3cpWs9">
                <property role="TrG5h" value="candidatePath" />
                <node concept="3uibUv" id="3KV3FXk1Lsr" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="3KV3FXk1Lss" role="11_B2D">
                    <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                  </node>
                </node>
                <node concept="2ShNRf" id="3KV3FXk1Lst" role="33vP2m">
                  <node concept="1pGfFk" id="3KV3FXk1Lsu" role="2ShVmc">
                    <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                    <node concept="3uibUv" id="3KV3FXk1Lsv" role="1pMfVU">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3KV3FXk1MZU" role="3cqZAp" />
            <node concept="3cpWs8" id="3KV3FXk1Naf" role="3cqZAp">
              <node concept="3cpWsn" id="3KV3FXk1Nag" role="3cpWs9">
                <property role="TrG5h" value="pathList" />
                <node concept="3uibUv" id="3KV3FXk1Na5" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3qUE_q" id="3KV3FXk1Nac" role="11_B2D">
                    <node concept="3uibUv" id="3KV3FXk1Nad" role="3qUE_r">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="3KV3FXk1Nah" role="33vP2m">
                  <ref role="1Pybhc" node="3KV3FXk1mCr" resolve="AbstractSolver" />
                  <ref role="37wK5l" node="3KV3FXjZXXV" resolve="getList" />
                  <node concept="37vLTw" id="3KV3FXk1Nai" role="37wK5m">
                    <ref role="3cqZAo" node="3KV3FXk1KbY" resolve="path" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Dw8fO" id="3KV3FXk1Nl0" role="3cqZAp">
              <node concept="3clFbS" id="3KV3FXk1Nl2" role="2LFqv$">
                <node concept="3cpWs8" id="3KV3FXk1OUz" role="3cqZAp">
                  <node concept="3cpWsn" id="3KV3FXk1OU$" role="3cpWs9">
                    <property role="TrG5h" value="next" />
                    <node concept="3uibUv" id="3KV3FXk1OU_" role="1tU5fm">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                    <node concept="2OqwBi" id="3KV3FXk1OUA" role="33vP2m">
                      <node concept="37vLTw" id="3KV3FXk1OUB" role="2Oq$k0">
                        <ref role="3cqZAo" node="3KV3FXk1Nl3" resolve="pathListIt" />
                      </node>
                      <node concept="liA8E" id="3KV3FXk1OUC" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3KV3FXk1Oww" role="3cqZAp">
                  <node concept="3clFbS" id="3KV3FXk1Owy" role="3clFbx">
                    <node concept="3N13vt" id="3KV3FXk1PaO" role="3cqZAp" />
                  </node>
                  <node concept="3fqX7Q" id="3KV3FXk1P9z" role="3clFbw">
                    <node concept="1rXfSq" id="3KV3FXk1P9_" role="3fr31v">
                      <ref role="37wK5l" node="3KV3FXk0aK5" resolve="matches" />
                      <node concept="37vLTw" id="3KV3FXk1P9A" role="37wK5m">
                        <ref role="3cqZAo" node="3KV3FXk1OU$" resolve="next" />
                      </node>
                      <node concept="37vLTw" id="3KV3FXk1P9B" role="37wK5m">
                        <ref role="3cqZAo" node="3KV3FXk1kjq" resolve="startFromVal" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3KV3FXk1UIF" role="3cqZAp" />
                <node concept="3clFbF" id="3KV3FXk1Pd_" role="3cqZAp">
                  <node concept="2OqwBi" id="3KV3FXk1Pmj" role="3clFbG">
                    <node concept="37vLTw" id="3KV3FXk1Pdz" role="2Oq$k0">
                      <ref role="3cqZAo" node="3KV3FXk1Lsq" resolve="candidatePath" />
                    </node>
                    <node concept="liA8E" id="3KV3FXk1PPB" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                      <node concept="37vLTw" id="3KV3FXk1PRF" role="37wK5m">
                        <ref role="3cqZAo" node="3KV3FXk1OU$" resolve="next" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2$JKZl" id="3KV3FXk1PXQ" role="3cqZAp">
                  <node concept="3clFbS" id="3KV3FXk1PXS" role="2LFqv$">
                    <node concept="3clFbF" id="3KV3FXk1QcR" role="3cqZAp">
                      <node concept="2OqwBi" id="3KV3FXk1Qk3" role="3clFbG">
                        <node concept="37vLTw" id="3KV3FXk1QcQ" role="2Oq$k0">
                          <ref role="3cqZAo" node="3KV3FXk1Lsq" resolve="candidatePath" />
                        </node>
                        <node concept="liA8E" id="3KV3FXk1QzY" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                          <node concept="2OqwBi" id="3KV3FXk1QE9" role="37wK5m">
                            <node concept="37vLTw" id="3KV3FXk1QAl" role="2Oq$k0">
                              <ref role="3cqZAo" node="3KV3FXk1Nl3" resolve="pathListIt" />
                            </node>
                            <node concept="liA8E" id="3KV3FXk1QMB" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3KV3FXk1Q4g" role="2$JKZa">
                    <node concept="37vLTw" id="3KV3FXk1Q1L" role="2Oq$k0">
                      <ref role="3cqZAo" node="3KV3FXk1Nl3" resolve="pathListIt" />
                    </node>
                    <node concept="liA8E" id="3KV3FXk1Qbe" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="3KV3FXk1Nl3" role="1Duv9x">
                <property role="TrG5h" value="pathListIt" />
                <node concept="3uibUv" id="3KV3FXk1Nnz" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
                  <node concept="3qUE_q" id="3KV3FXk1OyM" role="11_B2D">
                    <node concept="3uibUv" id="3KV3FXk1OBU" role="3qUE_r">
                      <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3KV3FXk1N$t" role="33vP2m">
                  <node concept="37vLTw" id="3KV3FXk1Nsl" role="2Oq$k0">
                    <ref role="3cqZAo" node="3KV3FXk1Nag" resolve="pathList" />
                  </node>
                  <node concept="liA8E" id="3KV3FXk1O93" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.iterator():java.util.Iterator" resolve="iterator" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3KV3FXk1On5" role="1Dwp0S">
                <node concept="37vLTw" id="3KV3FXk1OiG" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KV3FXk1Nl3" resolve="pathListIt" />
                </node>
                <node concept="liA8E" id="3KV3FXk1Ovm" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3KV3FXk1KHA" role="3cqZAp" />
            <node concept="3clFbJ" id="3KV3FXk1R1l" role="3cqZAp">
              <node concept="3clFbS" id="3KV3FXk1R1n" role="3clFbx">
                <node concept="3clFbF" id="5_6ImQZl_Vo" role="3cqZAp">
                  <node concept="2YIFZM" id="5_6ImQZl_Y0" role="3clFbG">
                    <ref role="37wK5l" to="33ny:~Collections.reverse(java.util.List):void" resolve="reverse" />
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                    <node concept="37vLTw" id="5_6ImQZl_Z7" role="37wK5m">
                      <ref role="3cqZAo" node="3KV3FXk1Lsq" resolve="candidatePath" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3KV3FXk1U$D" role="3cqZAp">
                  <node concept="37vLTI" id="3KV3FXk1UFS" role="3clFbG">
                    <node concept="37vLTw" id="3KV3FXk1UH3" role="37vLTx">
                      <ref role="3cqZAo" node="3KV3FXk1Lsq" resolve="candidatePath" />
                    </node>
                    <node concept="37vLTw" id="3KV3FXk1U$B" role="37vLTJ">
                      <ref role="3cqZAo" node="3KV3FXk1KVn" resolve="result" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="3KV3FXk1T6K" role="3clFbw">
                <node concept="1eOMI4" id="3KV3FXk2gcm" role="3uHU7w">
                  <node concept="22lmx$" id="3KV3FXk2gh_" role="1eOMHV">
                    <node concept="3clFbC" id="3KV3FXk2gyt" role="3uHU7B">
                      <node concept="10Nm6u" id="3KV3FXk2g_Q" role="3uHU7w" />
                      <node concept="37vLTw" id="3KV3FXk2gmZ" role="3uHU7B">
                        <ref role="3cqZAo" node="3KV3FXk1KVn" resolve="result" />
                      </node>
                    </node>
                    <node concept="3eOVzh" id="3KV3FXk2gcn" role="3uHU7w">
                      <node concept="2OqwBi" id="3KV3FXk2gco" role="3uHU7w">
                        <node concept="37vLTw" id="3KV3FXk2gcp" role="2Oq$k0">
                          <ref role="3cqZAo" node="3KV3FXk1KVn" resolve="result" />
                        </node>
                        <node concept="liA8E" id="3KV3FXk2gcq" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3KV3FXk2gcr" role="3uHU7B">
                        <node concept="37vLTw" id="3KV3FXk2gcs" role="2Oq$k0">
                          <ref role="3cqZAo" node="3KV3FXk1Lsq" resolve="candidatePath" />
                        </node>
                        <node concept="liA8E" id="3KV3FXk2gct" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="3KV3FXk1T2J" role="3uHU7B">
                  <node concept="2OqwBi" id="3KV3FXk1T2L" role="3fr31v">
                    <node concept="37vLTw" id="3KV3FXk1T2M" role="2Oq$k0">
                      <ref role="3cqZAo" node="3KV3FXk1Lsq" resolve="candidatePath" />
                    </node>
                    <node concept="liA8E" id="3KV3FXk1T2N" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3KV3FXk1KbY" role="1Duv9x">
            <property role="TrG5h" value="path" />
            <node concept="3uibUv" id="3KV3FXk1KuS" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
          </node>
          <node concept="37vLTw" id="3KV3FXk1Kc4" role="1DdaDG">
            <ref role="3cqZAo" node="3KV3FXk1J2H" resolve="fullPathsList" />
          </node>
        </node>
        <node concept="3clFbH" id="3KV3FXk1jY8" role="3cqZAp" />
        <node concept="3clFbF" id="3KV3FXk1jYy" role="3cqZAp">
          <node concept="37vLTw" id="3KV3FXk1UPn" role="3clFbG">
            <ref role="3cqZAo" node="3KV3FXk1KVn" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="3KV3FXk1UYB" role="lGtFl">
        <node concept="TZ5HA" id="3KV3FXk1UYC" role="TZ5H$">
          <node concept="1dT_AC" id="3KV3FXk1UYD" role="1dT_Ay">
            <property role="1dT_AB" value="Walk all paths in " />
          </node>
          <node concept="1dT_AA" id="3KV3FXk1VoV" role="1dT_Ay">
            <node concept="VVOAv" id="3KV3FXk1ZkS" role="qph3F">
              <node concept="TZ5HA" id="3KV3FXk1ZkW" role="2Xj1qM">
                <node concept="1dT_AC" id="3KV3FXk1Zl2" role="1dT_Ay">
                  <property role="1dT_AB" value="fullPathsVal" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="3KV3FXk1VoU" role="1dT_Ay">
            <property role="1dT_AB" value=" and find the shortest path starting at " />
          </node>
          <node concept="1dT_AA" id="3KV3FXk1Zl5" role="1dT_Ay">
            <node concept="VVOAv" id="3KV3FXk1Zlg" role="qph3F">
              <node concept="TZ5HA" id="3KV3FXk1Zli" role="2Xj1qM">
                <node concept="1dT_AC" id="3KV3FXk1Zlm" role="1dT_Ay">
                  <property role="1dT_AB" value="startFromVal" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="3KV3FXk1Zl4" role="1dT_Ay">
            <property role="1dT_AB" value="." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KV3FXk1jp4" role="jymVt" />
    <node concept="3clFbW" id="3KV3FXk1jky" role="jymVt">
      <node concept="3cqZAl" id="3KV3FXk1jk$" role="3clF45" />
      <node concept="3Tm6S6" id="3KV3FXk1jlu" role="1B3o_S" />
      <node concept="3clFbS" id="3KV3FXk1jkA" role="3clF47">
        <node concept="XkiVB" id="3KV3FXk1$Vg" role="3cqZAp">
          <ref role="37wK5l" node="3KV3FXk1tGv" resolve="AbstractSolver" />
          <node concept="37vLTw" id="3KV3FXk1$VL" role="37wK5m">
            <ref role="3cqZAo" node="3KV3FXk1jlA" resolve="computingSession" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3KV3FXk1jlA" role="3clF46">
        <property role="TrG5h" value="computingSession" />
        <node concept="3uibUv" id="3KV3FXk1jl_" role="1tU5fm">
          <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="SessionSolver" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KV3FXk1jnK" role="jymVt" />
    <node concept="3Tm1VV" id="3KV3FXk1fje" role="1B3o_S" />
    <node concept="3uibUv" id="3KV3FXk1$PC" role="1zkMxy">
      <ref role="3uigEE" node="3KV3FXk1mCr" resolve="AbstractSolver" />
    </node>
  </node>
  <node concept="312cEu" id="3KV3FXk1mCr">
    <property role="TrG5h" value="AbstractSolver" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="3KV3FXk1mCW" role="jymVt" />
    <node concept="3Tm1VV" id="3KV3FXk1mCs" role="1B3o_S" />
    <node concept="2YIFZL" id="5H6hZahoMly" role="jymVt">
      <property role="TrG5h" value="buildResult" />
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
      <node concept="3Tmbuc" id="3KV3FXk1p2j" role="1B3o_S" />
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
        <node concept="3SKdUt" id="3KV3FXk1GH9" role="3cqZAp">
          <node concept="3SKdUq" id="3KV3FXk1GHa" role="3SKWNk">
            <property role="3SKdUp" value="TODO: factor out standard feature names" />
          </node>
        </node>
        <node concept="3clFbF" id="5H6hZahsyrH" role="3cqZAp">
          <node concept="1oi1Uc" id="5H6hZahsAIB" role="3clFbG">
            <node concept="1oi5ST" id="5H6hZahsAIC" role="1oi0x0">
              <property role="TrG5h" value="list" />
              <node concept="KCUsM" id="3t7_2FgGWG9" role="1oi5TL">
                <node concept="1oi5UN" id="3t7_2FgGWGj" role="KCVpo">
                  <node concept="22Ky0T" id="3t7_2FgGWGG" role="lGtFl">
                    <node concept="37vLTw" id="3t7_2FgGWGW" role="22Ky0K">
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
    <node concept="2tJIrI" id="3KV3FXk1sWT" role="jymVt" />
    <node concept="2YIFZL" id="3KV3FXjZXXV" role="jymVt">
      <property role="TrG5h" value="getList" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="3KV3FXjZSZG" role="3clF47">
        <node concept="3SKdUt" id="3KV3FXjZDGI" role="3cqZAp">
          <node concept="3SKdUq" id="3KV3FXjZDGJ" role="3SKWNk">
            <property role="3SKdUp" value="TODO: factor out standard feature names" />
          </node>
        </node>
        <node concept="3cpWs6" id="3KV3FXjZT2R" role="3cqZAp">
          <node concept="2OqwBi" id="3KV3FXjZT2S" role="3cqZAk">
            <node concept="2YIFZM" id="3KV3FXjZT2T" role="2Oq$k0">
              <ref role="1Pybhc" to="ie8e:3JgCwkqd3K7" resolve="Finders" />
              <ref role="37wK5l" to="ie8e:3OPtF03pX11" resolve="findList" />
              <node concept="37vLTw" id="3KV3FXjZT5T" role="37wK5m">
                <ref role="3cqZAo" node="3KV3FXjZT2X" resolve="leftVal" />
              </node>
              <node concept="Xl_RD" id="3KV3FXjZT2V" role="37wK5m">
                <property role="Xl_RC" value="list" />
              </node>
            </node>
            <node concept="liA8E" id="3KV3FXjZT2W" role="2OqNvi">
              <ref role="37wK5l" to="ie8e:3OPtF03nYWm" resolve="result" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3KV3FXjZT2X" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="3uibUv" id="3KV3FXjZT2Y" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3uibUv" id="3KV3FXjZT99" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3qUE_q" id="3KV3FXjZT9a" role="11_B2D">
          <node concept="3uibUv" id="3KV3FXjZT9b" role="3qUE_r">
            <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3KV3FXk1udw" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3KV3FXk1EjM" role="jymVt" />
    <node concept="3clFb_" id="3KV3FXk0aK5" role="jymVt">
      <property role="TrG5h" value="matches" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="3KV3FXjZkvI" role="3clF47">
        <node concept="3cpWs6" id="3KV3FXjZkQU" role="3cqZAp">
          <node concept="2OqwBi" id="3KV3FXjZkQV" role="3cqZAk">
            <node concept="37vLTw" id="3KV3FXjZkRN" role="2Oq$k0">
              <ref role="3cqZAo" node="3KV3FXjZFTt" resolve="sessionSolver" />
            </node>
            <node concept="liA8E" id="3KV3FXjZkQX" role="2OqNvi">
              <ref role="37wK5l" to="qrld:4xBopTznHV5" resolve="ask" />
              <node concept="10M0yZ" id="5uFPQ7C5ZbN" role="37wK5m">
                <ref role="1PxDUh" to="oy3s:2GO7tyJVmP4" resolve="UnificationPredicate" />
                <ref role="3cqZAo" to="oy3s:5uFPQ7C29mw" resolve="UNI_SYM" />
              </node>
              <node concept="37vLTw" id="3KV3FXjZkRO" role="37wK5m">
                <ref role="3cqZAo" node="3KV3FXjZkR1" resolve="nextLeft" />
              </node>
              <node concept="37vLTw" id="3KV3FXjZkRM" role="37wK5m">
                <ref role="3cqZAo" node="3KV3FXjZkR3" resolve="nextRight" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3KV3FXjZkR1" role="3clF46">
        <property role="TrG5h" value="nextLeft" />
        <node concept="3uibUv" id="3KV3FXjZkR2" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="3KV3FXjZkR3" role="3clF46">
        <property role="TrG5h" value="nextRight" />
        <node concept="3uibUv" id="3KV3FXjZkR4" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="10P_77" id="3KV3FXjZlf3" role="3clF45" />
      <node concept="3Tmbuc" id="3KV3FXk1wa6" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3KV3FXk1DOk" role="jymVt" />
    <node concept="3clFb_" id="3KV3FXk025v" role="jymVt">
      <property role="TrG5h" value="contains" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="3KV3FXjXlqY" role="3clF47">
        <node concept="1DcWWT" id="3KV3FXjXlP7" role="3cqZAp">
          <node concept="3clFbS" id="3KV3FXjXlP9" role="2LFqv$">
            <node concept="3clFbJ" id="3KV3FXjXotI" role="3cqZAp">
              <node concept="3clFbS" id="3KV3FXjXotK" role="3clFbx">
                <node concept="3cpWs6" id="3KV3FXjXovH" role="3cqZAp">
                  <node concept="3clFbT" id="3KV3FXjXox9" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="1rXfSq" id="3KV3FXjZEPP" role="3clFbw">
                <ref role="37wK5l" node="3KV3FXk0aK5" resolve="matches" />
                <node concept="37vLTw" id="3KV3FXjZEPQ" role="37wK5m">
                  <ref role="3cqZAo" node="3KV3FXjXlBn" resolve="atom" />
                </node>
                <node concept="37vLTw" id="3KV3FXjZEPR" role="37wK5m">
                  <ref role="3cqZAo" node="3KV3FXjXlPb" resolve="c" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3KV3FXjXlPb" role="1Duv9x">
            <property role="TrG5h" value="c" />
            <node concept="3uibUv" id="3KV3FXjXlPf" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
            </node>
          </node>
          <node concept="37vLTw" id="3KV3FXjXlPg" role="1DdaDG">
            <ref role="3cqZAo" node="3KV3FXjXlEK" resolve="components" />
          </node>
        </node>
        <node concept="3cpWs6" id="3KV3FXjXo$B" role="3cqZAp">
          <node concept="3clFbT" id="3KV3FXjXoBD" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3KV3FXjXlBn" role="3clF46">
        <property role="TrG5h" value="atom" />
        <node concept="3uibUv" id="3KV3FXjXlCO" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="3KV3FXjXlEK" role="3clF46">
        <property role="TrG5h" value="components" />
        <node concept="3uibUv" id="3KV3FXjXlGf" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="3KV3FXjXlHm" role="11_B2D">
            <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="3KV3FXjXlqR" role="3clF45" />
      <node concept="3Tmbuc" id="3KV3FXk1xaX" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3KV3FXk1Dq_" role="jymVt" />
    <node concept="3clFbW" id="3KV3FXk1tGv" role="jymVt">
      <node concept="3cqZAl" id="3KV3FXk1tGx" role="3clF45" />
      <node concept="3Tmbuc" id="3KV3FXk1u5t" role="1B3o_S" />
      <node concept="3clFbS" id="3KV3FXk1tGz" role="3clF47">
        <node concept="3clFbF" id="3KV3FXk1u66" role="3cqZAp">
          <node concept="37vLTI" id="3KV3FXk1uaA" role="3clFbG">
            <node concept="37vLTw" id="3KV3FXk1ubz" role="37vLTx">
              <ref role="3cqZAo" node="3KV3FXk1u5_" resolve="sessionSolver" />
            </node>
            <node concept="2OqwBi" id="3KV3FXk1u6y" role="37vLTJ">
              <node concept="Xjq3P" id="3KV3FXk1u65" role="2Oq$k0" />
              <node concept="2OwXpG" id="3KV3FXk1u8T" role="2OqNvi">
                <ref role="2Oxat5" node="3KV3FXjZFTt" resolve="sessionSolver" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3KV3FXk1u5_" role="3clF46">
        <property role="TrG5h" value="sessionSolver" />
        <node concept="3uibUv" id="3KV3FXk1u5$" role="1tU5fm">
          <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="SessionSolver" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KV3FXk1qx0" role="jymVt" />
    <node concept="312cEg" id="3KV3FXjZFTt" role="jymVt">
      <property role="TrG5h" value="sessionSolver" />
      <node concept="3Tmbuc" id="3KV3FXk1ru9" role="1B3o_S" />
      <node concept="3uibUv" id="3KV3FXjZFTw" role="1tU5fm">
        <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="SessionSolver" />
      </node>
    </node>
  </node>
</model>

