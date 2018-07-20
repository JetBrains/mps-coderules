<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.coderules.template)">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="11" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="6" />
  </languages>
  <imports>
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="ouhv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.annotation(JDK/)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="av0y" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.program(jetbrains.mps.logic.reactor/)" />
    <import index="6pyv" ref="r:e418ad23-36dc-4ed0-b837-26a7fd157da3(jetbrains.mps.lang.coderules.program)" />
    <import index="psr6" ref="r:ce187d46-c94b-47d6-8d77-26aa6af239e8(jetbrains.mps.lang.coderules.macro)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="bj13" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.logical(jetbrains.mps.logic.reactor/)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.dataform)" />
    <import index="cxk7" ref="r:daa544a7-0a5c-49c0-a54c-4c2a5b4868aa(jetbrains.mps.logic.predicate)" />
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
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188206331916" name="jetbrains.mps.baseLanguage.structure.Annotation" flags="ig" index="2ABs$o" />
      <concept id="1188206574119" name="jetbrains.mps.baseLanguage.structure.AnnotationMethodDeclaration" flags="ig" index="2ACnGN">
        <child id="5790076564176875336" name="defaultValue" index="1IitiX" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
        <child id="1188214630783" name="value" index="2B76xF" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1188214545140" name="jetbrains.mps.baseLanguage.structure.AnnotationInstanceValue" flags="ng" index="2B6LJw">
        <reference id="1188214555875" name="key" index="2B6OnR" />
        <child id="1188214607812" name="value" index="2B70Vg" />
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
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf" />
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
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
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
        <child id="1107880067339" name="method" index="3MN40a" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
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
      <concept id="2580416627845338977" name="jetbrains.mps.baseLanguage.structure.ImplicitAnnotationInstanceValue" flags="ng" index="1SXeKx" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1235746970280" name="jetbrains.mps.baseLanguage.closures.structure.CompactInvokeFunctionExpression" flags="nn" index="2Sg_IR">
        <child id="1235746996653" name="function" index="2SgG2M" />
        <child id="1235747002942" name="parameter" index="2SgHGx" />
      </concept>
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="4OKkcnfu_xe">
    <property role="TrG5h" value="AbstractRuleTemplateManifest" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="1ggxSI7z1Os" role="jymVt" />
    <node concept="3clFb_" id="7P_FdVPtq7Z" role="jymVt">
      <property role="TrG5h" value="queryTemplates" />
      <property role="1EzhhJ" value="true" />
      <node concept="_YKpA" id="7P_FdVPtqGB" role="3clF45">
        <node concept="3uibUv" id="6OXbTD$jYJi" role="_ZDj9">
          <ref role="3uigEE" node="6OXbTD$iNPP" resolve="QueryTemplate" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7P_FdVPtq82" role="1B3o_S" />
      <node concept="3clFbS" id="7P_FdVPtq83" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7P_FdVPtpzK" role="jymVt" />
    <node concept="3clFb_" id="4MqhgXUaiLz" role="jymVt">
      <property role="TrG5h" value="handlerTemplates" />
      <property role="1EzhhJ" value="true" />
      <node concept="_YKpA" id="20Ay2VeZMvJ" role="3clF45">
        <node concept="3uibUv" id="20Ay2VeZMvL" role="_ZDj9">
          <ref role="3uigEE" node="4MqhgXU9fm3" resolve="HandlerTemplate" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4MqhgXUaiLA" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXUaiLB" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4MqhgXUaiL8" role="jymVt" />
    <node concept="3Tm1VV" id="4OKkcnfu_xn" role="1B3o_S" />
  </node>
  <node concept="Qs71p" id="4OKkcnfu_Ag">
    <property role="TrG5h" value="RuleTemplateMehodKind" />
    <property role="3GE5qa" value="template" />
    <node concept="QsSxf" id="4OKkcnfu_Ah" role="Qtgdg">
      <property role="TrG5h" value="HEAD_KEPT" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="4OKkcnfu_Ai" role="Qtgdg">
      <property role="TrG5h" value="HEAD_REPLACED" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="4OKkcnfu_Aj" role="Qtgdg">
      <property role="TrG5h" value="GUARD" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="4OKkcnfu_Ak" role="Qtgdg">
      <property role="TrG5h" value="BODY" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="3Tm1VV" id="4OKkcnfu_Al" role="1B3o_S" />
  </node>
  <node concept="2ABs$o" id="4OKkcnfu_Am">
    <property role="TrG5h" value="RuleTemplateMethod" />
    <property role="3GE5qa" value="template" />
    <node concept="2ACnGN" id="4OKkcnfu_An" role="3MN40a">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="kind" />
      <node concept="3clFbS" id="4OKkcnfu_Ao" role="3clF47" />
      <node concept="3uibUv" id="4OKkcnfu_Ap" role="3clF45">
        <ref role="3uigEE" node="4OKkcnfu_Ag" resolve="RuleTemplateMehodKind" />
      </node>
      <node concept="3Tm1VV" id="4OKkcnfu_Aq" role="1B3o_S" />
    </node>
    <node concept="2ACnGN" id="18kNIl1cCoL" role="3MN40a">
      <property role="TrG5h" value="generated" />
      <node concept="3Tm1VV" id="18kNIl1cCoN" role="1B3o_S" />
      <node concept="3clFbS" id="18kNIl1cCoO" role="3clF47" />
      <node concept="10P_77" id="18kNIl1cCpk" role="3clF45" />
      <node concept="3clFbT" id="18kNIl1cCVA" role="1IitiX">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4OKkcnfu_Ar" role="1B3o_S" />
    <node concept="2AHcQZ" id="4OKkcnfu_As" role="2AJF6D">
      <ref role="2AI5Lk" to="ouhv:~Retention" resolve="Retention" />
      <node concept="1SXeKx" id="4OKkcnfu_At" role="2B76xF">
        <ref role="2B6OnR" to="ouhv:~Retention.value()" resolve="value" />
        <node concept="Rm8GO" id="4OKkcnfu_Au" role="2B70Vg">
          <ref role="Rm8GQ" to="ouhv:~RetentionPolicy.CLASS" resolve="CLASS" />
          <ref role="1Px2BO" to="ouhv:~RetentionPolicy" resolve="RetentionPolicy" />
        </node>
      </node>
    </node>
    <node concept="2AHcQZ" id="4OKkcnfu_Av" role="2AJF6D">
      <ref role="2AI5Lk" to="ouhv:~Target" resolve="Target" />
      <node concept="1SXeKx" id="4OKkcnfu_Aw" role="2B76xF">
        <ref role="2B6OnR" to="ouhv:~Target.value()" resolve="value" />
        <node concept="Rm8GO" id="4OKkcnfu_Ax" role="2B70Vg">
          <ref role="Rm8GQ" to="ouhv:~ElementType.METHOD" resolve="METHOD" />
          <ref role="1Px2BO" to="ouhv:~ElementType" resolve="ElementType" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1ffsG7bUbCM">
    <property role="TrG5h" value="BaseRuleTemplate" />
    <property role="1sVAO0" value="true" />
    <property role="3GE5qa" value="template" />
    <node concept="2tJIrI" id="1ffsG7bUbEG" role="jymVt" />
    <node concept="3clFbW" id="1ffsG7bUbEV" role="jymVt">
      <node concept="37vLTG" id="4MqhgXUnerW" role="3clF46">
        <property role="TrG5h" value="handlerTemplate" />
        <node concept="3uibUv" id="4MqhgXUneGy" role="1tU5fm">
          <ref role="3uigEE" node="4MqhgXU9fm3" resolve="HandlerTemplate" />
        </node>
      </node>
      <node concept="37vLTG" id="1ffsG7bUbF9" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="1ffsG7bUbGX" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="62MNP_kY7Gw" role="3clF46">
        <property role="TrG5h" value="templateRef" />
        <node concept="3uibUv" id="62MNP_kY7PQ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="3cqZAl" id="1ffsG7bUbEX" role="3clF45" />
      <node concept="3Tm1VV" id="1ffsG7bUbEY" role="1B3o_S" />
      <node concept="3clFbS" id="1ffsG7bUbEZ" role="3clF47">
        <node concept="3clFbF" id="1ffsG7bUbIP" role="3cqZAp">
          <node concept="37vLTI" id="1ffsG7bUbIR" role="3clFbG">
            <node concept="2OqwBi" id="1ffsG7bUbIV" role="37vLTJ">
              <node concept="Xjq3P" id="1ffsG7bUbIY" role="2Oq$k0" />
              <node concept="2OwXpG" id="1ffsG7bUbIU" role="2OqNvi">
                <ref role="2Oxat5" node="1ffsG7bUbIL" resolve="name" />
              </node>
            </node>
            <node concept="37vLTw" id="1ffsG7bUbIZ" role="37vLTx">
              <ref role="3cqZAo" node="1ffsG7bUbF9" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="62MNP_kY7Vf" role="3cqZAp">
          <node concept="37vLTI" id="62MNP_kY7Vh" role="3clFbG">
            <node concept="2OqwBi" id="62MNP_kY7Vl" role="37vLTJ">
              <node concept="Xjq3P" id="62MNP_kY7Vo" role="2Oq$k0" />
              <node concept="2OwXpG" id="62MNP_kY7Vk" role="2OqNvi">
                <ref role="2Oxat5" node="62MNP_kY7Vb" resolve="templateRef" />
              </node>
            </node>
            <node concept="37vLTw" id="62MNP_kY7Vp" role="37vLTx">
              <ref role="3cqZAo" node="62MNP_kY7Gw" resolve="templateRef" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4MqhgXUnfaU" role="3cqZAp">
          <node concept="37vLTI" id="4MqhgXUnfaW" role="3clFbG">
            <node concept="2OqwBi" id="4MqhgXUnfCB" role="37vLTJ">
              <node concept="Xjq3P" id="4MqhgXUnfEA" role="2Oq$k0" />
              <node concept="2OwXpG" id="4MqhgXUnfCE" role="2OqNvi">
                <ref role="2Oxat5" node="4MqhgXUnfaQ" resolve="handlerTemplate" />
              </node>
            </node>
            <node concept="37vLTw" id="4MqhgXUnfb0" role="37vLTx">
              <ref role="3cqZAo" node="4MqhgXUnerW" resolve="handlerTemplate" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2RRx4MZTGJF" role="jymVt" />
    <node concept="3clFb_" id="1ffsG7bUcCI" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="1ffsG7bUcCJ" role="3clF45" />
      <node concept="3Tm1VV" id="4vBwiiUWOlD" role="1B3o_S" />
      <node concept="3clFbS" id="1ffsG7bUcCL" role="3clF47">
        <node concept="3clFbF" id="1ffsG7bUcCM" role="3cqZAp">
          <node concept="37vLTw" id="1ffsG7bUde9" role="3clFbG">
            <ref role="3cqZAo" node="1ffsG7bUbIL" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4vBwiiUWOKv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4vBwiiUWRok" role="jymVt" />
    <node concept="3clFb_" id="7XdbJdz3PF6" role="jymVt">
      <property role="TrG5h" value="isExactMatch" />
      <node concept="10P_77" id="7XdbJdz3PF7" role="3clF45" />
      <node concept="3Tm1VV" id="7XdbJdz3PF8" role="1B3o_S" />
      <node concept="3clFbS" id="7XdbJdz3PF9" role="3clF47">
        <node concept="3clFbF" id="7XdbJdz3PFa" role="3cqZAp">
          <node concept="3clFbT" id="7XdbJdz3PFb" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7XdbJdz3PFc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="xaaVXvjccD" role="jymVt" />
    <node concept="3clFb_" id="xaaVXv6GTE" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isPrincipal" />
      <node concept="10P_77" id="xaaVXv6LWZ" role="3clF45" />
      <node concept="3Tm1VV" id="xaaVXv6GTG" role="1B3o_S" />
      <node concept="3clFbS" id="xaaVXv6GTI" role="3clF47">
        <node concept="3clFbF" id="xaaVXv6GUX" role="3cqZAp">
          <node concept="3clFbT" id="xaaVXv6GUW" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="xaaVXv6GTJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7XdbJdyi9b4" role="jymVt" />
    <node concept="3clFb_" id="7XdbJdyi9Ld" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="applyReduce" />
      <node concept="16syzq" id="7XdbJdyi9Le" role="3clF45">
        <ref role="16sUi3" node="7XdbJdyi9Lq" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="7XdbJdyi9Lf" role="1B3o_S" />
      <node concept="37vLTG" id="7XdbJdyi9Lh" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="7XdbJdyi9Li" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7XdbJdyi9Lj" role="3clF46">
        <property role="TrG5h" value="init" />
        <node concept="16syzq" id="7XdbJdyi9Lk" role="1tU5fm">
          <ref role="16sUi3" node="7XdbJdyi9Lq" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="7XdbJdyi9Ll" role="3clF46">
        <property role="TrG5h" value="applyFun" />
        <node concept="1ajhzC" id="7XdbJdyi9Lm" role="1tU5fm">
          <node concept="16syzq" id="7XdbJdyi9Ln" role="1ajw0F">
            <ref role="16sUi3" node="7XdbJdyi9Lq" resolve="T" />
          </node>
          <node concept="16syzq" id="7XdbJdyi9Lr" role="1ajw0F">
            <ref role="16sUi3" node="1ffsG7bUbY4" resolve="Token" />
          </node>
          <node concept="16syzq" id="7XdbJdyi9Lp" role="1ajl9A">
            <ref role="16sUi3" node="7XdbJdyi9Lq" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="7XdbJdyi9Lq" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="3clFbS" id="7XdbJdyi9Ls" role="3clF47">
        <node concept="3cpWs8" id="7XdbJdyicox" role="3cqZAp">
          <node concept="3cpWsn" id="7XdbJdyicoy" role="3cpWs9">
            <property role="TrG5h" value="token" />
            <node concept="16syzq" id="7XdbJdyicow" role="1tU5fm">
              <ref role="16sUi3" node="1ffsG7bUbY4" resolve="Token" />
            </node>
            <node concept="1rXfSq" id="7XdbJdyicoz" role="33vP2m">
              <ref role="37wK5l" node="3IIf9OAJOPP" resolve="newToken" />
              <node concept="37vLTw" id="mJ_D13ZSBm" role="37wK5m">
                <ref role="3cqZAo" node="7XdbJdyi9Lh" resolve="input" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7XdbJdyMn2U" role="3cqZAp">
          <node concept="3clFbS" id="7XdbJdyMn2W" role="3clFbx">
            <node concept="3cpWs6" id="7XdbJdyModD" role="3cqZAp">
              <node concept="2Sg_IR" id="7XdbJdyModE" role="3cqZAk">
                <node concept="37vLTw" id="7XdbJdyModF" role="2SgHGx">
                  <ref role="3cqZAo" node="7XdbJdyi9Lj" resolve="init" />
                </node>
                <node concept="37vLTw" id="7XdbJdyModG" role="2SgHGx">
                  <ref role="3cqZAo" node="7XdbJdyicoy" resolve="token" />
                </node>
                <node concept="37vLTw" id="7XdbJdyModH" role="2SgG2M">
                  <ref role="3cqZAo" node="7XdbJdyi9Ll" resolve="applyFun" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7XdbJdyMswE" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="7XdbJdyMnfw" role="3clFbw">
            <node concept="37vLTw" id="7XdbJdyMn6T" role="2Oq$k0">
              <ref role="3cqZAo" node="7XdbJdyicoy" resolve="token" />
            </node>
            <node concept="liA8E" id="7XdbJdyMnqR" role="2OqNvi">
              <ref role="37wK5l" node="2RRx4MZ6CBV" resolve="isApplicable" />
            </node>
          </node>
          <node concept="9aQIb" id="7XdbJdyMqxZ" role="9aQIa">
            <node concept="3clFbS" id="7XdbJdyMqy0" role="9aQI4">
              <node concept="3cpWs6" id="7XdbJdyMsZY" role="3cqZAp">
                <node concept="37vLTw" id="7XdbJdyMuyr" role="3cqZAk">
                  <ref role="3cqZAo" node="7XdbJdyi9Lj" resolve="init" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7XdbJdyiayM" role="jymVt" />
    <node concept="3clFb_" id="7XdbJdyi9Lu" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="apply" />
      <node concept="3cqZAl" id="7XdbJdyi9Lv" role="3clF45" />
      <node concept="3Tm1VV" id="7XdbJdyi9Lw" role="1B3o_S" />
      <node concept="37vLTG" id="7XdbJdyi9Ly" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="7XdbJdyi9Lz" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7XdbJdyi9L$" role="3clF46">
        <property role="TrG5h" value="applyFun" />
        <node concept="1ajhzC" id="7XdbJdyi9L_" role="1tU5fm">
          <node concept="16syzq" id="7XdbJdyi9LC" role="1ajw0F">
            <ref role="16sUi3" node="1ffsG7bUbY4" resolve="Token" />
          </node>
          <node concept="3cqZAl" id="7XdbJdyi9LB" role="1ajl9A" />
        </node>
      </node>
      <node concept="3clFbS" id="7XdbJdyi9LD" role="3clF47">
        <node concept="3cpWs8" id="7XdbJdyinIU" role="3cqZAp">
          <node concept="3cpWsn" id="7XdbJdyinIV" role="3cpWs9">
            <property role="TrG5h" value="token" />
            <node concept="16syzq" id="7XdbJdyinIW" role="1tU5fm">
              <ref role="16sUi3" node="1ffsG7bUbY4" resolve="Token" />
            </node>
            <node concept="1rXfSq" id="7XdbJdyinIX" role="33vP2m">
              <ref role="37wK5l" node="3IIf9OAJOPP" resolve="newToken" />
              <node concept="37vLTw" id="mJ_D13ZU0N" role="37wK5m">
                <ref role="3cqZAo" node="7XdbJdyi9Ly" resolve="input" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7XdbJdyMwA4" role="3cqZAp">
          <node concept="3clFbS" id="7XdbJdyMwA6" role="3clFbx">
            <node concept="3clFbF" id="7XdbJdyinJ4" role="3cqZAp">
              <node concept="2Sg_IR" id="7XdbJdyinJ5" role="3clFbG">
                <node concept="37vLTw" id="7XdbJdyinJ7" role="2SgHGx">
                  <ref role="3cqZAo" node="7XdbJdyinIV" resolve="token" />
                </node>
                <node concept="37vLTw" id="7XdbJdyinJ8" role="2SgG2M">
                  <ref role="3cqZAo" node="7XdbJdyi9L$" resolve="applyFun" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7XdbJdyMwNO" role="3clFbw">
            <node concept="37vLTw" id="7XdbJdyMwDO" role="2Oq$k0">
              <ref role="3cqZAo" node="7XdbJdyinIV" resolve="token" />
            </node>
            <node concept="liA8E" id="7XdbJdyMwZ9" role="2OqNvi">
              <ref role="37wK5l" node="2RRx4MZ6CBV" resolve="isApplicable" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6tPOoeSDkEh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="2tJIrI" id="7XdbJdz5jXz" role="jymVt" />
    <node concept="3clFb_" id="7XdbJdz5lDL" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="createToken" />
      <node concept="16syzq" id="7XdbJdz5lDQ" role="3clF45">
        <ref role="16sUi3" node="1ffsG7bUbY4" resolve="Token" />
      </node>
      <node concept="3Tmbuc" id="7XdbJdz5okr" role="1B3o_S" />
      <node concept="3clFbS" id="7XdbJdz5lDR" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7XdbJdz5k0i" role="jymVt" />
    <node concept="3clFb_" id="75vUFrSIQhr" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="initToken" />
      <node concept="37vLTG" id="75vUFrSIQhu" role="3clF46">
        <property role="TrG5h" value="token" />
        <node concept="16syzq" id="75vUFrSIQhz" role="1tU5fm">
          <ref role="16sUi3" node="1ffsG7bUbY4" resolve="Token" />
        </node>
      </node>
      <node concept="37vLTG" id="75vUFrSIQhs" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="3Tqbb2" id="75vUFrSIQht" role="1tU5fm" />
      </node>
      <node concept="16syzq" id="6YKq674vGah" role="3clF45">
        <ref role="16sUi3" node="1ffsG7bUbY4" resolve="Token" />
      </node>
      <node concept="3Tmbuc" id="7XdbJdz5vEM" role="1B3o_S" />
      <node concept="3clFbS" id="75vUFrSIQh_" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="75vUFrSIQ8c" role="jymVt" />
    <node concept="3clFb_" id="4MqhgXUsgC4" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="handlerTemplate" />
      <node concept="3uibUv" id="4MqhgXUsgC5" role="3clF45">
        <ref role="3uigEE" node="4MqhgXU9fm3" resolve="HandlerTemplate" />
      </node>
      <node concept="3Tm1VV" id="4MqhgXUsgC6" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXUsgC8" role="3clF47">
        <node concept="3clFbF" id="4MqhgXUshf7" role="3cqZAp">
          <node concept="37vLTw" id="4MqhgXUshf5" role="3clFbG">
            <ref role="3cqZAo" node="4MqhgXUnfaQ" resolve="handlerTemplate" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4MqhgXUsgC9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4MqhgXUshra" role="jymVt" />
    <node concept="3clFb_" id="62MNP_kY8lD" role="jymVt">
      <property role="TrG5h" value="templateRef" />
      <node concept="3uibUv" id="62MNP_kY8Lq" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3Tm1VV" id="6i42QSs9GTn" role="1B3o_S" />
      <node concept="3clFbS" id="62MNP_kY8lH" role="3clF47">
        <node concept="3clFbF" id="62MNP_kY9zG" role="3cqZAp">
          <node concept="37vLTw" id="62MNP_kY9zF" role="3clFbG">
            <ref role="3cqZAo" node="62MNP_kY7Vb" resolve="templateRef" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6i42QSs9G2y" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="62MNP_kY89h" role="jymVt" />
    <node concept="3clFb_" id="1ffsG7bUgP4" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="1ffsG7bUgP5" role="1B3o_S" />
      <node concept="17QB3L" id="1ffsG7bUgP6" role="3clF45" />
      <node concept="3clFbS" id="1ffsG7bUgP7" role="3clF47">
        <node concept="3clFbF" id="1ffsG7bUgP8" role="3cqZAp">
          <node concept="3cpWs3" id="1ffsG7bUgP9" role="3clFbG">
            <node concept="Xl_RD" id="1ffsG7bUgPa" role="3uHU7w">
              <property role="Xl_RC" value="]" />
            </node>
            <node concept="3cpWs3" id="1ffsG7bUgPb" role="3uHU7B">
              <node concept="3cpWs3" id="1ffsG7bUgPc" role="3uHU7B">
                <node concept="Xl_RD" id="1ffsG7bUgPd" role="3uHU7w">
                  <property role="Xl_RC" value=" [" />
                </node>
                <node concept="37vLTw" id="1ffsG7bUj66" role="3uHU7B">
                  <ref role="3cqZAo" node="1ffsG7bUbIL" resolve="name" />
                </node>
              </node>
              <node concept="2YIFZM" id="1ffsG7bUgPf" role="3uHU7w">
                <ref role="37wK5l" to="18ew:~NameUtil.compactNamespace(java.lang.String):java.lang.String" resolve="compactNamespace" />
                <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                <node concept="2OqwBi" id="1ffsG7bUgPg" role="37wK5m">
                  <node concept="2OqwBi" id="1ffsG7bUgPh" role="2Oq$k0">
                    <node concept="1rXfSq" id="1ffsG7bUgPi" role="2Oq$k0">
                      <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                    </node>
                    <node concept="liA8E" id="1ffsG7bUgPj" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Class.getPackage():java.lang.Package" resolve="getPackage" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1ffsG7bUgPk" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Package.getName():java.lang.String" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1ffsG7bUgPl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1ffsG7bUbCN" role="1B3o_S" />
    <node concept="2tJIrI" id="1ffsG7bUbKy" role="jymVt" />
    <node concept="312cEg" id="1ffsG7bUbIL" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="3Tm6S6" id="1ffsG7bUbIM" role="1B3o_S" />
      <node concept="17QB3L" id="1ffsG7bUbIO" role="1tU5fm" />
    </node>
    <node concept="16euLQ" id="1ffsG7bUbY4" role="16eVyc">
      <property role="TrG5h" value="Token" />
      <node concept="3uibUv" id="7XdbJdy7jWi" role="3ztrMU">
        <ref role="3uigEE" node="2RRx4MZ6_68" resolve="RuleTemplateToken" />
      </node>
    </node>
    <node concept="3uibUv" id="1ffsG7bWFot" role="EKbjA">
      <ref role="3uigEE" node="1ffsG7bW_V4" resolve="RuleTemplate" />
      <node concept="16syzq" id="1ffsG7bWGME" role="11_B2D">
        <ref role="16sUi3" node="1ffsG7bUbY4" resolve="Token" />
      </node>
    </node>
    <node concept="312cEg" id="62MNP_kY7Vb" role="jymVt">
      <property role="TrG5h" value="templateRef" />
      <node concept="3Tm6S6" id="62MNP_kY7Vc" role="1B3o_S" />
      <node concept="3uibUv" id="62MNP_kY7Ve" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
    </node>
    <node concept="312cEg" id="4MqhgXUnfaQ" role="jymVt">
      <property role="TrG5h" value="handlerTemplate" />
      <node concept="3Tm6S6" id="4MqhgXUnfaR" role="1B3o_S" />
      <node concept="3uibUv" id="4MqhgXUnfaT" role="1tU5fm">
        <ref role="3uigEE" node="4MqhgXU9fm3" resolve="HandlerTemplate" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="1ffsG7bW_V4">
    <property role="TrG5h" value="RuleTemplate" />
    <property role="3GE5qa" value="template" />
    <node concept="2tJIrI" id="67SsWaEm4a8" role="jymVt" />
    <node concept="3clFb_" id="4vBwiiUVL7_" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="4vBwiiUVOVU" role="3clF45" />
      <node concept="3Tm1VV" id="4vBwiiUVL7C" role="1B3o_S" />
      <node concept="3clFbS" id="4vBwiiUVL7D" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4vBwiiUVL5S" role="jymVt" />
    <node concept="3clFb_" id="1ffsG7bWxkw" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="applicableConcept" />
      <node concept="3bZ5Sz" id="YGS68MZRvy" role="3clF45" />
      <node concept="3Tm1VV" id="1ffsG7bWxkz" role="1B3o_S" />
      <node concept="3clFbS" id="1ffsG7bWxk$" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="67SsWaEm85j" role="jymVt" />
    <node concept="3clFb_" id="1ffsG7bWyMV" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="isExactMatch" />
      <node concept="10P_77" id="1ffsG7bWyUS" role="3clF45" />
      <node concept="3Tm1VV" id="1ffsG7bWyMY" role="1B3o_S" />
      <node concept="3clFbS" id="1ffsG7bWyMZ" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="xaaVXvjc6l" role="jymVt" />
    <node concept="3clFb_" id="xaaVXv6GSk" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="isPrincipal" />
      <node concept="10P_77" id="xaaVXv6LX8" role="3clF45" />
      <node concept="3Tm1VV" id="xaaVXv6GSo" role="1B3o_S" />
      <node concept="3clFbS" id="xaaVXv6GSp" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="67SsWaEmb4N" role="jymVt" />
    <node concept="3clFb_" id="4MqhgXUndvp" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="handlerTemplate" />
      <node concept="3uibUv" id="4MqhgXUndIk" role="3clF45">
        <ref role="3uigEE" node="4MqhgXU9fm3" resolve="HandlerTemplate" />
      </node>
      <node concept="3Tm1VV" id="4MqhgXUndvs" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXUndvt" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="PB1R3YsIZx" role="jymVt" />
    <node concept="3clFb_" id="6i42QSs8m5b" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="templateRef" />
      <node concept="3uibUv" id="6i42QSs8miP" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3Tm1VV" id="6i42QSs8m5e" role="1B3o_S" />
      <node concept="3clFbS" id="6i42QSs8m5f" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="3IIf9OAJNDf" role="jymVt" />
    <node concept="3clFb_" id="3IIf9OAJOPP" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="newToken" />
      <node concept="37vLTG" id="3IIf9OAJRcv" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="8X2XB" id="3IIf9OAJSqg" role="1tU5fm">
          <node concept="3uibUv" id="3IIf9OAJS3D" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="3IIf9OAJQ56" role="3clF45">
        <ref role="16sUi3" node="1ffsG7bWA35" resolve="Token" />
      </node>
      <node concept="3Tm1VV" id="3IIf9OAJOPS" role="1B3o_S" />
      <node concept="3clFbS" id="3IIf9OAJOPT" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6i42QSs8m2v" role="jymVt" />
    <node concept="3Tm1VV" id="1ffsG7bW_V5" role="1B3o_S" />
    <node concept="16euLQ" id="1ffsG7bWA35" role="16eVyc">
      <property role="TrG5h" value="Token" />
      <node concept="3uibUv" id="7XdbJdy67uN" role="3ztrMU">
        <ref role="3uigEE" node="2RRx4MZ6_68" resolve="RuleTemplateToken" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="4MqhgXU9fm3">
    <property role="TrG5h" value="HandlerTemplate" />
    <node concept="2tJIrI" id="4MqhgXU9fmh" role="jymVt" />
    <node concept="3clFb_" id="4MqhgXUN1Pe" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="4MqhgXUN1Qo" role="3clF45" />
      <node concept="3Tm1VV" id="4MqhgXUN1Ph" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXUN1Pi" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7P_FdVPVjam" role="jymVt" />
    <node concept="3clFb_" id="7P_FdVQoZmr" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="fqName" />
      <node concept="17QB3L" id="7P_FdVQp2lr" role="3clF45" />
      <node concept="3Tm1VV" id="7P_FdVQoZmu" role="1B3o_S" />
      <node concept="3clFbS" id="7P_FdVQoZmv" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7P_FdVQoWCy" role="jymVt" />
    <node concept="3clFb_" id="7P_FdVQoGPt" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="extendedFqName" />
      <node concept="17QB3L" id="7P_FdVQoJS0" role="3clF45" />
      <node concept="3Tm1VV" id="7P_FdVQoGPw" role="1B3o_S" />
      <node concept="3clFbS" id="7P_FdVQoGPx" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7P_FdVQoNeh" role="jymVt" />
    <node concept="3clFb_" id="4MqhgXU9lmo" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="primarySymbols" />
      <node concept="A3Dl8" id="2vGNdoJH8yh" role="3clF45">
        <node concept="3uibUv" id="2vGNdoJH8yj" role="A3Ik2">
          <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4MqhgXU9lmr" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXU9lms" role="3clF47" />
      <node concept="2AHcQZ" id="7P_FdVPH75_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="2tJIrI" id="4MqhgXU9fJA" role="jymVt" />
    <node concept="3clFb_" id="4MqhgXUaiON" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="ruleTemplates" />
      <node concept="A3Dl8" id="4MqhgXUaiPw" role="3clF45">
        <node concept="3uibUv" id="4MqhgXUaiPX" role="A3Ik2">
          <ref role="3uigEE" node="1ffsG7bW_V4" resolve="RuleTemplate" />
          <node concept="3qTvmN" id="6OXbTD$GpJw" role="11_B2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4MqhgXUaiOQ" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXUaiOR" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4MqhgXUaiOu" role="jymVt" />
    <node concept="3Tm1VV" id="4MqhgXU9fm4" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="2RRx4MZ6_68">
    <property role="TrG5h" value="RuleTemplateToken" />
    <property role="3GE5qa" value="template.token" />
    <node concept="2tJIrI" id="2RRx4MZSLs8" role="jymVt" />
    <node concept="3clFb_" id="2RRx4MZ6CBV" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="isApplicable" />
      <node concept="10P_77" id="2RRx4MZ6CC0" role="3clF45" />
      <node concept="3Tm1VV" id="2RRx4MZ6CC1" role="1B3o_S" />
      <node concept="3clFbS" id="2RRx4MZ6CC2" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2RRx4MZ6CC3" role="jymVt" />
    <node concept="3clFb_" id="2RRx4MZ6CC4" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="requiredNodes" />
      <node concept="A3Dl8" id="2RRx4MZ6CC5" role="3clF45">
        <node concept="3Tqbb2" id="2RRx4MZ6CC6" role="A3Ik2" />
      </node>
      <node concept="3Tm1VV" id="2RRx4MZ6CC7" role="1B3o_S" />
      <node concept="3clFbS" id="2RRx4MZ6CC8" role="3clF47" />
      <node concept="2AHcQZ" id="6tPOoeSE0jz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="2tJIrI" id="2RRx4MZ6CCd" role="jymVt" />
    <node concept="3clFb_" id="2RRx4MZ6CCe" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="apply" />
      <node concept="A3Dl8" id="2RRx4MZ6CCf" role="3clF45">
        <node concept="3uibUv" id="2RRx4MZ6CCg" role="A3Ik2">
          <ref role="3uigEE" to="6pyv:7eGEHDlc$ap" resolve="RuleBuilder" />
        </node>
      </node>
      <node concept="37vLTG" id="2RRx4MZ6CCl" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="2RRx4MZ6CCm" role="1tU5fm">
          <ref role="3uigEE" to="6pyv:18kNIl1vDPZ" resolve="TemplateApplicationSession" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2RRx4MZ6CCn" role="1B3o_S" />
      <node concept="3clFbS" id="2RRx4MZ6CCo" role="3clF47" />
      <node concept="2AHcQZ" id="mJ_D14wp18" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2RRx4MZ6CBN" role="jymVt" />
    <node concept="3Tm1VV" id="2RRx4MZ6_69" role="1B3o_S" />
    <node concept="3uibUv" id="mJ_D14woTd" role="3HQHJm">
      <ref role="3uigEE" node="mJ_D14woL$" resolve="TemplateToken" />
    </node>
  </node>
  <node concept="312cEu" id="2RRx4MZ6I3W">
    <property role="TrG5h" value="BaseRuleTemplateToken" />
    <property role="1sVAO0" value="true" />
    <property role="3GE5qa" value="template.token" />
    <node concept="2tJIrI" id="2RRx4MZ6Ib2" role="jymVt" />
    <node concept="3clFb_" id="2RRx4MZ6Ibj" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isApplicable" />
      <node concept="10P_77" id="2RRx4MZ6Ibk" role="3clF45" />
      <node concept="3Tm1VV" id="2RRx4MZ6Ibl" role="1B3o_S" />
      <node concept="3clFbS" id="2RRx4MZ6Ibn" role="3clF47">
        <node concept="3clFbF" id="2RRx4MZ6Ibq" role="3cqZAp">
          <node concept="3clFbT" id="2RRx4MZ6J1n" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2RRx4MZ6Ibo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2RRx4MZ6IQo" role="jymVt" />
    <node concept="3clFb_" id="2RRx4MZ6Ibr" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="requiredNodes" />
      <node concept="A3Dl8" id="2RRx4MZ6Ibs" role="3clF45">
        <node concept="3Tqbb2" id="2RRx4MZ6Ibt" role="A3Ik2" />
      </node>
      <node concept="3Tm1VV" id="2RRx4MZ6Ibu" role="1B3o_S" />
      <node concept="3clFbS" id="2RRx4MZ6Ibw" role="3clF47">
        <node concept="3clFbF" id="2RRx4MZ6J2x" role="3cqZAp">
          <node concept="10Nm6u" id="2RRx4MZ6J2w" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2RRx4MZ6Ibx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="6tPOoeSEcvH" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="2tJIrI" id="2RRx4MZ6IJC" role="jymVt" />
    <node concept="3Tm1VV" id="2RRx4MZ6I3X" role="1B3o_S" />
    <node concept="3uibUv" id="2RRx4MZ6I8M" role="EKbjA">
      <ref role="3uigEE" node="2RRx4MZ6_68" resolve="RuleTemplateToken" />
    </node>
  </node>
  <node concept="3HP615" id="36tQV5AurZW">
    <property role="3GE5qa" value="template" />
    <property role="TrG5h" value="ConstraintRuleTemplate" />
    <node concept="2tJIrI" id="36tQV5Aus0e" role="jymVt" />
    <node concept="3clFb_" id="36tQV5Aus0w" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="36tQV5Auubn" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="36tQV5Auubo" role="1tU5fm">
          <ref role="3uigEE" to="6pyv:18kNIl1vDPZ" resolve="TemplateApplicationSession" />
        </node>
      </node>
      <node concept="3Tm1VV" id="36tQV5Aus0z" role="1B3o_S" />
      <node concept="3clFbS" id="36tQV5Aus0$" role="3clF47" />
      <node concept="3cqZAl" id="36tQV5AI6in" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="36tQV5AIeEy" role="jymVt" />
    <node concept="3Tm1VV" id="36tQV5AurZX" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="mJ_D14woL$">
    <property role="3GE5qa" value="template.token" />
    <property role="TrG5h" value="TemplateToken" />
    <node concept="2tJIrI" id="mJ_D14woOn" role="jymVt" />
    <node concept="3clFb_" id="mJ_D14woVW" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="apply" />
      <node concept="A3Dl8" id="mJ_D14woVX" role="3clF45">
        <node concept="3uibUv" id="mJ_D14woVY" role="A3Ik2">
          <ref role="3uigEE" to="6pyv:7eGEHDlc$ap" resolve="RuleBuilder" />
        </node>
      </node>
      <node concept="37vLTG" id="mJ_D14woVZ" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="mJ_D14woW0" role="1tU5fm">
          <ref role="3uigEE" to="6pyv:18kNIl1vDPZ" resolve="TemplateApplicationSession" />
        </node>
      </node>
      <node concept="3Tm1VV" id="mJ_D14woW1" role="1B3o_S" />
      <node concept="3clFbS" id="mJ_D14woW2" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="mJ_D14woOp" role="jymVt" />
    <node concept="3Tm1VV" id="mJ_D14woL_" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="6OXbTD$iNPP">
    <property role="3GE5qa" value="template" />
    <property role="TrG5h" value="QueryTemplate" />
    <node concept="2tJIrI" id="6OXbTD$iO0e" role="jymVt" />
    <node concept="3clFb_" id="6OXbTD$iO0w" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="6OXbTD$iO0x" role="3clF45" />
      <node concept="3Tm1VV" id="6OXbTD$iO0y" role="1B3o_S" />
      <node concept="3clFbS" id="6OXbTD$iO0z" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6OXbTD$iO0$" role="jymVt" />
    <node concept="3clFb_" id="6OXbTD$iO0_" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="fqName" />
      <node concept="17QB3L" id="6OXbTD$iO0A" role="3clF45" />
      <node concept="3Tm1VV" id="6OXbTD$iO0B" role="1B3o_S" />
      <node concept="3clFbS" id="6OXbTD$iO0C" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4t7Xo7iclkP" role="jymVt" />
    <node concept="3clFb_" id="4t7Xo7icmmF" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="kind" />
      <node concept="3clFbS" id="4t7Xo7icmmI" role="3clF47" />
      <node concept="3Tm1VV" id="4t7Xo7icmmJ" role="1B3o_S" />
      <node concept="3uibUv" id="4t7Xo7intc6" role="3clF45">
        <ref role="3uigEE" node="4t7Xo7inshN" resolve="QueryKind" />
      </node>
    </node>
    <node concept="2tJIrI" id="6OXbTD$iO0D" role="jymVt" />
    <node concept="3clFb_" id="6OXbTD$iO0E" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="usedHandlersFqNames" />
      <node concept="_YKpA" id="6OXbTD$iO0F" role="3clF45">
        <node concept="17QB3L" id="6OXbTD$iO0G" role="_ZDj9" />
      </node>
      <node concept="3Tm1VV" id="6OXbTD$iO0H" role="1B3o_S" />
      <node concept="3clFbS" id="6OXbTD$iO0I" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6OXbTD$iO0n" role="jymVt" />
    <node concept="3clFb_" id="6tPOoeT3pU7" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="newToken" />
      <node concept="37vLTG" id="6tPOoeT3pU8" role="3clF46">
        <property role="TrG5h" value="parameter" />
        <node concept="8X2XB" id="6tPOoeT3pU9" role="1tU5fm">
          <node concept="3uibUv" id="6tPOoeT3pUa" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="6tPOoeT3qes" role="3clF45">
        <ref role="16sUi3" node="6tPOoeT3qak" resolve="Token" />
      </node>
      <node concept="3Tm1VV" id="6tPOoeT3pUc" role="1B3o_S" />
      <node concept="3clFbS" id="6tPOoeT3pUd" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6tPOoeT3pQI" role="jymVt" />
    <node concept="3Tm1VV" id="6OXbTD$iNPQ" role="1B3o_S" />
    <node concept="3clFb_" id="7P_FdVPsDM6" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="newQuery" />
      <node concept="37vLTG" id="7P_FdVQ_p5F" role="3clF46">
        <property role="TrG5h" value="observable" />
        <node concept="3uibUv" id="7P_FdVQ_p6p" role="1tU5fm">
          <ref role="3uigEE" node="7P_FdVQ_k3b" resolve="QueryTemplate.QueryObservable" />
        </node>
      </node>
      <node concept="37vLTG" id="7P_FdVPsGBf" role="3clF46">
        <property role="TrG5h" value="parameters" />
        <node concept="3uibUv" id="3IIf9OAgMKI" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qTvmN" id="3IIf9OAm5rX" role="11_B2D" />
        </node>
      </node>
      <node concept="3uibUv" id="7P_FdVPsDNI" role="3clF45">
        <ref role="3uigEE" node="7P_FdVPsDC0" resolve="QueryTemplate.QueryConfigurable" />
      </node>
      <node concept="3Tm1VV" id="7P_FdVPsDM9" role="1B3o_S" />
      <node concept="3clFbS" id="7P_FdVPsDMa" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6OXbTD$reMa" role="jymVt" />
    <node concept="3HP615" id="7P_FdVPsDC0" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="QueryConfigurable" />
      <node concept="2tJIrI" id="7P_FdVPsDDy" role="jymVt" />
      <node concept="3clFb_" id="7P_FdVPsE9p" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="configure" />
        <node concept="37vLTG" id="7P_FdVQ_jv0" role="3clF46">
          <property role="TrG5h" value="stage" />
          <node concept="17QB3L" id="7P_FdVQ_jw7" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7P_FdVPsEcX" role="3clF46">
          <property role="TrG5h" value="config" />
          <node concept="3uibUv" id="7P_FdVPsEeI" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~EvaluationSession$Config" resolve="EvaluationSession.Config" />
          </node>
        </node>
        <node concept="3uibUv" id="7P_FdVPsEdT" role="3clF45">
          <ref role="3uigEE" to="w7la:~EvaluationSession$Config" resolve="EvaluationSession.Config" />
        </node>
        <node concept="3Tm1VV" id="7P_FdVPsE9s" role="1B3o_S" />
        <node concept="3clFbS" id="7P_FdVPsE9t" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="7P_FdVQ_p0D" role="jymVt" />
      <node concept="3Tm1VV" id="7P_FdVPsDC1" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6OXbTD$reOi" role="jymVt" />
    <node concept="3HP615" id="7P_FdVQ_k3b" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="QueryObservable" />
      <node concept="2tJIrI" id="7P_FdVQ_k6c" role="jymVt" />
      <node concept="3clFb_" id="7P_FdVQ_k6A" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="subscribe" />
        <node concept="37vLTG" id="7P_FdVQ_ka7" role="3clF46">
          <property role="TrG5h" value="observer" />
          <node concept="3uibUv" id="7P_FdVQ_kaO" role="1tU5fm">
            <ref role="3uigEE" node="7P_FdVQ_jCo" resolve="QueryTemplate.QueryObserver" />
          </node>
        </node>
        <node concept="3cqZAl" id="7P_FdVQ_k6C" role="3clF45" />
        <node concept="3Tm1VV" id="7P_FdVQ_k6D" role="1B3o_S" />
        <node concept="3clFbS" id="7P_FdVQ_k6E" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="7P_FdVQ_oC2" role="jymVt" />
      <node concept="3Tm1VV" id="7P_FdVQ_k3c" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6OXbTD$reQr" role="jymVt" />
    <node concept="3HP615" id="7P_FdVQ_jCo" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="QueryObserver" />
      <node concept="2tJIrI" id="7P_FdVQ_jEo" role="jymVt" />
      <node concept="3clFb_" id="7P_FdVQ_jFm" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="onNext" />
        <node concept="37vLTG" id="7P_FdVQ_jF$" role="3clF46">
          <property role="TrG5h" value="stage" />
          <node concept="17QB3L" id="7P_FdVQ_jI8" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7P_FdVQ_jJ3" role="3clF46">
          <property role="TrG5h" value="storeView" />
          <node concept="3uibUv" id="7P_FdVQ_jJT" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~StoreView" resolve="StoreView" />
          </node>
        </node>
        <node concept="3cqZAl" id="7P_FdVQ_jFp" role="3clF45" />
        <node concept="3Tm1VV" id="7P_FdVQ_jFq" role="1B3o_S" />
        <node concept="3clFbS" id="7P_FdVQ_jFr" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="7P_FdVQ_jL5" role="jymVt" />
      <node concept="3clFb_" id="7P_FdVQ_jLY" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="onCompleted" />
        <node concept="37vLTG" id="7P_FdVQ_jPZ" role="3clF46">
          <property role="TrG5h" value="view" />
          <node concept="3uibUv" id="7P_FdVQ_jQR" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~StoreView" resolve="StoreView" />
          </node>
        </node>
        <node concept="3cqZAl" id="7P_FdVQ_jM0" role="3clF45" />
        <node concept="3Tm1VV" id="7P_FdVQ_jM1" role="1B3o_S" />
        <node concept="3clFbS" id="7P_FdVQ_jM2" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="7P_FdVQ_jS6" role="jymVt" />
      <node concept="3clFb_" id="7P_FdVQ_jU$" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="onFailure" />
        <node concept="37vLTG" id="7P_FdVQ_jY$" role="3clF46">
          <property role="TrG5h" value="exception" />
          <node concept="3uibUv" id="7WKNeR9$ZWp" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
          </node>
        </node>
        <node concept="3cqZAl" id="7P_FdVQ_jUB" role="3clF45" />
        <node concept="3Tm1VV" id="7P_FdVQ_jUC" role="1B3o_S" />
        <node concept="3clFbS" id="7P_FdVQ_jUD" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="7P_FdVQ_jEt" role="jymVt" />
      <node concept="3Tm1VV" id="7P_FdVQ_jCp" role="1B3o_S" />
    </node>
    <node concept="16euLQ" id="6tPOoeT3qak" role="16eVyc">
      <property role="TrG5h" value="Token" />
      <node concept="3uibUv" id="6tPOoeT3qal" role="3ztrMU">
        <ref role="3uigEE" node="mJ_D14woL$" resolve="TemplateToken" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="4t7Xo7inshN">
    <property role="TrG5h" value="QueryKind" />
    <node concept="3Tm1VV" id="4t7Xo7inshO" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5uFPQ7BZsAX">
    <property role="TrG5h" value="AbstractConstraint" />
    <node concept="2tJIrI" id="5uFPQ7BZsC9" role="jymVt" />
    <node concept="3clFbW" id="5uFPQ7BZtsU" role="jymVt">
      <node concept="37vLTG" id="5uFPQ7BZtxe" role="3clF46">
        <property role="TrG5h" value="constraintSymbol" />
        <node concept="3uibUv" id="5uFPQ7BZtBR" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="5uFPQ7BZtIF" role="3clF46">
        <property role="TrG5h" value="arguments" />
        <node concept="10Q1$e" id="4sSe4$oSOBc" role="1tU5fm">
          <node concept="3uibUv" id="5uFPQ7BZzov" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4sSe4$oSOVM" role="3clF46">
        <property role="TrG5h" value="logicals" />
        <node concept="10Q1$e" id="4sSe4$oSP_q" role="1tU5fm">
          <node concept="3uibUv" id="4sSe4$oSPgO" role="10Q1$1">
            <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5uFPQ7BZtsW" role="3clF45" />
      <node concept="3Tm1VV" id="5uFPQ7BZtsX" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7BZtsY" role="3clF47">
        <node concept="3clFbF" id="5uFPQ7BZu64" role="3cqZAp">
          <node concept="37vLTI" id="5uFPQ7BZu66" role="3clFbG">
            <node concept="2OqwBi" id="5uFPQ7BZu6a" role="37vLTJ">
              <node concept="Xjq3P" id="5uFPQ7BZu6d" role="2Oq$k0" />
              <node concept="2OwXpG" id="5uFPQ7BZu69" role="2OqNvi">
                <ref role="2Oxat5" node="5uFPQ7BZu60" resolve="symbol" />
              </node>
            </node>
            <node concept="37vLTw" id="5uFPQ7BZu6e" role="37vLTx">
              <ref role="3cqZAo" node="5uFPQ7BZtxe" resolve="constraintSymbol" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5uFPQ7BZuek" role="3cqZAp">
          <node concept="37vLTI" id="5uFPQ7BZuem" role="3clFbG">
            <node concept="2OqwBi" id="5uFPQ7BZueq" role="37vLTJ">
              <node concept="Xjq3P" id="5uFPQ7BZuet" role="2Oq$k0" />
              <node concept="2OwXpG" id="5uFPQ7BZuep" role="2OqNvi">
                <ref role="2Oxat5" node="5uFPQ7BZuef" resolve="arguments" />
              </node>
            </node>
            <node concept="37vLTw" id="5uFPQ7BZueu" role="37vLTx">
              <ref role="3cqZAo" node="5uFPQ7BZtIF" resolve="arguments" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4sSe4$oSRPQ" role="3cqZAp">
          <node concept="37vLTI" id="4sSe4$oSRPS" role="3clFbG">
            <node concept="2OqwBi" id="4sSe4$oSRPW" role="37vLTJ">
              <node concept="Xjq3P" id="4sSe4$oSRPZ" role="2Oq$k0" />
              <node concept="2OwXpG" id="4sSe4$oSRPV" role="2OqNvi">
                <ref role="2Oxat5" node="4sSe4$oSRPL" resolve="logicals" />
              </node>
            </node>
            <node concept="37vLTw" id="4sSe4$oSRQ0" role="37vLTx">
              <ref role="3cqZAo" node="4sSe4$oSOVM" resolve="logicals" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4sSe4$oYGyc" role="3cqZAp">
          <node concept="3SKdUq" id="4sSe4$oYGye" role="3SKWNk">
            <property role="3SKdUp" value="invariant: if the logicals array is not empty, it must be the same size as the arguments array" />
          </node>
        </node>
        <node concept="1gVbGN" id="4sSe4$oYAeU" role="3cqZAp">
          <node concept="22lmx$" id="4sSe4$oYCHi" role="1gVkn0">
            <node concept="3clFbC" id="4sSe4$oYEu3" role="3uHU7w">
              <node concept="2OqwBi" id="4sSe4$oYFjm" role="3uHU7w">
                <node concept="37vLTw" id="4sSe4$oYESh" role="2Oq$k0">
                  <ref role="3cqZAo" node="5uFPQ7BZtIF" resolve="arguments" />
                </node>
                <node concept="1Rwk04" id="4sSe4$oYFIW" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="4sSe4$oYDx8" role="3uHU7B">
                <node concept="37vLTw" id="4sSe4$oYD7p" role="2Oq$k0">
                  <ref role="3cqZAo" node="4sSe4$oSOVM" resolve="logicals" />
                </node>
                <node concept="1Rwk04" id="4sSe4$oYDXu" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbC" id="4sSe4$oYBY7" role="3uHU7B">
              <node concept="2OqwBi" id="4sSe4$oYB22" role="3uHU7B">
                <node concept="37vLTw" id="4sSe4$oYACI" role="2Oq$k0">
                  <ref role="3cqZAo" node="4sSe4$oSOVM" resolve="logicals" />
                </node>
                <node concept="1Rwk04" id="4sSe4$oYBtX" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="4sSe4$oYCn9" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7BZto4" role="jymVt" />
    <node concept="3clFb_" id="5uFPQ7BZsCD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <node concept="3uibUv" id="5uFPQ7BZsCE" role="3clF45">
        <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
      </node>
      <node concept="3Tm1VV" id="5uFPQ7BZsCF" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7BZsCH" role="3clF47">
        <node concept="3clFbF" id="5uFPQ7BZvwz" role="3cqZAp">
          <node concept="37vLTw" id="5uFPQ7BZvwy" role="3clFbG">
            <ref role="3cqZAo" node="5uFPQ7BZu60" resolve="symbol" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7BZvzp" role="jymVt" />
    <node concept="3clFb_" id="5uFPQ7BZsCK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="arguments" />
      <node concept="3Tm1VV" id="5uFPQ7BZsCO" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7BZsCS" role="3clF47">
        <node concept="3clFbF" id="5uFPQ7BZvJl" role="3cqZAp">
          <node concept="2YIFZM" id="5uFPQ7BZvJm" role="3clFbG">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
            <node concept="2YIFZM" id="5uFPQ7BZvJn" role="37wK5m">
              <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
              <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
              <node concept="37vLTw" id="5uFPQ7BZvJo" role="37wK5m">
                <ref role="3cqZAo" node="5uFPQ7BZuef" resolve="arguments" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7HUwyZaBHhW" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3qTvmN" id="7HUwyZaBHwS" role="11_B2D" />
      </node>
    </node>
    <node concept="2tJIrI" id="78CwJJcOxO4" role="jymVt" />
    <node concept="3clFb_" id="78CwJJcOxDH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="argumentTypes" />
      <node concept="3uibUv" id="78CwJJcOxDI" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="78CwJJcOxDJ" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="78CwJJcOxDK" role="11_B2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="78CwJJcOxDL" role="1B3o_S" />
      <node concept="3clFbS" id="78CwJJcOxDN" role="3clF47">
        <node concept="3cpWs8" id="78CwJJcO$LY" role="3cqZAp">
          <node concept="3cpWsn" id="78CwJJcO$LZ" role="3cpWs9">
            <property role="TrG5h" value="types" />
            <node concept="3uibUv" id="78CwJJcO$LM" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="78CwJJcO$LS" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                <node concept="3qTvmN" id="78CwJJcO$LT" role="11_B2D" />
              </node>
            </node>
            <node concept="2ShNRf" id="78CwJJcO$M0" role="33vP2m">
              <node concept="1pGfFk" id="78CwJJcO$M1" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
                <node concept="2OqwBi" id="78CwJJcO$M2" role="37wK5m">
                  <node concept="37vLTw" id="78CwJJcO$M3" role="2Oq$k0">
                    <ref role="3cqZAo" node="5uFPQ7BZuef" resolve="arguments" />
                  </node>
                  <node concept="1Rwk04" id="78CwJJcO$M4" role="2OqNvi" />
                </node>
                <node concept="3uibUv" id="78CwJJcO$M5" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                  <node concept="3qTvmN" id="78CwJJcO$M6" role="11_B2D" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="78CwJJcO_52" role="3cqZAp">
          <node concept="3clFbS" id="78CwJJcO_54" role="2LFqv$">
            <node concept="3clFbJ" id="7HUwyZbi3jO" role="3cqZAp">
              <node concept="3clFbS" id="7HUwyZbi3jQ" role="3clFbx">
                <node concept="3clFbF" id="7HUwyZbi3VL" role="3cqZAp">
                  <node concept="2OqwBi" id="7HUwyZbi418" role="3clFbG">
                    <node concept="37vLTw" id="7HUwyZbi3VJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="78CwJJcO$LZ" resolve="types" />
                    </node>
                    <node concept="liA8E" id="7HUwyZbi4hh" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                      <node concept="2OqwBi" id="7HUwyZbi4Af" role="37wK5m">
                        <node concept="1eOMI4" id="7HUwyZbi4o9" role="2Oq$k0">
                          <node concept="10QFUN" id="7HUwyZbi4o6" role="1eOMHV">
                            <node concept="37vLTw" id="7HUwyZbi4yM" role="10QFUP">
                              <ref role="3cqZAo" node="78CwJJcO_55" resolve="arg" />
                            </node>
                            <node concept="3uibUv" id="7HUwyZbi4uN" role="10QFUM">
                              <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7HUwyZbi4HE" role="2OqNvi">
                          <ref role="37wK5l" to="bj13:~MetaLogical.type():java.lang.Class" resolve="type" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4TCblo5YN91" role="3cqZAp" />
              </node>
              <node concept="2ZW3vV" id="7HUwyZbi3ty" role="3clFbw">
                <node concept="3uibUv" id="7HUwyZbi3vq" role="2ZW6by">
                  <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                </node>
                <node concept="37vLTw" id="7HUwyZbi3rn" role="2ZW6bz">
                  <ref role="3cqZAo" node="78CwJJcO_55" resolve="arg" />
                </node>
              </node>
              <node concept="3eNFk2" id="4sSe4$prurd" role="3eNLev">
                <node concept="2ZW3vV" id="4sSe4$prvtz" role="3eO9$A">
                  <node concept="3uibUv" id="4sSe4$ps1yr" role="2ZW6by">
                    <ref role="3uigEE" to="6exd:1msb0mq9ID4" resolve="DataNode" />
                  </node>
                  <node concept="37vLTw" id="4sSe4$prv0k" role="2ZW6bz">
                    <ref role="3cqZAo" node="78CwJJcO_55" resolve="arg" />
                  </node>
                </node>
                <node concept="3clFbS" id="4sSe4$prurf" role="3eOfB_">
                  <node concept="3SKdUt" id="4sSe4$prxfA" role="3cqZAp">
                    <node concept="3SKdUq" id="4sSe4$prxfC" role="3SKWNk">
                      <property role="3SKdUp" value="FIXME: need a way to find the interface class of the argument " />
                    </node>
                  </node>
                  <node concept="3clFbF" id="4sSe4$prGBU" role="3cqZAp">
                    <node concept="2OqwBi" id="4sSe4$prHi8" role="3clFbG">
                      <node concept="37vLTw" id="4sSe4$prGBS" role="2Oq$k0">
                        <ref role="3cqZAo" node="78CwJJcO$LZ" resolve="types" />
                      </node>
                      <node concept="liA8E" id="4sSe4$prIpP" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                        <node concept="3VsKOn" id="4sSe4$prJvo" role="37wK5m">
                          <ref role="3VsUkX" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="4sSe4$prwMh" role="3cqZAp" />
                </node>
              </node>
              <node concept="9aQIb" id="7HUwyZbi4Sk" role="9aQIa">
                <node concept="3clFbS" id="7HUwyZbi4Sl" role="9aQI4">
                  <node concept="3clFbF" id="78CwJJcO_ku" role="3cqZAp">
                    <node concept="2OqwBi" id="78CwJJcO_ok" role="3clFbG">
                      <node concept="37vLTw" id="78CwJJcO_ks" role="2Oq$k0">
                        <ref role="3cqZAo" node="78CwJJcO$LZ" resolve="types" />
                      </node>
                      <node concept="liA8E" id="78CwJJcO_AW" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                        <node concept="2OqwBi" id="78CwJJcO_HO" role="37wK5m">
                          <node concept="37vLTw" id="78CwJJcO_G3" role="2Oq$k0">
                            <ref role="3cqZAo" node="78CwJJcO_55" resolve="arg" />
                          </node>
                          <node concept="liA8E" id="78CwJJcO_ND" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="78CwJJcO_55" role="1Duv9x">
            <property role="TrG5h" value="arg" />
            <node concept="3uibUv" id="78CwJJcO_9N" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
          <node concept="37vLTw" id="78CwJJcO_hl" role="1DdaDG">
            <ref role="3cqZAo" node="5uFPQ7BZuef" resolve="arguments" />
          </node>
        </node>
        <node concept="3clFbF" id="78CwJJcOAQH" role="3cqZAp">
          <node concept="37vLTw" id="78CwJJcOAQF" role="3clFbG">
            <ref role="3cqZAo" node="78CwJJcO$LZ" resolve="types" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TCblo5M5Qi" role="jymVt" />
    <node concept="3clFb_" id="4sSe4$oZGZ9" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="patternPredicates" />
      <node concept="37vLTG" id="6v0X_XJLN7q" role="3clF46">
        <property role="TrG5h" value="occurrenceArgs" />
        <node concept="3uibUv" id="6v0X_XJLNp1" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
          <node concept="3qTvmN" id="6v0X_XJLNPD" role="11_B2D" />
        </node>
      </node>
      <node concept="3uibUv" id="4sSe4$oZGZa" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3qUE_q" id="4sSe4$oZGZb" role="11_B2D">
          <node concept="3uibUv" id="4sSe4$oZGZc" role="3qUE_r">
            <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4sSe4$oZGZd" role="1B3o_S" />
      <node concept="3clFbS" id="4sSe4$oZGZo" role="3clF47">
        <node concept="3cpWs8" id="4sSe4$p01mP" role="3cqZAp">
          <node concept="3cpWsn" id="4sSe4$p01mQ" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="4sSe4$p01mH" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="4sSe4$p01mK" role="11_B2D">
                <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
              </node>
            </node>
            <node concept="2ShNRf" id="4sSe4$p01mR" role="33vP2m">
              <node concept="1pGfFk" id="4sSe4$p01mS" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
                <node concept="3uibUv" id="4sSe4$p01mT" role="1pMfVU">
                  <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
                </node>
                <node concept="3cmrfG" id="6v0X_XJM1xt" role="37wK5m">
                  <property role="3cmrfH" value="4" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4sSe4$oZLsl" role="3cqZAp">
          <node concept="3cpWsn" id="4sSe4$oZLsm" role="3cpWs9">
            <property role="TrG5h" value="idx" />
            <node concept="10Oyi0" id="4sSe4$oZLsn" role="1tU5fm" />
            <node concept="3cmrfG" id="4sSe4$oZLso" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="4sSe4$oZLsp" role="3cqZAp">
          <node concept="3clFbS" id="4sSe4$oZLsq" role="2LFqv$">
            <node concept="3cpWs8" id="4sSe4$oZLsu" role="3cqZAp">
              <node concept="3cpWsn" id="4sSe4$oZLsv" role="3cpWs9">
                <property role="TrG5h" value="logicalToBind" />
                <node concept="3uibUv" id="4sSe4$oZLsw" role="1tU5fm">
                  <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
                  <node concept="3qTvmN" id="4sSe4$oZLsx" role="11_B2D" />
                </node>
                <node concept="1rXfSq" id="6v0X_XJLW3d" role="33vP2m">
                  <ref role="37wK5l" node="4sSe4$oTo$P" resolve="logicalToBind" />
                  <node concept="37vLTw" id="6v0X_XJLWFm" role="37wK5m">
                    <ref role="3cqZAo" node="4sSe4$oZLsm" resolve="idx" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4sSe4$oZLs$" role="3cqZAp">
              <node concept="3clFbS" id="4sSe4$oZLs_" role="3clFbx">
                <node concept="3clFbF" id="4sSe4$p0gUm" role="3cqZAp">
                  <node concept="2OqwBi" id="4sSe4$p0h_D" role="3clFbG">
                    <node concept="37vLTw" id="4sSe4$p0gUk" role="2Oq$k0">
                      <ref role="3cqZAo" node="4sSe4$p01mQ" resolve="res" />
                    </node>
                    <node concept="liA8E" id="4sSe4$p0iRE" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                      <node concept="2ShNRf" id="4sSe4$p0jEu" role="37wK5m">
                        <node concept="1pGfFk" id="4sSe4$p0lnr" role="2ShVmc">
                          <ref role="37wK5l" to="cxk7:4xBopTzmopz" resolve="UnificationPredicate" />
                          <node concept="37vLTw" id="4sSe4$p0p1w" role="37wK5m">
                            <ref role="3cqZAo" node="4sSe4$oZLtc" resolve="occArg" />
                          </node>
                          <node concept="37vLTw" id="4sSe4$p0x2p" role="37wK5m">
                            <ref role="3cqZAo" node="4sSe4$oZLsv" resolve="logicalToBind" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="4sSe4$oZLsJ" role="3clFbw">
                <node concept="10Nm6u" id="4sSe4$oZLsK" role="3uHU7w" />
                <node concept="37vLTw" id="4sSe4$oZLsL" role="3uHU7B">
                  <ref role="3cqZAo" node="4sSe4$oZLsv" resolve="logicalToBind" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4sSe4$oZLt9" role="3cqZAp">
              <node concept="3uNrnE" id="4sSe4$oZLta" role="3clFbG">
                <node concept="37vLTw" id="4sSe4$oZLtb" role="2$L3a6">
                  <ref role="3cqZAo" node="4sSe4$oZLsm" resolve="idx" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4sSe4$oZLtc" role="1Duv9x">
            <property role="TrG5h" value="occArg" />
            <node concept="3uibUv" id="4sSe4$oZLtd" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
          <node concept="37vLTw" id="6v0X_XJLSmc" role="1DdaDG">
            <ref role="3cqZAo" node="6v0X_XJLN7q" resolve="occurrenceArgs" />
          </node>
        </node>
        <node concept="3cpWs6" id="4sSe4$p0aeq" role="3cqZAp">
          <node concept="37vLTw" id="4sSe4$p042u" role="3cqZAk">
            <ref role="3cqZAo" node="4sSe4$p01mQ" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4sSe4$oZHFX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4sSe4$oZJf2" role="jymVt" />
    <node concept="3clFb_" id="4sSe4$oTo$P" role="jymVt">
      <property role="TrG5h" value="logicalToBind" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="4sSe4$oTo$Q" role="3clF46">
        <property role="TrG5h" value="argIdx" />
        <node concept="10Oyi0" id="4sSe4$oTo$R" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4sSe4$oTo$S" role="3clF45">
        <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
        <node concept="3qTvmN" id="4sSe4$oTo$T" role="11_B2D" />
      </node>
      <node concept="3Tmbuc" id="4sSe4$oTo$U" role="1B3o_S" />
      <node concept="3clFbS" id="4sSe4$oTo_3" role="3clF47">
        <node concept="3clFbJ" id="4sSe4$oTr8F" role="3cqZAp">
          <node concept="3eOSWO" id="4sSe4$oTsE_" role="3clFbw">
            <node concept="3cmrfG" id="4sSe4$oTsFp" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="4sSe4$oTrOW" role="3uHU7B">
              <node concept="37vLTw" id="4sSe4$oTruO" role="2Oq$k0">
                <ref role="3cqZAo" node="4sSe4$oSRPL" resolve="logicals" />
              </node>
              <node concept="1Rwk04" id="4sSe4$oTsdD" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbS" id="4sSe4$oTr8H" role="3clFbx">
            <node concept="3cpWs6" id="4sSe4$oTve6" role="3cqZAp">
              <node concept="AH0OO" id="4sSe4$oTv_t" role="3cqZAk">
                <node concept="37vLTw" id="4sSe4$oTv_u" role="AHEQo">
                  <ref role="3cqZAo" node="4sSe4$oTo$Q" resolve="argIdx" />
                </node>
                <node concept="37vLTw" id="4sSe4$oTv_v" role="AHHXb">
                  <ref role="3cqZAo" node="4sSe4$oSRPL" resolve="logicals" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4sSe4$oTwjh" role="3cqZAp" />
          </node>
          <node concept="9aQIb" id="4sSe4$oTu85" role="9aQIa">
            <node concept="3clFbS" id="4sSe4$oTu86" role="9aQI4">
              <node concept="3cpWs6" id="4sSe4$oTx1H" role="3cqZAp">
                <node concept="10Nm6u" id="4sSe4$oTxvr" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4sSe4$oToXD" role="jymVt" />
    <node concept="3Tm1VV" id="5uFPQ7BZsAY" role="1B3o_S" />
    <node concept="3uibUv" id="5uFPQ7BZsBQ" role="EKbjA">
      <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
    </node>
    <node concept="312cEg" id="5uFPQ7BZu60" role="jymVt">
      <property role="TrG5h" value="symbol" />
      <node concept="3Tm6S6" id="5uFPQ7BZu61" role="1B3o_S" />
      <node concept="3uibUv" id="5uFPQ7BZu63" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
      </node>
    </node>
    <node concept="2tJIrI" id="4sSe4$oTpGf" role="jymVt" />
    <node concept="312cEg" id="5uFPQ7BZuef" role="jymVt">
      <property role="TrG5h" value="arguments" />
      <node concept="3Tm6S6" id="5uFPQ7BZueg" role="1B3o_S" />
      <node concept="10Q1$e" id="5uFPQ7BZzdN" role="1tU5fm">
        <node concept="3uibUv" id="5uFPQ7BZzdK" role="10Q1$1">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4sSe4$oTq3z" role="jymVt" />
    <node concept="312cEg" id="4sSe4$oSRPL" role="jymVt">
      <property role="TrG5h" value="logicals" />
      <node concept="3Tm6S6" id="4sSe4$oSRPM" role="1B3o_S" />
      <node concept="10Q1$e" id="4sSe4$oSRPO" role="1tU5fm">
        <node concept="3uibUv" id="4sSe4$oSRPP" role="10Q1$1">
          <ref role="3uigEE" to="bj13:~MetaLogical" resolve="MetaLogical" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4sSe4$oTqqS" role="jymVt" />
  </node>
</model>

