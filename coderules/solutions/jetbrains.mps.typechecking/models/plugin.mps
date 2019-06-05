<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7ff0776c-aea4-4df2-88a3-2efb6b568dc3(jetbrains.mps.typechecking.plugin)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="13" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
  </languages>
  <imports>
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="4it6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.loading(MPS.Core/)" />
    <import index="w0gx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.structure.modules(MPS.Core/)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="cmfw" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.event(MPS.OpenAPI/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="tj24" ref="r:0fbbb63a-fd15-46e1-8136-78049f6d6e63(jetbrains.mps.typechecking.service)" />
    <import index="p5xd" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typechecking.internal(MPS.Core/)" />
    <import index="ev0w" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typechecking.backend(MPS.Core/)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="h83j" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typesystem(MPS.Core/)" />
    <import index="7jhi" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.pattern(MPS.Core/)" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1204478074808" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_MPSProject" flags="nn" index="1KvdUw" />
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178834" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDeclaration" flags="ng" index="2uRRBy">
        <child id="481983775135178836" name="initBlock" index="2uRRB$" />
        <child id="481983775135178837" name="disposeBlock" index="2uRRB_" />
      </concept>
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
        <child id="481983775135178844" name="fieldDeclaration" index="2uRRBG" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
      <concept id="481983775135178819" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDisposeBlock" flags="in" index="2uRRBN" />
      <concept id="481983775135178825" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginInitBlock" flags="in" index="2uRRBT" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
      <concept id="3418954410726344423" name="jetbrains.mps.lang.plugin.standalone.structure.PlatformAccessExpression" flags="ng" index="XUXob" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
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
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
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
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="1423104411234567454" name="repo" index="ukAjM" />
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
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
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
    </language>
  </registry>
  <node concept="2DaZZR" id="2zU3cYqx4HT" />
  <node concept="2uRRBy" id="2zU3cYqx4HU">
    <property role="TrG5h" value="TypesModelManagerLifecycle" />
    <property role="3GE5qa" value="lifecycle" />
    <node concept="2uRRBT" id="2zU3cYqx4Pl" role="2uRRB$">
      <node concept="3clFbS" id="2zU3cYqx4Pm" role="2VODD2">
        <node concept="3clFbF" id="2zU3cYqyvdE" role="3cqZAp">
          <node concept="2YIFZM" id="14$_tTx_wXJ" role="3clFbG">
            <ref role="37wK5l" node="2zU3cYqxb_u" resolve="get" />
            <ref role="1Pybhc" node="2zU3cYqxbbL" resolve="TypesModelManager" />
            <node concept="2OqwBi" id="14$_tTx_wXK" role="37wK5m">
              <node concept="1KvdUw" id="14$_tTx_wXL" role="2Oq$k0" />
              <node concept="liA8E" id="14$_tTx_wXM" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="2zU3cYqx4PF" role="2uRRB_">
      <node concept="3clFbS" id="2zU3cYqx4PG" role="2VODD2">
        <node concept="3clFbF" id="2zU3cYqyvxL" role="3cqZAp">
          <node concept="2YIFZM" id="2zU3cYqyvCY" role="3clFbG">
            <ref role="37wK5l" node="2zU3cYqyg2V" resolve="dispose" />
            <ref role="1Pybhc" node="2zU3cYqxbbL" resolve="TypesModelManager" />
            <node concept="2OqwBi" id="4Z$O9mrRbwd" role="37wK5m">
              <node concept="1KvdUw" id="2zU3cYqyvCZ" role="2Oq$k0" />
              <node concept="liA8E" id="4Z$O9mrRcyI" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2zU3cYqxbbL">
    <property role="TrG5h" value="TypesModelManager" />
    <node concept="2tJIrI" id="2zU3cYq$gq1" role="jymVt" />
    <node concept="2YIFZL" id="2zU3cYqxb_u" role="jymVt">
      <property role="TrG5h" value="get" />
      <node concept="3uibUv" id="2zU3cYqxbIi" role="3clF45">
        <ref role="3uigEE" node="2zU3cYqxbbL" resolve="TypesModelManager" />
      </node>
      <node concept="3Tm1VV" id="2zU3cYqxb_x" role="1B3o_S" />
      <node concept="3clFbS" id="2zU3cYqxb_y" role="3clF47">
        <node concept="3clFbF" id="14$_tTx_7MT" role="3cqZAp">
          <node concept="2OqwBi" id="14$_tTx_8aT" role="3clFbG">
            <node concept="37vLTw" id="14$_tTx_7MR" role="2Oq$k0">
              <ref role="3cqZAo" node="2zU3cYqxbiF" resolve="ourInstances" />
            </node>
            <node concept="liA8E" id="14$_tTx_9ik" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~ConcurrentMap.computeIfAbsent(java.lang.Object,java.util.function.Function):java.lang.Object" resolve="computeIfAbsent" />
              <node concept="37vLTw" id="14$_tTx_9Y9" role="37wK5m">
                <ref role="3cqZAo" node="2zU3cYqxbOL" resolve="repository" />
              </node>
              <node concept="1bVj0M" id="14$_tTx_aIm" role="37wK5m">
                <node concept="37vLTG" id="14$_tTx_bgO" role="1bW2Oz">
                  <property role="TrG5h" value="repo" />
                  <node concept="3uibUv" id="14$_tTx_bzJ" role="1tU5fm">
                    <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                  </node>
                </node>
                <node concept="3clFbS" id="14$_tTx_aIo" role="1bW5cS">
                  <node concept="3clFbF" id="14$_tTx_bWD" role="3cqZAp">
                    <node concept="2ShNRf" id="14$_tTx_bWB" role="3clFbG">
                      <node concept="1pGfFk" id="14$_tTx_gpG" role="2ShVmc">
                        <ref role="37wK5l" node="2zU3cYqyeVe" resolve="TypesModelManager" />
                        <node concept="37vLTw" id="14$_tTx_gvt" role="37wK5m">
                          <ref role="3cqZAo" node="14$_tTx_bgO" resolve="repo" />
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
      <node concept="37vLTG" id="2zU3cYqxbOL" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="4Z$O9mrR0Fd" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2zU3cYqxbuM" role="jymVt" />
    <node concept="2YIFZL" id="2zU3cYqyg2V" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="37vLTG" id="2zU3cYqyg2W" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="4Z$O9mrR2UR" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3cqZAl" id="2zU3cYqyg2Y" role="3clF45" />
      <node concept="3Tm1VV" id="6$7vuu2xw$l" role="1B3o_S" />
      <node concept="3clFbS" id="2zU3cYqyg30" role="3clF47">
        <node concept="3clFbF" id="14$_tTx_izJ" role="3cqZAp">
          <node concept="2OqwBi" id="14$_tTx_jZ8" role="3clFbG">
            <node concept="37vLTw" id="14$_tTx_izH" role="2Oq$k0">
              <ref role="3cqZAo" node="2zU3cYqxbiF" resolve="ourInstances" />
            </node>
            <node concept="liA8E" id="14$_tTx_l4B" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~ConcurrentMap.computeIfPresent(java.lang.Object,java.util.function.BiFunction):java.lang.Object" resolve="computeIfPresent" />
              <node concept="37vLTw" id="14$_tTx_lG6" role="37wK5m">
                <ref role="3cqZAo" node="2zU3cYqyg2W" resolve="repository" />
              </node>
              <node concept="1bVj0M" id="14$_tTx_mwp" role="37wK5m">
                <node concept="3clFbS" id="14$_tTx_mwr" role="1bW5cS">
                  <node concept="3clFbF" id="14$_tTx_t5f" role="3cqZAp">
                    <node concept="2OqwBi" id="14$_tTx_tcO" role="3clFbG">
                      <node concept="37vLTw" id="14$_tTx_t5d" role="2Oq$k0">
                        <ref role="3cqZAo" node="14$_tTx_ojq" resolve="instance" />
                      </node>
                      <node concept="liA8E" id="14$_tTx_tt$" role="2OqNvi">
                        <ref role="37wK5l" node="2zU3cYqyp0Z" resolve="dispose" />
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="14$_tTx_t_0" role="3cqZAp">
                    <node concept="3SKdUq" id="14$_tTx_t_2" role="3SKWNk">
                      <property role="3SKdUp" value="remove the mapping" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="14$_tTx_sJy" role="3cqZAp">
                    <node concept="10Nm6u" id="14$_tTx_sJw" role="3clFbG" />
                  </node>
                </node>
                <node concept="37vLTG" id="14$_tTx_n3o" role="1bW2Oz">
                  <property role="TrG5h" value="repos" />
                  <node concept="3uibUv" id="14$_tTx_niR" role="1tU5fm">
                    <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                  </node>
                </node>
                <node concept="37vLTG" id="14$_tTx_ojq" role="1bW2Oz">
                  <property role="TrG5h" value="instance" />
                  <node concept="3uibUv" id="14$_tTx_o$S" role="1tU5fm">
                    <ref role="3uigEE" node="2zU3cYqxbbL" resolve="TypesModelManager" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2zU3cYqyfSs" role="jymVt" />
    <node concept="3clFbW" id="2zU3cYqyeVe" role="jymVt">
      <node concept="3cqZAl" id="2zU3cYqyeVg" role="3clF45" />
      <node concept="3Tm6S6" id="6$7vuu2vnJv" role="1B3o_S" />
      <node concept="3clFbS" id="2zU3cYqyeVi" role="3clF47">
        <node concept="3clFbF" id="2zU3cYqyfkU" role="3cqZAp">
          <node concept="37vLTI" id="2zU3cYqyfkW" role="3clFbG">
            <node concept="2OqwBi" id="2zU3cYqyfrQ" role="37vLTJ">
              <node concept="Xjq3P" id="2zU3cYqyfsn" role="2Oq$k0" />
              <node concept="2OwXpG" id="4Z$O9mrR0iM" role="2OqNvi">
                <ref role="2Oxat5" node="4Z$O9mrQQ_h" resolve="repository" />
              </node>
            </node>
            <node concept="37vLTw" id="2zU3cYqyfl0" role="37vLTx">
              <ref role="3cqZAo" node="2zU3cYqyf38" resolve="repository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5lxnBcU5cvs" role="3cqZAp">
          <node concept="37vLTI" id="5lxnBcU5cvt" role="3clFbG">
            <node concept="2OqwBi" id="5lxnBcU5cvu" role="37vLTJ">
              <node concept="Xjq3P" id="5lxnBcU5cvv" role="2Oq$k0" />
              <node concept="2OwXpG" id="5lxnBcU5cvw" role="2OqNvi">
                <ref role="2Oxat5" node="5lxnBcU5cvj" resolve="module" />
              </node>
            </node>
            <node concept="2ShNRf" id="5lxnBcU5cvx" role="37vLTx">
              <node concept="1pGfFk" id="5lxnBcU5cvy" role="2ShVmc">
                <ref role="37wK5l" node="5lxnBcU4r5t" resolve="TypesModelManager.TypesModule" />
                <node concept="2ShNRf" id="5lxnBcU5BKa" role="37wK5m">
                  <node concept="1pGfFk" id="5lxnBcU5BKb" role="2ShVmc">
                    <ref role="37wK5l" to="w0gx:~ModuleReference.&lt;init&gt;(java.lang.String,org.jetbrains.mps.openapi.module.SModuleId)" resolve="ModuleReference" />
                    <node concept="Xl_RD" id="5lxnBcU5BKc" role="37wK5m">
                      <property role="Xl_RC" value="TYPES" />
                    </node>
                    <node concept="2YIFZM" id="5lxnBcU5BKd" role="37wK5m">
                      <ref role="1Pybhc" to="z1c3:~ModuleId" resolve="ModuleId" />
                      <ref role="37wK5l" to="z1c3:~ModuleId.regular():jetbrains.mps.project.ModuleId" resolve="regular" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2zU3cYqyf38" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="4Z$O9mrQZWD" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2zU3cYqyePB" role="jymVt" />
    <node concept="3clFb_" id="2zU3cYqyp0Z" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="2zU3cYqyp11" role="3clF45" />
      <node concept="3Tm6S6" id="2zU3cYqypbP" role="1B3o_S" />
      <node concept="3clFbS" id="2zU3cYqyp13" role="3clF47">
        <node concept="3clFbF" id="2zU3cYqC6I2" role="3cqZAp">
          <node concept="2OqwBi" id="2zU3cYqC8iB" role="3clFbG">
            <node concept="37vLTw" id="2zU3cYqC6I0" role="2Oq$k0">
              <ref role="3cqZAo" node="WJyfsglZQI" resolve="modelOwners" />
            </node>
            <node concept="2Kehj3" id="2zU3cYqC9TW" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="5lxnBcU5y2O" role="3cqZAp">
          <node concept="37vLTI" id="5lxnBcU5zPz" role="3clFbG">
            <node concept="10Nm6u" id="5lxnBcU5$7X" role="37vLTx" />
            <node concept="2OqwBi" id="5lxnBcU5yAo" role="37vLTJ">
              <node concept="Xjq3P" id="5lxnBcU5y2M" role="2Oq$k0" />
              <node concept="2OwXpG" id="5lxnBcU5yHh" role="2OqNvi">
                <ref role="2Oxat5" node="5lxnBcU5cvj" resolve="module" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5lxnBcU5$n2" role="3cqZAp">
          <node concept="37vLTI" id="5lxnBcU5_lV" role="3clFbG">
            <node concept="10Nm6u" id="5lxnBcU5_nf" role="37vLTx" />
            <node concept="2OqwBi" id="5lxnBcU5$V1" role="37vLTJ">
              <node concept="Xjq3P" id="5lxnBcU5$n0" role="2Oq$k0" />
              <node concept="2OwXpG" id="5lxnBcU5_8g" role="2OqNvi">
                <ref role="2Oxat5" node="4Z$O9mrQQ_h" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2zU3cYqyojD" role="jymVt" />
    <node concept="3clFb_" id="2zU3cYq$52j" role="jymVt">
      <property role="TrG5h" value="emptyModel" />
      <node concept="3uibUv" id="2zU3cYq$b4C" role="3clF45">
        <ref role="3uigEE" node="2zU3cYq$91A" resolve="TypesModelManager.ModelOwner" />
      </node>
      <node concept="3Tm1VV" id="2zU3cYq$52m" role="1B3o_S" />
      <node concept="3clFbS" id="2zU3cYq$52n" role="3clF47">
        <node concept="3SKdUt" id="6IQb_RxL8zH" role="3cqZAp">
          <node concept="3SKdUq" id="6IQb_RxL8zJ" role="3SKWNk">
            <property role="3SKdUp" value="TODO: record the owner?" />
          </node>
        </node>
        <node concept="3clFbF" id="2zU3cYq$Xcz" role="3cqZAp">
          <node concept="2ShNRf" id="2zU3cYq$Xcx" role="3clFbG">
            <node concept="1pGfFk" id="2zU3cYq$XlI" role="2ShVmc">
              <ref role="37wK5l" node="2zU3cYq$cD9" resolve="TypesModelManager.ModelOwner" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2zU3cYq$4xa" role="jymVt" />
    <node concept="312cEu" id="2zU3cYq$91A" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="ModelOwner" />
      <node concept="2tJIrI" id="2zU3cYq$93r" role="jymVt" />
      <node concept="3clFbW" id="2zU3cYq$cD9" role="jymVt">
        <node concept="3cqZAl" id="2zU3cYq$cDb" role="3clF45" />
        <node concept="3Tm6S6" id="2zU3cYq$cDJ" role="1B3o_S" />
        <node concept="3clFbS" id="2zU3cYq$cDd" role="3clF47">
          <node concept="3clFbF" id="2zU3cYq$lFV" role="3cqZAp">
            <node concept="1rXfSq" id="2zU3cYq$lFT" role="3clFbG">
              <ref role="37wK5l" node="2zU3cYq$jOk" resolve="createModel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2zU3cYq$ezj" role="jymVt" />
      <node concept="3clFb_" id="2zU3cYq$9HD" role="jymVt">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="2zU3cYq$aYq" role="3clF45" />
        <node concept="3Tm1VV" id="2zU3cYq$9HG" role="1B3o_S" />
        <node concept="3clFbS" id="2zU3cYq$9HH" role="3clF47">
          <node concept="3clFbF" id="2zU3cYq$lNV" role="3cqZAp">
            <node concept="37vLTw" id="2zU3cYq$lNU" role="3clFbG">
              <ref role="3cqZAo" node="2zU3cYq$jg9" resolve="model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2zU3cYq$cyl" role="jymVt" />
      <node concept="3clFb_" id="2zU3cYq$pNG" role="jymVt">
        <property role="TrG5h" value="register" />
        <node concept="3cqZAl" id="2zU3cYq$pNI" role="3clF45" />
        <node concept="3Tm1VV" id="2zU3cYq$pNJ" role="1B3o_S" />
        <node concept="3clFbS" id="2zU3cYq$pNK" role="3clF47">
          <node concept="3clFbJ" id="4Z$O9mrSNIe" role="3cqZAp">
            <node concept="3clFbS" id="4Z$O9mrSNIg" role="3clFbx">
              <node concept="YS8fn" id="4Z$O9mrSOc9" role="3cqZAp">
                <node concept="2ShNRf" id="4Z$O9mrSOcN" role="YScLw">
                  <node concept="1pGfFk" id="4Z$O9mrSPSo" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                    <node concept="Xl_RD" id="4Z$O9mrSPVy" role="37wK5m">
                      <property role="Xl_RC" value="already registered" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4Z$O9mrSO00" role="3clFbw">
              <ref role="3cqZAo" node="4Z$O9mrSM0j" resolve="registered" />
            </node>
          </node>
          <node concept="3clFbF" id="5lxnBcU3Ld9" role="3cqZAp">
            <node concept="2OqwBi" id="5lxnBcU3LSF" role="3clFbG">
              <node concept="2OqwBi" id="5lxnBcU3Lj9" role="2Oq$k0">
                <node concept="Xjq3P" id="5lxnBcU3Ld7" role="2Oq$k0" />
                <node concept="2OwXpG" id="5lxnBcU3Lw$" role="2OqNvi">
                  <ref role="2Oxat5" node="2zU3cYq$jg9" resolve="model" />
                </node>
              </node>
              <node concept="liA8E" id="5lxnBcU3MnO" role="2OqNvi">
                <ref role="37wK5l" to="g3l6:~SModelBase.attach(org.jetbrains.mps.openapi.module.SRepository):void" resolve="attach" />
                <node concept="37vLTw" id="5lxnBcU3N9i" role="37wK5m">
                  <ref role="3cqZAo" node="4Z$O9mrQQ_h" resolve="repository" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4Z$O9mrT3Vl" role="3cqZAp">
            <node concept="37vLTI" id="4Z$O9mrT5ew" role="3clFbG">
              <node concept="3clFbT" id="4Z$O9mrT5kv" role="37vLTx">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="4Z$O9mrT4$d" role="37vLTJ">
                <node concept="Xjq3P" id="4Z$O9mrT3Vj" role="2Oq$k0" />
                <node concept="2OwXpG" id="4Z$O9mrT4PK" role="2OqNvi">
                  <ref role="2Oxat5" node="4Z$O9mrSM0j" resolve="registered" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2zU3cYq$pt_" role="jymVt" />
      <node concept="3clFb_" id="2zU3cYq$eDA" role="jymVt">
        <property role="TrG5h" value="unregister" />
        <node concept="3cqZAl" id="2zU3cYq$eDC" role="3clF45" />
        <node concept="3Tm1VV" id="2zU3cYq$eDD" role="1B3o_S" />
        <node concept="3clFbS" id="2zU3cYq$eDE" role="3clF47">
          <node concept="3clFbJ" id="4Z$O9mrSQps" role="3cqZAp">
            <node concept="3clFbS" id="4Z$O9mrSQpt" role="3clFbx">
              <node concept="YS8fn" id="4Z$O9mrSQpu" role="3cqZAp">
                <node concept="2ShNRf" id="4Z$O9mrSQpv" role="YScLw">
                  <node concept="1pGfFk" id="4Z$O9mrSQpw" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                    <node concept="Xl_RD" id="4Z$O9mrSQpx" role="37wK5m">
                      <property role="Xl_RC" value="not registered" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="4Z$O9mrSQzL" role="3clFbw">
              <node concept="37vLTw" id="4Z$O9mrSQzN" role="3fr31v">
                <ref role="3cqZAo" node="4Z$O9mrSM0j" resolve="registered" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5lxnBcU3Nub" role="3cqZAp">
            <node concept="2OqwBi" id="5lxnBcU3Nuc" role="3clFbG">
              <node concept="2OqwBi" id="5lxnBcU3Nud" role="2Oq$k0">
                <node concept="Xjq3P" id="5lxnBcU3Nue" role="2Oq$k0" />
                <node concept="2OwXpG" id="5lxnBcU3Nuf" role="2OqNvi">
                  <ref role="2Oxat5" node="2zU3cYq$jg9" resolve="model" />
                </node>
              </node>
              <node concept="liA8E" id="5lxnBcU3Nug" role="2OqNvi">
                <ref role="37wK5l" to="g3l6:~SModelBase.detach():void" resolve="detach" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4Z$O9mrT5ui" role="3cqZAp">
            <node concept="37vLTI" id="4Z$O9mrT5uj" role="3clFbG">
              <node concept="3clFbT" id="4Z$O9mrT5uk" role="37vLTx" />
              <node concept="2OqwBi" id="4Z$O9mrT5ul" role="37vLTJ">
                <node concept="Xjq3P" id="4Z$O9mrT5um" role="2Oq$k0" />
                <node concept="2OwXpG" id="4Z$O9mrT5un" role="2OqNvi">
                  <ref role="2Oxat5" node="4Z$O9mrSM0j" resolve="registered" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4Z$O9mrSQFS" role="jymVt" />
      <node concept="3clFb_" id="2zU3cYq$jOk" role="jymVt">
        <property role="TrG5h" value="createModel" />
        <node concept="3cqZAl" id="2zU3cYq$jOm" role="3clF45" />
        <node concept="3Tm6S6" id="2zU3cYq$jP8" role="1B3o_S" />
        <node concept="3clFbS" id="2zU3cYq$jOo" role="3clF47">
          <node concept="3cpWs8" id="6IQb_RxKZ4s" role="3cqZAp">
            <node concept="3cpWsn" id="6IQb_RxKZ4t" role="3cpWs9">
              <property role="TrG5h" value="modelRef" />
              <node concept="3uibUv" id="6IQb_RxKZ4i" role="1tU5fm">
                <ref role="3uigEE" to="w1kc:~SModelReference" resolve="SModelReference" />
              </node>
              <node concept="2ShNRf" id="6IQb_RxKZ4u" role="33vP2m">
                <node concept="1pGfFk" id="6IQb_RxKZ4v" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~SModelReference.&lt;init&gt;(org.jetbrains.mps.openapi.module.SModuleReference,org.jetbrains.mps.openapi.model.SModelId,java.lang.String)" resolve="SModelReference" />
                  <node concept="2OqwBi" id="5lxnBcU5Auz" role="37wK5m">
                    <node concept="37vLTw" id="5lxnBcU5_YD" role="2Oq$k0">
                      <ref role="3cqZAo" node="5lxnBcU5cvj" resolve="module" />
                    </node>
                    <node concept="liA8E" id="5lxnBcU5Bbl" role="2OqNvi">
                      <ref role="37wK5l" node="5lxnBcU4pZh" resolve="getModuleReference" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="6IQb_RxKZ4x" role="37wK5m">
                    <ref role="37wK5l" to="w1kc:~SModelId.generate():jetbrains.mps.smodel.SModelId" resolve="generate" />
                    <ref role="1Pybhc" to="w1kc:~SModelId" resolve="SModelId" />
                  </node>
                  <node concept="Xl_RD" id="6IQb_RxKZ4y" role="37wK5m">
                    <property role="Xl_RC" value="types-model" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6IQb_RxL0KR" role="3cqZAp">
            <node concept="3cpWsn" id="6IQb_RxL0KS" role="3cpWs9">
              <property role="TrG5h" value="modelData" />
              <node concept="3uibUv" id="6IQb_RxL0KP" role="1tU5fm">
                <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
              </node>
              <node concept="2ShNRf" id="6IQb_RxL0KT" role="33vP2m">
                <node concept="1pGfFk" id="6IQb_RxL0KU" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~SModel.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference)" resolve="SModel" />
                  <node concept="37vLTw" id="6IQb_RxL0KV" role="37wK5m">
                    <ref role="3cqZAo" node="6IQb_RxKZ4t" resolve="modelRef" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6IQb_RxKQDu" role="3cqZAp">
            <node concept="37vLTI" id="6IQb_RxKS7D" role="3clFbG">
              <node concept="2ShNRf" id="6IQb_RxKSkD" role="37vLTx">
                <node concept="1pGfFk" id="6IQb_RxKSRh" role="2ShVmc">
                  <ref role="37wK5l" node="6IQb_RxJsDG" resolve="TypesModelManager.TypesModel" />
                  <node concept="37vLTw" id="6IQb_RxL1eS" role="37wK5m">
                    <ref role="3cqZAo" node="6IQb_RxL0KS" resolve="modelData" />
                  </node>
                  <node concept="37vLTw" id="5lxnBcU5_BU" role="37wK5m">
                    <ref role="3cqZAo" node="5lxnBcU5cvj" resolve="module" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6IQb_RxKQQb" role="37vLTJ">
                <node concept="Xjq3P" id="6IQb_RxKQDs" role="2Oq$k0" />
                <node concept="2OwXpG" id="6IQb_RxKRn5" role="2OqNvi">
                  <ref role="2Oxat5" node="2zU3cYq$jg9" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2zU3cYq$jHQ" role="jymVt" />
      <node concept="312cEg" id="2zU3cYq$jg9" role="jymVt">
        <property role="TrG5h" value="model" />
        <node concept="3Tm6S6" id="2zU3cYq$jga" role="1B3o_S" />
        <node concept="3uibUv" id="2zU3cYq$juT" role="1tU5fm">
          <ref role="3uigEE" to="g3l6:~SModelBase" resolve="SModelBase" />
        </node>
      </node>
      <node concept="312cEg" id="4Z$O9mrSM0j" role="jymVt">
        <property role="TrG5h" value="registered" />
        <node concept="3Tm6S6" id="4Z$O9mrSM0k" role="1B3o_S" />
        <node concept="10P_77" id="4Z$O9mrSN$Y" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="2zU3cYq$91B" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6IQb_RxKDA5" role="jymVt" />
    <node concept="312cEu" id="6IQb_RxJsD_" role="jymVt">
      <property role="TrG5h" value="TypesModel" />
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <node concept="3Tm6S6" id="6IQb_RxJsDA" role="1B3o_S" />
      <node concept="3uibUv" id="6IQb_RxPHMV" role="1zkMxy">
        <ref role="3uigEE" to="g3l6:~EditableSModelBase" resolve="EditableSModelBase" />
      </node>
      <node concept="2tJIrI" id="5lxnBcU51OK" role="jymVt" />
      <node concept="3clFbW" id="6IQb_RxJsDG" role="jymVt">
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3cqZAl" id="6IQb_RxJsDH" role="3clF45" />
        <node concept="37vLTG" id="6IQb_RxJsDI" role="3clF46">
          <property role="TrG5h" value="modelData" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="6IQb_RxJsDJ" role="1tU5fm">
            <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
          </node>
        </node>
        <node concept="37vLTG" id="5lxnBcU53q3" role="3clF46">
          <property role="TrG5h" value="typesModule" />
          <node concept="3uibUv" id="5lxnBcU53Mg" role="1tU5fm">
            <ref role="3uigEE" node="5lxnBcU4oU$" resolve="TypesModelManager.TypesModule" />
          </node>
        </node>
        <node concept="3clFbS" id="6IQb_RxJsDK" role="3clF47">
          <node concept="XkiVB" id="6IQb_RxKzd2" role="3cqZAp">
            <ref role="37wK5l" to="g3l6:~EditableSModelBase.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference,org.jetbrains.mps.openapi.persistence.DataSource)" resolve="EditableSModelBase" />
            <node concept="2OqwBi" id="6IQb_RxKyx7" role="37wK5m">
              <node concept="37vLTw" id="6IQb_RxKyx6" role="2Oq$k0">
                <ref role="3cqZAo" node="6IQb_RxJsDI" resolve="modelData" />
              </node>
              <node concept="liA8E" id="6IQb_RxKyx8" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~SModel.getReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getReference" />
              </node>
            </node>
            <node concept="2ShNRf" id="6IQb_RxK_LH" role="37wK5m">
              <node concept="1pGfFk" id="6IQb_RxKAE2" role="2ShVmc">
                <ref role="37wK5l" to="dush:~NullDataSource.&lt;init&gt;()" resolve="NullDataSource" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6IQb_RxJsDL" role="3cqZAp">
            <node concept="37vLTI" id="6IQb_RxJsDM" role="3clFbG">
              <node concept="2OqwBi" id="5lxnBcU55sl" role="37vLTJ">
                <node concept="Xjq3P" id="5lxnBcU55uj" role="2Oq$k0" />
                <node concept="2OwXpG" id="5lxnBcU55so" role="2OqNvi">
                  <ref role="2Oxat5" node="6IQb_RxJsDC" resolve="modelData" />
                </node>
              </node>
              <node concept="37vLTw" id="6IQb_RxJsDO" role="37vLTx">
                <ref role="3cqZAo" node="6IQb_RxJsDI" resolve="modelData" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6IQb_RxJsDP" role="3cqZAp">
            <node concept="2OqwBi" id="6IQb_RxJvBe" role="3clFbG">
              <node concept="37vLTw" id="6IQb_RxJvBd" role="2Oq$k0">
                <ref role="3cqZAo" node="6IQb_RxJsDI" resolve="modelData" />
              </node>
              <node concept="liA8E" id="6IQb_RxJvBf" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~SModel.setModelDescriptor(org.jetbrains.mps.openapi.model.SModel,jetbrains.mps.smodel.event.ModelEventDispatch):void" resolve="setModelDescriptor" />
                <node concept="Xjq3P" id="6IQb_RxJvBg" role="37wK5m" />
                <node concept="10Nm6u" id="7Cu8ExJkdKz" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6IQb_RxJsDS" role="3cqZAp">
            <node concept="1rXfSq" id="6IQb_RxJsDT" role="3clFbG">
              <ref role="37wK5l" to="g3l6:~SModelBase.setLoadingState(jetbrains.mps.smodel.loading.ModelLoadingState):void" resolve="setLoadingState" />
              <node concept="Rm8GO" id="6IQb_RxKBlx" role="37wK5m">
                <ref role="Rm8GQ" to="4it6:~ModelLoadingState.FULLY_LOADED" resolve="FULLY_LOADED" />
                <ref role="1Px2BO" to="4it6:~ModelLoadingState" resolve="ModelLoadingState" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5lxnBcU54gV" role="3cqZAp">
            <node concept="37vLTI" id="5lxnBcU54gX" role="3clFbG">
              <node concept="2OqwBi" id="5lxnBcU54ZZ" role="37vLTJ">
                <node concept="Xjq3P" id="5lxnBcU551X" role="2Oq$k0" />
                <node concept="2OwXpG" id="5lxnBcU5502" role="2OqNvi">
                  <ref role="2Oxat5" node="5lxnBcU54gR" resolve="typesModule" />
                </node>
              </node>
              <node concept="37vLTw" id="5lxnBcU54h1" role="37vLTx">
                <ref role="3cqZAo" node="5lxnBcU53q3" resolve="typesModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="6IQb_RxJsDY" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="6IQb_RxKBok" role="jymVt" />
      <node concept="3clFb_" id="7vt2fFwurum" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="assertCanRead" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tmbuc" id="7vt2fFwurun" role="1B3o_S" />
        <node concept="3cqZAl" id="7vt2fFwurup" role="3clF45" />
        <node concept="3clFbS" id="7vt2fFwurus" role="3clF47">
          <node concept="3SKdUt" id="7vt2fFwuuFX" role="3cqZAp">
            <node concept="3SKdUq" id="7vt2fFwuuFY" role="3SKWNk">
              <property role="3SKdUp" value="NOP" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7vt2fFwurut" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="7vt2fFwus3V" role="jymVt" />
      <node concept="3clFb_" id="7vt2fFwus_A" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="assertCanChange" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tmbuc" id="7vt2fFwus_B" role="1B3o_S" />
        <node concept="3cqZAl" id="7vt2fFwus_D" role="3clF45" />
        <node concept="3clFbS" id="7vt2fFwus_G" role="3clF47">
          <node concept="3SKdUt" id="7vt2fFwuv1l" role="3cqZAp">
            <node concept="3SKdUq" id="7vt2fFwuv1m" role="3SKWNk">
              <property role="3SKdUp" value="NOP" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7vt2fFwus_H" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="7vt2fFwutdt" role="jymVt" />
      <node concept="3clFb_" id="6IQb_RxJsDZ" role="jymVt">
        <property role="TrG5h" value="getSModelInternal" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="2AHcQZ" id="6IQb_RxJsE0" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="6IQb_RxJsE1" role="3clF47">
          <node concept="3cpWs6" id="6IQb_RxJsE2" role="3cqZAp">
            <node concept="37vLTw" id="6IQb_RxJsE3" role="3cqZAk">
              <ref role="3cqZAo" node="6IQb_RxJsDC" resolve="modelData" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="6IQb_RxJsE4" role="1B3o_S" />
        <node concept="3uibUv" id="6IQb_RxJsE5" role="3clF45">
          <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="2tJIrI" id="6IQb_RxKBJ_" role="jymVt" />
      <node concept="3clFb_" id="6IQb_RxJsE6" role="jymVt">
        <property role="TrG5h" value="getCurrentModelInternal" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="2AHcQZ" id="6IQb_RxJsE7" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="2AHcQZ" id="6IQb_RxJsE8" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="6IQb_RxJsE9" role="3clF47">
          <node concept="3cpWs6" id="6IQb_RxJsEa" role="3cqZAp">
            <node concept="37vLTw" id="6IQb_RxJsEb" role="3cqZAk">
              <ref role="3cqZAo" node="6IQb_RxJsDC" resolve="modelData" />
            </node>
          </node>
        </node>
        <node concept="3Tmbuc" id="6IQb_RxJsEc" role="1B3o_S" />
        <node concept="3uibUv" id="6IQb_RxJsEd" role="3clF45">
          <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="2tJIrI" id="6IQb_RxKC6R" role="jymVt" />
      <node concept="3clFb_" id="6IQb_RxJsEe" role="jymVt">
        <property role="TrG5h" value="doUnload" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="2AHcQZ" id="6IQb_RxJsEf" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="6IQb_RxJsEg" role="3clF47">
          <node concept="3SKdUt" id="6IQb_RxJsEy" role="3cqZAp">
            <node concept="3SKdUq" id="6IQb_RxJsEx" role="3SKWNk">
              <property role="3SKdUp" value="no-op" />
            </node>
          </node>
        </node>
        <node concept="3Tmbuc" id="6IQb_RxJsEh" role="1B3o_S" />
        <node concept="3cqZAl" id="6IQb_RxJsEi" role="3clF45" />
      </node>
      <node concept="2tJIrI" id="6IQb_RxPIQC" role="jymVt" />
      <node concept="3clFb_" id="6IQb_RxPI6f" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="reloadContents" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tmbuc" id="6IQb_RxPI6g" role="1B3o_S" />
        <node concept="3cqZAl" id="6IQb_RxPI6i" role="3clF45" />
        <node concept="3clFbS" id="6IQb_RxPI6j" role="3clF47">
          <node concept="YS8fn" id="6IQb_RxPJlJ" role="3cqZAp">
            <node concept="2ShNRf" id="6IQb_RxPJns" role="YScLw">
              <node concept="1pGfFk" id="6IQb_RxPJNI" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6IQb_RxPI6k" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6IQb_RxPIws" role="jymVt" />
      <node concept="3clFb_" id="6IQb_RxPI6l" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="saveModel" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tmbuc" id="6IQb_RxPI6m" role="1B3o_S" />
        <node concept="10P_77" id="6IQb_RxPI6o" role="3clF45" />
        <node concept="3uibUv" id="6IQb_RxPI6p" role="Sfmx6">
          <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
        </node>
        <node concept="3uibUv" id="6IQb_RxPI6q" role="Sfmx6">
          <ref role="3uigEE" to="dush:~ModelSaveException" resolve="ModelSaveException" />
        </node>
        <node concept="3clFbS" id="6IQb_RxPI6r" role="3clF47">
          <node concept="3clFbF" id="6IQb_RxPI6u" role="3cqZAp">
            <node concept="3clFbT" id="6IQb_RxPI6t" role="3clFbG" />
          </node>
        </node>
        <node concept="2AHcQZ" id="6IQb_RxPI6s" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5lxnBcU533_" role="jymVt" />
      <node concept="3clFb_" id="5lxnBcU5610" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getModule" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5lxnBcU5611" role="1B3o_S" />
        <node concept="3uibUv" id="5lxnBcU5614" role="3clF45">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
        <node concept="3clFbS" id="5lxnBcU5617" role="3clF47">
          <node concept="3clFbF" id="5lxnBcU574V" role="3cqZAp">
            <node concept="37vLTw" id="5lxnBcU574U" role="3clFbG">
              <ref role="3cqZAo" node="5lxnBcU54gR" resolve="typesModule" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5lxnBcU5618" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5lxnBcU57ho" role="jymVt" />
      <node concept="3clFb_" id="5lxnBcU58NB" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="setModule" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5lxnBcU58NC" role="1B3o_S" />
        <node concept="3cqZAl" id="5lxnBcU58NE" role="3clF45" />
        <node concept="37vLTG" id="5lxnBcU58NF" role="3clF46">
          <property role="TrG5h" value="module" />
          <node concept="3uibUv" id="5lxnBcU58NG" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
        <node concept="3clFbS" id="5lxnBcU58NJ" role="3clF47">
          <node concept="YS8fn" id="5lxnBcU5aqt" role="3cqZAp">
            <node concept="2ShNRf" id="5lxnBcU5asa" role="YScLw">
              <node concept="1pGfFk" id="5lxnBcU5aUm" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5lxnBcU58NK" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5lxnBcU58od" role="jymVt" />
      <node concept="312cEg" id="6IQb_RxJsDC" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="modelData" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="6IQb_RxJsDE" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
        </node>
        <node concept="3Tm6S6" id="6IQb_RxJsDF" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="5lxnBcU54gR" role="jymVt">
        <property role="TrG5h" value="typesModule" />
        <node concept="3Tm6S6" id="5lxnBcU54gS" role="1B3o_S" />
        <node concept="3uibUv" id="5lxnBcU54gU" role="1tU5fm">
          <ref role="3uigEE" node="5lxnBcU4oU$" resolve="TypesModelManager.TypesModule" />
        </node>
      </node>
      <node concept="3UR2Jj" id="6IQb_RxPLQu" role="lGtFl">
        <node concept="TZ5HA" id="6IQb_RxPLQv" role="TZ5H$">
          <node concept="1dT_AC" id="6IQb_RxPLQw" role="1dT_Ay">
            <property role="1dT_AB" value="Copied from TestModelFactory.TestModelBase." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5lxnBcU4nLp" role="jymVt" />
    <node concept="312cEu" id="5lxnBcU4oU$" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="TypesModule" />
      <node concept="2tJIrI" id="5lxnBcU4qCh" role="jymVt" />
      <node concept="3clFbW" id="5lxnBcU4r5t" role="jymVt">
        <node concept="3cqZAl" id="5lxnBcU4r5v" role="3clF45" />
        <node concept="3Tm1VV" id="5lxnBcU4r5w" role="1B3o_S" />
        <node concept="3clFbS" id="5lxnBcU4r5x" role="3clF47">
          <node concept="3clFbF" id="5lxnBcU4$7C" role="3cqZAp">
            <node concept="37vLTI" id="5lxnBcU4$7E" role="3clFbG">
              <node concept="2OqwBi" id="5lxnBcU4$Mw" role="37vLTJ">
                <node concept="Xjq3P" id="5lxnBcU4$Ni" role="2Oq$k0" />
                <node concept="2OwXpG" id="5lxnBcU4$Mz" role="2OqNvi">
                  <ref role="2Oxat5" node="5lxnBcU4$7$" resolve="moduleReference" />
                </node>
              </node>
              <node concept="37vLTw" id="5lxnBcU4$7I" role="37vLTx">
                <ref role="3cqZAo" node="5lxnBcU4zNJ" resolve="moduleReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5lxnBcU4zNJ" role="3clF46">
          <property role="TrG5h" value="moduleReference" />
          <node concept="3uibUv" id="5lxnBcU4CBr" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5lxnBcU4qGo" role="jymVt" />
      <node concept="3Tm1VV" id="5lxnBcU4oU_" role="1B3o_S" />
      <node concept="3uibUv" id="5lxnBcU4pY7" role="EKbjA">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
      <node concept="3clFb_" id="5lxnBcU4pZ1" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getModuleId" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5lxnBcU4pZ2" role="1B3o_S" />
        <node concept="3uibUv" id="5lxnBcU4pZ4" role="3clF45">
          <ref role="3uigEE" to="lui2:~SModuleId" resolve="SModuleId" />
        </node>
        <node concept="3clFbS" id="5lxnBcU4pZ5" role="3clF47">
          <node concept="3clFbF" id="5lxnBcU4A2z" role="3cqZAp">
            <node concept="2OqwBi" id="5lxnBcU4A7W" role="3clFbG">
              <node concept="37vLTw" id="5lxnBcU4A2y" role="2Oq$k0">
                <ref role="3cqZAo" node="5lxnBcU4$7$" resolve="moduleReference" />
              </node>
              <node concept="liA8E" id="5lxnBcU4DCT" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModuleReference.getModuleId():org.jetbrains.mps.openapi.module.SModuleId" resolve="getModuleId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5lxnBcU4pZ6" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5lxnBcU4t$T" role="jymVt" />
      <node concept="3clFb_" id="5lxnBcU4pZ9" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getModuleName" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5lxnBcU4pZa" role="1B3o_S" />
        <node concept="3uibUv" id="5lxnBcU4pZc" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3clFbS" id="5lxnBcU4pZd" role="3clF47">
          <node concept="3clFbF" id="5lxnBcU4DMU" role="3cqZAp">
            <node concept="2OqwBi" id="5lxnBcU4DSj" role="3clFbG">
              <node concept="37vLTw" id="5lxnBcU4DMT" role="2Oq$k0">
                <ref role="3cqZAo" node="5lxnBcU4$7$" resolve="moduleReference" />
              </node>
              <node concept="liA8E" id="5lxnBcU4EfI" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModuleReference.getModuleName():java.lang.String" resolve="getModuleName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5lxnBcU4pZe" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5lxnBcU4y3P" role="jymVt" />
      <node concept="3clFb_" id="5lxnBcU4pZh" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getModuleReference" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5lxnBcU4pZi" role="1B3o_S" />
        <node concept="2AHcQZ" id="5lxnBcU4pZk" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="5lxnBcU4pZl" role="3clF45">
          <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
        </node>
        <node concept="3clFbS" id="5lxnBcU4pZm" role="3clF47">
          <node concept="3clFbF" id="5lxnBcU4EpK" role="3cqZAp">
            <node concept="37vLTw" id="5lxnBcU4EpJ" role="3clFbG">
              <ref role="3cqZAo" node="5lxnBcU4$7$" resolve="moduleReference" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5lxnBcU4pZn" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5lxnBcU4ypU" role="jymVt" />
      <node concept="3clFb_" id="5lxnBcU4pZq" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="isReadOnly" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5lxnBcU4pZr" role="1B3o_S" />
        <node concept="10P_77" id="5lxnBcU4pZt" role="3clF45" />
        <node concept="3clFbS" id="5lxnBcU4pZu" role="3clF47">
          <node concept="3clFbF" id="5lxnBcU4pZx" role="3cqZAp">
            <node concept="3clFbT" id="5lxnBcU4pZw" role="3clFbG" />
          </node>
        </node>
        <node concept="2AHcQZ" id="5lxnBcU4pZv" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5lxnBcU4EHO" role="jymVt" />
      <node concept="3clFb_" id="5lxnBcU4pZy" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="isPackaged" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5lxnBcU4pZz" role="1B3o_S" />
        <node concept="10P_77" id="5lxnBcU4pZ_" role="3clF45" />
        <node concept="3clFbS" id="5lxnBcU4pZA" role="3clF47">
          <node concept="3clFbF" id="5lxnBcU4pZD" role="3cqZAp">
            <node concept="3clFbT" id="5lxnBcU4pZC" role="3clFbG" />
          </node>
        </node>
        <node concept="2AHcQZ" id="5lxnBcU4pZB" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5lxnBcU4F3p" role="jymVt" />
      <node concept="3clFb_" id="5lxnBcU4pZE" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getRepository" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5lxnBcU4pZF" role="1B3o_S" />
        <node concept="3uibUv" id="5lxnBcU4pZH" role="3clF45">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
        <node concept="3clFbS" id="5lxnBcU4pZI" role="3clF47">
          <node concept="3clFbF" id="5lxnBcU4G8Z" role="3cqZAp">
            <node concept="37vLTw" id="5lxnBcU4G8Y" role="3clFbG">
              <ref role="3cqZAo" node="4Z$O9mrQQ_h" resolve="repository" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5lxnBcU4pZJ" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5lxnBcU4FoZ" role="jymVt" />
      <node concept="3clFb_" id="5lxnBcU4pZM" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getDeclaredDependencies" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5lxnBcU4pZN" role="1B3o_S" />
        <node concept="3uibUv" id="5lxnBcU4pZP" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="5lxnBcU4pZQ" role="11_B2D">
            <ref role="3uigEE" to="lui2:~SDependency" resolve="SDependency" />
          </node>
        </node>
        <node concept="3clFbS" id="5lxnBcU4pZR" role="3clF47">
          <node concept="3clFbF" id="5lxnBcU4Npt" role="3cqZAp">
            <node concept="2YIFZM" id="5lxnBcU4NqM" role="3clFbG">
              <ref role="37wK5l" to="33ny:~Collections.emptyList():java.util.List" resolve="emptyList" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5lxnBcU4pZS" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5lxnBcU4Gap" role="jymVt" />
      <node concept="3clFb_" id="5lxnBcU4pZV" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getUsedLanguages" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5lxnBcU4pZW" role="1B3o_S" />
        <node concept="3uibUv" id="5lxnBcU4pZY" role="3clF45">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="3uibUv" id="5lxnBcU4pZZ" role="11_B2D">
            <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
          </node>
        </node>
        <node concept="3clFbS" id="5lxnBcU4q00" role="3clF47">
          <node concept="3clFbF" id="5lxnBcU4N_W" role="3cqZAp">
            <node concept="2YIFZM" id="5lxnBcU4NBh" role="3clFbG">
              <ref role="37wK5l" to="33ny:~Collections.emptySet():java.util.Set" resolve="emptySet" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5lxnBcU4q01" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5lxnBcU4PvP" role="jymVt" />
      <node concept="3clFb_" id="5lxnBcU4q04" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getUsedLanguageVersion" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5lxnBcU4q05" role="1B3o_S" />
        <node concept="10Oyi0" id="5lxnBcU4q07" role="3clF45" />
        <node concept="37vLTG" id="5lxnBcU4q08" role="3clF46">
          <property role="TrG5h" value="language" />
          <node concept="3uibUv" id="5lxnBcU4q09" role="1tU5fm">
            <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
          </node>
          <node concept="2AHcQZ" id="5lxnBcU4q0a" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="5lxnBcU4q0b" role="3clF47">
          <node concept="3SKdUt" id="5lxnBcU4RMs" role="3cqZAp">
            <node concept="3SKdUq" id="5lxnBcU4RMu" role="3SKWNk">
              <property role="3SKdUp" value="muhahahahaaa!!!!1!111" />
            </node>
          </node>
          <node concept="3clFbF" id="5lxnBcU4RI_" role="3cqZAp">
            <node concept="3cmrfG" id="5lxnBcU4RI$" role="3clFbG">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5lxnBcU4q0c" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5lxnBcU4PQn" role="jymVt" />
      <node concept="3clFb_" id="5lxnBcU4q0d" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getModel" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5lxnBcU4q0e" role="1B3o_S" />
        <node concept="2AHcQZ" id="5lxnBcU4q0g" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="5lxnBcU4q0h" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
        <node concept="37vLTG" id="5lxnBcU4q0i" role="3clF46">
          <property role="TrG5h" value="id" />
          <node concept="3uibUv" id="5lxnBcU4q0j" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SModelId" resolve="SModelId" />
          </node>
        </node>
        <node concept="3clFbS" id="5lxnBcU4q0k" role="3clF47">
          <node concept="3SKdUt" id="5lxnBcU4T1w" role="3cqZAp">
            <node concept="3SKdUq" id="5lxnBcU4T1y" role="3SKWNk">
              <property role="3SKdUp" value="FIXME" />
            </node>
          </node>
          <node concept="YS8fn" id="5lxnBcU4U2$" role="3cqZAp">
            <node concept="2ShNRf" id="5lxnBcU4U2_" role="YScLw">
              <node concept="1pGfFk" id="5lxnBcU4U2A" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5lxnBcU4U2u" role="3cqZAp" />
        </node>
        <node concept="2AHcQZ" id="5lxnBcU4q0l" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5lxnBcU4RMH" role="jymVt" />
      <node concept="3clFb_" id="5lxnBcU4q0o" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getModels" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5lxnBcU4q0p" role="1B3o_S" />
        <node concept="2AHcQZ" id="5lxnBcU4q0r" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="5lxnBcU4q0s" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="5lxnBcU4q0t" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
        <node concept="3clFbS" id="5lxnBcU4q0u" role="3clF47">
          <node concept="3SKdUt" id="5lxnBcU4T5$" role="3cqZAp">
            <node concept="3SKdUq" id="5lxnBcU4T5A" role="3SKWNk">
              <property role="3SKdUp" value="FIXME" />
            </node>
          </node>
          <node concept="YS8fn" id="5lxnBcU4U6m" role="3cqZAp">
            <node concept="2ShNRf" id="5lxnBcU4U6n" role="YScLw">
              <node concept="1pGfFk" id="5lxnBcU4U6o" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5lxnBcU4U63" role="3cqZAp" />
        </node>
        <node concept="2AHcQZ" id="5lxnBcU4q0v" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5lxnBcU4S9n" role="jymVt" />
      <node concept="3clFb_" id="5lxnBcU4q0y" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getFacets" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5lxnBcU4q0z" role="1B3o_S" />
        <node concept="2AHcQZ" id="5lxnBcU4q0_" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="5lxnBcU4q0A" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="5lxnBcU4q0B" role="11_B2D">
            <ref role="3uigEE" to="lui2:~SModuleFacet" resolve="SModuleFacet" />
          </node>
        </node>
        <node concept="3clFbS" id="5lxnBcU4q0C" role="3clF47">
          <node concept="3clFbF" id="5lxnBcU4SUn" role="3cqZAp">
            <node concept="2YIFZM" id="5lxnBcU4SWI" role="3clFbG">
              <ref role="37wK5l" to="33ny:~Collections.emptyList():java.util.List" resolve="emptyList" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5lxnBcU4q0D" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5lxnBcU4Sw0" role="jymVt" />
      <node concept="3clFb_" id="5lxnBcU4q0G" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getFacet" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5lxnBcU4q0H" role="1B3o_S" />
        <node concept="2AHcQZ" id="5lxnBcU4q0J" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="16euLQ" id="5lxnBcU4q0K" role="16eVyc">
          <property role="TrG5h" value="T" />
          <node concept="3uibUv" id="5lxnBcU5IX2" role="3ztrMU">
            <ref role="3uigEE" to="lui2:~SModuleFacet" resolve="SModuleFacet" />
          </node>
        </node>
        <node concept="16syzq" id="5lxnBcU4q0M" role="3clF45">
          <ref role="16sUi3" node="5lxnBcU4q0K" resolve="T" />
        </node>
        <node concept="37vLTG" id="5lxnBcU4q0N" role="3clF46">
          <property role="TrG5h" value="aClass" />
          <node concept="3uibUv" id="5lxnBcU4q0O" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
            <node concept="16syzq" id="5lxnBcU4q0P" role="11_B2D">
              <ref role="16sUi3" node="5lxnBcU4q0K" resolve="T" />
            </node>
          </node>
          <node concept="2AHcQZ" id="5lxnBcU4q0Q" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="5lxnBcU4q0R" role="3clF47">
          <node concept="YS8fn" id="5lxnBcU4T9q" role="3cqZAp">
            <node concept="2ShNRf" id="5lxnBcU4Tad" role="YScLw">
              <node concept="1pGfFk" id="5lxnBcU4TBV" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5lxnBcU4q0S" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5lxnBcU4TEU" role="jymVt" />
      <node concept="3clFb_" id="5lxnBcU4q0T" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getModelRoots" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5lxnBcU4q0U" role="1B3o_S" />
        <node concept="3uibUv" id="5lxnBcU4q0W" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="5lxnBcU4q0X" role="11_B2D">
            <ref role="3uigEE" to="dush:~ModelRoot" resolve="ModelRoot" />
          </node>
        </node>
        <node concept="3clFbS" id="5lxnBcU4q0Y" role="3clF47">
          <node concept="3clFbF" id="5lxnBcU4UdD" role="3cqZAp">
            <node concept="2YIFZM" id="5lxnBcU4Ug0" role="3clFbG">
              <ref role="37wK5l" to="33ny:~Collections.emptyList():java.util.List" resolve="emptyList" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5lxnBcU4q0Z" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5lxnBcU4Uha" role="jymVt" />
      <node concept="3clFb_" id="5lxnBcU4q12" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="addModuleListener" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5lxnBcU4q13" role="1B3o_S" />
        <node concept="3cqZAl" id="5lxnBcU4q15" role="3clF45" />
        <node concept="37vLTG" id="5lxnBcU4q16" role="3clF46">
          <property role="TrG5h" value="listener" />
          <node concept="3uibUv" id="5lxnBcU4q17" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SModuleListener" resolve="SModuleListener" />
          </node>
        </node>
        <node concept="3clFbS" id="5lxnBcU4q18" role="3clF47">
          <node concept="3SKdUt" id="5lxnBcU4UHf" role="3cqZAp">
            <node concept="3SKdUq" id="5lxnBcU4UHg" role="3SKWNk">
              <property role="3SKdUp" value="NOP" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5lxnBcU4q19" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5lxnBcU4q1a" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="removeModuleListener" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5lxnBcU4q1b" role="1B3o_S" />
        <node concept="3cqZAl" id="5lxnBcU4q1d" role="3clF45" />
        <node concept="37vLTG" id="5lxnBcU4q1e" role="3clF46">
          <property role="TrG5h" value="listener" />
          <node concept="3uibUv" id="5lxnBcU4q1f" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SModuleListener" resolve="SModuleListener" />
          </node>
        </node>
        <node concept="3clFbS" id="5lxnBcU4q1g" role="3clF47">
          <node concept="3SKdUt" id="5lxnBcU4UKX" role="3cqZAp">
            <node concept="3SKdUq" id="5lxnBcU4UKY" role="3SKWNk">
              <property role="3SKdUp" value="NOP" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5lxnBcU4q1h" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5lxnBcU4sSZ" role="jymVt" />
      <node concept="312cEg" id="5lxnBcU4$7$" role="jymVt">
        <property role="TrG5h" value="moduleReference" />
        <node concept="3Tm6S6" id="5lxnBcU4$7_" role="1B3o_S" />
        <node concept="3uibUv" id="5lxnBcU4CYk" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5lxnBcU4nUo" role="jymVt" />
    <node concept="2tJIrI" id="6IQb_RxIEBJ" role="jymVt" />
    <node concept="Wx3nA" id="2zU3cYqxbiF" role="jymVt">
      <property role="TrG5h" value="ourInstances" />
      <node concept="3Tm6S6" id="2zU3cYqxbiH" role="1B3o_S" />
      <node concept="3uibUv" id="14$_tTxyC_t" role="1tU5fm">
        <ref role="3uigEE" to="5zyv:~ConcurrentMap" resolve="ConcurrentMap" />
        <node concept="3uibUv" id="14$_tTxyJCs" role="11_B2D">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
        <node concept="3uibUv" id="14$_tTx_4Jp" role="11_B2D">
          <ref role="3uigEE" node="2zU3cYqxbbL" resolve="TypesModelManager" />
        </node>
      </node>
      <node concept="2ShNRf" id="14$_tTxyNnx" role="33vP2m">
        <node concept="1pGfFk" id="14$_tTxyY4T" role="2ShVmc">
          <ref role="37wK5l" to="5zyv:~ConcurrentHashMap.&lt;init&gt;()" resolve="ConcurrentHashMap" />
          <node concept="3uibUv" id="14$_tTxyZJn" role="1pMfVU">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
          <node concept="3uibUv" id="14$_tTx_2H$" role="1pMfVU">
            <ref role="3uigEE" node="2zU3cYqxbbL" resolve="TypesModelManager" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2zU3cYqxbcn" role="jymVt" />
    <node concept="312cEg" id="WJyfsglZQI" role="jymVt">
      <property role="TrG5h" value="modelOwners" />
      <node concept="3Tm6S6" id="WJyfsglZQJ" role="1B3o_S" />
      <node concept="_YKpA" id="WJyfsgm1UD" role="1tU5fm">
        <node concept="3uibUv" id="2zU3cYq$tPm" role="_ZDj9">
          <ref role="3uigEE" node="2zU3cYq$91A" resolve="TypesModelManager.ModelOwner" />
        </node>
      </node>
      <node concept="2ShNRf" id="WJyfsgolKP" role="33vP2m">
        <node concept="Tc6Ow" id="WJyfsgolxe" role="2ShVmc">
          <node concept="3uibUv" id="2zU3cYq$u_n" role="HW$YZ">
            <ref role="3uigEE" node="2zU3cYq$91A" resolve="TypesModelManager.ModelOwner" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5lxnBcU5cvj" role="jymVt">
      <property role="TrG5h" value="module" />
      <node concept="3Tm6S6" id="5lxnBcU5cvh" role="1B3o_S" />
      <node concept="3uibUv" id="5lxnBcU5cvi" role="1tU5fm">
        <ref role="3uigEE" node="5lxnBcU4oU$" resolve="TypesModelManager.TypesModule" />
      </node>
    </node>
    <node concept="312cEg" id="4Z$O9mrQQ_h" role="jymVt">
      <property role="TrG5h" value="repository" />
      <node concept="3Tm6S6" id="4Z$O9mrQQ_i" role="1B3o_S" />
      <node concept="3uibUv" id="4Z$O9mrQTsz" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2zU3cYqxbbM" role="1B3o_S" />
    <node concept="3UR2Jj" id="443LGHBipYG" role="lGtFl">
      <node concept="TZ5HA" id="443LGHBipYH" role="TZ5H$">
        <node concept="1dT_AC" id="443LGHBipYI" role="1dT_Ay">
          <property role="1dT_AB" value="A per-repository registry of models that hold the types." />
        </node>
      </node>
      <node concept="TZ5HA" id="443LGHBir9o" role="TZ5H$">
        <node concept="1dT_AC" id="443LGHBir9p" role="1dT_Ay">
          <property role="1dT_AB" value="The models provided by this registry require no write access to be updated." />
        </node>
      </node>
      <node concept="TZ5HA" id="443LGHBirax" role="TZ5H$">
        <node concept="1dT_AC" id="443LGHBiray" role="1dT_Ay">
          <property role="1dT_AB" value="They are also completely silent." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4Z$O9mrQIzY">
    <property role="TrG5h" value="TypecheckingCache" />
    <node concept="2tJIrI" id="443LGHBxDpo" role="jymVt" />
    <node concept="3HP615" id="6QH_LDtb$zi" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="CacheFactory" />
      <node concept="3clFb_" id="6QH_LDtb_6x" role="jymVt">
        <property role="TrG5h" value="createCache" />
        <node concept="3uibUv" id="1FOQehxex$4" role="3clF45">
          <ref role="3uigEE" to="tj24:6QH_LDtfe19" resolve="TypeCache" />
        </node>
        <node concept="3Tm1VV" id="6QH_LDtb_6$" role="1B3o_S" />
        <node concept="3clFbS" id="6QH_LDtb_6_" role="3clF47" />
      </node>
      <node concept="3Tm1VV" id="6QH_LDtb$zj" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4Z$O9mrTG7X" role="jymVt" />
    <node concept="2YIFZL" id="4Z$O9mrQIG1" role="jymVt">
      <property role="TrG5h" value="get" />
      <node concept="37vLTG" id="4Z$O9mrQIH4" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="4Z$O9mrQIHU" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3uibUv" id="4Z$O9mrQIIr" role="3clF45">
        <ref role="3uigEE" node="4Z$O9mrQIzY" resolve="TypecheckingCache" />
      </node>
      <node concept="3Tm1VV" id="4Z$O9mrQIG4" role="1B3o_S" />
      <node concept="3clFbS" id="4Z$O9mrQIG5" role="3clF47">
        <node concept="3clFbF" id="14$_tTxz3bP" role="3cqZAp">
          <node concept="2OqwBi" id="14$_tTxz3BI" role="3clFbG">
            <node concept="37vLTw" id="14$_tTxz3bN" role="2Oq$k0">
              <ref role="3cqZAo" node="4Z$O9mrTGv9" resolve="ourTypecheckings" />
            </node>
            <node concept="liA8E" id="14$_tTxz462" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~ConcurrentMap.computeIfAbsent(java.lang.Object,java.util.function.Function):java.lang.Object" resolve="computeIfAbsent" />
              <node concept="37vLTw" id="14$_tTxz4ZT" role="37wK5m">
                <ref role="3cqZAo" node="4Z$O9mrQIH4" resolve="repository" />
              </node>
              <node concept="1bVj0M" id="14$_tTxz7wI" role="37wK5m">
                <node concept="37vLTG" id="14$_tTxz81r" role="1bW2Oz">
                  <property role="TrG5h" value="repo" />
                  <node concept="3uibUv" id="14$_tTxz8ex" role="1tU5fm">
                    <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                  </node>
                </node>
                <node concept="3clFbS" id="14$_tTxz7wK" role="1bW5cS">
                  <node concept="3clFbF" id="14$_tTxz8zi" role="3cqZAp">
                    <node concept="2ShNRf" id="14$_tTxz8zg" role="3clFbG">
                      <node concept="1pGfFk" id="14$_tTxz9ny" role="2ShVmc">
                        <ref role="37wK5l" node="4Z$O9mrQIJn" resolve="TypecheckingCache" />
                        <node concept="37vLTw" id="14$_tTxz9v6" role="37wK5m">
                          <ref role="3cqZAo" node="14$_tTxz81r" resolve="repo" />
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
    <node concept="2tJIrI" id="4Z$O9mrQI$H" role="jymVt" />
    <node concept="3clFbW" id="4Z$O9mrQIJn" role="jymVt">
      <node concept="37vLTG" id="4Z$O9mrQIKs" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="4Z$O9mrQIL_" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3cqZAl" id="4Z$O9mrQIJp" role="3clF45" />
      <node concept="3Tm6S6" id="4Z$O9mrQIJU" role="1B3o_S" />
      <node concept="3clFbS" id="4Z$O9mrQIJr" role="3clF47">
        <node concept="3clFbF" id="4Z$O9mrQIM5" role="3cqZAp">
          <node concept="37vLTI" id="4Z$O9mrQIM7" role="3clFbG">
            <node concept="2OqwBi" id="4Z$O9mrQIPy" role="37vLTJ">
              <node concept="Xjq3P" id="4Z$O9mrQIQd" role="2Oq$k0" />
              <node concept="2OwXpG" id="4Z$O9mrQIP_" role="2OqNvi">
                <ref role="2Oxat5" node="4Z$O9mrQIM1" resolve="repository" />
              </node>
            </node>
            <node concept="37vLTw" id="4Z$O9mrQIMb" role="37vLTx">
              <ref role="3cqZAo" node="4Z$O9mrQIKs" resolve="repository" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4Z$O9mrQJbQ" role="jymVt" />
    <node concept="2YIFZL" id="14$_tTxAmT8" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="14$_tTxAhsw" role="3clF47">
        <node concept="3clFbF" id="443LGHBoCbP" role="3cqZAp">
          <node concept="2OqwBi" id="443LGHBoCbQ" role="3clFbG">
            <node concept="liA8E" id="443LGHBoCbR" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~ConcurrentMap.computeIfPresent(java.lang.Object,java.util.function.BiFunction):java.lang.Object" resolve="computeIfPresent" />
              <node concept="37vLTw" id="14$_tTxAmoL" role="37wK5m">
                <ref role="3cqZAo" node="14$_tTxAlhx" resolve="repository" />
              </node>
              <node concept="1bVj0M" id="443LGHBoCbS" role="37wK5m">
                <node concept="3clFbS" id="443LGHBoCbT" role="1bW5cS">
                  <node concept="3clFbH" id="1FOQehxKH4k" role="3cqZAp" />
                  <node concept="1QHqEK" id="1FOQehxKJrN" role="3cqZAp">
                    <node concept="1QHqEC" id="1FOQehxKJrP" role="1QHqEI">
                      <node concept="3clFbS" id="1FOQehxKJrR" role="1bW5cS">
                        <node concept="3clFbF" id="443LGHBoCbU" role="3cqZAp">
                          <node concept="2OqwBi" id="443LGHBoCbV" role="3clFbG">
                            <node concept="37vLTw" id="443LGHBoCbW" role="2Oq$k0">
                              <ref role="3cqZAo" node="443LGHBoCc4" resolve="instance" />
                            </node>
                            <node concept="liA8E" id="443LGHBoCbX" role="2OqNvi">
                              <ref role="37wK5l" node="14$_tTxApBG" resolve="dispose" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="1FOQehxKJx9" role="ukAjM">
                      <ref role="3cqZAo" node="443LGHBoCc2" resolve="repos" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="1FOQehxKJ3E" role="3cqZAp" />
                  <node concept="3SKdUt" id="443LGHBoCbY" role="3cqZAp">
                    <node concept="3SKdUq" id="443LGHBoCbZ" role="3SKWNk">
                      <property role="3SKdUp" value="remove the mapping" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="443LGHBoCc0" role="3cqZAp">
                    <node concept="10Nm6u" id="443LGHBoCc1" role="3clFbG" />
                  </node>
                </node>
                <node concept="37vLTG" id="443LGHBoCc2" role="1bW2Oz">
                  <property role="TrG5h" value="repos" />
                  <node concept="3uibUv" id="443LGHBoCc3" role="1tU5fm">
                    <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                  </node>
                </node>
                <node concept="37vLTG" id="443LGHBoCc4" role="1bW2Oz">
                  <property role="TrG5h" value="instance" />
                  <node concept="3uibUv" id="14$_tTxAl6h" role="1tU5fm">
                    <ref role="3uigEE" node="4Z$O9mrQIzY" resolve="TypecheckingCache" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="14$_tTxAkVQ" role="2Oq$k0">
              <ref role="3cqZAo" node="4Z$O9mrTGv9" resolve="ourTypecheckings" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="14$_tTxAlhx" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="14$_tTxAmhJ" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3cqZAl" id="14$_tTxAhsu" role="3clF45" />
      <node concept="3Tm1VV" id="14$_tTxAhsv" role="1B3o_S" />
      <node concept="P$JXv" id="5lxnBcU40O5" role="lGtFl">
        <node concept="TZ5HA" id="5lxnBcU40O6" role="TZ5H$">
          <node concept="1dT_AC" id="5lxnBcU40O7" role="1dT_Ay">
            <property role="1dT_AB" value="Must be called in a read action." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="14$_tTxAolu" role="jymVt" />
    <node concept="3clFb_" id="14$_tTxApBG" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="14$_tTxApBI" role="3clF45" />
      <node concept="3Tm6S6" id="5lxnBcU3XAg" role="1B3o_S" />
      <node concept="3clFbS" id="14$_tTxApBK" role="3clF47">
        <node concept="3clFbF" id="14$_tTxAw1q" role="3cqZAp">
          <node concept="2OqwBi" id="7Mte5SKj3hA" role="3clFbG">
            <node concept="2OqwBi" id="14$_tTxAwaW" role="2Oq$k0">
              <node concept="Xjq3P" id="14$_tTxAw1p" role="2Oq$k0" />
              <node concept="2OwXpG" id="14$_tTxAwgT" role="2OqNvi">
                <ref role="2Oxat5" node="4Z$O9mrTa0z" resolve="cacheHolders" />
              </node>
            </node>
            <node concept="liA8E" id="7Mte5SKj3WW" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~ConcurrentMap.forEach(java.util.function.BiConsumer):void" resolve="forEach" />
              <node concept="1bVj0M" id="7Mte5SKj4mM" role="37wK5m">
                <node concept="37vLTG" id="7Mte5SKj4S3" role="1bW2Oz">
                  <property role="TrG5h" value="key" />
                  <node concept="3uibUv" id="4vBwiiVtPSw" role="1tU5fm">
                    <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                  </node>
                </node>
                <node concept="37vLTG" id="7Mte5SKj5zG" role="1bW2Oz">
                  <property role="TrG5h" value="holder" />
                  <node concept="3uibUv" id="7Mte5SKj5UC" role="1tU5fm">
                    <ref role="3uigEE" node="4Z$O9mrQJw7" resolve="TypecheckingCache.TypeCacheHolder" />
                  </node>
                </node>
                <node concept="3clFbS" id="7Mte5SKj4mN" role="1bW5cS">
                  <node concept="3clFbF" id="7Mte5SKj6Ee" role="3cqZAp">
                    <node concept="2OqwBi" id="7Mte5SKj6Sz" role="3clFbG">
                      <node concept="37vLTw" id="7Mte5SKj6Ed" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Mte5SKj5zG" resolve="holder" />
                      </node>
                      <node concept="liA8E" id="7Mte5SKj7mb" role="2OqNvi">
                        <ref role="37wK5l" node="3u5wJtfjHf" resolve="clearAll" />
                        <node concept="37vLTw" id="7Mte5SKj8yn" role="37wK5m">
                          <ref role="3cqZAo" node="4Z$O9mrQIM1" resolve="repository" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="7Mte5SKjJy5" role="3cqZAp" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="443LGHBce7v" role="3cqZAp">
          <node concept="2OqwBi" id="443LGHBcfox" role="3clFbG">
            <node concept="2OqwBi" id="443LGHBcer4" role="2Oq$k0">
              <node concept="Xjq3P" id="443LGHBce7t" role="2Oq$k0" />
              <node concept="2OwXpG" id="443LGHBceA1" role="2OqNvi">
                <ref role="2Oxat5" node="4Z$O9mrTa0z" resolve="cacheHolders" />
              </node>
            </node>
            <node concept="liA8E" id="7Mte5SKj9fP" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.clear():void" resolve="clear" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="443LGHBchec" role="3cqZAp">
          <node concept="37vLTI" id="443LGHBciqI" role="3clFbG">
            <node concept="10Nm6u" id="443LGHBcivC" role="37vLTx" />
            <node concept="2OqwBi" id="443LGHBci2G" role="37vLTJ">
              <node concept="Xjq3P" id="443LGHBchea" role="2Oq$k0" />
              <node concept="2OwXpG" id="443LGHBcidv" role="2OqNvi">
                <ref role="2Oxat5" node="4Z$O9mrQIM1" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="14$_tTxAgoB" role="jymVt" />
    <node concept="3clFb_" id="4Z$O9mrQJgp" role="jymVt">
      <property role="TrG5h" value="cachedTypes" />
      <node concept="37vLTG" id="4Z$O9mrQJle" role="3clF46">
        <property role="TrG5h" value="unitRef" />
        <node concept="3uibUv" id="4vBwiiVtQ7u" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="3uibUv" id="1FOQehxetAn" role="3clF45">
        <ref role="3uigEE" to="tj24:6QH_LDtfe19" resolve="TypeCache" />
      </node>
      <node concept="3Tm1VV" id="4Z$O9mrQJgs" role="1B3o_S" />
      <node concept="3clFbS" id="4Z$O9mrQJgt" role="3clF47">
        <node concept="3cpWs8" id="7Mte5SKjzLs" role="3cqZAp">
          <node concept="3cpWsn" id="7Mte5SKjzLt" role="3cpWs9">
            <property role="TrG5h" value="holder" />
            <node concept="3uibUv" id="7Mte5SKjzLr" role="1tU5fm">
              <ref role="3uigEE" node="4Z$O9mrQJw7" resolve="TypecheckingCache.TypeCacheHolder" />
            </node>
            <node concept="2OqwBi" id="7Mte5SKjzLu" role="33vP2m">
              <node concept="37vLTw" id="7Mte5SKjzLv" role="2Oq$k0">
                <ref role="3cqZAo" node="4Z$O9mrTa0z" resolve="cacheHolders" />
              </node>
              <node concept="liA8E" id="7Mte5SKjzLw" role="2OqNvi">
                <ref role="37wK5l" to="5zyv:~ConcurrentMap.computeIfPresent(java.lang.Object,java.util.function.BiFunction):java.lang.Object" resolve="computeIfPresent" />
                <node concept="37vLTw" id="7Mte5SKjzLx" role="37wK5m">
                  <ref role="3cqZAo" node="4Z$O9mrQJle" resolve="unitRef" />
                </node>
                <node concept="1bVj0M" id="7Mte5SKjzLy" role="37wK5m">
                  <node concept="37vLTG" id="7Mte5SKjzLz" role="1bW2Oz">
                    <property role="TrG5h" value="key" />
                    <node concept="3uibUv" id="4vBwiiVtQnW" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="7Mte5SKjzL_" role="1bW2Oz">
                    <property role="TrG5h" value="holder" />
                    <node concept="3uibUv" id="7Mte5SKjzLA" role="1tU5fm">
                      <ref role="3uigEE" node="4Z$O9mrQJw7" resolve="TypecheckingCache.TypeCacheHolder" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="7Mte5SKjzLB" role="1bW5cS">
                    <node concept="3clFbJ" id="7Mte5SKjF4j" role="3cqZAp">
                      <node concept="3clFbS" id="7Mte5SKjF4l" role="3clFbx">
                        <node concept="3clFbF" id="7Mte5SKjGbv" role="3cqZAp">
                          <node concept="2OqwBi" id="7Mte5SKjGoq" role="3clFbG">
                            <node concept="37vLTw" id="7Mte5SKjGbt" role="2Oq$k0">
                              <ref role="3cqZAo" node="7Mte5SKjzL_" resolve="holder" />
                            </node>
                            <node concept="liA8E" id="7Mte5SKjGJb" role="2OqNvi">
                              <ref role="37wK5l" node="3u5wJtfdzL" resolve="clearCache" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="7Mte5SKjFYl" role="3clFbw">
                        <node concept="2OqwBi" id="7Mte5SKjFYn" role="3fr31v">
                          <node concept="37vLTw" id="7Mte5SKjFYo" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Mte5SKjzL_" resolve="holder" />
                          </node>
                          <node concept="liA8E" id="7Mte5SKjFYp" role="2OqNvi">
                            <ref role="37wK5l" node="4Z$O9mrQJB5" resolve="isUpToDate" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7Mte5SKjJds" role="3cqZAp">
                      <node concept="37vLTw" id="7Mte5SKjJdq" role="3clFbG">
                        <ref role="3cqZAo" node="7Mte5SKjzL_" resolve="holder" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="7Mte5SKjJEV" role="3cqZAp" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Mte5SKjliQ" role="3cqZAp">
          <node concept="3K4zz7" id="7Mte5SKjAfU" role="3clFbG">
            <node concept="2OqwBi" id="7Mte5SKjAmo" role="3K4E3e">
              <node concept="37vLTw" id="7Mte5SKjAhI" role="2Oq$k0">
                <ref role="3cqZAo" node="7Mte5SKjzLt" resolve="holder" />
              </node>
              <node concept="2OwXpG" id="7Mte5SKjA$S" role="2OqNvi">
                <ref role="2Oxat5" node="4Z$O9mrQJ$h" resolve="cache" />
              </node>
            </node>
            <node concept="10Nm6u" id="7Mte5SKjAB2" role="3K4GZi" />
            <node concept="3y3z36" id="7Mte5SKjAam" role="3K4Cdx">
              <node concept="10Nm6u" id="7Mte5SKjAfm" role="3uHU7w" />
              <node concept="37vLTw" id="7Mte5SKjzLJ" role="3uHU7B">
                <ref role="3cqZAo" node="7Mte5SKjzLt" resolve="holder" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="5lxnBcU3Uwk" role="lGtFl">
        <node concept="TZ5HA" id="5lxnBcU3Uwl" role="TZ5H$">
          <node concept="1dT_AC" id="5lxnBcU3Uwm" role="1dT_Ay">
            <property role="1dT_AB" value="Must be called in a read action." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6QH_LDtbs4g" role="jymVt" />
    <node concept="3clFb_" id="6QH_LDtbsGz" role="jymVt">
      <property role="TrG5h" value="updateCachedTypes" />
      <node concept="37vLTG" id="6QH_LDtbCgW" role="3clF46">
        <property role="TrG5h" value="unitRef" />
        <node concept="3uibUv" id="4vBwiiVtN0X" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="37vLTG" id="6QH_LDtbza3" role="3clF46">
        <property role="TrG5h" value="cacheFactory" />
        <node concept="3uibUv" id="6QH_LDtb_b8" role="1tU5fm">
          <ref role="3uigEE" node="6QH_LDtb$zi" resolve="TypecheckingCache.CacheFactory" />
        </node>
      </node>
      <node concept="3uibUv" id="1FOQehxewiF" role="3clF45">
        <ref role="3uigEE" to="tj24:6QH_LDtfe19" resolve="TypeCache" />
      </node>
      <node concept="3Tm1VV" id="6QH_LDtbsGA" role="1B3o_S" />
      <node concept="3clFbS" id="6QH_LDtbsGB" role="3clF47">
        <node concept="3clFbF" id="6QH_LDtbMb8" role="3cqZAp">
          <node concept="2OqwBi" id="6QH_LDtbM$i" role="3clFbG">
            <node concept="1rXfSq" id="6QH_LDtbMb6" role="2Oq$k0">
              <ref role="37wK5l" node="4Z$O9mrQJ13" resolve="newSession" />
              <node concept="37vLTw" id="6QH_LDtbMsH" role="37wK5m">
                <ref role="3cqZAo" node="6QH_LDtbCgW" resolve="unitRef" />
              </node>
            </node>
            <node concept="liA8E" id="6QH_LDtbMFl" role="2OqNvi">
              <ref role="37wK5l" node="7kaxm0sExBe" resolve="execute" />
              <node concept="1bVj0M" id="6QH_LDtbMJX" role="37wK5m">
                <node concept="3clFbS" id="6QH_LDtbMJY" role="1bW5cS">
                  <node concept="3clFbH" id="6QH_LDtbMLK" role="3cqZAp" />
                  <node concept="3cpWs8" id="6QH_LDtbDEY" role="3cqZAp">
                    <node concept="3cpWsn" id="6QH_LDtbDEZ" role="3cpWs9">
                      <property role="TrG5h" value="holder" />
                      <node concept="3uibUv" id="6QH_LDtbDF0" role="1tU5fm">
                        <ref role="3uigEE" node="4Z$O9mrQJw7" resolve="TypecheckingCache.TypeCacheHolder" />
                      </node>
                      <node concept="2OqwBi" id="7Mte5SKjgoN" role="33vP2m">
                        <node concept="37vLTw" id="6QH_LDtbDF2" role="2Oq$k0">
                          <ref role="3cqZAo" node="4Z$O9mrTa0z" resolve="cacheHolders" />
                        </node>
                        <node concept="liA8E" id="7Mte5SKjcLY" role="2OqNvi">
                          <ref role="37wK5l" to="5zyv:~ConcurrentMap.computeIfAbsent(java.lang.Object,java.util.function.Function):java.lang.Object" resolve="computeIfAbsent" />
                          <node concept="37vLTw" id="7Mte5SKje3K" role="37wK5m">
                            <ref role="3cqZAo" node="6QH_LDtbCgW" resolve="unitRef" />
                          </node>
                          <node concept="1bVj0M" id="7Mte5SKjdcY" role="37wK5m">
                            <node concept="37vLTG" id="7Mte5SKje$U" role="1bW2Oz">
                              <property role="TrG5h" value="key" />
                              <node concept="3uibUv" id="4vBwiiVtQCl" role="1tU5fm">
                                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="7Mte5SKjdcZ" role="1bW5cS">
                              <node concept="3clFbF" id="7Mte5SKjhUd" role="3cqZAp">
                                <node concept="2ShNRf" id="7Mte5SKjhUf" role="3clFbG">
                                  <node concept="1pGfFk" id="7Mte5SKjhUg" role="2ShVmc">
                                    <ref role="37wK5l" node="4Z$O9mrTmmf" resolve="TypecheckingCache.TypeCacheHolder" />
                                    <node concept="37vLTw" id="7Mte5SKjhUh" role="37wK5m">
                                      <ref role="3cqZAo" node="6QH_LDtbCgW" resolve="unitRef" />
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
                  <node concept="3clFbH" id="6QH_LDtbDD$" role="3cqZAp" />
                  <node concept="3cpWs8" id="443LGHBxRRf" role="3cqZAp">
                    <node concept="3cpWsn" id="443LGHBxRRg" role="3cpWs9">
                      <property role="TrG5h" value="newCache" />
                      <node concept="3uibUv" id="1FOQehxexg7" role="1tU5fm">
                        <ref role="3uigEE" to="tj24:6QH_LDtfe19" resolve="TypeCache" />
                      </node>
                      <node concept="2OqwBi" id="443LGHBxRRh" role="33vP2m">
                        <node concept="37vLTw" id="443LGHBxRRi" role="2Oq$k0">
                          <ref role="3cqZAo" node="6QH_LDtbza3" resolve="cacheFactory" />
                        </node>
                        <node concept="liA8E" id="443LGHBxRRj" role="2OqNvi">
                          <ref role="37wK5l" node="6QH_LDtb_6x" resolve="createCache" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6QH_LDtbCeT" role="3cqZAp" />
                  <node concept="3clFbF" id="6QH_LDtbFf5" role="3cqZAp">
                    <node concept="2OqwBi" id="6QH_LDtbFf6" role="3clFbG">
                      <node concept="37vLTw" id="6QH_LDtbFf7" role="2Oq$k0">
                        <ref role="3cqZAo" node="6QH_LDtbDEZ" resolve="holder" />
                      </node>
                      <node concept="liA8E" id="6QH_LDtbFf8" role="2OqNvi">
                        <ref role="37wK5l" node="4Z$O9mrTz4F" resolve="setCache" />
                        <node concept="37vLTw" id="6QH_LDtbG1R" role="37wK5m">
                          <ref role="3cqZAo" node="443LGHBxRRg" resolve="newCache" />
                        </node>
                        <node concept="37vLTw" id="443LGHB6gl3" role="37wK5m">
                          <ref role="3cqZAo" node="4Z$O9mrQIM1" resolve="repository" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6QH_LDtbFfa" role="3cqZAp">
                    <node concept="37vLTw" id="6QH_LDtbGIu" role="3clFbG">
                      <ref role="3cqZAo" node="443LGHBxRRg" resolve="newCache" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="6QH_LDtbOyN" role="3cqZAp" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="5lxnBcU43Kb" role="lGtFl">
        <node concept="TZ5HA" id="5lxnBcU43Kc" role="TZ5H$">
          <node concept="1dT_AC" id="5lxnBcU43Kd" role="1dT_Ay">
            <property role="1dT_AB" value="Must be called in a read action." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6QH_LDtbscb" role="jymVt" />
    <node concept="3clFb_" id="4Z$O9mrQJ13" role="jymVt">
      <property role="TrG5h" value="newSession" />
      <node concept="37vLTG" id="4Z$O9mrQJ9w" role="3clF46">
        <property role="TrG5h" value="unit" />
        <node concept="3uibUv" id="4vBwiiVtNhE" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="3uibUv" id="4Z$O9mrQJ31" role="3clF45">
        <ref role="3uigEE" node="4Z$O9mrQIzg" resolve="TypecheckingCache.TypecheckingSession" />
      </node>
      <node concept="3Tm6S6" id="443LGHBD6uY" role="1B3o_S" />
      <node concept="3clFbS" id="4Z$O9mrQJ17" role="3clF47">
        <node concept="3clFbF" id="4Z$O9mrTNlk" role="3cqZAp">
          <node concept="2ShNRf" id="4Z$O9mrTNli" role="3clFbG">
            <node concept="1pGfFk" id="4Z$O9mrTNPy" role="2ShVmc">
              <ref role="37wK5l" node="4Z$O9mrTNJK" resolve="TypecheckingCache.TypecheckingSession" />
              <node concept="37vLTw" id="4Z$O9mrTNQM" role="37wK5m">
                <ref role="3cqZAo" node="4Z$O9mrQJ9w" resolve="unit" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="443LGHBoKqX" role="jymVt" />
    <node concept="312cEu" id="4Z$O9mrQIzg" role="jymVt">
      <property role="TrG5h" value="TypecheckingSession" />
      <node concept="2tJIrI" id="4Z$O9mrQIzE" role="jymVt" />
      <node concept="3clFbW" id="4Z$O9mrTNJK" role="jymVt">
        <node concept="37vLTG" id="4Z$O9mrTNK9" role="3clF46">
          <property role="TrG5h" value="unit" />
          <node concept="3uibUv" id="4vBwiiVtNyG" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
        </node>
        <node concept="3cqZAl" id="4Z$O9mrTNJM" role="3clF45" />
        <node concept="3Tmbuc" id="4Z$O9mrTY5k" role="1B3o_S" />
        <node concept="3clFbS" id="4Z$O9mrTNJO" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="4Z$O9mrTNRx" role="jymVt" />
      <node concept="3clFb_" id="7kaxm0sExBe" role="jymVt">
        <property role="TrG5h" value="execute" />
        <node concept="37vLTG" id="7kaxm0sExCc" role="3clF46">
          <property role="TrG5h" value="computable" />
          <node concept="3uibUv" id="7kaxm0sExDf" role="1tU5fm">
            <ref role="3uigEE" to="18ew:~Computable" resolve="Computable" />
            <node concept="16syzq" id="7kaxm0sExE_" role="11_B2D">
              <ref role="16sUi3" node="7kaxm0sExDN" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="16syzq" id="7kaxm0sExFe" role="3clF45">
          <ref role="16sUi3" node="7kaxm0sExDN" resolve="T" />
        </node>
        <node concept="3Tm1VV" id="7kaxm0sExBh" role="1B3o_S" />
        <node concept="3clFbS" id="7kaxm0sExBi" role="3clF47">
          <node concept="3clFbF" id="7kaxm0sExHm" role="3cqZAp">
            <node concept="2OqwBi" id="7kaxm0sExSv" role="3clFbG">
              <node concept="37vLTw" id="7kaxm0sExHl" role="2Oq$k0">
                <ref role="3cqZAo" node="7kaxm0sExCc" resolve="computable" />
              </node>
              <node concept="liA8E" id="7kaxm0sEy11" role="2OqNvi">
                <ref role="37wK5l" to="18ew:~Computable.compute():java.lang.Object" resolve="compute" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="7kaxm0sExDN" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
      </node>
      <node concept="3Tm6S6" id="443LGHBD7xQ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="443LGHBy6ep" role="jymVt" />
    <node concept="312cEu" id="4Z$O9mrQJw7" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="TypeCacheHolder" />
      <node concept="2tJIrI" id="4Z$O9mrQJz2" role="jymVt" />
      <node concept="3clFbW" id="4Z$O9mrTmmf" role="jymVt">
        <node concept="3cqZAl" id="4Z$O9mrTmmh" role="3clF45" />
        <node concept="3Tm6S6" id="4Z$O9mrTmmi" role="1B3o_S" />
        <node concept="3clFbS" id="4Z$O9mrTmmj" role="3clF47">
          <node concept="3clFbF" id="4Z$O9mrTnFZ" role="3cqZAp">
            <node concept="37vLTI" id="4Z$O9mrTo3A" role="3clFbG">
              <node concept="37vLTw" id="4Z$O9mrTo5O" role="37vLTx">
                <ref role="3cqZAo" node="4Z$O9mrTnE3" resolve="unitRef" />
              </node>
              <node concept="2OqwBi" id="4Z$O9mrTnLp" role="37vLTJ">
                <node concept="Xjq3P" id="4Z$O9mrTnFY" role="2Oq$k0" />
                <node concept="2OwXpG" id="4Z$O9mrTnQU" role="2OqNvi">
                  <ref role="2Oxat5" node="4Z$O9mrQJ_R" resolve="unitRef" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4Z$O9mrTnE3" role="3clF46">
          <property role="TrG5h" value="unitRef" />
          <node concept="3uibUv" id="4vBwiiVtQT3" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4Z$O9mrTm$z" role="jymVt" />
      <node concept="3clFb_" id="4Z$O9mrQJB5" role="jymVt">
        <property role="TrG5h" value="isUpToDate" />
        <node concept="10P_77" id="4Z$O9mrQJCk" role="3clF45" />
        <node concept="3Tm6S6" id="4Z$O9mrTmLZ" role="1B3o_S" />
        <node concept="3clFbS" id="4Z$O9mrQJB9" role="3clF47">
          <node concept="3clFbF" id="3u5wJtdJvE" role="3cqZAp">
            <node concept="37vLTw" id="3u5wJtdJvD" role="3clFbG">
              <ref role="3cqZAo" node="3u5wJtdJ0w" resolve="upToDate" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4Z$O9mrTyan" role="jymVt" />
      <node concept="3clFb_" id="4Z$O9mrTz4F" role="jymVt">
        <property role="TrG5h" value="setCache" />
        <node concept="37vLTG" id="4Z$O9mrT_Xw" role="3clF46">
          <property role="TrG5h" value="newCache" />
          <node concept="3uibUv" id="1FOQehxe_Ym" role="1tU5fm">
            <ref role="3uigEE" to="tj24:6QH_LDtfe19" resolve="TypeCache" />
          </node>
        </node>
        <node concept="37vLTG" id="443LGHB6d9m" role="3clF46">
          <property role="TrG5h" value="repository" />
          <node concept="3uibUv" id="443LGHB6elW" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
        </node>
        <node concept="3cqZAl" id="4Z$O9mrTz4I" role="3clF45" />
        <node concept="3Tm6S6" id="4Z$O9mrTz4J" role="1B3o_S" />
        <node concept="3clFbS" id="4Z$O9mrTz4K" role="3clF47">
          <node concept="3clFbF" id="3u5wJtf8oo" role="3cqZAp">
            <node concept="1rXfSq" id="3u5wJtf8om" role="3clFbG">
              <ref role="37wK5l" node="3u5wJtfdzL" resolve="clearCache" />
            </node>
          </node>
          <node concept="3clFbF" id="4Z$O9mrT_4b" role="3cqZAp">
            <node concept="37vLTI" id="4Z$O9mrT_ua" role="3clFbG">
              <node concept="37vLTw" id="4Z$O9mrTAly" role="37vLTx">
                <ref role="3cqZAo" node="4Z$O9mrT_Xw" resolve="newCache" />
              </node>
              <node concept="2OqwBi" id="4Z$O9mrT_c1" role="37vLTJ">
                <node concept="Xjq3P" id="4Z$O9mrT_49" role="2Oq$k0" />
                <node concept="2OwXpG" id="4Z$O9mrT_it" role="2OqNvi">
                  <ref role="2Oxat5" node="4Z$O9mrQJ$h" resolve="cache" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7Mte5SKjIaj" role="3cqZAp">
            <node concept="37vLTI" id="7Mte5SKjISO" role="3clFbG">
              <node concept="3clFbT" id="7Mte5SKjJ0R" role="37vLTx">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="7Mte5SKjIii" role="37vLTJ">
                <node concept="Xjq3P" id="7Mte5SKjIah" role="2Oq$k0" />
                <node concept="2OwXpG" id="7Mte5SKjIye" role="2OqNvi">
                  <ref role="2Oxat5" node="3u5wJtdJ0w" resolve="upToDate" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="443LGHB6hF5" role="3cqZAp">
            <node concept="1rXfSq" id="443LGHB6hF3" role="3clFbG">
              <ref role="37wK5l" node="3u5wJtdQ7a" resolve="startTrackingChanges" />
              <node concept="2OqwBi" id="4vBwiiVtRvb" role="37wK5m">
                <node concept="2OqwBi" id="443LGHB6iEt" role="2Oq$k0">
                  <node concept="37vLTw" id="443LGHB6i0r" role="2Oq$k0">
                    <ref role="3cqZAo" node="4Z$O9mrQJ_R" resolve="unitRef" />
                  </node>
                  <node concept="liA8E" id="443LGHB6iQV" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository):org.jetbrains.mps.openapi.model.SNode" resolve="resolve" />
                    <node concept="37vLTw" id="443LGHB6jb2" role="37wK5m">
                      <ref role="3cqZAo" node="443LGHB6d9m" resolve="repository" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4vBwiiVtRR0" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getModel():org.jetbrains.mps.openapi.model.SModel" resolve="getModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4Z$O9mrQJI7" role="jymVt" />
      <node concept="3clFb_" id="3u5wJtfjHf" role="jymVt">
        <property role="TrG5h" value="clearAll" />
        <node concept="37vLTG" id="443LGHB61gm" role="3clF46">
          <property role="TrG5h" value="repository" />
          <node concept="3uibUv" id="443LGHB62og" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
        </node>
        <node concept="3cqZAl" id="3u5wJtfjHh" role="3clF45" />
        <node concept="3Tm6S6" id="3u5wJtfjHi" role="1B3o_S" />
        <node concept="3clFbS" id="3u5wJtfjHj" role="3clF47">
          <node concept="3clFbF" id="3u5wJtf$1F" role="3cqZAp">
            <node concept="1rXfSq" id="3u5wJtf$1E" role="3clFbG">
              <ref role="37wK5l" node="3u5wJtfdzL" resolve="clearCache" />
            </node>
          </node>
          <node concept="3clFbF" id="3u5wJtf$a7" role="3cqZAp">
            <node concept="1rXfSq" id="3u5wJtf$a5" role="3clFbG">
              <ref role="37wK5l" node="3u5wJtf9jK" resolve="clearUnit" />
              <node concept="37vLTw" id="443LGHB63Ou" role="37wK5m">
                <ref role="3cqZAo" node="443LGHB61gm" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3u5wJtfxBn" role="jymVt" />
      <node concept="3clFb_" id="3u5wJtfdzL" role="jymVt">
        <property role="TrG5h" value="clearCache" />
        <node concept="3cqZAl" id="3u5wJtfdzN" role="3clF45" />
        <node concept="3Tm6S6" id="3u5wJtfdzO" role="1B3o_S" />
        <node concept="3clFbS" id="3u5wJtfdzP" role="3clF47">
          <node concept="3clFbJ" id="3u5wJtf6Zo" role="3cqZAp">
            <node concept="3clFbS" id="3u5wJtf6Zq" role="3clFbx">
              <node concept="3clFbF" id="4Z$O9mrSGzX" role="3cqZAp">
                <node concept="2OqwBi" id="4Z$O9mrSGET" role="3clFbG">
                  <node concept="37vLTw" id="4Z$O9mrSGzW" role="2Oq$k0">
                    <ref role="3cqZAo" node="4Z$O9mrQJ$h" resolve="cache" />
                  </node>
                  <node concept="liA8E" id="4Z$O9mrT9b$" role="2OqNvi">
                    <ref role="37wK5l" to="tj24:1FOQehxelEi" resolve="clear" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4Z$O9mrT$1w" role="3cqZAp">
                <node concept="37vLTI" id="4Z$O9mrT$s8" role="3clFbG">
                  <node concept="10Nm6u" id="4Z$O9mrT$uW" role="37vLTx" />
                  <node concept="2OqwBi" id="4Z$O9mrT$a3" role="37vLTJ">
                    <node concept="Xjq3P" id="4Z$O9mrT$1u" role="2Oq$k0" />
                    <node concept="2OwXpG" id="4Z$O9mrT$gv" role="2OqNvi">
                      <ref role="2Oxat5" node="4Z$O9mrQJ$h" resolve="cache" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="3u5wJtf7GF" role="3clFbw">
              <node concept="10Nm6u" id="3u5wJtf7HU" role="3uHU7w" />
              <node concept="37vLTw" id="3u5wJtf7u1" role="3uHU7B">
                <ref role="3cqZAo" node="4Z$O9mrQJ$h" resolve="cache" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3u5wJtfgz8" role="jymVt" />
      <node concept="2tJIrI" id="3u5wJtfq9$" role="jymVt" />
      <node concept="3clFb_" id="3u5wJtf9jK" role="jymVt">
        <property role="TrG5h" value="clearUnit" />
        <node concept="37vLTG" id="443LGHB63OW" role="3clF46">
          <property role="TrG5h" value="repository" />
          <node concept="3uibUv" id="443LGHB64GV" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
        </node>
        <node concept="3cqZAl" id="3u5wJtf9jM" role="3clF45" />
        <node concept="3Tm6S6" id="3u5wJtf9jN" role="1B3o_S" />
        <node concept="3clFbS" id="3u5wJtf9jO" role="3clF47">
          <node concept="3clFbJ" id="3u5wJtfqSg" role="3cqZAp">
            <node concept="3clFbS" id="3u5wJtfqSh" role="3clFbx">
              <node concept="3clFbF" id="3u5wJtfqSi" role="3cqZAp">
                <node concept="1rXfSq" id="3u5wJtfqSj" role="3clFbG">
                  <ref role="37wK5l" node="3u5wJte1ac" resolve="stopTrackingChanges" />
                  <node concept="2OqwBi" id="4vBwiiVtSGj" role="37wK5m">
                    <node concept="2OqwBi" id="443LGHB64YC" role="2Oq$k0">
                      <node concept="37vLTw" id="3u5wJtfqSk" role="2Oq$k0">
                        <ref role="3cqZAo" node="4Z$O9mrQJ_R" resolve="unitRef" />
                      </node>
                      <node concept="liA8E" id="443LGHB65aW" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository):org.jetbrains.mps.openapi.model.SNode" resolve="resolve" />
                        <node concept="37vLTw" id="443LGHB65v9" role="37wK5m">
                          <ref role="3cqZAo" node="443LGHB63OW" resolve="repository" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="4vBwiiVtT4g" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getModel():org.jetbrains.mps.openapi.model.SModel" resolve="getModel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="3u5wJtfqSl" role="3clFbw">
              <node concept="3y3z36" id="3u5wJtfqSm" role="3uHU7w">
                <node concept="10Nm6u" id="3u5wJtfqSn" role="3uHU7w" />
                <node concept="37vLTw" id="3u5wJtfqSo" role="3uHU7B">
                  <ref role="3cqZAo" node="3u5wJtdXJF" resolve="changesTracker" />
                </node>
              </node>
              <node concept="3y3z36" id="3u5wJtfqSp" role="3uHU7B">
                <node concept="37vLTw" id="3u5wJtfqSq" role="3uHU7B">
                  <ref role="3cqZAo" node="4Z$O9mrQJ_R" resolve="unitRef" />
                </node>
                <node concept="10Nm6u" id="3u5wJtfqSr" role="3uHU7w" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4Z$O9mrT9o8" role="3cqZAp">
            <node concept="37vLTI" id="4Z$O9mrT9Mm" role="3clFbG">
              <node concept="10Nm6u" id="4Z$O9mrT9Pc" role="37vLTx" />
              <node concept="2OqwBi" id="4Z$O9mrT9vn" role="37vLTJ">
                <node concept="Xjq3P" id="4Z$O9mrT9o6" role="2Oq$k0" />
                <node concept="2OwXpG" id="4Z$O9mrT9_J" role="2OqNvi">
                  <ref role="2Oxat5" node="4Z$O9mrQJ_R" resolve="unitRef" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3u5wJtfcLz" role="jymVt" />
      <node concept="3clFb_" id="3u5wJtdQ7a" role="jymVt">
        <property role="TrG5h" value="startTrackingChanges" />
        <node concept="37vLTG" id="3u5wJtdRvH" role="3clF46">
          <property role="TrG5h" value="observable" />
          <node concept="H_c77" id="3u5wJtdRXN" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="3u5wJtdQ7c" role="3clF45" />
        <node concept="3Tm6S6" id="3u5wJtdQ7d" role="1B3o_S" />
        <node concept="3clFbS" id="3u5wJtdQ7e" role="3clF47">
          <node concept="3clFbF" id="3u5wJteamL" role="3cqZAp">
            <node concept="37vLTI" id="3u5wJtebaN" role="3clFbG">
              <node concept="2OqwBi" id="3u5wJtea$n" role="37vLTJ">
                <node concept="Xjq3P" id="3u5wJteamJ" role="2Oq$k0" />
                <node concept="2OwXpG" id="3u5wJteaPO" role="2OqNvi">
                  <ref role="2Oxat5" node="3u5wJtdXJF" resolve="changesTracker" />
                </node>
              </node>
              <node concept="2ShNRf" id="3u5wJtebs7" role="37vLTx">
                <node concept="HV5vD" id="3u5wJtebs8" role="2ShVmc">
                  <ref role="HV5vE" node="3u5wJtdJxb" resolve="TypecheckingCache.TypeCacheHolder.ChangesTracker" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3u5wJtdS0M" role="3cqZAp">
            <node concept="2OqwBi" id="3u5wJtdSDo" role="3clFbG">
              <node concept="2JrnkZ" id="3u5wJtdSzt" role="2Oq$k0">
                <node concept="37vLTw" id="3u5wJtdS0L" role="2JrQYb">
                  <ref role="3cqZAo" node="3u5wJtdRvH" resolve="observable" />
                </node>
              </node>
              <node concept="liA8E" id="3u5wJtdSJh" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.addChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener):void" resolve="addChangeListener" />
                <node concept="2OqwBi" id="3u5wJtdXJN" role="37wK5m">
                  <node concept="Xjq3P" id="3u5wJtdXJO" role="2Oq$k0" />
                  <node concept="2OwXpG" id="3u5wJtdXJP" role="2OqNvi">
                    <ref role="2Oxat5" node="3u5wJtdXJF" resolve="changesTracker" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3u5wJte0SB" role="3cqZAp">
            <node concept="2OqwBi" id="3u5wJte0SC" role="3clFbG">
              <node concept="2JrnkZ" id="3u5wJte0SD" role="2Oq$k0">
                <node concept="37vLTw" id="3u5wJte0SE" role="2JrQYb">
                  <ref role="3cqZAo" node="3u5wJtdRvH" resolve="observable" />
                </node>
              </node>
              <node concept="liA8E" id="3u5wJte0SF" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.addModelListener(org.jetbrains.mps.openapi.model.SModelListener):void" resolve="addModelListener" />
                <node concept="2OqwBi" id="3u5wJte0SG" role="37wK5m">
                  <node concept="Xjq3P" id="3u5wJte0SH" role="2Oq$k0" />
                  <node concept="2OwXpG" id="3u5wJte0SI" role="2OqNvi">
                    <ref role="2Oxat5" node="3u5wJtdXJF" resolve="changesTracker" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3u5wJte1Sx" role="jymVt" />
      <node concept="3clFb_" id="3u5wJte1ac" role="jymVt">
        <property role="TrG5h" value="stopTrackingChanges" />
        <node concept="37vLTG" id="3u5wJte1ad" role="3clF46">
          <property role="TrG5h" value="unit" />
          <node concept="H_c77" id="3u5wJte1ae" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="3u5wJte1af" role="3clF45" />
        <node concept="3Tm6S6" id="3u5wJte1ag" role="1B3o_S" />
        <node concept="3clFbS" id="3u5wJte1ah" role="3clF47">
          <node concept="3clFbF" id="3u5wJte1ai" role="3cqZAp">
            <node concept="2OqwBi" id="3u5wJte1aj" role="3clFbG">
              <node concept="2JrnkZ" id="3u5wJte1ak" role="2Oq$k0">
                <node concept="37vLTw" id="3u5wJte1al" role="2JrQYb">
                  <ref role="3cqZAo" node="3u5wJte1ad" resolve="unit" />
                </node>
              </node>
              <node concept="liA8E" id="3u5wJte1am" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.removeChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener):void" resolve="removeChangeListener" />
                <node concept="2OqwBi" id="3u5wJte1an" role="37wK5m">
                  <node concept="Xjq3P" id="3u5wJte1ao" role="2Oq$k0" />
                  <node concept="2OwXpG" id="3u5wJte1ap" role="2OqNvi">
                    <ref role="2Oxat5" node="3u5wJtdXJF" resolve="changesTracker" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3u5wJte1aq" role="3cqZAp">
            <node concept="2OqwBi" id="3u5wJte1ar" role="3clFbG">
              <node concept="2JrnkZ" id="3u5wJte1as" role="2Oq$k0">
                <node concept="37vLTw" id="3u5wJte1at" role="2JrQYb">
                  <ref role="3cqZAo" node="3u5wJte1ad" resolve="unit" />
                </node>
              </node>
              <node concept="liA8E" id="3u5wJte1au" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.removeModelListener(org.jetbrains.mps.openapi.model.SModelListener):void" resolve="removeModelListener" />
                <node concept="2OqwBi" id="3u5wJte1av" role="37wK5m">
                  <node concept="Xjq3P" id="3u5wJte1aw" role="2Oq$k0" />
                  <node concept="2OwXpG" id="3u5wJte1ax" role="2OqNvi">
                    <ref role="2Oxat5" node="3u5wJtdXJF" resolve="changesTracker" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3u5wJtebVE" role="3cqZAp">
            <node concept="37vLTI" id="3u5wJtecK5" role="3clFbG">
              <node concept="10Nm6u" id="3u5wJtecSP" role="37vLTx" />
              <node concept="2OqwBi" id="3u5wJtec9g" role="37vLTJ">
                <node concept="Xjq3P" id="3u5wJtebVC" role="2Oq$k0" />
                <node concept="2OwXpG" id="3u5wJtecqX" role="2OqNvi">
                  <ref role="2Oxat5" node="3u5wJtdXJF" resolve="changesTracker" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4Z$O9mrQJHh" role="jymVt" />
      <node concept="3clFb_" id="3u5wJteF$I" role="jymVt">
        <property role="TrG5h" value="invalidate" />
        <node concept="37vLTG" id="443LGHB6jqd" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="H_c77" id="443LGHB6kdn" role="1tU5fm" />
        </node>
        <node concept="3Tm6S6" id="3u5wJteF$J" role="1B3o_S" />
        <node concept="3cqZAl" id="3u5wJteF$K" role="3clF45" />
        <node concept="3clFbS" id="3u5wJteFyL" role="3clF47">
          <node concept="3clFbF" id="3u5wJteFyM" role="3cqZAp">
            <node concept="37vLTI" id="3u5wJteFyN" role="3clFbG">
              <node concept="3clFbT" id="3u5wJteFyO" role="37vLTx">
                <property role="3clFbU" value="false" />
              </node>
              <node concept="2OqwBi" id="7Mte5SKjCUy" role="37vLTJ">
                <node concept="Xjq3P" id="7Mte5SKjCVw" role="2Oq$k0" />
                <node concept="2OwXpG" id="7Mte5SKjCU_" role="2OqNvi">
                  <ref role="2Oxat5" node="3u5wJtdJ0w" resolve="upToDate" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="443LGHB6kFC" role="3cqZAp">
            <node concept="1rXfSq" id="443LGHB6kFA" role="3clFbG">
              <ref role="37wK5l" node="3u5wJte1ac" resolve="stopTrackingChanges" />
              <node concept="37vLTw" id="443LGHB6kY$" role="37wK5m">
                <ref role="3cqZAo" node="443LGHB6jqd" resolve="model" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="443LGHB5Tys" role="jymVt" />
      <node concept="312cEu" id="3u5wJtdJxb" role="jymVt">
        <property role="2bfB8j" value="true" />
        <property role="TrG5h" value="ChangesTracker" />
        <node concept="2tJIrI" id="3u5wJtdK2h" role="jymVt" />
        <node concept="3clFb_" id="3u5wJtdOBE" role="jymVt">
          <property role="1EzhhJ" value="false" />
          <property role="TrG5h" value="modelReplaced" />
          <property role="DiZV1" value="false" />
          <property role="od$2w" value="false" />
          <node concept="3Tm1VV" id="3u5wJtdOBF" role="1B3o_S" />
          <node concept="3cqZAl" id="3u5wJtdOBH" role="3clF45" />
          <node concept="37vLTG" id="3u5wJtdOBI" role="3clF46">
            <property role="TrG5h" value="model" />
            <node concept="H_c77" id="443LGHB5Ro2" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="3u5wJtdOBK" role="3clF47">
            <node concept="3clFbF" id="3u5wJteF$N" role="3cqZAp">
              <node concept="1rXfSq" id="3u5wJteF$M" role="3clFbG">
                <ref role="37wK5l" node="3u5wJteF$I" resolve="invalidate" />
                <node concept="37vLTw" id="443LGHB6mwJ" role="37wK5m">
                  <ref role="3cqZAo" node="3u5wJtdOBI" resolve="model" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="3u5wJtdOBL" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="3clFb_" id="3u5wJtdK2v" role="jymVt">
          <property role="1EzhhJ" value="false" />
          <property role="TrG5h" value="propertyChanged" />
          <property role="DiZV1" value="false" />
          <property role="od$2w" value="false" />
          <node concept="3Tm1VV" id="3u5wJtdK2w" role="1B3o_S" />
          <node concept="3cqZAl" id="3u5wJtdK2y" role="3clF45" />
          <node concept="37vLTG" id="3u5wJtdK2z" role="3clF46">
            <property role="TrG5h" value="event" />
            <node concept="3uibUv" id="3u5wJtdK2$" role="1tU5fm">
              <ref role="3uigEE" to="cmfw:~SPropertyChangeEvent" resolve="SPropertyChangeEvent" />
            </node>
          </node>
          <node concept="3clFbS" id="3u5wJtdK2A" role="3clF47">
            <node concept="3clFbF" id="3u5wJteF$S" role="3cqZAp">
              <node concept="1rXfSq" id="3u5wJteF$R" role="3clFbG">
                <ref role="37wK5l" node="3u5wJteF$I" resolve="invalidate" />
                <node concept="2OqwBi" id="3u5wJteF$O" role="37wK5m">
                  <node concept="37vLTw" id="443LGHB6nTZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="3u5wJtdK2z" resolve="event" />
                  </node>
                  <node concept="liA8E" id="3u5wJteF$Q" role="2OqNvi">
                    <ref role="37wK5l" to="cmfw:~SPropertyChangeEvent.getModel():org.jetbrains.mps.openapi.model.SModel" resolve="getModel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="3u5wJtdK2B" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="3clFb_" id="3u5wJtdK2F" role="jymVt">
          <property role="1EzhhJ" value="false" />
          <property role="TrG5h" value="referenceChanged" />
          <property role="DiZV1" value="false" />
          <property role="od$2w" value="false" />
          <node concept="3Tm1VV" id="3u5wJtdK2G" role="1B3o_S" />
          <node concept="3cqZAl" id="3u5wJtdK2I" role="3clF45" />
          <node concept="37vLTG" id="3u5wJtdK2J" role="3clF46">
            <property role="TrG5h" value="event" />
            <node concept="3uibUv" id="3u5wJtdK2K" role="1tU5fm">
              <ref role="3uigEE" to="cmfw:~SReferenceChangeEvent" resolve="SReferenceChangeEvent" />
            </node>
          </node>
          <node concept="3clFbS" id="3u5wJtdK2M" role="3clF47">
            <node concept="3clFbF" id="3u5wJteF$X" role="3cqZAp">
              <node concept="1rXfSq" id="3u5wJteF$W" role="3clFbG">
                <ref role="37wK5l" node="3u5wJteF$I" resolve="invalidate" />
                <node concept="2OqwBi" id="3u5wJteF$T" role="37wK5m">
                  <node concept="37vLTw" id="443LGHB6pin" role="2Oq$k0">
                    <ref role="3cqZAo" node="3u5wJtdK2J" resolve="event" />
                  </node>
                  <node concept="liA8E" id="3u5wJteF$V" role="2OqNvi">
                    <ref role="37wK5l" to="cmfw:~SReferenceChangeEvent.getModel():org.jetbrains.mps.openapi.model.SModel" resolve="getModel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="3u5wJtdK2N" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="3clFb_" id="3u5wJtdK2R" role="jymVt">
          <property role="1EzhhJ" value="false" />
          <property role="TrG5h" value="nodeAdded" />
          <property role="DiZV1" value="false" />
          <property role="od$2w" value="false" />
          <node concept="3Tm1VV" id="3u5wJtdK2S" role="1B3o_S" />
          <node concept="3cqZAl" id="3u5wJtdK2U" role="3clF45" />
          <node concept="37vLTG" id="3u5wJtdK2V" role="3clF46">
            <property role="TrG5h" value="event" />
            <node concept="3uibUv" id="3u5wJtdK2W" role="1tU5fm">
              <ref role="3uigEE" to="cmfw:~SNodeAddEvent" resolve="SNodeAddEvent" />
            </node>
          </node>
          <node concept="3clFbS" id="3u5wJtdK2Y" role="3clF47">
            <node concept="3clFbF" id="3u5wJteF_2" role="3cqZAp">
              <node concept="1rXfSq" id="3u5wJteF_1" role="3clFbG">
                <ref role="37wK5l" node="3u5wJteF$I" resolve="invalidate" />
                <node concept="2OqwBi" id="3u5wJteF$Y" role="37wK5m">
                  <node concept="37vLTw" id="443LGHB6qE8" role="2Oq$k0">
                    <ref role="3cqZAo" node="3u5wJtdK2V" resolve="event" />
                  </node>
                  <node concept="liA8E" id="3u5wJteF_0" role="2OqNvi">
                    <ref role="37wK5l" to="cmfw:~SNodeAddEvent.getModel():org.jetbrains.mps.openapi.model.SModel" resolve="getModel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="3u5wJtdK2Z" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="3clFb_" id="3u5wJtdK33" role="jymVt">
          <property role="1EzhhJ" value="false" />
          <property role="TrG5h" value="nodeRemoved" />
          <property role="DiZV1" value="false" />
          <property role="od$2w" value="false" />
          <node concept="3Tm1VV" id="3u5wJtdK34" role="1B3o_S" />
          <node concept="3cqZAl" id="3u5wJtdK36" role="3clF45" />
          <node concept="37vLTG" id="3u5wJtdK37" role="3clF46">
            <property role="TrG5h" value="event" />
            <node concept="3uibUv" id="3u5wJtdK38" role="1tU5fm">
              <ref role="3uigEE" to="cmfw:~SNodeRemoveEvent" resolve="SNodeRemoveEvent" />
            </node>
          </node>
          <node concept="3clFbS" id="3u5wJtdK3a" role="3clF47">
            <node concept="3clFbF" id="3u5wJteF_7" role="3cqZAp">
              <node concept="1rXfSq" id="3u5wJteF_6" role="3clFbG">
                <ref role="37wK5l" node="3u5wJteF$I" resolve="invalidate" />
                <node concept="2OqwBi" id="3u5wJteF_3" role="37wK5m">
                  <node concept="37vLTw" id="443LGHB6s1T" role="2Oq$k0">
                    <ref role="3cqZAo" node="3u5wJtdK37" resolve="event" />
                  </node>
                  <node concept="liA8E" id="3u5wJteF_5" role="2OqNvi">
                    <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.getModel():org.jetbrains.mps.openapi.model.SModel" resolve="getModel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="3u5wJtdK3b" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="2tJIrI" id="3u5wJtdPeJ" role="jymVt" />
        <node concept="3Tm6S6" id="443LGHBciBd" role="1B3o_S" />
        <node concept="3uibUv" id="3u5wJtdM0N" role="EKbjA">
          <ref role="3uigEE" to="mhbf:~SNodeChangeListener" resolve="SNodeChangeListener" />
        </node>
        <node concept="3uibUv" id="3u5wJtdOqg" role="1zkMxy">
          <ref role="3uigEE" to="mhbf:~SModelListenerBase" resolve="SModelListenerBase" />
        </node>
      </node>
      <node concept="2tJIrI" id="3u5wJtdI$n" role="jymVt" />
      <node concept="312cEg" id="3u5wJtdXJF" role="jymVt">
        <property role="TrG5h" value="changesTracker" />
        <node concept="3Tm6S6" id="3u5wJtdXJB" role="1B3o_S" />
        <node concept="3uibUv" id="3u5wJtdXJC" role="1tU5fm">
          <ref role="3uigEE" node="3u5wJtdJxb" resolve="TypecheckingCache.TypeCacheHolder.ChangesTracker" />
        </node>
      </node>
      <node concept="312cEg" id="3u5wJtdJ0w" role="jymVt">
        <property role="TrG5h" value="upToDate" />
        <node concept="3Tm6S6" id="3u5wJtdJ0x" role="1B3o_S" />
        <node concept="10P_77" id="3u5wJtdJrE" role="1tU5fm" />
        <node concept="3clFbT" id="3u5wJtdJtc" role="33vP2m">
          <property role="3clFbU" value="true" />
        </node>
      </node>
      <node concept="312cEg" id="4Z$O9mrQJ_R" role="jymVt">
        <property role="TrG5h" value="unitRef" />
        <node concept="3Tm6S6" id="4Z$O9mrQJ_S" role="1B3o_S" />
        <node concept="3uibUv" id="4vBwiiVtR7T" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="312cEg" id="4Z$O9mrQJ$h" role="jymVt">
        <property role="TrG5h" value="cache" />
        <node concept="3Tm6S6" id="4Z$O9mrQJ$i" role="1B3o_S" />
        <node concept="3uibUv" id="1FOQehxeuA4" role="1tU5fm">
          <ref role="3uigEE" to="tj24:6QH_LDtfe19" resolve="TypeCache" />
        </node>
      </node>
      <node concept="2tJIrI" id="4Z$O9mrQJzI" role="jymVt" />
      <node concept="3Tm6S6" id="4Z$O9mrQJy9" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4Z$O9mrQJqd" role="jymVt" />
    <node concept="Wx3nA" id="4Z$O9mrTGv9" role="jymVt">
      <property role="TrG5h" value="ourTypecheckings" />
      <node concept="2ShNRf" id="443LGHBoCbK" role="33vP2m">
        <node concept="1pGfFk" id="443LGHBoCbL" role="2ShVmc">
          <ref role="37wK5l" to="5zyv:~ConcurrentHashMap.&lt;init&gt;()" resolve="ConcurrentHashMap" />
          <node concept="3uibUv" id="443LGHBoCbM" role="1pMfVU">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
          <node concept="3uibUv" id="14$_tTxz2a0" role="1pMfVU">
            <ref role="3uigEE" node="4Z$O9mrQIzY" resolve="TypecheckingCache" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="443LGHBoCbN" role="1tU5fm">
        <ref role="3uigEE" to="5zyv:~ConcurrentMap" resolve="ConcurrentMap" />
        <node concept="3uibUv" id="443LGHBoCbO" role="11_B2D">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
        <node concept="3uibUv" id="14$_tTxyL2L" role="11_B2D">
          <ref role="3uigEE" node="4Z$O9mrQIzY" resolve="TypecheckingCache" />
        </node>
      </node>
      <node concept="3Tm6S6" id="4Z$O9mrTGvb" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="4Z$O9mrQIzZ" role="1B3o_S" />
    <node concept="2tJIrI" id="443LGHBDm_S" role="jymVt" />
    <node concept="312cEg" id="4Z$O9mrQIM1" role="jymVt">
      <property role="TrG5h" value="repository" />
      <node concept="3Tm6S6" id="4Z$O9mrQIM2" role="1B3o_S" />
      <node concept="3uibUv" id="4Z$O9mrQIM4" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
    </node>
    <node concept="312cEg" id="4Z$O9mrTa0z" role="jymVt">
      <property role="TrG5h" value="cacheHolders" />
      <node concept="3Tm6S6" id="4Z$O9mrTa0$" role="1B3o_S" />
      <node concept="3uibUv" id="7Mte5SKiAso" role="1tU5fm">
        <ref role="3uigEE" to="5zyv:~ConcurrentMap" resolve="ConcurrentMap" />
        <node concept="3uibUv" id="4vBwiiVtOUI" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
        <node concept="3uibUv" id="7Mte5SKiH3A" role="11_B2D">
          <ref role="3uigEE" node="4Z$O9mrQJw7" resolve="TypecheckingCache.TypeCacheHolder" />
        </node>
      </node>
      <node concept="2ShNRf" id="4Z$O9mrTa74" role="33vP2m">
        <node concept="1pGfFk" id="7Mte5SKiNfb" role="2ShVmc">
          <ref role="37wK5l" to="5zyv:~ConcurrentHashMap.&lt;init&gt;()" resolve="ConcurrentHashMap" />
          <node concept="3uibUv" id="4vBwiiVtPpx" role="1pMfVU">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
          <node concept="3uibUv" id="7Mte5SKiW8$" role="1pMfVU">
            <ref role="3uigEE" node="4Z$O9mrQJw7" resolve="TypecheckingCache.TypeCacheHolder" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4Z$O9mrQIUb" role="jymVt" />
    <node concept="3UR2Jj" id="443LGHBoAzB" role="lGtFl">
      <node concept="TZ5HA" id="443LGHBoAzC" role="TZ5H$">
        <node concept="1dT_AC" id="443LGHBoAzD" role="1dT_Ay">
          <property role="1dT_AB" value="A per-repository cache of types." />
        </node>
      </node>
      <node concept="TZ5HA" id="443LGHBoC1u" role="TZ5H$">
        <node concept="1dT_AC" id="443LGHBoC1v" role="1dT_Ay">
          <property role="1dT_AB" value="Implements changes tracking." />
        </node>
      </node>
      <node concept="TZ5HA" id="443LGHBoC1I" role="TZ5H$">
        <node concept="1dT_AC" id="443LGHBoC1J" role="1dT_Ay">
          <property role="1dT_AB" value="TODO: implement background update." />
        </node>
      </node>
    </node>
  </node>
  <node concept="2uRRBy" id="443LGHBoF4R">
    <property role="TrG5h" value="TypecheckingCacheLifecycle" />
    <property role="3GE5qa" value="lifecycle" />
    <node concept="2uRRBT" id="443LGHBoF4U" role="2uRRB$">
      <node concept="3clFbS" id="443LGHBoF4V" role="2VODD2">
        <node concept="3clFbF" id="443LGHBoGH8" role="3cqZAp">
          <node concept="2YIFZM" id="443LGHBoGIU" role="3clFbG">
            <ref role="37wK5l" node="4Z$O9mrQIG1" resolve="get" />
            <ref role="1Pybhc" node="4Z$O9mrQIzY" resolve="TypecheckingCache" />
            <node concept="2OqwBi" id="443LGHBoGJY" role="37wK5m">
              <node concept="1KvdUw" id="443LGHBoGJZ" role="2Oq$k0" />
              <node concept="liA8E" id="443LGHBoGK0" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="443LGHBoGMS" role="2uRRB_">
      <node concept="3clFbS" id="443LGHBoGMT" role="2VODD2">
        <node concept="3clFbF" id="443LGHBoGNh" role="3cqZAp">
          <node concept="2YIFZM" id="443LGHBoGQz" role="3clFbG">
            <ref role="37wK5l" node="14$_tTxAmT8" resolve="dispose" />
            <ref role="1Pybhc" node="4Z$O9mrQIzY" resolve="TypecheckingCache" />
            <node concept="2OqwBi" id="443LGHBoGQ$" role="37wK5m">
              <node concept="1KvdUw" id="443LGHBoGQ_" role="2Oq$k0" />
              <node concept="liA8E" id="443LGHBoGQA" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7Tj_ODDR37X">
    <property role="TrG5h" value="CoderulesTypecheckingProvider" />
    <node concept="2tJIrI" id="3LFq2p98DGJ" role="jymVt" />
    <node concept="3clFbW" id="3LFq2p98DNK" role="jymVt">
      <node concept="3cqZAl" id="3LFq2p98DNM" role="3clF45" />
      <node concept="3Tm1VV" id="3LFq2p98DNN" role="1B3o_S" />
      <node concept="3clFbS" id="3LFq2p98DNO" role="3clF47">
        <node concept="RRSsy" id="3LFq2p98DVg" role="3cqZAp">
          <property role="RRSoG" value="info" />
          <node concept="Xl_RD" id="3LFq2p98DVi" role="RRSoy">
            <property role="Xl_RC" value="*** Coderules INITIALIZED " />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5BwsbZJDRw1" role="jymVt" />
    <node concept="3clFb_" id="5BwsbZJDRzC" role="jymVt">
      <property role="TrG5h" value="isRelevant" />
      <node concept="3Tm1VV" id="5BwsbZJDRzD" role="1B3o_S" />
      <node concept="10P_77" id="5BwsbZJDRzF" role="3clF45" />
      <node concept="37vLTG" id="5BwsbZJDRzG" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="5BwsbZJDRzH" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="5BwsbZJDRzI" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5BwsbZJDRzJ" role="3clF46">
        <property role="TrG5h" value="node1" />
        <node concept="3uibUv" id="5BwsbZJDRzK" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="5BwsbZJDRzL" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="5BwsbZJDRzM" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        </node>
      </node>
      <node concept="3clFbS" id="5BwsbZJDRzN" role="3clF47">
        <node concept="3clFbF" id="5BwsbZJDRzQ" role="3cqZAp">
          <node concept="3clFbT" id="5BwsbZJDRzP" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5BwsbZJDRzO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5BwsbZJDRHw" role="jymVt" />
    <node concept="3clFb_" id="5BwsbZJDRzR" role="jymVt">
      <property role="TrG5h" value="newSession" />
      <node concept="3Tm1VV" id="5BwsbZJDRzS" role="1B3o_S" />
      <node concept="2AHcQZ" id="5BwsbZJDRzU" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="5BwsbZJDRzV" role="3clF45">
        <ref role="3uigEE" to="ev0w:~TypecheckingSession" resolve="TypecheckingSession" />
      </node>
      <node concept="37vLTG" id="5BwsbZJDRzW" role="3clF46">
        <property role="TrG5h" value="flags" />
        <node concept="3uibUv" id="5BwsbZJDRzX" role="1tU5fm">
          <ref role="3uigEE" to="ev0w:~TypecheckingSession$Flags" resolve="TypecheckingSession.Flags" />
        </node>
        <node concept="2AHcQZ" id="5BwsbZJDRzY" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5BwsbZJDRzZ" role="3clF47">
        <node concept="3SKdUt" id="5BwsbZJE0e4" role="3cqZAp">
          <node concept="3SKdUq" id="5BwsbZJE0e6" role="3SKWNk">
            <property role="3SKdUp" value="FIXME" />
          </node>
        </node>
        <node concept="YS8fn" id="5BwsbZJDTpI" role="3cqZAp">
          <node concept="2ShNRf" id="5BwsbZJDTqE" role="YScLw">
            <node concept="1pGfFk" id="5BwsbZJE086" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5BwsbZJDR$0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5BwsbZJE0el" role="jymVt" />
    <node concept="3clFb_" id="5BwsbZJDR$3" role="jymVt">
      <property role="TrG5h" value="closeSession" />
      <node concept="3Tm1VV" id="5BwsbZJDR$4" role="1B3o_S" />
      <node concept="3cqZAl" id="5BwsbZJDR$6" role="3clF45" />
      <node concept="37vLTG" id="5BwsbZJDR$7" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="5BwsbZJDR$8" role="1tU5fm">
          <ref role="3uigEE" to="ev0w:~TypecheckingSession" resolve="TypecheckingSession" />
        </node>
        <node concept="2AHcQZ" id="5BwsbZJDR$9" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5BwsbZJDR$a" role="3clF47">
        <node concept="3SKdUt" id="5BwsbZJE0V0" role="3cqZAp">
          <node concept="3SKdUq" id="5BwsbZJE0V2" role="3SKWNk">
            <property role="3SKdUp" value="FIXE" />
          </node>
        </node>
        <node concept="YS8fn" id="5BwsbZJE0lq" role="3cqZAp">
          <node concept="2ShNRf" id="5BwsbZJE0m1" role="YScLw">
            <node concept="1pGfFk" id="5BwsbZJE0OT" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5BwsbZJDR$b" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="312cEu" id="5BwsbZJE17w" role="jymVt">
      <property role="TrG5h" value="Session" />
      <node concept="2tJIrI" id="siuT5mm_XX" role="jymVt" />
      <node concept="3clFb_" id="siuT5mmA08" role="jymVt">
        <property role="TrG5h" value="getTypeOf" />
        <node concept="3Tm1VV" id="siuT5mmA09" role="1B3o_S" />
        <node concept="3uibUv" id="siuT5mmA0b" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="37vLTG" id="siuT5mmA0c" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="siuT5mmA0d" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3clFbS" id="siuT5mmA0f" role="3clF47">
          <node concept="3clFbF" id="siuT5mmA0i" role="3cqZAp">
            <node concept="10Nm6u" id="siuT5mmA0h" role="3clFbG" />
          </node>
        </node>
        <node concept="2AHcQZ" id="siuT5mmA0g" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="siuT5mmA0j" role="jymVt">
        <property role="TrG5h" value="convertsTo" />
        <node concept="3Tm1VV" id="siuT5mmA0k" role="1B3o_S" />
        <node concept="10P_77" id="siuT5mmA0m" role="3clF45" />
        <node concept="37vLTG" id="siuT5mmA0n" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="siuT5mmA0o" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="37vLTG" id="siuT5mmA0p" role="3clF46">
          <property role="TrG5h" value="node1" />
          <node concept="3uibUv" id="siuT5mmA0q" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3clFbS" id="siuT5mmA0s" role="3clF47">
          <node concept="3clFbF" id="siuT5mmA0v" role="3cqZAp">
            <node concept="3clFbT" id="siuT5mmA0u" role="3clFbG" />
          </node>
        </node>
        <node concept="2AHcQZ" id="siuT5mmA0t" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="siuT5mmA0w" role="jymVt">
        <property role="TrG5h" value="coerceType" />
        <node concept="3Tm1VV" id="siuT5mmA0x" role="1B3o_S" />
        <node concept="3uibUv" id="siuT5mmA0z" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="37vLTG" id="siuT5mmA0$" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="siuT5mmA0_" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="37vLTG" id="siuT5mmA0A" role="3clF46">
          <property role="TrG5h" value="concept" />
          <node concept="3uibUv" id="siuT5mmA0B" role="1tU5fm">
            <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
          </node>
        </node>
        <node concept="3clFbS" id="siuT5mmA0D" role="3clF47">
          <node concept="3clFbF" id="siuT5mmA0G" role="3cqZAp">
            <node concept="10Nm6u" id="siuT5mmA0F" role="3clFbG" />
          </node>
        </node>
        <node concept="2AHcQZ" id="siuT5mmA0E" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="hEDrw1P7L3" role="jymVt" />
      <node concept="3clFb_" id="hEDrw1P5LW" role="jymVt">
        <property role="TrG5h" value="coerceType" />
        <node concept="3Tm1VV" id="hEDrw1P5LX" role="1B3o_S" />
        <node concept="3uibUv" id="hEDrw1P5M0" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="37vLTG" id="hEDrw1P5M1" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="hEDrw1P5M2" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="37vLTG" id="hEDrw1P5M4" role="3clF46">
          <property role="TrG5h" value="pattern" />
          <node concept="3uibUv" id="hEDrw1P5M5" role="1tU5fm">
            <ref role="3uigEE" to="7jhi:~INodeMatchingPattern" resolve="INodeMatchingPattern" />
          </node>
          <node concept="2AHcQZ" id="hEDrw1P5M6" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="hEDrw1P5M8" role="3clF47">
          <node concept="3clFbF" id="hEDrw1P5Mb" role="3cqZAp">
            <node concept="10Nm6u" id="hEDrw1P5Ma" role="3clFbG" />
          </node>
        </node>
        <node concept="2AHcQZ" id="hEDrw1P5M9" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5BwsbZJE0Zx" role="jymVt" />
      <node concept="2tJIrI" id="5BwsbZJE1iq" role="jymVt" />
      <node concept="3Tm1VV" id="5BwsbZJE17x" role="1B3o_S" />
      <node concept="3uibUv" id="5BwsbZJE1gG" role="EKbjA">
        <ref role="3uigEE" to="ev0w:~TypecheckingSession" resolve="TypecheckingSession" />
      </node>
    </node>
    <node concept="2tJIrI" id="siuT5mmBCy" role="jymVt" />
    <node concept="3Tm1VV" id="7Tj_ODDR37Y" role="1B3o_S" />
    <node concept="3uibUv" id="3LFq2p98ihg" role="EKbjA">
      <ref role="3uigEE" to="ev0w:~TypecheckingProvider" resolve="TypecheckingProvider" />
    </node>
  </node>
  <node concept="2uRRBC" id="vVsDu9byFZ">
    <property role="3GE5qa" value="lifecycle" />
    <property role="TrG5h" value="TypecheckingProviderInit" />
    <node concept="2BZ0e9" id="7cQXRE6zO_k" role="2uRRBG">
      <property role="TrG5h" value="providerToken" />
      <node concept="3Tm6S6" id="7cQXRE6zO_l" role="1B3o_S" />
      <node concept="3uibUv" id="7cQXRE6zOG3" role="1tU5fm">
        <ref role="3uigEE" to="ev0w:~TypecheckingBackend$ProviderToken" resolve="TypecheckingBackend.ProviderToken" />
      </node>
      <node concept="10Nm6u" id="7cQXRE6zOGh" role="33vP2m" />
    </node>
    <node concept="2uRRBj" id="vVsDu9byG8" role="2uRRBE">
      <node concept="3clFbS" id="vVsDu9byG9" role="2VODD2">
        <node concept="3cpWs8" id="3LFq2p98mmp" role="3cqZAp">
          <node concept="3cpWsn" id="3LFq2p98mmq" role="3cpWs9">
            <property role="TrG5h" value="backend" />
            <node concept="3uibUv" id="3LFq2p98mmm" role="1tU5fm">
              <ref role="3uigEE" to="ev0w:~TypecheckingBackend" resolve="TypecheckingBackend" />
            </node>
            <node concept="2OqwBi" id="3LFq2p98mmr" role="33vP2m">
              <node concept="XUXob" id="3LFq2p98mms" role="2Oq$k0" />
              <node concept="liA8E" id="3LFq2p98mmt" role="2OqNvi">
                <ref role="37wK5l" to="wyuk:~ComponentHost.findComponent(java.lang.Class)" resolve="findComponent" />
                <node concept="3VsKOn" id="3LFq2p98mmu" role="37wK5m">
                  <ref role="3VsUkX" to="ev0w:~TypecheckingBackend" resolve="TypecheckingBackend" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3LFq2p98mt_" role="3cqZAp">
          <node concept="3clFbS" id="3LFq2p98mtB" role="3clFbx">
            <node concept="3clFbF" id="vVsDu9bz1N" role="3cqZAp">
              <node concept="37vLTI" id="7cQXRE6zOUc" role="3clFbG">
                <node concept="2OqwBi" id="3LFq2p98mKu" role="37vLTx">
                  <node concept="37vLTw" id="3LFq2p98mmv" role="2Oq$k0">
                    <ref role="3cqZAo" node="3LFq2p98mmq" resolve="backend" />
                  </node>
                  <node concept="liA8E" id="3LFq2p98p9v" role="2OqNvi">
                    <ref role="37wK5l" to="ev0w:~TypecheckingBackend.installProvider(jetbrains.mps.typechecking.backend.TypecheckingProvider,jetbrains.mps.typechecking.backend.TypecheckingBackend$ProviderLevel)" resolve="installProvider" />
                    <node concept="2ShNRf" id="3LFq2p98pcv" role="37wK5m">
                      <node concept="1pGfFk" id="7cQXRE6zO$E" role="2ShVmc">
                        <ref role="37wK5l" node="3LFq2p98DNK" resolve="CoderulesTypecheckingProvider" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="siuT5mnemS" role="37wK5m">
                      <node concept="1pGfFk" id="siuT5mnjyc" role="2ShVmc">
                        <ref role="37wK5l" node="siuT5mmS2P" resolve="CoderulesProviderLevel" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7cQXRE6zP9m" role="37vLTJ">
                  <node concept="2WthIp" id="7cQXRE6zP9p" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="7cQXRE6zP9r" role="2OqNvi">
                    <ref role="2WH_rO" node="7cQXRE6zO_k" resolve="providerToken" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3LFq2p98r7F" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="3LFq2p98mCZ" role="3clFbw">
            <node concept="10Nm6u" id="3LFq2p98mDx" role="3uHU7w" />
            <node concept="37vLTw" id="3LFq2p98mwt" role="3uHU7B">
              <ref role="3cqZAo" node="3LFq2p98mmq" resolve="backend" />
            </node>
          </node>
          <node concept="9aQIb" id="3LFq2p98r6e" role="9aQIa">
            <node concept="3clFbS" id="3LFq2p98r6f" role="9aQI4">
              <node concept="RRSsy" id="3LFq2p98rfn" role="3cqZAp">
                <property role="RRSoG" value="error" />
                <node concept="Xl_RD" id="3LFq2p98rfp" role="RRSoy">
                  <property role="Xl_RC" value="Coderules failed to initialize: TypecheckingBackend component not found" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="3LFq2p98rrf" role="2uRRBF">
      <node concept="3clFbS" id="3LFq2p98rrg" role="2VODD2">
        <node concept="3clFbF" id="7cQXRE6zPjl" role="3cqZAp">
          <node concept="2OqwBi" id="7cQXRE6zPBU" role="3clFbG">
            <node concept="2OqwBi" id="7cQXRE6zPjf" role="2Oq$k0">
              <node concept="2WthIp" id="7cQXRE6zPji" role="2Oq$k0" />
              <node concept="2BZ7hE" id="7cQXRE6zPjk" role="2OqNvi">
                <ref role="2WH_rO" node="7cQXRE6zO_k" resolve="providerToken" />
              </node>
            </node>
            <node concept="liA8E" id="7cQXRE6zQ8v" role="2OqNvi">
              <ref role="37wK5l" to="ev0w:~TypecheckingBackend$ProviderToken.uninstall()" resolve="uninstall" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7cQXRE6zQgm" role="3cqZAp">
          <node concept="37vLTI" id="7cQXRE6zQ$E" role="3clFbG">
            <node concept="10Nm6u" id="7cQXRE6zQ_p" role="37vLTx" />
            <node concept="2OqwBi" id="7cQXRE6zQgg" role="37vLTJ">
              <node concept="2WthIp" id="7cQXRE6zQgj" role="2Oq$k0" />
              <node concept="2BZ7hE" id="7cQXRE6zQgl" role="2OqNvi">
                <ref role="2WH_rO" node="7cQXRE6zO_k" resolve="providerToken" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="siuT5mmCnU">
    <property role="TrG5h" value="CoderulesProviderLevel" />
    <property role="1EXbeo" value="true" />
    <node concept="2tJIrI" id="siuT5mmF3e" role="jymVt" />
    <node concept="Wx3nA" id="siuT5mmFgw" role="jymVt">
      <property role="TrG5h" value="TYPECHECKING_CODERULES" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="siuT5mmEPA" role="1tU5fm" />
      <node concept="3Tm6S6" id="siuT5mmEP_" role="1B3o_S" />
      <node concept="Xl_RD" id="siuT5mmEPB" role="33vP2m">
        <property role="Xl_RC" value="jetbrains.mps.typechecking.coderules" />
      </node>
    </node>
    <node concept="2tJIrI" id="siuT5mmZWY" role="jymVt" />
    <node concept="Wx3nA" id="siuT5mmZ4J" role="jymVt">
      <property role="TrG5h" value="TYPECHECKING_DEFAULT" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="siuT5mmZ4K" role="1tU5fm" />
      <node concept="3Tm6S6" id="siuT5mmZ4L" role="1B3o_S" />
      <node concept="Xl_RD" id="siuT5mmZ4M" role="33vP2m">
        <property role="Xl_RC" value="jetbrains.mps.typechecking.default" />
      </node>
    </node>
    <node concept="2tJIrI" id="siuT5mmCrl" role="jymVt" />
    <node concept="3clFbW" id="siuT5mmS2P" role="jymVt">
      <node concept="3cqZAl" id="siuT5mmS2R" role="3clF45" />
      <node concept="3Tmbuc" id="siuT5mmT8o" role="1B3o_S" />
      <node concept="3clFbS" id="siuT5mmS2T" role="3clF47">
        <node concept="3SKdUt" id="siuT5mmUs1" role="3cqZAp">
          <node concept="3SKdUq" id="siuT5mmUs2" role="3SKWNk">
            <property role="3SKdUp" value="available to the local package only" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="siuT5mmTj6" role="jymVt" />
    <node concept="3clFb_" id="siuT5mmCrR" role="jymVt">
      <property role="TrG5h" value="getLevelID" />
      <node concept="3Tm1VV" id="siuT5mmCrS" role="1B3o_S" />
      <node concept="17QB3L" id="siuT5mmHif" role="3clF45" />
      <node concept="3clFbS" id="siuT5mmCrV" role="3clF47">
        <node concept="3clFbF" id="siuT5mmFQe" role="3cqZAp">
          <node concept="37vLTw" id="siuT5mmFQc" role="3clFbG">
            <ref role="3cqZAo" node="siuT5mmFgw" resolve="TYPECHECKING_CODERULES" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="siuT5mmCrW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="siuT5mmCZD" role="jymVt" />
    <node concept="3clFb_" id="siuT5mmCrZ" role="jymVt">
      <property role="TrG5h" value="compareTo" />
      <node concept="3Tm1VV" id="siuT5mmCs0" role="1B3o_S" />
      <node concept="10Oyi0" id="siuT5mmCs2" role="3clF45" />
      <node concept="37vLTG" id="siuT5mmCs3" role="3clF46">
        <property role="TrG5h" value="that" />
        <node concept="3uibUv" id="siuT5mmCs7" role="1tU5fm">
          <ref role="3uigEE" to="ev0w:~TypecheckingBackend$ProviderLevel" resolve="TypecheckingBackend.ProviderLevel" />
        </node>
      </node>
      <node concept="3clFbS" id="siuT5mmCs8" role="3clF47">
        <node concept="3clFbJ" id="siuT5mn6k6" role="3cqZAp">
          <node concept="3clFbS" id="siuT5mn6k8" role="3clFbx">
            <node concept="3cpWs6" id="siuT5mnazL" role="3cqZAp">
              <node concept="3cmrfG" id="siuT5mna$o" role="3cqZAk">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="siuT5mn7Mr" role="3clFbw">
            <node concept="37vLTw" id="siuT5mn7kn" role="2Oq$k0">
              <ref role="3cqZAo" node="siuT5mmFgw" resolve="TYPECHECKING_CODERULES" />
            </node>
            <node concept="liA8E" id="siuT5mn91i" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="siuT5mn9wE" role="37wK5m">
                <node concept="37vLTw" id="siuT5mn92$" role="2Oq$k0">
                  <ref role="3cqZAo" node="siuT5mmCs3" resolve="that" />
                </node>
                <node concept="liA8E" id="siuT5mnajq" role="2OqNvi">
                  <ref role="37wK5l" to="ev0w:~TypecheckingBackend$ProviderLevel.getLevelID()" resolve="getLevelID" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="siuT5mmUwP" role="3cqZAp">
          <node concept="3clFbS" id="siuT5mmUwR" role="3clFbx">
            <node concept="3cpWs6" id="siuT5mn3pW" role="3cqZAp">
              <node concept="3cmrfG" id="siuT5mn4_K" role="3cqZAk">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="siuT5mn0WF" role="3clFbw">
            <node concept="37vLTw" id="siuT5mn0wk" role="2Oq$k0">
              <ref role="3cqZAo" node="siuT5mmZ4J" resolve="TYPECHECKING_DEFAULT" />
            </node>
            <node concept="liA8E" id="siuT5mn29P" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="siuT5mn2n3" role="37wK5m">
                <node concept="37vLTw" id="siuT5mn2aZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="siuT5mmCs3" resolve="that" />
                </node>
                <node concept="liA8E" id="siuT5mn39J" role="2OqNvi">
                  <ref role="37wK5l" to="ev0w:~TypecheckingBackend$ProviderLevel.getLevelID()" resolve="getLevelID" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="siuT5mndzv" role="3cqZAp">
          <node concept="3SKdUq" id="siuT5mndzx" role="3SKWNk">
            <property role="3SKdUp" value="all others are going to have lower priority" />
          </node>
        </node>
        <node concept="3cpWs6" id="siuT5mnbcc" role="3cqZAp">
          <node concept="3cmrfG" id="siuT5mnbLf" role="3cqZAk">
            <property role="3cmrfH" value="-1" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="siuT5mmCs9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="siuT5mmCxF" role="jymVt" />
    <node concept="3clFb_" id="siuT5mmCAx" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="3Tm1VV" id="siuT5mmCAy" role="1B3o_S" />
      <node concept="10Oyi0" id="siuT5mmCA$" role="3clF45" />
      <node concept="3clFbS" id="siuT5mmCAB" role="3clF47">
        <node concept="3cpWs6" id="siuT5mmKLa" role="3cqZAp">
          <node concept="3cpWs3" id="siuT5mmKLb" role="3cqZAk">
            <node concept="17qRlL" id="siuT5mmKLc" role="3uHU7B">
              <node concept="2OqwBi" id="siuT5mmKLd" role="3uHU7B">
                <node concept="1rXfSq" id="siuT5mmKLe" role="2Oq$k0">
                  <ref role="37wK5l" node="siuT5mmCrR" resolve="getLevelID" />
                </node>
                <node concept="liA8E" id="siuT5mmKLf" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.hashCode()" resolve="hashCode" />
                </node>
              </node>
              <node concept="3cmrfG" id="siuT5mmKLg" role="3uHU7w">
                <property role="3cmrfH" value="43" />
              </node>
            </node>
            <node concept="3cmrfG" id="siuT5mmKLh" role="3uHU7w">
              <property role="3cmrfH" value="23" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="siuT5mmCAC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="siuT5mmHuz" role="jymVt" />
    <node concept="3clFb_" id="siuT5mmCAF" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="3Tm1VV" id="siuT5mmCAG" role="1B3o_S" />
      <node concept="10P_77" id="siuT5mmCAI" role="3clF45" />
      <node concept="37vLTG" id="siuT5mmCAJ" role="3clF46">
        <property role="TrG5h" value="that" />
        <node concept="3uibUv" id="siuT5mmCAK" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="siuT5mmCAN" role="3clF47">
        <node concept="3clFbF" id="siuT5mmMsw" role="3cqZAp">
          <node concept="1Wc70l" id="siuT5mmMUD" role="3clFbG">
            <node concept="2OqwBi" id="siuT5mmOkR" role="3uHU7w">
              <node concept="2OqwBi" id="siuT5mmNlK" role="2Oq$k0">
                <node concept="37vLTw" id="siuT5mmN6h" role="2Oq$k0">
                  <ref role="3cqZAo" node="siuT5mmCAJ" resolve="that" />
                </node>
                <node concept="liA8E" id="siuT5mmNOV" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="liA8E" id="siuT5mmQmp" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                <node concept="3VsKOn" id="siuT5mmR62" role="37wK5m">
                  <ref role="3VsUkX" node="siuT5mmCnU" resolve="CoderulesProviderLevel" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="siuT5mmMF5" role="3uHU7B">
              <node concept="37vLTw" id="siuT5mmMsv" role="3uHU7B">
                <ref role="3cqZAo" node="siuT5mmCAJ" resolve="that" />
              </node>
              <node concept="10Nm6u" id="siuT5mmMQp" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="siuT5mmCAO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="siuT5mmCro" role="jymVt" />
    <node concept="3Tm1VV" id="siuT5mmCnV" role="1B3o_S" />
    <node concept="3uibUv" id="siuT5mmCr1" role="EKbjA">
      <ref role="3uigEE" to="ev0w:~TypecheckingBackend$ProviderLevel" resolve="TypecheckingBackend.ProviderLevel" />
    </node>
  </node>
</model>

