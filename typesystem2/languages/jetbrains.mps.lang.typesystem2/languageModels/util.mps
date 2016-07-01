<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:01ee26d6-df00-4ffb-931c-1ddec5984886(jetbrains.mps.lang.typesystem2.util)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="0" />
    <use id="96ee7a94-411d-4cf8-9b94-96cad7e52411" name="jetbrains.mps.baseLanguage.jdk7" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.typesystem2.template)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)" implicit="true" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1224575136086" name="jetbrains.mps.baseLanguage.structure.EnumValueOfExpression" flags="nn" index="unr1b">
        <reference id="1224575174120" name="enumClass" index="un$jP" />
        <child id="1224575157853" name="value" index="unwt0" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
        <property id="4467513934994662256" name="forceOneLine" index="TyiWL" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
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
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="5979988948250981289" name="jetbrains.mps.lang.actions.structure.SNodeCreatorAndInitializer" flags="nn" index="2fJWfE" />
      <concept id="767145758118872833" name="jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation" flags="nn" index="2DeJg1" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <reference id="6733348108486823428" name="concept" index="1m5ApE" />
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1139184414036" name="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" flags="nn" index="WFELt">
        <reference id="1139877738879" name="concept" index="1A0vxQ" />
      </concept>
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
      <concept id="5944356402132808749" name="jetbrains.mps.lang.smodel.structure.ConceptSwitchStatement" flags="nn" index="1_3QMa">
        <child id="5944356402132808753" name="case" index="1_3QMm" />
        <child id="5944356402132808752" name="expression" index="1_3QMn" />
      </concept>
      <concept id="5944356402132808754" name="jetbrains.mps.lang.smodel.structure.SubconceptCase" flags="ng" index="1_3QMl">
        <child id="1163670677455" name="concept" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="1828409047608048457" name="jetbrains.mps.lang.smodel.structure.NodePointerExpression" flags="nn" index="1N_AGu">
        <reference id="1828409047608048458" name="referentNode" index="1N_AGt" />
      </concept>
      <concept id="1172323065820" name="jetbrains.mps.lang.smodel.structure.Node_GetConceptOperation" flags="nn" index="3NT_Vc" />
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="9042586985346099698" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachStatement" flags="nn" index="1_o_46">
        <child id="9042586985346099734" name="forEach" index="1_o_by" />
      </concept>
      <concept id="9042586985346099733" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachPair" flags="ng" index="1_o_bx">
        <child id="9042586985346099778" name="variable" index="1_o_aQ" />
        <child id="9042586985346099735" name="input" index="1_o_bz" />
      </concept>
      <concept id="9042586985346099736" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachVariable" flags="ng" index="1_o_bG" />
      <concept id="8293956702609956630" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachVariableReference" flags="nn" index="3M$PaV">
        <reference id="8293956702609966325" name="variable" index="3M$S_o" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="2N2MQGCJu8I">
    <property role="TrG5h" value="TypeTermUtil" />
    <node concept="2tJIrI" id="2N2MQGCJu8W" role="jymVt" />
    <node concept="2YIFZL" id="2N2MQGCJu99" role="jymVt">
      <property role="TrG5h" value="createFromTemplate" />
      <node concept="37vLTG" id="2N2MQGCJu9$" role="3clF46">
        <property role="TrG5h" value="term" />
        <node concept="3Tqbb2" id="2N2MQGCJu9W" role="1tU5fm">
          <ref role="ehGHo" to="wq2x:1pPth$m5o9D" resolve="TypeTermTemplate" />
        </node>
      </node>
      <node concept="3Tqbb2" id="2N2MQGCJu9p" role="3clF45">
        <ref role="ehGHo" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
      </node>
      <node concept="3Tm1VV" id="2N2MQGCJu9c" role="1B3o_S" />
      <node concept="3clFbS" id="2N2MQGCJu9d" role="3clF47">
        <node concept="3SKdUt" id="2N2MQGCJvXx" role="3cqZAp">
          <node concept="3SKdUq" id="2N2MQGCJw0q" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: extract standard role IDs" />
          </node>
        </node>
        <node concept="3cpWs8" id="2N2MQGCK4IQ" role="3cqZAp">
          <node concept="3cpWsn" id="2N2MQGCK4IR" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="2N2MQGCK4IO" role="1tU5fm">
              <ref role="ehGHo" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
            </node>
            <node concept="2ShNRf" id="2N2MQGCK4IS" role="33vP2m">
              <node concept="2fJWfE" id="2N2MQGCK4IT" role="2ShVmc">
                <node concept="3Tqbb2" id="2N2MQGCK4IU" role="3zrR0E">
                  <ref role="ehGHo" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2N2MQGCK3Cz" role="3cqZAp">
          <node concept="2OqwBi" id="2N2MQGCK5UG" role="3clFbG">
            <node concept="2OqwBi" id="2N2MQGCK4MS" role="2Oq$k0">
              <node concept="37vLTw" id="2N2MQGCK4IV" role="2Oq$k0">
                <ref role="3cqZAo" node="2N2MQGCK4IR" resolve="node" />
              </node>
              <node concept="3Tsc0h" id="2N2MQGCK51N" role="2OqNvi">
                <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" />
              </node>
            </node>
            <node concept="X8dFx" id="2N2MQGCK8Qw" role="2OqNvi">
              <node concept="1rXfSq" id="2N2MQGCK9DD" role="25WWJ7">
                <ref role="37wK5l" node="2N2MQGCJx48" resolve="features2roles" />
                <node concept="2OqwBi" id="2N2MQGCKaH$" role="37wK5m">
                  <node concept="37vLTw" id="2N2MQGCKaob" role="2Oq$k0">
                    <ref role="3cqZAo" node="2N2MQGCJu9$" resolve="term" />
                  </node>
                  <node concept="3Tsc0h" id="2N2MQGCKb$u" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:1pPth$m5oa9" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2N2MQGCKhWl" role="3cqZAp">
          <node concept="37vLTw" id="2N2MQGCKhWj" role="3clFbG">
            <ref role="3cqZAo" node="2N2MQGCK4IR" resolve="node" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2N2MQGCJx0i" role="jymVt" />
    <node concept="2YIFZL" id="2CEQDIE2hE2" role="jymVt">
      <property role="TrG5h" value="createFromTemplateAndPrototype" />
      <node concept="37vLTG" id="2CEQDIE2hLl" role="3clF46">
        <property role="TrG5h" value="term" />
        <node concept="3Tqbb2" id="2CEQDIE2hLm" role="1tU5fm">
          <ref role="ehGHo" to="wq2x:1pPth$m5o9D" resolve="TypeTermTemplate" />
        </node>
      </node>
      <node concept="37vLTG" id="2CEQDIE2hKO" role="3clF46">
        <property role="TrG5h" value="prototype" />
        <node concept="3Tqbb2" id="2CEQDIE2hKY" role="1tU5fm">
          <ref role="ehGHo" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2CEQDIE2hE5" role="1B3o_S" />
      <node concept="3clFbS" id="2CEQDIE2hE6" role="3clF47">
        <node concept="3SKdUt" id="2CEQDIE2hLD" role="3cqZAp">
          <node concept="3SKdUq" id="2CEQDIE2hLE" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: extract standard role IDs" />
          </node>
        </node>
        <node concept="3cpWs8" id="2CEQDIE2hLF" role="3cqZAp">
          <node concept="3cpWsn" id="2CEQDIE2hLG" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="2CEQDIE2hLH" role="1tU5fm">
              <ref role="ehGHo" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
            </node>
            <node concept="2ShNRf" id="2CEQDIE2hLI" role="33vP2m">
              <node concept="2fJWfE" id="2CEQDIE2hLJ" role="2ShVmc">
                <node concept="3Tqbb2" id="2CEQDIE2hLK" role="3zrR0E">
                  <ref role="ehGHo" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6SKZg6H37iY" role="3cqZAp">
          <node concept="2OqwBi" id="6SKZg6H39FT" role="3clFbG">
            <node concept="2OqwBi" id="6SKZg6H388a" role="2Oq$k0">
              <node concept="37vLTw" id="6SKZg6H37iW" role="2Oq$k0">
                <ref role="3cqZAo" node="2CEQDIE2hLG" resolve="node" />
              </node>
              <node concept="3TrcHB" id="6SKZg6H39u$" role="2OqNvi">
                <ref role="3TsBF5" to="5j4j:6dP_abdQoiG" resolve="kind" />
              </node>
            </node>
            <node concept="tyxLq" id="6SKZg6H3aDm" role="2OqNvi">
              <node concept="2OqwBi" id="6SKZg6H3aHX" role="tz02z">
                <node concept="37vLTw" id="6SKZg6H3aFh" role="2Oq$k0">
                  <ref role="3cqZAo" node="2CEQDIE2hKO" resolve="prototype" />
                </node>
                <node concept="3TrcHB" id="6SKZg6H3aX8" role="2OqNvi">
                  <ref role="3TsBF5" to="5j4j:6dP_abdQoiG" resolve="kind" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2CEQDIE2hLL" role="3cqZAp">
          <node concept="2OqwBi" id="2CEQDIE2hLM" role="3clFbG">
            <node concept="2OqwBi" id="2CEQDIE2hLN" role="2Oq$k0">
              <node concept="37vLTw" id="2CEQDIE2hLO" role="2Oq$k0">
                <ref role="3cqZAo" node="2CEQDIE2hLG" resolve="node" />
              </node>
              <node concept="3Tsc0h" id="2CEQDIE2hLP" role="2OqNvi">
                <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" />
              </node>
            </node>
            <node concept="X8dFx" id="2CEQDIE2hLQ" role="2OqNvi">
              <node concept="1rXfSq" id="2CEQDIE2hLR" role="25WWJ7">
                <ref role="37wK5l" node="2N2MQGCJx48" resolve="features2roles" />
                <node concept="2OqwBi" id="2CEQDIE2hLS" role="37wK5m">
                  <node concept="37vLTw" id="2CEQDIE2hLT" role="2Oq$k0">
                    <ref role="3cqZAo" node="2CEQDIE2hLl" resolve="term" />
                  </node>
                  <node concept="3Tsc0h" id="2CEQDIE2hLU" role="2OqNvi">
                    <ref role="3TtcxE" to="wq2x:1pPth$m5oa9" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2CEQDIE2jpW" role="3cqZAp" />
        <node concept="1DcWWT" id="2CEQDIE2mvw" role="3cqZAp">
          <node concept="3clFbS" id="2CEQDIE2mvy" role="2LFqv$">
            <node concept="3cpWs8" id="2CEQDIE2vL9" role="3cqZAp">
              <node concept="3cpWsn" id="2CEQDIE2vLa" role="3cpWs9">
                <property role="TrG5h" value="newRole" />
                <node concept="3Tqbb2" id="2CEQDIE2vL6" role="1tU5fm">
                  <ref role="ehGHo" to="5j4j:6$jH9oLmYD_" resolve="Role" />
                </node>
                <node concept="2OqwBi" id="2CEQDIE2vLb" role="33vP2m">
                  <node concept="2OqwBi" id="2CEQDIE2vLc" role="2Oq$k0">
                    <node concept="37vLTw" id="2CEQDIE2vUl" role="2Oq$k0">
                      <ref role="3cqZAo" node="2CEQDIE2hLG" resolve="node" />
                    </node>
                    <node concept="3Tsc0h" id="2CEQDIE2vLe" role="2OqNvi">
                      <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" />
                    </node>
                  </node>
                  <node concept="1z4cxt" id="2CEQDIE2vLf" role="2OqNvi">
                    <node concept="1bVj0M" id="2CEQDIE2vLg" role="23t8la">
                      <node concept="3clFbS" id="2CEQDIE2vLh" role="1bW5cS">
                        <node concept="3clFbF" id="2CEQDIE2vLi" role="3cqZAp">
                          <node concept="2OqwBi" id="2CEQDIE2vLj" role="3clFbG">
                            <node concept="2OqwBi" id="2CEQDIE2vLk" role="2Oq$k0">
                              <node concept="37vLTw" id="2CEQDIE2vLl" role="2Oq$k0">
                                <ref role="3cqZAo" node="2CEQDIE2vLr" resolve="it" />
                              </node>
                              <node concept="3TrcHB" id="2CEQDIE2vLm" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                            <node concept="liA8E" id="2CEQDIE2vLn" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                              <node concept="2OqwBi" id="2CEQDIE2vLo" role="37wK5m">
                                <node concept="37vLTw" id="2CEQDIE2vLp" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2CEQDIE2mv$" resolve="protoRole" />
                                </node>
                                <node concept="3TrcHB" id="2CEQDIE2vLq" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="2CEQDIE2vLr" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="2CEQDIE2vLs" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2CEQDIE2w1P" role="3cqZAp">
              <node concept="3clFbS" id="2CEQDIE2w1R" role="3clFbx">
                <node concept="3clFbF" id="2CEQDIE2yq6" role="3cqZAp">
                  <node concept="2OqwBi" id="2CEQDIE2TuQ" role="3clFbG">
                    <node concept="2OqwBi" id="2CEQDIE2z21" role="2Oq$k0">
                      <node concept="2OqwBi" id="2CEQDIE2ysV" role="2Oq$k0">
                        <node concept="37vLTw" id="2CEQDIE2yq5" role="2Oq$k0">
                          <ref role="3cqZAo" node="2CEQDIE2vLa" resolve="newRole" />
                        </node>
                        <node concept="32TBzR" id="2CEQDIE2yAf" role="2OqNvi" />
                      </node>
                      <node concept="1uHKPH" id="2CEQDIE2SIe" role="2OqNvi" />
                    </node>
                    <node concept="1P9Npp" id="2CEQDIE2TD2" role="2OqNvi">
                      <node concept="2OqwBi" id="2CEQDIE2TE7" role="1P9ThW">
                        <node concept="2OqwBi" id="2CEQDIE2TE8" role="2Oq$k0">
                          <node concept="2OqwBi" id="2CEQDIE2TE9" role="2Oq$k0">
                            <node concept="37vLTw" id="2CEQDIE2TEa" role="2Oq$k0">
                              <ref role="3cqZAo" node="2CEQDIE2mv$" resolve="protoRole" />
                            </node>
                            <node concept="32TBzR" id="2CEQDIE2TEb" role="2OqNvi" />
                          </node>
                          <node concept="1uHKPH" id="2CEQDIE2TEc" role="2OqNvi" />
                        </node>
                        <node concept="1$rogu" id="2CEQDIE2TEd" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="2CEQDIE2w7T" role="3clFbw">
                <node concept="10Nm6u" id="2CEQDIE2w8X" role="3uHU7w" />
                <node concept="37vLTw" id="2CEQDIE2w4Q" role="3uHU7B">
                  <ref role="3cqZAo" node="2CEQDIE2vLa" resolve="newRole" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2CEQDIE2mv$" role="1Duv9x">
            <property role="TrG5h" value="protoRole" />
            <node concept="3Tqbb2" id="2CEQDIE2nHt" role="1tU5fm">
              <ref role="ehGHo" to="5j4j:6$jH9oLmYD_" resolve="Role" />
            </node>
          </node>
          <node concept="2OqwBi" id="2CEQDIE2mvD" role="1DdaDG">
            <node concept="37vLTw" id="2CEQDIE2mvE" role="2Oq$k0">
              <ref role="3cqZAo" node="2CEQDIE2hKO" resolve="prototype" />
            </node>
            <node concept="3Tsc0h" id="2CEQDIE2mvF" role="2OqNvi">
              <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2CEQDIE2FME" role="3cqZAp" />
        <node concept="3clFbF" id="2CEQDIE2hLV" role="3cqZAp">
          <node concept="37vLTw" id="2CEQDIE2hLW" role="3clFbG">
            <ref role="3cqZAo" node="2CEQDIE2hLG" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="2CEQDIE2qg9" role="3clF45">
        <ref role="ehGHo" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
      </node>
    </node>
    <node concept="2tJIrI" id="2CEQDIE2h$1" role="jymVt" />
    <node concept="2YIFZL" id="67SsWaEdYHz" role="jymVt">
      <property role="TrG5h" value="validateWithTemplate" />
      <node concept="37vLTG" id="67SsWaEdYVI" role="3clF46">
        <property role="TrG5h" value="tterm" />
        <node concept="3Tqbb2" id="67SsWaEdYVS" role="1tU5fm">
          <ref role="ehGHo" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
        </node>
      </node>
      <node concept="37vLTG" id="67SsWaEdYW1" role="3clF46">
        <property role="TrG5h" value="tpl" />
        <node concept="3Tqbb2" id="67SsWaEdYWf" role="1tU5fm">
          <ref role="ehGHo" to="wq2x:1pPth$m5o9D" resolve="TypeTermTemplate" />
        </node>
      </node>
      <node concept="17QB3L" id="67SsWaEf2Kj" role="3clF45" />
      <node concept="3Tm1VV" id="67SsWaEdYHA" role="1B3o_S" />
      <node concept="3clFbS" id="67SsWaEdYHB" role="3clF47">
        <node concept="1_o_46" id="67SsWaEe2GB" role="3cqZAp">
          <node concept="3clFbS" id="67SsWaEe2GC" role="2LFqv$">
            <node concept="3clFbJ" id="67SsWaEe3My" role="3cqZAp">
              <property role="TyiWK" value="true" />
              <property role="TyiWL" value="false" />
              <node concept="3clFbS" id="67SsWaEe3Mz" role="3clFbx">
                <node concept="3cpWs6" id="67SsWaEf3OZ" role="3cqZAp">
                  <node concept="2YIFZM" id="67SsWaEe8yW" role="3cqZAk">
                    <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <node concept="Xl_RD" id="67SsWaEe8B2" role="37wK5m">
                      <property role="Xl_RC" value="name mismatch: %s and %s" />
                    </node>
                    <node concept="2OqwBi" id="67SsWaEe8Zc" role="37wK5m">
                      <node concept="3M$PaV" id="67SsWaEe8UM" role="2Oq$k0">
                        <ref role="3M$S_o" node="67SsWaEe2GF" resolve="role" />
                      </node>
                      <node concept="3TrcHB" id="67SsWaEe9aP" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="67SsWaEe9o$" role="37wK5m">
                      <node concept="3M$PaV" id="67SsWaEe9kG" role="2Oq$k0">
                        <ref role="3M$S_o" node="67SsWaEe2UH" resolve="feature" />
                      </node>
                      <node concept="3TrcHB" id="67SsWaEe9A6" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="67SsWaEe5Aa" role="3clFbw">
                <node concept="1eOMI4" id="67SsWaEe5Ai" role="3fr31v">
                  <node concept="17R0WA" id="67SsWaEe5Ab" role="1eOMHV">
                    <node concept="2OqwBi" id="67SsWaEe5Ac" role="3uHU7w">
                      <node concept="3M$PaV" id="67SsWaEe5Ad" role="2Oq$k0">
                        <ref role="3M$S_o" node="67SsWaEe2UH" resolve="feature" />
                      </node>
                      <node concept="3TrcHB" id="67SsWaEe5Ae" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="67SsWaEe5Af" role="3uHU7B">
                      <node concept="3M$PaV" id="67SsWaEe5Ag" role="2Oq$k0">
                        <ref role="3M$S_o" node="67SsWaEe2GF" resolve="role" />
                      </node>
                      <node concept="3TrcHB" id="67SsWaEe5Ah" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="67SsWaEfuHM" role="3cqZAp" />
            <node concept="3cpWs8" id="67SsWaEea_A" role="3cqZAp">
              <node concept="3cpWsn" id="67SsWaEea_D" role="3cpWs9">
                <property role="TrG5h" value="typeMatches" />
                <node concept="10P_77" id="67SsWaEea_$" role="1tU5fm" />
                <node concept="3clFbT" id="67SsWaEeaGD" role="33vP2m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="1_3QMa" id="67SsWaEe9JT" role="3cqZAp">
              <node concept="2OqwBi" id="5Z2pjOGAbNI" role="1_3QMn">
                <node concept="3M$PaV" id="5Z2pjOGAbKP" role="2Oq$k0">
                  <ref role="3M$S_o" node="67SsWaEe2GF" resolve="role" />
                </node>
                <node concept="2yIwOk" id="5Z2pjOGAcbP" role="2OqNvi" />
              </node>
              <node concept="1_3QMl" id="67SsWaEea5d" role="1_3QMm">
                <node concept="3gn64h" id="67SsWaEeave" role="3Kbmr1">
                  <ref role="3gnhBz" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                </node>
                <node concept="3clFbS" id="67SsWaEea5f" role="3Kbo56">
                  <node concept="3clFbF" id="67SsWaEeaIO" role="3cqZAp">
                    <node concept="37vLTI" id="67SsWaEeaYi" role="3clFbG">
                      <node concept="1eOMI4" id="67SsWaEeb2W" role="37vLTx">
                        <node concept="22lmx$" id="67SsWaEecqQ" role="1eOMHV">
                          <node concept="2OqwBi" id="67SsWaEecCo" role="3uHU7w">
                            <node concept="3M$PaV" id="67SsWaEecy4" role="2Oq$k0">
                              <ref role="3M$S_o" node="67SsWaEe2UH" resolve="feature" />
                            </node>
                            <node concept="1mIQ4w" id="67SsWaEecXs" role="2OqNvi">
                              <node concept="chp4Y" id="67SsWaEed5l" role="cj9EA">
                                <ref role="cht4Q" to="wq2x:1pPth$m5oaG" resolve="ReferenceTypeFeature" />
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="67SsWaEeb9f" role="3uHU7B">
                            <node concept="3M$PaV" id="67SsWaEeb6S" role="2Oq$k0">
                              <ref role="3M$S_o" node="67SsWaEe2UH" resolve="feature" />
                            </node>
                            <node concept="1mIQ4w" id="67SsWaEebE9" role="2OqNvi">
                              <node concept="chp4Y" id="67SsWaEebKR" role="cj9EA">
                                <ref role="cht4Q" to="wq2x:1pPth$m5oae" resolve="StringTypeFeature" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="67SsWaEeaIN" role="37vLTJ">
                        <ref role="3cqZAo" node="67SsWaEea_D" resolve="typeMatches" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1_3QMl" id="67SsWaEedgk" role="1_3QMm">
                <node concept="3gn64h" id="67SsWaEednd" role="3Kbmr1">
                  <ref role="3gnhBz" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                </node>
                <node concept="3clFbS" id="67SsWaEedgm" role="3Kbo56">
                  <node concept="3clFbJ" id="67SsWaEeffq" role="3cqZAp">
                    <node concept="3clFbS" id="67SsWaEeffs" role="3clFbx">
                      <node concept="3clFbF" id="67SsWaEek5K" role="3cqZAp">
                        <node concept="37vLTI" id="67SsWaEek5L" role="3clFbG">
                          <node concept="2OqwBi" id="67SsWaEek5M" role="37vLTx">
                            <node concept="3M$PaV" id="67SsWaEek5N" role="2Oq$k0">
                              <ref role="3M$S_o" node="67SsWaEe2UH" resolve="feature" />
                            </node>
                            <node concept="1mIQ4w" id="67SsWaEek5O" role="2OqNvi">
                              <node concept="chp4Y" id="67SsWaEekzi" role="cj9EA">
                                <ref role="cht4Q" to="wq2x:1pPth$m5oa6" resolve="ListTypeFeature" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="67SsWaEek5Q" role="37vLTJ">
                            <ref role="3cqZAo" node="67SsWaEea_D" resolve="typeMatches" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="67SsWaEejLK" role="3clFbw">
                      <node concept="2OqwBi" id="67SsWaEehqX" role="2Oq$k0">
                        <node concept="2OqwBi" id="67SsWaEegdX" role="2Oq$k0">
                          <node concept="1PxgMI" id="67SsWaEefUS" role="2Oq$k0">
                            <ref role="1m5ApE" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                            <node concept="3M$PaV" id="67SsWaEefgD" role="1m5AlR">
                              <ref role="3M$S_o" node="67SsWaEe2GF" resolve="role" />
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="67SsWaEegFL" role="2OqNvi">
                            <ref role="3TtcxE" to="5j4j:6$jH9oLmYFB" />
                          </node>
                        </node>
                        <node concept="1uHKPH" id="67SsWaEeiCA" role="2OqNvi" />
                      </node>
                      <node concept="1mIQ4w" id="67SsWaEek4w" role="2OqNvi">
                        <node concept="chp4Y" id="67SsWaEek4P" role="cj9EA">
                          <ref role="cht4Q" to="5j4j:1OShD0HAY6y" resolve="List" />
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="67SsWaEekGA" role="9aQIa">
                      <node concept="3clFbS" id="67SsWaEekGB" role="9aQI4">
                        <node concept="3clFbF" id="67SsWaEedni" role="3cqZAp">
                          <node concept="37vLTI" id="67SsWaEednj" role="3clFbG">
                            <node concept="2OqwBi" id="67SsWaEednq" role="37vLTx">
                              <node concept="3M$PaV" id="67SsWaEednr" role="2Oq$k0">
                                <ref role="3M$S_o" node="67SsWaEe2UH" resolve="feature" />
                              </node>
                              <node concept="1mIQ4w" id="67SsWaEedns" role="2OqNvi">
                                <node concept="chp4Y" id="67SsWaEedB6" role="cj9EA">
                                  <ref role="cht4Q" to="wq2x:1pPth$m5oaL" resolve="ChildTypeFeature" />
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="67SsWaEednu" role="37vLTJ">
                              <ref role="3cqZAo" node="67SsWaEea_D" resolve="typeMatches" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="67SsWaEfvwC" role="3cqZAp" />
            <node concept="3clFbJ" id="67SsWaEele5" role="3cqZAp">
              <property role="TyiWK" value="true" />
              <property role="TyiWL" value="false" />
              <node concept="3clFbS" id="67SsWaEele7" role="3clFbx">
                <node concept="3cpWs6" id="67SsWaEf5L5" role="3cqZAp">
                  <node concept="2YIFZM" id="67SsWaEeluI" role="3cqZAk">
                    <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <node concept="Xl_RD" id="67SsWaEeluJ" role="37wK5m">
                      <property role="Xl_RC" value="type mismatch: %s and %s" />
                    </node>
                    <node concept="2OqwBi" id="67SsWaEem0u" role="37wK5m">
                      <node concept="2OqwBi" id="67SsWaEeluK" role="2Oq$k0">
                        <node concept="3M$PaV" id="67SsWaEeluL" role="2Oq$k0">
                          <ref role="3M$S_o" node="67SsWaEe2GF" resolve="role" />
                        </node>
                        <node concept="3NT_Vc" id="67SsWaEen8$" role="2OqNvi" />
                      </node>
                      <node concept="3TrcHB" id="67SsWaEfwZg" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="67SsWaEeSBP" role="37wK5m">
                      <node concept="2OqwBi" id="67SsWaEeluN" role="2Oq$k0">
                        <node concept="3M$PaV" id="67SsWaEeluO" role="2Oq$k0">
                          <ref role="3M$S_o" node="67SsWaEe2UH" resolve="feature" />
                        </node>
                        <node concept="3NT_Vc" id="67SsWaEeScX" role="2OqNvi" />
                      </node>
                      <node concept="3TrcHB" id="67SsWaEeSVb" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:4qF2Hm2r7ja" resolve="conceptAlias" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="67SsWaEelrP" role="3clFbw">
                <node concept="37vLTw" id="67SsWaEelu6" role="3fr31v">
                  <ref role="3cqZAo" node="67SsWaEea_D" resolve="typeMatches" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1_o_bx" id="67SsWaEe2GD" role="1_o_by">
            <node concept="2OqwBi" id="67SsWaEe2Mw" role="1_o_bz">
              <node concept="37vLTw" id="67SsWaEe2JJ" role="2Oq$k0">
                <ref role="3cqZAo" node="67SsWaEdYVI" resolve="tterm" />
              </node>
              <node concept="3Tsc0h" id="67SsWaEe2Uk" role="2OqNvi">
                <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" />
              </node>
            </node>
            <node concept="1_o_bG" id="67SsWaEe2GF" role="1_o_aQ">
              <property role="TrG5h" value="role" />
            </node>
          </node>
          <node concept="1_o_bx" id="67SsWaEe2UF" role="1_o_by">
            <node concept="2OqwBi" id="67SsWaEe33N" role="1_o_bz">
              <node concept="37vLTw" id="67SsWaEe31t" role="2Oq$k0">
                <ref role="3cqZAo" node="67SsWaEdYW1" resolve="tpl" />
              </node>
              <node concept="3Tsc0h" id="67SsWaEe3g2" role="2OqNvi">
                <ref role="3TtcxE" to="wq2x:1pPth$m5oa9" />
              </node>
            </node>
            <node concept="1_o_bG" id="67SsWaEe2UH" role="1_o_aQ">
              <property role="TrG5h" value="feature" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="67SsWaEfxfo" role="3cqZAp" />
        <node concept="3clFbJ" id="67SsWaEf6Kd" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <property role="TyiWL" value="false" />
          <node concept="3clFbS" id="67SsWaEf6Kf" role="3clFbx">
            <node concept="3cpWs6" id="67SsWaEfhak" role="3cqZAp">
              <node concept="2YIFZM" id="67SsWaEfhqm" role="3cqZAk">
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="Xl_RD" id="67SsWaEfh_C" role="37wK5m">
                  <property role="Xl_RC" value="features size mismatch: %d and %d" />
                </node>
                <node concept="2OqwBi" id="67SsWaEfkyI" role="37wK5m">
                  <node concept="2OqwBi" id="67SsWaEfkyJ" role="2Oq$k0">
                    <node concept="37vLTw" id="67SsWaEfkyK" role="2Oq$k0">
                      <ref role="3cqZAo" node="67SsWaEdYVI" resolve="tterm" />
                    </node>
                    <node concept="3Tsc0h" id="67SsWaEfkyL" role="2OqNvi">
                      <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="67SsWaEfkyM" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="67SsWaEfl5j" role="37wK5m">
                  <node concept="2OqwBi" id="67SsWaEfl5k" role="2Oq$k0">
                    <node concept="37vLTw" id="67SsWaEfl5l" role="2Oq$k0">
                      <ref role="3cqZAo" node="67SsWaEdYW1" resolve="tpl" />
                    </node>
                    <node concept="3Tsc0h" id="67SsWaEfl5m" role="2OqNvi">
                      <ref role="3TtcxE" to="wq2x:1pPth$m5oa9" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="67SsWaEfl5n" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="67SsWaEfcOX" role="3clFbw">
            <node concept="2OqwBi" id="67SsWaEfeb1" role="3uHU7w">
              <node concept="2OqwBi" id="67SsWaEfd0p" role="2Oq$k0">
                <node concept="37vLTw" id="67SsWaEfcSk" role="2Oq$k0">
                  <ref role="3cqZAo" node="67SsWaEdYW1" resolve="tpl" />
                </node>
                <node concept="3Tsc0h" id="67SsWaEfdcW" role="2OqNvi">
                  <ref role="3TtcxE" to="wq2x:1pPth$m5oa9" />
                </node>
              </node>
              <node concept="34oBXx" id="67SsWaEfh6z" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="67SsWaEf86j" role="3uHU7B">
              <node concept="2OqwBi" id="67SsWaEf74$" role="2Oq$k0">
                <node concept="37vLTw" id="67SsWaEf717" role="2Oq$k0">
                  <ref role="3cqZAo" node="67SsWaEdYVI" resolve="tterm" />
                </node>
                <node concept="3Tsc0h" id="67SsWaEf7cU" role="2OqNvi">
                  <ref role="3TtcxE" to="5j4j:6$jH9oLnyAp" />
                </node>
              </node>
              <node concept="34oBXx" id="67SsWaEfb2q" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="67SsWaEfxxv" role="3cqZAp" />
        <node concept="3cpWs6" id="67SsWaEe3jW" role="3cqZAp">
          <node concept="10Nm6u" id="67SsWaEf6xZ" role="3cqZAk" />
        </node>
      </node>
      <node concept="P$JXv" id="67SsWaEdYWA" role="lGtFl">
        <node concept="TZ5HA" id="67SsWaEdYWB" role="TZ5H$">
          <node concept="1dT_AC" id="67SsWaEdYWC" role="1dT_Ay">
            <property role="1dT_AB" value="Returns null if validation succeeds, error string otherwise. " />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="67SsWaEdY_v" role="jymVt" />
    <node concept="2YIFZL" id="2N2MQGCJx48" role="jymVt">
      <property role="TrG5h" value="features2roles" />
      <node concept="37vLTG" id="2N2MQGCJx6x" role="3clF46">
        <property role="TrG5h" value="features" />
        <node concept="2I9FWS" id="2N2MQGCJx6F" role="1tU5fm">
          <ref role="2I9WkF" to="wq2x:1pPth$m5oa5" resolve="TypeFeature" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2N2MQGCKnSp" role="1B3o_S" />
      <node concept="3clFbS" id="2N2MQGCJx4c" role="3clF47">
        <node concept="3clFbF" id="2N2MQGCJNlm" role="3cqZAp">
          <node concept="2OqwBi" id="2N2MQGCJRGT" role="3clFbG">
            <node concept="2OqwBi" id="2N2MQGCJO8g" role="2Oq$k0">
              <node concept="37vLTw" id="2N2MQGCJNlk" role="2Oq$k0">
                <ref role="3cqZAo" node="2N2MQGCJx6x" resolve="features" />
              </node>
              <node concept="3$u5V9" id="2N2MQGCJRl$" role="2OqNvi">
                <node concept="1bVj0M" id="2N2MQGCJRlA" role="23t8la">
                  <node concept="3clFbS" id="2N2MQGCJRlB" role="1bW5cS">
                    <node concept="3clFbF" id="2N2MQGCJRrI" role="3cqZAp">
                      <node concept="1rXfSq" id="2N2MQGCJRrH" role="3clFbG">
                        <ref role="37wK5l" node="2N2MQGCJ_lS" resolve="createFeature" />
                        <node concept="37vLTw" id="2N2MQGCJRx1" role="37wK5m">
                          <ref role="3cqZAo" node="2N2MQGCJRlC" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="2N2MQGCJRlC" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="2N2MQGCJRlD" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="2N2MQGCK3eT" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="2N2MQGCJCEB" role="3clF45">
        <ref role="2I9WkF" to="5j4j:6$jH9oLmYD_" resolve="Role" />
      </node>
    </node>
    <node concept="2tJIrI" id="2N2MQGCJx3v" role="jymVt" />
    <node concept="2YIFZL" id="2N2MQGCJ_lS" role="jymVt">
      <property role="TrG5h" value="createFeature" />
      <node concept="37vLTG" id="2N2MQGCJHIO" role="3clF46">
        <property role="TrG5h" value="feature" />
        <node concept="3Tqbb2" id="2N2MQGCJHIY" role="1tU5fm">
          <ref role="ehGHo" to="wq2x:1pPth$m5oa5" resolve="TypeFeature" />
        </node>
      </node>
      <node concept="3Tqbb2" id="2N2MQGCJHHb" role="3clF45">
        <ref role="ehGHo" to="5j4j:6$jH9oLmYD_" resolve="Role" />
      </node>
      <node concept="3Tm6S6" id="2N2MQGCJ_na" role="1B3o_S" />
      <node concept="3clFbS" id="2N2MQGCJ_lW" role="3clF47">
        <node concept="1_3QMa" id="2N2MQGCJ_p1" role="3cqZAp">
          <node concept="1_3QMl" id="2N2MQGCJ_V1" role="1_3QMm">
            <node concept="3gn64h" id="2N2MQGCJ_X6" role="3Kbmr1">
              <ref role="3gnhBz" to="wq2x:1pPth$m5oae" resolve="StringTypeFeature" />
            </node>
            <node concept="3clFbS" id="2N2MQGCJ_V3" role="3Kbo56">
              <node concept="3cpWs8" id="2N2MQGCJDfH" role="3cqZAp">
                <node concept="3cpWsn" id="2N2MQGCJDfI" role="3cpWs9">
                  <property role="TrG5h" value="vr" />
                  <node concept="3Tqbb2" id="2N2MQGCJDfG" role="1tU5fm">
                    <ref role="ehGHo" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                  </node>
                  <node concept="2ShNRf" id="2N2MQGCJDfJ" role="33vP2m">
                    <node concept="2fJWfE" id="2N2MQGCJDfK" role="2ShVmc">
                      <node concept="3Tqbb2" id="2N2MQGCJDfL" role="3zrR0E">
                        <ref role="ehGHo" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2N2MQGCJSp$" role="3cqZAp">
                <node concept="37vLTI" id="2N2MQGCJSYy" role="3clFbG">
                  <node concept="2OqwBi" id="2N2MQGCJTdP" role="37vLTx">
                    <node concept="37vLTw" id="2N2MQGCJT5j" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCJHIO" resolve="feature" />
                    </node>
                    <node concept="3TrcHB" id="2N2MQGCJTnu" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2N2MQGCJSz9" role="37vLTJ">
                    <node concept="37vLTw" id="2N2MQGCJSpy" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCJDfI" resolve="vr" />
                    </node>
                    <node concept="3TrcHB" id="2N2MQGCJSIb" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="2N2MQGCLkug" role="3cqZAp">
                <node concept="3cpWsn" id="2N2MQGCLkuh" role="3cpWs9">
                  <property role="TrG5h" value="val" />
                  <node concept="3Tqbb2" id="2N2MQGCLkue" role="1tU5fm">
                    <ref role="ehGHo" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
                  </node>
                  <node concept="2OqwBi" id="2N2MQGCLkui" role="33vP2m">
                    <node concept="2OqwBi" id="2N2MQGCLkuj" role="2Oq$k0">
                      <node concept="37vLTw" id="2N2MQGCLkuk" role="2Oq$k0">
                        <ref role="3cqZAo" node="2N2MQGCJDfI" resolve="vr" />
                      </node>
                      <node concept="3Tsc0h" id="2N2MQGCLkul" role="2OqNvi">
                        <ref role="3TtcxE" to="5j4j:6$jH9oLmYL8" />
                      </node>
                    </node>
                    <node concept="2DeJg1" id="2N2MQGCLkum" role="2OqNvi">
                      <ref role="1A0vxQ" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2N2MQGCJDyZ" role="3cqZAp">
                <node concept="2OqwBi" id="2N2MQGCLmNV" role="3clFbG">
                  <node concept="2OqwBi" id="2N2MQGCLmgd" role="2Oq$k0">
                    <node concept="37vLTw" id="2N2MQGCLkun" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCLkuh" resolve="val" />
                    </node>
                    <node concept="3TrcHB" id="2N2MQGCLmod" role="2OqNvi">
                      <ref role="3TsBF5" to="5j4j:6$jH9oLmYKA" resolve="value" />
                    </node>
                  </node>
                  <node concept="tyxLq" id="2N2MQGCLn3J" role="2OqNvi">
                    <node concept="2OqwBi" id="2N2MQGCLn4Z" role="tz02z">
                      <node concept="1PxgMI" id="2N2MQGCLn50" role="2Oq$k0">
                        <ref role="1m5ApE" to="wq2x:1pPth$m5oae" resolve="StringTypeFeature" />
                        <node concept="37vLTw" id="2N2MQGCLn51" role="1m5AlR">
                          <ref role="3cqZAo" node="2N2MQGCJHIO" resolve="feature" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="2N2MQGCLn52" role="2OqNvi">
                        <ref role="3TsBF5" to="wq2x:2N2MQGCKV7J" resolve="value" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2N2MQGCJI1a" role="3cqZAp">
                <node concept="37vLTw" id="2N2MQGCJI2R" role="3cqZAk">
                  <ref role="3cqZAo" node="2N2MQGCJDfI" resolve="vr" />
                </node>
              </node>
              <node concept="3clFbH" id="2N2MQGCJI3s" role="3cqZAp" />
            </node>
          </node>
          <node concept="1_3QMl" id="2N2MQGCJ_V7" role="1_3QMm">
            <node concept="3gn64h" id="2N2MQGCJ_Xe" role="3Kbmr1">
              <ref role="3gnhBz" to="wq2x:1pPth$m5oaG" resolve="ReferenceTypeFeature" />
            </node>
            <node concept="3clFbS" id="2N2MQGCJ_V9" role="3Kbo56">
              <node concept="3cpWs8" id="2N2MQGCJIbp" role="3cqZAp">
                <node concept="3cpWsn" id="2N2MQGCJIbq" role="3cpWs9">
                  <property role="TrG5h" value="vr" />
                  <node concept="3Tqbb2" id="2N2MQGCJIbr" role="1tU5fm">
                    <ref role="ehGHo" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                  </node>
                  <node concept="2ShNRf" id="2N2MQGCJIbs" role="33vP2m">
                    <node concept="2fJWfE" id="2N2MQGCJIbt" role="2ShVmc">
                      <node concept="3Tqbb2" id="2N2MQGCJIbu" role="3zrR0E">
                        <ref role="ehGHo" to="5j4j:6$jH9oLmYI0" resolve="ValueRole" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2N2MQGCJTsc" role="3cqZAp">
                <node concept="37vLTI" id="2N2MQGCJTsd" role="3clFbG">
                  <node concept="2OqwBi" id="2N2MQGCJTse" role="37vLTx">
                    <node concept="37vLTw" id="2N2MQGCJTsf" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCJHIO" resolve="feature" />
                    </node>
                    <node concept="3TrcHB" id="2N2MQGCJTsg" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2N2MQGCJTsh" role="37vLTJ">
                    <node concept="37vLTw" id="2N2MQGCJTsi" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCJIbq" resolve="vr" />
                    </node>
                    <node concept="3TrcHB" id="2N2MQGCJTsj" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2N2MQGCJIbB" role="3cqZAp">
                <node concept="2OqwBi" id="2N2MQGCJIbC" role="3clFbG">
                  <node concept="2OqwBi" id="2N2MQGCJIbD" role="2Oq$k0">
                    <node concept="37vLTw" id="2N2MQGCJIbE" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCJIbq" resolve="vr" />
                    </node>
                    <node concept="3Tsc0h" id="2N2MQGCJIbF" role="2OqNvi">
                      <ref role="3TtcxE" to="5j4j:6$jH9oLmYL8" />
                    </node>
                  </node>
                  <node concept="2DeJg1" id="2N2MQGCJIbG" role="2OqNvi">
                    <ref role="1A0vxQ" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2N2MQGCJIbH" role="3cqZAp">
                <node concept="37vLTw" id="2N2MQGCJIbI" role="3cqZAk">
                  <ref role="3cqZAo" node="2N2MQGCJIbq" resolve="vr" />
                </node>
              </node>
              <node concept="3clFbH" id="2N2MQGCJIeW" role="3cqZAp" />
            </node>
          </node>
          <node concept="1_3QMl" id="2N2MQGCJ_Vl" role="1_3QMm">
            <node concept="3gn64h" id="2N2MQGCJ_Xm" role="3Kbmr1">
              <ref role="3gnhBz" to="wq2x:1pPth$m5oaL" resolve="ChildTypeFeature" />
            </node>
            <node concept="3clFbS" id="2N2MQGCJ_Vn" role="3Kbo56">
              <node concept="3cpWs8" id="2N2MQGCJItd" role="3cqZAp">
                <node concept="3cpWsn" id="2N2MQGCJIte" role="3cpWs9">
                  <property role="TrG5h" value="cr" />
                  <node concept="3Tqbb2" id="2N2MQGCJItc" role="1tU5fm">
                    <ref role="ehGHo" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                  </node>
                  <node concept="2ShNRf" id="2N2MQGCJItf" role="33vP2m">
                    <node concept="2fJWfE" id="2N2MQGCJItg" role="2ShVmc">
                      <node concept="3Tqbb2" id="2N2MQGCJIth" role="3zrR0E">
                        <ref role="ehGHo" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2N2MQGCJUej" role="3cqZAp">
                <node concept="37vLTI" id="2N2MQGCJUek" role="3clFbG">
                  <node concept="2OqwBi" id="2N2MQGCJUel" role="37vLTx">
                    <node concept="37vLTw" id="2N2MQGCJUem" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCJHIO" resolve="feature" />
                    </node>
                    <node concept="3TrcHB" id="2N2MQGCJUen" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2N2MQGCJUeo" role="37vLTJ">
                    <node concept="37vLTw" id="2N2MQGCJV2g" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCJIte" resolve="cr" />
                    </node>
                    <node concept="3TrcHB" id="2N2MQGCJUeq" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2N2MQGCJIzq" role="3cqZAp">
                <node concept="2OqwBi" id="2N2MQGCJJI6" role="3clFbG">
                  <node concept="2OqwBi" id="2N2MQGCJIAc" role="2Oq$k0">
                    <node concept="37vLTw" id="2N2MQGCJIzo" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCJIte" resolve="cr" />
                    </node>
                    <node concept="3Tsc0h" id="2N2MQGCJJ76" role="2OqNvi">
                      <ref role="3TtcxE" to="5j4j:6$jH9oLmYFB" />
                    </node>
                  </node>
                  <node concept="2DeJg1" id="2N2MQGCJLYf" role="2OqNvi">
                    <ref role="1A0vxQ" to="5j4j:6$jH9oLmYC_" resolve="Compound" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2N2MQGCJIwv" role="3cqZAp">
                <node concept="37vLTw" id="2N2MQGCJIti" role="3cqZAk">
                  <ref role="3cqZAo" node="2N2MQGCJIte" resolve="cr" />
                </node>
              </node>
              <node concept="3clFbH" id="2N2MQGCJIsh" role="3cqZAp" />
            </node>
          </node>
          <node concept="1_3QMl" id="2N2MQGCJ_Xu" role="1_3QMm">
            <node concept="3gn64h" id="2N2MQGCJ_XM" role="3Kbmr1">
              <ref role="3gnhBz" to="wq2x:1pPth$m5oa6" resolve="ListTypeFeature" />
            </node>
            <node concept="3clFbS" id="2N2MQGCJ_Xw" role="3Kbo56">
              <node concept="3cpWs8" id="2N2MQGCJM0w" role="3cqZAp">
                <node concept="3cpWsn" id="2N2MQGCJM0x" role="3cpWs9">
                  <property role="TrG5h" value="cr" />
                  <node concept="3Tqbb2" id="2N2MQGCJM0y" role="1tU5fm">
                    <ref role="ehGHo" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                  </node>
                  <node concept="2ShNRf" id="2N2MQGCJM0z" role="33vP2m">
                    <node concept="2fJWfE" id="2N2MQGCJM0$" role="2ShVmc">
                      <node concept="3Tqbb2" id="2N2MQGCJM0_" role="3zrR0E">
                        <ref role="ehGHo" to="5j4j:6$jH9oLmYEJ" resolve="ChildRole" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2N2MQGCJV9g" role="3cqZAp">
                <node concept="37vLTI" id="2N2MQGCJV9h" role="3clFbG">
                  <node concept="2OqwBi" id="2N2MQGCJV9i" role="37vLTx">
                    <node concept="37vLTw" id="2N2MQGCJV9j" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCJHIO" resolve="feature" />
                    </node>
                    <node concept="3TrcHB" id="2N2MQGCJV9k" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2N2MQGCJV9l" role="37vLTJ">
                    <node concept="37vLTw" id="2N2MQGCJV9m" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCJM0x" resolve="cr" />
                    </node>
                    <node concept="3TrcHB" id="2N2MQGCJV9n" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2N2MQGCJM0A" role="3cqZAp">
                <node concept="2OqwBi" id="2N2MQGCJM0B" role="3clFbG">
                  <node concept="2OqwBi" id="2N2MQGCJM0C" role="2Oq$k0">
                    <node concept="37vLTw" id="2N2MQGCJM0D" role="2Oq$k0">
                      <ref role="3cqZAo" node="2N2MQGCJM0x" resolve="cr" />
                    </node>
                    <node concept="3Tsc0h" id="2N2MQGCJM0E" role="2OqNvi">
                      <ref role="3TtcxE" to="5j4j:6$jH9oLmYFB" />
                    </node>
                  </node>
                  <node concept="2DeJg1" id="2N2MQGCJM0F" role="2OqNvi">
                    <ref role="1A0vxQ" to="5j4j:1OShD0HAY6y" resolve="List" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2N2MQGCJM0G" role="3cqZAp">
                <node concept="37vLTw" id="2N2MQGCJM0H" role="3cqZAk">
                  <ref role="3cqZAo" node="2N2MQGCJM0x" resolve="cr" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5Z2pjOGAcso" role="1_3QMn">
            <node concept="37vLTw" id="5Z2pjOGAckJ" role="2Oq$k0">
              <ref role="3cqZAo" node="2N2MQGCJHIO" resolve="feature" />
            </node>
            <node concept="2yIwOk" id="5Z2pjOGAcFj" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="2N2MQGCJM8D" role="3cqZAp" />
        <node concept="YS8fn" id="2N2MQGCJMdC" role="3cqZAp">
          <node concept="2ShNRf" id="2N2MQGCJMgN" role="YScLw">
            <node concept="1pGfFk" id="2N2MQGCJMrp" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="3cpWs3" id="2N2MQGCJMJu" role="37wK5m">
                <node concept="2OqwBi" id="2N2MQGCJMQC" role="3uHU7w">
                  <node concept="37vLTw" id="2N2MQGCJML_" role="2Oq$k0">
                    <ref role="3cqZAo" node="2N2MQGCJHIO" resolve="feature" />
                  </node>
                  <node concept="2qgKlT" id="2N2MQGCJN9z" role="2OqNvi">
                    <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                  </node>
                </node>
                <node concept="Xl_RD" id="2N2MQGCJMsU" role="3uHU7B">
                  <property role="Xl_RC" value="unknown feature: " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2N2MQGCJx2T" role="jymVt" />
    <node concept="3Tm1VV" id="2N2MQGCJu8J" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="746Sd4ujSKb">
    <property role="TrG5h" value="RuleTemplateUtil" />
    <node concept="2tJIrI" id="746Sd4ujSOi" role="jymVt" />
    <node concept="2YIFZL" id="746Sd4ujSOx" role="jymVt">
      <property role="TrG5h" value="templateMethodKind" />
      <node concept="37vLTG" id="746Sd4ujSR8" role="3clF46">
        <property role="TrG5h" value="bmd" />
        <node concept="3Tqbb2" id="746Sd4ujSRq" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
        </node>
      </node>
      <node concept="3uibUv" id="746Sd4ujSPT" role="3clF45">
        <ref role="3uigEE" to="i348:4OKkcnfu_Ag" resolve="RuleTemplateMehodKind" />
      </node>
      <node concept="3Tm1VV" id="746Sd4ujSO$" role="1B3o_S" />
      <node concept="3clFbS" id="746Sd4ujSO_" role="3clF47">
        <node concept="3clFbH" id="18kNIl18_WG" role="3cqZAp" />
        <node concept="3cpWs8" id="18kNIl1d0Ik" role="3cqZAp">
          <node concept="3cpWsn" id="18kNIl1d0Il" role="3cpWs9">
            <property role="TrG5h" value="annDecl" />
            <node concept="3Tqbb2" id="18kNIl1d4Hd" role="1tU5fm" />
            <node concept="2YIFZM" id="18kNIl1dQPC" role="33vP2m">
              <ref role="1Pybhc" node="746Sd4ujSKb" resolve="RuleTemplateUtil" />
              <ref role="37wK5l" node="18kNIl1dQP$" resolve="annotationNode" />
              <node concept="37vLTw" id="18kNIl1dQPB" role="37wK5m">
                <ref role="3cqZAo" node="746Sd4ujSR8" resolve="bmd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="18kNIl1dMWD" role="3cqZAp">
          <node concept="3cpWsn" id="18kNIl1dMWE" role="3cpWs9">
            <property role="TrG5h" value="valueMethod" />
            <node concept="3Tqbb2" id="18kNIl1dMWl" role="1tU5fm">
              <ref role="ehGHo" to="tpee:hiACnCB" resolve="AnnotationMethodDeclaration" />
            </node>
            <node concept="2OqwBi" id="18kNIl1dMWF" role="33vP2m">
              <node concept="2OqwBi" id="18kNIl1dMWG" role="2Oq$k0">
                <node concept="1PxgMI" id="18kNIl1dMWH" role="2Oq$k0">
                  <ref role="1m5ApE" to="tpee:hiABswc" resolve="Annotation" />
                  <node concept="37vLTw" id="18kNIl1dMWI" role="1m5AlR">
                    <ref role="3cqZAo" node="18kNIl1d0Il" resolve="annDecl" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="18kNIl1dMWJ" role="2OqNvi">
                  <ref role="3TtcxE" to="tpee:hiACsvU" />
                </node>
              </node>
              <node concept="1z4cxt" id="18kNIl1dMWK" role="2OqNvi">
                <node concept="1bVj0M" id="18kNIl1dMWL" role="23t8la">
                  <node concept="3clFbS" id="18kNIl1dMWM" role="1bW5cS">
                    <node concept="3clFbF" id="18kNIl1dMWN" role="3cqZAp">
                      <node concept="2OqwBi" id="18kNIl1dMWO" role="3clFbG">
                        <node concept="Xl_RD" id="18kNIl1dMWP" role="2Oq$k0">
                          <property role="Xl_RC" value="kind" />
                        </node>
                        <node concept="liA8E" id="18kNIl1dMWQ" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                          <node concept="2OqwBi" id="18kNIl1dMWR" role="37wK5m">
                            <node concept="37vLTw" id="18kNIl1dMWS" role="2Oq$k0">
                              <ref role="3cqZAo" node="18kNIl1dMWU" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="18kNIl1dMWT" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="18kNIl1dMWU" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="18kNIl1dMWV" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="18kNIl1dbEq" role="3cqZAp" />
        <node concept="3cpWs8" id="746Sd4ukaDz" role="3cqZAp">
          <node concept="3cpWsn" id="746Sd4ukaD$" role="3cpWs9">
            <property role="TrG5h" value="annInst" />
            <node concept="3Tqbb2" id="746Sd4ukaDg" role="1tU5fm">
              <ref role="ehGHo" to="tpee:hiAHcMF" resolve="AnnotationInstance" />
            </node>
            <node concept="2OqwBi" id="746Sd4ukaD_" role="33vP2m">
              <node concept="2OqwBi" id="746Sd4ukaDA" role="2Oq$k0">
                <node concept="37vLTw" id="746Sd4ukaDB" role="2Oq$k0">
                  <ref role="3cqZAo" node="746Sd4ujSR8" resolve="bmd" />
                </node>
                <node concept="3Tsc0h" id="746Sd4ukaDC" role="2OqNvi">
                  <ref role="3TtcxE" to="tpee:hiAJF2X" />
                </node>
              </node>
              <node concept="1z4cxt" id="746Sd4ukaDD" role="2OqNvi">
                <node concept="1bVj0M" id="746Sd4ukaDE" role="23t8la">
                  <node concept="3clFbS" id="746Sd4ukaDF" role="1bW5cS">
                    <node concept="3clFbF" id="746Sd4ukaDG" role="3cqZAp">
                      <node concept="3clFbC" id="746Sd4ukaDH" role="3clFbG">
                        <node concept="37vLTw" id="18kNIl1d0Iv" role="3uHU7w">
                          <ref role="3cqZAo" node="18kNIl1d0Il" resolve="annDecl" />
                        </node>
                        <node concept="2OqwBi" id="746Sd4ukaDR" role="3uHU7B">
                          <node concept="37vLTw" id="746Sd4ukaDS" role="2Oq$k0">
                            <ref role="3cqZAo" node="746Sd4ukaDU" resolve="it" />
                          </node>
                          <node concept="3TrEf2" id="746Sd4ukaDT" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpee:hiAI5P0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="746Sd4ukaDU" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="746Sd4ukaDV" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="746Sd4ukaU2" role="3cqZAp">
          <node concept="3clFbS" id="746Sd4ukaU4" role="3clFbx">
            <node concept="3cpWs8" id="746Sd4ukhhH" role="3cqZAp">
              <node concept="3cpWsn" id="746Sd4ukhhI" role="3cpWs9">
                <property role="TrG5h" value="enumRef" />
                <node concept="3Tqbb2" id="746Sd4ukhhp" role="1tU5fm">
                  <ref role="ehGHo" to="tpee:fKRm8J8" resolve="EnumConstantReference" />
                </node>
                <node concept="1PxgMI" id="746Sd4ukhhJ" role="33vP2m">
                  <ref role="1m5ApE" to="tpee:fKRm8J8" resolve="EnumConstantReference" />
                  <node concept="2OqwBi" id="746Sd4ukhhK" role="1m5AlR">
                    <node concept="2OqwBi" id="746Sd4ukhhL" role="2Oq$k0">
                      <node concept="2OqwBi" id="746Sd4ukhhM" role="2Oq$k0">
                        <node concept="37vLTw" id="746Sd4ukhhN" role="2Oq$k0">
                          <ref role="3cqZAo" node="746Sd4ukaD$" resolve="annInst" />
                        </node>
                        <node concept="3Tsc0h" id="746Sd4ukhhO" role="2OqNvi">
                          <ref role="3TtcxE" to="tpee:hiB76_Z" />
                        </node>
                      </node>
                      <node concept="1z4cxt" id="746Sd4ukhhP" role="2OqNvi">
                        <node concept="1bVj0M" id="746Sd4ukhhQ" role="23t8la">
                          <node concept="3clFbS" id="746Sd4ukhhR" role="1bW5cS">
                            <node concept="3clFbF" id="746Sd4ukhhS" role="3cqZAp">
                              <node concept="3clFbC" id="18kNIl1cZZP" role="3clFbG">
                                <node concept="2OqwBi" id="746Sd4ukhhU" role="3uHU7B">
                                  <node concept="37vLTw" id="746Sd4ukhhV" role="2Oq$k0">
                                    <ref role="3cqZAo" node="746Sd4ukhhZ" resolve="it" />
                                  </node>
                                  <node concept="3TrEf2" id="18kNIl1cZ5Q" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpee:hiB6Ojz" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="18kNIl1dOmw" role="3uHU7w">
                                  <ref role="3cqZAo" node="18kNIl1dMWE" resolve="valueMethod" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="746Sd4ukhhZ" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="746Sd4ukhi0" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3TrEf2" id="746Sd4ukhi1" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:hiB70Z4" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="746Sd4ukhx4" role="3cqZAp" />
            <node concept="3clFbJ" id="746Sd4uks9j" role="3cqZAp">
              <node concept="3clFbS" id="746Sd4uks9l" role="3clFbx">
                <node concept="3cpWs6" id="746Sd4ukrxL" role="3cqZAp">
                  <node concept="unr1b" id="746Sd4ukrGP" role="3cqZAk">
                    <ref role="un$jP" to="i348:4OKkcnfu_Ag" resolve="RuleTemplateMehodKind" />
                    <node concept="2OqwBi" id="746Sd4ukrGQ" role="unwt0">
                      <node concept="2OqwBi" id="746Sd4ukrGR" role="2Oq$k0">
                        <node concept="37vLTw" id="746Sd4ukrGS" role="2Oq$k0">
                          <ref role="3cqZAo" node="746Sd4ukhhI" resolve="enumRef" />
                        </node>
                        <node concept="3TrEf2" id="746Sd4ukrGT" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:fKRm8Ja" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="746Sd4ukrGU" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="746Sd4uksx8" role="3clFbw">
                <node concept="10Nm6u" id="746Sd4uksxY" role="3uHU7w" />
                <node concept="37vLTw" id="746Sd4uksoh" role="3uHU7B">
                  <ref role="3cqZAo" node="746Sd4ukhhI" resolve="enumRef" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="746Sd4ukb4o" role="3clFbw">
            <node concept="10Nm6u" id="746Sd4ukb5b" role="3uHU7w" />
            <node concept="37vLTw" id="746Sd4ukaV$" role="3uHU7B">
              <ref role="3cqZAo" node="746Sd4ukaD$" resolve="annInst" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="746Sd4uk5od" role="3cqZAp" />
        <node concept="3clFbF" id="746Sd4uk5rx" role="3cqZAp">
          <node concept="10Nm6u" id="746Sd4uk5rv" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="746Sd4ujSPF" role="jymVt" />
    <node concept="2YIFZL" id="18kNIl18Csa" role="jymVt">
      <property role="TrG5h" value="isGenerated" />
      <node concept="37vLTG" id="18kNIl18Cvh" role="3clF46">
        <property role="TrG5h" value="bmd" />
        <node concept="3Tqbb2" id="18kNIl18Cvi" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
        </node>
      </node>
      <node concept="10P_77" id="18kNIl18DqS" role="3clF45" />
      <node concept="3Tm1VV" id="18kNIl18Csd" role="1B3o_S" />
      <node concept="3clFbS" id="18kNIl18Cse" role="3clF47">
        <node concept="3clFbH" id="18kNIl18Cwi" role="3cqZAp" />
        <node concept="3cpWs8" id="18kNIl1dUkr" role="3cqZAp">
          <node concept="3cpWsn" id="18kNIl1dUks" role="3cpWs9">
            <property role="TrG5h" value="annDecl" />
            <node concept="3Tqbb2" id="18kNIl1dUkt" role="1tU5fm" />
            <node concept="2YIFZM" id="18kNIl1dUku" role="33vP2m">
              <ref role="37wK5l" node="18kNIl1dQP$" resolve="annotationNode" />
              <ref role="1Pybhc" node="746Sd4ujSKb" resolve="RuleTemplateUtil" />
              <node concept="37vLTw" id="18kNIl1dUkv" role="37wK5m">
                <ref role="3cqZAo" node="18kNIl18Cvh" resolve="bmd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="18kNIl1dUkw" role="3cqZAp">
          <node concept="3cpWsn" id="18kNIl1dUkx" role="3cpWs9">
            <property role="TrG5h" value="generatedMethod" />
            <node concept="3Tqbb2" id="18kNIl1dUky" role="1tU5fm">
              <ref role="ehGHo" to="tpee:hiACnCB" resolve="AnnotationMethodDeclaration" />
            </node>
            <node concept="2OqwBi" id="18kNIl1dUkz" role="33vP2m">
              <node concept="2OqwBi" id="18kNIl1dUk$" role="2Oq$k0">
                <node concept="1PxgMI" id="18kNIl1dUk_" role="2Oq$k0">
                  <ref role="1m5ApE" to="tpee:hiABswc" resolve="Annotation" />
                  <node concept="37vLTw" id="18kNIl1dUkA" role="1m5AlR">
                    <ref role="3cqZAo" node="18kNIl1dUks" resolve="annDecl" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="18kNIl1dUkB" role="2OqNvi">
                  <ref role="3TtcxE" to="tpee:hiACsvU" />
                </node>
              </node>
              <node concept="1z4cxt" id="18kNIl1dUkC" role="2OqNvi">
                <node concept="1bVj0M" id="18kNIl1dUkD" role="23t8la">
                  <node concept="3clFbS" id="18kNIl1dUkE" role="1bW5cS">
                    <node concept="3clFbF" id="18kNIl1dUkF" role="3cqZAp">
                      <node concept="2OqwBi" id="18kNIl1dUkG" role="3clFbG">
                        <node concept="Xl_RD" id="18kNIl1dUkH" role="2Oq$k0">
                          <property role="Xl_RC" value="generated" />
                        </node>
                        <node concept="liA8E" id="18kNIl1dUkI" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                          <node concept="2OqwBi" id="18kNIl1dUkJ" role="37wK5m">
                            <node concept="37vLTw" id="18kNIl1dUkK" role="2Oq$k0">
                              <ref role="3cqZAo" node="18kNIl1dUkM" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="18kNIl1dUkL" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="18kNIl1dUkM" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="18kNIl1dUkN" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="18kNIl1dYRN" role="3cqZAp" />
        <node concept="3cpWs8" id="18kNIl18Cxr" role="3cqZAp">
          <node concept="3cpWsn" id="18kNIl18Cxu" role="3cpWs9">
            <property role="TrG5h" value="annInst" />
            <node concept="3Tqbb2" id="18kNIl18Cxv" role="1tU5fm">
              <ref role="ehGHo" to="tpee:hiAHcMF" resolve="AnnotationInstance" />
            </node>
            <node concept="2OqwBi" id="18kNIl18Cxw" role="33vP2m">
              <node concept="2OqwBi" id="18kNIl18Cxx" role="2Oq$k0">
                <node concept="37vLTw" id="18kNIl18Cxy" role="2Oq$k0">
                  <ref role="3cqZAo" node="18kNIl18Cvh" resolve="bmd" />
                </node>
                <node concept="3Tsc0h" id="18kNIl18Cxz" role="2OqNvi">
                  <ref role="3TtcxE" to="tpee:hiAJF2X" />
                </node>
              </node>
              <node concept="1z4cxt" id="18kNIl18Cx$" role="2OqNvi">
                <node concept="1bVj0M" id="18kNIl18Cx_" role="23t8la">
                  <node concept="3clFbS" id="18kNIl18CxA" role="1bW5cS">
                    <node concept="3clFbF" id="18kNIl18CxB" role="3cqZAp">
                      <node concept="3clFbC" id="18kNIl18CxC" role="3clFbG">
                        <node concept="37vLTw" id="18kNIl1dZZf" role="3uHU7w">
                          <ref role="3cqZAo" node="18kNIl1dUks" resolve="annDecl" />
                        </node>
                        <node concept="2OqwBi" id="18kNIl18CxM" role="3uHU7B">
                          <node concept="37vLTw" id="18kNIl18CxN" role="2Oq$k0">
                            <ref role="3cqZAo" node="18kNIl18CxP" resolve="it" />
                          </node>
                          <node concept="3TrEf2" id="18kNIl18CxO" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpee:hiAI5P0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="18kNIl18CxP" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="18kNIl18CxQ" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="18kNIl1dUkO" role="3cqZAp" />
        <node concept="3clFbJ" id="18kNIl1cXPX" role="3cqZAp">
          <node concept="3clFbS" id="18kNIl1cXPY" role="3clFbx">
            <node concept="3cpWs8" id="18kNIl1e4pi" role="3cqZAp">
              <node concept="3cpWsn" id="18kNIl1e4pj" role="3cpWs9">
                <property role="TrG5h" value="generated" />
                <node concept="3Tqbb2" id="18kNIl1e4ph" role="1tU5fm">
                  <ref role="ehGHo" to="tpee:hiB6LFO" resolve="AnnotationInstanceValue" />
                </node>
                <node concept="2OqwBi" id="18kNIl1e4pk" role="33vP2m">
                  <node concept="2OqwBi" id="18kNIl1e4pl" role="2Oq$k0">
                    <node concept="37vLTw" id="18kNIl1e4pm" role="2Oq$k0">
                      <ref role="3cqZAo" node="18kNIl18Cxu" resolve="annInst" />
                    </node>
                    <node concept="3Tsc0h" id="18kNIl1e4pn" role="2OqNvi">
                      <ref role="3TtcxE" to="tpee:hiB76_Z" />
                    </node>
                  </node>
                  <node concept="1z4cxt" id="18kNIl1e4po" role="2OqNvi">
                    <node concept="1bVj0M" id="18kNIl1e4pp" role="23t8la">
                      <node concept="3clFbS" id="18kNIl1e4pq" role="1bW5cS">
                        <node concept="3clFbF" id="18kNIl1e4pr" role="3cqZAp">
                          <node concept="3clFbC" id="18kNIl1e4ps" role="3clFbG">
                            <node concept="37vLTw" id="18kNIl1e4pt" role="3uHU7w">
                              <ref role="3cqZAo" node="18kNIl1dUkx" resolve="generatedMethod" />
                            </node>
                            <node concept="2OqwBi" id="18kNIl1e4pu" role="3uHU7B">
                              <node concept="37vLTw" id="18kNIl1e4pv" role="2Oq$k0">
                                <ref role="3cqZAo" node="18kNIl1e4px" resolve="it" />
                              </node>
                              <node concept="3TrEf2" id="18kNIl1e4pw" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpee:hiB6Ojz" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="18kNIl1e4px" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="18kNIl1e4py" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="18kNIl1e1qe" role="3cqZAp" />
            <node concept="3cpWs6" id="18kNIl1e6DC" role="3cqZAp">
              <node concept="1Wc70l" id="18kNIl1eaG8" role="3cqZAk">
                <node concept="2YIFZM" id="18kNIl1edvc" role="3uHU7w">
                  <ref role="37wK5l" to="wyt6:~Boolean.valueOf(java.lang.String):java.lang.Boolean" resolve="valueOf" />
                  <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                  <node concept="2YIFZM" id="18kNIl1ejJ5" role="37wK5m">
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <ref role="37wK5l" to="wyt6:~String.valueOf(boolean):java.lang.String" resolve="valueOf" />
                    <node concept="2OqwBi" id="18kNIl1h0L1" role="37wK5m">
                      <node concept="1PxgMI" id="18kNIl1gZvI" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <ref role="1m5ApE" to="tpee:fzclF81" resolve="BooleanConstant" />
                        <node concept="2OqwBi" id="18kNIl1ef8l" role="1m5AlR">
                          <node concept="37vLTw" id="18kNIl1eeeA" role="2Oq$k0">
                            <ref role="3cqZAo" node="18kNIl1e4pj" resolve="generated" />
                          </node>
                          <node concept="3TrEf2" id="18kNIl1efLb" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpee:hiB70Z4" />
                          </node>
                        </node>
                      </node>
                      <node concept="3TrcHB" id="18kNIl1h1vy" role="2OqNvi">
                        <ref role="3TsBF5" to="tpee:fzclF82" resolve="value" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="18kNIl1e8QG" role="3uHU7B">
                  <node concept="37vLTw" id="18kNIl1e81f" role="2Oq$k0">
                    <ref role="3cqZAo" node="18kNIl1e4pj" resolve="generated" />
                  </node>
                  <node concept="3x8VRR" id="18kNIl1e9H$" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="18kNIl1cXQy" role="3clFbw">
            <node concept="10Nm6u" id="18kNIl1cXQz" role="3uHU7w" />
            <node concept="37vLTw" id="18kNIl1cXQ$" role="3uHU7B">
              <ref role="3cqZAo" node="18kNIl18Cxu" resolve="annInst" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="18kNIl1cXMS" role="3cqZAp" />
        <node concept="3cpWs6" id="18kNIl18CVt" role="3cqZAp">
          <node concept="3clFbT" id="18kNIl1eldc" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="746Sd4ujSOn" role="jymVt" />
    <node concept="2YIFZL" id="18kNIl1dQP$" role="jymVt">
      <property role="TrG5h" value="annotationNode" />
      <node concept="3Tm6S6" id="18kNIl1dQP_" role="1B3o_S" />
      <node concept="3Tqbb2" id="18kNIl1dQPA" role="3clF45" />
      <node concept="37vLTG" id="18kNIl1dQPv" role="3clF46">
        <property role="TrG5h" value="bmd" />
        <node concept="3Tqbb2" id="18kNIl1dQPw" role="1tU5fm">
          <ref role="ehGHo" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="18kNIl1dQP1" role="3clF47">
        <node concept="3cpWs8" id="18kNIl1dQP4" role="3cqZAp">
          <node concept="3cpWsn" id="18kNIl1dQP5" role="3cpWs9">
            <property role="TrG5h" value="annDecl" />
            <node concept="3Tqbb2" id="18kNIl1dQP6" role="1tU5fm" />
            <node concept="2OqwBi" id="18kNIl1dQP7" role="33vP2m">
              <node concept="1N_AGu" id="18kNIl1dQP8" role="2Oq$k0">
                <ref role="1N_AGt" to="i348:4OKkcnfu_Am" resolve="RuleTemplateMethod" />
              </node>
              <node concept="liA8E" id="18kNIl1dQP9" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository):org.jetbrains.mps.openapi.model.SNode" resolve="resolve" />
                <node concept="2OqwBi" id="18kNIl1dQPa" role="37wK5m">
                  <node concept="2JrnkZ" id="18kNIl1dQPb" role="2Oq$k0">
                    <node concept="2OqwBi" id="18kNIl1dQPc" role="2JrQYb">
                      <node concept="37vLTw" id="18kNIl1dQPx" role="2Oq$k0">
                        <ref role="3cqZAo" node="18kNIl1dQPv" resolve="bmd" />
                      </node>
                      <node concept="I4A8Y" id="18kNIl1dQPe" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="liA8E" id="18kNIl1dQPf" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="18kNIl1dQPg" role="3cqZAp">
          <node concept="3clFbS" id="18kNIl1dQPh" role="3clFbx">
            <node concept="YS8fn" id="18kNIl1dQPi" role="3cqZAp">
              <node concept="2ShNRf" id="18kNIl1dQPj" role="YScLw">
                <node concept="1pGfFk" id="18kNIl1dQPk" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="2YIFZM" id="18kNIl1dQPl" role="37wK5m">
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                    <node concept="Xl_RD" id="18kNIl1dQPm" role="37wK5m">
                      <property role="Xl_RC" value="could not resolve %s" />
                    </node>
                    <node concept="2OqwBi" id="18kNIl1dQPn" role="37wK5m">
                      <node concept="1N_AGu" id="18kNIl1dQPo" role="2Oq$k0">
                        <ref role="1N_AGt" to="i348:4OKkcnfu_Am" resolve="RuleTemplateMethod" />
                      </node>
                      <node concept="liA8E" id="18kNIl1dQPp" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNodeReference.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="18kNIl1dQPq" role="3clFbw">
            <node concept="37vLTw" id="18kNIl1dQPr" role="2Oq$k0">
              <ref role="3cqZAo" node="18kNIl1dQP5" resolve="annDecl" />
            </node>
            <node concept="3w_OXm" id="18kNIl1dQPs" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="18kNIl1dQPt" role="3cqZAp">
          <node concept="37vLTw" id="18kNIl1dQPu" role="3cqZAk">
            <ref role="3cqZAo" node="18kNIl1dQP5" resolve="annDecl" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="18kNIl1dTsv" role="jymVt" />
    <node concept="3Tm1VV" id="746Sd4ujSKc" role="1B3o_S" />
  </node>
</model>

