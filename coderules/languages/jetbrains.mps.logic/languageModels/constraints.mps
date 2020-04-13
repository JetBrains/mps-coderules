<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:939fd27c-b8ee-4168-a9aa-0b5e37366f76(jetbrains.mps.logic.constraints)">
  <persistence version="9" />
  <languages>
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="6" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="fnmy" ref="r:89c0fb70-0977-4113-a076-5906f9d8630f(jetbrains.mps.baseLanguage.scopes)" />
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" />
    <import index="ha02" ref="r:09e53496-6477-45e7-abd5-eaf3fac3b360(jetbrains.mps.logic.behavior)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpfp" ref="r:00000000-0000-4000-0000-011c89590519(jetbrains.mps.baseLanguage.regexp.jetbrains.mps.regexp.accessory)" implicit="true" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
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
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="1350122676458893092" name="text" index="3ndbpf" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="6702802731807351367" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAChild" flags="in" index="9S07l" />
      <concept id="1202989658459" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_parentNode" flags="nn" index="nLn13" />
      <concept id="8966504967485224688" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" flags="nn" index="2rP1CM" />
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1212097481299" name="propertyValidator" index="QCWH9" />
      </concept>
      <concept id="1147468365020" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" flags="nn" index="EsrRn" />
      <concept id="1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" flags="in" index="QB0g5" />
      <concept id="5564765827938091039" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope" flags="ig" index="3dgokm" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="6702802731807737306" name="canBeChild" index="9Vyp8" />
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
      <concept id="1046929382682558545" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteralType" flags="ig" index="9cv3F" />
      <concept id="1235746970280" name="jetbrains.mps.baseLanguage.closures.structure.CompactInvokeFunctionExpression" flags="nn" index="2Sg_IR">
        <child id="1235746996653" name="function" index="2SgG2M" />
        <child id="1235747002942" name="parameter" index="2SgHGx" />
      </concept>
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1180031783296" name="jetbrains.mps.lang.smodel.structure.Concept_IsSubConceptOfOperation" flags="nn" index="2Zo12i">
        <child id="1180031783297" name="conceptArgument" index="2Zo12j" />
      </concept>
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1154546920561" name="jetbrains.mps.lang.smodel.structure.OperationParm_ConceptList" flags="ng" index="3gmYPX">
        <child id="1154546920563" name="concept" index="3gmYPZ" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp">
      <concept id="1222260469397" name="jetbrains.mps.baseLanguage.regexp.structure.MatchRegexpOperation" flags="nn" index="2kpEY9" />
      <concept id="1179357154354" name="jetbrains.mps.baseLanguage.regexp.structure.MatchRegexpExpression" flags="nn" index="2nawOw">
        <child id="1179357286898" name="inputExpression" index="2nb13w" />
      </concept>
      <concept id="1174482753837" name="jetbrains.mps.baseLanguage.regexp.structure.StringLiteralRegexp" flags="ng" index="1OC9wW">
        <property id="1174482761807" name="text" index="1OCb_u" />
      </concept>
      <concept id="1174482804200" name="jetbrains.mps.baseLanguage.regexp.structure.PlusRegexp" flags="ng" index="1OClNT" />
      <concept id="1174482808826" name="jetbrains.mps.baseLanguage.regexp.structure.StarRegexp" flags="ng" index="1OCmVF" />
      <concept id="1174484562151" name="jetbrains.mps.baseLanguage.regexp.structure.SeqRegexp" flags="ng" index="1OJ37Q" />
      <concept id="1174485167097" name="jetbrains.mps.baseLanguage.regexp.structure.BinaryRegexp" flags="ng" index="1OLmFC">
        <child id="1174485176897" name="left" index="1OLpdg" />
        <child id="1174485181039" name="right" index="1OLqdY" />
      </concept>
      <concept id="1174485235885" name="jetbrains.mps.baseLanguage.regexp.structure.UnaryRegexp" flags="ng" index="1OLBAW">
        <child id="1174485243418" name="regexp" index="1OLDsb" />
      </concept>
      <concept id="1174510540317" name="jetbrains.mps.baseLanguage.regexp.structure.InlineRegexpExpression" flags="nn" index="1Qi9sc">
        <child id="1174510571016" name="regexp" index="1QigWp" />
      </concept>
      <concept id="1174552240608" name="jetbrains.mps.baseLanguage.regexp.structure.QuestionRegexp" flags="ng" index="1SLe3L" />
      <concept id="1174554186090" name="jetbrains.mps.baseLanguage.regexp.structure.SymbolClassRegexp" flags="ng" index="1SSD1V">
        <child id="1174557628217" name="part" index="1T5LoC" />
      </concept>
      <concept id="1174554211468" name="jetbrains.mps.baseLanguage.regexp.structure.PositiveSymbolClassRegexp" flags="ng" index="1SSJmt" />
      <concept id="1174555732504" name="jetbrains.mps.baseLanguage.regexp.structure.PredefinedSymbolClassRegexp" flags="ng" index="1SYyG9">
        <reference id="1174555843709" name="symbolClass" index="1SYXPG" />
      </concept>
      <concept id="1174557878319" name="jetbrains.mps.baseLanguage.regexp.structure.CharacterSymbolClassPart" flags="ng" index="1T6I$Y">
        <property id="1174557887320" name="character" index="1T6KD9" />
      </concept>
      <concept id="1174558792178" name="jetbrains.mps.baseLanguage.regexp.structure.PredefinedSymbolClassSymbolClassPart" flags="ng" index="1Tadzz">
        <reference id="1174558819022" name="declaration" index="1Takfv" />
      </concept>
      <concept id="1174653354106" name="jetbrains.mps.baseLanguage.regexp.structure.RegexpUsingConstruction" flags="ng" index="1YMW5F">
        <child id="1174653387388" name="regexp" index="1YN4dH" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="ng" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="ng" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
    </language>
  </registry>
  <node concept="1M2fIO" id="3qvzBqWDzqQ">
    <property role="3GE5qa" value="dataform" />
    <ref role="1M2myG" to="5j4j:6$jH9oLmYJ_" resolve="Value" />
    <node concept="EnEH3" id="3qvzBqWDzrE" role="1MhHOB">
      <ref role="EomxK" to="5j4j:6$jH9oLmYKA" resolve="value" />
      <node concept="QB0g5" id="3qvzBqWDzrG" role="QCWH9">
        <node concept="3clFbS" id="3qvzBqWDzrH" role="2VODD2">
          <node concept="3clFbJ" id="2shrukTXyOC" role="3cqZAp">
            <node concept="3clFbS" id="2shrukTXyOE" role="3clFbx">
              <node concept="3SKdUt" id="2shrukTX$i2" role="3cqZAp">
                <node concept="1PaTwC" id="589APehYwyU" role="3ndbpf">
                  <node concept="3oM_SD" id="589APehYwyV" role="1PaTwD">
                    <property role="3oM_SC" value="todo:" />
                  </node>
                  <node concept="3oM_SD" id="589APehYwyW" role="1PaTwD">
                    <property role="3oM_SC" value="this" />
                  </node>
                  <node concept="3oM_SD" id="589APehYwyX" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="589APehYwyY" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="589APehYwyZ" role="1PaTwD">
                    <property role="3oM_SC" value="avoid" />
                  </node>
                  <node concept="3oM_SD" id="589APehYwz0" role="1PaTwD">
                    <property role="3oM_SC" value="confusing" />
                  </node>
                  <node concept="3oM_SD" id="589APehYwz1" role="1PaTwD">
                    <property role="3oM_SC" value="with" />
                  </node>
                  <node concept="3oM_SD" id="589APehYwz2" role="1PaTwD">
                    <property role="3oM_SC" value="wildcard" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2shrukTX$xX" role="3cqZAp">
                <node concept="3clFbT" id="2shrukTX$EZ" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="17R0WA" id="2shrukTXzoF" role="3clFbw">
              <node concept="Xl_RD" id="2shrukTXzul" role="3uHU7w">
                <property role="Xl_RC" value="_" />
              </node>
              <node concept="1Wqviy" id="2shrukTXyUL" role="3uHU7B" />
            </node>
          </node>
          <node concept="3clFbJ" id="485pdrSFLlE" role="3cqZAp">
            <node concept="3clFbS" id="485pdrSFLlG" role="3clFbx">
              <node concept="3cpWs6" id="485pdrSFMld" role="3cqZAp">
                <node concept="2OqwBi" id="485pdrSFOmB" role="3cqZAk">
                  <node concept="1Wqviy" id="485pdrSFMzz" role="2Oq$k0" />
                  <node concept="17RlXB" id="485pdrSFOXi" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="485pdrSFLYj" role="3clFbw">
              <node concept="2OqwBi" id="485pdrSFLxy" role="2Oq$k0">
                <node concept="EsrRn" id="485pdrSFLsk" role="2Oq$k0" />
                <node concept="3CFZ6_" id="485pdrSFLIR" role="2OqNvi">
                  <node concept="3CFYIy" id="485pdrSFLPD" role="3CFYIz">
                    <ref role="3CFYIx" to="5j4j:dfChU1zo4B" resolve="Splice" />
                  </node>
                </node>
              </node>
              <node concept="3x8VRR" id="485pdrSFMe5" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="3qvzBqWDBAT" role="3cqZAp">
            <node concept="22lmx$" id="1zN1RIlQ6e8" role="3clFbG">
              <node concept="1eOMI4" id="1zN1RIlQ6jZ" role="3uHU7B">
                <node concept="2OqwBi" id="1zN1RIlQ6qd" role="1eOMHV">
                  <node concept="1Wqviy" id="1zN1RIlQ6qe" role="2Oq$k0" />
                  <node concept="2kpEY9" id="1zN1RIlQ6qf" role="2OqNvi">
                    <node concept="1Qi9sc" id="1zN1RIlQ6qg" role="1YN4dH">
                      <node concept="1OJ37Q" id="1zN1RIlQ6qh" role="1QigWp">
                        <node concept="1OC9wW" id="1zN1RIlQ6qi" role="1OLpdg">
                          <property role="1OCb_u" value="~" />
                        </node>
                        <node concept="1OClNT" id="1zN1RIlQ6qj" role="1OLqdY">
                          <node concept="1SSJmt" id="1zN1RIlQ6qk" role="1OLDsb">
                            <node concept="1Tadzz" id="1zN1RIlQ6ql" role="1T5LoC">
                              <ref role="1Takfv" to="tpfp:h5SVbIa" resolve="\p{Alnum}" />
                            </node>
                            <node concept="1T6I$Y" id="1zN1RIlQ6qm" role="1T5LoC">
                              <property role="1T6KD9" value="." />
                            </node>
                            <node concept="1T6I$Y" id="tIwzd22NRI" role="1T5LoC">
                              <property role="1T6KD9" value="," />
                            </node>
                            <node concept="1T6I$Y" id="1zN1RIlSAtk" role="1T5LoC">
                              <property role="1T6KD9" value="(" />
                            </node>
                            <node concept="1T6I$Y" id="1zN1RIlSAHB" role="1T5LoC">
                              <property role="1T6KD9" value=")" />
                            </node>
                            <node concept="1T6I$Y" id="tIwzd2tlp0" role="1T5LoC">
                              <property role="1T6KD9" value="[" />
                            </node>
                            <node concept="1T6I$Y" id="tIwzd2tl$A" role="1T5LoC">
                              <property role="1T6KD9" value="]" />
                            </node>
                            <node concept="1T6I$Y" id="tIwzd22JIg" role="1T5LoC">
                              <property role="1T6KD9" value="&lt;" />
                            </node>
                            <node concept="1T6I$Y" id="tIwzd22JYC" role="1T5LoC">
                              <property role="1T6KD9" value="&gt;" />
                            </node>
                            <node concept="1T6I$Y" id="1zN1RIlSB8V" role="1T5LoC">
                              <property role="1T6KD9" value=":" />
                            </node>
                            <node concept="1T6I$Y" id="1zN1RIlQ6qn" role="1T5LoC">
                              <property role="1T6KD9" value="_" />
                            </node>
                            <node concept="1T6I$Y" id="1zN1RIlQ6qo" role="1T5LoC">
                              <property role="1T6KD9" value="$" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1eOMI4" id="1zN1RIlQ68u" role="3uHU7w">
                <node concept="2OqwBi" id="1zN1RIlQ68v" role="1eOMHV">
                  <node concept="1Wqviy" id="1zN1RIlQ68w" role="2Oq$k0" />
                  <node concept="2kpEY9" id="1zN1RIlQ68x" role="2OqNvi">
                    <node concept="1Qi9sc" id="1zN1RIlQ68y" role="1YN4dH">
                      <node concept="1OClNT" id="1zN1RIlQ68z" role="1QigWp">
                        <node concept="1SSJmt" id="1zN1RIlQ68$" role="1OLDsb">
                          <node concept="1Tadzz" id="1zN1RIlQ68_" role="1T5LoC">
                            <ref role="1Takfv" to="tpfp:h5SVbIa" resolve="\p{Alnum}" />
                          </node>
                          <node concept="1T6I$Y" id="1zN1RIlQ68A" role="1T5LoC">
                            <property role="1T6KD9" value="_" />
                          </node>
                          <node concept="1T6I$Y" id="7yvZ58P61sc" role="1T5LoC">
                            <property role="1T6KD9" value="." />
                          </node>
                          <node concept="1T6I$Y" id="1zN1RIlQ68B" role="1T5LoC">
                            <property role="1T6KD9" value="$" />
                          </node>
                          <node concept="1T6I$Y" id="6MYr6JxkNQo" role="1T5LoC">
                            <property role="1T6KD9" value="?" />
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
  </node>
  <node concept="1M2fIO" id="7E86$tKtku$">
    <property role="3GE5qa" value="logical.variable" />
    <ref role="1M2myG" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
    <node concept="EnEH3" id="7E86$tKtkwH" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="7E86$tKtkPB" role="QCWH9">
        <node concept="3clFbS" id="7E86$tKtkPC" role="2VODD2">
          <node concept="3clFbF" id="2E5lcNndo$l" role="3cqZAp">
            <node concept="2nawOw" id="2E5lcNndpuB" role="3clFbG">
              <node concept="1Qi9sc" id="2E5lcNndpuD" role="1YN4dH">
                <node concept="1OJ37Q" id="2E5lcNndqgq" role="1QigWp">
                  <node concept="1OJ37Q" id="2ev$9JFMFnJ" role="1OLpdg">
                    <node concept="1SLe3L" id="2ev$9JFMG6J" role="1OLpdg">
                      <node concept="1OC9wW" id="2ev$9JFMGbW" role="1OLDsb">
                        <property role="1OCb_u" value="_" />
                      </node>
                    </node>
                    <node concept="1SYyG9" id="2E5lcNndq4L" role="1OLqdY">
                      <ref role="1SYXPG" to="tpfp:h5SV1SY" resolve="\p{Alpha}" />
                    </node>
                  </node>
                  <node concept="1OCmVF" id="2E5lcNndqE8" role="1OLqdY">
                    <node concept="1SSJmt" id="2E5lcNndqgp" role="1OLDsb">
                      <node concept="1Tadzz" id="2E5lcNndqtL" role="1T5LoC">
                        <ref role="1Takfv" to="tpfp:h5SVbIa" resolve="\p{Alnum}" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wqviy" id="2E5lcNndo$k" role="2nb13w" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9S07l" id="6fXjIfxgfNX" role="9Vyp8">
      <node concept="3clFbS" id="6fXjIfxgfNY" role="2VODD2">
        <node concept="3clFbF" id="6fXjIfxgfNZ" role="3cqZAp">
          <node concept="2OqwBi" id="6fXjIfxgfO0" role="3clFbG">
            <node concept="2OqwBi" id="6fXjIfxgfO1" role="2Oq$k0">
              <node concept="nLn13" id="6fXjIfxgfO2" role="2Oq$k0" />
              <node concept="2yIwOk" id="6fXjIfxgfO3" role="2OqNvi" />
            </node>
            <node concept="2Zo12i" id="6fXjIfxgfO4" role="2OqNvi">
              <node concept="chp4Y" id="6fXjIfxgfO5" role="2Zo12j">
                <ref role="cht4Q" to="5j4j:75vUFrS_9Sg" resolve="LogicalVariableDeclarationContainer" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="7E86$tK_SDr">
    <property role="3GE5qa" value="logical.variable" />
    <ref role="1M2myG" to="5j4j:7E86$tK_OxQ" resolve="LogicalVariable" />
    <node concept="1N5Pfh" id="7E86$tK_SGg" role="1Mr941">
      <ref role="1N5Vy1" to="5j4j:7E86$tK_PaH" resolve="declaration" />
      <node concept="3dgokm" id="6fXjIfxgfOn" role="1N6uqs">
        <node concept="3clFbS" id="6fXjIfxgfOo" role="2VODD2">
          <node concept="3clFbH" id="6fXjIfxgfOp" role="3cqZAp" />
          <node concept="3cpWs8" id="6fXjIfxgfOq" role="3cqZAp">
            <node concept="3cpWsn" id="6fXjIfxgfOr" role="3cpWs9">
              <property role="TrG5h" value="parentScope" />
              <node concept="9cv3F" id="6fXjIfxgfOs" role="1tU5fm">
                <node concept="3Tqbb2" id="6fXjIfxgfOt" role="1ajw0F" />
                <node concept="3uibUv" id="6fXjIfxgfOu" role="1ajl9A">
                  <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
                </node>
              </node>
              <node concept="10Nm6u" id="6fXjIfxgfOv" role="33vP2m" />
            </node>
          </node>
          <node concept="3clFbF" id="6fXjIfxgfOw" role="3cqZAp">
            <node concept="37vLTI" id="6fXjIfxgfOx" role="3clFbG">
              <node concept="1bVj0M" id="6fXjIfxgfOy" role="37vLTx">
                <node concept="37vLTG" id="6fXjIfxgfOz" role="1bW2Oz">
                  <property role="TrG5h" value="container" />
                  <node concept="3Tqbb2" id="6fXjIfxgfO$" role="1tU5fm" />
                </node>
                <node concept="3clFbS" id="6fXjIfxgfO_" role="1bW5cS">
                  <node concept="3clFbJ" id="6fXjIfxgfOA" role="3cqZAp">
                    <node concept="2OqwBi" id="6fXjIfxgfQg" role="3clFbw">
                      <node concept="37vLTw" id="6fXjIfxgfQh" role="2Oq$k0">
                        <ref role="3cqZAo" node="6fXjIfxgfOz" resolve="container" />
                      </node>
                      <node concept="1mIQ4w" id="6fXjIfxgfQi" role="2OqNvi">
                        <node concept="chp4Y" id="6fXjIfxgfQj" role="cj9EA">
                          <ref role="cht4Q" to="5j4j:7E86$tK$Rgo" resolve="LogicalVariableScope" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="6fXjIfxgfPC" role="3clFbx">
                      <node concept="3clFbH" id="6fXjIfxgfPD" role="3cqZAp" />
                      <node concept="3cpWs8" id="6fXjIfxgfPE" role="3cqZAp">
                        <node concept="3cpWsn" id="6fXjIfxgfPF" role="3cpWs9">
                          <property role="TrG5h" value="childrenScope" />
                          <node concept="3uibUv" id="6fXjIfxgfPG" role="1tU5fm">
                            <ref role="3uigEE" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                          </node>
                          <node concept="2ShNRf" id="6fXjIfxgfPH" role="33vP2m">
                            <node concept="YeOm9" id="6fXjIfxgfPI" role="2ShVmc">
                              <node concept="1Y3b0j" id="6fXjIfxgfPJ" role="YeSDq">
                                <property role="2bfB8j" value="true" />
                                <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                                <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                                <node concept="2OqwBi" id="6fXjIfxgfPK" role="37wK5m">
                                  <node concept="2OqwBi" id="6fXjIfxgfPL" role="2Oq$k0">
                                    <node concept="1PxgMI" id="6fXjIfxgfPM" role="2Oq$k0">
                                      <node concept="37vLTw" id="6fXjIfxgfPN" role="1m5AlR">
                                        <ref role="3cqZAo" node="6fXjIfxgfOz" resolve="container" />
                                      </node>
                                      <node concept="chp4Y" id="6fXjIfxgndS" role="3oSUPX">
                                        <ref role="cht4Q" to="5j4j:7E86$tK$Rgo" resolve="LogicalVariableScope" />
                                      </node>
                                    </node>
                                    <node concept="2qgKlT" id="6fXjIfxgfPO" role="2OqNvi">
                                      <ref role="37wK5l" to="ha02:6YKq674fNYS" resolve="availableLogicalVariable" />
                                    </node>
                                  </node>
                                  <node concept="ANE8D" id="6fXjIfxgfPP" role="2OqNvi" />
                                </node>
                                <node concept="3Tm1VV" id="6fXjIfxgfPQ" role="1B3o_S" />
                                <node concept="3clFb_" id="6fXjIfxgfPR" role="jymVt">
                                  <property role="1EzhhJ" value="false" />
                                  <property role="TrG5h" value="getName" />
                                  <node concept="17QB3L" id="6fXjIfxgfPS" role="3clF45" />
                                  <node concept="3Tm1VV" id="6fXjIfxgfPT" role="1B3o_S" />
                                  <node concept="37vLTG" id="6fXjIfxgfPU" role="3clF46">
                                    <property role="TrG5h" value="child" />
                                    <node concept="3Tqbb2" id="6fXjIfxgfPV" role="1tU5fm" />
                                  </node>
                                  <node concept="3clFbS" id="6fXjIfxgfPW" role="3clF47">
                                    <node concept="3clFbF" id="6fXjIfxgfPX" role="3cqZAp">
                                      <node concept="2OqwBi" id="6fXjIfxgfPY" role="3clFbG">
                                        <node concept="1PxgMI" id="6fXjIfxgfPZ" role="2Oq$k0">
                                          <property role="1BlNFB" value="true" />
                                          <node concept="37vLTw" id="6fXjIfxgfQ0" role="1m5AlR">
                                            <ref role="3cqZAo" node="6fXjIfxgfPU" resolve="child" />
                                          </node>
                                          <node concept="chp4Y" id="6fXjIfxgndK" role="3oSUPX">
                                            <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                                          </node>
                                        </node>
                                        <node concept="3TrcHB" id="6fXjIfxgfQ1" role="2OqNvi">
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
                      <node concept="3clFbH" id="6fXjIfxgfQ2" role="3cqZAp" />
                      <node concept="3cpWs6" id="6fXjIfxgfQ3" role="3cqZAp">
                        <node concept="2YIFZM" id="6fXjIfxgfQ4" role="3cqZAk">
                          <ref role="37wK5l" to="fnmy:6Kqn2fZyoZp" resolve="defaultWithNameHiding" />
                          <ref role="1Pybhc" to="fnmy:3A2qfoxVUBF" resolve="Scopes" />
                          <node concept="35c_gC" id="6fXjIfxgfQ5" role="37wK5m">
                            <ref role="35c_gD" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
                          </node>
                          <node concept="37vLTw" id="6fXjIfxgfQ6" role="37wK5m">
                            <ref role="3cqZAo" node="6fXjIfxgfPF" resolve="childrenScope" />
                          </node>
                          <node concept="2Sg_IR" id="6fXjIfxgfQ7" role="37wK5m">
                            <node concept="37vLTw" id="6fXjIfxgfQ8" role="2SgG2M">
                              <ref role="3cqZAo" node="6fXjIfxgfOr" resolve="parentScope" />
                            </node>
                            <node concept="2OqwBi" id="6fXjIfxgfQ9" role="2SgHGx">
                              <node concept="37vLTw" id="6fXjIfxgfQa" role="2Oq$k0">
                                <ref role="3cqZAo" node="6fXjIfxgfOz" resolve="container" />
                              </node>
                              <node concept="2Xjw5R" id="6fXjIfxgfQb" role="2OqNvi">
                                <node concept="3gmYPX" id="6fXjIfxgfQc" role="1xVPHs">
                                  <node concept="3gn64h" id="6fXjIfxgfQe" role="3gmYPZ">
                                    <ref role="3gnhBz" to="5j4j:7E86$tK$Rgo" resolve="LogicalVariableScope" />
                                  </node>
                                  <node concept="3gn64h" id="5TXeSYSL7mk" role="3gmYPZ">
                                    <ref role="3gnhBz" to="tpee:fzclF80" resolve="StatementList" />
                                  </node>
                                  <node concept="3gn64h" id="6fXjIfxgfQf" role="3gmYPZ">
                                    <ref role="3gnhBz" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="5TXeSYSA8iw" role="3cqZAp" />
                    </node>
                    <node concept="9aQIb" id="5TXeSYSA7GN" role="9aQIa">
                      <node concept="3clFbS" id="5TXeSYSA7GO" role="9aQI4">
                        <node concept="3cpWs6" id="5TXeSYSA7VE" role="3cqZAp">
                          <node concept="10Nm6u" id="5TXeSYSA7VF" role="3cqZAk" />
                        </node>
                      </node>
                    </node>
                    <node concept="3eNFk2" id="5TXeSYSL93i" role="3eNLev">
                      <node concept="2OqwBi" id="5TXeSYSL9IF" role="3eO9$A">
                        <node concept="37vLTw" id="5TXeSYSL9je" role="2Oq$k0">
                          <ref role="3cqZAo" node="6fXjIfxgfOz" resolve="container" />
                        </node>
                        <node concept="1mIQ4w" id="5TXeSYSLa44" role="2OqNvi">
                          <node concept="chp4Y" id="5TXeSYSLagr" role="cj9EA">
                            <ref role="cht4Q" to="tpee:fzclF80" resolve="StatementList" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="5TXeSYSL93k" role="3eOfB_">
                        <node concept="3clFbH" id="5TXeSYSLav_" role="3cqZAp" />
                        <node concept="3cpWs8" id="5TXeSYSLaRF" role="3cqZAp">
                          <node concept="3cpWsn" id="5TXeSYSLaRG" role="3cpWs9">
                            <property role="TrG5h" value="childrenScope" />
                            <node concept="3uibUv" id="5TXeSYSLaRH" role="1tU5fm">
                              <ref role="3uigEE" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                            </node>
                            <node concept="2ShNRf" id="5TXeSYSLaRI" role="33vP2m">
                              <node concept="YeOm9" id="5TXeSYSLaRJ" role="2ShVmc">
                                <node concept="1Y3b0j" id="5TXeSYSLaRK" role="YeSDq">
                                  <property role="2bfB8j" value="true" />
                                  <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                                  <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                                  <node concept="2OqwBi" id="5TXeSYSLaRL" role="37wK5m">
                                    <node concept="ANE8D" id="5TXeSYSLaRR" role="2OqNvi" />
                                    <node concept="2OqwBi" id="5TXeSYSLhAk" role="2Oq$k0">
                                      <node concept="2OqwBi" id="5TXeSYSLeXa" role="2Oq$k0">
                                        <node concept="2OqwBi" id="5TXeSYSLdt5" role="2Oq$k0">
                                          <node concept="37vLTw" id="5TXeSYSLcUJ" role="2Oq$k0">
                                            <ref role="3cqZAo" node="6fXjIfxgfOz" resolve="container" />
                                          </node>
                                          <node concept="32TBzR" id="5TXeSYSLdRv" role="2OqNvi" />
                                        </node>
                                        <node concept="v3k3i" id="5TXeSYSLg21" role="2OqNvi">
                                          <node concept="chp4Y" id="rAc95LZxIf" role="v3oSu">
                                            <ref role="cht4Q" to="5j4j:75vUFrS_9Sg" resolve="LogicalVariableDeclarationContainer" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3goQfb" id="5TXeSYSLifH" role="2OqNvi">
                                        <node concept="1bVj0M" id="5TXeSYSLifJ" role="23t8la">
                                          <node concept="3clFbS" id="5TXeSYSLifK" role="1bW5cS">
                                            <node concept="3clFbF" id="5TXeSYSLiBz" role="3cqZAp">
                                              <node concept="2OqwBi" id="5TXeSYSLaRM" role="3clFbG">
                                                <node concept="37vLTw" id="5TXeSYSLjnX" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="5TXeSYSLifL" resolve="it" />
                                                </node>
                                                <node concept="2qgKlT" id="5TXeSYSLqFn" role="2OqNvi">
                                                  <ref role="37wK5l" to="ha02:6YKq674fNYS" resolve="availableLogicalVariable" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="Rh6nW" id="5TXeSYSLifL" role="1bW2Oz">
                                            <property role="TrG5h" value="it" />
                                            <node concept="2jxLKc" id="5TXeSYSLifM" role="1tU5fm" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3Tm1VV" id="5TXeSYSLaRS" role="1B3o_S" />
                                  <node concept="3clFb_" id="5TXeSYSLaRT" role="jymVt">
                                    <property role="1EzhhJ" value="false" />
                                    <property role="TrG5h" value="getName" />
                                    <node concept="17QB3L" id="5TXeSYSLaRU" role="3clF45" />
                                    <node concept="3Tm1VV" id="5TXeSYSLaRV" role="1B3o_S" />
                                    <node concept="37vLTG" id="5TXeSYSLaRW" role="3clF46">
                                      <property role="TrG5h" value="child" />
                                      <node concept="3Tqbb2" id="5TXeSYSLaRX" role="1tU5fm" />
                                    </node>
                                    <node concept="3clFbS" id="5TXeSYSLaRY" role="3clF47">
                                      <node concept="3clFbF" id="5TXeSYSLaRZ" role="3cqZAp">
                                        <node concept="2OqwBi" id="5TXeSYSLaS0" role="3clFbG">
                                          <node concept="1PxgMI" id="5TXeSYSLaS1" role="2Oq$k0">
                                            <property role="1BlNFB" value="true" />
                                            <node concept="37vLTw" id="5TXeSYSLaS2" role="1m5AlR">
                                              <ref role="3cqZAo" node="5TXeSYSLaRW" resolve="child" />
                                            </node>
                                            <node concept="chp4Y" id="5TXeSYSLaS3" role="3oSUPX">
                                              <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                                            </node>
                                          </node>
                                          <node concept="3TrcHB" id="5TXeSYSLaS4" role="2OqNvi">
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
                        <node concept="3clFbH" id="5TXeSYSLaS5" role="3cqZAp" />
                        <node concept="3cpWs6" id="5TXeSYSLaS6" role="3cqZAp">
                          <node concept="2YIFZM" id="5TXeSYSLaS7" role="3cqZAk">
                            <ref role="37wK5l" to="fnmy:6Kqn2fZyoZp" resolve="defaultWithNameHiding" />
                            <ref role="1Pybhc" to="fnmy:3A2qfoxVUBF" resolve="Scopes" />
                            <node concept="35c_gC" id="5TXeSYSLaS8" role="37wK5m">
                              <ref role="35c_gD" to="5j4j:7E86$tKtfM3" resolve="LogicalVariableDeclaration" />
                            </node>
                            <node concept="37vLTw" id="5TXeSYSLaS9" role="37wK5m">
                              <ref role="3cqZAo" node="5TXeSYSLaRG" resolve="childrenScope" />
                            </node>
                            <node concept="2Sg_IR" id="5TXeSYSLaSa" role="37wK5m">
                              <node concept="37vLTw" id="5TXeSYSLaSb" role="2SgG2M">
                                <ref role="3cqZAo" node="6fXjIfxgfOr" resolve="parentScope" />
                              </node>
                              <node concept="2OqwBi" id="5TXeSYSLaSc" role="2SgHGx">
                                <node concept="37vLTw" id="5TXeSYSLaSd" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6fXjIfxgfOz" resolve="container" />
                                </node>
                                <node concept="2Xjw5R" id="5TXeSYSLaSe" role="2OqNvi">
                                  <node concept="3gmYPX" id="5TXeSYSLaSf" role="1xVPHs">
                                    <node concept="3gn64h" id="5TXeSYSLaSg" role="3gmYPZ">
                                      <ref role="3gnhBz" to="5j4j:7E86$tK$Rgo" resolve="LogicalVariableScope" />
                                    </node>
                                    <node concept="3gn64h" id="5TXeSYSLaSh" role="3gmYPZ">
                                      <ref role="3gnhBz" to="tpee:fzclF80" resolve="StatementList" />
                                    </node>
                                    <node concept="3gn64h" id="5TXeSYSLaSi" role="3gmYPZ">
                                      <ref role="3gnhBz" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="5TXeSYSLavE" role="3cqZAp" />
                        <node concept="3clFbH" id="5TXeSYSLavK" role="3cqZAp" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6fXjIfxgfQk" role="3cqZAp" />
                </node>
              </node>
              <node concept="37vLTw" id="6fXjIfxgfQn" role="37vLTJ">
                <ref role="3cqZAo" node="6fXjIfxgfOr" resolve="parentScope" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6fXjIfxgfQo" role="3cqZAp" />
          <node concept="3clFbF" id="6fXjIfxgfQp" role="3cqZAp">
            <node concept="2Sg_IR" id="6fXjIfxgfQq" role="3clFbG">
              <node concept="37vLTw" id="6fXjIfxgfQr" role="2SgG2M">
                <ref role="3cqZAo" node="6fXjIfxgfOr" resolve="parentScope" />
              </node>
              <node concept="2OqwBi" id="6fXjIfxgfQs" role="2SgHGx">
                <node concept="2rP1CM" id="6fXjIfxgfQt" role="2Oq$k0" />
                <node concept="2Xjw5R" id="6fXjIfxgfQu" role="2OqNvi">
                  <node concept="3gmYPX" id="6fXjIfxgfQv" role="1xVPHs">
                    <node concept="3gn64h" id="6fXjIfxgfQx" role="3gmYPZ">
                      <ref role="3gnhBz" to="5j4j:7E86$tK$Rgo" resolve="LogicalVariableScope" />
                    </node>
                    <node concept="3gn64h" id="5TXeSYSL8HK" role="3gmYPZ">
                      <ref role="3gnhBz" to="tpee:fzclF80" resolve="StatementList" />
                    </node>
                    <node concept="3gn64h" id="6fXjIfxgfQy" role="3gmYPZ">
                      <ref role="3gnhBz" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="6fXjIfxgfQz" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="7zIaasjUSKd">
    <property role="3GE5qa" value="logical.item.expression" />
    <ref role="1M2myG" to="5j4j:7zIaasjAAux" resolve="LogicalItemValueExpression" />
    <node concept="9S07l" id="7zIaasjUSKe" role="9Vyp8">
      <node concept="3clFbS" id="7zIaasjUSKf" role="2VODD2">
        <node concept="3clFbF" id="7zIaasjUTe5" role="3cqZAp">
          <node concept="2OqwBi" id="7zIaasjAU$I" role="3clFbG">
            <node concept="2OqwBi" id="7zIaasjAUaw" role="2Oq$k0">
              <node concept="nLn13" id="7zIaasjUTn$" role="2Oq$k0" />
              <node concept="2Xjw5R" id="7zIaasjAUlG" role="2OqNvi">
                <node concept="1xMEDy" id="7zIaasjAUlI" role="1xVPHs">
                  <node concept="chp4Y" id="7zIaasjAUpy" role="ri$Ld">
                    <ref role="cht4Q" to="5j4j:7zIaasjACyh" resolve="EvaluationSubject" />
                  </node>
                </node>
                <node concept="1xIGOp" id="7zIaasjAUUX" role="1xVPHs" />
              </node>
            </node>
            <node concept="3x8VRR" id="7zIaasjAUMx" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="7zIaasjUTwi">
    <property role="3GE5qa" value="logical.item.expression" />
    <ref role="1M2myG" to="5j4j:49obaclcan7" resolve="LogicalItemExpression" />
    <node concept="9S07l" id="7zIaasjUTwj" role="9Vyp8">
      <node concept="3clFbS" id="7zIaasjUTwk" role="2VODD2">
        <node concept="3clFbF" id="7zIaasjS9a4" role="3cqZAp">
          <node concept="1Wc70l" id="hYA4RDOcb6" role="3clFbG">
            <node concept="2OqwBi" id="hYA4RDOnBC" role="3uHU7w">
              <node concept="2OqwBi" id="hYA4RDOnc7" role="2Oq$k0">
                <node concept="nLn13" id="hYA4RDOoQc" role="2Oq$k0" />
                <node concept="2Xjw5R" id="hYA4RDOnnE" role="2OqNvi">
                  <node concept="1xMEDy" id="hYA4REcaxF" role="1xVPHs">
                    <node concept="chp4Y" id="hYA4REcaAm" role="ri$Ld">
                      <ref role="cht4Q" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="hYA4RDOobn" role="1xVPHs" />
                </node>
              </node>
              <node concept="3x8VRR" id="hYA4RDOnOm" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="7zIaasjS9a5" role="3uHU7B">
              <node concept="2OqwBi" id="7zIaasjS9a6" role="2Oq$k0">
                <node concept="nLn13" id="hYA4RDOoLF" role="2Oq$k0" />
                <node concept="2Xjw5R" id="7zIaasjS9a8" role="2OqNvi">
                  <node concept="1xMEDy" id="7zIaasjS9a9" role="1xVPHs">
                    <node concept="chp4Y" id="7zIaasjS9aa" role="ri$Ld">
                      <ref role="cht4Q" to="5j4j:7zIaasjACyh" resolve="EvaluationSubject" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="hYA4RDOmVp" role="1xVPHs" />
                </node>
              </node>
              <node concept="3w_OXm" id="7zIaasjS9kS" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="hYA4REcaFO">
    <property role="3GE5qa" value="logical.item.expression" />
    <ref role="1M2myG" to="5j4j:hYA4REbm1C" resolve="LogicalVariableRefExpression" />
    <node concept="9S07l" id="hYA4REcaFP" role="9Vyp8">
      <node concept="3clFbS" id="hYA4REcaFQ" role="2VODD2">
        <node concept="3clFbF" id="hYA4REcaJY" role="3cqZAp">
          <node concept="2OqwBi" id="hYA4REcbpJ" role="3clFbG">
            <node concept="2OqwBi" id="hYA4REcaSV" role="2Oq$k0">
              <node concept="nLn13" id="hYA4REcaJX" role="2Oq$k0" />
              <node concept="2Xjw5R" id="hYA4REcbbh" role="2OqNvi">
                <node concept="1xMEDy" id="hYA4REcbbj" role="1xVPHs">
                  <node concept="chp4Y" id="hYA4REcbfm" role="ri$Ld">
                    <ref role="cht4Q" to="5j4j:7E86$tKsl45" resolve="LogicalItem" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3w_OXm" id="hYA4REcb_n" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

