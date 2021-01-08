<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2cc226a9-8a78-4010-b962-823343fd28ff(jetbrains.mps.lang.coderules.aspect)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
  </languages>
  <imports>
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.coderules.template)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="i5cy" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent.atomic(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
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
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
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
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
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
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
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
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="8758390115028452779" name="jetbrains.mps.lang.smodel.structure.Node_GetReferencesOperation" flags="nn" index="2z74zc" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="4124388153790980106" name="jetbrains.mps.lang.smodel.structure.Reference_GetTargetOperation" flags="nn" index="2ZHEkA" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="2526372162255441536" name="jetbrains.mps.baseLanguage.collections.structure.AsUnmodifiableOperation" flags="nn" index="26Dbio" />
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="6801639034384703212" name="jetbrains.mps.baseLanguage.collections.structure.StackType" flags="in" index="oyxx6" />
      <concept id="5784983078884872741" name="jetbrains.mps.baseLanguage.collections.structure.PeekOperation" flags="nn" index="2oR75g" />
      <concept id="1237467705688" name="jetbrains.mps.baseLanguage.collections.structure.IteratorType" flags="in" index="uOF1S">
        <child id="1237467730343" name="elementType" index="uOL27" />
      </concept>
      <concept id="1237470895604" name="jetbrains.mps.baseLanguage.collections.structure.HasNextOperation" flags="nn" index="v0PNk" />
      <concept id="1237471031357" name="jetbrains.mps.baseLanguage.collections.structure.GetNextOperation" flags="nn" index="v1n4t" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="3358009230508699637" name="jetbrains.mps.baseLanguage.collections.structure.PopOperation" flags="nn" index="2AryhJ" />
      <concept id="3358009230508699932" name="jetbrains.mps.baseLanguage.collections.structure.PushOperation" flags="nn" index="2ArzE6" />
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1226934395923" name="jetbrains.mps.baseLanguage.collections.structure.ClearSetOperation" flags="nn" index="2EZike" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1227022179634" name="jetbrains.mps.baseLanguage.collections.structure.AddLastElementOperation" flags="nn" index="2Ke9KJ" />
      <concept id="1227026082377" name="jetbrains.mps.baseLanguage.collections.structure.RemoveFirstElementOperation" flags="nn" index="2Kt2Hk" />
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1205679737078" name="jetbrains.mps.baseLanguage.collections.structure.SortOperation" flags="nn" index="2S7cBI">
        <child id="1205679832066" name="ascending" index="2S7zOq" />
      </concept>
      <concept id="1237909114519" name="jetbrains.mps.baseLanguage.collections.structure.GetValuesOperation" flags="nn" index="T8wYR" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1178286324487" name="jetbrains.mps.baseLanguage.collections.structure.SortDirection" flags="nn" index="1nlBCl" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="31378964227347002" name="jetbrains.mps.baseLanguage.collections.structure.SelectNotNullOperation" flags="ng" index="1KnU$U" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
      <concept id="5686963296372475025" name="jetbrains.mps.baseLanguage.collections.structure.QueueType" flags="in" index="3O6Q9H" />
    </language>
  </registry>
  <node concept="3HP615" id="NKt6ynom3d">
    <property role="TrG5h" value="AspectDiscoverable" />
    <node concept="2tJIrI" id="NKt6ynombm" role="jymVt" />
    <node concept="3clFb_" id="NKt6ynombB" role="jymVt">
      <property role="TrG5h" value="discover" />
      <node concept="37vLTG" id="NKt6ynomn_" role="3clF46">
        <property role="TrG5h" value="lang" />
        <node concept="16syzq" id="6nx4rRkRxg$" role="1tU5fm">
          <ref role="16sUi3" node="6nx4rRkNcmn" resolve="L" />
        </node>
      </node>
      <node concept="16syzq" id="NKt6ynpjex" role="3clF45">
        <ref role="16sUi3" node="NKt6ynomvO" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="NKt6ynombE" role="1B3o_S" />
      <node concept="3clFbS" id="NKt6ynombF" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6nx4rRkLZpY" role="jymVt" />
    <node concept="3clFb_" id="6nx4rRkLZr6" role="jymVt">
      <property role="TrG5h" value="isSidekick" />
      <node concept="37vLTG" id="6nx4rRkLZr7" role="3clF46">
        <property role="TrG5h" value="sidekick" />
        <node concept="16syzq" id="6nx4rRkNn67" role="1tU5fm">
          <ref role="16sUi3" node="6nx4rRkNcmn" resolve="L" />
        </node>
      </node>
      <node concept="37vLTG" id="6nx4rRkLZr9" role="3clF46">
        <property role="TrG5h" value="authority" />
        <node concept="16syzq" id="6nx4rRkNn74" role="1tU5fm">
          <ref role="16sUi3" node="6nx4rRkNcmn" resolve="L" />
        </node>
      </node>
      <node concept="10P_77" id="6nx4rRkLZrb" role="3clF45" />
      <node concept="3Tm1VV" id="6nx4rRkLZrc" role="1B3o_S" />
      <node concept="3clFbS" id="6nx4rRkLZrd" role="3clF47" />
      <node concept="P$JXv" id="6nx4rRkLZs6" role="lGtFl">
        <node concept="TZ5HA" id="6nx4rRkLZs7" role="TZ5H$">
          <node concept="1dT_AC" id="6nx4rRkLZs8" role="1dT_Ay">
            <property role="1dT_AB" value="A &quot;sidekick&quot; is a language that contributes some aspect(s) to the &quot;authority&quot; language. " />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nx4rRkLZq8" role="jymVt" />
    <node concept="2tJIrI" id="NKt6ynombr" role="jymVt" />
    <node concept="3Tm1VV" id="NKt6ynom3e" role="1B3o_S" />
    <node concept="16euLQ" id="6nx4rRkNcmn" role="16eVyc">
      <property role="TrG5h" value="L" />
    </node>
    <node concept="16euLQ" id="NKt6ynomvO" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3uibUv" id="NKt6ynorR7" role="3ztrMU">
        <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
      </node>
    </node>
    <node concept="3clFb_" id="6nx4rRkOiUG" role="jymVt">
      <property role="TrG5h" value="getExtending" />
      <node concept="3uibUv" id="6nx4rRkOiWc" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="16syzq" id="6nx4rRkOiWX" role="11_B2D">
          <ref role="16sUi3" node="6nx4rRkNcmn" resolve="L" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6nx4rRkOiUJ" role="1B3o_S" />
      <node concept="3clFbS" id="6nx4rRkOiUK" role="3clF47" />
      <node concept="37vLTG" id="6nx4rRkOj0j" role="3clF46">
        <property role="TrG5h" value="lang" />
        <node concept="16syzq" id="6nx4rRkOj0i" role="1tU5fm">
          <ref role="16sUi3" node="6nx4rRkNcmn" resolve="L" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nx4rRkOj4h" role="jymVt" />
    <node concept="3clFb_" id="6nx4rRkOj1Y" role="jymVt">
      <property role="TrG5h" value="getExtended" />
      <node concept="3uibUv" id="6nx4rRkOj1Z" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="16syzq" id="6nx4rRkOj20" role="11_B2D">
          <ref role="16sUi3" node="6nx4rRkNcmn" resolve="L" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6nx4rRkOj21" role="1B3o_S" />
      <node concept="3clFbS" id="6nx4rRkOj22" role="3clF47" />
      <node concept="37vLTG" id="6nx4rRkOj23" role="3clF46">
        <property role="TrG5h" value="lang" />
        <node concept="16syzq" id="6nx4rRkOj24" role="1tU5fm">
          <ref role="16sUi3" node="6nx4rRkNcmn" resolve="L" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nx4rRkVmUS" role="jymVt" />
    <node concept="3clFb_" id="6nx4rRkVmWH" role="jymVt">
      <property role="TrG5h" value="getNamespace" />
      <node concept="37vLTG" id="6nx4rRkVn7e" role="3clF46">
        <property role="TrG5h" value="lang" />
        <node concept="16syzq" id="6nx4rRkVn8Q" role="1tU5fm">
          <ref role="16sUi3" node="6nx4rRkNcmn" resolve="L" />
        </node>
      </node>
      <node concept="17QB3L" id="6nx4rRkVmZ4" role="3clF45" />
      <node concept="3Tm1VV" id="6nx4rRkVmWK" role="1B3o_S" />
      <node concept="3clFbS" id="6nx4rRkVmWL" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6nx4rRkOiTS" role="jymVt" />
  </node>
  <node concept="312cEu" id="NKt6ynorWQ">
    <property role="TrG5h" value="AspectLookup" />
    <node concept="2tJIrI" id="NKt6ynosjc" role="jymVt" />
    <node concept="2YIFZL" id="78H58oefSjC" role="jymVt">
      <property role="TrG5h" value="lookup" />
      <node concept="37vLTG" id="78H58oefUc4" role="3clF46">
        <property role="TrG5h" value="discoverable" />
        <node concept="3uibUv" id="78H58oefUcY" role="1tU5fm">
          <ref role="3uigEE" node="NKt6ynom3d" resolve="AspectDiscoverable" />
          <node concept="3uibUv" id="6nx4rRkNjkl" role="11_B2D">
            <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
          </node>
          <node concept="16syzq" id="78H58oefUf$" role="11_B2D">
            <ref role="16sUi3" node="78H58oefU3u" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="78H58oefUg_" role="3clF45">
        <ref role="3uigEE" node="NKt6ynorWQ" resolve="AspectLookup" />
        <node concept="16syzq" id="78H58oefUo2" role="11_B2D">
          <ref role="16sUi3" node="78H58oefU3u" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="78H58oefSjF" role="1B3o_S" />
      <node concept="3clFbS" id="78H58oefSjG" role="3clF47">
        <node concept="3clFbF" id="78H58oefUrm" role="3cqZAp">
          <node concept="2ShNRf" id="78H58oefUrk" role="3clFbG">
            <node concept="1pGfFk" id="78H58oefUNA" role="2ShVmc">
              <ref role="37wK5l" node="NKt6yno$sR" resolve="AspectLookup" />
              <node concept="37vLTw" id="78H58oefUXe" role="37wK5m">
                <ref role="3cqZAo" node="78H58oefUc4" resolve="discoverable" />
              </node>
              <node concept="16syzq" id="78H58oefV3C" role="1pMfVU">
                <ref role="16sUi3" node="78H58oefU3u" resolve="T" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="78H58oefU3u" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="78H58oefU7h" role="3ztrMU">
          <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="78H58oefOMp" role="jymVt" />
    <node concept="3clFbW" id="NKt6yno$sR" role="jymVt">
      <node concept="37vLTG" id="NKt6yno_xa" role="3clF46">
        <property role="TrG5h" value="discoverable" />
        <node concept="3uibUv" id="NKt6yno_y0" role="1tU5fm">
          <ref role="3uigEE" node="NKt6ynom3d" resolve="AspectDiscoverable" />
          <node concept="3uibUv" id="6nx4rRkNjEP" role="11_B2D">
            <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
          </node>
          <node concept="16syzq" id="NKt6ynoFZ$" role="11_B2D">
            <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="NKt6yno$sT" role="3clF45" />
      <node concept="3Tm1VV" id="NKt6yno$sU" role="1B3o_S" />
      <node concept="3clFbS" id="NKt6yno$sV" role="3clF47">
        <node concept="3clFbF" id="NKt6yno_yQ" role="3cqZAp">
          <node concept="37vLTI" id="NKt6yno_yS" role="3clFbG">
            <node concept="2OqwBi" id="NKt6ynoAF6" role="37vLTJ">
              <node concept="Xjq3P" id="NKt6ynoAGl" role="2Oq$k0" />
              <node concept="2OwXpG" id="NKt6ynoAF9" role="2OqNvi">
                <ref role="2Oxat5" node="NKt6yno_yM" resolve="discoverable" />
              </node>
            </node>
            <node concept="37vLTw" id="NKt6yno_yW" role="37vLTx">
              <ref role="3cqZAo" node="NKt6yno_xa" resolve="discoverable" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7W7Inqm5MLC" role="jymVt" />
    <node concept="3clFb_" id="7W7Inqm5F$e" role="jymVt">
      <property role="TrG5h" value="relevantForNodes" />
      <node concept="3clFbS" id="7W7Inqm5F$h" role="3clF47">
        <node concept="3cpWs8" id="7W7Inqm5Om_" role="3cqZAp">
          <node concept="3cpWsn" id="7W7Inqm5OmC" role="3cpWs9">
            <property role="TrG5h" value="acs" />
            <node concept="3vKaQO" id="7W7Inqm5Omz" role="1tU5fm">
              <node concept="3uibUv" id="7W7Inqm5Onq" role="3O5elw">
                <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="16syzq" id="7W7Inqm5Or2" role="11_B2D">
                  <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
                </node>
              </node>
            </node>
            <node concept="1rXfSq" id="7W7Inqm5OAt" role="33vP2m">
              <ref role="37wK5l" node="7mB3viLmii2" resolve="allForNodes" />
              <node concept="37vLTw" id="7W7Inqm5OL$" role="37wK5m">
                <ref role="3cqZAo" node="7W7Inqm5Hg_" resolve="nodes" />
              </node>
              <node concept="37vLTw" id="7W7Inqm5P9R" role="37wK5m">
                <ref role="3cqZAo" node="7W7Inqm5I4g" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7W7Inqm7qi1" role="3cqZAp" />
        <node concept="3cpWs8" id="7W7Inqm6fMq" role="3cqZAp">
          <node concept="3cpWsn" id="7W7Inqm6fMt" role="3cpWs9">
            <property role="TrG5h" value="sampleNode" />
            <node concept="3Tqbb2" id="7W7Inqm6fMo" role="1tU5fm" />
            <node concept="2OqwBi" id="7W7Inqm6gQX" role="33vP2m">
              <node concept="37vLTw" id="7W7Inqm6gE3" role="2Oq$k0">
                <ref role="3cqZAo" node="7W7Inqm5Hg_" resolve="nodes" />
              </node>
              <node concept="1uHKPH" id="7W7Inqm6gYN" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7W7Inqm6v2a" role="3cqZAp">
          <node concept="3cpWsn" id="7W7Inqm6v2b" role="3cpWs9">
            <property role="TrG5h" value="slang" />
            <node concept="3uibUv" id="7W7Inqm6v2c" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
            </node>
            <node concept="2OqwBi" id="7W7Inqm6wzA" role="33vP2m">
              <node concept="2OqwBi" id="7W7Inqm6wzB" role="2Oq$k0">
                <node concept="2JrnkZ" id="7W7Inqm6wzC" role="2Oq$k0">
                  <node concept="37vLTw" id="7W7Inqm6wEl" role="2JrQYb">
                    <ref role="3cqZAo" node="7W7Inqm6fMt" resolve="sampleNode" />
                  </node>
                </node>
                <node concept="liA8E" id="7W7Inqm6wzE" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                </node>
              </node>
              <node concept="liA8E" id="7W7Inqm6wzF" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7W7Inqm6Kyr" role="3cqZAp">
          <node concept="3cpWsn" id="7W7Inqm6Kys" role="3cpWs9">
            <property role="TrG5h" value="langrt" />
            <node concept="3uibUv" id="7W7Inqm6Kyt" role="1tU5fm">
              <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
            </node>
            <node concept="2OqwBi" id="7W7Inqm7k2c" role="33vP2m">
              <node concept="2YIFZM" id="7W7Inqm7k2d" role="2Oq$k0">
                <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
                <node concept="37vLTw" id="7W7Inqm7k2e" role="37wK5m">
                  <ref role="3cqZAo" node="7W7Inqm5I4g" resolve="repository" />
                </node>
              </node>
              <node concept="liA8E" id="7W7Inqm7k2f" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="getLanguage" />
                <node concept="37vLTw" id="7W7Inqm7krW" role="37wK5m">
                  <ref role="3cqZAo" node="7W7Inqm6v2b" resolve="slang" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1PixfKRpUl9" role="3cqZAp" />
        <node concept="3SKdUt" id="7W7Inqm5PmX" role="3cqZAp">
          <node concept="1PaTwC" id="7W7Inqm68ie" role="1aUNEU">
            <node concept="3oM_SD" id="7W7Inqm5Pn0" role="1PaTwD">
              <property role="3oM_SC" value="choose" />
            </node>
            <node concept="3oM_SD" id="7W7Inqm68gp" role="1PaTwD">
              <property role="3oM_SC" value="aspect" />
            </node>
            <node concept="3oM_SD" id="7W7Inqm68hi" role="1PaTwD">
              <property role="3oM_SC" value="clique" />
            </node>
            <node concept="3oM_SD" id="7W7Inqm68g$" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="7W7Inqm68gK" role="1PaTwD">
              <property role="3oM_SC" value="contains" />
            </node>
            <node concept="3oM_SD" id="7W7Inqm68gP" role="1PaTwD">
              <property role="3oM_SC" value="language" />
            </node>
            <node concept="3oM_SD" id="7W7Inqm68hy" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="7W7Inqm68hF" role="1PaTwD">
              <property role="3oM_SC" value="nodes" />
            </node>
            <node concept="3oM_SD" id="7W7Inqm68iF" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7W7Inqm6cwz" role="3cqZAp">
          <node concept="3clFbS" id="7W7Inqm6cw_" role="2LFqv$">
            <node concept="3clFbJ" id="7W7Inqm6eSS" role="3cqZAp">
              <node concept="3clFbS" id="7W7Inqm6eSU" role="3clFbx">
                <node concept="3cpWs6" id="7W7Inqm79E9" role="3cqZAp">
                  <node concept="37vLTw" id="7W7Inqm79FR" role="3cqZAk">
                    <ref role="3cqZAo" node="7W7Inqm6cwA" resolve="clique" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1PixfKRpFG8" role="3clFbw">
                <node concept="37vLTw" id="1PixfKRpEID" role="2Oq$k0">
                  <ref role="3cqZAo" node="7W7Inqm6cwA" resolve="clique" />
                </node>
                <node concept="liA8E" id="1PixfKRpFWR" role="2OqNvi">
                  <ref role="37wK5l" node="1PixfKRp5_w" resolve="coversNamespace" />
                  <node concept="2OqwBi" id="1PixfKRpH4y" role="37wK5m">
                    <node concept="37vLTw" id="1PixfKRpGSn" role="2Oq$k0">
                      <ref role="3cqZAo" node="7W7Inqm6Kys" resolve="langrt" />
                    </node>
                    <node concept="liA8E" id="1PixfKRpHjH" role="2OqNvi">
                      <ref role="37wK5l" to="vndm:~LanguageRuntime.getNamespace()" resolve="getNamespace" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7W7Inqm6cwA" role="1Duv9x">
            <property role="TrG5h" value="clique" />
            <node concept="3uibUv" id="7W7Inqm6dw3" role="1tU5fm">
              <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
              <node concept="16syzq" id="7W7Inqm6dNK" role="11_B2D">
                <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="7W7Inqm6euB" role="1DdaDG">
            <ref role="3cqZAo" node="7W7Inqm5OmC" resolve="acs" />
          </node>
        </node>
        <node concept="3SKdUt" id="7W7Inqm7NBR" role="3cqZAp">
          <node concept="1PaTwC" id="7W7Inqm7NBS" role="1aUNEU">
            <node concept="3oM_SD" id="7W7Inqm7NBU" role="1PaTwD">
              <property role="3oM_SC" value="default" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7W7Inqm5Pr5" role="3cqZAp">
          <node concept="2OqwBi" id="7W7Inqm5S59" role="3cqZAk">
            <node concept="37vLTw" id="7W7Inqm5QQd" role="2Oq$k0">
              <ref role="3cqZAo" node="7W7Inqm5OmC" resolve="acs" />
            </node>
            <node concept="1uHKPH" id="7W7Inqm5SUr" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7W7Inqm5EMv" role="1B3o_S" />
      <node concept="3uibUv" id="7W7Inqm5Foi" role="3clF45">
        <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
        <node concept="16syzq" id="7W7Inqm5Fvp" role="11_B2D">
          <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="7W7Inqm5Hg_" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="A3Dl8" id="7W7Inqm5Hgz" role="1tU5fm">
          <node concept="3Tqbb2" id="7W7Inqm5HYd" role="A3Ik2" />
        </node>
      </node>
      <node concept="37vLTG" id="7W7Inqm5I4g" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="7W7Inqm5Jba" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="P$JXv" id="7W7Inqm7ErJ" role="lGtFl">
        <node concept="TZ5HA" id="7W7Inqm7ErK" role="TZ5H$">
          <node concept="1dT_AC" id="7W7Inqm7ErL" role="1dT_Ay">
            <property role="1dT_AB" value="Same as 'allForNodes', but try choosing only one aspect clique relevant for nodes." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7W7Inqm5L77" role="jymVt" />
    <node concept="3clFb_" id="7mB3viLmii2" role="jymVt">
      <property role="TrG5h" value="allForNodes" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="7mB3viLmii3" role="3clF47">
        <node concept="3cpWs8" id="7mB3viLmGMo" role="3cqZAp">
          <node concept="3cpWsn" id="7mB3viLmGMp" role="3cpWs9">
            <property role="TrG5h" value="imports" />
            <node concept="2hMVRd" id="7mB3viLmLag" role="1tU5fm">
              <node concept="3uibUv" id="7mB3viLmLai" role="2hN53Y">
                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
              </node>
            </node>
            <node concept="2ShNRf" id="7mB3viLmHXa" role="33vP2m">
              <node concept="2i4dXS" id="7mB3viLmIwp" role="2ShVmc">
                <node concept="3uibUv" id="7mB3viLmJhI" role="HW$YZ">
                  <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="500mE4_sIdy" role="3cqZAp" />
        <node concept="3cpWs8" id="2jWRpjTyIYs" role="3cqZAp">
          <node concept="3cpWsn" id="2jWRpjTyIYv" role="3cpWs9">
            <property role="TrG5h" value="representativeModel" />
            <node concept="H_c77" id="2jWRpjTyIYq" role="1tU5fm" />
            <node concept="2OqwBi" id="2jWRpjTyIuA" role="33vP2m">
              <node concept="2OqwBi" id="2jWRpjTyHOC" role="2Oq$k0">
                <node concept="37vLTw" id="2jWRpjTyHlf" role="2Oq$k0">
                  <ref role="3cqZAo" node="7mB3viLmiiz" resolve="nodes" />
                </node>
                <node concept="1uHKPH" id="2jWRpjTyIma" role="2OqNvi" />
              </node>
              <node concept="I4A8Y" id="2jWRpjTyIHS" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="500mE4_sCob" role="3cqZAp">
          <node concept="3clFbS" id="500mE4_sCod" role="3clFbx">
            <node concept="3clFbF" id="500mE4_sDN4" role="3cqZAp">
              <node concept="2OqwBi" id="500mE4_sEiy" role="3clFbG">
                <node concept="37vLTw" id="500mE4_sDN2" role="2Oq$k0">
                  <ref role="3cqZAo" node="7mB3viLmGMp" resolve="imports" />
                </node>
                <node concept="X8dFx" id="500mE4_sENY" role="2OqNvi">
                  <node concept="1rXfSq" id="500mE4_sFnT" role="25WWJ7">
                    <ref role="37wK5l" node="500mE4_soZN" resolve="usedLanguages" />
                    <node concept="37vLTw" id="500mE4_sGHu" role="37wK5m">
                      <ref role="3cqZAo" node="2jWRpjTyIYv" resolve="representativeModel" />
                    </node>
                    <node concept="37vLTw" id="500mE4_sI20" role="37wK5m">
                      <ref role="3cqZAo" node="7mB3viLmii_" resolve="repository" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="500mE4_sD9F" role="3clFbw">
            <node concept="10Nm6u" id="500mE4_sDBf" role="3uHU7w" />
            <node concept="37vLTw" id="500mE4_sCG1" role="3uHU7B">
              <ref role="3cqZAo" node="2jWRpjTyIYv" resolve="representativeModel" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3KN3A4vEzi1" role="3cqZAp">
          <node concept="3clFbS" id="3KN3A4vEzi4" role="2LFqv$">
            <node concept="3clFbF" id="Q_4x90bPIt" role="3cqZAp">
              <node concept="2OqwBi" id="Q_4x90bRrD" role="3clFbG">
                <node concept="2OqwBi" id="Q_4x90bQ3Q" role="2Oq$k0">
                  <node concept="37vLTw" id="Q_4x90bPIr" role="2Oq$k0">
                    <ref role="3cqZAo" node="3KN3A4vEzi5" resolve="node" />
                  </node>
                  <node concept="2Rf3mk" id="Q_4x90bQbs" role="2OqNvi">
                    <node concept="1xIGOp" id="Q_4x90bRdf" role="1xVPHs" />
                  </node>
                </node>
                <node concept="2es0OD" id="Q_4x90bSM1" role="2OqNvi">
                  <node concept="1bVj0M" id="Q_4x90bSM3" role="23t8la">
                    <node concept="3clFbS" id="Q_4x90bSM4" role="1bW5cS">
                      <node concept="3clFbF" id="7mB3viLmLZG" role="3cqZAp">
                        <node concept="2OqwBi" id="7mB3viLmMLT" role="3clFbG">
                          <node concept="37vLTw" id="7mB3viLmLZE" role="2Oq$k0">
                            <ref role="3cqZAo" node="7mB3viLmGMp" resolve="imports" />
                          </node>
                          <node concept="TSZUe" id="7mB3viLmRQd" role="2OqNvi">
                            <node concept="2OqwBi" id="7mB3viLmPLf" role="25WWJ7">
                              <node concept="2OqwBi" id="7mB3viLmPms" role="2Oq$k0">
                                <node concept="2JrnkZ" id="7mB3viLmOTh" role="2Oq$k0">
                                  <node concept="37vLTw" id="Q_4x90bTi$" role="2JrQYb">
                                    <ref role="3cqZAo" node="Q_4x90bSM5" resolve="it" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="3KN3A4vE_b$" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                                </node>
                              </node>
                              <node concept="liA8E" id="7mB3viLmQ23" role="2OqNvi">
                                <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="Q_4x90bSM5" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="Q_4x90bSM6" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6zber0NDM$4" role="3cqZAp">
              <node concept="2OqwBi" id="6zber0NDQRe" role="3clFbG">
                <node concept="2OqwBi" id="6zber0NWjcx" role="2Oq$k0">
                  <node concept="2OqwBi" id="6zber0NEDdW" role="2Oq$k0">
                    <node concept="2OqwBi" id="6zber0NDVGR" role="2Oq$k0">
                      <node concept="2OqwBi" id="6zber0NDT3R" role="2Oq$k0">
                        <node concept="2OqwBi" id="6zber0NDOOR" role="2Oq$k0">
                          <node concept="2OqwBi" id="6zber0NDMDz" role="2Oq$k0">
                            <node concept="37vLTw" id="6zber0NDM$2" role="2Oq$k0">
                              <ref role="3cqZAo" node="3KN3A4vEzi5" resolve="node" />
                            </node>
                            <node concept="2Rf3mk" id="6zber0NDMKN" role="2OqNvi">
                              <node concept="1xIGOp" id="6zber0NDNVs" role="1xVPHs" />
                            </node>
                          </node>
                          <node concept="3goQfb" id="6zber0NDQb7" role="2OqNvi">
                            <node concept="1bVj0M" id="6zber0NDQb9" role="23t8la">
                              <node concept="3clFbS" id="6zber0NDQba" role="1bW5cS">
                                <node concept="3clFbF" id="6zber0NDQj9" role="3cqZAp">
                                  <node concept="2OqwBi" id="6zber0NDQvw" role="3clFbG">
                                    <node concept="37vLTw" id="6zber0NDQj8" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6zber0NDQbb" resolve="it" />
                                    </node>
                                    <node concept="2z74zc" id="6zber0NDQEx" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="6zber0NDQbb" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="6zber0NDQbc" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3$u5V9" id="6zber0NDT$6" role="2OqNvi">
                          <node concept="1bVj0M" id="6zber0NDT$8" role="23t8la">
                            <node concept="3clFbS" id="6zber0NDT$9" role="1bW5cS">
                              <node concept="3clFbF" id="6zber0NDUq0" role="3cqZAp">
                                <node concept="2OqwBi" id="6zber0NDUDW" role="3clFbG">
                                  <node concept="37vLTw" id="6zber0NDUpZ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6zber0NDT$a" resolve="ref" />
                                  </node>
                                  <node concept="2ZHEkA" id="6zber0NDV9D" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="6zber0NDT$a" role="1bW2Oz">
                              <property role="TrG5h" value="ref" />
                              <node concept="2jxLKc" id="6zber0NDT$b" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1KnU$U" id="6zber0NDWss" role="2OqNvi" />
                    </node>
                    <node concept="3$u5V9" id="6zber0NEDYl" role="2OqNvi">
                      <node concept="1bVj0M" id="6zber0NEDYn" role="23t8la">
                        <node concept="3clFbS" id="6zber0NEDYo" role="1bW5cS">
                          <node concept="3clFbF" id="6zber0NEEw1" role="3cqZAp">
                            <node concept="2OqwBi" id="6zber0NEENi" role="3clFbG">
                              <node concept="37vLTw" id="6zber0NEEw0" role="2Oq$k0">
                                <ref role="3cqZAo" node="6zber0NEDYp" resolve="it" />
                              </node>
                              <node concept="I4A8Y" id="6zber0NEFaM" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="6zber0NEDYp" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="6zber0NEDYq" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1KnU$U" id="6zber0NWkmm" role="2OqNvi" />
                </node>
                <node concept="2es0OD" id="6zber0NEB$2" role="2OqNvi">
                  <node concept="1bVj0M" id="6zber0NEB$4" role="23t8la">
                    <node concept="3clFbS" id="6zber0NEB$5" role="1bW5cS">
                      <node concept="3clFbF" id="6zber0NEB$c" role="3cqZAp">
                        <node concept="2OqwBi" id="6zber0NEB$d" role="3clFbG">
                          <node concept="37vLTw" id="6zber0NEB$e" role="2Oq$k0">
                            <ref role="3cqZAo" node="7mB3viLmGMp" resolve="imports" />
                          </node>
                          <node concept="X8dFx" id="6zber0NEB$f" role="2OqNvi">
                            <node concept="1rXfSq" id="6zber0NEB$g" role="25WWJ7">
                              <ref role="37wK5l" node="500mE4_soZN" resolve="usedLanguages" />
                              <node concept="37vLTw" id="6zber0NEL2t" role="37wK5m">
                                <ref role="3cqZAo" node="6zber0NEB$j" resolve="m" />
                              </node>
                              <node concept="37vLTw" id="6zber0NEB$i" role="37wK5m">
                                <ref role="3cqZAo" node="7mB3viLmii_" resolve="repository" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="6zber0NEB$j" role="1bW2Oz">
                      <property role="TrG5h" value="m" />
                      <node concept="2jxLKc" id="6zber0NEB$k" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3KN3A4vEzi5" role="1Duv9x">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3KN3A4vEzi9" role="1tU5fm" />
          </node>
          <node concept="37vLTw" id="3KN3A4vEzia" role="1DdaDG">
            <ref role="3cqZAo" node="7mB3viLmiiz" resolve="nodes" />
          </node>
        </node>
        <node concept="3clFbH" id="500mE4_sx1n" role="3cqZAp" />
        <node concept="3clFbF" id="500mE4_sylT" role="3cqZAp">
          <node concept="2YIFZM" id="3KN3A4v5e$m" role="3clFbG">
            <ref role="1Pybhc" node="3KN3A4uUhmW" resolve="AspectClique" />
            <ref role="37wK5l" node="3KN3A4uV0IR" resolve="discoverAspects" />
            <node concept="1rXfSq" id="3KN3A4v5e$n" role="37wK5m">
              <ref role="37wK5l" node="4pwDyRBwQ_v" resolve="languages" />
              <node concept="37vLTw" id="3KN3A4v5glt" role="37wK5m">
                <ref role="3cqZAo" node="7mB3viLmGMp" resolve="imports" />
              </node>
              <node concept="37vLTw" id="3KN3A4v5e$p" role="37wK5m">
                <ref role="3cqZAo" node="7mB3viLmii_" resolve="repository" />
              </node>
            </node>
            <node concept="37vLTw" id="3KN3A4v5e$r" role="37wK5m">
              <ref role="3cqZAo" node="NKt6yno_yM" resolve="discoverable" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7mB3viLmiiz" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="A3Dl8" id="3KN3A4vEFRB" role="1tU5fm">
          <node concept="3Tqbb2" id="3KN3A4vEFRD" role="A3Ik2" />
        </node>
      </node>
      <node concept="37vLTG" id="7mB3viLmii_" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="7mB3viLmiiA" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3vKaQO" id="7mB3viLmiiB" role="3clF45">
        <node concept="3uibUv" id="3KN3A4v5gxH" role="3O5elw">
          <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
          <node concept="16syzq" id="3KN3A4v5h_n" role="11_B2D">
            <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7mB3viLmiiD" role="1B3o_S" />
      <node concept="P$JXv" id="3KN3A4vEWb2" role="lGtFl">
        <node concept="TZ5HA" id="3KN3A4vEWb3" role="TZ5H$">
          <node concept="1dT_AC" id="3KN3A4vEWb4" role="1dT_Ay">
            <property role="1dT_AB" value="Discover aspects that belong to " />
          </node>
        </node>
        <node concept="TZ5HA" id="500mE4_sJc6" role="TZ5H$">
          <node concept="1dT_AC" id="500mE4_sJc7" role="1dT_Ay">
            <property role="1dT_AB" value="the language(s) that define the concepts of nodes" />
          </node>
        </node>
        <node concept="TZ5HA" id="500mE4_sJ9H" role="TZ5H$">
          <node concept="1dT_AC" id="500mE4_sJ9I" role="1dT_Ay">
            <property role="1dT_AB" value="and languages imported by a model of the first node. " />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7W7Inqm5EiP" role="jymVt" />
    <node concept="3clFb_" id="NKt6ynoYr0" role="jymVt">
      <property role="TrG5h" value="allForModel" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="NKt6ynoWQg" role="3clF47">
        <node concept="3clFbF" id="3KN3A4v3NmM" role="3cqZAp">
          <node concept="2YIFZM" id="3KN3A4v3NEw" role="3clFbG">
            <ref role="37wK5l" node="3KN3A4uV0IR" resolve="discoverAspects" />
            <ref role="1Pybhc" node="3KN3A4uUhmW" resolve="AspectClique" />
            <node concept="1rXfSq" id="3KN3A4v4bsC" role="37wK5m">
              <ref role="37wK5l" node="4pwDyRBwQ_v" resolve="languages" />
              <node concept="1rXfSq" id="500mE4_ssum" role="37wK5m">
                <ref role="37wK5l" node="500mE4_soZN" resolve="usedLanguages" />
                <node concept="37vLTw" id="500mE4_stuL" role="37wK5m">
                  <ref role="3cqZAo" node="NKt6ynoWQ9" resolve="model" />
                </node>
                <node concept="37vLTw" id="500mE4_stNT" role="37wK5m">
                  <ref role="3cqZAo" node="NKt6ynoWQb" resolve="repository" />
                </node>
              </node>
              <node concept="37vLTw" id="3KN3A4v4dbc" role="37wK5m">
                <ref role="3cqZAo" node="NKt6ynoWQb" resolve="repository" />
              </node>
            </node>
            <node concept="37vLTw" id="3KN3A4v3Pk3" role="37wK5m">
              <ref role="3cqZAo" node="NKt6yno_yM" resolve="discoverable" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="NKt6ynoWQ9" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="NKt6ynoWQa" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="NKt6ynoWQb" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="NKt6ynoWQc" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3vKaQO" id="NKt6ynoWQd" role="3clF45">
        <node concept="3uibUv" id="3KN3A4v3Dpo" role="3O5elw">
          <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
          <node concept="16syzq" id="3KN3A4v3Ev5" role="11_B2D">
            <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="NKt6ynoWQf" role="1B3o_S" />
      <node concept="P$JXv" id="3KN3A4vEWNE" role="lGtFl">
        <node concept="TZ5HA" id="3KN3A4vEWNF" role="TZ5H$">
          <node concept="1dT_AC" id="3KN3A4vEWNG" role="1dT_Ay">
            <property role="1dT_AB" value="Discover aspects that belong to languages that are imported in the model." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="500mE4_sngf" role="jymVt" />
    <node concept="3clFb_" id="500mE4_soZN" role="jymVt">
      <property role="TrG5h" value="usedLanguages" />
      <node concept="37vLTG" id="500mE4_sraF" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="500mE4_srzT" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="500mE4_srHu" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="500mE4_ss16" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3clFbS" id="500mE4_soZQ" role="3clF47">
        <node concept="3cpWs8" id="3KN3A4v3Kac" role="3cqZAp">
          <node concept="3cpWsn" id="3KN3A4v3Kad" role="3cpWs9">
            <property role="TrG5h" value="resolver" />
            <node concept="3uibUv" id="3KN3A4v3Jkh" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~ModelDependencyResolver" resolve="ModelDependencyResolver" />
            </node>
            <node concept="2ShNRf" id="3KN3A4v3Kae" role="33vP2m">
              <node concept="1pGfFk" id="3KN3A4v3Kaf" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelDependencyResolver.&lt;init&gt;(jetbrains.mps.smodel.language.LanguageRegistry,org.jetbrains.mps.openapi.module.SRepository)" resolve="ModelDependencyResolver" />
                <node concept="2YIFZM" id="3KN3A4v3Kag" role="37wK5m">
                  <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
                  <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                  <node concept="37vLTw" id="3KN3A4v3Kah" role="37wK5m">
                    <ref role="3cqZAo" node="500mE4_srHu" resolve="repository" />
                  </node>
                </node>
                <node concept="37vLTw" id="3KN3A4v3Kai" role="37wK5m">
                  <ref role="3cqZAo" node="500mE4_srHu" resolve="repository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5lR$kylkWw6" role="3cqZAp">
          <node concept="3cpWsn" id="5lR$kylkWw7" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2hMVRd" id="5lR$kylkVJg" role="1tU5fm">
              <node concept="3uibUv" id="5lR$kylkVJj" role="2hN53Y">
                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
              </node>
            </node>
            <node concept="2ShNRf" id="5lR$kylkWw8" role="33vP2m">
              <node concept="2i4dXS" id="5lR$kylkWw9" role="2ShVmc">
                <node concept="3uibUv" id="5lR$kylkWwa" role="HW$YZ">
                  <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                </node>
                <node concept="2OqwBi" id="5lR$kylkWwb" role="I$8f6">
                  <node concept="37vLTw" id="5lR$kylkWwc" role="2Oq$k0">
                    <ref role="3cqZAo" node="3KN3A4v3Kad" resolve="resolver" />
                  </node>
                  <node concept="liA8E" id="5lR$kylkWwd" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~ModelDependencyResolver.usedLanguages(org.jetbrains.mps.openapi.model.SModel)" resolve="usedLanguages" />
                    <node concept="37vLTw" id="5lR$kylkWwe" role="37wK5m">
                      <ref role="3cqZAo" node="500mE4_sraF" resolve="model" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5lR$kylkY1w" role="3cqZAp">
          <node concept="3clFbS" id="5lR$kylkY1z" role="2LFqv$">
            <node concept="3clFbF" id="5lR$kyll2UV" role="3cqZAp">
              <node concept="2OqwBi" id="5lR$kyll3Kv" role="3clFbG">
                <node concept="37vLTw" id="5lR$kyll2UT" role="2Oq$k0">
                  <ref role="3cqZAo" node="5lR$kylkWw7" resolve="result" />
                </node>
                <node concept="X8dFx" id="5lR$kyll4Ol" role="2OqNvi">
                  <node concept="2OqwBi" id="5lR$kyll59l" role="25WWJ7">
                    <node concept="37vLTw" id="5lR$kyll59m" role="2Oq$k0">
                      <ref role="3cqZAo" node="3KN3A4v3Kad" resolve="resolver" />
                    </node>
                    <node concept="liA8E" id="5lR$kyll59n" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~ModelDependencyResolver.usedLanguages(org.jetbrains.mps.openapi.model.SModel)" resolve="usedLanguages" />
                      <node concept="37vLTw" id="5lR$kyll59o" role="37wK5m">
                        <ref role="3cqZAo" node="5lR$kylkY1$" resolve="m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5lR$kylkY1$" role="1Duv9x">
            <property role="TrG5h" value="m" />
            <node concept="3uibUv" id="5lR$kyll0nJ" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
          </node>
          <node concept="2OqwBi" id="5lR$kylkY1D" role="1DdaDG">
            <node concept="37vLTw" id="5lR$kylkY1E" role="2Oq$k0">
              <ref role="3cqZAo" node="3KN3A4v3Kad" resolve="resolver" />
            </node>
            <node concept="liA8E" id="5lR$kylkY1F" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelDependencyResolver.directImports(org.jetbrains.mps.openapi.model.SModel)" resolve="directImports" />
              <node concept="37vLTw" id="5lR$kylkY1G" role="37wK5m">
                <ref role="3cqZAo" node="500mE4_sraF" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5lR$kyll74u" role="3cqZAp">
          <node concept="3clFbS" id="5lR$kyll74v" role="2LFqv$">
            <node concept="3clFbF" id="5lR$kyll74w" role="3cqZAp">
              <node concept="2OqwBi" id="5lR$kyll74x" role="3clFbG">
                <node concept="37vLTw" id="5lR$kyll74y" role="2Oq$k0">
                  <ref role="3cqZAo" node="5lR$kylkWw7" resolve="result" />
                </node>
                <node concept="X8dFx" id="5lR$kyll74z" role="2OqNvi">
                  <node concept="2OqwBi" id="5lR$kyll74$" role="25WWJ7">
                    <node concept="37vLTw" id="5lR$kyll74_" role="2Oq$k0">
                      <ref role="3cqZAo" node="3KN3A4v3Kad" resolve="resolver" />
                    </node>
                    <node concept="liA8E" id="5lR$kyll74A" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~ModelDependencyResolver.usedLanguages(org.jetbrains.mps.openapi.model.SModel)" resolve="usedLanguages" />
                      <node concept="37vLTw" id="5lR$kyll74B" role="37wK5m">
                        <ref role="3cqZAo" node="5lR$kyll74C" resolve="m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5lR$kyll74C" role="1Duv9x">
            <property role="TrG5h" value="m" />
            <node concept="3uibUv" id="5lR$kyll74D" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
          </node>
          <node concept="2OqwBi" id="5lR$kyll74E" role="1DdaDG">
            <node concept="37vLTw" id="5lR$kyll74F" role="2Oq$k0">
              <ref role="3cqZAo" node="3KN3A4v3Kad" resolve="resolver" />
            </node>
            <node concept="liA8E" id="5lR$kyll74G" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelDependencyResolver.implicitImports(org.jetbrains.mps.openapi.model.SModel)" resolve="implicitImports" />
              <node concept="37vLTw" id="5lR$kyll74H" role="37wK5m">
                <ref role="3cqZAo" node="500mE4_sraF" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5lR$kylkR0f" role="3cqZAp">
          <node concept="37vLTw" id="5lR$kylkWwf" role="3clFbG">
            <ref role="3cqZAo" node="5lR$kylkWw7" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="500mE4_somr" role="1B3o_S" />
      <node concept="3vKaQO" id="500mE4_soVb" role="3clF45">
        <node concept="3uibUv" id="500mE4_sr8u" role="3O5elw">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7mB3viLm$_H" role="jymVt" />
    <node concept="3clFb_" id="4pwDyRBwQ_v" role="jymVt">
      <property role="TrG5h" value="languages" />
      <node concept="37vLTG" id="4pwDyRBx4tZ" role="3clF46">
        <property role="TrG5h" value="slanguages" />
        <node concept="A3Dl8" id="4pwDyRBx4u0" role="1tU5fm">
          <node concept="3uibUv" id="4pwDyRBx4u1" role="A3Ik2">
            <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4pwDyRBwQOt" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="4pwDyRBx8d3" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3Tm6S6" id="4pwDyRBwWaj" role="1B3o_S" />
      <node concept="3clFbS" id="4pwDyRBwQ_z" role="3clF47">
        <node concept="3cpWs8" id="4pwDyRBxhgL" role="3cqZAp">
          <node concept="3cpWsn" id="4pwDyRBxhgM" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2hMVRd" id="4pwDyRBxhgN" role="1tU5fm">
              <node concept="3uibUv" id="4pwDyRBxhgO" role="2hN53Y">
                <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
              </node>
            </node>
            <node concept="2ShNRf" id="4pwDyRBxhgP" role="33vP2m">
              <node concept="2i4dXS" id="4pwDyRBxhgQ" role="2ShVmc">
                <node concept="3uibUv" id="4pwDyRBxhgR" role="HW$YZ">
                  <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="4pwDyRBxlY0" role="3cqZAp">
          <node concept="3clFbS" id="4pwDyRBxlY1" role="2LFqv$">
            <node concept="3cpWs8" id="4pwDyRBxlY2" role="3cqZAp">
              <node concept="3cpWsn" id="4pwDyRBxlY3" role="3cpWs9">
                <property role="TrG5h" value="langrt" />
                <node concept="3uibUv" id="4pwDyRBxlY4" role="1tU5fm">
                  <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                </node>
                <node concept="2OqwBi" id="4pwDyRBxlY5" role="33vP2m">
                  <node concept="2YIFZM" id="4pwDyRBxlY6" role="2Oq$k0">
                    <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
                    <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                    <node concept="37vLTw" id="4pwDyRBxlY7" role="37wK5m">
                      <ref role="3cqZAo" node="4pwDyRBwQOt" resolve="repository" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4pwDyRBxlY8" role="2OqNvi">
                    <ref role="37wK5l" to="vndm:~LanguageRegistry.getLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="getLanguage" />
                    <node concept="37vLTw" id="4pwDyRBxlY9" role="37wK5m">
                      <ref role="3cqZAo" node="4pwDyRBxlYA" resolve="slang" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4pwDyRBxlYa" role="3cqZAp">
              <node concept="3clFbS" id="4pwDyRBxlYb" role="3clFbx">
                <node concept="RRSsy" id="4pwDyRBxlYc" role="3cqZAp">
                  <property role="RRSoG" value="gZ5fksE/warn" />
                  <node concept="3cpWs3" id="4pwDyRBxlYd" role="RRSoy">
                    <node concept="Xl_RD" id="4pwDyRBxlYe" role="3uHU7w">
                      <property role="Xl_RC" value="\&quot;" />
                    </node>
                    <node concept="3cpWs3" id="4pwDyRBxlYf" role="3uHU7B">
                      <node concept="Xl_RD" id="4pwDyRBxlYg" role="3uHU7B">
                        <property role="Xl_RC" value="no language runtime for \&quot;" />
                      </node>
                      <node concept="2OqwBi" id="4pwDyRBxlYh" role="3uHU7w">
                        <node concept="37vLTw" id="4pwDyRBxlYi" role="2Oq$k0">
                          <ref role="3cqZAo" node="4pwDyRBxlYA" resolve="slang" />
                        </node>
                        <node concept="liA8E" id="4pwDyRBxlYj" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName()" resolve="getQualifiedName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4pwDyRBxlYk" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="4pwDyRBxlYl" role="3clFbw">
                <node concept="10Nm6u" id="4pwDyRBxlYm" role="3uHU7w" />
                <node concept="37vLTw" id="4pwDyRBxlYn" role="3uHU7B">
                  <ref role="3cqZAo" node="4pwDyRBxlY3" resolve="langrt" />
                </node>
              </node>
              <node concept="9aQIb" id="4pwDyRBxlYo" role="9aQIa">
                <node concept="3clFbS" id="4pwDyRBxlYp" role="9aQI4">
                  <node concept="3clFbF" id="4pwDyRBxlYq" role="3cqZAp">
                    <node concept="2OqwBi" id="4pwDyRBxlYr" role="3clFbG">
                      <node concept="37vLTw" id="4pwDyRBxnUf" role="2Oq$k0">
                        <ref role="3cqZAo" node="4pwDyRBxhgM" resolve="result" />
                      </node>
                      <node concept="TSZUe" id="4pwDyRBxlYt" role="2OqNvi">
                        <node concept="37vLTw" id="4pwDyRBxlYu" role="25WWJ7">
                          <ref role="3cqZAo" node="4pwDyRBxlY3" resolve="langrt" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4pwDyRBxlYA" role="1Duv9x">
            <property role="TrG5h" value="slang" />
            <node concept="3uibUv" id="4pwDyRBxlYB" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
            </node>
          </node>
          <node concept="37vLTw" id="4pwDyRBxlYC" role="1DdaDG">
            <ref role="3cqZAo" node="4pwDyRBx4tZ" resolve="slanguages" />
          </node>
        </node>
        <node concept="3clFbF" id="4pwDyRBxlUf" role="3cqZAp">
          <node concept="37vLTw" id="4pwDyRBxlUd" role="3clFbG">
            <ref role="3cqZAo" node="4pwDyRBxhgM" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3vKaQO" id="4pwDyRBxi7F" role="3clF45">
        <node concept="3uibUv" id="4pwDyRBxi7G" role="3O5elw">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="NKt6ynosjl" role="jymVt" />
    <node concept="3Tm1VV" id="NKt6ynorWR" role="1B3o_S" />
    <node concept="312cEg" id="NKt6yno_yM" role="jymVt">
      <property role="TrG5h" value="discoverable" />
      <node concept="3Tm6S6" id="NKt6yno_yN" role="1B3o_S" />
      <node concept="3uibUv" id="NKt6yno_yP" role="1tU5fm">
        <ref role="3uigEE" node="NKt6ynom3d" resolve="AspectDiscoverable" />
        <node concept="3uibUv" id="6nx4rRkNkep" role="11_B2D">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
        <node concept="16syzq" id="NKt6ynpxB$" role="11_B2D">
          <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="16euLQ" id="NKt6ynoBYL" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3uibUv" id="NKt6ynoEWH" role="3ztrMU">
        <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="NKt6yomNZE">
    <property role="TrG5h" value="CoderulesAspect" />
    <node concept="2tJIrI" id="NKt6yomOnK" role="jymVt" />
    <node concept="3clFb_" id="5EDW3XF61A_" role="jymVt">
      <property role="TrG5h" value="createManifest" />
      <node concept="3uibUv" id="5EDW3XF61BW" role="3clF45">
        <ref role="3uigEE" node="5EDW3XF5Z95" resolve="AbstractCoderulesManifest" />
      </node>
      <node concept="3Tm1VV" id="5EDW3XF61AB" role="1B3o_S" />
      <node concept="3clFbS" id="5EDW3XF61AC" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5EDW3XF61A$" role="jymVt" />
    <node concept="3Tm1VV" id="NKt6yomNZF" role="1B3o_S" />
    <node concept="3uibUv" id="NKt6yomOn_" role="3HQHJm">
      <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
    </node>
  </node>
  <node concept="312cEu" id="NKt6yp1COZ">
    <property role="TrG5h" value="AbstractCoderulesAspect" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="3KN3A4uZLbU" role="jymVt" />
    <node concept="2YIFZL" id="78H58oefoaA" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="discoverable" />
      <node concept="37vLTG" id="78H58oefoFj" role="3clF46">
        <property role="TrG5h" value="aspectClass" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="78H58oefoHS" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="78H58oefoIS" role="11_B2D">
            <ref role="16sUi3" node="78H58oefoAe" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="78H58oefnLj" role="3clF47">
        <node concept="3clFbH" id="78H58oefoRD" role="3cqZAp" />
        <node concept="3clFbF" id="78H58oefpuN" role="3cqZAp">
          <node concept="2ShNRf" id="78H58oefpuJ" role="3clFbG">
            <node concept="YeOm9" id="78H58oefpDG" role="2ShVmc">
              <node concept="1Y3b0j" id="78H58oefpDJ" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" node="NKt6ynom3d" resolve="AspectDiscoverable" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <node concept="3Tm1VV" id="78H58oefpDK" role="1B3o_S" />
                <node concept="3clFb_" id="78H58oefpDL" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="discover" />
                  <node concept="37vLTG" id="78H58oefpDM" role="3clF46">
                    <property role="TrG5h" value="languageRuntime" />
                    <node concept="3uibUv" id="78H58oefpDN" role="1tU5fm">
                      <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                    </node>
                  </node>
                  <node concept="16syzq" id="78H58oefq5S" role="3clF45">
                    <ref role="16sUi3" node="78H58oefoAe" resolve="T" />
                  </node>
                  <node concept="3Tm1VV" id="78H58oefpDP" role="1B3o_S" />
                  <node concept="3clFbS" id="78H58oefpDR" role="3clF47">
                    <node concept="3cpWs8" id="78H58oefro8" role="3cqZAp">
                      <node concept="3cpWsn" id="78H58oefro9" role="3cpWs9">
                        <property role="TrG5h" value="aspect" />
                        <node concept="16syzq" id="78H58oefrnW" role="1tU5fm">
                          <ref role="16sUi3" node="78H58oefoAe" resolve="T" />
                        </node>
                        <node concept="2OqwBi" id="78H58oefroa" role="33vP2m">
                          <node concept="37vLTw" id="78H58oefrob" role="2Oq$k0">
                            <ref role="3cqZAo" node="78H58oefpDM" resolve="languageRuntime" />
                          </node>
                          <node concept="liA8E" id="78H58oefroc" role="2OqNvi">
                            <ref role="37wK5l" to="vndm:~LanguageRuntime.getAspect(java.lang.Class)" resolve="getAspect" />
                            <node concept="37vLTw" id="78H58oefrod" role="37wK5m">
                              <ref role="3cqZAo" node="78H58oefoFj" resolve="aspectClass" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="78H58oefrrA" role="3cqZAp">
                      <node concept="3clFbS" id="78H58oefrrB" role="3clFbx">
                        <node concept="3clFbJ" id="78H58oefrrC" role="3cqZAp">
                          <node concept="3clFbS" id="78H58oefrrD" role="3clFbx">
                            <node concept="3clFbF" id="78H58oefrrE" role="3cqZAp">
                              <node concept="2OqwBi" id="78H58oefrrF" role="3clFbG">
                                <node concept="37vLTw" id="78H58oefrrG" role="2Oq$k0">
                                  <ref role="3cqZAo" node="78H58oefro9" resolve="aspect" />
                                </node>
                                <node concept="liA8E" id="78H58oefrrH" role="2OqNvi">
                                  <ref role="37wK5l" node="7P_FdVQ2EWw" resolve="setLanguageRuntime" />
                                  <node concept="37vLTw" id="78H58oefrrI" role="37wK5m">
                                    <ref role="3cqZAo" node="78H58oefpDM" resolve="languageRuntime" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbC" id="78H58oefrrJ" role="3clFbw">
                            <node concept="10Nm6u" id="78H58oefrrK" role="3uHU7w" />
                            <node concept="2OqwBi" id="78H58oefrrL" role="3uHU7B">
                              <node concept="37vLTw" id="78H58oefrrM" role="2Oq$k0">
                                <ref role="3cqZAo" node="78H58oefro9" resolve="aspect" />
                              </node>
                              <node concept="liA8E" id="78H58oefrrN" role="2OqNvi">
                                <ref role="37wK5l" node="7P_FdVQ2VEI" resolve="languageRuntime" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3y3z36" id="78H58oefrrO" role="3clFbw">
                        <node concept="10Nm6u" id="78H58oefrrP" role="3uHU7w" />
                        <node concept="37vLTw" id="78H58oefrrQ" role="3uHU7B">
                          <ref role="3cqZAo" node="78H58oefro9" resolve="aspect" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="78H58oefqIz" role="3cqZAp">
                      <node concept="37vLTw" id="78H58oefroe" role="3clFbG">
                        <ref role="3cqZAo" node="78H58oefro9" resolve="aspect" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="6nx4rRkNe56" role="2Ghqu4">
                  <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                </node>
                <node concept="16syzq" id="78H58oefpTf" role="2Ghqu4">
                  <ref role="16sUi3" node="78H58oefoAe" resolve="T" />
                </node>
                <node concept="2tJIrI" id="6nx4rRkM0Py" role="jymVt" />
                <node concept="3clFb_" id="6nx4rRkM0XI" role="jymVt">
                  <property role="TrG5h" value="isSidekick" />
                  <node concept="37vLTG" id="6nx4rRkM0XJ" role="3clF46">
                    <property role="TrG5h" value="sidekick" />
                    <node concept="3uibUv" id="6nx4rRkM0XK" role="1tU5fm">
                      <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="6nx4rRkM0XL" role="3clF46">
                    <property role="TrG5h" value="authority" />
                    <node concept="3uibUv" id="6nx4rRkM0XM" role="1tU5fm">
                      <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                    </node>
                  </node>
                  <node concept="10P_77" id="6nx4rRkM0XN" role="3clF45" />
                  <node concept="3Tm1VV" id="6nx4rRkM0XO" role="1B3o_S" />
                  <node concept="3clFbS" id="6nx4rRkM0XV" role="3clF47">
                    <node concept="3SKdUt" id="6nx4rRkM1dD" role="3cqZAp">
                      <node concept="1PaTwC" id="6nx4rRkM1dE" role="1aUNEU">
                        <node concept="3oM_SD" id="6nx4rRkM1dF" role="1PaTwD">
                          <property role="3oM_SC" value="assuming" />
                        </node>
                        <node concept="3oM_SD" id="6nx4rRkM1dG" role="1PaTwD">
                          <property role="3oM_SC" value="`sidekick`" />
                        </node>
                        <node concept="3oM_SD" id="6nx4rRkM1dH" role="1PaTwD">
                          <property role="3oM_SC" value="extends" />
                        </node>
                        <node concept="3oM_SD" id="6nx4rRkM1dI" role="1PaTwD">
                          <property role="3oM_SC" value="`authority`" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="6nx4rRkM1dJ" role="3cqZAp">
                      <node concept="3cpWsn" id="6nx4rRkM1dK" role="3cpWs9">
                        <property role="TrG5h" value="ans" />
                        <node concept="17QB3L" id="6nx4rRkM1vG" role="1tU5fm" />
                        <node concept="2OqwBi" id="6nx4rRkM1dM" role="33vP2m">
                          <node concept="37vLTw" id="6nx4rRkM1dN" role="2Oq$k0">
                            <ref role="3cqZAo" node="6nx4rRkM0XL" resolve="authority" />
                          </node>
                          <node concept="liA8E" id="6nx4rRkM1dO" role="2OqNvi">
                            <ref role="37wK5l" to="vndm:~LanguageRuntime.getNamespace()" resolve="getNamespace" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="6nx4rRkM1dP" role="3cqZAp">
                      <node concept="3cpWsn" id="6nx4rRkM1dQ" role="3cpWs9">
                        <property role="TrG5h" value="sns" />
                        <node concept="17QB3L" id="6nx4rRkM1Mj" role="1tU5fm" />
                        <node concept="2OqwBi" id="6nx4rRkM1dS" role="33vP2m">
                          <node concept="37vLTw" id="6nx4rRkM1dT" role="2Oq$k0">
                            <ref role="3cqZAo" node="6nx4rRkM0XJ" resolve="sidekick" />
                          </node>
                          <node concept="liA8E" id="6nx4rRkM1dU" role="2OqNvi">
                            <ref role="37wK5l" to="vndm:~LanguageRuntime.getNamespace()" resolve="getNamespace" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="6nx4rRkM1dV" role="3cqZAp">
                      <node concept="1Wc70l" id="6nx4rRkM1dW" role="3cqZAk">
                        <node concept="2OqwBi" id="6nx4rRkM1dX" role="3uHU7B">
                          <node concept="37vLTw" id="6nx4rRkM1dY" role="2Oq$k0">
                            <ref role="3cqZAo" node="6nx4rRkM1dQ" resolve="sns" />
                          </node>
                          <node concept="liA8E" id="6nx4rRkM1dZ" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                            <node concept="37vLTw" id="6nx4rRkM1e0" role="37wK5m">
                              <ref role="3cqZAo" node="6nx4rRkM1dK" resolve="ans" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="6nx4rRkM1e1" role="3uHU7w">
                          <node concept="Xl_RD" id="6nx4rRkM1e2" role="2Oq$k0">
                            <property role="Xl_RC" value="Ext" />
                          </node>
                          <node concept="liA8E" id="6nx4rRkM1e3" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                            <node concept="2OqwBi" id="6nx4rRkM1e4" role="37wK5m">
                              <node concept="37vLTw" id="6nx4rRkM1e5" role="2Oq$k0">
                                <ref role="3cqZAo" node="6nx4rRkM1dQ" resolve="sns" />
                              </node>
                              <node concept="liA8E" id="6nx4rRkM1e6" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                                <node concept="2OqwBi" id="6nx4rRkM1e7" role="37wK5m">
                                  <node concept="37vLTw" id="6nx4rRkM1e8" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6nx4rRkM1dK" resolve="ans" />
                                  </node>
                                  <node concept="liA8E" id="6nx4rRkM1e9" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="6nx4rRkM0XW" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="6nx4rRkOjS5" role="jymVt" />
                <node concept="3clFb_" id="6nx4rRkOk7U" role="jymVt">
                  <property role="TrG5h" value="getExtending" />
                  <node concept="3uibUv" id="6nx4rRkOk7V" role="3clF45">
                    <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                    <node concept="3uibUv" id="6nx4rRkOk84" role="11_B2D">
                      <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="6nx4rRkOk7X" role="1B3o_S" />
                  <node concept="37vLTG" id="6nx4rRkOk7Z" role="3clF46">
                    <property role="TrG5h" value="lang" />
                    <node concept="3uibUv" id="6nx4rRkOk85" role="1tU5fm">
                      <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="6nx4rRkOk86" role="3clF47">
                    <node concept="3clFbF" id="6nx4rRkOla$" role="3cqZAp">
                      <node concept="2OqwBi" id="6nx4rRkOleS" role="3clFbG">
                        <node concept="37vLTw" id="6nx4rRkOlaz" role="2Oq$k0">
                          <ref role="3cqZAo" node="6nx4rRkOk7Z" resolve="lang" />
                        </node>
                        <node concept="liA8E" id="6nx4rRkOlrF" role="2OqNvi">
                          <ref role="37wK5l" to="vndm:~LanguageRuntime.getExtendingLanguages()" resolve="getExtendingLanguages" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="6nx4rRkOk87" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="6nx4rRkOkU6" role="jymVt" />
                <node concept="3clFb_" id="6nx4rRkOk8a" role="jymVt">
                  <property role="TrG5h" value="getExtended" />
                  <node concept="3uibUv" id="6nx4rRkOk8b" role="3clF45">
                    <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                    <node concept="3uibUv" id="6nx4rRkOk8l" role="11_B2D">
                      <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="6nx4rRkOk8d" role="1B3o_S" />
                  <node concept="37vLTG" id="6nx4rRkOk8f" role="3clF46">
                    <property role="TrG5h" value="lang" />
                    <node concept="3uibUv" id="6nx4rRkOk8k" role="1tU5fm">
                      <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="6nx4rRkOk8m" role="3clF47">
                    <node concept="3clFbF" id="6nx4rRkOlwg" role="3cqZAp">
                      <node concept="2OqwBi" id="6nx4rRkOlww" role="3clFbG">
                        <node concept="37vLTw" id="6nx4rRkOlwf" role="2Oq$k0">
                          <ref role="3cqZAo" node="6nx4rRkOk8f" resolve="lang" />
                        </node>
                        <node concept="liA8E" id="6nx4rRkOlCz" role="2OqNvi">
                          <ref role="37wK5l" to="vndm:~LanguageRuntime.getExtendedLanguages()" resolve="getExtendedLanguages" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="6nx4rRkOk8n" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="6nx4rRkOkrG" role="jymVt" />
                <node concept="3clFb_" id="6nx4rRkVEye" role="jymVt">
                  <property role="TrG5h" value="getNamespace" />
                  <node concept="37vLTG" id="6nx4rRkVEyf" role="3clF46">
                    <property role="TrG5h" value="lang" />
                    <node concept="3uibUv" id="6nx4rRkVEyn" role="1tU5fm">
                      <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                    </node>
                  </node>
                  <node concept="17QB3L" id="6nx4rRkVEyh" role="3clF45" />
                  <node concept="3Tm1VV" id="6nx4rRkVEyi" role="1B3o_S" />
                  <node concept="3clFbS" id="6nx4rRkVEyo" role="3clF47">
                    <node concept="3clFbF" id="6nx4rRkVESy" role="3cqZAp">
                      <node concept="2OqwBi" id="6nx4rRkVEWN" role="3clFbG">
                        <node concept="37vLTw" id="6nx4rRkVESx" role="2Oq$k0">
                          <ref role="3cqZAo" node="6nx4rRkVEyf" resolve="lang" />
                        </node>
                        <node concept="liA8E" id="6nx4rRkVFaG" role="2OqNvi">
                          <ref role="37wK5l" to="vndm:~LanguageRuntime.getNamespace()" resolve="getNamespace" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="6nx4rRkVEyp" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="78H58oefoRF" role="3cqZAp" />
      </node>
      <node concept="3uibUv" id="78H58oefqi0" role="3clF45">
        <ref role="3uigEE" node="NKt6ynom3d" resolve="AspectDiscoverable" />
        <node concept="3uibUv" id="6nx4rRkNdEY" role="11_B2D">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
        <node concept="16syzq" id="78H58oefqAI" role="11_B2D">
          <ref role="16sUi3" node="78H58oefoAe" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="78H58oefnLi" role="1B3o_S" />
      <node concept="16euLQ" id="78H58oefoAe" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="78H58oefoCM" role="3ztrMU">
          <ref role="3uigEE" node="NKt6yp1COZ" resolve="AbstractCoderulesAspect" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KN3A4uZLGZ" role="jymVt" />
    <node concept="3clFb_" id="7P_FdVQ2VEI" role="jymVt">
      <property role="TrG5h" value="languageRuntime" />
      <node concept="3uibUv" id="7P_FdVQ2ZEv" role="3clF45">
        <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
      </node>
      <node concept="3Tm1VV" id="NKt6yp3VKr" role="1B3o_S" />
      <node concept="3clFbS" id="7P_FdVQ2VEM" role="3clF47">
        <node concept="3clFbF" id="7P_FdVQ33FW" role="3cqZAp">
          <node concept="2OqwBi" id="7P_FdVQ4dGp" role="3clFbG">
            <node concept="37vLTw" id="7P_FdVQ33FV" role="2Oq$k0">
              <ref role="3cqZAo" node="7P_FdVQ2BHb" resolve="languageRuntime" />
            </node>
            <node concept="liA8E" id="7P_FdVQ4e7J" role="2OqNvi">
              <ref role="37wK5l" to="i5cy:~AtomicReference.get()" resolve="get" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7P_FdVQ30T0" role="jymVt" />
    <node concept="3clFb_" id="7P_FdVQ2EWw" role="jymVt">
      <property role="TrG5h" value="setLanguageRuntime" />
      <node concept="37vLTG" id="7P_FdVQ2PYd" role="3clF46">
        <property role="TrG5h" value="langrt" />
        <node concept="3uibUv" id="7P_FdVQ2Rb$" role="1tU5fm">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="3cqZAl" id="7P_FdVQ2EWy" role="3clF45" />
      <node concept="3Tm1VV" id="NKt6yp3VN1" role="1B3o_S" />
      <node concept="3clFbS" id="7P_FdVQ2EW$" role="3clF47">
        <node concept="3clFbF" id="7P_FdVQ4ekh" role="3cqZAp">
          <node concept="2OqwBi" id="7P_FdVQ4f5G" role="3clFbG">
            <node concept="2OqwBi" id="7P_FdVQ4eue" role="2Oq$k0">
              <node concept="Xjq3P" id="7P_FdVQ4ekf" role="2Oq$k0" />
              <node concept="2OwXpG" id="7P_FdVQ4eLj" role="2OqNvi">
                <ref role="2Oxat5" node="7P_FdVQ2BHb" resolve="languageRuntime" />
              </node>
            </node>
            <node concept="liA8E" id="7P_FdVQ4fZN" role="2OqNvi">
              <ref role="37wK5l" to="i5cy:~AtomicReference.compareAndSet(java.lang.Object,java.lang.Object)" resolve="compareAndSet" />
              <node concept="10Nm6u" id="7P_FdVQ4g7y" role="37wK5m" />
              <node concept="37vLTw" id="7P_FdVQ4gmf" role="37wK5m">
                <ref role="3cqZAo" node="7P_FdVQ2PYd" resolve="langrt" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7P_FdVQ2DqC" role="jymVt" />
    <node concept="312cEg" id="7P_FdVQ2BHb" role="jymVt">
      <property role="TrG5h" value="languageRuntime" />
      <node concept="3Tm6S6" id="7P_FdVQ2BHc" role="1B3o_S" />
      <node concept="3uibUv" id="7P_FdVQ4cOz" role="1tU5fm">
        <ref role="3uigEE" to="i5cy:~AtomicReference" resolve="AtomicReference" />
        <node concept="3uibUv" id="7P_FdVQ4d7k" role="11_B2D">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="2ShNRf" id="7P_FdVQ4diU" role="33vP2m">
        <node concept="1pGfFk" id="7P_FdVQ4dhf" role="2ShVmc">
          <ref role="37wK5l" to="i5cy:~AtomicReference.&lt;init&gt;(java.lang.Object)" resolve="AtomicReference" />
          <node concept="10Nm6u" id="7P_FdVQ4du3" role="37wK5m" />
          <node concept="3uibUv" id="7P_FdVQ4dhg" role="1pMfVU">
            <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="NKt6yp1CQN" role="jymVt" />
    <node concept="3Tm1VV" id="NKt6yp1CP0" role="1B3o_S" />
    <node concept="3uibUv" id="NKt6yp1CQm" role="EKbjA">
      <ref role="3uigEE" node="NKt6yomNZE" resolve="CoderulesAspect" />
    </node>
  </node>
  <node concept="312cEu" id="3KN3A4uUhmW">
    <property role="TrG5h" value="AspectClique" />
    <node concept="2tJIrI" id="3KN3A4uUhpo" role="jymVt" />
    <node concept="2YIFZL" id="3KN3A4uV0IR" role="jymVt">
      <property role="TrG5h" value="discoverAspects" />
      <node concept="37vLTG" id="3KN3A4uXs_t" role="3clF46">
        <property role="TrG5h" value="langs" />
        <node concept="3vKaQO" id="3KN3A4uXs_u" role="1tU5fm">
          <node concept="16syzq" id="6nx4rRkX98g" role="3O5elw">
            <ref role="16sUi3" node="6nx4rRkX8vZ" resolve="L" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3KN3A4uZbi0" role="3clF46">
        <property role="TrG5h" value="discoverable" />
        <node concept="3uibUv" id="3KN3A4uZbi1" role="1tU5fm">
          <ref role="3uigEE" node="NKt6ynom3d" resolve="AspectDiscoverable" />
          <node concept="16syzq" id="6nx4rRkX9Ju" role="11_B2D">
            <ref role="16sUi3" node="6nx4rRkX8vZ" resolve="L" />
          </node>
          <node concept="16syzq" id="3KN3A4uZdw8" role="11_B2D">
            <ref role="16sUi3" node="3KN3A4uXOFp" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3KN3A4uUxNQ" role="3clF47">
        <node concept="3clFbF" id="6nx4rRkNW60" role="3cqZAp">
          <node concept="2OqwBi" id="_tf6vzkwPq" role="3clFbG">
            <node concept="2ShNRf" id="_tf6vzkwPr" role="2Oq$k0">
              <node concept="1pGfFk" id="_tf6vzkwPs" role="2ShVmc">
                <ref role="37wK5l" node="6nx4rRkNNr0" resolve="AspectClique.CliqueBuilder" />
                <node concept="37vLTw" id="_tf6vzkwPt" role="37wK5m">
                  <ref role="3cqZAo" node="3KN3A4uZbi0" resolve="discoverable" />
                </node>
                <node concept="16syzq" id="_tf6vzkwPu" role="1pMfVU">
                  <ref role="16sUi3" node="6nx4rRkX8vZ" resolve="L" />
                </node>
                <node concept="16syzq" id="_tf6vzkwPv" role="1pMfVU">
                  <ref role="16sUi3" node="3KN3A4uXOFp" resolve="T" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="_tf6vzkwPw" role="2OqNvi">
              <ref role="37wK5l" node="6nx4rRkNOva" resolve="buildClique" />
              <node concept="37vLTw" id="_tf6vzkwPx" role="37wK5m">
                <ref role="3cqZAo" node="3KN3A4uXs_t" resolve="langs" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="3KN3A4uZr8O" role="3clF45">
        <node concept="3uibUv" id="3KN3A4uZtra" role="_ZDj9">
          <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
          <node concept="16syzq" id="3KN3A4v3XKe" role="11_B2D">
            <ref role="16sUi3" node="3KN3A4uXOFp" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3KN3A4uZv9Z" role="1B3o_S" />
      <node concept="16euLQ" id="6nx4rRkX8vZ" role="16eVyc">
        <property role="TrG5h" value="L" />
      </node>
      <node concept="16euLQ" id="3KN3A4uXOFp" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="3KN3A4uXPAE" role="3ztrMU">
          <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
        </node>
      </node>
      <node concept="P$JXv" id="3KN3A4uY2Ly" role="lGtFl">
        <node concept="TZ5HA" id="3KN3A4uY2Lz" role="TZ5H$">
          <node concept="1dT_AC" id="3KN3A4uY2L$" role="1dT_Ay">
            <property role="1dT_AB" value="Languages here are expected to be directly imported." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KN3A4uYPy1" role="jymVt" />
    <node concept="3clFb_" id="4ekZiHe4j$O" role="jymVt">
      <property role="TrG5h" value="isEmpty" />
      <node concept="10P_77" id="4ekZiHe4m6f" role="3clF45" />
      <node concept="3Tm1VV" id="4ekZiHe4j$R" role="1B3o_S" />
      <node concept="3clFbS" id="4ekZiHe4j$S" role="3clF47">
        <node concept="3clFbF" id="4ekZiHe4ukw" role="3cqZAp">
          <node concept="2OqwBi" id="4ekZiHe4vpn" role="3clFbG">
            <node concept="37vLTw" id="4ekZiHe4ukv" role="2Oq$k0">
              <ref role="3cqZAo" node="3KN3A4uXGOp" resolve="aspects" />
            </node>
            <node concept="1v1jN8" id="4ekZiHe4wwk" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4ekZiHe4hfn" role="jymVt" />
    <node concept="3clFb_" id="3KN3A4uUhpW" role="jymVt">
      <property role="TrG5h" value="aspects" />
      <node concept="_YKpA" id="3KN3A4uUhtj" role="3clF45">
        <node concept="16syzq" id="_tf6vzf9Zd" role="_ZDj9">
          <ref role="16sUi3" node="3KN3A4uUhop" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3KN3A4uUhpZ" role="1B3o_S" />
      <node concept="3clFbS" id="3KN3A4uUhq0" role="3clF47">
        <node concept="3clFbF" id="3KN3A4uXJdv" role="3cqZAp">
          <node concept="37vLTw" id="3KN3A4uXJdu" role="3clFbG">
            <ref role="3cqZAo" node="3KN3A4uXGOp" resolve="aspects" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="3KN3A4uUhu7" role="lGtFl">
        <node concept="TZ5HA" id="3KN3A4uUhu8" role="TZ5H$">
          <node concept="1dT_AC" id="3KN3A4uUhu9" role="1dT_Ay">
            <property role="1dT_AB" value="List of aspects in this clique sorted from most specific to most abstract." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KN3A4vyYmz" role="jymVt" />
    <node concept="3clFb_" id="5MNibEMUCXK" role="jymVt">
      <property role="TrG5h" value="uniqueKey" />
      <node concept="3uibUv" id="5MNibEMUHth" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="5MNibEMUCXN" role="1B3o_S" />
      <node concept="3clFbS" id="5MNibEMUCXO" role="3clF47">
        <node concept="3clFbF" id="5MNibEMUYdW" role="3cqZAp">
          <node concept="37vLTw" id="5MNibEMUYdV" role="3clFbG">
            <ref role="3cqZAo" node="5MNibEMUq5h" resolve="namespaceBits" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1PixfKRoPK5" role="jymVt" />
    <node concept="3clFb_" id="1PixfKRp5_w" role="jymVt">
      <property role="TrG5h" value="coversNamespace" />
      <node concept="3clFbS" id="1PixfKRp5_z" role="3clF47">
        <node concept="3clFbF" id="66WUpTIuY1g" role="3cqZAp">
          <node concept="2OqwBi" id="66WUpTIuZYq" role="3clFbG">
            <node concept="37vLTw" id="66WUpTIuY1f" role="2Oq$k0">
              <ref role="3cqZAo" node="66WUpTItD1B" resolve="coveredNamespaces" />
            </node>
            <node concept="3JPx81" id="66WUpTIv1aa" role="2OqNvi">
              <node concept="37vLTw" id="66WUpTIv1Jm" role="25WWJ7">
                <ref role="3cqZAo" node="1PixfKRpaZJ" resolve="langNamespace" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1PixfKRoZeG" role="1B3o_S" />
      <node concept="10P_77" id="1PixfKRp4Bx" role="3clF45" />
      <node concept="37vLTG" id="1PixfKRpaZJ" role="3clF46">
        <property role="TrG5h" value="langNamespace" />
        <node concept="17QB3L" id="1PixfKRpaZI" role="1tU5fm" />
      </node>
      <node concept="P$JXv" id="5rVYEA67gi7" role="lGtFl">
        <node concept="TZ5HA" id="5rVYEA67gi8" role="TZ5H$">
          <node concept="1dT_AC" id="5rVYEA67gi9" role="1dT_Ay">
            <property role="1dT_AB" value="Checks whether this aspect clique has aspects from specified namespace," />
          </node>
        </node>
        <node concept="TZ5HA" id="5rVYEA67kM1" role="TZ5H$">
          <node concept="1dT_AC" id="5rVYEA67kM2" role="1dT_Ay">
            <property role="1dT_AB" value="in other words, whether this aspect clique is relevant for the namespace." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="_tf6vySPdi" role="jymVt" />
    <node concept="3clFb_" id="_tf6vySXzF" role="jymVt">
      <property role="TrG5h" value="allNamespaces" />
      <node concept="3vKaQO" id="_tf6vyT5uv" role="3clF45">
        <node concept="17QB3L" id="_tf6vyTd2_" role="3O5elw" />
      </node>
      <node concept="3Tm1VV" id="_tf6vySXzI" role="1B3o_S" />
      <node concept="3clFbS" id="_tf6vySXzJ" role="3clF47">
        <node concept="3clFbF" id="_tf6vyTztx" role="3cqZAp">
          <node concept="2OqwBi" id="_tf6vyT$z7" role="3clFbG">
            <node concept="37vLTw" id="_tf6vyTztu" role="2Oq$k0">
              <ref role="3cqZAo" node="66WUpTItD1B" resolve="coveredNamespaces" />
            </node>
            <node concept="26Dbio" id="_tf6vyT_Sr" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5MNibEMU$Hc" role="jymVt" />
    <node concept="3clFb_" id="4ekZiHe6La7" role="jymVt">
      <property role="TrG5h" value="toString" />
      <node concept="3Tm1VV" id="4ekZiHe6La8" role="1B3o_S" />
      <node concept="3uibUv" id="4ekZiHe6Laa" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="4ekZiHe6Lab" role="3clF47">
        <node concept="3clFbF" id="4ekZiHe6U4V" role="3cqZAp">
          <node concept="3cpWs3" id="4ekZiHe6Xb8" role="3clFbG">
            <node concept="3cpWs3" id="4ekZiHe6Ujl" role="3uHU7B">
              <node concept="Xl_RD" id="4ekZiHe6U4U" role="3uHU7B">
                <property role="Xl_RC" value="Clique(" />
              </node>
              <node concept="2OqwBi" id="3Vcd0FoqGCx" role="3uHU7w">
                <node concept="37vLTw" id="3Vcd0FoqGCy" role="2Oq$k0">
                  <ref role="3cqZAo" node="66WUpTItD1B" resolve="coveredNamespaces" />
                </node>
                <node concept="3uJxvA" id="3Vcd0FoqGCz" role="2OqNvi">
                  <node concept="Xl_RD" id="3Vcd0FoqGC$" role="3uJOhx">
                    <property role="Xl_RC" value=", " />
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="4ekZiHe6XE5" role="3uHU7w">
              <property role="Xl_RC" value=")" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4ekZiHe6Lac" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4ekZiHe6Qdr" role="jymVt" />
    <node concept="3clFbW" id="3KN3A4uXEXp" role="jymVt">
      <node concept="37vLTG" id="3KN3A4uXGrt" role="3clF46">
        <property role="TrG5h" value="aspects" />
        <node concept="3vKaQO" id="6nx4rRkV8q0" role="1tU5fm">
          <node concept="16syzq" id="_tf6vzfb6Z" role="3O5elw">
            <ref role="16sUi3" node="3KN3A4uUhop" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3KN3A4vyU9k" role="3clF46">
        <property role="TrG5h" value="namespaces" />
        <node concept="3vKaQO" id="6nx4rRkV9AP" role="1tU5fm">
          <node concept="17QB3L" id="6nx4rRkV9AR" role="3O5elw" />
        </node>
      </node>
      <node concept="3cqZAl" id="3KN3A4uXEXr" role="3clF45" />
      <node concept="3Tm6S6" id="3KN3A4uXGh$" role="1B3o_S" />
      <node concept="3clFbS" id="3KN3A4uXEXt" role="3clF47">
        <node concept="3clFbF" id="3KN3A4uXGOu" role="3cqZAp">
          <node concept="2OqwBi" id="4ekZiHe4wHC" role="3clFbG">
            <node concept="2OqwBi" id="3KN3A4uXKFr" role="2Oq$k0">
              <node concept="Xjq3P" id="3KN3A4uXKGU" role="2Oq$k0" />
              <node concept="2OwXpG" id="3KN3A4uXKFu" role="2OqNvi">
                <ref role="2Oxat5" node="3KN3A4uXGOp" resolve="aspects" />
              </node>
            </node>
            <node concept="X8dFx" id="4ekZiHe4wVk" role="2OqNvi">
              <node concept="37vLTw" id="4ekZiHe4yzH" role="25WWJ7">
                <ref role="3cqZAo" node="3KN3A4uXGrt" resolve="aspects" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5MNibEMUzWB" role="3cqZAp">
          <node concept="3clFbS" id="5MNibEMUzWE" role="2LFqv$">
            <node concept="3clFbF" id="5MNibEMV06o" role="3cqZAp">
              <node concept="2OqwBi" id="5MNibEMV0Ke" role="3clFbG">
                <node concept="37vLTw" id="5MNibEMV06n" role="2Oq$k0">
                  <ref role="3cqZAo" node="5MNibEMUq5h" resolve="namespaceBits" />
                </node>
                <node concept="liA8E" id="5MNibEMV1pd" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~BitSet.set(int)" resolve="set" />
                  <node concept="1rXfSq" id="5MNibEMV1uY" role="37wK5m">
                    <ref role="37wK5l" node="5MNibEMTTHy" resolve="namespaceId" />
                    <node concept="37vLTw" id="5MNibEMV3t9" role="37wK5m">
                      <ref role="3cqZAo" node="5MNibEMUzWF" resolve="ns" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5MNibEMUzWF" role="1Duv9x">
            <property role="TrG5h" value="ns" />
            <node concept="17QB3L" id="5MNibEMUzWJ" role="1tU5fm" />
          </node>
          <node concept="37vLTw" id="5MNibEMUzWK" role="1DdaDG">
            <ref role="3cqZAo" node="3KN3A4vyU9k" resolve="namespaces" />
          </node>
        </node>
        <node concept="3clFbF" id="_tf6vzetZz" role="3cqZAp">
          <node concept="2OqwBi" id="_tf6vzevGL" role="3clFbG">
            <node concept="37vLTw" id="_tf6vzetZx" role="2Oq$k0">
              <ref role="3cqZAo" node="66WUpTItD1B" resolve="coveredNamespaces" />
            </node>
            <node concept="X8dFx" id="_tf6vzewwi" role="2OqNvi">
              <node concept="37vLTw" id="_tf6vze_SF" role="25WWJ7">
                <ref role="3cqZAo" node="3KN3A4vyU9k" resolve="namespaces" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3Vcd0Fo6guz" role="jymVt" />
    <node concept="3clFbW" id="7u0sJ20M14I" role="jymVt">
      <node concept="3cqZAl" id="7u0sJ20M14J" role="3clF45" />
      <node concept="3clFbS" id="7u0sJ20M14L" role="3clF47">
        <node concept="3SKdUt" id="7u0sJ20MykV" role="3cqZAp">
          <node concept="1PaTwC" id="7u0sJ20MykW" role="1aUNEU">
            <node concept="3oM_SD" id="7u0sJ20Mylm" role="1PaTwD">
              <property role="3oM_SC" value="empty" />
            </node>
            <node concept="3oM_SD" id="7u0sJ20Mylw" role="1PaTwD">
              <property role="3oM_SC" value="clique" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7u0sJ20LT7t" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3KN3A4uV5kV" role="jymVt" />
    <node concept="312cEu" id="6nx4rRkNE1x" role="jymVt">
      <property role="TrG5h" value="CliqueBuilder" />
      <node concept="2tJIrI" id="6nx4rRkNSlP" role="jymVt" />
      <node concept="3clFbW" id="6nx4rRkNNr0" role="jymVt">
        <node concept="37vLTG" id="6nx4rRkNR02" role="3clF46">
          <property role="TrG5h" value="discoverable" />
          <node concept="3uibUv" id="6nx4rRkNR0E" role="1tU5fm">
            <ref role="3uigEE" node="NKt6ynom3d" resolve="AspectDiscoverable" />
            <node concept="16syzq" id="6nx4rRkNRyg" role="11_B2D">
              <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
            </node>
            <node concept="16syzq" id="6nx4rRkNRyW" role="11_B2D">
              <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="6nx4rRkNNr2" role="3clF45" />
        <node concept="3Tm6S6" id="6nx4rRkNNr3" role="1B3o_S" />
        <node concept="3clFbS" id="6nx4rRkNNr4" role="3clF47">
          <node concept="3clFbF" id="6nx4rRkNR$o" role="3cqZAp">
            <node concept="37vLTI" id="6nx4rRkNR$q" role="3clFbG">
              <node concept="2OqwBi" id="6nx4rRkNSdE" role="37vLTJ">
                <node concept="Xjq3P" id="6nx4rRkNSgw" role="2Oq$k0" />
                <node concept="2OwXpG" id="6nx4rRkNSdH" role="2OqNvi">
                  <ref role="2Oxat5" node="6nx4rRkNR$i" resolve="discoverable" />
                </node>
              </node>
              <node concept="37vLTw" id="6nx4rRkNR$u" role="37vLTx">
                <ref role="3cqZAo" node="6nx4rRkNR02" resolve="discoverable" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6nx4rRkNMSV" role="jymVt" />
      <node concept="3clFb_" id="6nx4rRkNOva" role="jymVt">
        <property role="TrG5h" value="buildClique" />
        <node concept="37vLTG" id="6nx4rRkO4u0" role="3clF46">
          <property role="TrG5h" value="inputLangs" />
          <node concept="3vKaQO" id="6nx4rRkO52M" role="1tU5fm">
            <node concept="16syzq" id="6nx4rRkO53r" role="3O5elw">
              <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
            </node>
          </node>
        </node>
        <node concept="3Tmbuc" id="6nx4rRkO7ih" role="1B3o_S" />
        <node concept="3clFbS" id="6nx4rRkNOve" role="3clF47">
          <node concept="3clFbH" id="_tf6vzoUXy" role="3cqZAp" />
          <node concept="3SKdUt" id="_tf6v$hmgw" role="3cqZAp">
            <node concept="1PaTwC" id="_tf6v$hmgx" role="1aUNEU">
              <node concept="3oM_SD" id="_tf6v$hmgz" role="1PaTwD">
                <property role="3oM_SC" value="build" />
              </node>
              <node concept="3oM_SD" id="_tf6v$hstz" role="1PaTwD">
                <property role="3oM_SC" value="effective" />
              </node>
              <node concept="3oM_SD" id="_tf6v$hsu$" role="1PaTwD">
                <property role="3oM_SC" value="set" />
              </node>
              <node concept="3oM_SD" id="_tf6v$hsv3" role="1PaTwD">
                <property role="3oM_SC" value="of" />
              </node>
              <node concept="3oM_SD" id="_tf6v$hsvz" role="1PaTwD">
                <property role="3oM_SC" value="languages" />
              </node>
              <node concept="3oM_SD" id="_tf6v$hsxl" role="1PaTwD">
                <property role="3oM_SC" value="including" />
              </node>
              <node concept="3oM_SD" id="_tf6v$hszg" role="1PaTwD">
                <property role="3oM_SC" value="all" />
              </node>
              <node concept="3oM_SD" id="_tf6v$hszN" role="1PaTwD">
                <property role="3oM_SC" value="sidekicks" />
              </node>
              <node concept="3oM_SD" id="_tf6v$hsC1" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="_tf6v$hsD1" role="1PaTwD">
                <property role="3oM_SC" value="extended" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6vz3EWc" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vz3EWd" role="3cpWs9">
              <property role="TrG5h" value="queue" />
              <node concept="3O6Q9H" id="_tf6vznR76" role="1tU5fm">
                <node concept="16syzq" id="_tf6vznR78" role="3O5elw">
                  <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                </node>
              </node>
              <node concept="2ShNRf" id="_tf6vz3EWe" role="33vP2m">
                <node concept="2Jqq0_" id="_tf6vz3EWf" role="2ShVmc">
                  <node concept="16syzq" id="_tf6vz3EWg" role="HW$YZ">
                    <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                  </node>
                  <node concept="37vLTw" id="_tf6vznY7V" role="I$8f6">
                    <ref role="3cqZAo" node="6nx4rRkO4u0" resolve="inputLangs" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6vz2S13" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6vz2S14" role="3cpWs9">
              <property role="TrG5h" value="effectiveLangs" />
              <node concept="2hMVRd" id="_tf6vz2Rkw" role="1tU5fm">
                <node concept="16syzq" id="_tf6vz2Rkz" role="2hN53Y">
                  <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                </node>
              </node>
              <node concept="2ShNRf" id="_tf6vz2S15" role="33vP2m">
                <node concept="2i4dXS" id="_tf6vz2S16" role="2ShVmc">
                  <node concept="16syzq" id="_tf6vz2S17" role="HW$YZ">
                    <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="_tf6v$5RzG" role="3cqZAp">
            <node concept="3cpWsn" id="_tf6v$5RzH" role="3cpWs9">
              <property role="TrG5h" value="lang2sidekick" />
              <node concept="3rvAFt" id="_tf6v$5QUd" role="1tU5fm">
                <node concept="16syzq" id="_tf6v$5QUj" role="3rvQeY">
                  <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                </node>
                <node concept="16syzq" id="_tf6v$5QUi" role="3rvSg0">
                  <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                </node>
              </node>
              <node concept="2ShNRf" id="_tf6v$5RzI" role="33vP2m">
                <node concept="3rGOSV" id="_tf6v$5RzJ" role="2ShVmc">
                  <node concept="16syzq" id="_tf6v$5RzK" role="3rHrn6">
                    <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                  </node>
                  <node concept="16syzq" id="_tf6v$5RzL" role="3rHtpV">
                    <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2$JKZl" id="_tf6vz49hX" role="3cqZAp">
            <node concept="3clFbS" id="_tf6vz49hZ" role="2LFqv$">
              <node concept="3cpWs8" id="_tf6vz4d91" role="3cqZAp">
                <node concept="3cpWsn" id="_tf6vz4d92" role="3cpWs9">
                  <property role="TrG5h" value="lang" />
                  <node concept="16syzq" id="_tf6vz4d82" role="1tU5fm">
                    <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                  </node>
                  <node concept="2OqwBi" id="_tf6vz4d93" role="33vP2m">
                    <node concept="37vLTw" id="_tf6vz4d94" role="2Oq$k0">
                      <ref role="3cqZAo" node="_tf6vz3EWd" resolve="queue" />
                    </node>
                    <node concept="2Kt2Hk" id="_tf6vzog2Y" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="_tf6vz4mOa" role="3cqZAp">
                <node concept="3clFbS" id="_tf6vz4mOc" role="3clFbx">
                  <node concept="3clFbF" id="_tf6vz43zc" role="3cqZAp">
                    <node concept="2OqwBi" id="_tf6vz4438" role="3clFbG">
                      <node concept="37vLTw" id="_tf6vz43za" role="2Oq$k0">
                        <ref role="3cqZAo" node="_tf6vz2S14" resolve="effectiveLangs" />
                      </node>
                      <node concept="TSZUe" id="_tf6vz44Q2" role="2OqNvi">
                        <node concept="37vLTw" id="_tf6vzogJR" role="25WWJ7">
                          <ref role="3cqZAo" node="_tf6vz4d92" resolve="lang" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1DcWWT" id="_tf6v$4NnA" role="3cqZAp">
                    <node concept="3clFbS" id="_tf6v$4NnB" role="2LFqv$">
                      <node concept="3clFbJ" id="_tf6v$4NnC" role="3cqZAp">
                        <node concept="2OqwBi" id="_tf6v$4NnD" role="3clFbw">
                          <node concept="37vLTw" id="_tf6v$4NnE" role="2Oq$k0">
                            <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
                          </node>
                          <node concept="liA8E" id="_tf6v$4NnF" role="2OqNvi">
                            <ref role="37wK5l" node="6nx4rRkLZr6" resolve="isSidekick" />
                            <node concept="37vLTw" id="_tf6v$4NnG" role="37wK5m">
                              <ref role="3cqZAo" node="_tf6v$4NnO" resolve="spec" />
                            </node>
                            <node concept="37vLTw" id="_tf6v$4OKj" role="37wK5m">
                              <ref role="3cqZAo" node="_tf6vz4d92" resolve="lang" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="_tf6v$4NnI" role="3clFbx">
                          <node concept="3clFbF" id="_tf6v$7hXr" role="3cqZAp">
                            <node concept="2OqwBi" id="_tf6v$7iKK" role="3clFbG">
                              <node concept="37vLTw" id="_tf6v$7hXq" role="2Oq$k0">
                                <ref role="3cqZAo" node="_tf6vz3EWd" resolve="queue" />
                              </node>
                              <node concept="2Ke9KJ" id="_tf6v$7jhv" role="2OqNvi">
                                <node concept="37vLTw" id="_tf6v$7jCk" role="25WWJ7">
                                  <ref role="3cqZAo" node="_tf6v$4NnO" resolve="spec" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWsn" id="_tf6v$4NnO" role="1Duv9x">
                      <property role="TrG5h" value="spec" />
                      <node concept="16syzq" id="_tf6v$4NnP" role="1tU5fm">
                        <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="_tf6v$4NnQ" role="1DdaDG">
                      <node concept="37vLTw" id="_tf6v$4NnR" role="2Oq$k0">
                        <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
                      </node>
                      <node concept="liA8E" id="_tf6v$4NnS" role="2OqNvi">
                        <ref role="37wK5l" node="6nx4rRkOiUG" resolve="getExtending" />
                        <node concept="37vLTw" id="_tf6v$4Oxi" role="37wK5m">
                          <ref role="3cqZAo" node="_tf6vz4d92" resolve="lang" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1DcWWT" id="_tf6vzu$5a" role="3cqZAp">
                    <node concept="3clFbS" id="_tf6vzu$5d" role="2LFqv$">
                      <node concept="3clFbJ" id="_tf6v$5fgW" role="3cqZAp">
                        <node concept="2OqwBi" id="_tf6v$5fgX" role="3clFbw">
                          <node concept="37vLTw" id="_tf6v$5fgY" role="2Oq$k0">
                            <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
                          </node>
                          <node concept="liA8E" id="_tf6v$5fgZ" role="2OqNvi">
                            <ref role="37wK5l" node="6nx4rRkLZr6" resolve="isSidekick" />
                            <node concept="37vLTw" id="_tf6v$5fh1" role="37wK5m">
                              <ref role="3cqZAo" node="_tf6vz4d92" resolve="lang" />
                            </node>
                            <node concept="37vLTw" id="_tf6v$5muH" role="37wK5m">
                              <ref role="3cqZAo" node="_tf6vzu$5e" resolve="abs" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="_tf6v$5fh2" role="3clFbx">
                          <node concept="3clFbF" id="_tf6v$69U0" role="3cqZAp">
                            <node concept="37vLTI" id="_tf6v$6aOO" role="3clFbG">
                              <node concept="37vLTw" id="_tf6v$6b8o" role="37vLTx">
                                <ref role="3cqZAo" node="_tf6vz4d92" resolve="lang" />
                              </node>
                              <node concept="3EllGN" id="_tf6v$6arI" role="37vLTJ">
                                <node concept="37vLTw" id="_tf6v$6aJE" role="3ElVtu">
                                  <ref role="3cqZAo" node="_tf6vzu$5e" resolve="abs" />
                                </node>
                                <node concept="37vLTw" id="_tf6v$69TY" role="3ElQJh">
                                  <ref role="3cqZAo" node="_tf6v$5RzH" resolve="lang2sidekick" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="_tf6vzuBBj" role="3cqZAp">
                        <node concept="2OqwBi" id="_tf6vzuDhI" role="3clFbG">
                          <node concept="37vLTw" id="_tf6vzuBBh" role="2Oq$k0">
                            <ref role="3cqZAo" node="_tf6vz3EWd" resolve="queue" />
                          </node>
                          <node concept="2Ke9KJ" id="_tf6vzuDA3" role="2OqNvi">
                            <node concept="37vLTw" id="_tf6vzuDFD" role="25WWJ7">
                              <ref role="3cqZAo" node="_tf6vzu$5e" resolve="abs" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWsn" id="_tf6vzu$5e" role="1Duv9x">
                      <property role="TrG5h" value="abs" />
                      <node concept="16syzq" id="_tf6vzu$5i" role="1tU5fm">
                        <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="_tf6vzu$5j" role="1DdaDG">
                      <node concept="37vLTw" id="_tf6vzu$5k" role="2Oq$k0">
                        <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
                      </node>
                      <node concept="liA8E" id="_tf6vzu$5l" role="2OqNvi">
                        <ref role="37wK5l" node="6nx4rRkOj1Y" resolve="getExtended" />
                        <node concept="37vLTw" id="_tf6vzu$5m" role="37wK5m">
                          <ref role="3cqZAo" node="_tf6vz4d92" resolve="lang" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="_tf6vz4pi5" role="3clFbw">
                  <node concept="2OqwBi" id="_tf6vz4pi7" role="3fr31v">
                    <node concept="37vLTw" id="_tf6vz4pi8" role="2Oq$k0">
                      <ref role="3cqZAo" node="_tf6vz2S14" resolve="effectiveLangs" />
                    </node>
                    <node concept="3JPx81" id="_tf6vz4pi9" role="2OqNvi">
                      <node concept="37vLTw" id="_tf6vz4pia" role="25WWJ7">
                        <ref role="3cqZAo" node="_tf6vz4d92" resolve="lang" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="_tf6vz4av7" role="2$JKZa">
              <node concept="37vLTw" id="_tf6vz49lb" role="2Oq$k0">
                <ref role="3cqZAo" node="_tf6vz3EWd" resolve="queue" />
              </node>
              <node concept="3GX2aA" id="_tf6vz4bsX" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbH" id="_tf6v$9e$Z" role="3cqZAp" />
          <node concept="3SKdUt" id="3KN3A4uY8wz" role="3cqZAp">
            <node concept="1PaTwC" id="3KN3A4uY8w$" role="1aUNEU">
              <node concept="3oM_SD" id="3KN3A4uYa3M" role="1PaTwD">
                <property role="3oM_SC" value="graph" />
              </node>
              <node concept="3oM_SD" id="3KN3A4uYa3W" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="3KN3A4uYa4v" role="1PaTwD">
                <property role="3oM_SC" value="contain" />
              </node>
              <node concept="3oM_SD" id="3KN3A4uYa4F" role="1PaTwD">
                <property role="3oM_SC" value="all" />
              </node>
              <node concept="3oM_SD" id="3KN3A4uYa4K" role="1PaTwD">
                <property role="3oM_SC" value="languages" />
              </node>
              <node concept="3oM_SD" id="3KN3A4uYa4Y" role="1PaTwD">
                <property role="3oM_SC" value="related" />
              </node>
              <node concept="3oM_SD" id="3KN3A4uYa5t" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="3KN3A4uYa5P" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="3KN3A4uYa66" role="1PaTwD">
                <property role="3oM_SC" value="ones" />
              </node>
              <node concept="3oM_SD" id="3KN3A4uYa6g" role="1PaTwD">
                <property role="3oM_SC" value="in" />
              </node>
              <node concept="3oM_SD" id="3KN3A4uYa6r" role="1PaTwD">
                <property role="3oM_SC" value="&quot;langs&quot;" />
              </node>
              <node concept="3oM_SD" id="3ySbbJms4SQ" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="3ySbbJms4T3" role="1PaTwD">
                <property role="3oM_SC" value="their" />
              </node>
              <node concept="3oM_SD" id="3ySbbJms4Th" role="1PaTwD">
                <property role="3oM_SC" value="sidekicked" />
              </node>
              <node concept="3oM_SD" id="3ySbbJms4Ug" role="1PaTwD">
                <property role="3oM_SC" value="langs" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3KN3A4uXg$y" role="3cqZAp">
            <node concept="3cpWsn" id="3KN3A4uXg$_" role="3cpWs9">
              <property role="TrG5h" value="graph" />
              <node concept="3rvAFt" id="3KN3A4uXg$B" role="1tU5fm">
                <node concept="16syzq" id="6nx4rRkOsdu" role="3rvQeY">
                  <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                </node>
                <node concept="3uibUv" id="3KN3A4uXg$D" role="3rvSg0">
                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                </node>
              </node>
              <node concept="2ShNRf" id="3KN3A4uXoWl" role="33vP2m">
                <node concept="3rGOSV" id="3KN3A4uXiv9" role="2ShVmc">
                  <node concept="16syzq" id="6nx4rRkOt0X" role="3rHrn6">
                    <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                  </node>
                  <node concept="3uibUv" id="3KN3A4uXivb" role="3rHtpV">
                    <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="3ySbbJmrqJ0" role="3cqZAp">
            <node concept="3clFbS" id="3ySbbJmrqJ1" role="2LFqv$">
              <node concept="3clFbJ" id="_tf6v$6dho" role="3cqZAp">
                <node concept="3clFbS" id="_tf6v$6dhq" role="3clFbx">
                  <node concept="3N13vt" id="_tf6v$7m7s" role="3cqZAp" />
                </node>
                <node concept="2OqwBi" id="_tf6v$7lnH" role="3clFbw">
                  <node concept="2OqwBi" id="_tf6v$7kxy" role="2Oq$k0">
                    <node concept="37vLTw" id="_tf6v$7jV5" role="2Oq$k0">
                      <ref role="3cqZAo" node="_tf6v$5RzH" resolve="lang2sidekick" />
                    </node>
                    <node concept="T8wYR" id="_tf6v$7l6R" role="2OqNvi" />
                  </node>
                  <node concept="3JPx81" id="_tf6v$7lUp" role="2OqNvi">
                    <node concept="37vLTw" id="_tf6v$7lYy" role="25WWJ7">
                      <ref role="3cqZAo" node="3ySbbJmrqJM" resolve="lang" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="_tf6vz5df9" role="3cqZAp">
                <node concept="3cpWsn" id="_tf6vz5dfa" role="3cpWs9">
                  <property role="TrG5h" value="sidekick" />
                  <node concept="16syzq" id="_tf6vz5dcg" role="1tU5fm">
                    <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                  </node>
                  <node concept="3EllGN" id="_tf6v$7niz" role="33vP2m">
                    <node concept="37vLTw" id="_tf6v$7nCD" role="3ElVtu">
                      <ref role="3cqZAo" node="3ySbbJmrqJM" resolve="lang" />
                    </node>
                    <node concept="37vLTw" id="_tf6v$7mBQ" role="3ElQJh">
                      <ref role="3cqZAo" node="_tf6v$5RzH" resolve="lang2sidekick" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="_tf6vze9yS" role="3cqZAp">
                <node concept="3cpWsn" id="_tf6vze9yT" role="3cpWs9">
                  <property role="TrG5h" value="aspect" />
                  <node concept="16syzq" id="_tf6vze9yU" role="1tU5fm">
                    <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
                  </node>
                  <node concept="2OqwBi" id="_tf6vze9yV" role="33vP2m">
                    <node concept="37vLTw" id="_tf6vze9yW" role="2Oq$k0">
                      <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
                    </node>
                    <node concept="liA8E" id="_tf6vze9yX" role="2OqNvi">
                      <ref role="37wK5l" node="NKt6ynombB" resolve="discover" />
                      <node concept="37vLTw" id="_tf6vzebKL" role="37wK5m">
                        <ref role="3cqZAo" node="3ySbbJmrqJM" resolve="lang" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="_tf6vze9z1" role="3cqZAp">
                <node concept="3clFbS" id="_tf6vze9z2" role="3clFbx">
                  <node concept="3clFbF" id="_tf6vze9z3" role="3cqZAp">
                    <node concept="37vLTI" id="_tf6vze9z4" role="3clFbG">
                      <node concept="2OqwBi" id="_tf6vze9z5" role="37vLTx">
                        <node concept="37vLTw" id="_tf6vze9z6" role="2Oq$k0">
                          <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
                        </node>
                        <node concept="liA8E" id="_tf6vze9z7" role="2OqNvi">
                          <ref role="37wK5l" node="NKt6ynombB" resolve="discover" />
                          <node concept="37vLTw" id="_tf6vzecQB" role="37wK5m">
                            <ref role="3cqZAo" node="_tf6vz5dfa" resolve="sidekick" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="_tf6vze9zb" role="37vLTJ">
                        <ref role="3cqZAo" node="_tf6vze9yT" resolve="aspect" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="_tf6vze9zc" role="3clFbw">
                  <node concept="3y3z36" id="_tf6vze9zd" role="3uHU7w">
                    <node concept="10Nm6u" id="_tf6vze9ze" role="3uHU7w" />
                    <node concept="37vLTw" id="_tf6vzec3m" role="3uHU7B">
                      <ref role="3cqZAo" node="_tf6vz5dfa" resolve="sidekick" />
                    </node>
                  </node>
                  <node concept="3clFbC" id="_tf6vze9zi" role="3uHU7B">
                    <node concept="37vLTw" id="_tf6vze9zj" role="3uHU7B">
                      <ref role="3cqZAo" node="_tf6vze9yT" resolve="aspect" />
                    </node>
                    <node concept="10Nm6u" id="_tf6vze9zk" role="3uHU7w" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3KN3A4uXzuM" role="3cqZAp">
                <node concept="1rXfSq" id="3KN3A4uXzuL" role="3clFbG">
                  <ref role="37wK5l" node="6nx4rRkQTd3" resolve="addToGraph" />
                  <node concept="37vLTw" id="_tf6vz82Uk" role="37wK5m">
                    <ref role="3cqZAo" node="3ySbbJmrqJM" resolve="lang" />
                  </node>
                  <node concept="37vLTw" id="_tf6vz83qe" role="37wK5m">
                    <ref role="3cqZAo" node="_tf6vz5dfa" resolve="sidekick" />
                  </node>
                  <node concept="37vLTw" id="_tf6vzed6H" role="37wK5m">
                    <ref role="3cqZAo" node="_tf6vze9yT" resolve="aspect" />
                  </node>
                  <node concept="37vLTw" id="3KN3A4uXzIU" role="37wK5m">
                    <ref role="3cqZAo" node="3KN3A4uXg$_" resolve="graph" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="3ySbbJmrqJM" role="1Duv9x">
              <property role="TrG5h" value="lang" />
              <node concept="16syzq" id="6nx4rRkOnTF" role="1tU5fm">
                <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
              </node>
            </node>
            <node concept="37vLTw" id="_tf6vz4yNI" role="1DdaDG">
              <ref role="3cqZAo" node="_tf6vz2S14" resolve="effectiveLangs" />
            </node>
          </node>
          <node concept="3clFbH" id="_tf6v$9FjL" role="3cqZAp" />
          <node concept="3cpWs8" id="3KN3A4uUxOd" role="3cqZAp">
            <node concept="3cpWsn" id="3KN3A4uUxOe" role="3cpWs9">
              <property role="TrG5h" value="sorted" />
              <node concept="3uibUv" id="3Vcd0Fo438t" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~LinkedList" resolve="LinkedList" />
                <node concept="3uibUv" id="3Vcd0Fo5IdA" role="11_B2D">
                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                </node>
              </node>
              <node concept="1rXfSq" id="3Vcd0Fo48HP" role="33vP2m">
                <ref role="37wK5l" node="3Vcd0Fo3q2C" resolve="topoSort" />
                <node concept="37vLTw" id="3Vcd0Fo4b3x" role="37wK5m">
                  <ref role="3cqZAo" node="3KN3A4uXg$_" resolve="graph" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6nx4rRkQXUq" role="3cqZAp">
            <node concept="3cpWsn" id="6nx4rRkQXUr" role="3cpWs9">
              <property role="TrG5h" value="maxCliques" />
              <node concept="10Oyi0" id="6nx4rRkQXUs" role="1tU5fm" />
              <node concept="1rXfSq" id="3Vcd0Fo5EcW" role="33vP2m">
                <ref role="37wK5l" node="3Vcd0Fo4Gbu" resolve="findAspectCliques" />
                <node concept="37vLTw" id="3Vcd0Fo5M3R" role="37wK5m">
                  <ref role="3cqZAo" node="3KN3A4uUxOe" resolve="sorted" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="_tf6vzkdfv" role="3cqZAp" />
          <node concept="3cpWs8" id="3KN3A4uVyep" role="3cqZAp">
            <node concept="3cpWsn" id="3KN3A4uVyes" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="_YKpA" id="3KN3A4uVyel" role="1tU5fm">
                <node concept="3uibUv" id="3KN3A4uVz6e" role="_ZDj9">
                  <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
                  <node concept="16syzq" id="3KN3A4v6kMw" role="11_B2D">
                    <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="3KN3A4uVEg2" role="33vP2m">
                <node concept="Tc6Ow" id="3KN3A4uWj_I" role="2ShVmc">
                  <node concept="3uibUv" id="3KN3A4uWk0l" role="HW$YZ">
                    <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
                    <node concept="16syzq" id="3KN3A4v6mql" role="11_B2D">
                      <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="3Vcd0Fo5Mjn" role="3cqZAp">
            <node concept="1PaTwC" id="3Vcd0Fo5Mjo" role="1aUNEU">
              <node concept="3oM_SD" id="3Vcd0Fo5Mjp" role="1PaTwD">
                <property role="3oM_SC" value="ignoring" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo5Mjq" role="1PaTwD">
                <property role="3oM_SC" value="nodes" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo5Mjr" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo5Mjs" role="1PaTwD">
                <property role="3oM_SC" value="assigned" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo5Mjt" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo5Mju" role="1PaTwD">
                <property role="3oM_SC" value="cliques" />
              </node>
            </node>
          </node>
          <node concept="1Dw8fO" id="3KN3A4uWl9m" role="3cqZAp">
            <node concept="3clFbS" id="3KN3A4uWl9o" role="2LFqv$">
              <node concept="3cpWs8" id="3KN3A4uWnnW" role="3cqZAp">
                <node concept="3cpWsn" id="3KN3A4uWnnZ" role="3cpWs9">
                  <property role="TrG5h" value="aspects" />
                  <node concept="_YKpA" id="3KN3A4uWnnS" role="1tU5fm">
                    <node concept="16syzq" id="3KN3A4uZiwc" role="_ZDj9">
                      <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="3KN3A4uWuqG" role="33vP2m">
                    <node concept="Tc6Ow" id="3KN3A4uWonR" role="2ShVmc">
                      <node concept="16syzq" id="3KN3A4uZj1P" role="HW$YZ">
                        <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="66WUpTItdbI" role="3cqZAp">
                <node concept="1PaTwC" id="66WUpTItdbJ" role="1aUNEU">
                  <node concept="3oM_SD" id="66WUpTItdbL" role="1PaTwD">
                    <property role="3oM_SC" value="complete" />
                  </node>
                  <node concept="3oM_SD" id="66WUpTItdsp" role="1PaTwD">
                    <property role="3oM_SC" value="set" />
                  </node>
                  <node concept="3oM_SD" id="66WUpTItdsG" role="1PaTwD">
                    <property role="3oM_SC" value="of" />
                  </node>
                  <node concept="3oM_SD" id="66WUpTItdsK" role="1PaTwD">
                    <property role="3oM_SC" value="relevant" />
                  </node>
                  <node concept="3oM_SD" id="66WUpTItdsP" role="1PaTwD">
                    <property role="3oM_SC" value="namespaces" />
                  </node>
                  <node concept="3oM_SD" id="66WUpTItdt3" role="1PaTwD">
                    <property role="3oM_SC" value="with" />
                  </node>
                  <node concept="3oM_SD" id="66WUpTItdta" role="1PaTwD">
                    <property role="3oM_SC" value="sidekicked" />
                  </node>
                  <node concept="3oM_SD" id="66WUpTItdtq" role="1PaTwD">
                    <property role="3oM_SC" value="langs" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="66WUpTIsSVw" role="3cqZAp">
                <node concept="3cpWsn" id="66WUpTIsSVx" role="3cpWs9">
                  <property role="TrG5h" value="aspectCoveredNs" />
                  <node concept="2hMVRd" id="66WUpTIsSVy" role="1tU5fm">
                    <node concept="17QB3L" id="66WUpTIsSVz" role="2hN53Y" />
                  </node>
                  <node concept="2ShNRf" id="66WUpTIsSV$" role="33vP2m">
                    <node concept="2i4dXS" id="66WUpTIsSV_" role="2ShVmc">
                      <node concept="17QB3L" id="66WUpTIsSVA" role="HW$YZ" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="4ekZiHe4PFD" role="3cqZAp" />
              <node concept="3SKdUt" id="3KN3A4uZBAM" role="3cqZAp">
                <node concept="1PaTwC" id="3KN3A4uZBAN" role="1aUNEU">
                  <node concept="3oM_SD" id="3KN3A4uZBGl" role="1PaTwD">
                    <property role="3oM_SC" value="multiple" />
                  </node>
                  <node concept="3oM_SD" id="3KN3A4uZBHx" role="1PaTwD">
                    <property role="3oM_SC" value="passes" />
                  </node>
                  <node concept="3oM_SD" id="3KN3A4uZBGv" role="1PaTwD">
                    <property role="3oM_SC" value="through" />
                  </node>
                  <node concept="3oM_SD" id="3KN3A4uZBGU" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="3KN3A4uZBH6" role="1PaTwD">
                    <property role="3oM_SC" value="sorted" />
                  </node>
                  <node concept="3oM_SD" id="3KN3A4uZBHj" role="1PaTwD">
                    <property role="3oM_SC" value="list" />
                  </node>
                  <node concept="3oM_SD" id="3KN3A4uZBHS" role="1PaTwD">
                    <property role="3oM_SC" value="result" />
                  </node>
                  <node concept="3oM_SD" id="3KN3A4uZBI8" role="1PaTwD">
                    <property role="3oM_SC" value="in" />
                  </node>
                  <node concept="3oM_SD" id="3KN3A4uZBIh" role="1PaTwD">
                    <property role="3oM_SC" value="aspects" />
                  </node>
                  <node concept="3oM_SD" id="3KN3A4uZBIF" role="1PaTwD">
                    <property role="3oM_SC" value="list" />
                  </node>
                  <node concept="3oM_SD" id="3KN3A4uZBJ6" role="1PaTwD">
                    <property role="3oM_SC" value="sorted" />
                  </node>
                  <node concept="3oM_SD" id="3KN3A4uZBJq" role="1PaTwD">
                    <property role="3oM_SC" value="too" />
                  </node>
                </node>
              </node>
              <node concept="1DcWWT" id="3KN3A4uWvqq" role="3cqZAp">
                <node concept="3clFbS" id="3KN3A4uWvqs" role="2LFqv$">
                  <node concept="3clFbJ" id="3KN3A4uWx86" role="3cqZAp">
                    <node concept="3clFbS" id="3KN3A4uWx88" role="3clFbx">
                      <node concept="3cpWs8" id="3KN3A4uZhPx" role="3cqZAp">
                        <node concept="3cpWsn" id="3KN3A4uZhPy" role="3cpWs9">
                          <property role="TrG5h" value="aspect" />
                          <node concept="16syzq" id="3KN3A4uZhLh" role="1tU5fm">
                            <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
                          </node>
                          <node concept="10QFUN" id="_tf6vzfqJ8" role="33vP2m">
                            <node concept="2OqwBi" id="_tf6vzfqJ5" role="10QFUP">
                              <node concept="37vLTw" id="_tf6vzfqJ6" role="2Oq$k0">
                                <ref role="3cqZAo" node="3KN3A4uWvqt" resolve="v" />
                              </node>
                              <node concept="2OwXpG" id="_tf6vzfqJ7" role="2OqNvi">
                                <ref role="2Oxat5" node="_tf6vzc$Qe" resolve="aspect" />
                              </node>
                            </node>
                            <node concept="16syzq" id="_tf6vzfqJ4" role="10QFUM">
                              <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="3KN3A4uZgGl" role="3cqZAp">
                        <node concept="3clFbS" id="3KN3A4uZgGn" role="3clFbx">
                          <node concept="3clFbF" id="3KN3A4uWyEH" role="3cqZAp">
                            <node concept="2OqwBi" id="3KN3A4uWzcM" role="3clFbG">
                              <node concept="37vLTw" id="3KN3A4uWyEF" role="2Oq$k0">
                                <ref role="3cqZAo" node="3KN3A4uWnnZ" resolve="aspects" />
                              </node>
                              <node concept="TSZUe" id="3KN3A4uWzL9" role="2OqNvi">
                                <node concept="37vLTw" id="3KN3A4uZks6" role="25WWJ7">
                                  <ref role="3cqZAo" node="3KN3A4uZhPy" resolve="aspect" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="3KN3A4uZirI" role="3clFbw">
                          <node concept="10Nm6u" id="3KN3A4uZivB" role="3uHU7w" />
                          <node concept="37vLTw" id="3KN3A4uZhPD" role="3uHU7B">
                            <ref role="3cqZAo" node="3KN3A4uZhPy" resolve="aspect" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="_tf6vzfFLH" role="3cqZAp">
                        <node concept="2OqwBi" id="_tf6vzfFLI" role="3clFbG">
                          <node concept="37vLTw" id="_tf6vzfFLJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="66WUpTIsSVx" resolve="aspectCoveredNs" />
                          </node>
                          <node concept="TSZUe" id="_tf6vzfFLK" role="2OqNvi">
                            <node concept="2OqwBi" id="_tf6vzfFLL" role="25WWJ7">
                              <node concept="37vLTw" id="_tf6vzfFLM" role="2Oq$k0">
                                <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
                              </node>
                              <node concept="liA8E" id="_tf6vzfFLN" role="2OqNvi">
                                <ref role="37wK5l" node="6nx4rRkVmWH" resolve="getNamespace" />
                                <node concept="10QFUN" id="_tf6vzfFLO" role="37wK5m">
                                  <node concept="2OqwBi" id="_tf6vzfFLP" role="10QFUP">
                                    <node concept="37vLTw" id="_tf6vzfFLQ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3KN3A4uWvqt" resolve="v" />
                                    </node>
                                    <node concept="2OwXpG" id="_tf6vzfFLR" role="2OqNvi">
                                      <ref role="2Oxat5" node="3KN3A4uUwms" resolve="lang" />
                                    </node>
                                  </node>
                                  <node concept="16syzq" id="_tf6vzfFLS" role="10QFUM">
                                    <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="_tf6vzfCCD" role="3cqZAp">
                        <node concept="3clFbS" id="_tf6vzfCCF" role="3clFbx">
                          <node concept="3clFbF" id="_tf6vzfA_o" role="3cqZAp">
                            <node concept="2OqwBi" id="_tf6vzfA_p" role="3clFbG">
                              <node concept="37vLTw" id="_tf6vzfA_q" role="2Oq$k0">
                                <ref role="3cqZAo" node="66WUpTIsSVx" resolve="aspectCoveredNs" />
                              </node>
                              <node concept="TSZUe" id="_tf6vzfA_r" role="2OqNvi">
                                <node concept="2OqwBi" id="_tf6vzfA_s" role="25WWJ7">
                                  <node concept="37vLTw" id="_tf6vzfA_t" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
                                  </node>
                                  <node concept="liA8E" id="_tf6vzfA_u" role="2OqNvi">
                                    <ref role="37wK5l" node="6nx4rRkVmWH" resolve="getNamespace" />
                                    <node concept="10QFUN" id="_tf6vzfA_v" role="37wK5m">
                                      <node concept="2OqwBi" id="_tf6vzfA_w" role="10QFUP">
                                        <node concept="37vLTw" id="_tf6vzfA_x" role="2Oq$k0">
                                          <ref role="3cqZAo" node="3KN3A4uWvqt" resolve="v" />
                                        </node>
                                        <node concept="2OwXpG" id="_tf6vzfFiI" role="2OqNvi">
                                          <ref role="2Oxat5" node="_tf6vz1OM3" resolve="sidekick" />
                                        </node>
                                      </node>
                                      <node concept="16syzq" id="_tf6vzfA_z" role="10QFUM">
                                        <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="_tf6vzfDxH" role="3clFbw">
                          <node concept="10Nm6u" id="_tf6vzfD$U" role="3uHU7w" />
                          <node concept="2OqwBi" id="_tf6vzfD94" role="3uHU7B">
                            <node concept="37vLTw" id="_tf6vzfD3c" role="2Oq$k0">
                              <ref role="3cqZAo" node="3KN3A4uWvqt" resolve="v" />
                            </node>
                            <node concept="2OwXpG" id="_tf6vzfDue" role="2OqNvi">
                              <ref role="2Oxat5" node="_tf6vz1OM3" resolve="sidekick" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="3KN3A4uWxPZ" role="3clFbw">
                      <node concept="2OqwBi" id="3KN3A4uWyoX" role="3uHU7w">
                        <node concept="37vLTw" id="3KN3A4uWyaq" role="2Oq$k0">
                          <ref role="3cqZAo" node="3KN3A4uWvqt" resolve="v" />
                        </node>
                        <node concept="2OwXpG" id="3KN3A4uWyyp" role="2OqNvi">
                          <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3KN3A4uWx9Q" role="3uHU7B">
                        <ref role="3cqZAo" node="3KN3A4uWl9p" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="3KN3A4uWvqt" role="1Duv9x">
                  <property role="TrG5h" value="v" />
                  <node concept="3uibUv" id="3KN3A4uWvtm" role="1tU5fm">
                    <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                  </node>
                </node>
                <node concept="37vLTw" id="3KN3A4uWwq8" role="1DdaDG">
                  <ref role="3cqZAo" node="3KN3A4uUxOe" resolve="sorted" />
                </node>
              </node>
              <node concept="3clFbH" id="_tf6vziZJx" role="3cqZAp" />
              <node concept="3clFbJ" id="3Vcd0FobWqJ" role="3cqZAp">
                <node concept="3clFbS" id="3Vcd0FobWqK" role="3clFbx">
                  <node concept="3clFbF" id="3KN3A4uZmqr" role="3cqZAp">
                    <node concept="2OqwBi" id="3KN3A4uZn1Y" role="3clFbG">
                      <node concept="37vLTw" id="3KN3A4uZmqp" role="2Oq$k0">
                        <ref role="3cqZAo" node="3KN3A4uVyes" resolve="result" />
                      </node>
                      <node concept="TSZUe" id="3KN3A4uZnDE" role="2OqNvi">
                        <node concept="2ShNRf" id="3KN3A4uZo6i" role="25WWJ7">
                          <node concept="1pGfFk" id="3KN3A4uZok5" role="2ShVmc">
                            <ref role="37wK5l" node="3KN3A4uXEXp" resolve="AspectClique" />
                            <node concept="37vLTw" id="_tf6vzknfW" role="37wK5m">
                              <ref role="3cqZAo" node="3KN3A4uWnnZ" resolve="aspects" />
                            </node>
                            <node concept="37vLTw" id="66WUpTItdAh" role="37wK5m">
                              <ref role="3cqZAo" node="66WUpTIsSVx" resolve="aspectCoveredNs" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3Vcd0FobWqU" role="3clFbw">
                  <node concept="37vLTw" id="3Vcd0FobWqV" role="2Oq$k0">
                    <ref role="3cqZAo" node="3KN3A4uWnnZ" resolve="aspects" />
                  </node>
                  <node concept="3GX2aA" id="3Vcd0FobWqW" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="3KN3A4uWl9p" role="1Duv9x">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="3KN3A4uWm6D" role="1tU5fm" />
              <node concept="3cmrfG" id="3KN3A4uWma6" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3eOVzh" id="3KN3A4uWmSM" role="1Dwp0S">
              <node concept="37vLTw" id="6nx4rRkR5gr" role="3uHU7w">
                <ref role="3cqZAo" node="6nx4rRkQXUr" resolve="maxCliques" />
              </node>
              <node concept="37vLTw" id="3KN3A4uWmc9" role="3uHU7B">
                <ref role="3cqZAo" node="3KN3A4uWl9p" resolve="i" />
              </node>
            </node>
            <node concept="3uNrnE" id="3KN3A4uWnlb" role="1Dwrff">
              <node concept="37vLTw" id="3KN3A4uWnld" role="2$L3a6">
                <ref role="3cqZAo" node="3KN3A4uWl9p" resolve="i" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="3Vcd0Fo5T2m" role="3cqZAp">
            <node concept="1PaTwC" id="3Vcd0Fo5T2n" role="1aUNEU">
              <node concept="3oM_SD" id="3Vcd0Fo5T2o" role="1PaTwD">
                <property role="3oM_SC" value="add" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo5T2p" role="1PaTwD">
                <property role="3oM_SC" value="an" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo5T2q" role="1PaTwD">
                <property role="3oM_SC" value="empty" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo5T2r" role="1PaTwD">
                <property role="3oM_SC" value="clique" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo5T2s" role="1PaTwD">
                <property role="3oM_SC" value="in" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo5T2t" role="1PaTwD">
                <property role="3oM_SC" value="case" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo5T2u" role="1PaTwD">
                <property role="3oM_SC" value="no" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo5T2v" role="1PaTwD">
                <property role="3oM_SC" value="aspects" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo5T2w" role="1PaTwD">
                <property role="3oM_SC" value="discovered" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo5T2x" role="1PaTwD">
                <property role="3oM_SC" value="or" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo5T2y" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo5T2z" role="1PaTwD">
                <property role="3oM_SC" value="invariant" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo5T2$" role="1PaTwD">
                <property role="3oM_SC" value="fails" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3Vcd0Fo5T2_" role="3cqZAp">
            <node concept="3clFbS" id="3Vcd0Fo5T2A" role="3clFbx">
              <node concept="3clFbF" id="3Vcd0Fo5T2B" role="3cqZAp">
                <node concept="2OqwBi" id="3Vcd0Fo5T2C" role="3clFbG">
                  <node concept="37vLTw" id="3Vcd0Fo5T2D" role="2Oq$k0">
                    <ref role="3cqZAo" node="3KN3A4uVyes" resolve="result" />
                  </node>
                  <node concept="TSZUe" id="3Vcd0Fo5T2E" role="2OqNvi">
                    <node concept="2ShNRf" id="3Vcd0Fo5T2F" role="25WWJ7">
                      <node concept="1pGfFk" id="3Vcd0Fo5T2G" role="2ShVmc">
                        <ref role="37wK5l" node="7u0sJ20M14I" resolve="AspectClique" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3Vcd0Fo5T2H" role="3clFbw">
              <node concept="37vLTw" id="3Vcd0Fo5T2I" role="2Oq$k0">
                <ref role="3cqZAo" node="3KN3A4uVyes" resolve="result" />
              </node>
              <node concept="1v1jN8" id="3Vcd0Fo5T2J" role="2OqNvi" />
            </node>
          </node>
          <node concept="3cpWs6" id="3KN3A4uUxPy" role="3cqZAp">
            <node concept="37vLTw" id="3KN3A4uZpdU" role="3cqZAk">
              <ref role="3cqZAo" node="3KN3A4uVyes" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="_YKpA" id="6nx4rRkO54u" role="3clF45">
          <node concept="3uibUv" id="6nx4rRkO54v" role="_ZDj9">
            <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
            <node concept="16syzq" id="6nx4rRkO54w" role="11_B2D">
              <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6nx4rRkQytB" role="jymVt" />
      <node concept="3clFb_" id="3Vcd0Fo3q2C" role="jymVt">
        <property role="TrG5h" value="topoSort" />
        <node concept="3clFbS" id="3Vcd0Fo3j_f" role="3clF47">
          <node concept="3SKdUt" id="3Vcd0Fo3j_g" role="3cqZAp">
            <node concept="1PaTwC" id="3Vcd0Fo3j_h" role="1aUNEU">
              <node concept="3oM_SD" id="3Vcd0Fo3j_i" role="1PaTwD">
                <property role="3oM_SC" value="depth-first" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo3j_j" role="1PaTwD">
                <property role="3oM_SC" value="search." />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo3j_k" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo3j_l" role="1PaTwD">
                <property role="3oM_SC" value="vertex" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo3j_m" role="1PaTwD">
                <property role="3oM_SC" value="that" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo3j_n" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo3j_o" role="1PaTwD">
                <property role="3oM_SC" value="visited" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo3j_p" role="1PaTwD">
                <property role="3oM_SC" value="last" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="2TBKtozZhrr" role="3cqZAp">
            <node concept="1PaTwC" id="3Vcd0Fo3j_q" role="1aUNEU">
              <node concept="3oM_SD" id="3Vcd0Fo3j_r" role="1PaTwD">
                <property role="3oM_SC" value="(after" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo3j_s" role="1PaTwD">
                <property role="3oM_SC" value="all" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo3j_t" role="1PaTwD">
                <property role="3oM_SC" value="dependencies)" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo3j_u" role="1PaTwD">
                <property role="3oM_SC" value="moves" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo3j_v" role="1PaTwD">
                <property role="3oM_SC" value="in" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo3j_w" role="1PaTwD">
                <property role="3oM_SC" value="front" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo3j_x" role="1PaTwD">
                <property role="3oM_SC" value="of" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo3j_y" role="1PaTwD">
                <property role="3oM_SC" value="others" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3Vcd0Fo3j_z" role="3cqZAp">
            <node concept="3cpWsn" id="3Vcd0Fo3j_$" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="3uibUv" id="3Vcd0Fo3j__" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~LinkedList" resolve="LinkedList" />
                <node concept="3uibUv" id="3Vcd0Fo3zEw" role="11_B2D">
                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                </node>
              </node>
              <node concept="2ShNRf" id="3Vcd0Fo3j_B" role="33vP2m">
                <node concept="1pGfFk" id="3Vcd0Fo3j_C" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~LinkedList.&lt;init&gt;()" resolve="LinkedList" />
                  <node concept="3uibUv" id="3Vcd0Fo3_aC" role="1pMfVU">
                    <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3Vcd0Fo3j_E" role="3cqZAp">
            <node concept="3cpWsn" id="3Vcd0Fo3j_F" role="3cpWs9">
              <property role="TrG5h" value="stack" />
              <node concept="oyxx6" id="3Vcd0Fo3j_G" role="1tU5fm">
                <node concept="3uibUv" id="3Vcd0Fo3AEh" role="3O5elw">
                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                </node>
              </node>
              <node concept="2ShNRf" id="3Vcd0Fo3j_I" role="33vP2m">
                <node concept="2Jqq0_" id="3Vcd0Fo3j_J" role="2ShVmc">
                  <node concept="3uibUv" id="3Vcd0Fo3DGz" role="HW$YZ">
                    <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3Vcd0Fo3j_L" role="3cqZAp">
            <node concept="3cpWsn" id="3Vcd0Fo3j_M" role="3cpWs9">
              <property role="TrG5h" value="finished" />
              <node concept="2hMVRd" id="3Vcd0Fo3j_N" role="1tU5fm">
                <node concept="3uibUv" id="3Vcd0Fo3HzB" role="2hN53Y">
                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                </node>
              </node>
              <node concept="2ShNRf" id="3Vcd0Fo3j_P" role="33vP2m">
                <node concept="2i4dXS" id="3Vcd0Fo3j_Q" role="2ShVmc">
                  <node concept="3uibUv" id="3Vcd0Fo3J82" role="HW$YZ">
                    <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3Vcd0Fo3j_S" role="3cqZAp">
            <node concept="3cpWsn" id="3Vcd0Fo3j_T" role="3cpWs9">
              <property role="TrG5h" value="visited" />
              <node concept="2hMVRd" id="3Vcd0Fo3j_U" role="1tU5fm">
                <node concept="3uibUv" id="3Vcd0Fo3KF_" role="2hN53Y">
                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                </node>
              </node>
              <node concept="2ShNRf" id="3Vcd0Fo3j_W" role="33vP2m">
                <node concept="2i4dXS" id="3Vcd0Fo3j_X" role="2ShVmc">
                  <node concept="3uibUv" id="3Vcd0Fo3NfV" role="HW$YZ">
                    <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3Vcd0Fo3j_Z" role="3cqZAp" />
          <node concept="3cpWs8" id="1LBj9wAGJhL" role="3cqZAp">
            <node concept="3cpWsn" id="1LBj9wAGJhM" role="3cpWs9">
              <property role="TrG5h" value="orderedVts" />
              <node concept="A3Dl8" id="1LBj9wAGF$L" role="1tU5fm">
                <node concept="3uibUv" id="1LBj9wAGF$O" role="A3Ik2">
                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                </node>
              </node>
              <node concept="2OqwBi" id="1LBj9wAGOzt" role="33vP2m">
                <node concept="2OqwBi" id="1LBj9wAGLFF" role="2Oq$k0">
                  <node concept="2OqwBi" id="1LBj9wAGJhN" role="2Oq$k0">
                    <node concept="37vLTw" id="1LBj9wAGJhO" role="2Oq$k0">
                      <ref role="3cqZAo" node="3Vcd0Fo3j_a" resolve="graph" />
                    </node>
                    <node concept="T8wYR" id="1LBj9wAGJhP" role="2OqNvi" />
                  </node>
                  <node concept="2S7cBI" id="1LBj9wAGNox" role="2OqNvi">
                    <node concept="1bVj0M" id="1LBj9wAGNoz" role="23t8la">
                      <node concept="3clFbS" id="1LBj9wAGNo$" role="1bW5cS">
                        <node concept="3clFbF" id="1LBj9wAL8AV" role="3cqZAp">
                          <node concept="2YIFZM" id="1LBj9wAL8Og" role="3clFbG">
                            <ref role="37wK5l" to="wyt6:~System.identityHashCode(java.lang.Object)" resolve="identityHashCode" />
                            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                            <node concept="2OqwBi" id="1LBj9wAL9oI" role="37wK5m">
                              <node concept="37vLTw" id="1LBj9wAL97J" role="2Oq$k0">
                                <ref role="3cqZAo" node="1LBj9wAGNo_" resolve="it" />
                              </node>
                              <node concept="2OwXpG" id="1LBj9wAL9QC" role="2OqNvi">
                                <ref role="2Oxat5" node="3KN3A4uUwms" resolve="lang" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="1LBj9wAGNo_" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="1LBj9wAGNoA" role="1tU5fm" />
                      </node>
                    </node>
                    <node concept="1nlBCl" id="1LBj9wAGNoB" role="2S7zOq">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="1LBj9wAGPwX" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="3Vcd0Fo3jA0" role="3cqZAp">
            <node concept="3clFbS" id="3Vcd0Fo3jA1" role="2LFqv$">
              <node concept="3clFbJ" id="3Vcd0Fo3jA2" role="3cqZAp">
                <node concept="3fqX7Q" id="3Vcd0Fo3jA3" role="3clFbw">
                  <node concept="2OqwBi" id="3Vcd0Fo3jA4" role="3fr31v">
                    <node concept="37vLTw" id="3Vcd0Fo3jA5" role="2Oq$k0">
                      <ref role="3cqZAo" node="3Vcd0Fo3j_M" resolve="finished" />
                    </node>
                    <node concept="3JPx81" id="3Vcd0Fo3jA6" role="2OqNvi">
                      <node concept="37vLTw" id="3Vcd0Fo3jA7" role="25WWJ7">
                        <ref role="3cqZAo" node="3Vcd0Fo3jBC" resolve="vtx" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="3Vcd0Fo3jA8" role="3clFbx">
                  <node concept="3clFbF" id="3Vcd0Fo3jA9" role="3cqZAp">
                    <node concept="2OqwBi" id="3Vcd0Fo3jAa" role="3clFbG">
                      <node concept="37vLTw" id="3Vcd0Fo3jAb" role="2Oq$k0">
                        <ref role="3cqZAo" node="3Vcd0Fo3j_F" resolve="stack" />
                      </node>
                      <node concept="2ArzE6" id="3Vcd0Fo3jAc" role="2OqNvi">
                        <node concept="37vLTw" id="3Vcd0Fo3jAd" role="25WWJ7">
                          <ref role="3cqZAo" node="3Vcd0Fo3jBC" resolve="vtx" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="3Vcd0Fo3jAe" role="3cqZAp" />
                  <node concept="2$JKZl" id="3Vcd0Fo3jAf" role="3cqZAp">
                    <node concept="3clFbS" id="3Vcd0Fo3jAg" role="2LFqv$">
                      <node concept="3cpWs8" id="3Vcd0Fo3jAh" role="3cqZAp">
                        <node concept="3cpWsn" id="3Vcd0Fo3jAi" role="3cpWs9">
                          <property role="TrG5h" value="v" />
                          <node concept="3uibUv" id="3Vcd0Fo3RxN" role="1tU5fm">
                            <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                          </node>
                          <node concept="2OqwBi" id="3Vcd0Fo3jAk" role="33vP2m">
                            <node concept="37vLTw" id="3Vcd0Fo3jAl" role="2Oq$k0">
                              <ref role="3cqZAo" node="3Vcd0Fo3j_F" resolve="stack" />
                            </node>
                            <node concept="2oR75g" id="3Vcd0Fo3jAm" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="3Vcd0Fo3jAn" role="3cqZAp">
                        <node concept="3clFbS" id="3Vcd0Fo3jAo" role="3clFbx">
                          <node concept="3clFbF" id="3Vcd0Fo3jAp" role="3cqZAp">
                            <node concept="2OqwBi" id="3Vcd0Fo3jAq" role="3clFbG">
                              <node concept="37vLTw" id="3Vcd0Fo3jAr" role="2Oq$k0">
                                <ref role="3cqZAo" node="3Vcd0Fo3j_F" resolve="stack" />
                              </node>
                              <node concept="2AryhJ" id="3Vcd0Fo3jAs" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="3N13vt" id="3Vcd0Fo3jAt" role="3cqZAp" />
                        </node>
                        <node concept="2OqwBi" id="3Vcd0Fo3jAu" role="3clFbw">
                          <node concept="37vLTw" id="3Vcd0Fo3jAv" role="2Oq$k0">
                            <ref role="3cqZAo" node="3Vcd0Fo3j_M" resolve="finished" />
                          </node>
                          <node concept="3JPx81" id="3Vcd0Fo3jAw" role="2OqNvi">
                            <node concept="37vLTw" id="3Vcd0Fo3jAx" role="25WWJ7">
                              <ref role="3cqZAo" node="3Vcd0Fo3jAi" resolve="v" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3SKdUt" id="3Vcd0Fo3jAy" role="3cqZAp">
                        <node concept="1PaTwC" id="3Vcd0Fo3jAz" role="1aUNEU">
                          <node concept="3oM_SD" id="3Vcd0Fo3jA$" role="1PaTwD">
                            <property role="3oM_SC" value="when" />
                          </node>
                          <node concept="3oM_SD" id="3Vcd0Fo3jA_" role="1PaTwD">
                            <property role="3oM_SC" value="all" />
                          </node>
                          <node concept="3oM_SD" id="3Vcd0Fo3jAA" role="1PaTwD">
                            <property role="3oM_SC" value="descendants" />
                          </node>
                          <node concept="3oM_SD" id="3Vcd0Fo3jAB" role="1PaTwD">
                            <property role="3oM_SC" value="of" />
                          </node>
                          <node concept="3oM_SD" id="3Vcd0Fo3jAC" role="1PaTwD">
                            <property role="3oM_SC" value="v" />
                          </node>
                          <node concept="3oM_SD" id="3Vcd0Fo3jAD" role="1PaTwD">
                            <property role="3oM_SC" value="are" />
                          </node>
                          <node concept="3oM_SD" id="3Vcd0Fo3jAE" role="1PaTwD">
                            <property role="3oM_SC" value="processed" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="3Vcd0Fo3jAF" role="3cqZAp">
                        <node concept="3clFbS" id="3Vcd0Fo3jAG" role="3clFbx">
                          <node concept="3clFbF" id="3Vcd0Fo3jAH" role="3cqZAp">
                            <node concept="2OqwBi" id="3Vcd0Fo3jAI" role="3clFbG">
                              <node concept="37vLTw" id="3Vcd0Fo3jAJ" role="2Oq$k0">
                                <ref role="3cqZAo" node="3Vcd0Fo3j_$" resolve="result" />
                              </node>
                              <node concept="liA8E" id="3Vcd0Fo3jAK" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~LinkedList.addFirst(java.lang.Object)" resolve="addFirst" />
                                <node concept="37vLTw" id="3Vcd0Fo3jAL" role="37wK5m">
                                  <ref role="3cqZAo" node="3Vcd0Fo3jAi" resolve="v" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="3Vcd0Fo3jAM" role="3cqZAp">
                            <node concept="2OqwBi" id="3Vcd0Fo3jAN" role="3clFbG">
                              <node concept="37vLTw" id="3Vcd0Fo3jAO" role="2Oq$k0">
                                <ref role="3cqZAo" node="3Vcd0Fo3j_M" resolve="finished" />
                              </node>
                              <node concept="TSZUe" id="3Vcd0Fo3jAP" role="2OqNvi">
                                <node concept="37vLTw" id="3Vcd0Fo3jAQ" role="25WWJ7">
                                  <ref role="3cqZAo" node="3Vcd0Fo3jAi" resolve="v" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="3Vcd0Fo3jAR" role="3cqZAp">
                            <node concept="2OqwBi" id="3Vcd0Fo3jAS" role="3clFbG">
                              <node concept="37vLTw" id="3Vcd0Fo3jAT" role="2Oq$k0">
                                <ref role="3cqZAo" node="3Vcd0Fo3j_T" resolve="visited" />
                              </node>
                              <node concept="3dhRuq" id="3Vcd0Fo3jAU" role="2OqNvi">
                                <node concept="37vLTw" id="3Vcd0Fo3jAV" role="25WWJ7">
                                  <ref role="3cqZAo" node="3Vcd0Fo3jAi" resolve="v" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="3Vcd0Fo3jAW" role="3cqZAp">
                            <node concept="2OqwBi" id="3Vcd0Fo3jAX" role="3clFbG">
                              <node concept="37vLTw" id="3Vcd0Fo3jAY" role="2Oq$k0">
                                <ref role="3cqZAo" node="3Vcd0Fo3j_F" resolve="stack" />
                              </node>
                              <node concept="2AryhJ" id="3Vcd0Fo3jAZ" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="3N13vt" id="3Vcd0Fo3jB0" role="3cqZAp" />
                        </node>
                        <node concept="2OqwBi" id="3Vcd0Fo3jB1" role="3clFbw">
                          <node concept="37vLTw" id="3Vcd0Fo3jB2" role="2Oq$k0">
                            <ref role="3cqZAo" node="3Vcd0Fo3j_T" resolve="visited" />
                          </node>
                          <node concept="3JPx81" id="3Vcd0Fo3jB3" role="2OqNvi">
                            <node concept="37vLTw" id="3Vcd0Fo3jB4" role="25WWJ7">
                              <ref role="3cqZAo" node="3Vcd0Fo3jAi" resolve="v" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="3Vcd0Fo3jB5" role="3cqZAp">
                        <node concept="2OqwBi" id="3Vcd0Fo3jB6" role="3clFbG">
                          <node concept="37vLTw" id="3Vcd0Fo3jB7" role="2Oq$k0">
                            <ref role="3cqZAo" node="3Vcd0Fo3j_T" resolve="visited" />
                          </node>
                          <node concept="TSZUe" id="3Vcd0Fo3jB8" role="2OqNvi">
                            <node concept="37vLTw" id="3Vcd0Fo3jB9" role="25WWJ7">
                              <ref role="3cqZAo" node="3Vcd0Fo3jAi" resolve="v" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="3Vcd0Fo3jBa" role="3cqZAp" />
                      <node concept="3cpWs8" id="1LBj9wAJNTy" role="3cqZAp">
                        <node concept="3cpWsn" id="1LBj9wAJNTz" role="3cpWs9">
                          <property role="TrG5h" value="orderedExtends" />
                          <node concept="_YKpA" id="1LBj9wAJNS1" role="1tU5fm">
                            <node concept="3uibUv" id="1LBj9wAJNS4" role="_ZDj9">
                              <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1LBj9wAJNT$" role="33vP2m">
                            <node concept="2OqwBi" id="1LBj9wAJNT_" role="2Oq$k0">
                              <node concept="1eOMI4" id="1LBj9wAJQAw" role="2Oq$k0">
                                <node concept="2OqwBi" id="1LBj9wAJQAt" role="1eOMHV">
                                  <node concept="37vLTw" id="1LBj9wAJQAu" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3Vcd0Fo3jAi" resolve="v" />
                                  </node>
                                  <node concept="2OwXpG" id="1LBj9wAJQAv" role="2OqNvi">
                                    <ref role="2Oxat5" node="3KN3A4uUwmv" resolve="allExtends" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2S7cBI" id="1LBj9wAJNTB" role="2OqNvi">
                                <node concept="1bVj0M" id="1LBj9wAJNTC" role="23t8la">
                                  <node concept="3clFbS" id="1LBj9wAJNTD" role="1bW5cS">
                                    <node concept="3clFbF" id="1LBj9wAJNTE" role="3cqZAp">
                                      <node concept="2YIFZM" id="1LBj9wAJNTF" role="3clFbG">
                                        <ref role="37wK5l" to="wyt6:~System.identityHashCode(java.lang.Object)" resolve="identityHashCode" />
                                        <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                                        <node concept="2OqwBi" id="1LBj9wALar6" role="37wK5m">
                                          <node concept="37vLTw" id="1LBj9wAJNTG" role="2Oq$k0">
                                            <ref role="3cqZAo" node="1LBj9wAJNTH" resolve="it" />
                                          </node>
                                          <node concept="2OwXpG" id="1LBj9wALb3d" role="2OqNvi">
                                            <ref role="2Oxat5" node="3KN3A4uUwms" resolve="lang" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="1LBj9wAJNTH" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="1LBj9wAJNTI" role="1tU5fm" />
                                  </node>
                                </node>
                                <node concept="1nlBCl" id="1LBj9wAJNTJ" role="2S7zOq">
                                  <property role="3clFbU" value="true" />
                                </node>
                              </node>
                            </node>
                            <node concept="ANE8D" id="1LBj9wAJNTK" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="1DcWWT" id="3Vcd0Fo3jBb" role="3cqZAp">
                        <node concept="3clFbS" id="3Vcd0Fo3jBc" role="2LFqv$">
                          <node concept="3clFbJ" id="3Vcd0Fo3jBd" role="3cqZAp">
                            <node concept="3clFbS" id="3Vcd0Fo3jBe" role="3clFbx">
                              <node concept="3clFbJ" id="3Vcd0Fo3jBf" role="3cqZAp">
                                <node concept="3fqX7Q" id="3Vcd0Fo3jBg" role="3clFbw">
                                  <node concept="2OqwBi" id="3Vcd0Fo3jBh" role="3fr31v">
                                    <node concept="37vLTw" id="3Vcd0Fo3jBi" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3Vcd0Fo3j_T" resolve="visited" />
                                    </node>
                                    <node concept="3JPx81" id="3Vcd0Fo3jBj" role="2OqNvi">
                                      <node concept="37vLTw" id="3Vcd0Fo3jBk" role="25WWJ7">
                                        <ref role="3cqZAo" node="3Vcd0Fo3jBw" resolve="vext" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbS" id="3Vcd0Fo3jBl" role="3clFbx">
                                  <node concept="3clFbF" id="3Vcd0Fo3jBm" role="3cqZAp">
                                    <node concept="2OqwBi" id="3Vcd0Fo3jBn" role="3clFbG">
                                      <node concept="37vLTw" id="3Vcd0Fo3jBo" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3Vcd0Fo3j_F" resolve="stack" />
                                      </node>
                                      <node concept="2ArzE6" id="3Vcd0Fo3jBp" role="2OqNvi">
                                        <node concept="37vLTw" id="3Vcd0Fo3jBq" role="25WWJ7">
                                          <ref role="3cqZAo" node="3Vcd0Fo3jBw" resolve="vext" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3fqX7Q" id="3Vcd0Fo3jBr" role="3clFbw">
                              <node concept="2OqwBi" id="3Vcd0Fo3jBs" role="3fr31v">
                                <node concept="37vLTw" id="3Vcd0Fo3jBt" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3Vcd0Fo3j_M" resolve="finished" />
                                </node>
                                <node concept="3JPx81" id="3Vcd0Fo3jBu" role="2OqNvi">
                                  <node concept="37vLTw" id="3Vcd0Fo3jBv" role="25WWJ7">
                                    <ref role="3cqZAo" node="3Vcd0Fo3jBw" resolve="vext" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWsn" id="3Vcd0Fo3jBw" role="1Duv9x">
                          <property role="TrG5h" value="vext" />
                          <node concept="3uibUv" id="3Vcd0Fo3ZSL" role="1tU5fm">
                            <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="1LBj9wAJNTL" role="1DdaDG">
                          <ref role="3cqZAo" node="1LBj9wAJNTz" resolve="orderedExtends" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3Vcd0Fo3jB_" role="2$JKZa">
                      <node concept="37vLTw" id="3Vcd0Fo3jBA" role="2Oq$k0">
                        <ref role="3cqZAo" node="3Vcd0Fo3j_F" resolve="stack" />
                      </node>
                      <node concept="3GX2aA" id="3Vcd0Fo3jBB" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="3Vcd0Fo3jBC" role="1Duv9x">
              <property role="TrG5h" value="vtx" />
              <node concept="3uibUv" id="3Vcd0Fo3PY_" role="1tU5fm">
                <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
              </node>
            </node>
            <node concept="37vLTw" id="1LBj9wAGJhQ" role="1DdaDG">
              <ref role="3cqZAo" node="1LBj9wAGJhM" resolve="orderedVts" />
            </node>
          </node>
          <node concept="3clFbF" id="3Vcd0Fo3jBH" role="3cqZAp">
            <node concept="37vLTw" id="3Vcd0Fo3jBI" role="3clFbG">
              <ref role="3cqZAo" node="3Vcd0Fo3j_$" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3Vcd0Fo3j_a" role="3clF46">
          <property role="TrG5h" value="graph" />
          <node concept="3rvAFt" id="3Vcd0Fo3j_b" role="1tU5fm">
            <node concept="16syzq" id="3Vcd0Fo4i47" role="3rvQeY">
              <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
            </node>
            <node concept="3uibUv" id="3Vcd0Fo3y8w" role="3rvSg0">
              <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="3Vcd0Fo3jBJ" role="3clF45">
          <ref role="3uigEE" to="33ny:~LinkedList" resolve="LinkedList" />
          <node concept="3uibUv" id="3Vcd0Fo3wCK" role="11_B2D">
            <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
          </node>
        </node>
        <node concept="3Tm6S6" id="3Vcd0Fo3j_e" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="3Vcd0Fo3gRk" role="jymVt" />
      <node concept="3clFb_" id="3Vcd0Fo4Gbu" role="jymVt">
        <property role="TrG5h" value="findAspectCliques" />
        <node concept="3clFbS" id="3Vcd0Fo4yLI" role="3clF47">
          <node concept="3SKdUt" id="3Vcd0Fo4yLJ" role="3cqZAp">
            <node concept="1PaTwC" id="3Vcd0Fo4yLK" role="1aUNEU">
              <node concept="3oM_SD" id="3Vcd0Fo4yLL" role="1PaTwD">
                <property role="3oM_SC" value="assuming" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yLM" role="1PaTwD">
                <property role="3oM_SC" value="graph" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yLN" role="1PaTwD">
                <property role="3oM_SC" value="is" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yLO" role="1PaTwD">
                <property role="3oM_SC" value="topologically" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yLP" role="1PaTwD">
                <property role="3oM_SC" value="sorted" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yLQ" role="1PaTwD">
                <property role="3oM_SC" value="from" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yLR" role="1PaTwD">
                <property role="3oM_SC" value="leaves" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yLS" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yLT" role="1PaTwD">
                <property role="3oM_SC" value="roots" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3Vcd0Fo4yLU" role="3cqZAp" />
          <node concept="3cpWs8" id="3Vcd0Fo4yLV" role="3cqZAp">
            <node concept="3cpWsn" id="3Vcd0Fo4yLW" role="3cpWs9">
              <property role="TrG5h" value="stack" />
              <node concept="oyxx6" id="3Vcd0Fo4yLX" role="1tU5fm">
                <node concept="3uibUv" id="3Vcd0Fo50iB" role="3O5elw">
                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                </node>
              </node>
              <node concept="2ShNRf" id="3Vcd0Fo4yLZ" role="33vP2m">
                <node concept="2Jqq0_" id="3Vcd0Fo4yM0" role="2ShVmc">
                  <node concept="3uibUv" id="3Vcd0Fo53iI" role="HW$YZ">
                    <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3Vcd0Fo4yM2" role="3cqZAp">
            <node concept="3cpWsn" id="3Vcd0Fo4yM3" role="3cpWs9">
              <property role="TrG5h" value="visited" />
              <node concept="2hMVRd" id="3Vcd0Fo4yM4" role="1tU5fm">
                <node concept="3uibUv" id="3Vcd0Fo55Yb" role="2hN53Y">
                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                </node>
              </node>
              <node concept="2ShNRf" id="3Vcd0Fo4yM6" role="33vP2m">
                <node concept="2i4dXS" id="3Vcd0Fo4yM7" role="2ShVmc">
                  <node concept="3uibUv" id="3Vcd0Fo58dg" role="HW$YZ">
                    <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3Vcd0Fo4yM9" role="3cqZAp">
            <node concept="3cpWsn" id="3Vcd0Fo4yMa" role="3cpWs9">
              <property role="TrG5h" value="nextClique" />
              <node concept="10Oyi0" id="3Vcd0Fo4yMb" role="1tU5fm" />
              <node concept="3cmrfG" id="3Vcd0Fo4yMc" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3Vcd0Fo4yMd" role="3cqZAp" />
          <node concept="3SKdUt" id="3Vcd0Fo4yMe" role="3cqZAp">
            <node concept="1PaTwC" id="3Vcd0Fo4yMf" role="1aUNEU">
              <node concept="3oM_SD" id="3Vcd0Fo4yMg" role="1PaTwD">
                <property role="3oM_SC" value="first" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yMh" role="1PaTwD">
                <property role="3oM_SC" value="bottom-up" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yMi" role="1PaTwD">
                <property role="3oM_SC" value="pass:" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yMj" role="1PaTwD">
                <property role="3oM_SC" value="assign" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yMk" role="1PaTwD">
                <property role="3oM_SC" value="initial" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yMl" role="1PaTwD">
                <property role="3oM_SC" value="clique" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yMm" role="1PaTwD">
                <property role="3oM_SC" value="ids" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yMn" role="1PaTwD">
                <property role="3oM_SC" value="" />
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="3Vcd0Fo4yMo" role="3cqZAp">
            <node concept="3clFbS" id="3Vcd0Fo4yMp" role="2LFqv$">
              <node concept="3clFbJ" id="3Vcd0Fo4yMq" role="3cqZAp">
                <node concept="3clFbS" id="3Vcd0Fo4yMr" role="3clFbx">
                  <node concept="3clFbF" id="3Vcd0Fo4yMs" role="3cqZAp">
                    <node concept="2OqwBi" id="3Vcd0Fo4yMt" role="3clFbG">
                      <node concept="37vLTw" id="3Vcd0Fo4yMu" role="2Oq$k0">
                        <ref role="3cqZAo" node="3Vcd0Fo4yLW" resolve="stack" />
                      </node>
                      <node concept="2ArzE6" id="3Vcd0Fo4yMv" role="2OqNvi">
                        <node concept="37vLTw" id="3Vcd0Fo4yMw" role="25WWJ7">
                          <ref role="3cqZAo" node="3Vcd0Fo4yO6" resolve="vtx" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3Vcd0Fo4yMx" role="3cqZAp">
                    <node concept="2OqwBi" id="3Vcd0Fo4yMy" role="3clFbG">
                      <node concept="37vLTw" id="3Vcd0Fo4yMz" role="2Oq$k0">
                        <ref role="3cqZAo" node="3Vcd0Fo4yM3" resolve="visited" />
                      </node>
                      <node concept="TSZUe" id="3Vcd0Fo4yM$" role="2OqNvi">
                        <node concept="37vLTw" id="3Vcd0Fo4yM_" role="25WWJ7">
                          <ref role="3cqZAo" node="3Vcd0Fo4yO6" resolve="vtx" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="3Vcd0Fo4yMA" role="3cqZAp" />
                  <node concept="2$JKZl" id="3Vcd0Fo4yMB" role="3cqZAp">
                    <node concept="3clFbS" id="3Vcd0Fo4yMC" role="2LFqv$">
                      <node concept="3cpWs8" id="3Vcd0Fo4yMD" role="3cqZAp">
                        <node concept="3cpWsn" id="3Vcd0Fo4yME" role="3cpWs9">
                          <property role="TrG5h" value="v" />
                          <node concept="3uibUv" id="3Vcd0Fo5dpT" role="1tU5fm">
                            <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                          </node>
                          <node concept="2OqwBi" id="3Vcd0Fo4yMG" role="33vP2m">
                            <node concept="37vLTw" id="3Vcd0Fo4yMH" role="2Oq$k0">
                              <ref role="3cqZAo" node="3Vcd0Fo4yLW" resolve="stack" />
                            </node>
                            <node concept="2oR75g" id="3Vcd0Fo4yMI" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="_tf6vzfPKg" role="3cqZAp">
                        <node concept="3cpWsn" id="_tf6vzfPKh" role="3cpWs9">
                          <property role="TrG5h" value="allExtendedBy" />
                          <node concept="2hMVRd" id="_tf6v$f9Kg" role="1tU5fm">
                            <node concept="3uibUv" id="_tf6v$f9Ki" role="2hN53Y">
                              <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="_tf6vzfPKi" role="33vP2m">
                            <node concept="37vLTw" id="_tf6vzfPKj" role="2Oq$k0">
                              <ref role="3cqZAo" node="3Vcd0Fo4yME" resolve="v" />
                            </node>
                            <node concept="2OwXpG" id="_tf6vzfPKk" role="2OqNvi">
                              <ref role="2Oxat5" node="3KN3A4w3GWQ" resolve="allExtendedBy" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1DcWWT" id="3Vcd0Fo4yMJ" role="3cqZAp">
                        <node concept="3clFbS" id="3Vcd0Fo4yMK" role="2LFqv$">
                          <node concept="3clFbJ" id="3Vcd0Fo4yML" role="3cqZAp">
                            <node concept="2d3UOw" id="3Vcd0Fo4yMM" role="3clFbw">
                              <node concept="2OqwBi" id="3Vcd0Fo4yMN" role="3uHU7B">
                                <node concept="37vLTw" id="3Vcd0Fo4yMO" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3Vcd0Fo4yNh" resolve="vsub" />
                                </node>
                                <node concept="2OwXpG" id="3Vcd0Fo5ibZ" role="2OqNvi">
                                  <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                                </node>
                              </node>
                              <node concept="3cmrfG" id="3Vcd0Fo4yMQ" role="3uHU7w">
                                <property role="3cmrfH" value="0" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="3Vcd0Fo4yMR" role="3clFbx">
                              <node concept="3clFbF" id="3Vcd0Fo4yMS" role="3cqZAp">
                                <node concept="37vLTI" id="3Vcd0Fo4yMT" role="3clFbG">
                                  <node concept="2OqwBi" id="3Vcd0Fo4yMU" role="37vLTx">
                                    <node concept="37vLTw" id="3Vcd0Fo4yMV" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3Vcd0Fo4yNh" resolve="vsub" />
                                    </node>
                                    <node concept="2OwXpG" id="3Vcd0Fo5i$0" role="2OqNvi">
                                      <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="3Vcd0Fo4yMX" role="37vLTJ">
                                    <node concept="37vLTw" id="3Vcd0Fo4yMY" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3Vcd0Fo4yME" resolve="v" />
                                    </node>
                                    <node concept="2OwXpG" id="3Vcd0Fo5ijF" role="2OqNvi">
                                      <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="3Vcd0Fo4yN0" role="3cqZAp">
                            <node concept="3fqX7Q" id="3Vcd0Fo4yN1" role="3clFbw">
                              <node concept="2OqwBi" id="3Vcd0Fo4yN2" role="3fr31v">
                                <node concept="37vLTw" id="3Vcd0Fo4yN3" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3Vcd0Fo4yM3" resolve="visited" />
                                </node>
                                <node concept="3JPx81" id="3Vcd0Fo4yN4" role="2OqNvi">
                                  <node concept="37vLTw" id="3Vcd0Fo4yN5" role="25WWJ7">
                                    <ref role="3cqZAo" node="3Vcd0Fo4yNh" resolve="vsub" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="3Vcd0Fo4yN6" role="3clFbx">
                              <node concept="3clFbF" id="3Vcd0Fo4yN7" role="3cqZAp">
                                <node concept="2OqwBi" id="3Vcd0Fo4yN8" role="3clFbG">
                                  <node concept="37vLTw" id="3Vcd0Fo4yN9" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3Vcd0Fo4yLW" resolve="stack" />
                                  </node>
                                  <node concept="2ArzE6" id="3Vcd0Fo4yNa" role="2OqNvi">
                                    <node concept="37vLTw" id="3Vcd0Fo4yNb" role="25WWJ7">
                                      <ref role="3cqZAo" node="3Vcd0Fo4yNh" resolve="vsub" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="3Vcd0Fo4yNc" role="3cqZAp">
                                <node concept="2OqwBi" id="3Vcd0Fo4yNd" role="3clFbG">
                                  <node concept="37vLTw" id="3Vcd0Fo4yNe" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3Vcd0Fo4yM3" resolve="visited" />
                                  </node>
                                  <node concept="TSZUe" id="3Vcd0Fo4yNf" role="2OqNvi">
                                    <node concept="37vLTw" id="3Vcd0Fo4yNg" role="25WWJ7">
                                      <ref role="3cqZAo" node="3Vcd0Fo4yNh" resolve="vsub" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWsn" id="3Vcd0Fo4yNh" role="1Duv9x">
                          <property role="TrG5h" value="vsub" />
                          <node concept="3uibUv" id="3Vcd0Fo5fmv" role="1tU5fm">
                            <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="_tf6vzfPKl" role="1DdaDG">
                          <ref role="3cqZAo" node="_tf6vzfPKh" resolve="allExtendedBy" />
                        </node>
                      </node>
                      <node concept="3clFbH" id="3Vcd0Fo4yNm" role="3cqZAp" />
                      <node concept="3clFbJ" id="3Vcd0Fo4yNn" role="3cqZAp">
                        <node concept="3clFbS" id="3Vcd0Fo4yNo" role="3clFbx">
                          <node concept="3clFbF" id="3Vcd0Fo4yNp" role="3cqZAp">
                            <node concept="2OqwBi" id="3Vcd0Fo4yNq" role="3clFbG">
                              <node concept="37vLTw" id="3Vcd0Fo4yNr" role="2Oq$k0">
                                <ref role="3cqZAo" node="3Vcd0Fo4yLW" resolve="stack" />
                              </node>
                              <node concept="2AryhJ" id="3Vcd0Fo4yNs" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="3Vcd0Fo4yNt" role="3clFbw">
                          <node concept="37vLTw" id="3Vcd0Fo4yNu" role="3uHU7w">
                            <ref role="3cqZAo" node="3Vcd0Fo4yME" resolve="v" />
                          </node>
                          <node concept="2OqwBi" id="3Vcd0Fo4yNv" role="3uHU7B">
                            <node concept="37vLTw" id="3Vcd0Fo4yNw" role="2Oq$k0">
                              <ref role="3cqZAo" node="3Vcd0Fo4yLW" resolve="stack" />
                            </node>
                            <node concept="2oR75g" id="3Vcd0Fo4yNx" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3Vcd0Fo4yNy" role="2$JKZa">
                      <node concept="37vLTw" id="3Vcd0Fo4yNz" role="2Oq$k0">
                        <ref role="3cqZAo" node="3Vcd0Fo4yLW" resolve="stack" />
                      </node>
                      <node concept="3GX2aA" id="3Vcd0Fo4yN$" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="3Vcd0Fo4yN_" role="3clFbw">
                  <node concept="2OqwBi" id="3Vcd0Fo4yNA" role="3fr31v">
                    <node concept="37vLTw" id="3Vcd0Fo4yNB" role="2Oq$k0">
                      <ref role="3cqZAo" node="3Vcd0Fo4yM3" resolve="visited" />
                    </node>
                    <node concept="3JPx81" id="3Vcd0Fo4yNC" role="2OqNvi">
                      <node concept="37vLTw" id="3Vcd0Fo4yND" role="25WWJ7">
                        <ref role="3cqZAo" node="3Vcd0Fo4yO6" resolve="vtx" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="3Vcd0Fo4yNE" role="3cqZAp">
                <node concept="3clFbS" id="3Vcd0Fo4yNF" role="3clFbx">
                  <node concept="3clFbJ" id="3Vcd0Fo4yNP" role="3cqZAp">
                    <node concept="3clFbS" id="3Vcd0Fo4yNQ" role="3clFbx">
                      <node concept="3clFbF" id="3Vcd0Fo4yNR" role="3cqZAp">
                        <node concept="37vLTI" id="3Vcd0Fo4yNS" role="3clFbG">
                          <node concept="2OqwBi" id="3Vcd0Fo4yNT" role="37vLTJ">
                            <node concept="37vLTw" id="3Vcd0Fo4yNU" role="2Oq$k0">
                              <ref role="3cqZAo" node="3Vcd0Fo4yO6" resolve="vtx" />
                            </node>
                            <node concept="2OwXpG" id="3Vcd0Fo5jMc" role="2OqNvi">
                              <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                            </node>
                          </node>
                          <node concept="3uNrnE" id="3Vcd0Fo4yNW" role="37vLTx">
                            <node concept="37vLTw" id="3Vcd0Fo4yNX" role="2$L3a6">
                              <ref role="3cqZAo" node="3Vcd0Fo4yMa" resolve="nextClique" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="3Vcd0Fo4yNY" role="3clFbw">
                      <node concept="10Nm6u" id="3Vcd0Fo4yNZ" role="3uHU7w" />
                      <node concept="2OqwBi" id="_tf6vzg00v" role="3uHU7B">
                        <node concept="37vLTw" id="_tf6vzfZT0" role="2Oq$k0">
                          <ref role="3cqZAo" node="3Vcd0Fo4yO6" resolve="vtx" />
                        </node>
                        <node concept="2OwXpG" id="_tf6vzg05o" role="2OqNvi">
                          <ref role="2Oxat5" node="_tf6vzc$Qe" resolve="aspect" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eOVzh" id="3Vcd0Fo4yO1" role="3clFbw">
                  <node concept="3cmrfG" id="3Vcd0Fo4yO2" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="3Vcd0Fo4yO3" role="3uHU7B">
                    <node concept="37vLTw" id="3Vcd0Fo4yO4" role="2Oq$k0">
                      <ref role="3cqZAo" node="3Vcd0Fo4yO6" resolve="vtx" />
                    </node>
                    <node concept="2OwXpG" id="3Vcd0Fo5iFH" role="2OqNvi">
                      <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="3Vcd0Fo4yO6" role="1Duv9x">
              <property role="TrG5h" value="vtx" />
              <node concept="3uibUv" id="3Vcd0Fo5aph" role="1tU5fm">
                <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
              </node>
            </node>
            <node concept="37vLTw" id="3Vcd0Fo4yO8" role="1DdaDG">
              <ref role="3cqZAo" node="3Vcd0Fo4yR6" resolve="sortedGraph" />
            </node>
          </node>
          <node concept="3clFbH" id="_tf6vz0DGX" role="3cqZAp" />
          <node concept="3SKdUt" id="3Vcd0Fo4yOa" role="3cqZAp">
            <node concept="1PaTwC" id="3Vcd0Fo4yOb" role="1aUNEU">
              <node concept="3oM_SD" id="3Vcd0Fo4yOc" role="1PaTwD">
                <property role="3oM_SC" value="second" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yOd" role="1PaTwD">
                <property role="3oM_SC" value="top-down" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yOe" role="1PaTwD">
                <property role="3oM_SC" value="pass:" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="2TBKtozZhrx" role="3cqZAp">
            <node concept="1PaTwC" id="3Vcd0Fo4yOf" role="1aUNEU">
              <node concept="3oM_SD" id="3Vcd0Fo4yOg" role="1PaTwD">
                <property role="3oM_SC" value="find" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yOh" role="1PaTwD">
                <property role="3oM_SC" value="upper" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yOi" role="1PaTwD">
                <property role="3oM_SC" value="bound" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yOj" role="1PaTwD">
                <property role="3oM_SC" value="(top" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yOk" role="1PaTwD">
                <property role="3oM_SC" value="nodes" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yOl" role="1PaTwD">
                <property role="3oM_SC" value="where" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yOm" role="1PaTwD">
                <property role="3oM_SC" value="aspects" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yOn" role="1PaTwD">
                <property role="3oM_SC" value="are" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yOo" role="1PaTwD">
                <property role="3oM_SC" value="defined)" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="2TBKtozZhru" role="3cqZAp">
            <node concept="1PaTwC" id="3Vcd0Fo4yOp" role="1aUNEU">
              <node concept="3oM_SD" id="3Vcd0Fo4yOq" role="1PaTwD">
                <property role="3oM_SC" value="and" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yOr" role="1PaTwD">
                <property role="3oM_SC" value="starting" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yOs" role="1PaTwD">
                <property role="3oM_SC" value="from" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yOt" role="1PaTwD">
                <property role="3oM_SC" value="there" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yOu" role="1PaTwD">
                <property role="3oM_SC" value="merge" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yOv" role="1PaTwD">
                <property role="3oM_SC" value="possible" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yOw" role="1PaTwD">
                <property role="3oM_SC" value="branches" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yOx" role="1PaTwD">
                <property role="3oM_SC" value="of" />
              </node>
              <node concept="3oM_SD" id="3Vcd0Fo4yOy" role="1PaTwD">
                <property role="3oM_SC" value="cliques" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3Vcd0Fo4yOz" role="3cqZAp">
            <node concept="2OqwBi" id="3Vcd0Fo4yO$" role="3clFbG">
              <node concept="37vLTw" id="3Vcd0Fo4yO_" role="2Oq$k0">
                <ref role="3cqZAo" node="3Vcd0Fo4yM3" resolve="visited" />
              </node>
              <node concept="2EZike" id="3Vcd0Fo4yOA" role="2OqNvi" />
            </node>
          </node>
          <node concept="3cpWs8" id="3Vcd0Fo4yOB" role="3cqZAp">
            <node concept="3cpWsn" id="3Vcd0Fo4yOC" role="3cpWs9">
              <property role="TrG5h" value="it" />
              <node concept="uOF1S" id="3Vcd0Fo4yOD" role="1tU5fm">
                <node concept="3uibUv" id="3Vcd0Fo5t9A" role="uOL27">
                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                </node>
              </node>
              <node concept="2OqwBi" id="3Vcd0Fo4yOF" role="33vP2m">
                <node concept="37vLTw" id="3Vcd0Fo4yOG" role="2Oq$k0">
                  <ref role="3cqZAo" node="3Vcd0Fo4yR6" resolve="sortedGraph" />
                </node>
                <node concept="liA8E" id="3Vcd0Fo4yOH" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~LinkedList.descendingIterator()" resolve="descendingIterator" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2$JKZl" id="3Vcd0Fo4yOI" role="3cqZAp">
            <node concept="3clFbS" id="3Vcd0Fo4yOJ" role="2LFqv$">
              <node concept="3cpWs8" id="3Vcd0Fo4yOK" role="3cqZAp">
                <node concept="3cpWsn" id="3Vcd0Fo4yOL" role="3cpWs9">
                  <property role="TrG5h" value="vtx" />
                  <node concept="3uibUv" id="3Vcd0Fo5uVq" role="1tU5fm">
                    <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                  </node>
                  <node concept="2OqwBi" id="3Vcd0Fo4yON" role="33vP2m">
                    <node concept="37vLTw" id="3Vcd0Fo4yOO" role="2Oq$k0">
                      <ref role="3cqZAo" node="3Vcd0Fo4yOC" resolve="it" />
                    </node>
                    <node concept="v1n4t" id="3Vcd0Fo4yOP" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="3Vcd0Fo4yOQ" role="3cqZAp">
                <node concept="3clFbS" id="3Vcd0Fo4yOR" role="3clFbx">
                  <node concept="3clFbF" id="3Vcd0Fo4yOS" role="3cqZAp">
                    <node concept="2OqwBi" id="3Vcd0Fo4yOT" role="3clFbG">
                      <node concept="37vLTw" id="3Vcd0Fo4yOU" role="2Oq$k0">
                        <ref role="3cqZAo" node="3Vcd0Fo4yM3" resolve="visited" />
                      </node>
                      <node concept="TSZUe" id="3Vcd0Fo4yOV" role="2OqNvi">
                        <node concept="37vLTw" id="3Vcd0Fo4yOW" role="25WWJ7">
                          <ref role="3cqZAo" node="3Vcd0Fo4yOL" resolve="vtx" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3Vcd0Fo4yOX" role="3cqZAp">
                    <node concept="2OqwBi" id="3Vcd0Fo4yOY" role="3clFbG">
                      <node concept="37vLTw" id="3Vcd0Fo4yOZ" role="2Oq$k0">
                        <ref role="3cqZAo" node="3Vcd0Fo4yLW" resolve="stack" />
                      </node>
                      <node concept="2ArzE6" id="3Vcd0Fo4yP0" role="2OqNvi">
                        <node concept="37vLTw" id="3Vcd0Fo4yP1" role="25WWJ7">
                          <ref role="3cqZAo" node="3Vcd0Fo4yOL" resolve="vtx" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="3Vcd0Fo4yP2" role="3cqZAp">
                    <node concept="3cpWsn" id="3Vcd0Fo4yP3" role="3cpWs9">
                      <property role="TrG5h" value="cliqueUpperBoundFound" />
                      <node concept="10P_77" id="3Vcd0Fo4yP4" role="1tU5fm" />
                      <node concept="3clFbT" id="3Vcd0Fo4yP5" role="33vP2m" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="3Vcd0Fo4yP6" role="3cqZAp" />
                  <node concept="2$JKZl" id="3Vcd0Fo4yP7" role="3cqZAp">
                    <node concept="3clFbS" id="3Vcd0Fo4yP8" role="2LFqv$">
                      <node concept="3cpWs8" id="3Vcd0Fo4yP9" role="3cqZAp">
                        <node concept="3cpWsn" id="3Vcd0Fo4yPa" role="3cpWs9">
                          <property role="TrG5h" value="v" />
                          <node concept="3uibUv" id="3Vcd0Fo5w_z" role="1tU5fm">
                            <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                          </node>
                          <node concept="2OqwBi" id="3Vcd0Fo4yPc" role="33vP2m">
                            <node concept="37vLTw" id="3Vcd0Fo4yPd" role="2Oq$k0">
                              <ref role="3cqZAo" node="3Vcd0Fo4yLW" resolve="stack" />
                            </node>
                            <node concept="2oR75g" id="3Vcd0Fo4yPe" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="3Vcd0Fo4yPf" role="3cqZAp">
                        <node concept="3clFbS" id="3Vcd0Fo4yPg" role="3clFbx">
                          <node concept="3clFbF" id="3Vcd0Fo4yPn" role="3cqZAp">
                            <node concept="37vLTI" id="3Vcd0Fo4yPo" role="3clFbG">
                              <node concept="3clFbT" id="3Vcd0Fo4yPp" role="37vLTx">
                                <property role="3clFbU" value="true" />
                              </node>
                              <node concept="37vLTw" id="3Vcd0Fo4yPq" role="37vLTJ">
                                <ref role="3cqZAo" node="3Vcd0Fo4yP3" resolve="cliqueUpperBoundFound" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="3Vcd0Fo4yPr" role="3cqZAp" />
                          <node concept="3cpWs8" id="3Vcd0Fo7Ou2" role="3cqZAp">
                            <node concept="3cpWsn" id="3Vcd0Fo7Ou3" role="3cpWs9">
                              <property role="TrG5h" value="allExtendedBy" />
                              <node concept="2hMVRd" id="_tf6v$fb4n" role="1tU5fm">
                                <node concept="3uibUv" id="_tf6v$fb4p" role="2hN53Y">
                                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="3Vcd0Fo7Ou4" role="33vP2m">
                                <node concept="37vLTw" id="3Vcd0Fo7Ou5" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3Vcd0Fo4yPa" resolve="v" />
                                </node>
                                <node concept="2OwXpG" id="3Vcd0Fo7Ou6" role="2OqNvi">
                                  <ref role="2Oxat5" node="3KN3A4w3GWQ" resolve="allExtendedBy" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1DcWWT" id="3Vcd0Fo4yPs" role="3cqZAp">
                            <node concept="3clFbS" id="3Vcd0Fo4yPt" role="2LFqv$">
                              <node concept="3clFbJ" id="3Vcd0Fo4yPu" role="3cqZAp">
                                <node concept="3clFbS" id="3Vcd0Fo4yPv" role="3clFbx">
                                  <node concept="3SKdUt" id="3Vcd0Fo4yPw" role="3cqZAp">
                                    <node concept="1PaTwC" id="3Vcd0Fo4yPx" role="1aUNEU">
                                      <node concept="3oM_SD" id="3Vcd0Fo4yPy" role="1PaTwD">
                                        <property role="3oM_SC" value="align" />
                                      </node>
                                      <node concept="3oM_SD" id="3Vcd0Fo4yPz" role="1PaTwD">
                                        <property role="3oM_SC" value="children" />
                                      </node>
                                      <node concept="3oM_SD" id="3Vcd0Fo4yP$" role="1PaTwD">
                                        <property role="3oM_SC" value="ids" />
                                      </node>
                                      <node concept="3oM_SD" id="3Vcd0Fo4yP_" role="1PaTwD">
                                        <property role="3oM_SC" value="with" />
                                      </node>
                                      <node concept="3oM_SD" id="3Vcd0Fo4yPA" role="1PaTwD">
                                        <property role="3oM_SC" value="definitive" />
                                      </node>
                                      <node concept="3oM_SD" id="3Vcd0Fo4yPB" role="1PaTwD">
                                        <property role="3oM_SC" value="id" />
                                      </node>
                                      <node concept="3oM_SD" id="3Vcd0Fo4yPC" role="1PaTwD">
                                        <property role="3oM_SC" value="of" />
                                      </node>
                                      <node concept="3oM_SD" id="3Vcd0Fo4yPD" role="1PaTwD">
                                        <property role="3oM_SC" value="parent" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="3Vcd0Fo4yPE" role="3cqZAp">
                                    <node concept="37vLTI" id="3Vcd0Fo4yPF" role="3clFbG">
                                      <node concept="2OqwBi" id="3Vcd0Fo4yPG" role="37vLTx">
                                        <node concept="37vLTw" id="3Vcd0Fo4yPH" role="2Oq$k0">
                                          <ref role="3cqZAo" node="3Vcd0Fo4yPa" resolve="v" />
                                        </node>
                                        <node concept="2OwXpG" id="3Vcd0Fo5DtM" role="2OqNvi">
                                          <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="3Vcd0Fo4yPJ" role="37vLTJ">
                                        <node concept="37vLTw" id="3Vcd0Fo4yPK" role="2Oq$k0">
                                          <ref role="3cqZAo" node="3Vcd0Fo4yQ8" resolve="vsub" />
                                        </node>
                                        <node concept="2OwXpG" id="3Vcd0Fo5Dm5" role="2OqNvi">
                                          <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2d3UOw" id="3Vcd0Fo4yPM" role="3clFbw">
                                  <node concept="2OqwBi" id="3Vcd0Fo4yPN" role="3uHU7B">
                                    <node concept="37vLTw" id="3Vcd0Fo4yPO" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3Vcd0Fo4yQ8" resolve="vsub" />
                                    </node>
                                    <node concept="2OwXpG" id="3Vcd0Fo5Dep" role="2OqNvi">
                                      <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                                    </node>
                                  </node>
                                  <node concept="3cmrfG" id="3Vcd0Fo4yPQ" role="3uHU7w">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="3Vcd0Fo4yPR" role="3cqZAp">
                                <node concept="3clFbS" id="3Vcd0Fo4yPS" role="3clFbx">
                                  <node concept="3clFbF" id="3Vcd0Fo4yPT" role="3cqZAp">
                                    <node concept="2OqwBi" id="3Vcd0Fo4yPU" role="3clFbG">
                                      <node concept="37vLTw" id="3Vcd0Fo4yPV" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3Vcd0Fo4yLW" resolve="stack" />
                                      </node>
                                      <node concept="2ArzE6" id="3Vcd0Fo4yPW" role="2OqNvi">
                                        <node concept="37vLTw" id="3Vcd0Fo4yPX" role="25WWJ7">
                                          <ref role="3cqZAo" node="3Vcd0Fo4yQ8" resolve="vsub" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="3Vcd0Fo4yPY" role="3cqZAp">
                                    <node concept="2OqwBi" id="3Vcd0Fo4yPZ" role="3clFbG">
                                      <node concept="37vLTw" id="3Vcd0Fo4yQ0" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3Vcd0Fo4yM3" resolve="visited" />
                                      </node>
                                      <node concept="TSZUe" id="3Vcd0Fo4yQ1" role="2OqNvi">
                                        <node concept="37vLTw" id="3Vcd0Fo4yQ2" role="25WWJ7">
                                          <ref role="3cqZAo" node="3Vcd0Fo4yQ8" resolve="vsub" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3fqX7Q" id="3Vcd0Fo4yQ3" role="3clFbw">
                                  <node concept="2OqwBi" id="3Vcd0Fo4yQ4" role="3fr31v">
                                    <node concept="37vLTw" id="3Vcd0Fo4yQ5" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3Vcd0Fo4yM3" resolve="visited" />
                                    </node>
                                    <node concept="3JPx81" id="3Vcd0Fo4yQ6" role="2OqNvi">
                                      <node concept="37vLTw" id="3Vcd0Fo4yQ7" role="25WWJ7">
                                        <ref role="3cqZAo" node="3Vcd0Fo4yQ8" resolve="vsub" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWsn" id="3Vcd0Fo4yQ8" role="1Duv9x">
                              <property role="TrG5h" value="vsub" />
                              <node concept="3uibUv" id="3Vcd0Fo5zHX" role="1tU5fm">
                                <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="3Vcd0Fo7Ou7" role="1DdaDG">
                              <ref role="3cqZAo" node="3Vcd0Fo7Ou3" resolve="allExtendedBy" />
                            </node>
                          </node>
                          <node concept="3clFbH" id="3Vcd0Fo4yQd" role="3cqZAp" />
                        </node>
                        <node concept="1Wc70l" id="_tf6vzvg7q" role="3clFbw">
                          <node concept="2d3UOw" id="_tf6vzvhjJ" role="3uHU7B">
                            <node concept="3cmrfG" id="_tf6vzvhwf" role="3uHU7w">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="2OqwBi" id="_tf6vzvgIm" role="3uHU7B">
                              <node concept="37vLTw" id="_tf6vzvgBi" role="2Oq$k0">
                                <ref role="3cqZAo" node="3Vcd0Fo4yPa" resolve="v" />
                              </node>
                              <node concept="2OwXpG" id="_tf6vzvgVS" role="2OqNvi">
                                <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                              </node>
                            </node>
                          </node>
                          <node concept="1eOMI4" id="_tf6vzvfEi" role="3uHU7w">
                            <node concept="22lmx$" id="3Vcd0Fo4yQe" role="1eOMHV">
                              <node concept="37vLTw" id="3Vcd0Fo4yQf" role="3uHU7B">
                                <ref role="3cqZAo" node="3Vcd0Fo4yP3" resolve="cliqueUpperBoundFound" />
                              </node>
                              <node concept="3y3z36" id="3Vcd0Fo4yQg" role="3uHU7w">
                                <node concept="10Nm6u" id="3Vcd0Fo4yQh" role="3uHU7w" />
                                <node concept="2OqwBi" id="_tf6vzjbh9" role="3uHU7B">
                                  <node concept="37vLTw" id="_tf6vzjbcr" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3Vcd0Fo4yPa" resolve="v" />
                                  </node>
                                  <node concept="2OwXpG" id="_tf6vzjbn9" role="2OqNvi">
                                    <ref role="2Oxat5" node="_tf6vzc$Qe" resolve="aspect" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="9aQIb" id="3Vcd0Fo4yQo" role="9aQIa">
                          <node concept="3clFbS" id="3Vcd0Fo4yQp" role="9aQI4">
                            <node concept="3SKdUt" id="3Vcd0Fo4yQq" role="3cqZAp">
                              <node concept="1PaTwC" id="3Vcd0Fo4yQr" role="1aUNEU">
                                <node concept="3oM_SD" id="3Vcd0Fo4yQs" role="1PaTwD">
                                  <property role="3oM_SC" value="exclude" />
                                </node>
                                <node concept="3oM_SD" id="3Vcd0Fo4yQt" role="1PaTwD">
                                  <property role="3oM_SC" value="nodes" />
                                </node>
                                <node concept="3oM_SD" id="3Vcd0Fo4yQu" role="1PaTwD">
                                  <property role="3oM_SC" value="above" />
                                </node>
                                <node concept="3oM_SD" id="3Vcd0Fo4yQv" role="1PaTwD">
                                  <property role="3oM_SC" value="upper" />
                                </node>
                                <node concept="3oM_SD" id="3Vcd0Fo4yQw" role="1PaTwD">
                                  <property role="3oM_SC" value="bound" />
                                </node>
                                <node concept="3oM_SD" id="3Vcd0Fo4yQx" role="1PaTwD">
                                  <property role="3oM_SC" value="from" />
                                </node>
                                <node concept="3oM_SD" id="3Vcd0Fo4yQy" role="1PaTwD">
                                  <property role="3oM_SC" value="cliques" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="3Vcd0Fo4yQz" role="3cqZAp">
                              <node concept="37vLTI" id="3Vcd0Fo4yQ$" role="3clFbG">
                                <node concept="3cmrfG" id="3Vcd0Fo4yQ_" role="37vLTx">
                                  <property role="3cmrfH" value="-1" />
                                </node>
                                <node concept="2OqwBi" id="3Vcd0Fo4yQA" role="37vLTJ">
                                  <node concept="37vLTw" id="3Vcd0Fo4yQB" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3Vcd0Fo4yPa" resolve="v" />
                                  </node>
                                  <node concept="2OwXpG" id="3Vcd0Fo5DQR" role="2OqNvi">
                                    <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="3Vcd0Fo4yQD" role="3cqZAp">
                        <node concept="3clFbS" id="3Vcd0Fo4yQE" role="3clFbx">
                          <node concept="3clFbF" id="3Vcd0Fo4yQF" role="3cqZAp">
                            <node concept="2OqwBi" id="3Vcd0Fo4yQG" role="3clFbG">
                              <node concept="37vLTw" id="3Vcd0Fo4yQH" role="2Oq$k0">
                                <ref role="3cqZAo" node="3Vcd0Fo4yLW" resolve="stack" />
                              </node>
                              <node concept="2AryhJ" id="3Vcd0Fo4yQI" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="3Vcd0Fo4yQJ" role="3clFbw">
                          <node concept="37vLTw" id="3Vcd0Fo4yQK" role="3uHU7w">
                            <ref role="3cqZAo" node="3Vcd0Fo4yPa" resolve="v" />
                          </node>
                          <node concept="2OqwBi" id="3Vcd0Fo4yQL" role="3uHU7B">
                            <node concept="37vLTw" id="3Vcd0Fo4yQM" role="2Oq$k0">
                              <ref role="3cqZAo" node="3Vcd0Fo4yLW" resolve="stack" />
                            </node>
                            <node concept="2oR75g" id="3Vcd0Fo4yQN" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3Vcd0Fo4yQO" role="2$JKZa">
                      <node concept="37vLTw" id="3Vcd0Fo4yQP" role="2Oq$k0">
                        <ref role="3cqZAo" node="3Vcd0Fo4yLW" resolve="stack" />
                      </node>
                      <node concept="3GX2aA" id="3Vcd0Fo4yQQ" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="3Vcd0Fo4yQR" role="3clFbw">
                  <node concept="2OqwBi" id="3Vcd0Fo4yQS" role="3fr31v">
                    <node concept="37vLTw" id="3Vcd0Fo4yQT" role="2Oq$k0">
                      <ref role="3cqZAo" node="3Vcd0Fo4yM3" resolve="visited" />
                    </node>
                    <node concept="3JPx81" id="3Vcd0Fo4yQU" role="2OqNvi">
                      <node concept="37vLTw" id="3Vcd0Fo4yQV" role="25WWJ7">
                        <ref role="3cqZAo" node="3Vcd0Fo4yOL" resolve="vtx" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3Vcd0Fo4yQW" role="2$JKZa">
              <node concept="37vLTw" id="3Vcd0Fo4yQX" role="2Oq$k0">
                <ref role="3cqZAo" node="3Vcd0Fo4yOC" resolve="it" />
              </node>
              <node concept="v0PNk" id="3Vcd0Fo4yQY" role="2OqNvi" />
            </node>
          </node>
          <node concept="3cpWs6" id="3Vcd0Fo4yR0" role="3cqZAp">
            <node concept="37vLTw" id="3Vcd0Fo4yR1" role="3cqZAk">
              <ref role="3cqZAo" node="3Vcd0Fo4yMa" resolve="nextClique" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3Vcd0Fo4yR6" role="3clF46">
          <property role="TrG5h" value="sortedGraph" />
          <node concept="3uibUv" id="3Vcd0Fo4yR7" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~LinkedList" resolve="LinkedList" />
            <node concept="3uibUv" id="3Vcd0Fo4X6R" role="11_B2D">
              <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
            </node>
          </node>
        </node>
        <node concept="10Oyi0" id="3Vcd0Fo4yR2" role="3clF45" />
        <node concept="3Tm6S6" id="3Vcd0Fo4yR9" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="3Vcd0Fo4vyx" role="jymVt" />
      <node concept="3clFb_" id="6nx4rRkQTd3" role="jymVt">
        <property role="TrG5h" value="addToGraph" />
        <node concept="3clFbS" id="3KN3A4uUxNp" role="3clF47">
          <node concept="3clFbJ" id="3KN3A4w4Ohr" role="3cqZAp">
            <node concept="3fqX7Q" id="QpMEos4OQV" role="3clFbw">
              <node concept="2OqwBi" id="QpMEos4OQW" role="3fr31v">
                <node concept="37vLTw" id="QpMEos4OQX" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KN3A4uUxNj" resolve="graph" />
                </node>
                <node concept="2Nt0df" id="QpMEos4OQY" role="2OqNvi">
                  <node concept="37vLTw" id="QpMEos4OQZ" role="38cxEo">
                    <ref role="3cqZAo" node="3KN3A4uUxNh" resolve="lang" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="3KN3A4w4Oht" role="3clFbx">
              <node concept="3cpWs8" id="3KN3A4uUxNq" role="3cqZAp">
                <node concept="3cpWsn" id="3KN3A4uUxNr" role="3cpWs9">
                  <property role="TrG5h" value="vtx" />
                  <node concept="3uibUv" id="3KN3A4uUBAj" role="1tU5fm">
                    <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
                  </node>
                  <node concept="2ShNRf" id="3KN3A4uUxNt" role="33vP2m">
                    <node concept="1pGfFk" id="3KN3A4uUxNu" role="2ShVmc">
                      <ref role="37wK5l" node="3KN3A4uUwlm" resolve="AspectClique.CliqueBuilder.Vtx" />
                      <node concept="37vLTw" id="3KN3A4uUxNv" role="37wK5m">
                        <ref role="3cqZAo" node="3KN3A4uUxNh" resolve="lang" />
                      </node>
                      <node concept="37vLTw" id="_tf6vz7xFB" role="37wK5m">
                        <ref role="3cqZAo" node="_tf6vz5jDN" resolve="sidekick" />
                      </node>
                      <node concept="37vLTw" id="_tf6vze8pR" role="37wK5m">
                        <ref role="3cqZAo" node="_tf6vzdT9x" resolve="aspect" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3KN3A4uUxNw" role="3cqZAp">
                <node concept="37vLTI" id="3KN3A4uUxNx" role="3clFbG">
                  <node concept="3EllGN" id="3KN3A4uUxNy" role="37vLTJ">
                    <node concept="37vLTw" id="3KN3A4uUxNz" role="3ElVtu">
                      <ref role="3cqZAo" node="3KN3A4uUxNh" resolve="lang" />
                    </node>
                    <node concept="37vLTw" id="3KN3A4uUxN$" role="3ElQJh">
                      <ref role="3cqZAo" node="3KN3A4uUxNj" resolve="graph" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3KN3A4uUxN_" role="37vLTx">
                    <ref role="3cqZAo" node="3KN3A4uUxNr" resolve="vtx" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="_tf6vzr$yv" role="3cqZAp">
                <node concept="3clFbS" id="_tf6vzr$yx" role="3clFbx">
                  <node concept="3clFbF" id="_tf6vzr_qy" role="3cqZAp">
                    <node concept="37vLTI" id="_tf6vzr_qz" role="3clFbG">
                      <node concept="3EllGN" id="_tf6vzr_q$" role="37vLTJ">
                        <node concept="37vLTw" id="_tf6vzrAan" role="3ElVtu">
                          <ref role="3cqZAo" node="_tf6vz5jDN" resolve="sidekick" />
                        </node>
                        <node concept="37vLTw" id="_tf6vzr_qA" role="3ElQJh">
                          <ref role="3cqZAo" node="3KN3A4uUxNj" resolve="graph" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="_tf6vzr_qB" role="37vLTx">
                        <ref role="3cqZAo" node="3KN3A4uUxNr" resolve="vtx" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="_tf6vzr$JC" role="3clFbw">
                  <node concept="10Nm6u" id="_tf6vzr$VT" role="3uHU7w" />
                  <node concept="37vLTw" id="_tf6vzr$E$" role="3uHU7B">
                    <ref role="3cqZAo" node="_tf6vz5jDN" resolve="sidekick" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="_tf6vz6kXy" role="3cqZAp">
                <node concept="2OqwBi" id="_tf6vzhsrz" role="3clFbG">
                  <node concept="37vLTw" id="_tf6vzhtfB" role="2Oq$k0">
                    <ref role="3cqZAo" node="3KN3A4uUxNr" resolve="vtx" />
                  </node>
                  <node concept="liA8E" id="_tf6vzhsrA" role="2OqNvi">
                    <ref role="37wK5l" node="_tf6vz5GKU" resolve="updateGraph" />
                    <node concept="37vLTw" id="_tf6vz6mgc" role="37wK5m">
                      <ref role="3cqZAo" node="3KN3A4uUxNj" resolve="graph" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3KN3A4uUxNh" role="3clF46">
          <property role="TrG5h" value="lang" />
          <node concept="16syzq" id="6nx4rRkQWya" role="1tU5fm">
            <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
          </node>
        </node>
        <node concept="37vLTG" id="_tf6vz5jDN" role="3clF46">
          <property role="TrG5h" value="sidekick" />
          <node concept="16syzq" id="_tf6vz5sz5" role="1tU5fm">
            <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
          </node>
        </node>
        <node concept="37vLTG" id="_tf6vzdT9x" role="3clF46">
          <property role="TrG5h" value="aspect" />
          <node concept="16syzq" id="_tf6vze4A6" role="1tU5fm">
            <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
          </node>
        </node>
        <node concept="37vLTG" id="3KN3A4uUxNj" role="3clF46">
          <property role="TrG5h" value="graph" />
          <node concept="3rvAFt" id="3KN3A4uUxNk" role="1tU5fm">
            <node concept="16syzq" id="6nx4rRkQXdZ" role="3rvQeY">
              <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
            </node>
            <node concept="3uibUv" id="3KN3A4uUBo1" role="3rvSg0">
              <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="QpMEos4OgU" role="3clF45" />
        <node concept="3Tm6S6" id="3KN3A4uUxNo" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="_tf6vz5xac" role="jymVt" />
      <node concept="312cEu" id="3KN3A4uUwll" role="jymVt">
        <property role="TrG5h" value="Vtx" />
        <property role="2bfB8j" value="true" />
        <node concept="3clFbW" id="3KN3A4uUwlm" role="jymVt">
          <node concept="37vLTG" id="3KN3A4uUwln" role="3clF46">
            <property role="TrG5h" value="lang" />
            <node concept="16syzq" id="_tf6vzc5Wu" role="1tU5fm">
              <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
            </node>
          </node>
          <node concept="37vLTG" id="_tf6vz5vn8" role="3clF46">
            <property role="TrG5h" value="sidekick" />
            <node concept="16syzq" id="_tf6vzc5WE" role="1tU5fm">
              <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
            </node>
          </node>
          <node concept="37vLTG" id="_tf6vze6E3" role="3clF46">
            <property role="TrG5h" value="aspect" />
            <node concept="16syzq" id="_tf6vze6H2" role="1tU5fm">
              <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
            </node>
          </node>
          <node concept="3cqZAl" id="3KN3A4uUwlp" role="3clF45" />
          <node concept="3Tm6S6" id="6nx4rRkTZXj" role="1B3o_S" />
          <node concept="3clFbS" id="3KN3A4uUwlr" role="3clF47">
            <node concept="3clFbF" id="3KN3A4uUwls" role="3cqZAp">
              <node concept="37vLTI" id="3KN3A4uUwlt" role="3clFbG">
                <node concept="37vLTw" id="3KN3A4uUwlu" role="37vLTx">
                  <ref role="3cqZAo" node="3KN3A4uUwln" resolve="lang" />
                </node>
                <node concept="2OqwBi" id="3KN3A4uUwlv" role="37vLTJ">
                  <node concept="Xjq3P" id="3KN3A4uUwlw" role="2Oq$k0" />
                  <node concept="2OwXpG" id="3KN3A4uUwlx" role="2OqNvi">
                    <ref role="2Oxat5" node="3KN3A4uUwms" resolve="lang" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="_tf6vz5wpg" role="3cqZAp">
              <node concept="37vLTI" id="_tf6vz5wDF" role="3clFbG">
                <node concept="37vLTw" id="_tf6vz5wMU" role="37vLTx">
                  <ref role="3cqZAo" node="_tf6vz5vn8" resolve="sidekick" />
                </node>
                <node concept="2OqwBi" id="_tf6vz5wtX" role="37vLTJ">
                  <node concept="Xjq3P" id="_tf6vz5wpe" role="2Oq$k0" />
                  <node concept="2OwXpG" id="_tf6vz5wyU" role="2OqNvi">
                    <ref role="2Oxat5" node="_tf6vz1OM3" resolve="sidekick" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="_tf6vze7Rg" role="3cqZAp">
              <node concept="37vLTI" id="_tf6vze8gY" role="3clFbG">
                <node concept="37vLTw" id="_tf6vze8ll" role="37vLTx">
                  <ref role="3cqZAo" node="_tf6vze6E3" resolve="aspect" />
                </node>
                <node concept="2OqwBi" id="_tf6vze827" role="37vLTJ">
                  <node concept="Xjq3P" id="_tf6vze7Re" role="2Oq$k0" />
                  <node concept="2OwXpG" id="_tf6vze87K" role="2OqNvi">
                    <ref role="2Oxat5" node="_tf6vzc$Qe" resolve="aspect" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2tJIrI" id="3KN3A4uUxNH" role="jymVt" />
        <node concept="3clFb_" id="_tf6vz5GKU" role="jymVt">
          <property role="TrG5h" value="updateGraph" />
          <node concept="37vLTG" id="_tf6vz5GKV" role="3clF46">
            <property role="TrG5h" value="graph" />
            <node concept="3rvAFt" id="_tf6vz5GKW" role="1tU5fm">
              <node concept="16syzq" id="_tf6vz5GKX" role="3rvQeY">
                <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
              </node>
              <node concept="3uibUv" id="_tf6vz5GKY" role="3rvSg0">
                <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
              </node>
            </node>
          </node>
          <node concept="3cqZAl" id="_tf6vz5GKZ" role="3clF45" />
          <node concept="3Tm6S6" id="_tf6vz5GL0" role="1B3o_S" />
          <node concept="3clFbS" id="_tf6vz5GL1" role="3clF47">
            <node concept="3SKdUt" id="_tf6vz5GL2" role="3cqZAp">
              <node concept="1PaTwC" id="_tf6vz5GL3" role="1aUNEU">
                <node concept="3oM_SD" id="_tf6vz5GL4" role="1PaTwD">
                  <property role="3oM_SC" value="update" />
                </node>
                <node concept="3oM_SD" id="_tf6vz5GL5" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="_tf6vz5GL6" role="1PaTwD">
                  <property role="3oM_SC" value="graph" />
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="_tf6vz5GL7" role="3cqZAp">
              <node concept="3clFbS" id="_tf6vz5GL8" role="2LFqv$">
                <node concept="3clFbF" id="_tf6v$eAaS" role="3cqZAp">
                  <node concept="1rXfSq" id="_tf6v$eAaQ" role="3clFbG">
                    <ref role="37wK5l" node="_tf6v$dzIW" resolve="updateExtends" />
                    <node concept="Xjq3P" id="_tf6v$eADS" role="37wK5m" />
                    <node concept="3EllGN" id="_tf6v$eBHP" role="37wK5m">
                      <node concept="37vLTw" id="_tf6v$eBHQ" role="3ElVtu">
                        <ref role="3cqZAo" node="_tf6vz5GLx" resolve="abs" />
                      </node>
                      <node concept="37vLTw" id="_tf6v$eBHR" role="3ElQJh">
                        <ref role="3cqZAo" node="_tf6vz5GKV" resolve="graph" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="_tf6v$eBo4" role="37wK5m">
                      <ref role="3cqZAo" node="_tf6vz5GKV" resolve="graph" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="_tf6vz5GLx" role="1Duv9x">
                <property role="TrG5h" value="abs" />
                <node concept="16syzq" id="_tf6vz5GLy" role="1tU5fm">
                  <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                </node>
              </node>
              <node concept="2OqwBi" id="_tf6vz5GLz" role="1DdaDG">
                <node concept="37vLTw" id="_tf6vz5GL$" role="2Oq$k0">
                  <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
                </node>
                <node concept="liA8E" id="_tf6vz5GL_" role="2OqNvi">
                  <ref role="37wK5l" node="6nx4rRkOj1Y" resolve="getExtended" />
                  <node concept="10QFUN" id="_tf6vzg5ZW" role="37wK5m">
                    <node concept="2OqwBi" id="_tf6vzg5ZT" role="10QFUP">
                      <node concept="Xjq3P" id="_tf6vzhrAM" role="2Oq$k0" />
                      <node concept="2OwXpG" id="_tf6vzg5ZV" role="2OqNvi">
                        <ref role="2Oxat5" node="3KN3A4uUwms" resolve="lang" />
                      </node>
                    </node>
                    <node concept="16syzq" id="_tf6vzg5ZS" role="10QFUM">
                      <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="_tf6v$eEj8" role="3cqZAp">
              <node concept="3clFbS" id="_tf6v$eEja" role="3clFbx">
                <node concept="1DcWWT" id="_tf6v$eCah" role="3cqZAp">
                  <node concept="3clFbS" id="_tf6v$eCai" role="2LFqv$">
                    <node concept="3clFbF" id="_tf6v$eCaj" role="3cqZAp">
                      <node concept="1rXfSq" id="_tf6v$eCak" role="3clFbG">
                        <ref role="37wK5l" node="_tf6v$dzIW" resolve="updateExtends" />
                        <node concept="Xjq3P" id="_tf6v$eCal" role="37wK5m" />
                        <node concept="3EllGN" id="_tf6v$eCam" role="37wK5m">
                          <node concept="37vLTw" id="_tf6v$eCan" role="3ElVtu">
                            <ref role="3cqZAo" node="_tf6v$eCaq" resolve="abs" />
                          </node>
                          <node concept="37vLTw" id="_tf6v$eCao" role="3ElQJh">
                            <ref role="3cqZAo" node="_tf6vz5GKV" resolve="graph" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="_tf6v$eCap" role="37wK5m">
                          <ref role="3cqZAo" node="_tf6vz5GKV" resolve="graph" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="_tf6v$eCaq" role="1Duv9x">
                    <property role="TrG5h" value="abs" />
                    <node concept="16syzq" id="_tf6v$eCar" role="1tU5fm">
                      <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="_tf6v$eCas" role="1DdaDG">
                    <node concept="37vLTw" id="_tf6v$eCat" role="2Oq$k0">
                      <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
                    </node>
                    <node concept="liA8E" id="_tf6v$eCau" role="2OqNvi">
                      <ref role="37wK5l" node="6nx4rRkOj1Y" resolve="getExtended" />
                      <node concept="10QFUN" id="_tf6v$eCav" role="37wK5m">
                        <node concept="2OqwBi" id="_tf6v$eCaw" role="10QFUP">
                          <node concept="Xjq3P" id="_tf6v$eCax" role="2Oq$k0" />
                          <node concept="2OwXpG" id="_tf6v$eHxg" role="2OqNvi">
                            <ref role="2Oxat5" node="_tf6vz1OM3" resolve="sidekick" />
                          </node>
                        </node>
                        <node concept="16syzq" id="_tf6v$eCaz" role="10QFUM">
                          <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="_tf6v$eFzh" role="3clFbw">
                <node concept="10Nm6u" id="_tf6v$eFVS" role="3uHU7w" />
                <node concept="37vLTw" id="_tf6v$eFbz" role="3uHU7B">
                  <ref role="3cqZAo" node="_tf6vz1OM3" resolve="sidekick" />
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="_tf6vz5GLB" role="3cqZAp">
              <node concept="3clFbS" id="_tf6vz5GLC" role="2LFqv$">
                <node concept="3clFbF" id="_tf6v$eIpZ" role="3cqZAp">
                  <node concept="1rXfSq" id="_tf6v$eIpX" role="3clFbG">
                    <ref role="37wK5l" node="_tf6v$dzIW" resolve="updateExtends" />
                    <node concept="3EllGN" id="_tf6v$eISg" role="37wK5m">
                      <node concept="37vLTw" id="_tf6v$eISh" role="3ElVtu">
                        <ref role="3cqZAo" node="_tf6vz5GM1" resolve="spec" />
                      </node>
                      <node concept="37vLTw" id="_tf6v$eISi" role="3ElQJh">
                        <ref role="3cqZAo" node="_tf6vz5GKV" resolve="graph" />
                      </node>
                    </node>
                    <node concept="Xjq3P" id="_tf6v$eJ7m" role="37wK5m" />
                    <node concept="37vLTw" id="_tf6v$eJh5" role="37wK5m">
                      <ref role="3cqZAo" node="_tf6vz5GKV" resolve="graph" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="_tf6vz5GM1" role="1Duv9x">
                <property role="TrG5h" value="spec" />
                <node concept="16syzq" id="_tf6vz5GM2" role="1tU5fm">
                  <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                </node>
              </node>
              <node concept="2OqwBi" id="_tf6vz5GM3" role="1DdaDG">
                <node concept="37vLTw" id="_tf6vz5GM4" role="2Oq$k0">
                  <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
                </node>
                <node concept="liA8E" id="_tf6vz5GM5" role="2OqNvi">
                  <ref role="37wK5l" node="6nx4rRkOiUG" resolve="getExtending" />
                  <node concept="10QFUN" id="_tf6vzg70V" role="37wK5m">
                    <node concept="2OqwBi" id="_tf6vzg70S" role="10QFUP">
                      <node concept="Xjq3P" id="_tf6vzhs1W" role="2Oq$k0" />
                      <node concept="2OwXpG" id="_tf6vzg70U" role="2OqNvi">
                        <ref role="2Oxat5" node="3KN3A4uUwms" resolve="lang" />
                      </node>
                    </node>
                    <node concept="16syzq" id="_tf6vzg70R" role="10QFUM">
                      <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="_tf6v$eLWr" role="3cqZAp">
              <node concept="3clFbS" id="_tf6v$eLWs" role="3clFbx">
                <node concept="1DcWWT" id="_tf6v$eLWt" role="3cqZAp">
                  <node concept="3clFbS" id="_tf6v$eLWu" role="2LFqv$">
                    <node concept="3clFbF" id="_tf6v$eLWv" role="3cqZAp">
                      <node concept="1rXfSq" id="_tf6v$eLWw" role="3clFbG">
                        <ref role="37wK5l" node="_tf6v$dzIW" resolve="updateExtends" />
                        <node concept="3EllGN" id="_tf6v$eLWy" role="37wK5m">
                          <node concept="37vLTw" id="_tf6v$eLWz" role="3ElVtu">
                            <ref role="3cqZAo" node="_tf6v$eLWA" resolve="spec" />
                          </node>
                          <node concept="37vLTw" id="_tf6v$eLW$" role="3ElQJh">
                            <ref role="3cqZAo" node="_tf6vz5GKV" resolve="graph" />
                          </node>
                        </node>
                        <node concept="Xjq3P" id="_tf6v$eLWx" role="37wK5m" />
                        <node concept="37vLTw" id="_tf6v$eLW_" role="37wK5m">
                          <ref role="3cqZAo" node="_tf6vz5GKV" resolve="graph" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="_tf6v$eLWA" role="1Duv9x">
                    <property role="TrG5h" value="spec" />
                    <node concept="16syzq" id="_tf6v$eLWB" role="1tU5fm">
                      <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="_tf6v$eLWC" role="1DdaDG">
                    <node concept="37vLTw" id="_tf6v$eLWD" role="2Oq$k0">
                      <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
                    </node>
                    <node concept="liA8E" id="_tf6v$eLWE" role="2OqNvi">
                      <ref role="37wK5l" node="6nx4rRkOiUG" resolve="getExtending" />
                      <node concept="10QFUN" id="_tf6v$eLWF" role="37wK5m">
                        <node concept="2OqwBi" id="_tf6v$eLWG" role="10QFUP">
                          <node concept="Xjq3P" id="_tf6v$eLWH" role="2Oq$k0" />
                          <node concept="2OwXpG" id="_tf6v$eLWI" role="2OqNvi">
                            <ref role="2Oxat5" node="_tf6vz1OM3" resolve="sidekick" />
                          </node>
                        </node>
                        <node concept="16syzq" id="_tf6v$eLWJ" role="10QFUM">
                          <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="_tf6v$eLWK" role="3clFbw">
                <node concept="10Nm6u" id="_tf6v$eLWL" role="3uHU7w" />
                <node concept="37vLTw" id="_tf6v$eLWM" role="3uHU7B">
                  <ref role="3cqZAo" node="_tf6vz1OM3" resolve="sidekick" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2tJIrI" id="_tf6v$dpEZ" role="jymVt" />
        <node concept="3clFb_" id="_tf6v$dzIW" role="jymVt">
          <property role="TrG5h" value="updateExtends" />
          <node concept="37vLTG" id="_tf6v$ef3_" role="3clF46">
            <property role="TrG5h" value="spec" />
            <node concept="3uibUv" id="_tf6v$euNW" role="1tU5fm">
              <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
            </node>
          </node>
          <node concept="37vLTG" id="_tf6v$ef3t" role="3clF46">
            <property role="TrG5h" value="abs" />
            <node concept="3uibUv" id="_tf6v$eu0f" role="1tU5fm">
              <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
            </node>
          </node>
          <node concept="37vLTG" id="_tf6v$dSLk" role="3clF46">
            <property role="TrG5h" value="graph" />
            <node concept="3rvAFt" id="_tf6v$edky" role="1tU5fm">
              <node concept="16syzq" id="_tf6v$edqq" role="3rvQeY">
                <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
              </node>
              <node concept="3uibUv" id="_tf6v$eebV" role="3rvSg0">
                <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
              </node>
            </node>
          </node>
          <node concept="3cqZAl" id="_tf6v$dzIY" role="3clF45" />
          <node concept="3Tm6S6" id="_tf6v$dzIZ" role="1B3o_S" />
          <node concept="3clFbS" id="_tf6v$dzJ0" role="3clF47">
            <node concept="3clFbJ" id="_tf6v$ews_" role="3cqZAp">
              <node concept="3clFbS" id="_tf6v$ewsB" role="3clFbx">
                <node concept="3clFbF" id="_tf6v$exN0" role="3cqZAp">
                  <node concept="2OqwBi" id="_tf6v$eyHK" role="3clFbG">
                    <node concept="2OqwBi" id="_tf6v$exQo" role="2Oq$k0">
                      <node concept="37vLTw" id="_tf6v$exMY" role="2Oq$k0">
                        <ref role="3cqZAo" node="_tf6v$ef3_" resolve="spec" />
                      </node>
                      <node concept="2OwXpG" id="_tf6v$ey2h" role="2OqNvi">
                        <ref role="2Oxat5" node="3KN3A4uUwmv" resolve="allExtends" />
                      </node>
                    </node>
                    <node concept="TSZUe" id="_tf6v$ezsw" role="2OqNvi">
                      <node concept="37vLTw" id="_tf6v$ezN3" role="25WWJ7">
                        <ref role="3cqZAo" node="_tf6v$ef3t" resolve="abs" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="_tf6v$ezUq" role="3cqZAp">
                  <node concept="2OqwBi" id="_tf6v$ezUr" role="3clFbG">
                    <node concept="2OqwBi" id="_tf6v$ezUs" role="2Oq$k0">
                      <node concept="37vLTw" id="_tf6v$e$nM" role="2Oq$k0">
                        <ref role="3cqZAo" node="_tf6v$ef3t" resolve="abs" />
                      </node>
                      <node concept="2OwXpG" id="_tf6v$e$Lh" role="2OqNvi">
                        <ref role="2Oxat5" node="3KN3A4w3GWQ" resolve="allExtendedBy" />
                      </node>
                    </node>
                    <node concept="TSZUe" id="_tf6v$ezUv" role="2OqNvi">
                      <node concept="37vLTw" id="_tf6v$e_cu" role="25WWJ7">
                        <ref role="3cqZAo" node="_tf6v$ef3_" resolve="spec" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="_tf6v$exeR" role="3clFbw">
                <node concept="3y3z36" id="_tf6v$ex_O" role="3uHU7w">
                  <node concept="10Nm6u" id="_tf6v$exDx" role="3uHU7w" />
                  <node concept="37vLTw" id="_tf6v$exnw" role="3uHU7B">
                    <ref role="3cqZAo" node="_tf6v$ef3_" resolve="spec" />
                  </node>
                </node>
                <node concept="3y3z36" id="_tf6v$ex29" role="3uHU7B">
                  <node concept="37vLTw" id="_tf6v$ewOK" role="3uHU7B">
                    <ref role="3cqZAo" node="_tf6v$ef3t" resolve="abs" />
                  </node>
                  <node concept="10Nm6u" id="_tf6v$ex6r" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2tJIrI" id="_tf6vzgVU8" role="jymVt" />
        <node concept="312cEg" id="3KN3A4uUwms" role="jymVt">
          <property role="TrG5h" value="lang" />
          <node concept="3Tm6S6" id="3KN3A4uUwmt" role="1B3o_S" />
          <node concept="16syzq" id="_tf6vzc75$" role="1tU5fm">
            <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
          </node>
        </node>
        <node concept="312cEg" id="_tf6vz1OM3" role="jymVt">
          <property role="TrG5h" value="sidekick" />
          <node concept="3Tm6S6" id="_tf6vz1OM4" role="1B3o_S" />
          <node concept="16syzq" id="_tf6vzc9B6" role="1tU5fm">
            <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
          </node>
        </node>
        <node concept="312cEg" id="_tf6vzc$Qe" role="jymVt">
          <property role="TrG5h" value="aspect" />
          <node concept="3Tm6S6" id="_tf6vzc$Qf" role="1B3o_S" />
          <node concept="16syzq" id="_tf6vzcO4E" role="1tU5fm">
            <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
          </node>
        </node>
        <node concept="312cEg" id="3KN3A4uUwmv" role="jymVt">
          <property role="TrG5h" value="allExtends" />
          <node concept="3Tm6S6" id="3KN3A4uUwmw" role="1B3o_S" />
          <node concept="2hMVRd" id="_tf6v$d83J" role="1tU5fm">
            <node concept="3uibUv" id="_tf6v$d83L" role="2hN53Y">
              <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
            </node>
          </node>
          <node concept="2ShNRf" id="3KN3A4uUwmz" role="33vP2m">
            <node concept="2i4dXS" id="_tf6v$dc_X" role="2ShVmc">
              <node concept="3uibUv" id="_tf6v$dc_Z" role="HW$YZ">
                <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
              </node>
            </node>
          </node>
        </node>
        <node concept="312cEg" id="3KN3A4w3GWQ" role="jymVt">
          <property role="TrG5h" value="allExtendedBy" />
          <node concept="3Tm6S6" id="3KN3A4w3GWR" role="1B3o_S" />
          <node concept="2hMVRd" id="_tf6v$daed" role="1tU5fm">
            <node concept="3uibUv" id="_tf6v$daef" role="2hN53Y">
              <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
            </node>
          </node>
          <node concept="2ShNRf" id="3KN3A4w3GWU" role="33vP2m">
            <node concept="2i4dXS" id="_tf6v$deku" role="2ShVmc">
              <node concept="3uibUv" id="_tf6v$dekw" role="HW$YZ">
                <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.CliqueBuilder.Vtx" />
              </node>
            </node>
          </node>
        </node>
        <node concept="312cEg" id="3KN3A4uVa13" role="jymVt">
          <property role="TrG5h" value="clique" />
          <node concept="3Tm6S6" id="3KN3A4uVa14" role="1B3o_S" />
          <node concept="10Oyi0" id="3KN3A4uVbNU" role="1tU5fm" />
          <node concept="3cmrfG" id="3KN3A4uVc1H" role="33vP2m">
            <property role="3cmrfH" value="-1" />
          </node>
        </node>
        <node concept="3Tm6S6" id="3KN3A4uUwmA" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="6nx4rRkPnQV" role="jymVt" />
      <node concept="312cEg" id="6nx4rRkNR$i" role="jymVt">
        <property role="TrG5h" value="discoverable" />
        <node concept="3Tm6S6" id="6nx4rRkNR$j" role="1B3o_S" />
        <node concept="3uibUv" id="6nx4rRkNR$l" role="1tU5fm">
          <ref role="3uigEE" node="NKt6ynom3d" resolve="AspectDiscoverable" />
          <node concept="16syzq" id="6nx4rRkNR$m" role="11_B2D">
            <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
          </node>
          <node concept="16syzq" id="6nx4rRkNR$n" role="11_B2D">
            <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6nx4rRkNI$q" role="1B3o_S" />
      <node concept="16euLQ" id="6nx4rRkNLdo" role="16eVyc">
        <property role="TrG5h" value="L" />
      </node>
      <node concept="16euLQ" id="6nx4rRkNQt3" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="6nx4rRkNQZk" role="3ztrMU">
          <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KN3A4uYPJe" role="jymVt" />
    <node concept="2YIFZL" id="5MNibEMTTHy" role="jymVt">
      <property role="TrG5h" value="namespaceId" />
      <node concept="37vLTG" id="5MNibEMTXyp" role="3clF46">
        <property role="TrG5h" value="namespace" />
        <node concept="17QB3L" id="5MNibEMTXWC" role="1tU5fm" />
      </node>
      <node concept="10Oyi0" id="5MNibEMTWBY" role="3clF45" />
      <node concept="3clFbS" id="5MNibEMTTHA" role="3clF47">
        <node concept="3clFbF" id="5MNibEMTYOW" role="3cqZAp">
          <node concept="2OqwBi" id="5MNibEMU07R" role="3clFbG">
            <node concept="37vLTw" id="5MNibEMTYOV" role="2Oq$k0">
              <ref role="3cqZAo" node="5MNibEMTF3N" resolve="NAMESPACE_TO_ID" />
            </node>
            <node concept="liA8E" id="5MNibEMU2hv" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~ConcurrentHashMap.computeIfAbsent(java.lang.Object,java.util.function.Function)" resolve="computeIfAbsent" />
              <node concept="37vLTw" id="5MNibEMU3x$" role="37wK5m">
                <ref role="3cqZAo" node="5MNibEMTXyp" resolve="namespace" />
              </node>
              <node concept="1bVj0M" id="5MNibEMU55h" role="37wK5m">
                <node concept="37vLTG" id="5MNibEMU5s9" role="1bW2Oz">
                  <property role="TrG5h" value="key" />
                  <node concept="17QB3L" id="5MNibEMU5OV" role="1tU5fm" />
                </node>
                <node concept="3clFbS" id="5MNibEMU55j" role="1bW5cS">
                  <node concept="3clFbF" id="5MNibEMU7AO" role="3cqZAp">
                    <node concept="2OqwBi" id="5MNibEMU8qY" role="3clFbG">
                      <node concept="37vLTw" id="5MNibEMU7AM" role="2Oq$k0">
                        <ref role="3cqZAo" node="5MNibEMTuUm" resolve="NEXT_NAMESPACE_ID" />
                      </node>
                      <node concept="liA8E" id="5MNibEMU9dW" role="2OqNvi">
                        <ref role="37wK5l" to="i5cy:~AtomicInteger.getAndIncrement()" resolve="getAndIncrement" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6nx4rRkX38s" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5MNibEMTP_Z" role="jymVt" />
    <node concept="Wx3nA" id="5MNibEMTuUm" role="jymVt">
      <property role="TrG5h" value="NEXT_NAMESPACE_ID" />
      <node concept="3Tm6S6" id="5MNibEMTuUo" role="1B3o_S" />
      <node concept="3uibUv" id="5MNibEMTyP0" role="1tU5fm">
        <ref role="3uigEE" to="i5cy:~AtomicInteger" resolve="AtomicInteger" />
      </node>
      <node concept="2ShNRf" id="5MNibEMT$VQ" role="33vP2m">
        <node concept="1pGfFk" id="5MNibEMT$vo" role="2ShVmc">
          <ref role="37wK5l" to="i5cy:~AtomicInteger.&lt;init&gt;(int)" resolve="AtomicInteger" />
          <node concept="3cmrfG" id="5MNibEMT_Mx" role="37wK5m">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="5MNibEMTF3N" role="jymVt">
      <property role="TrG5h" value="NAMESPACE_TO_ID" />
      <node concept="3Tm6S6" id="5MNibEMTF3P" role="1B3o_S" />
      <node concept="3uibUv" id="5MNibEMTK0S" role="1tU5fm">
        <ref role="3uigEE" to="5zyv:~ConcurrentHashMap" resolve="ConcurrentHashMap" />
        <node concept="17QB3L" id="5MNibEMTKP0" role="11_B2D" />
        <node concept="3uibUv" id="5MNibEMTLfz" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="2ShNRf" id="5MNibEMTO_r" role="33vP2m">
        <node concept="1pGfFk" id="5MNibEMTOyT" role="2ShVmc">
          <ref role="37wK5l" to="5zyv:~ConcurrentHashMap.&lt;init&gt;()" resolve="ConcurrentHashMap" />
          <node concept="17QB3L" id="5MNibEMTOyU" role="1pMfVU" />
          <node concept="3uibUv" id="5MNibEMTOyV" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5MNibEMTreG" role="jymVt" />
    <node concept="3Tm1VV" id="3KN3A4uUhmX" role="1B3o_S" />
    <node concept="16euLQ" id="3KN3A4uUhop" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3uibUv" id="3KN3A4uUhp5" role="3ztrMU">
        <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
      </node>
    </node>
    <node concept="3UR2Jj" id="3KN3A4uUhvw" role="lGtFl">
      <node concept="TZ5HA" id="3KN3A4uUhvx" role="TZ5H$">
        <node concept="1dT_AC" id="3KN3A4uUhvy" role="1dT_Ay">
          <property role="1dT_AB" value="A &quot;clique&quot; is a collection of interrelated aspects coming from languages that have &quot;extends&quot; relationships." />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3KN3A4uXGOp" role="jymVt">
      <property role="TrG5h" value="aspects" />
      <node concept="3Tm6S6" id="3KN3A4uXGOq" role="1B3o_S" />
      <node concept="_YKpA" id="3KN3A4uXGOs" role="1tU5fm">
        <node concept="16syzq" id="_tf6vzf77r" role="_ZDj9">
          <ref role="16sUi3" node="3KN3A4uUhop" resolve="T" />
        </node>
      </node>
      <node concept="2ShNRf" id="4ekZiHe4eAC" role="33vP2m">
        <node concept="Tc6Ow" id="4ekZiHe4e$5" role="2ShVmc">
          <node concept="16syzq" id="_tf6vzf8pJ" role="HW$YZ">
            <ref role="16sUi3" node="3KN3A4uUhop" resolve="T" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5MNibEMUq5h" role="jymVt">
      <property role="TrG5h" value="namespaceBits" />
      <node concept="3Tm6S6" id="5MNibEMUq5i" role="1B3o_S" />
      <node concept="3uibUv" id="5MNibEMUvgS" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~BitSet" resolve="BitSet" />
      </node>
      <node concept="2ShNRf" id="5MNibEMUx8d" role="33vP2m">
        <node concept="1pGfFk" id="5MNibEMUx5E" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~BitSet.&lt;init&gt;()" resolve="BitSet" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="66WUpTItD1B" role="jymVt">
      <property role="TrG5h" value="coveredNamespaces" />
      <node concept="3Tm6S6" id="66WUpTItptE" role="1B3o_S" />
      <node concept="2hMVRd" id="66WUpTItBas" role="1tU5fm">
        <node concept="17QB3L" id="66WUpTItMQs" role="2hN53Y" />
      </node>
      <node concept="2ShNRf" id="66WUpTIutx$" role="33vP2m">
        <node concept="2i4dXS" id="66WUpTIuucp" role="2ShVmc">
          <node concept="17QB3L" id="66WUpTIuxuT" role="HW$YZ" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5EDW3XF5Z95">
    <property role="TrG5h" value="AbstractCoderulesManifest" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="1LBj9w_9VfE" role="jymVt" />
    <node concept="3clFbW" id="1LBj9w_9VgG" role="jymVt">
      <node concept="3cqZAl" id="1LBj9w_9VgI" role="3clF45" />
      <node concept="3Tm1VV" id="1LBj9w_9VgJ" role="1B3o_S" />
      <node concept="3clFbS" id="1LBj9w_9VgK" role="3clF47">
        <node concept="3clFbF" id="1LBj9w_9Vjg" role="3cqZAp">
          <node concept="37vLTI" id="1LBj9w_9Vji" role="3clFbG">
            <node concept="2OqwBi" id="1LBj9w_9VmX" role="37vLTJ">
              <node concept="Xjq3P" id="1LBj9w_9Vns" role="2Oq$k0" />
              <node concept="2OwXpG" id="1LBj9w_9Vn0" role="2OqNvi">
                <ref role="2Oxat5" node="1LBj9w_9Vjc" resolve="coderulesAspect" />
              </node>
            </node>
            <node concept="37vLTw" id="1LBj9w_9Vjm" role="37vLTx">
              <ref role="3cqZAo" node="1LBj9w_9VhA" resolve="coderulesAspect" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1LBj9w_9VhA" role="3clF46">
        <property role="TrG5h" value="coderulesAspect" />
        <node concept="3uibUv" id="1LBj9w_9Vh_" role="1tU5fm">
          <ref role="3uigEE" node="NKt6yp1COZ" resolve="AbstractCoderulesAspect" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5EDW3XF5Zad" role="jymVt" />
    <node concept="3clFb_" id="1LBj9w_9VAl" role="jymVt">
      <property role="TrG5h" value="coderulesAspect" />
      <node concept="3uibUv" id="1LBj9w_9VCY" role="3clF45">
        <ref role="3uigEE" node="NKt6yomNZE" resolve="CoderulesAspect" />
      </node>
      <node concept="3Tm1VV" id="1LBj9w_9VAo" role="1B3o_S" />
      <node concept="3clFbS" id="1LBj9w_9VAp" role="3clF47">
        <node concept="3clFbF" id="1LBj9w_9VJ3" role="3cqZAp">
          <node concept="37vLTw" id="1LBj9w_9VJ2" role="3clFbG">
            <ref role="3cqZAo" node="1LBj9w_9Vjc" resolve="coderulesAspect" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1LBj9w_9VFL" role="jymVt" />
    <node concept="3clFb_" id="6UWSvq4Vu5V" role="jymVt">
      <property role="TrG5h" value="macroTables" />
      <property role="1EzhhJ" value="true" />
      <node concept="3vKaQO" id="6UWSvq4Vu6$" role="3clF45">
        <node concept="3uibUv" id="tbauFxRB8v" role="3O5elw">
          <ref role="3uigEE" to="i348:tbauFxRzkz" resolve="MacroTable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6UWSvq4Vu5Y" role="1B3o_S" />
      <node concept="3clFbS" id="6UWSvq4Vu5Z" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5EDW3XF5Zaf" role="jymVt" />
    <node concept="3clFb_" id="4MqhgXUaiLz" role="jymVt">
      <property role="TrG5h" value="ruleTables" />
      <property role="1EzhhJ" value="true" />
      <node concept="3vKaQO" id="5EDW3XF609H" role="3clF45">
        <node concept="3uibUv" id="tbauFxRRsb" role="3O5elw">
          <ref role="3uigEE" to="i348:4MqhgXU9fm3" resolve="RuleTable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4MqhgXUaiLA" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXUaiLB" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5EDW3XF60aY" role="jymVt" />
    <node concept="3clFb_" id="5EDW3XF60ae" role="jymVt">
      <property role="TrG5h" value="queryTables" />
      <property role="1EzhhJ" value="true" />
      <node concept="3vKaQO" id="5EDW3XF60af" role="3clF45">
        <node concept="3uibUv" id="tbauFxRQEm" role="3O5elw">
          <ref role="3uigEE" to="i348:tbauFxRORi" resolve="QueryTable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5EDW3XF60ah" role="1B3o_S" />
      <node concept="3clFbS" id="5EDW3XF60ai" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5EDW3XF5Zaw" role="jymVt" />
    <node concept="3clFb_" id="2WtKs4tZlCC" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="programSpecBuilder" />
      <node concept="3clFbS" id="2WtKs4tZlCF" role="3clF47" />
      <node concept="3Tm1VV" id="2WtKs4tZlzz" role="1B3o_S" />
      <node concept="3uibUv" id="5tAk4yVYbfK" role="3clF45">
        <ref role="3uigEE" to="i348:5tAk4yVWROK" resolve="ProgramSpecBuilder" />
      </node>
    </node>
    <node concept="2tJIrI" id="5EDW3XF5Zai" role="jymVt" />
    <node concept="312cEg" id="1LBj9w_9Vjc" role="jymVt">
      <property role="TrG5h" value="coderulesAspect" />
      <node concept="3Tm6S6" id="1LBj9w_9Vjd" role="1B3o_S" />
      <node concept="3uibUv" id="1LBj9w_9Vjf" role="1tU5fm">
        <ref role="3uigEE" node="NKt6yp1COZ" resolve="AbstractCoderulesAspect" />
      </node>
    </node>
    <node concept="2tJIrI" id="1LBj9w_9VzP" role="jymVt" />
    <node concept="3Tm1VV" id="5EDW3XF5Z96" role="1B3o_S" />
  </node>
</model>

