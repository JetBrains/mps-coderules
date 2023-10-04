<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:49af371c-e432-4e5a-a3df-e689ebe20a8d(samples.lambdacalc.constraints)">
  <persistence version="9" />
  <languages>
    <use id="d4615e3b-d671-4ba9-af01-2b78369b0ba7" name="jetbrains.mps.lang.pattern" version="2" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
    <use id="af858d84-85f2-42f4-a854-0b3c6b5cd482" name="samples.lambdacalc" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="8tt8" ref="r:e74c1bfc-387b-4b4b-abee-2eb77ee510ec(samples.lambdacalc.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1214918975462" name="jetbrains.mps.baseLanguage.structure.PostfixDecrementExpression" flags="nn" index="3uO5VW" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="6702802731807420587" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAParent" flags="ig" index="9SLcT" />
      <concept id="8966504967485224688" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" flags="nn" index="2rP1CM" />
      <concept id="4303308395523096213" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_childConcept" flags="ng" index="2DD5aU" />
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1147468630220" name="propertyGetter" index="EtsB7" />
        <child id="1212097481299" name="propertyValidator" index="QCWH9" />
      </concept>
      <concept id="1147467790433" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyGetter" flags="in" index="Eqf_E" />
      <concept id="1147468365020" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" flags="nn" index="EsrRn" />
      <concept id="6738154313879680265" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_childNode" flags="nn" index="2H4GUG" />
      <concept id="1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" flags="in" index="QB0g5" />
      <concept id="5564765827938091039" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope" flags="ig" index="3dgokm" />
      <concept id="1163200647017" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_referenceNode" flags="nn" index="3kakTB" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="6702802731807532712" name="canBeParent" index="9SGkU" />
        <child id="1213098023997" name="property" index="1MhHOB" />
        <child id="1213100494875" name="referent" index="1Mr941" />
      </concept>
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
      <concept id="1153138554286" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" flags="nn" index="1Wqviy" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204851882688" name="jetbrains.mps.lang.smodel.structure.LinkRefQualifier" flags="ng" index="26LbJo">
        <reference id="1204851882689" name="link" index="26LbJp" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1143511969223" name="jetbrains.mps.lang.smodel.structure.Node_GetPrevSiblingOperation" flags="nn" index="YBYNd" />
      <concept id="1180031783296" name="jetbrains.mps.lang.smodel.structure.Concept_IsSubConceptOfOperation" flags="nn" index="2Zo12i">
        <child id="1180031783297" name="conceptArgument" index="2Zo12j" />
      </concept>
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="1154546920561" name="jetbrains.mps.lang.smodel.structure.OperationParm_ConceptList" flags="ng" index="3gmYPX">
        <child id="1154546920563" name="concept" index="3gmYPZ" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="6039268229364358244" name="jetbrains.mps.lang.smodel.structure.ExactConceptCase" flags="ng" index="1pnPoh">
        <child id="6039268229364358388" name="body" index="1pnPq1" />
        <child id="6039268229364358387" name="concept" index="1pnPq6" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="5944356402132808749" name="jetbrains.mps.lang.smodel.structure.ConceptSwitchStatement" flags="nn" index="1_3QMa">
        <child id="6039268229365417680" name="defaultBlock" index="1prKM_" />
        <child id="5944356402132808753" name="case" index="1_3QMm" />
        <child id="5944356402132808752" name="expression" index="1_3QMn" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
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
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1176923520476" name="jetbrains.mps.baseLanguage.collections.structure.ExcludeOperation" flags="nn" index="66VNe" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414456414" name="elementType" index="kMuH3" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="1M2fIO" id="7_8aRkgG6CD">
    <property role="3GE5qa" value="expr" />
    <ref role="1M2myG" to="8tt8:7_8aRkgDGPo" resolve="Var" />
    <node concept="EnEH3" id="7_8aRkgG6CE" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="7_8aRkgG6CG" role="QCWH9">
        <node concept="3clFbS" id="7_8aRkgG6CH" role="2VODD2">
          <node concept="3clFbF" id="7_8aRkgG6JP" role="3cqZAp">
            <node concept="2OqwBi" id="hDMFLSy" role="3clFbG">
              <node concept="1Wqviy" id="hDMFLSz" role="2Oq$k0" />
              <node concept="liA8E" id="hDMFLS$" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String)" resolve="matches" />
                <node concept="Xl_RD" id="hDMFLS_" role="37wK5m">
                  <property role="Xl_RC" value="[a-zA-Z$[_]][a-zA-Z0-9$[_]]*" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="7_zMfd$oopc">
    <property role="3GE5qa" value="expr" />
    <ref role="1M2myG" to="8tt8:7_zMfd$ooor" resolve="VarRef" />
    <node concept="1N5Pfh" id="7_zMfd$oopd" role="1Mr941">
      <ref role="1N5Vy1" to="8tt8:7_zMfd$ooos" resolve="def" />
      <node concept="3dgokm" id="7_zMfd$oopf" role="1N6uqs">
        <node concept="3clFbS" id="7_zMfd$oopg" role="2VODD2">
          <node concept="3clFbF" id="7_zMfd$rcG9" role="3cqZAp">
            <node concept="2YIFZM" id="7_zMfd$rcQI" role="3clFbG">
              <ref role="37wK5l" node="7_zMfd$r3p6" resolve="varScope" />
              <ref role="1Pybhc" node="7_zMfd$r3on" resolve="ScopeUtil" />
              <node concept="2rP1CM" id="7_zMfd$rcZ2" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7_zMfd$r3on">
    <property role="3GE5qa" value="expr" />
    <property role="TrG5h" value="ScopeUtil" />
    <node concept="2tJIrI" id="2O9ahh6u6nc" role="jymVt" />
    <node concept="2YIFZL" id="2O9ahh6u0KZ" role="jymVt">
      <property role="TrG5h" value="toScope" />
      <node concept="3clFbS" id="2O9ahh6u0L2" role="3clF47">
        <node concept="3cpWs6" id="2O9ahh6u5rD" role="3cqZAp">
          <node concept="2ShNRf" id="2O9ahh6u5rE" role="3cqZAk">
            <node concept="YeOm9" id="2O9ahh6u5rF" role="2ShVmc">
              <node concept="1Y3b0j" id="2O9ahh6u5rG" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                <node concept="3Tm1VV" id="2O9ahh6u5rH" role="1B3o_S" />
                <node concept="3clFb_" id="2O9ahh6u5rI" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="getName" />
                  <node concept="17QB3L" id="2O9ahh6u5rJ" role="3clF45" />
                  <node concept="3Tm1VV" id="2O9ahh6u5rK" role="1B3o_S" />
                  <node concept="37vLTG" id="2O9ahh6u5rL" role="3clF46">
                    <property role="TrG5h" value="named" />
                    <node concept="3Tqbb2" id="2O9ahh6u5rM" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="2O9ahh6u5rN" role="3clF47">
                    <node concept="3clFbF" id="2O9ahh6u5rO" role="3cqZAp">
                      <node concept="2OqwBi" id="2O9ahh6u5rP" role="3clFbG">
                        <node concept="1PxgMI" id="2O9ahh6u5rQ" role="2Oq$k0">
                          <node concept="chp4Y" id="2O9ahh6u5rR" role="3oSUPX">
                            <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                          </node>
                          <node concept="37vLTw" id="2O9ahh6u5rS" role="1m5AlR">
                            <ref role="3cqZAo" node="2O9ahh6u5rL" resolve="named" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="2O9ahh6u5rT" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="2O9ahh6u5RZ" role="37wK5m">
                  <ref role="3cqZAo" node="2O9ahh6u58Y" resolve="ns" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2O9ahh6tY0A" role="1B3o_S" />
      <node concept="3uibUv" id="2O9ahh6u0FU" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="37vLTG" id="2O9ahh6u58Y" role="3clF46">
        <property role="TrG5h" value="ns" />
        <node concept="A3Dl8" id="2O9ahh6u58W" role="1tU5fm">
          <node concept="3Tqbb2" id="2O9ahh6u5bZ" role="A3Ik2">
            <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7_zMfd$r3oL" role="jymVt" />
    <node concept="2YIFZL" id="7_zMfd$r3p6" role="jymVt">
      <property role="TrG5h" value="varScope" />
      <node concept="37vLTG" id="7_zMfd$r3s7" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="7_zMfd$r3sJ" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7_zMfd$r3tq" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3Tm1VV" id="7_zMfd$r3p9" role="1B3o_S" />
      <node concept="3clFbS" id="7_zMfd$r3pa" role="3clF47">
        <node concept="3cpWs8" id="3TFdEPZgA8C" role="3cqZAp">
          <node concept="3cpWsn" id="3TFdEPZgA8D" role="3cpWs9">
            <property role="TrG5h" value="collector" />
            <node concept="3uibUv" id="3TFdEPZgA8B" role="1tU5fm">
              <ref role="3uigEE" node="3TFdEPZgfzP" resolve="ScopeUtil.VarCollector" />
            </node>
            <node concept="2ShNRf" id="3TFdEPZgA8E" role="33vP2m">
              <node concept="HV5vD" id="3TFdEPZgA8F" role="2ShVmc">
                <ref role="HV5vE" node="3TFdEPZgfzP" resolve="ScopeUtil.VarCollector" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3TFdEPZgAsY" role="3cqZAp" />
        <node concept="3cpWs8" id="7_zMfd$r3us" role="3cqZAp">
          <node concept="3cpWsn" id="7_zMfd$r3ut" role="3cpWs9">
            <property role="TrG5h" value="current" />
            <node concept="3Tqbb2" id="7_zMfd$r3uu" role="1tU5fm" />
            <node concept="37vLTw" id="6NUaKj0XACM" role="33vP2m">
              <ref role="3cqZAo" node="7_zMfd$r3s7" resolve="contextNode" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="7_zMfd$r3uw" role="3cqZAp">
          <node concept="3clFbS" id="7_zMfd$r3ux" role="2LFqv$">
            <node concept="1_3QMa" id="7_zMfd$r3uN" role="3cqZAp">
              <node concept="2OqwBi" id="7_zMfd$r3uO" role="1_3QMn">
                <node concept="37vLTw" id="3TFdEPZcaSs" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_zMfd$r3ut" resolve="current" />
                </node>
                <node concept="2yIwOk" id="7_zMfd$r3uQ" role="2OqNvi" />
              </node>
              <node concept="1pnPoh" id="7_zMfd$r3uR" role="1_3QMm">
                <node concept="3gn64h" id="7_zMfd$r3uS" role="1pnPq6">
                  <ref role="3gnhBz" to="8tt8:7_8aRkgDGQf" resolve="Lam" />
                </node>
                <node concept="3clFbS" id="7_zMfd$r3uT" role="1pnPq1">
                  <node concept="3clFbF" id="3TFdEPZgAEx" role="3cqZAp">
                    <node concept="2OqwBi" id="3TFdEPZgANt" role="3clFbG">
                      <node concept="37vLTw" id="3TFdEPZgAEv" role="2Oq$k0">
                        <ref role="3cqZAo" node="3TFdEPZgA8D" resolve="collector" />
                      </node>
                      <node concept="liA8E" id="3TFdEPZgB5m" role="2OqNvi">
                        <ref role="37wK5l" node="3TFdEPZgi0y" resolve="collect" />
                        <node concept="2OqwBi" id="3TFdEPZgB8D" role="37wK5m">
                          <node concept="2OqwBi" id="3TFdEPZgB8E" role="2Oq$k0">
                            <node concept="1PxgMI" id="3TFdEPZgB8F" role="2Oq$k0">
                              <node concept="37vLTw" id="3TFdEPZgB8G" role="1m5AlR">
                                <ref role="3cqZAo" node="7_zMfd$r3ut" resolve="current" />
                              </node>
                              <node concept="chp4Y" id="3TFdEPZgB8H" role="3oSUPX">
                                <ref role="cht4Q" to="8tt8:7_8aRkgDGQf" resolve="Lam" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="3TFdEPZgB8I" role="2OqNvi">
                              <ref role="3Tt5mk" to="8tt8:7_8aRkgDGQg" resolve="binding" />
                            </node>
                          </node>
                          <node concept="32TBzR" id="3TFdEPZgB8J" role="2OqNvi">
                            <node concept="1aIX9F" id="3TFdEPZgB8K" role="1xVPHs">
                              <node concept="26LbJo" id="3TFdEPZgB8L" role="1aIX9E">
                                <ref role="26LbJp" to="8tt8:7_8aRkgDGQj" resolve="var" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="7_zMfd$r3v7" role="3cqZAp" />
                </node>
              </node>
              <node concept="1pnPoh" id="3TFdEPZe9Nt" role="1_3QMm">
                <node concept="3gn64h" id="3TFdEPZe9R2" role="1pnPq6">
                  <ref role="3gnhBz" to="8tt8:7_8aRkgDGQp" resolve="LetVarBind" />
                </node>
                <node concept="3clFbS" id="3TFdEPZe9Nx" role="1pnPq1">
                  <node concept="3SKdUt" id="3TFdEPZe9Y1" role="3cqZAp">
                    <node concept="1PaTwC" id="589APehYwI2" role="1aUNEU">
                      <node concept="3oM_SD" id="589APehYwI3" role="1PaTwD">
                        <property role="3oM_SC" value="skip" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwI4" role="1PaTwD">
                        <property role="3oM_SC" value="the" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwI5" role="1PaTwD">
                        <property role="3oM_SC" value="variable" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwI6" role="1PaTwD">
                        <property role="3oM_SC" value="in" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwI7" role="1PaTwD">
                        <property role="3oM_SC" value="the" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwI8" role="1PaTwD">
                        <property role="3oM_SC" value="let," />
                      </node>
                      <node concept="3oM_SD" id="589APehYwI9" role="1PaTwD">
                        <property role="3oM_SC" value="disallow" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIa" role="1PaTwD">
                        <property role="3oM_SC" value="let" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIb" role="1PaTwD">
                        <property role="3oM_SC" value="rec" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3TFdEPZh33g" role="3cqZAp">
                    <node concept="37vLTI" id="3TFdEPZh33h" role="3clFbG">
                      <node concept="37vLTw" id="3TFdEPZh33i" role="37vLTJ">
                        <ref role="3cqZAo" node="7_zMfd$r3ut" resolve="current" />
                      </node>
                      <node concept="2OqwBi" id="3TFdEPZh33j" role="37vLTx">
                        <node concept="37vLTw" id="3TFdEPZh33k" role="2Oq$k0">
                          <ref role="3cqZAo" node="7_zMfd$r3ut" resolve="current" />
                        </node>
                        <node concept="1mfA1w" id="3TFdEPZhjQC" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="3TFdEPZhf4$" role="3cqZAp">
                    <node concept="3clFbS" id="3TFdEPZhf4A" role="3clFbx">
                      <node concept="3clFbF" id="3TFdEPZhf$S" role="3cqZAp">
                        <node concept="37vLTI" id="3TFdEPZhf$T" role="3clFbG">
                          <node concept="37vLTw" id="3TFdEPZhf$U" role="37vLTJ">
                            <ref role="3cqZAo" node="7_zMfd$r3ut" resolve="current" />
                          </node>
                          <node concept="2OqwBi" id="3TFdEPZhf$V" role="37vLTx">
                            <node concept="37vLTw" id="3TFdEPZhf$W" role="2Oq$k0">
                              <ref role="3cqZAo" node="7_zMfd$r3ut" resolve="current" />
                            </node>
                            <node concept="1mfA1w" id="3TFdEPZhk07" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3TFdEPZhfdB" role="3clFbw">
                      <node concept="37vLTw" id="3TFdEPZhf5n" role="2Oq$k0">
                        <ref role="3cqZAo" node="7_zMfd$r3ut" resolve="current" />
                      </node>
                      <node concept="1mIQ4w" id="3TFdEPZhfsR" role="2OqNvi">
                        <node concept="chp4Y" id="3TFdEPZhfuO" role="cj9EA">
                          <ref role="cht4Q" to="8tt8:7_8aRkgDGQo" resolve="LetExpr" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3N13vt" id="3TFdEPZh4cY" role="3cqZAp" />
                  <node concept="3clFbH" id="3TFdEPZh0R0" role="3cqZAp" />
                </node>
              </node>
              <node concept="1pnPoh" id="7_zMfd$r3v8" role="1_3QMm">
                <node concept="3gn64h" id="7_zMfd$r3v9" role="1pnPq6">
                  <ref role="3gnhBz" to="8tt8:7_8aRkgDGQo" resolve="LetExpr" />
                </node>
                <node concept="3clFbS" id="7_zMfd$r3va" role="1pnPq1">
                  <node concept="3clFbF" id="3TFdEPZgBro" role="3cqZAp">
                    <node concept="2OqwBi" id="3TFdEPZgBzu" role="3clFbG">
                      <node concept="37vLTw" id="3TFdEPZgBrm" role="2Oq$k0">
                        <ref role="3cqZAo" node="3TFdEPZgA8D" resolve="collector" />
                      </node>
                      <node concept="liA8E" id="3TFdEPZgBPe" role="2OqNvi">
                        <ref role="37wK5l" node="3TFdEPZgi0y" resolve="collect" />
                        <node concept="2OqwBi" id="3TFdEPZgBSz" role="37wK5m">
                          <node concept="2OqwBi" id="3TFdEPZgBS$" role="2Oq$k0">
                            <node concept="1PxgMI" id="3TFdEPZgBS_" role="2Oq$k0">
                              <node concept="37vLTw" id="3TFdEPZgBSA" role="1m5AlR">
                                <ref role="3cqZAo" node="7_zMfd$r3ut" resolve="current" />
                              </node>
                              <node concept="chp4Y" id="3TFdEPZgBSB" role="3oSUPX">
                                <ref role="cht4Q" to="8tt8:7_8aRkgDGQo" resolve="LetExpr" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="3TFdEPZgBSC" role="2OqNvi">
                              <ref role="3Tt5mk" to="8tt8:7_8aRkgDGQv" resolve="binding" />
                            </node>
                          </node>
                          <node concept="32TBzR" id="3TFdEPZgBSD" role="2OqNvi">
                            <node concept="1aIX9F" id="3TFdEPZgBSE" role="1xVPHs">
                              <node concept="26LbJo" id="3TFdEPZgBSF" role="1aIX9E">
                                <ref role="26LbJp" to="8tt8:7_8aRkgDGQq" resolve="var" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="7_zMfd$r3vo" role="3cqZAp" />
                </node>
              </node>
              <node concept="1pnPoh" id="7_zMfd$r3vp" role="1_3QMm">
                <node concept="3gn64h" id="7_zMfd$r3vq" role="1pnPq6">
                  <ref role="3gnhBz" to="8tt8:7_8aRkgDHAe" resolve="LetClause" />
                </node>
                <node concept="3clFbS" id="7_zMfd$r3vr" role="1pnPq1">
                  <node concept="3cpWs8" id="7_zMfd$r3vy" role="3cqZAp">
                    <node concept="3cpWsn" id="7_zMfd$r3vz" role="3cpWs9">
                      <property role="TrG5h" value="prevSibling" />
                      <node concept="3Tqbb2" id="7_zMfd$r3v$" role="1tU5fm" />
                      <node concept="2OqwBi" id="7_zMfd$rmlT" role="33vP2m">
                        <node concept="37vLTw" id="3TFdEPZcaSv" role="2Oq$k0">
                          <ref role="3cqZAo" node="7_zMfd$r3ut" resolve="current" />
                        </node>
                        <node concept="YBYNd" id="7_zMfd$rmU_" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="2$JKZl" id="7_zMfd$r3vA" role="3cqZAp">
                    <node concept="3clFbS" id="7_zMfd$r3vB" role="2LFqv$">
                      <node concept="3clFbJ" id="7_zMfd$r3vC" role="3cqZAp">
                        <node concept="3clFbS" id="7_zMfd$r3vD" role="3clFbx">
                          <node concept="3clFbF" id="3TFdEPZgC9O" role="3cqZAp">
                            <node concept="2OqwBi" id="3TFdEPZgChF" role="3clFbG">
                              <node concept="37vLTw" id="3TFdEPZgC9M" role="2Oq$k0">
                                <ref role="3cqZAo" node="3TFdEPZgA8D" resolve="collector" />
                              </node>
                              <node concept="liA8E" id="3TFdEPZgCzj" role="2OqNvi">
                                <ref role="37wK5l" node="3TFdEPZgi0y" resolve="collect" />
                                <node concept="2OqwBi" id="3TFdEPZgCEu" role="37wK5m">
                                  <node concept="2OqwBi" id="3TFdEPZgCEv" role="2Oq$k0">
                                    <node concept="1PxgMI" id="3TFdEPZgCEw" role="2Oq$k0">
                                      <node concept="chp4Y" id="3TFdEPZgCEx" role="3oSUPX">
                                        <ref role="cht4Q" to="8tt8:7_8aRkgDHAe" resolve="LetClause" />
                                      </node>
                                      <node concept="37vLTw" id="3TFdEPZgCEy" role="1m5AlR">
                                        <ref role="3cqZAo" node="7_zMfd$r3vz" resolve="prevSibling" />
                                      </node>
                                    </node>
                                    <node concept="3TrEf2" id="3TFdEPZgCEz" role="2OqNvi">
                                      <ref role="3Tt5mk" to="8tt8:2jleysRWVqE" resolve="binding" />
                                    </node>
                                  </node>
                                  <node concept="32TBzR" id="3TFdEPZgCE$" role="2OqNvi">
                                    <node concept="1aIX9F" id="3TFdEPZgCE_" role="1xVPHs">
                                      <node concept="26LbJo" id="3TFdEPZgCEA" role="1aIX9E">
                                        <ref role="26LbJp" to="8tt8:7_8aRkgDGQq" resolve="var" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="7_zMfd$r3vR" role="3clFbw">
                          <node concept="37vLTw" id="7_zMfd$r3vS" role="2Oq$k0">
                            <ref role="3cqZAo" node="7_zMfd$r3vz" resolve="prevSibling" />
                          </node>
                          <node concept="1mIQ4w" id="7_zMfd$r3vT" role="2OqNvi">
                            <node concept="chp4Y" id="7_zMfd$r3vU" role="cj9EA">
                              <ref role="cht4Q" to="8tt8:7_8aRkgDHAe" resolve="LetClause" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="7_zMfd$r3vV" role="3cqZAp">
                        <node concept="37vLTI" id="7_zMfd$r3vW" role="3clFbG">
                          <node concept="2OqwBi" id="7_zMfd$r3vX" role="37vLTx">
                            <node concept="37vLTw" id="7_zMfd$r3vY" role="2Oq$k0">
                              <ref role="3cqZAo" node="7_zMfd$r3vz" resolve="prevSibling" />
                            </node>
                            <node concept="YBYNd" id="7_zMfd$r3vZ" role="2OqNvi" />
                          </node>
                          <node concept="37vLTw" id="7_zMfd$r3w0" role="37vLTJ">
                            <ref role="3cqZAo" node="7_zMfd$r3vz" resolve="prevSibling" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7_zMfd$r3w1" role="2$JKZa">
                      <node concept="37vLTw" id="7_zMfd$r3w2" role="2Oq$k0">
                        <ref role="3cqZAo" node="7_zMfd$r3vz" resolve="prevSibling" />
                      </node>
                      <node concept="3x8VRR" id="7_zMfd$r3w3" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="7_zMfd$r3w4" role="3cqZAp" />
                </node>
              </node>
              <node concept="3clFbS" id="7_zMfd$r3w5" role="1prKM_" />
            </node>
            <node concept="3clFbH" id="7_zMfd$r3w9" role="3cqZAp" />
            <node concept="3clFbF" id="7_zMfd$r3wa" role="3cqZAp">
              <node concept="37vLTI" id="7_zMfd$r3wb" role="3clFbG">
                <node concept="37vLTw" id="7_zMfd$r3wd" role="37vLTJ">
                  <ref role="3cqZAo" node="7_zMfd$r3ut" resolve="current" />
                </node>
                <node concept="2OqwBi" id="3TFdEPZc47e" role="37vLTx">
                  <node concept="37vLTw" id="3TFdEPZc47f" role="2Oq$k0">
                    <ref role="3cqZAo" node="7_zMfd$r3ut" resolve="current" />
                  </node>
                  <node concept="2Xjw5R" id="3TFdEPZc47g" role="2OqNvi">
                    <node concept="3gmYPX" id="3TFdEPZc47h" role="1xVPHs">
                      <node concept="3gn64h" id="3TFdEPZc47i" role="3gmYPZ">
                        <ref role="3gnhBz" to="8tt8:7_8aRkgDGQf" resolve="Lam" />
                      </node>
                      <node concept="3gn64h" id="3TFdEPZc47j" role="3gmYPZ">
                        <ref role="3gnhBz" to="8tt8:7_8aRkgDGQo" resolve="LetExpr" />
                      </node>
                      <node concept="3gn64h" id="3TFdEPZc47k" role="3gmYPZ">
                        <ref role="3gnhBz" to="8tt8:7_8aRkgDHAe" resolve="LetClause" />
                      </node>
                      <node concept="3gn64h" id="3TFdEPZeeAv" role="3gmYPZ">
                        <ref role="3gnhBz" to="8tt8:7_8aRkgDGQp" resolve="LetVarBind" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3TFdEPZch7x" role="2$JKZa">
            <node concept="10Nm6u" id="3TFdEPZchab" role="3uHU7w" />
            <node concept="37vLTw" id="3TFdEPZcgXi" role="3uHU7B">
              <ref role="3cqZAo" node="7_zMfd$r3ut" resolve="current" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2O9ahh6xpHx" role="3cqZAp" />
        <node concept="3cpWs8" id="2O9ahh6xLXX" role="3cqZAp">
          <node concept="3cpWsn" id="2O9ahh6xLY0" role="3cpWs9">
            <property role="TrG5h" value="classes" />
            <node concept="2I9FWS" id="2O9ahh6xLXV" role="1tU5fm">
              <ref role="2I9WkF" to="8tt8:2O9ahh6mHnA" resolve="Typeclass" />
            </node>
            <node concept="1rXfSq" id="2O9ahh6xMoS" role="33vP2m">
              <ref role="37wK5l" node="2O9ahh6xGPJ" resolve="getTypeclasses" />
              <node concept="37vLTw" id="2O9ahh6xMtY" role="37wK5m">
                <ref role="3cqZAo" node="7_zMfd$r3s7" resolve="contextNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2O9ahh6ytmd" role="3cqZAp">
          <node concept="3cpWsn" id="2O9ahh6ytmg" role="3cpWs9">
            <property role="TrG5h" value="allProtos" />
            <node concept="2I9FWS" id="2O9ahh6ytmb" role="1tU5fm">
              <ref role="2I9WkF" to="8tt8:7_8aRkgDGPo" resolve="Var" />
            </node>
            <node concept="2ShNRf" id="2O9ahh6yu4C" role="33vP2m">
              <node concept="2T8Vx0" id="2O9ahh6yuwE" role="2ShVmc">
                <node concept="2I9FWS" id="2O9ahh6yuwG" role="2T96Bj">
                  <ref role="2I9WkF" to="8tt8:7_8aRkgDGPo" resolve="Var" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2O9ahh6yvpn" role="3cqZAp">
          <node concept="3clFbS" id="2O9ahh6yvpp" role="2LFqv$">
            <node concept="3clFbF" id="2O9ahh6yytM" role="3cqZAp">
              <node concept="2OqwBi" id="2O9ahh6y$f7" role="3clFbG">
                <node concept="37vLTw" id="2O9ahh6yytK" role="2Oq$k0">
                  <ref role="3cqZAo" node="2O9ahh6ytmg" resolve="allProtos" />
                </node>
                <node concept="X8dFx" id="2O9ahh6yDz1" role="2OqNvi">
                  <node concept="2OqwBi" id="2O9ahh6yPmF" role="25WWJ7">
                    <node concept="2OqwBi" id="2O9ahh6yETN" role="2Oq$k0">
                      <node concept="37vLTw" id="2O9ahh6yE4t" role="2Oq$k0">
                        <ref role="3cqZAo" node="2O9ahh6yvpq" resolve="tc" />
                      </node>
                      <node concept="3Tsc0h" id="2O9ahh6yMPM" role="2OqNvi">
                        <ref role="3TtcxE" to="8tt8:2O9ahh6mHnJ" resolve="members" />
                      </node>
                    </node>
                    <node concept="3$u5V9" id="2O9ahh6yVXm" role="2OqNvi">
                      <node concept="1bVj0M" id="2O9ahh6yVXo" role="23t8la">
                        <node concept="3clFbS" id="2O9ahh6yVXp" role="1bW5cS">
                          <node concept="3clFbF" id="2O9ahh6yYwg" role="3cqZAp">
                            <node concept="2OqwBi" id="2O9ahh6z0gj" role="3clFbG">
                              <node concept="37vLTw" id="2O9ahh6yYwf" role="2Oq$k0">
                                <ref role="3cqZAo" node="6E5fMGvfKOF" resolve="it" />
                              </node>
                              <node concept="3TrEf2" id="2O9ahh6z2CE" role="2OqNvi">
                                <ref role="3Tt5mk" to="8tt8:2O9ahh6mHnH" resolve="annVar" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="6E5fMGvfKOF" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="6E5fMGvfKOG" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2O9ahh6yvpq" role="1Duv9x">
            <property role="TrG5h" value="tc" />
            <node concept="3Tqbb2" id="2O9ahh6ywdO" role="1tU5fm">
              <ref role="ehGHo" to="8tt8:2O9ahh6mHnA" resolve="Typeclass" />
            </node>
          </node>
          <node concept="37vLTw" id="2O9ahh6ywJ6" role="1DdaDG">
            <ref role="3cqZAo" node="2O9ahh6xLY0" resolve="classes" />
          </node>
        </node>
        <node concept="3clFbF" id="2O9ahh6HBmu" role="3cqZAp">
          <node concept="2OqwBi" id="2O9ahh6HD3u" role="3clFbG">
            <node concept="37vLTw" id="2O9ahh6HBms" role="2Oq$k0">
              <ref role="3cqZAo" node="3TFdEPZgA8D" resolve="collector" />
            </node>
            <node concept="liA8E" id="2O9ahh6HE4g" role="2OqNvi">
              <ref role="37wK5l" node="3TFdEPZgi0y" resolve="collect" />
              <node concept="37vLTw" id="2O9ahh6HE7C" role="37wK5m">
                <ref role="3cqZAo" node="2O9ahh6ytmg" resolve="allProtos" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3TFdEPZgVsh" role="3cqZAp" />
        <node concept="3cpWs6" id="3TFdEPZgUb9" role="3cqZAp">
          <node concept="2OqwBi" id="3TFdEPZgUK6" role="3cqZAk">
            <node concept="37vLTw" id="3TFdEPZgU$w" role="2Oq$k0">
              <ref role="3cqZAo" node="3TFdEPZgA8D" resolve="collector" />
            </node>
            <node concept="liA8E" id="3TFdEPZgV95" role="2OqNvi">
              <ref role="37wK5l" node="3TFdEPZgIFd" resolve="toScope" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="48ZGLP8$6mw" role="jymVt" />
    <node concept="2YIFZL" id="48ZGLP8$cWE" role="jymVt">
      <property role="TrG5h" value="typeVarScope" />
      <node concept="3clFbS" id="48ZGLP8$cWH" role="3clF47">
        <node concept="3cpWs8" id="48ZGLP8_ECn" role="3cqZAp">
          <node concept="3cpWsn" id="48ZGLP8_ECo" role="3cpWs9">
            <property role="TrG5h" value="collector" />
            <node concept="3uibUv" id="48ZGLP8_ECp" role="1tU5fm">
              <ref role="3uigEE" node="3TFdEPZgfzP" resolve="ScopeUtil.VarCollector" />
            </node>
            <node concept="2ShNRf" id="48ZGLP8_ECq" role="33vP2m">
              <node concept="HV5vD" id="48ZGLP8_ECr" role="2ShVmc">
                <ref role="HV5vE" node="3TFdEPZgfzP" resolve="ScopeUtil.VarCollector" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="48ZGLP8$meo" role="3cqZAp" />
        <node concept="3cpWs8" id="48ZGLP8$kYq" role="3cqZAp">
          <node concept="3cpWsn" id="48ZGLP8$kYr" role="3cpWs9">
            <property role="TrG5h" value="current" />
            <node concept="3Tqbb2" id="48ZGLP8$kYs" role="1tU5fm" />
            <node concept="37vLTw" id="48ZGLP8$kYt" role="33vP2m">
              <ref role="3cqZAo" node="48ZGLP8$g69" resolve="contextNode" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1IKbs5XEDsC" role="3cqZAp">
          <node concept="3cpWsn" id="1IKbs5XEDsF" role="3cpWs9">
            <property role="TrG5h" value="arrowsPassed" />
            <node concept="10Oyi0" id="1IKbs5XEDsA" role="1tU5fm" />
            <node concept="3cmrfG" id="1IKbs5XEDRO" role="33vP2m">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1IKbs5XFHpJ" role="3cqZAp">
          <node concept="3cpWsn" id="1IKbs5XFHpK" role="3cpWs9">
            <property role="TrG5h" value="isLamBind" />
            <node concept="10P_77" id="1IKbs5XFHpL" role="1tU5fm" />
            <node concept="2OqwBi" id="1IKbs5XFJK3" role="33vP2m">
              <node concept="2OqwBi" id="1IKbs5XFHpN" role="2Oq$k0">
                <node concept="37vLTw" id="1IKbs5XFHpO" role="2Oq$k0">
                  <ref role="3cqZAo" node="48ZGLP8$kYr" resolve="current" />
                </node>
                <node concept="2Xjw5R" id="1IKbs5XFI_S" role="2OqNvi">
                  <node concept="1xMEDy" id="1IKbs5XFI_U" role="1xVPHs">
                    <node concept="chp4Y" id="1IKbs5XFIC9" role="ri$Ld">
                      <ref role="cht4Q" to="8tt8:7_8aRkgDGQi" resolve="LamVarBind" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3x8VRR" id="1IKbs5XFL8V" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1IKbs5XFC_h" role="3cqZAp" />
        <node concept="2$JKZl" id="48ZGLP8$kYu" role="3cqZAp">
          <node concept="3clFbS" id="48ZGLP8$kYv" role="2LFqv$">
            <node concept="1_3QMa" id="48ZGLP8$kYw" role="3cqZAp">
              <node concept="2OqwBi" id="48ZGLP8$kYx" role="1_3QMn">
                <node concept="37vLTw" id="48ZGLP8$kYy" role="2Oq$k0">
                  <ref role="3cqZAo" node="48ZGLP8$kYr" resolve="current" />
                </node>
                <node concept="2yIwOk" id="48ZGLP8$kYz" role="2OqNvi" />
              </node>
              <node concept="1pnPoh" id="48ZGLP8$kY$" role="1_3QMm">
                <node concept="3gn64h" id="48ZGLP8MIFC" role="1pnPq6">
                  <ref role="3gnhBz" to="8tt8:12dHl3ZCxTW" resolve="ForallType" />
                </node>
                <node concept="3clFbS" id="48ZGLP8$kYA" role="1pnPq1">
                  <node concept="3clFbF" id="48ZGLP8BsZh" role="3cqZAp">
                    <node concept="2OqwBi" id="48ZGLP8Btpt" role="3clFbG">
                      <node concept="37vLTw" id="48ZGLP8BsZf" role="2Oq$k0">
                        <ref role="3cqZAo" node="48ZGLP8_ECo" resolve="collector" />
                      </node>
                      <node concept="liA8E" id="48ZGLP8BtY0" role="2OqNvi">
                        <ref role="37wK5l" node="3TFdEPZgi0y" resolve="collect" />
                        <node concept="2OqwBi" id="48ZGLP8MJco" role="37wK5m">
                          <node concept="1PxgMI" id="48ZGLP8MJ0g" role="2Oq$k0">
                            <node concept="chp4Y" id="48ZGLP8MJ1r" role="3oSUPX">
                              <ref role="cht4Q" to="8tt8:12dHl3ZCxTW" resolve="ForallType" />
                            </node>
                            <node concept="37vLTw" id="48ZGLP8MIP5" role="1m5AlR">
                              <ref role="3cqZAo" node="48ZGLP8$kYr" resolve="current" />
                            </node>
                          </node>
                          <node concept="32TBzR" id="48ZGLP8MLp3" role="2OqNvi">
                            <node concept="1aIX9F" id="48ZGLP8MOE4" role="1xVPHs">
                              <node concept="26LbJo" id="48ZGLP8MOSA" role="1aIX9E">
                                <ref role="26LbJp" to="8tt8:48ZGLP7q1Qc" resolve="typeVars" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="48ZGLP8$kYO" role="3cqZAp" />
                </node>
              </node>
              <node concept="1pnPoh" id="48ZGLP8MI8j" role="1_3QMm">
                <node concept="3gn64h" id="48ZGLP8MI8k" role="1pnPq6">
                  <ref role="3gnhBz" to="8tt8:7_8aRkgDGQf" resolve="Lam" />
                </node>
                <node concept="3clFbS" id="48ZGLP8MI8l" role="1pnPq1">
                  <node concept="3clFbF" id="1IKbs5XEDWt" role="3cqZAp">
                    <node concept="3uNrnE" id="1IKbs5XEEFR" role="3clFbG">
                      <node concept="37vLTw" id="1IKbs5XEEFT" role="2$L3a6">
                        <ref role="3cqZAo" node="1IKbs5XEDsF" resolve="arrowsPassed" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="1IKbs5XEF68" role="3cqZAp">
                    <node concept="3clFbS" id="1IKbs5XEF6a" role="3clFbx">
                      <node concept="3clFbF" id="48ZGLP8MI8m" role="3cqZAp">
                        <node concept="2OqwBi" id="48ZGLP8MI8n" role="3clFbG">
                          <node concept="37vLTw" id="48ZGLP8MI8o" role="2Oq$k0">
                            <ref role="3cqZAo" node="48ZGLP8_ECo" resolve="collector" />
                          </node>
                          <node concept="liA8E" id="48ZGLP8MI8p" role="2OqNvi">
                            <ref role="37wK5l" node="3TFdEPZgi0y" resolve="collect" />
                            <node concept="1rXfSq" id="48ZGLP8MI8q" role="37wK5m">
                              <ref role="37wK5l" node="48ZGLP8Blaa" resolve="getForallTypeVars" />
                              <node concept="2OqwBi" id="48ZGLP8MI8r" role="37wK5m">
                                <node concept="2OqwBi" id="48ZGLP8MI8s" role="2Oq$k0">
                                  <node concept="1PxgMI" id="48ZGLP8MI8t" role="2Oq$k0">
                                    <node concept="chp4Y" id="48ZGLP8MI8u" role="3oSUPX">
                                      <ref role="cht4Q" to="8tt8:7_8aRkgDGQf" resolve="Lam" />
                                    </node>
                                    <node concept="37vLTw" id="48ZGLP8MI8v" role="1m5AlR">
                                      <ref role="3cqZAo" node="48ZGLP8$kYr" resolve="current" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="48ZGLP8MI8w" role="2OqNvi">
                                    <ref role="3Tt5mk" to="8tt8:7_8aRkgDGQg" resolve="binding" />
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="48ZGLP8MI8x" role="2OqNvi">
                                  <ref role="3Tt5mk" to="8tt8:7_8aRkgDGQj" resolve="var" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="1IKbs5XEKoh" role="3clFbw">
                      <node concept="37vLTw" id="1IKbs5XEFaB" role="3uHU7B">
                        <ref role="3cqZAo" node="1IKbs5XEDsF" resolve="arrowsPassed" />
                      </node>
                      <node concept="3cmrfG" id="1IKbs5XEKE8" role="3uHU7w">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="48ZGLP8MI8y" role="3cqZAp" />
                </node>
              </node>
              <node concept="1pnPoh" id="48ZGLP8$kYP" role="1_3QMm">
                <node concept="3gn64h" id="48ZGLP8$kYQ" role="1pnPq6">
                  <ref role="3gnhBz" to="8tt8:7_8aRkgDGQp" resolve="LetVarBind" />
                </node>
                <node concept="3clFbS" id="48ZGLP8$kYR" role="1pnPq1">
                  <node concept="3clFbF" id="48ZGLP8B_Y9" role="3cqZAp">
                    <node concept="2OqwBi" id="48ZGLP8BA4l" role="3clFbG">
                      <node concept="37vLTw" id="48ZGLP8B_Y7" role="2Oq$k0">
                        <ref role="3cqZAo" node="48ZGLP8_ECo" resolve="collector" />
                      </node>
                      <node concept="liA8E" id="48ZGLP8BACs" role="2OqNvi">
                        <ref role="37wK5l" node="3TFdEPZgi0y" resolve="collect" />
                        <node concept="1rXfSq" id="48ZGLP8BAF$" role="37wK5m">
                          <ref role="37wK5l" node="48ZGLP8Blaa" resolve="getForallTypeVars" />
                          <node concept="2OqwBi" id="48ZGLP8BB_k" role="37wK5m">
                            <node concept="1PxgMI" id="48ZGLP8BBlc" role="2Oq$k0">
                              <node concept="chp4Y" id="48ZGLP8BBoY" role="3oSUPX">
                                <ref role="cht4Q" to="8tt8:7_8aRkgDGQp" resolve="LetVarBind" />
                              </node>
                              <node concept="37vLTw" id="48ZGLP8BAKv" role="1m5AlR">
                                <ref role="3cqZAo" node="48ZGLP8$kYr" resolve="current" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="48ZGLP8BBPC" role="2OqNvi">
                              <ref role="3Tt5mk" to="8tt8:7_8aRkgDGQq" resolve="var" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="48ZGLP8$kZd" role="3cqZAp" />
                </node>
              </node>
              <node concept="1pnPoh" id="48ZGLP8$kZe" role="1_3QMm">
                <node concept="3gn64h" id="48ZGLP8$kZf" role="1pnPq6">
                  <ref role="3gnhBz" to="8tt8:7_8aRkgDGQo" resolve="LetExpr" />
                </node>
                <node concept="3clFbS" id="48ZGLP8$kZg" role="1pnPq1">
                  <node concept="3SKdUt" id="48ZGLP8BBZh" role="3cqZAp">
                    <node concept="1PaTwC" id="589APehYwIc" role="1aUNEU">
                      <node concept="3oM_SD" id="589APehYwId" role="1PaTwD">
                        <property role="3oM_SC" value="Skip." />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIe" role="1PaTwD">
                        <property role="3oM_SC" value="Type" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIf" role="1PaTwD">
                        <property role="3oM_SC" value="variable" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIg" role="1PaTwD">
                        <property role="3oM_SC" value="scope" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIh" role="1PaTwD">
                        <property role="3oM_SC" value="in" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIi" role="1PaTwD">
                        <property role="3oM_SC" value="LetVarBind" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIj" role="1PaTwD">
                        <property role="3oM_SC" value="spans" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIk" role="1PaTwD">
                        <property role="3oM_SC" value="only" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIl" role="1PaTwD">
                        <property role="3oM_SC" value="its" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIm" role="1PaTwD">
                        <property role="3oM_SC" value="bound" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIn" role="1PaTwD">
                        <property role="3oM_SC" value="expr" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="1IKbs5XExyf" role="3cqZAp" />
                </node>
              </node>
              <node concept="3clFbS" id="48ZGLP8$l07" role="1prKM_" />
              <node concept="1pnPoh" id="1IKbs5XEyg6" role="1_3QMm">
                <node concept="3gn64h" id="1IKbs5XE$IC" role="1pnPq6">
                  <ref role="3gnhBz" to="8tt8:JqEP$8fvqm" resolve="AnnExpr" />
                </node>
                <node concept="3clFbS" id="1IKbs5XEyga" role="1pnPq1">
                  <node concept="3SKdUt" id="1IKbs5XGT9h" role="3cqZAp">
                    <node concept="1PaTwC" id="589APehYwIo" role="1aUNEU">
                      <node concept="3oM_SD" id="589APehYwIp" role="1PaTwD">
                        <property role="3oM_SC" value="Traverse" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIq" role="1PaTwD">
                        <property role="3oM_SC" value="expr" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIr" role="1PaTwD">
                        <property role="3oM_SC" value="annotation" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIs" role="1PaTwD">
                        <property role="3oM_SC" value="and" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIt" role="1PaTwD">
                        <property role="3oM_SC" value="collect" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIu" role="1PaTwD">
                        <property role="3oM_SC" value="all" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIv" role="1PaTwD">
                        <property role="3oM_SC" value="type" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIw" role="1PaTwD">
                        <property role="3oM_SC" value="vars" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIx" role="1PaTwD">
                        <property role="3oM_SC" value="from" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIy" role="1PaTwD">
                        <property role="3oM_SC" value="**corresponding**" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIz" role="1PaTwD">
                        <property role="3oM_SC" value="forall" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwI$" role="1PaTwD">
                        <property role="3oM_SC" value="scopes" />
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="1IKbs5XGUZK" role="3cqZAp">
                    <node concept="1PaTwC" id="589APehYwI_" role="1aUNEU">
                      <node concept="3oM_SD" id="589APehYwIA" role="1PaTwD">
                        <property role="3oM_SC" value="(corresponding" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIB" role="1PaTwD">
                        <property role="3oM_SC" value="in" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIC" role="1PaTwD">
                        <property role="3oM_SC" value="a" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwID" role="1PaTwD">
                        <property role="3oM_SC" value="sense" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIE" role="1PaTwD">
                        <property role="3oM_SC" value="of" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIF" role="1PaTwD">
                        <property role="3oM_SC" value="term" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIG" role="1PaTwD">
                        <property role="3oM_SC" value="AST" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIH" role="1PaTwD">
                        <property role="3oM_SC" value="matching" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwII" role="1PaTwD">
                        <property role="3oM_SC" value="type" />
                      </node>
                      <node concept="3oM_SD" id="589APehYwIJ" role="1PaTwD">
                        <property role="3oM_SC" value="AST)" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1IKbs5XEOEe" role="3cqZAp">
                    <node concept="3cpWsn" id="1IKbs5XEOEh" role="3cpWs9">
                      <property role="TrG5h" value="arrowsInType" />
                      <node concept="10Oyi0" id="1IKbs5XEOEc" role="1tU5fm" />
                      <node concept="37vLTw" id="1IKbs5XEOHf" role="33vP2m">
                        <ref role="3cqZAo" node="1IKbs5XEDsF" resolve="arrowsPassed" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1IKbs5XERq3" role="3cqZAp">
                    <node concept="3cpWsn" id="1IKbs5XERq6" role="3cpWs9">
                      <property role="TrG5h" value="typeNode" />
                      <node concept="3Tqbb2" id="1IKbs5XERq1" role="1tU5fm">
                        <ref role="ehGHo" to="8tt8:3_qfG1EP6Nw" resolve="Type" />
                      </node>
                      <node concept="2OqwBi" id="1IKbs5XERLm" role="33vP2m">
                        <node concept="1PxgMI" id="1IKbs5XERAw" role="2Oq$k0">
                          <node concept="chp4Y" id="1IKbs5XERB4" role="3oSUPX">
                            <ref role="cht4Q" to="8tt8:JqEP$8fvoa" resolve="Annotated" />
                          </node>
                          <node concept="37vLTw" id="1IKbs5XERtD" role="1m5AlR">
                            <ref role="3cqZAo" node="48ZGLP8$kYr" resolve="current" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="1IKbs5XET7g" role="2OqNvi">
                          <ref role="3Tt5mk" to="8tt8:JqEP$8fvrd" resolve="ann" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2$JKZl" id="1IKbs5XEOM1" role="3cqZAp">
                    <node concept="3clFbS" id="1IKbs5XEOM3" role="2LFqv$">
                      <node concept="3clFbJ" id="1IKbs5XETbv" role="3cqZAp">
                        <node concept="3clFbS" id="1IKbs5XETbx" role="3clFbx">
                          <node concept="3clFbF" id="1IKbs5XEVqe" role="3cqZAp">
                            <node concept="2OqwBi" id="1IKbs5XEVw4" role="3clFbG">
                              <node concept="37vLTw" id="1IKbs5XEVqc" role="2Oq$k0">
                                <ref role="3cqZAo" node="48ZGLP8_ECo" resolve="collector" />
                              </node>
                              <node concept="liA8E" id="1IKbs5XEW3y" role="2OqNvi">
                                <ref role="37wK5l" node="3TFdEPZgi0y" resolve="collect" />
                                <node concept="2OqwBi" id="1IKbs5XEWtL" role="37wK5m">
                                  <node concept="1PxgMI" id="1IKbs5XEWiD" role="2Oq$k0">
                                    <node concept="chp4Y" id="1IKbs5XEWiM" role="3oSUPX">
                                      <ref role="cht4Q" to="8tt8:12dHl3ZCxTW" resolve="ForallType" />
                                    </node>
                                    <node concept="37vLTw" id="1IKbs5XEW6G" role="1m5AlR">
                                      <ref role="3cqZAo" node="1IKbs5XERq6" resolve="typeNode" />
                                    </node>
                                  </node>
                                  <node concept="32TBzR" id="1IKbs5XEZxL" role="2OqNvi">
                                    <node concept="1aIX9F" id="1IKbs5XF4Ag" role="1xVPHs">
                                      <node concept="26LbJo" id="1IKbs5XF4Pa" role="1aIX9E">
                                        <ref role="26LbJp" to="8tt8:48ZGLP7q1Qc" resolve="typeVars" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1IKbs5XF9qD" role="3cqZAp">
                            <node concept="37vLTI" id="1IKbs5XFaht" role="3clFbG">
                              <node concept="2OqwBi" id="1IKbs5XFaru" role="37vLTx">
                                <node concept="1PxgMI" id="1IKbs5XFcld" role="2Oq$k0">
                                  <node concept="chp4Y" id="1IKbs5XFcn$" role="3oSUPX">
                                    <ref role="cht4Q" to="8tt8:12dHl3ZCxTW" resolve="ForallType" />
                                  </node>
                                  <node concept="37vLTw" id="1IKbs5XFajT" role="1m5AlR">
                                    <ref role="3cqZAo" node="1IKbs5XERq6" resolve="typeNode" />
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="1IKbs5XFcAP" role="2OqNvi">
                                  <ref role="3Tt5mk" to="8tt8:12dHl3ZCFaI" resolve="type" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="1IKbs5XF9qB" role="37vLTJ">
                                <ref role="3cqZAo" node="1IKbs5XERq6" resolve="typeNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1IKbs5XETsx" role="3clFbw">
                          <node concept="37vLTw" id="1IKbs5XETjc" role="2Oq$k0">
                            <ref role="3cqZAo" node="1IKbs5XERq6" resolve="typeNode" />
                          </node>
                          <node concept="1mIQ4w" id="1IKbs5XEVj$" role="2OqNvi">
                            <node concept="chp4Y" id="1IKbs5XEVlO" role="cj9EA">
                              <ref role="cht4Q" to="8tt8:12dHl3ZCxTW" resolve="ForallType" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="1IKbs5XF5Zd" role="3cqZAp">
                        <node concept="3clFbS" id="1IKbs5XF5Zf" role="3clFbx">
                          <node concept="3clFbJ" id="1IKbs5XF7jm" role="3cqZAp">
                            <node concept="3clFbS" id="1IKbs5XF7jo" role="3clFbx">
                              <node concept="3SKdUt" id="1IKbs5XFdJy" role="3cqZAp">
                                <node concept="1PaTwC" id="589APehYwIK" role="1aUNEU">
                                  <node concept="3oM_SD" id="589APehYwIL" role="1PaTwD">
                                    <property role="3oM_SC" value="fixme:" />
                                  </node>
                                  <node concept="3oM_SD" id="589APehYwIM" role="1PaTwD">
                                    <property role="3oM_SC" value="log" />
                                  </node>
                                  <node concept="3oM_SD" id="589APehYwIN" role="1PaTwD">
                                    <property role="3oM_SC" value="warning?" />
                                  </node>
                                  <node concept="3oM_SD" id="589APehYwIO" role="1PaTwD">
                                    <property role="3oM_SC" value="incorrect/incomplete" />
                                  </node>
                                  <node concept="3oM_SD" id="589APehYwIP" role="1PaTwD">
                                    <property role="3oM_SC" value="type," />
                                  </node>
                                  <node concept="3oM_SD" id="589APehYwIQ" role="1PaTwD">
                                    <property role="3oM_SC" value="expected" />
                                  </node>
                                  <node concept="3oM_SD" id="589APehYwIR" role="1PaTwD">
                                    <property role="3oM_SC" value="fun." />
                                  </node>
                                  <node concept="3oM_SD" id="589APehYwIS" role="1PaTwD">
                                    <property role="3oM_SC" value="but," />
                                  </node>
                                  <node concept="3oM_SD" id="589APehYwIT" role="1PaTwD">
                                    <property role="3oM_SC" value="seems" />
                                  </node>
                                  <node concept="3oM_SD" id="589APehYwIU" role="1PaTwD">
                                    <property role="3oM_SC" value="it's" />
                                  </node>
                                  <node concept="3oM_SD" id="589APehYwIV" role="1PaTwD">
                                    <property role="3oM_SC" value="ok." />
                                  </node>
                                </node>
                              </node>
                              <node concept="3zACq4" id="1IKbs5XF$fm" role="3cqZAp" />
                            </node>
                            <node concept="3fqX7Q" id="1IKbs5XFoGU" role="3clFbw">
                              <node concept="2OqwBi" id="1IKbs5XFoGW" role="3fr31v">
                                <node concept="37vLTw" id="1IKbs5XFoGX" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1IKbs5XERq6" resolve="typeNode" />
                                </node>
                                <node concept="1mIQ4w" id="1IKbs5XFoGY" role="2OqNvi">
                                  <node concept="chp4Y" id="1IKbs5XFoGZ" role="cj9EA">
                                    <ref role="cht4Q" to="8tt8:3_qfG1EP6Of" resolve="FunType" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1IKbs5XFfFK" role="3cqZAp">
                            <node concept="37vLTI" id="1IKbs5XFgdo" role="3clFbG">
                              <node concept="2OqwBi" id="1IKbs5XFgX5" role="37vLTx">
                                <node concept="1PxgMI" id="1IKbs5XFgnB" role="2Oq$k0">
                                  <node concept="chp4Y" id="1IKbs5XFgok" role="3oSUPX">
                                    <ref role="cht4Q" to="8tt8:3_qfG1EP6Of" resolve="FunType" />
                                  </node>
                                  <node concept="37vLTw" id="1IKbs5XFgfO" role="1m5AlR">
                                    <ref role="3cqZAo" node="1IKbs5XERq6" resolve="typeNode" />
                                  </node>
                                </node>
                                <node concept="3TrEf2" id="1IKbs5XFk2G" role="2OqNvi">
                                  <ref role="3Tt5mk" to="8tt8:3_qfG1EP6O_" resolve="resType" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="1IKbs5XFfFI" role="37vLTJ">
                                <ref role="3cqZAo" node="1IKbs5XERq6" resolve="typeNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3eOSWO" id="1IKbs5XF7dq" role="3clFbw">
                          <node concept="3cmrfG" id="1IKbs5XF7eg" role="3uHU7w">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="37vLTw" id="1IKbs5XF6g6" role="3uHU7B">
                            <ref role="3cqZAo" node="1IKbs5XEOEh" resolve="arrowsInType" />
                          </node>
                        </node>
                        <node concept="3eNFk2" id="1IKbs5XFx$r" role="3eNLev">
                          <node concept="3clFbS" id="1IKbs5XFx$s" role="3eOfB_">
                            <node concept="3SKdUt" id="1IKbs5XFMV8" role="3cqZAp">
                              <node concept="1PaTwC" id="589APehYwIW" role="1aUNEU">
                                <node concept="3oM_SD" id="589APehYwIX" role="1PaTwD">
                                  <property role="3oM_SC" value="last" />
                                </node>
                                <node concept="3oM_SD" id="589APehYwIY" role="1PaTwD">
                                  <property role="3oM_SC" value="step" />
                                </node>
                                <node concept="3oM_SD" id="589APehYwIZ" role="1PaTwD">
                                  <property role="3oM_SC" value="is" />
                                </node>
                                <node concept="3oM_SD" id="589APehYwJ0" role="1PaTwD">
                                  <property role="3oM_SC" value="special" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="1IKbs5XFx$t" role="3cqZAp">
                              <node concept="37vLTI" id="1IKbs5XFx$u" role="3clFbG">
                                <node concept="37vLTw" id="1IKbs5XFx$v" role="37vLTJ">
                                  <ref role="3cqZAo" node="1IKbs5XERq6" resolve="typeNode" />
                                </node>
                                <node concept="3K4zz7" id="1IKbs5XFx$w" role="37vLTx">
                                  <node concept="37vLTw" id="1IKbs5XFMR$" role="3K4Cdx">
                                    <ref role="3cqZAo" node="1IKbs5XFHpK" resolve="isLamBind" />
                                  </node>
                                  <node concept="2OqwBi" id="1IKbs5XFx$y" role="3K4E3e">
                                    <node concept="1PxgMI" id="1IKbs5XFx$z" role="2Oq$k0">
                                      <node concept="chp4Y" id="1IKbs5XFx$$" role="3oSUPX">
                                        <ref role="cht4Q" to="8tt8:3_qfG1EP6Of" resolve="FunType" />
                                      </node>
                                      <node concept="37vLTw" id="1IKbs5XFx$_" role="1m5AlR">
                                        <ref role="3cqZAo" node="1IKbs5XERq6" resolve="typeNode" />
                                      </node>
                                    </node>
                                    <node concept="3TrEf2" id="1IKbs5XFx$A" role="2OqNvi">
                                      <ref role="3Tt5mk" to="8tt8:3_qfG1EP6Op" resolve="argType" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="1IKbs5XFx$B" role="3K4GZi">
                                    <node concept="1PxgMI" id="1IKbs5XFx$C" role="2Oq$k0">
                                      <node concept="chp4Y" id="1IKbs5XFx$D" role="3oSUPX">
                                        <ref role="cht4Q" to="8tt8:3_qfG1EP6Of" resolve="FunType" />
                                      </node>
                                      <node concept="37vLTw" id="1IKbs5XFx$E" role="1m5AlR">
                                        <ref role="3cqZAo" node="1IKbs5XERq6" resolve="typeNode" />
                                      </node>
                                    </node>
                                    <node concept="3TrEf2" id="1IKbs5XFx$F" role="2OqNvi">
                                      <ref role="3Tt5mk" to="8tt8:3_qfG1EP6O_" resolve="resType" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbC" id="1IKbs5XFyEE" role="3eO9$A">
                            <node concept="3cmrfG" id="1IKbs5XFyWA" role="3uHU7w">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="37vLTw" id="1IKbs5XFxHn" role="3uHU7B">
                              <ref role="3cqZAo" node="1IKbs5XEOEh" resolve="arrowsInType" />
                            </node>
                          </node>
                        </node>
                        <node concept="9aQIb" id="1IKbs5XFze7" role="9aQIa">
                          <node concept="3clFbS" id="1IKbs5XFze8" role="9aQI4">
                            <node concept="3zACq4" id="1IKbs5XFzje" role="3cqZAp" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1IKbs5XFz_P" role="3cqZAp">
                        <node concept="3uO5VW" id="1IKbs5XEQNR" role="3clFbG">
                          <node concept="37vLTw" id="1IKbs5XEQNT" role="2$L3a6">
                            <ref role="3cqZAo" node="1IKbs5XEOEh" resolve="arrowsInType" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbT" id="1IKbs5XFdqz" role="2$JKZa">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="1IKbs5XEBPv" role="3cqZAp" />
                </node>
              </node>
              <node concept="1pnPoh" id="2O9ahh6v0OL" role="1_3QMm">
                <node concept="3gn64h" id="2O9ahh6v0Ro" role="1pnPq6">
                  <ref role="3gnhBz" to="8tt8:2O9ahh6mHnO" resolve="Instance" />
                </node>
                <node concept="3clFbS" id="2O9ahh6v0OP" role="1pnPq1">
                  <node concept="3clFbF" id="2O9ahh6v0Sm" role="3cqZAp">
                    <node concept="2OqwBi" id="2O9ahh6v1gJ" role="3clFbG">
                      <node concept="37vLTw" id="2O9ahh6v0Sl" role="2Oq$k0">
                        <ref role="3cqZAo" node="48ZGLP8_ECo" resolve="collector" />
                      </node>
                      <node concept="liA8E" id="2O9ahh6v1On" role="2OqNvi">
                        <ref role="37wK5l" node="3TFdEPZgi0y" resolve="collect" />
                        <node concept="2OqwBi" id="2O9ahh6vbMh" role="37wK5m">
                          <node concept="2OqwBi" id="2O9ahh6v7ut" role="2Oq$k0">
                            <node concept="1PxgMI" id="2O9ahh6v7jQ" role="2Oq$k0">
                              <node concept="chp4Y" id="2O9ahh6v7jZ" role="3oSUPX">
                                <ref role="cht4Q" to="8tt8:2O9ahh6mHnO" resolve="Instance" />
                              </node>
                              <node concept="37vLTw" id="2O9ahh6v21s" role="1m5AlR">
                                <ref role="3cqZAo" node="48ZGLP8$kYr" resolve="current" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="2O9ahh6v9GN" role="2OqNvi">
                              <ref role="3Tt5mk" to="8tt8:2O9ahh6mHnP" resolve="typeScheme" />
                            </node>
                          </node>
                          <node concept="32TBzR" id="2O9ahh6ve0B" role="2OqNvi">
                            <node concept="1aIX9F" id="2O9ahh6vgBU" role="1xVPHs">
                              <node concept="26LbJo" id="2O9ahh6vgPn" role="1aIX9E">
                                <ref role="26LbJp" to="8tt8:48ZGLP7q1Qc" resolve="typeVars" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="2O9ahh6vhRp" role="3cqZAp" />
                </node>
              </node>
              <node concept="1pnPoh" id="2O9ahh6vjXq" role="1_3QMm">
                <node concept="3gn64h" id="2O9ahh6vkww" role="1pnPq6">
                  <ref role="3gnhBz" to="8tt8:2O9ahh6mHnA" resolve="Typeclass" />
                </node>
                <node concept="3clFbS" id="2O9ahh6vjXs" role="1pnPq1">
                  <node concept="3cpWs8" id="2O9ahh6vAdU" role="3cqZAp">
                    <node concept="3cpWsn" id="2O9ahh6vAdX" role="3cpWs9">
                      <property role="TrG5h" value="tv" />
                      <node concept="2I9FWS" id="2O9ahh6vAdS" role="1tU5fm">
                        <ref role="2I9WkF" to="8tt8:3g9UT2j9I06" resolve="VarType" />
                      </node>
                      <node concept="2ShNRf" id="2O9ahh6vAeL" role="33vP2m">
                        <node concept="2T8Vx0" id="2O9ahh6vAmp" role="2ShVmc">
                          <node concept="2I9FWS" id="2O9ahh6vAmr" role="2T96Bj">
                            <ref role="2I9WkF" to="8tt8:3g9UT2j9I06" resolve="VarType" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2O9ahh6vAnh" role="3cqZAp">
                    <node concept="2OqwBi" id="2O9ahh6vC9V" role="3clFbG">
                      <node concept="37vLTw" id="2O9ahh6vAnf" role="2Oq$k0">
                        <ref role="3cqZAo" node="2O9ahh6vAdX" resolve="tv" />
                      </node>
                      <node concept="TSZUe" id="2O9ahh6vGQH" role="2OqNvi">
                        <node concept="2OqwBi" id="2O9ahh6vHGb" role="25WWJ7">
                          <node concept="1PxgMI" id="2O9ahh6vHn6" role="2Oq$k0">
                            <node concept="chp4Y" id="2O9ahh6vHnf" role="3oSUPX">
                              <ref role="cht4Q" to="8tt8:2O9ahh6mHnA" resolve="Typeclass" />
                            </node>
                            <node concept="37vLTw" id="2O9ahh6vH2V" role="1m5AlR">
                              <ref role="3cqZAo" node="48ZGLP8$kYr" resolve="current" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="2O9ahh6vKeT" role="2OqNvi">
                            <ref role="3Tt5mk" to="8tt8:2O9ahh6mHnL" resolve="typeVar" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2O9ahh6vK_4" role="3cqZAp">
                    <node concept="2OqwBi" id="2O9ahh6vKFx" role="3clFbG">
                      <node concept="37vLTw" id="2O9ahh6vK_2" role="2Oq$k0">
                        <ref role="3cqZAo" node="48ZGLP8_ECo" resolve="collector" />
                      </node>
                      <node concept="liA8E" id="2O9ahh6vLf9" role="2OqNvi">
                        <ref role="37wK5l" node="3TFdEPZgi0y" resolve="collect" />
                        <node concept="37vLTw" id="2O9ahh6vLfD" role="37wK5m">
                          <ref role="3cqZAo" node="2O9ahh6vAdX" resolve="tv" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="2O9ahh6vLsq" role="3cqZAp" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="48ZGLP8$l09" role="3cqZAp">
              <node concept="37vLTI" id="48ZGLP8$l0a" role="3clFbG">
                <node concept="37vLTw" id="48ZGLP8$l0b" role="37vLTJ">
                  <ref role="3cqZAo" node="48ZGLP8$kYr" resolve="current" />
                </node>
                <node concept="2OqwBi" id="48ZGLP8$l0c" role="37vLTx">
                  <node concept="37vLTw" id="48ZGLP8$l0d" role="2Oq$k0">
                    <ref role="3cqZAo" node="48ZGLP8$kYr" resolve="current" />
                  </node>
                  <node concept="2Xjw5R" id="48ZGLP8$l0e" role="2OqNvi">
                    <node concept="3gmYPX" id="48ZGLP8$l0f" role="1xVPHs">
                      <node concept="3gn64h" id="48ZGLP8MPeV" role="3gmYPZ">
                        <ref role="3gnhBz" to="8tt8:12dHl3ZCxTW" resolve="ForallType" />
                      </node>
                      <node concept="3gn64h" id="48ZGLP8$l0g" role="3gmYPZ">
                        <ref role="3gnhBz" to="8tt8:7_8aRkgDGQf" resolve="Lam" />
                      </node>
                      <node concept="3gn64h" id="48ZGLP8$l0j" role="3gmYPZ">
                        <ref role="3gnhBz" to="8tt8:7_8aRkgDGQp" resolve="LetVarBind" />
                      </node>
                      <node concept="3gn64h" id="1IKbs5XEBhj" role="3gmYPZ">
                        <ref role="3gnhBz" to="8tt8:JqEP$8fvqm" resolve="AnnExpr" />
                      </node>
                      <node concept="3gn64h" id="2O9ahh6viFV" role="3gmYPZ">
                        <ref role="3gnhBz" to="8tt8:2O9ahh6mHnO" resolve="Instance" />
                      </node>
                      <node concept="3gn64h" id="2O9ahh6vNOY" role="3gmYPZ">
                        <ref role="3gnhBz" to="8tt8:2O9ahh6mHnA" resolve="Typeclass" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="48ZGLP8$l0k" role="2$JKZa">
            <node concept="10Nm6u" id="48ZGLP8$l0l" role="3uHU7w" />
            <node concept="37vLTw" id="48ZGLP8$l0m" role="3uHU7B">
              <ref role="3cqZAo" node="48ZGLP8$kYr" resolve="current" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="48ZGLP8$l0n" role="3cqZAp" />
        <node concept="3cpWs6" id="48ZGLP8$l0o" role="3cqZAp">
          <node concept="2OqwBi" id="48ZGLP8$l0p" role="3cqZAk">
            <node concept="37vLTw" id="48ZGLP8BFGB" role="2Oq$k0">
              <ref role="3cqZAo" node="48ZGLP8_ECo" resolve="collector" />
            </node>
            <node concept="liA8E" id="48ZGLP8$l0r" role="2OqNvi">
              <ref role="37wK5l" node="3TFdEPZgIFd" resolve="toScope" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="48ZGLP8$bJs" role="1B3o_S" />
      <node concept="3uibUv" id="48ZGLP8$cU_" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="37vLTG" id="48ZGLP8$g69" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="48ZGLP8$g68" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2O9ahh6xsZA" role="jymVt" />
    <node concept="2YIFZL" id="2O9ahh6xGPJ" role="jymVt">
      <property role="TrG5h" value="getTypeclasses" />
      <node concept="3clFbS" id="2O9ahh6xGPM" role="3clF47">
        <node concept="3clFbF" id="2O9ahh6xJX7" role="3cqZAp">
          <node concept="2OqwBi" id="2O9ahh6vSE6" role="3clFbG">
            <node concept="2OqwBi" id="2O9ahh6vPUS" role="2Oq$k0">
              <node concept="37vLTw" id="2O9ahh6xKmz" role="2Oq$k0">
                <ref role="3cqZAo" node="2O9ahh6xJo8" resolve="contextNode" />
              </node>
              <node concept="2Xjw5R" id="2O9ahh6vQnA" role="2OqNvi">
                <node concept="1xMEDy" id="2O9ahh6vQnC" role="1xVPHs">
                  <node concept="chp4Y" id="2O9ahh6vQtQ" role="ri$Ld">
                    <ref role="cht4Q" to="8tt8:7_8aRkgDGQC" resolve="Doc" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Rf3mk" id="2O9ahh6vU1a" role="2OqNvi">
              <node concept="1xMEDy" id="2O9ahh6vU1c" role="1xVPHs">
                <node concept="chp4Y" id="2O9ahh6vUjO" role="ri$Ld">
                  <ref role="cht4Q" to="8tt8:2O9ahh6mHnA" resolve="Typeclass" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2O9ahh6xy42" role="1B3o_S" />
      <node concept="2I9FWS" id="2O9ahh6xGJf" role="3clF45">
        <ref role="2I9WkF" to="8tt8:2O9ahh6mHnA" resolve="Typeclass" />
      </node>
      <node concept="37vLTG" id="2O9ahh6xJo8" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="2O9ahh6xJo7" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="48ZGLP8Bcyq" role="jymVt" />
    <node concept="2YIFZL" id="48ZGLP8Blaa" role="jymVt">
      <property role="TrG5h" value="getForallTypeVars" />
      <node concept="3clFbS" id="48ZGLP8Blad" role="3clF47">
        <node concept="3clFbJ" id="48ZGLP8Boqf" role="3cqZAp">
          <node concept="3clFbS" id="48ZGLP8Boqg" role="3clFbx">
            <node concept="3cpWs8" id="48ZGLP8Boqh" role="3cqZAp">
              <node concept="3cpWsn" id="48ZGLP8Boqi" role="3cpWs9">
                <property role="TrG5h" value="anno" />
                <node concept="3Tqbb2" id="48ZGLP8Boqj" role="1tU5fm" />
                <node concept="2OqwBi" id="48ZGLP8Boqk" role="33vP2m">
                  <node concept="1PxgMI" id="48ZGLP8Boql" role="2Oq$k0">
                    <node concept="chp4Y" id="48ZGLP8MQf6" role="3oSUPX">
                      <ref role="cht4Q" to="8tt8:JqEP$8fvoa" resolve="Annotated" />
                    </node>
                    <node concept="37vLTw" id="48ZGLP8Bpdb" role="1m5AlR">
                      <ref role="3cqZAo" node="48ZGLP8BomK" resolve="annNode" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="48ZGLP8Boqo" role="2OqNvi">
                    <ref role="3Tt5mk" to="8tt8:JqEP$8fvrd" resolve="ann" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="48ZGLP8Boqp" role="3cqZAp">
              <node concept="3clFbS" id="48ZGLP8Boqq" role="3clFbx">
                <node concept="3cpWs6" id="48ZGLP8Bs6E" role="3cqZAp">
                  <node concept="2OqwBi" id="48ZGLP8Boqv" role="3cqZAk">
                    <node concept="32TBzR" id="48ZGLP8Boqw" role="2OqNvi">
                      <node concept="1aIX9F" id="48ZGLP8Boqx" role="1xVPHs">
                        <node concept="26LbJo" id="48ZGLP8Bq0F" role="1aIX9E">
                          <ref role="26LbJp" to="8tt8:48ZGLP7q1Qc" resolve="typeVars" />
                        </node>
                      </node>
                    </node>
                    <node concept="1PxgMI" id="48ZGLP8Boqz" role="2Oq$k0">
                      <node concept="chp4Y" id="48ZGLP8Boq$" role="3oSUPX">
                        <ref role="cht4Q" to="8tt8:12dHl3ZCxTW" resolve="ForallType" />
                      </node>
                      <node concept="37vLTw" id="48ZGLP8Boq_" role="1m5AlR">
                        <ref role="3cqZAo" node="48ZGLP8Boqi" resolve="anno" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="48ZGLP8BoqE" role="3clFbw">
                <node concept="1mIQ4w" id="48ZGLP8BoqF" role="2OqNvi">
                  <node concept="chp4Y" id="48ZGLP8BoqG" role="cj9EA">
                    <ref role="cht4Q" to="8tt8:12dHl3ZCxTW" resolve="ForallType" />
                  </node>
                </node>
                <node concept="37vLTw" id="48ZGLP8BoqH" role="2Oq$k0">
                  <ref role="3cqZAo" node="48ZGLP8Boqi" resolve="anno" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="48ZGLP8BoqI" role="3clFbw">
            <node concept="37vLTw" id="48ZGLP8Bp6k" role="2Oq$k0">
              <ref role="3cqZAo" node="48ZGLP8BomK" resolve="annNode" />
            </node>
            <node concept="1mIQ4w" id="48ZGLP8BoqK" role="2OqNvi">
              <node concept="chp4Y" id="48ZGLP8MQaL" role="cj9EA">
                <ref role="cht4Q" to="8tt8:JqEP$8fvoa" resolve="Annotated" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="48ZGLP8Bse3" role="3cqZAp">
          <node concept="2ShNRf" id="48ZGLP8BoqB" role="3cqZAk">
            <node concept="kMnCb" id="48ZGLP8BoqC" role="2ShVmc">
              <node concept="3Tqbb2" id="48ZGLP8BoqD" role="kMuH3">
                <ref role="ehGHo" to="8tt8:3g9UT2j9I06" resolve="VarType" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="48ZGLP8BgKn" role="1B3o_S" />
      <node concept="A3Dl8" id="48ZGLP8BsiF" role="3clF45">
        <node concept="3Tqbb2" id="48ZGLP8BsiH" role="A3Ik2">
          <ref role="ehGHo" to="8tt8:3g9UT2j9I06" resolve="VarType" />
        </node>
      </node>
      <node concept="37vLTG" id="48ZGLP8BomK" role="3clF46">
        <property role="TrG5h" value="annNode" />
        <node concept="3Tqbb2" id="48ZGLP8BomJ" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="3TFdEPZgfna" role="jymVt" />
    <node concept="312cEu" id="3TFdEPZgfzP" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="VarCollector" />
      <node concept="312cEg" id="3TFdEPZghTH" role="jymVt">
        <property role="TrG5h" value="allBoundVars" />
        <node concept="3Tm6S6" id="3TFdEPZghTI" role="1B3o_S" />
        <node concept="2I9FWS" id="3TFdEPZghU4" role="1tU5fm">
          <ref role="2I9WkF" to="tpck:h0TrEE$" resolve="INamedConcept" />
        </node>
        <node concept="2ShNRf" id="3TFdEPZghV$" role="33vP2m">
          <node concept="2T8Vx0" id="3TFdEPZghVf" role="2ShVmc">
            <node concept="2I9FWS" id="3TFdEPZghVg" role="2T96Bj">
              <ref role="2I9WkF" to="8tt8:7_8aRkgDGPo" resolve="Var" />
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="3TFdEPZghWb" role="jymVt">
        <property role="TrG5h" value="allVarNames" />
        <node concept="3Tm6S6" id="3TFdEPZghWc" role="1B3o_S" />
        <node concept="2hMVRd" id="3TFdEPZghWC" role="1tU5fm">
          <node concept="17QB3L" id="3TFdEPZghWQ" role="2hN53Y" />
        </node>
        <node concept="2ShNRf" id="3TFdEPZghZh" role="33vP2m">
          <node concept="2i4dXS" id="3TFdEPZghYS" role="2ShVmc">
            <node concept="17QB3L" id="3TFdEPZghYT" role="HW$YZ" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3TFdEPZghZO" role="jymVt" />
      <node concept="3clFb_" id="3TFdEPZgi0y" role="jymVt">
        <property role="TrG5h" value="collect" />
        <node concept="37vLTG" id="3TFdEPZgi1O" role="3clF46">
          <property role="TrG5h" value="vars" />
          <node concept="A3Dl8" id="3TFdEPZgi2m" role="1tU5fm">
            <node concept="3Tqbb2" id="3TFdEPZgi2M" role="A3Ik2">
              <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="3TFdEPZgi0$" role="3clF45" />
        <node concept="3Tm6S6" id="3TFdEPZgi0_" role="1B3o_S" />
        <node concept="3clFbS" id="3TFdEPZgi0A" role="3clF47">
          <node concept="3cpWs8" id="3TFdEPZgrue" role="3cqZAp">
            <node concept="3cpWsn" id="3TFdEPZgruf" role="3cpWs9">
              <property role="TrG5h" value="available" />
              <node concept="_YKpA" id="3TFdEPZgrtW" role="1tU5fm">
                <node concept="3Tqbb2" id="3TFdEPZgrtZ" role="_ZDj9">
                  <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
                </node>
              </node>
              <node concept="2OqwBi" id="3TFdEPZgrug" role="33vP2m">
                <node concept="2OqwBi" id="3TFdEPZgruh" role="2Oq$k0">
                  <node concept="37vLTw" id="3TFdEPZgrui" role="2Oq$k0">
                    <ref role="3cqZAo" node="3TFdEPZgi1O" resolve="vars" />
                  </node>
                  <node concept="3zZkjj" id="3TFdEPZgruj" role="2OqNvi">
                    <node concept="1bVj0M" id="3TFdEPZgruk" role="23t8la">
                      <node concept="3clFbS" id="3TFdEPZgrul" role="1bW5cS">
                        <node concept="3clFbF" id="3TFdEPZgrum" role="3cqZAp">
                          <node concept="3fqX7Q" id="3TFdEPZgrun" role="3clFbG">
                            <node concept="2OqwBi" id="3TFdEPZgruo" role="3fr31v">
                              <node concept="37vLTw" id="3TFdEPZgumM" role="2Oq$k0">
                                <ref role="3cqZAo" node="3TFdEPZghWb" resolve="allVarNames" />
                              </node>
                              <node concept="3JPx81" id="3TFdEPZgruq" role="2OqNvi">
                                <node concept="2OqwBi" id="3TFdEPZgrur" role="25WWJ7">
                                  <node concept="37vLTw" id="3TFdEPZgrus" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6E5fMGvfKOH" resolve="it" />
                                  </node>
                                  <node concept="3TrcHB" id="3TFdEPZgrut" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="6E5fMGvfKOH" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6E5fMGvfKOI" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="3TFdEPZgruw" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3TFdEPZgi4a" role="3cqZAp">
            <node concept="2OqwBi" id="3TFdEPZgi4b" role="3clFbG">
              <node concept="37vLTw" id="3TFdEPZgiq8" role="2Oq$k0">
                <ref role="3cqZAo" node="3TFdEPZghTH" resolve="allBoundVars" />
              </node>
              <node concept="X8dFx" id="3TFdEPZgi4d" role="2OqNvi">
                <node concept="37vLTw" id="3TFdEPZgyQ_" role="25WWJ7">
                  <ref role="3cqZAo" node="3TFdEPZgruf" resolve="available" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3TFdEPZgi4f" role="3cqZAp">
            <node concept="2OqwBi" id="3TFdEPZgi4g" role="3clFbG">
              <node concept="37vLTw" id="3TFdEPZgobm" role="2Oq$k0">
                <ref role="3cqZAo" node="3TFdEPZghWb" resolve="allVarNames" />
              </node>
              <node concept="X8dFx" id="1GKPrS22KhS" role="2OqNvi">
                <node concept="2OqwBi" id="1GKPrS22KhH" role="25WWJ7">
                  <node concept="37vLTw" id="1GKPrS22KhI" role="2Oq$k0">
                    <ref role="3cqZAo" node="3TFdEPZgruf" resolve="available" />
                  </node>
                  <node concept="3$u5V9" id="1GKPrS22KhJ" role="2OqNvi">
                    <node concept="1bVj0M" id="1GKPrS22KhK" role="23t8la">
                      <node concept="3clFbS" id="1GKPrS22KhL" role="1bW5cS">
                        <node concept="3clFbF" id="1GKPrS22KhM" role="3cqZAp">
                          <node concept="2OqwBi" id="1GKPrS22KhN" role="3clFbG">
                            <node concept="37vLTw" id="1GKPrS22KhO" role="2Oq$k0">
                              <ref role="3cqZAo" node="6E5fMGvfKOJ" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="1GKPrS22KhP" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="6E5fMGvfKOJ" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6E5fMGvfKOK" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3TFdEPZgGuf" role="jymVt" />
      <node concept="3clFb_" id="3TFdEPZgIFd" role="jymVt">
        <property role="TrG5h" value="toScope" />
        <node concept="3uibUv" id="3TFdEPZgL_$" role="3clF45">
          <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        </node>
        <node concept="3Tm6S6" id="3TFdEPZgIFg" role="1B3o_S" />
        <node concept="3clFbS" id="3TFdEPZgIFh" role="3clF47">
          <node concept="3cpWs6" id="2O9ahh6uaVO" role="3cqZAp">
            <node concept="2YIFZM" id="2O9ahh6uhuj" role="3cqZAk">
              <ref role="37wK5l" node="2O9ahh6u0KZ" resolve="toScope" />
              <ref role="1Pybhc" node="7_zMfd$r3on" resolve="ScopeUtil" />
              <node concept="37vLTw" id="2O9ahh6ukQA" role="37wK5m">
                <ref role="3cqZAo" node="3TFdEPZghTH" resolve="allBoundVars" />
              </node>
            </node>
          </node>
          <node concept="1X3_iC" id="2O9ahh6uvL7" role="lGtFl">
            <property role="3V$3am" value="statement" />
            <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
            <node concept="3cpWs6" id="3TFdEPZgTEW" role="8Wnug">
              <node concept="2ShNRf" id="3TFdEPZgTEX" role="3cqZAk">
                <node concept="YeOm9" id="3TFdEPZgTEY" role="2ShVmc">
                  <node concept="1Y3b0j" id="3TFdEPZgTEZ" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                    <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                    <node concept="37vLTw" id="3TFdEPZgTF0" role="37wK5m">
                      <ref role="3cqZAo" node="3TFdEPZghTH" resolve="allBoundVars" />
                    </node>
                    <node concept="3Tm1VV" id="3TFdEPZgTF1" role="1B3o_S" />
                    <node concept="3clFb_" id="3TFdEPZgTF2" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="getName" />
                      <node concept="17QB3L" id="3TFdEPZgTF3" role="3clF45" />
                      <node concept="3Tm1VV" id="3TFdEPZgTF4" role="1B3o_S" />
                      <node concept="37vLTG" id="3TFdEPZgTF5" role="3clF46">
                        <property role="TrG5h" value="child" />
                        <node concept="3Tqbb2" id="3TFdEPZgTF6" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="3TFdEPZgTF7" role="3clF47">
                        <node concept="3clFbF" id="3TFdEPZgTF8" role="3cqZAp">
                          <node concept="2OqwBi" id="3TFdEPZgTF9" role="3clFbG">
                            <node concept="1PxgMI" id="3TFdEPZgTFa" role="2Oq$k0">
                              <node concept="chp4Y" id="3TFdEPZgTFb" role="3oSUPX">
                                <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                              </node>
                              <node concept="37vLTw" id="3TFdEPZgTFc" role="1m5AlR">
                                <ref role="3cqZAo" node="3TFdEPZgTF5" resolve="child" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="3TFdEPZgTFd" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
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
      <node concept="3Tm6S6" id="3TFdEPZgfHQ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7_zMfd$r3oW" role="jymVt" />
    <node concept="3Tm1VV" id="7_zMfd$r3oo" role="1B3o_S" />
  </node>
  <node concept="1M2fIO" id="JqEP$8gEkk">
    <property role="3GE5qa" value="expr" />
    <ref role="1M2myG" to="8tt8:JqEP$8fvrm" resolve="AnnVar" />
    <node concept="EnEH3" id="JqEP$8gEkl" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="Eqf_E" id="JqEP$8gEkn" role="EtsB7">
        <node concept="3clFbS" id="JqEP$8gEko" role="2VODD2">
          <node concept="3clFbF" id="JqEP$8gEBA" role="3cqZAp">
            <node concept="2OqwBi" id="JqEP$8gGmi" role="3clFbG">
              <node concept="2OqwBi" id="JqEP$8gES1" role="2Oq$k0">
                <node concept="EsrRn" id="JqEP$8gEB_" role="2Oq$k0" />
                <node concept="3TrEf2" id="JqEP$8gFj9" role="2OqNvi">
                  <ref role="3Tt5mk" to="8tt8:JqEP$8fvrp" resolve="var" />
                </node>
              </node>
              <node concept="3TrcHB" id="JqEP$8gGLe" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9SLcT" id="1IKbs5XBROw" role="9SGkU">
      <node concept="3clFbS" id="1IKbs5XBROx" role="2VODD2">
        <node concept="3clFbF" id="1IKbs5XBVpU" role="3cqZAp">
          <node concept="3fqX7Q" id="1IKbs5XBVGv" role="3clFbG">
            <node concept="2OqwBi" id="1IKbs5XBVGx" role="3fr31v">
              <node concept="2H4GUG" id="1IKbs5XBVGy" role="2Oq$k0" />
              <node concept="1mIQ4w" id="1IKbs5XBVGz" role="2OqNvi">
                <node concept="chp4Y" id="1IKbs5XBVG$" role="cj9EA">
                  <ref role="cht4Q" to="8tt8:JqEP$8fvrm" resolve="AnnVar" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="48ZGLP8$3g7">
    <property role="3GE5qa" value="type" />
    <ref role="1M2myG" to="8tt8:48ZGLP8$3c6" resolve="VarTypeRef" />
    <node concept="1N5Pfh" id="48ZGLP8$3gU" role="1Mr941">
      <ref role="1N5Vy1" to="8tt8:48ZGLP8$3cj" resolve="def" />
      <node concept="3dgokm" id="48ZGLP8$3gW" role="1N6uqs">
        <node concept="3clFbS" id="48ZGLP8$3gX" role="2VODD2">
          <node concept="3clFbF" id="48ZGLP8$3lo" role="3cqZAp">
            <node concept="2YIFZM" id="48ZGLP8$gcP" role="3clFbG">
              <ref role="37wK5l" node="48ZGLP8$cWE" resolve="typeVarScope" />
              <ref role="1Pybhc" node="7_zMfd$r3on" resolve="ScopeUtil" />
              <node concept="2rP1CM" id="48ZGLP8$ghI" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="48ZGLP8$gqF">
    <property role="3GE5qa" value="type" />
    <ref role="1M2myG" to="8tt8:3g9UT2j9I06" resolve="VarType" />
    <node concept="EnEH3" id="48ZGLP8$gqS" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="48ZGLP8$gqU" role="QCWH9">
        <node concept="3clFbS" id="48ZGLP8$gqV" role="2VODD2">
          <node concept="3clFbF" id="48ZGLP8$g_U" role="3cqZAp">
            <node concept="2OqwBi" id="48ZGLP8$iQH" role="3clFbG">
              <node concept="1Wqviy" id="48ZGLP8$g_T" role="2Oq$k0" />
              <node concept="liA8E" id="48ZGLP8$jpb" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String)" resolve="matches" />
                <node concept="Xl_RD" id="48ZGLP8$j_d" role="37wK5m">
                  <property role="Xl_RC" value="[a-z$[_]][a-z0-9$[_]]*" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="2O9ahh6pIS9">
    <property role="3GE5qa" value="clause" />
    <ref role="1M2myG" to="8tt8:2O9ahh6mHnO" resolve="Instance" />
    <node concept="9SLcT" id="2O9ahh6pIZv" role="9SGkU">
      <node concept="3clFbS" id="2O9ahh6pIZw" role="2VODD2">
        <node concept="3SKdUt" id="2O9ahh6q2FR" role="3cqZAp">
          <node concept="1PaTwC" id="589APehYwJ1" role="1aUNEU">
            <node concept="3oM_SD" id="589APehYwJ2" role="1PaTwD">
              <property role="3oM_SC" value="Check" />
            </node>
            <node concept="3oM_SD" id="589APehYwJ3" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="589APehYwJ4" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="589APehYwJ5" role="1PaTwD">
              <property role="3oM_SC" value="'type'" />
            </node>
            <node concept="3oM_SD" id="589APehYwJ6" role="1PaTwD">
              <property role="3oM_SC" value="child" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2O9ahh6pKop" role="3cqZAp">
          <node concept="2OqwBi" id="2O9ahh6pKOZ" role="3clFbw">
            <node concept="2DD5aU" id="2O9ahh6pKvQ" role="2Oq$k0" />
            <node concept="2Zo12i" id="2O9ahh6pLcy" role="2OqNvi">
              <node concept="chp4Y" id="2O9ahh6pLmL" role="2Zo12j">
                <ref role="cht4Q" to="8tt8:12dHl3ZCxTW" resolve="ForallType" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2O9ahh6pKor" role="3clFbx">
            <node concept="3SKdUt" id="2O9ahh6q5FM" role="3cqZAp">
              <node concept="1PaTwC" id="589APehYwJ7" role="1aUNEU">
                <node concept="3oM_SD" id="589APehYwJ8" role="1PaTwD">
                  <property role="3oM_SC" value="Allow" />
                </node>
                <node concept="3oM_SD" id="589APehYwJ9" role="1PaTwD">
                  <property role="3oM_SC" value="only" />
                </node>
                <node concept="3oM_SD" id="589APehYwJa" role="1PaTwD">
                  <property role="3oM_SC" value="monotypes" />
                </node>
                <node concept="3oM_SD" id="589APehYwJb" role="1PaTwD">
                  <property role="3oM_SC" value="(simple" />
                </node>
                <node concept="3oM_SD" id="589APehYwJc" role="1PaTwD">
                  <property role="3oM_SC" value="types" />
                </node>
                <node concept="3oM_SD" id="589APehYwJd" role="1PaTwD">
                  <property role="3oM_SC" value="without" />
                </node>
                <node concept="3oM_SD" id="589APehYwJe" role="1PaTwD">
                  <property role="3oM_SC" value="foralls" />
                </node>
                <node concept="3oM_SD" id="589APehYwJf" role="1PaTwD">
                  <property role="3oM_SC" value="inside)," />
                </node>
                <node concept="3oM_SD" id="589APehYwJg" role="1PaTwD">
                  <property role="3oM_SC" value="as" />
                </node>
                <node concept="3oM_SD" id="589APehYwJh" role="1PaTwD">
                  <property role="3oM_SC" value="in" />
                </node>
                <node concept="3oM_SD" id="589APehYwJi" role="1PaTwD">
                  <property role="3oM_SC" value="Haskell" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2O9ahh6pLx4" role="3cqZAp">
              <node concept="2OqwBi" id="2O9ahh6pUv$" role="3cqZAk">
                <node concept="2OqwBi" id="2O9ahh6pPWW" role="2Oq$k0">
                  <node concept="2OqwBi" id="2O9ahh6pM9O" role="2Oq$k0">
                    <node concept="1PxgMI" id="2O9ahh6pLS3" role="2Oq$k0">
                      <node concept="chp4Y" id="2O9ahh6pLSf" role="3oSUPX">
                        <ref role="cht4Q" to="8tt8:12dHl3ZCxTW" resolve="ForallType" />
                      </node>
                      <node concept="2H4GUG" id="2O9ahh6pLCy" role="1m5AlR" />
                    </node>
                    <node concept="3TrEf2" id="2O9ahh6pOab" role="2OqNvi">
                      <ref role="3Tt5mk" to="8tt8:12dHl3ZCFaI" resolve="type" />
                    </node>
                  </node>
                  <node concept="2Rf3mk" id="2O9ahh6pS87" role="2OqNvi">
                    <node concept="1xMEDy" id="2O9ahh6pS89" role="1xVPHs">
                      <node concept="chp4Y" id="2O9ahh6pSvV" role="ri$Ld">
                        <ref role="cht4Q" to="8tt8:12dHl3ZCxTW" resolve="ForallType" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="2O9ahh6q60J" role="1xVPHs" />
                  </node>
                </node>
                <node concept="1v1jN8" id="2O9ahh6q1P2" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2O9ahh6q2aF" role="3cqZAp">
          <node concept="3clFbT" id="2O9ahh6q2lT" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="2O9ahh6q6nW">
    <ref role="1M2myG" to="8tt8:2O9ahh6mHnU" resolve="PrototypeImpl" />
    <node concept="1N5Pfh" id="2O9ahh6q6nX" role="1Mr941">
      <ref role="1N5Vy1" to="8tt8:2O9ahh6mHnX" resolve="proto" />
      <node concept="3dgokm" id="2O9ahh6q6o1" role="1N6uqs">
        <node concept="3clFbS" id="2O9ahh6q6o3" role="2VODD2">
          <node concept="3cpWs8" id="2O9ahh6ra$J" role="3cqZAp">
            <node concept="3cpWsn" id="2O9ahh6ra$M" role="3cpWs9">
              <property role="TrG5h" value="inst" />
              <node concept="3Tqbb2" id="2O9ahh6ra$H" role="1tU5fm">
                <ref role="ehGHo" to="8tt8:2O9ahh6mHnO" resolve="Instance" />
              </node>
              <node concept="2OqwBi" id="2O9ahh6re9l" role="33vP2m">
                <node concept="2rP1CM" id="2O9ahh6$P0p" role="2Oq$k0" />
                <node concept="2Xjw5R" id="2O9ahh6$RSy" role="2OqNvi">
                  <node concept="1xMEDy" id="2O9ahh6$RS$" role="1xVPHs">
                    <node concept="chp4Y" id="2O9ahh6$WhW" role="ri$Ld">
                      <ref role="cht4Q" to="8tt8:2O9ahh6mHnO" resolve="Instance" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="2O9ahh6_4G_" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1gVbGN" id="2O9ahh6q6Vc" role="3cqZAp">
            <node concept="2OqwBi" id="2O9ahh6q7DY" role="1gVkn0">
              <node concept="3x8VRR" id="2O9ahh6q8em" role="2OqNvi" />
              <node concept="2rP1CM" id="2O9ahh6$CCi" role="2Oq$k0" />
            </node>
          </node>
          <node concept="3clFbH" id="2O9ahh6EuJB" role="3cqZAp" />
          <node concept="3SKdUt" id="2O9ahh6qoBW" role="3cqZAp">
            <node concept="1PaTwC" id="589APehYwJj" role="1aUNEU">
              <node concept="3oM_SD" id="589APehYwJk" role="1PaTwD">
                <property role="3oM_SC" value="Get" />
              </node>
              <node concept="3oM_SD" id="589APehYwJl" role="1PaTwD">
                <property role="3oM_SC" value="declared" />
              </node>
              <node concept="3oM_SD" id="589APehYwJm" role="1PaTwD">
                <property role="3oM_SC" value="Prototypes" />
              </node>
              <node concept="3oM_SD" id="589APehYwJn" role="1PaTwD">
                <property role="3oM_SC" value="for" />
              </node>
              <node concept="3oM_SD" id="589APehYwJo" role="1PaTwD">
                <property role="3oM_SC" value="scope" />
              </node>
              <node concept="3oM_SD" id="589APehYwJp" role="1PaTwD">
                <property role="3oM_SC" value="except" />
              </node>
              <node concept="3oM_SD" id="589APehYwJq" role="1PaTwD">
                <property role="3oM_SC" value="those" />
              </node>
              <node concept="3oM_SD" id="589APehYwJr" role="1PaTwD">
                <property role="3oM_SC" value="already" />
              </node>
              <node concept="3oM_SD" id="589APehYwJs" role="1PaTwD">
                <property role="3oM_SC" value="implemented" />
              </node>
              <node concept="3oM_SD" id="589APehYwJt" role="1PaTwD">
                <property role="3oM_SC" value="here" />
              </node>
              <node concept="3oM_SD" id="589APehYwJu" role="1PaTwD">
                <property role="3oM_SC" value="(but" />
              </node>
              <node concept="3oM_SD" id="589APehYwJv" role="1PaTwD">
                <property role="3oM_SC" value="include" />
              </node>
              <node concept="3oM_SD" id="589APehYwJw" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="589APehYwJx" role="1PaTwD">
                <property role="3oM_SC" value="current)" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2O9ahh6ELp5" role="3cqZAp">
            <node concept="3cpWsn" id="2O9ahh6ELp6" role="3cpWs9">
              <property role="TrG5h" value="impls" />
              <node concept="2OqwBi" id="2O9ahh6F2Cu" role="33vP2m">
                <node concept="2OqwBi" id="2O9ahh6ELp7" role="2Oq$k0">
                  <node concept="2OqwBi" id="2O9ahh6ELp8" role="2Oq$k0">
                    <node concept="37vLTw" id="2O9ahh6ELp9" role="2Oq$k0">
                      <ref role="3cqZAo" node="2O9ahh6ra$M" resolve="inst" />
                    </node>
                    <node concept="32TBzR" id="2O9ahh6ELpa" role="2OqNvi">
                      <node concept="1aIX9F" id="2O9ahh6ELpb" role="1xVPHs">
                        <node concept="26LbJo" id="2O9ahh6ELpc" role="1aIX9E">
                          <ref role="26LbJp" to="8tt8:2O9ahh6mHnR" resolve="impls" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3zZkjj" id="2O9ahh6F1zg" role="2OqNvi">
                    <node concept="1bVj0M" id="2O9ahh6F1zi" role="23t8la">
                      <node concept="3clFbS" id="2O9ahh6F1zj" role="1bW5cS">
                        <node concept="3clFbF" id="2O9ahh6F1K5" role="3cqZAp">
                          <node concept="3y3z36" id="2O9ahh6F1K2" role="3clFbG">
                            <node concept="3kakTB" id="2O9ahh6F2eg" role="3uHU7w" />
                            <node concept="37vLTw" id="2O9ahh6F1Zc" role="3uHU7B">
                              <ref role="3cqZAo" node="6E5fMGvfKOL" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="6E5fMGvfKOL" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6E5fMGvfKOM" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3$u5V9" id="2O9ahh6Fj3V" role="2OqNvi">
                  <node concept="1bVj0M" id="2O9ahh6Fj3X" role="23t8la">
                    <node concept="3clFbS" id="2O9ahh6Fj3Y" role="1bW5cS">
                      <node concept="3clFbF" id="2O9ahh6FjgX" role="3cqZAp">
                        <node concept="2OqwBi" id="2O9ahh6FjzZ" role="3clFbG">
                          <node concept="37vLTw" id="2O9ahh6FjgW" role="2Oq$k0">
                            <ref role="3cqZAo" node="6E5fMGvfKON" resolve="it" />
                          </node>
                          <node concept="3TrEf2" id="2O9ahh6FvL8" role="2OqNvi">
                            <ref role="3Tt5mk" to="8tt8:2O9ahh6mHnX" resolve="proto" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="6E5fMGvfKON" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6E5fMGvfKOO" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="A3Dl8" id="2O9ahh6ELpm" role="1tU5fm">
                <node concept="3Tqbb2" id="2O9ahh6ELpn" role="A3Ik2">
                  <ref role="ehGHo" to="8tt8:2O9ahh6mHnE" resolve="Prototype" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2O9ahh6Eb5Q" role="3cqZAp">
            <node concept="3cpWsn" id="2O9ahh6Eb5R" role="3cpWs9">
              <property role="TrG5h" value="prots" />
              <node concept="2OqwBi" id="2O9ahh6Eb5T" role="33vP2m">
                <node concept="2OqwBi" id="2O9ahh6Eb5U" role="2Oq$k0">
                  <node concept="37vLTw" id="2O9ahh6Eb5V" role="2Oq$k0">
                    <ref role="3cqZAo" node="2O9ahh6ra$M" resolve="inst" />
                  </node>
                  <node concept="3TrEf2" id="2O9ahh6Eb5W" role="2OqNvi">
                    <ref role="3Tt5mk" to="8tt8:2O9ahh6mHo2" resolve="typeclass" />
                  </node>
                </node>
                <node concept="32TBzR" id="2O9ahh6Eb5X" role="2OqNvi">
                  <node concept="1aIX9F" id="2O9ahh6Eb5Y" role="1xVPHs">
                    <node concept="26LbJo" id="2O9ahh6EcBL" role="1aIX9E">
                      <ref role="26LbJp" to="8tt8:2O9ahh6mHnJ" resolve="members" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="A3Dl8" id="2O9ahh6Eb6b" role="1tU5fm">
                <node concept="3Tqbb2" id="2O9ahh6Eb6c" role="A3Ik2">
                  <ref role="ehGHo" to="8tt8:2O9ahh6mHnE" resolve="Prototype" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2O9ahh6EwvU" role="3cqZAp" />
          <node concept="3cpWs6" id="2O9ahh6uET1" role="3cqZAp">
            <node concept="2YIFZM" id="2O9ahh6uLga" role="3cqZAk">
              <ref role="1Pybhc" node="7_zMfd$r3on" resolve="ScopeUtil" />
              <ref role="37wK5l" node="2O9ahh6u0KZ" resolve="toScope" />
              <node concept="2OqwBi" id="2O9ahh6E7D6" role="37wK5m">
                <node concept="37vLTw" id="2O9ahh6EcXP" role="2Oq$k0">
                  <ref role="3cqZAo" node="2O9ahh6Eb5R" resolve="prots" />
                </node>
                <node concept="66VNe" id="2O9ahh6G37r" role="2OqNvi">
                  <node concept="37vLTw" id="2O9ahh6G3lf" role="576Qk">
                    <ref role="3cqZAo" node="2O9ahh6ELp6" resolve="impls" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="2O9ahh6tFoP">
    <property role="3GE5qa" value="type" />
    <ref role="1M2myG" to="8tt8:2O9ahh6mHvg" resolve="Constraint" />
    <node concept="1N5Pfh" id="2O9ahh6vPhf" role="1Mr941">
      <ref role="1N5Vy1" to="8tt8:2O9ahh6mHvj" resolve="typeclass" />
      <node concept="3dgokm" id="2O9ahh6vPjH" role="1N6uqs">
        <node concept="3clFbS" id="2O9ahh6vPjJ" role="2VODD2">
          <node concept="3cpWs8" id="2O9ahh6xJIb" role="3cqZAp">
            <node concept="3cpWsn" id="2O9ahh6xJIc" role="3cpWs9">
              <property role="TrG5h" value="classes" />
              <node concept="2I9FWS" id="2O9ahh6xJId" role="1tU5fm">
                <ref role="2I9WkF" to="8tt8:2O9ahh6mHnA" resolve="Typeclass" />
              </node>
              <node concept="2YIFZM" id="2O9ahh6xKJp" role="33vP2m">
                <ref role="37wK5l" node="2O9ahh6xGPJ" resolve="getTypeclasses" />
                <ref role="1Pybhc" node="7_zMfd$r3on" resolve="ScopeUtil" />
                <node concept="2rP1CM" id="2O9ahh6xKUi" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="2O9ahh6vUtE" role="3cqZAp">
            <node concept="2YIFZM" id="2O9ahh6vUGI" role="3cqZAk">
              <ref role="37wK5l" node="2O9ahh6u0KZ" resolve="toScope" />
              <ref role="1Pybhc" node="7_zMfd$r3on" resolve="ScopeUtil" />
              <node concept="37vLTw" id="2O9ahh6xL8Y" role="37wK5m">
                <ref role="3cqZAo" node="2O9ahh6xJIc" resolve="classes" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1N5Pfh" id="2O9ahh6tFoQ" role="1Mr941">
      <ref role="1N5Vy1" to="8tt8:2O9ahh6tFol" resolve="varRef" />
      <node concept="3dgokm" id="2O9ahh6tFoS" role="1N6uqs">
        <node concept="3clFbS" id="2O9ahh6tFoT" role="2VODD2">
          <node concept="3SKdUt" id="2O9ahh6vV6N" role="3cqZAp">
            <node concept="1PaTwC" id="589APehYwJy" role="1aUNEU">
              <node concept="3oM_SD" id="589APehYwJz" role="1PaTwD">
                <property role="3oM_SC" value="todo:" />
              </node>
              <node concept="3oM_SD" id="589APehYwJ$" role="1PaTwD">
                <property role="3oM_SC" value="case" />
              </node>
              <node concept="3oM_SD" id="589APehYwJ_" role="1PaTwD">
                <property role="3oM_SC" value="when" />
              </node>
              <node concept="3oM_SD" id="589APehYwJA" role="1PaTwD">
                <property role="3oM_SC" value="Constraint" />
              </node>
              <node concept="3oM_SD" id="589APehYwJB" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="589APehYwJC" role="1PaTwD">
                <property role="3oM_SC" value="used" />
              </node>
              <node concept="3oM_SD" id="589APehYwJD" role="1PaTwD">
                <property role="3oM_SC" value="as" />
              </node>
              <node concept="3oM_SD" id="589APehYwJE" role="1PaTwD">
                <property role="3oM_SC" value="supertype" />
              </node>
              <node concept="3oM_SD" id="589APehYwJF" role="1PaTwD">
                <property role="3oM_SC" value="in" />
              </node>
              <node concept="3oM_SD" id="589APehYwJG" role="1PaTwD">
                <property role="3oM_SC" value="typeclass:" />
              </node>
              <node concept="3oM_SD" id="589APehYwJH" role="1PaTwD">
                <property role="3oM_SC" value="need" />
              </node>
              <node concept="3oM_SD" id="589APehYwJI" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="589APehYwJJ" role="1PaTwD">
                <property role="3oM_SC" value="get" />
              </node>
              <node concept="3oM_SD" id="589APehYwJK" role="1PaTwD">
                <property role="3oM_SC" value="only" />
              </node>
              <node concept="3oM_SD" id="589APehYwJL" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="589APehYwJM" role="1PaTwD">
                <property role="3oM_SC" value="Typeclass.typeVar" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2O9ahh6vZpR" role="3cqZAp" />
          <node concept="3SKdUt" id="2O9ahh6tPRH" role="3cqZAp">
            <node concept="1PaTwC" id="589APehYwJN" role="1aUNEU">
              <node concept="3oM_SD" id="589APehYwJO" role="1PaTwD">
                <property role="3oM_SC" value="This" />
              </node>
              <node concept="3oM_SD" id="589APehYwJP" role="1PaTwD">
                <property role="3oM_SC" value="ancestor" />
              </node>
              <node concept="3oM_SD" id="589APehYwJQ" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="589APehYwJR" role="1PaTwD">
                <property role="3oM_SC" value="a" />
              </node>
              <node concept="3oM_SD" id="589APehYwJS" role="1PaTwD">
                <property role="3oM_SC" value="parent" />
              </node>
              <node concept="3oM_SD" id="589APehYwJT" role="1PaTwD">
                <property role="3oM_SC" value="of" />
              </node>
              <node concept="3oM_SD" id="589APehYwJU" role="1PaTwD">
                <property role="3oM_SC" value="current" />
              </node>
              <node concept="3oM_SD" id="589APehYwJV" role="1PaTwD">
                <property role="3oM_SC" value="Constraint" />
              </node>
              <node concept="3oM_SD" id="589APehYwJW" role="1PaTwD">
                <property role="3oM_SC" value="node" />
              </node>
              <node concept="3oM_SD" id="589APehYwJX" role="1PaTwD">
                <property role="3oM_SC" value="actually" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2O9ahh6tH8C" role="3cqZAp">
            <node concept="3cpWsn" id="2O9ahh6tH8F" role="3cpWs9">
              <property role="TrG5h" value="typeVars" />
              <node concept="2I9FWS" id="2O9ahh6tH8B" role="1tU5fm">
                <ref role="2I9WkF" to="8tt8:3g9UT2j9I06" resolve="VarType" />
              </node>
              <node concept="2OqwBi" id="2O9ahh6tHxt" role="33vP2m">
                <node concept="2OqwBi" id="2O9ahh6tFTZ" role="2Oq$k0">
                  <node concept="2rP1CM" id="2O9ahh6tFHj" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="2O9ahh6tGli" role="2OqNvi">
                    <node concept="1xMEDy" id="2O9ahh6tGlk" role="1xVPHs">
                      <node concept="chp4Y" id="2O9ahh6tGrI" role="ri$Ld">
                        <ref role="cht4Q" to="8tt8:12dHl3ZCxTW" resolve="ForallType" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="2O9ahh6tGL5" role="1xVPHs" />
                  </node>
                </node>
                <node concept="3Tsc0h" id="2O9ahh6tHLr" role="2OqNvi">
                  <ref role="3TtcxE" to="8tt8:48ZGLP7q1Qc" resolve="typeVars" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="2O9ahh6uyI1" role="3cqZAp">
            <node concept="2YIFZM" id="2O9ahh6uz7r" role="3cqZAk">
              <ref role="37wK5l" node="2O9ahh6u0KZ" resolve="toScope" />
              <ref role="1Pybhc" node="7_zMfd$r3on" resolve="ScopeUtil" />
              <node concept="37vLTw" id="2O9ahh6uzm0" role="37wK5m">
                <ref role="3cqZAo" node="2O9ahh6tH8F" resolve="typeVars" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="2O9ahh6tR0l">
    <ref role="1M2myG" to="8tt8:2O9ahh6mHnE" resolve="Prototype" />
    <node concept="EnEH3" id="2O9ahh6tR0m" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="Eqf_E" id="2O9ahh6tR0o" role="EtsB7">
        <node concept="3clFbS" id="2O9ahh6tR0p" role="2VODD2">
          <node concept="3clFbF" id="2O9ahh6tRqg" role="3cqZAp">
            <node concept="2OqwBi" id="2O9ahh6tSXR" role="3clFbG">
              <node concept="2OqwBi" id="2O9ahh6tRUr" role="2Oq$k0">
                <node concept="EsrRn" id="2O9ahh6tRFG" role="2Oq$k0" />
                <node concept="3TrEf2" id="2O9ahh6tShl" role="2OqNvi">
                  <ref role="3Tt5mk" to="8tt8:2O9ahh6mHnH" resolve="annVar" />
                </node>
              </node>
              <node concept="3TrcHB" id="2O9ahh6tTKB" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

