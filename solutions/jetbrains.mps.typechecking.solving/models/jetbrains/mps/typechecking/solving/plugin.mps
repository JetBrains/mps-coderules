<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:84132b64-f016-4d74-841e-1cb5a3e376db(jetbrains.mps.typechecking.solving.plugin)" doNotGenerate="true">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="2" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
  </languages>
  <imports>
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="t5kh" ref="r:1514c681-0724-461e-a435-315a6af4b3b4(jetbrains.mps.lang.typesystem2.sampleplugin.plugin)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="hfuk" ref="r:b25dd364-bc3f-4a66-97d1-262009610c5e(jetbrains.mps.make)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="uppo" ref="r:77ff4d4c-e26b-430c-a8b1-608d25264261(jetbrains.mps.typechecking.solving.solver)" />
    <import index="9kr0" ref="r:0f58be42-48ea-45ab-99f8-158393a0f526(jetbrains.mps.typechecking.handler.producer)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="ekwn" ref="r:9832fb5f-2578-4b58-8014-a5de79da988e(jetbrains.mps.ide.editor.actions)" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.typesystem2.template)" />
    <import index="qrld" ref="r:2a79c8aa-e372-4c00-8d71-5d7f3db517e4(jetbrains.mps.logic.reactor.evaluation)" />
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.logic.atom)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="kqnc" ref="r:92b96158-68e6-4f53-a32b-36e2b456fe01(jetbrains.mps.lang.typesystem2.samplechecker.template)" />
    <import index="yt73" ref="7526e0cf-1ce7-46f8-a555-9eca1e06c23b/java:jetbrains.mps.unification(jetbrains.mps.logic.atom/)" />
    <import index="rchb" ref="r:f43ee4a0-488a-425a-87a0-594ab3b0d15f(jetbrains.mps.logic.reactor.program)" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1207318242772" name="jetbrains.mps.lang.plugin.structure.KeyMapKeystroke" flags="ng" index="pLAjd">
        <property id="1207318242773" name="modifiers" index="pLAjc" />
        <property id="1207318242774" name="keycode" index="pLAjf" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1211298967294" name="outsideCommandExecution" index="72QZ$" />
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1204992316090" name="point" index="2f8Tey" />
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="1562714432501166198" name="jetbrains.mps.lang.plugin.structure.SimpleShortcutChange" flags="lg" index="Zd509">
        <child id="1562714432501166206" name="keystroke" index="Zd501" />
      </concept>
      <concept id="1562714432501166197" name="jetbrains.mps.lang.plugin.structure.KeymapChangesDeclaration" flags="ng" index="Zd50a">
        <child id="1562714432501166199" name="shortcutChange" index="Zd508" />
      </concept>
      <concept id="6193305307616715384" name="jetbrains.mps.lang.plugin.structure.ShortcutChange" flags="lg" index="1bYyw_">
        <reference id="6193305307616734326" name="action" index="1bYAoF" />
      </concept>
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
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
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
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
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
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
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="1423104411234567454" name="repo" index="ukAjM" />
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348177" name="jetbrains.mps.lang.access.structure.ExecuteCommandStatement" flags="nn" index="1QHqEO" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp">
        <reference id="1218736638915" name="classifier" index="32nkFo" />
      </concept>
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1167227138527" name="jetbrains.mps.baseLanguage.logging.structure.LogStatement" flags="nn" index="34ab3g">
        <property id="1167228628751" name="hasException" index="34fQS0" />
        <property id="1167245565795" name="severity" index="35gtTG" />
        <child id="1167227463056" name="logExpression" index="34bqiv" />
        <child id="1167227561449" name="exception" index="34bMjA" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="597763930871270009" name="jetbrains.mps.lang.smodel.structure.ChildNodeRefExpression" flags="nn" index="3fl2lp">
        <reference id="597763930871272016" name="targetNode" index="3fl3PK" />
        <child id="597763930871272014" name="parent" index="3fl3PI" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1219352745532" name="jetbrains.mps.lang.smodel.structure.NodeRefExpression" flags="nn" index="3B5_sB">
        <reference id="1219352800908" name="referentNode" index="3B5MYn" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="sE7Ow" id="1isQzel$a0H">
    <property role="TrG5h" value="MarkTypesOnTheFly" />
    <property role="2uzpH1" value="Mark Types on the Fly" />
    <property role="72QZ$" value="true" />
    <node concept="2ScWuX" id="1isQzel$a0I" role="tmbBb">
      <node concept="3clFbS" id="1isQzel$a0J" role="2VODD2">
        <node concept="3cpWs8" id="1isQzel$a0W" role="3cqZAp">
          <node concept="3cpWsn" id="1isQzel$a0X" role="3cpWs9">
            <property role="TrG5h" value="containingRoot" />
            <node concept="3Tqbb2" id="1isQzel$a0Y" role="1tU5fm" />
            <node concept="2OqwBi" id="1isQzel$a0Z" role="33vP2m">
              <node concept="2OqwBi" id="1isQzel$a10" role="2Oq$k0">
                <node concept="2WthIp" id="1isQzel$a11" role="2Oq$k0" />
                <node concept="1DTwFV" id="1isQzel$a12" role="2OqNvi">
                  <ref role="2WH_rO" node="1isQzel$a2Z" resolve="node" />
                </node>
              </node>
              <node concept="liA8E" id="1isQzel$a13" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getContainingRoot():org.jetbrains.mps.openapi.model.SNode" resolve="getContainingRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1isQzel$a14" role="3cqZAp">
          <node concept="1Wc70l" id="1isQzel$a15" role="3clFbG">
            <node concept="1Wc70l" id="1isQzel$a16" role="3uHU7B">
              <node concept="3clFbC" id="1isQzel$a17" role="3uHU7w">
                <node concept="37vLTw" id="1isQzel$a18" role="3uHU7B">
                  <ref role="3cqZAo" node="1isQzel$a0X" resolve="containingRoot" />
                </node>
                <node concept="2OqwBi" id="1isQzel$a19" role="3uHU7w">
                  <node concept="2OqwBi" id="1isQzel$a1a" role="2Oq$k0">
                    <node concept="2WthIp" id="1isQzel$a1b" role="2Oq$k0" />
                    <node concept="1DTwFV" id="1isQzel$a1c" role="2OqNvi">
                      <ref role="2WH_rO" node="1isQzel$a31" resolve="editorComponent" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1isQzel$a1d" role="2OqNvi">
                    <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode():org.jetbrains.mps.openapi.model.SNode" resolve="getEditedNode" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1isQzel$a1e" role="3uHU7B">
                <node concept="37vLTw" id="1isQzel$a1f" role="2Oq$k0">
                  <ref role="3cqZAo" node="1isQzel$a0X" resolve="containingRoot" />
                </node>
                <node concept="1mIQ4w" id="1isQzel$a1g" role="2OqNvi">
                  <node concept="chp4Y" id="1isQzel$a1h" role="cj9EA">
                    <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="1isQzel$a1i" role="3uHU7w">
              <node concept="2OqwBi" id="1isQzel$a1j" role="3fr31v">
                <node concept="2YIFZM" id="1isQzel$a1k" role="2Oq$k0">
                  <ref role="1Pybhc" to="hfuk:7yGn3z4MRqM" resolve="IMakeService.INSTANCE" />
                  <ref role="37wK5l" to="hfuk:7yGn3z4MRr2" resolve="get" />
                </node>
                <node concept="liA8E" id="1isQzel$a1l" role="2OqNvi">
                  <ref role="37wK5l" to="hfuk:7yGn3z4N64o" resolve="isSessionActive" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tnohg" id="1isQzel$a1p" role="tncku">
      <node concept="3clFbS" id="1isQzel$a1q" role="2VODD2">
        <node concept="3clFbF" id="1isQzel$a1r" role="3cqZAp">
          <node concept="2YIFZM" id="1isQzel$a1s" role="3clFbG">
            <ref role="37wK5l" to="t5kh:41ox5VnrNu5" resolve="clearAll" />
            <ref role="1Pybhc" to="t5kh:41ox5VnpFrR" resolve="MarkTypesAndErrors" />
            <node concept="2OqwBi" id="1isQzel$a1t" role="37wK5m">
              <node concept="2WthIp" id="1isQzel$a1u" role="2Oq$k0" />
              <node concept="1DTwFV" id="1isQzel$a1v" role="2OqNvi">
                <ref role="2WH_rO" node="1isQzel$a31" resolve="editorComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1isQzel$a1w" role="3cqZAp" />
        <node concept="3cpWs8" id="1isQzel$a1x" role="3cqZAp">
          <node concept="3cpWsn" id="1isQzel$a1y" role="3cpWs9">
            <property role="TrG5h" value="helper" />
            <node concept="3uibUv" id="1isQzelBs5w" role="1tU5fm">
              <ref role="3uigEE" node="1isQzel_J8z" resolve="TypeHelper" />
            </node>
            <node concept="2ShNRf" id="1isQzel$a1$" role="33vP2m">
              <node concept="YeOm9" id="1isQzel$a1_" role="2ShVmc">
                <node concept="1Y3b0j" id="1isQzel$a1A" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" node="1isQzel_J8z" resolve="TypeHelper" />
                  <ref role="37wK5l" node="1isQzel_YBx" resolve="TypeHelper" />
                  <node concept="2OqwBi" id="1isQzel$a1B" role="37wK5m">
                    <node concept="2WthIp" id="1isQzel$a1C" role="2Oq$k0">
                      <ref role="32nkFo" node="1isQzel$a0H" resolve="MarkTypesOnTheFly" />
                    </node>
                    <node concept="1DTwFV" id="1isQzel$a1D" role="2OqNvi">
                      <ref role="2WH_rO" node="1isQzel$a2X" resolve="mpsProject" />
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="1isQzel$a1E" role="1B3o_S" />
                  <node concept="3clFb_" id="1isQzel$a1F" role="jymVt">
                    <property role="TrG5h" value="finished" />
                    <property role="1EzhhJ" value="false" />
                    <property role="IEkAT" value="false" />
                    <node concept="37vLTG" id="1isQzel$a1G" role="3clF46">
                      <property role="TrG5h" value="message" />
                      <node concept="17QB3L" id="1isQzel$a1H" role="1tU5fm" />
                    </node>
                    <node concept="3cqZAl" id="1isQzel$a1I" role="3clF45" />
                    <node concept="3Tm1VV" id="1isQzel$a1J" role="1B3o_S" />
                    <node concept="3clFbS" id="1isQzel$a1K" role="3clF47">
                      <node concept="3clFbF" id="1isQzel$a1L" role="3cqZAp">
                        <node concept="2YIFZM" id="1isQzel$a1M" role="3clFbG">
                          <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                          <ref role="37wK5l" to="jkm4:~Messages.showInfoMessage(java.lang.String,java.lang.String):void" resolve="showInfoMessage" />
                          <node concept="37vLTw" id="1isQzel$a1N" role="37wK5m">
                            <ref role="3cqZAo" node="1isQzel$a1G" resolve="message" />
                          </node>
                          <node concept="Xl_RD" id="1isQzel$a1O" role="37wK5m">
                            <property role="Xl_RC" value="Mark Types" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFb_" id="1isQzel$a1P" role="jymVt">
                    <property role="TrG5h" value="failed" />
                    <property role="1EzhhJ" value="false" />
                    <node concept="37vLTG" id="1isQzel$a1Q" role="3clF46">
                      <property role="TrG5h" value="message" />
                      <node concept="17QB3L" id="1isQzel$a1R" role="1tU5fm" />
                    </node>
                    <node concept="3cqZAl" id="1isQzel$a1S" role="3clF45" />
                    <node concept="3Tm1VV" id="1isQzel$a1T" role="1B3o_S" />
                    <node concept="3clFbS" id="1isQzel$a1U" role="3clF47">
                      <node concept="3clFbF" id="1isQzel$a1V" role="3cqZAp">
                        <node concept="2YIFZM" id="1isQzel$a1W" role="3clFbG">
                          <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                          <ref role="37wK5l" to="jkm4:~Messages.showWarningDialog(java.lang.String,java.lang.String):void" resolve="showWarningDialog" />
                          <node concept="37vLTw" id="1isQzel$a1X" role="37wK5m">
                            <ref role="3cqZAo" node="1isQzel$a1Q" resolve="message" />
                          </node>
                          <node concept="Xl_RD" id="1isQzel$a1Y" role="37wK5m">
                            <property role="Xl_RC" value="Mark Types" />
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
        <node concept="3clFbF" id="1isQzel$a21" role="3cqZAp">
          <node concept="2OqwBi" id="1isQzel$a22" role="3clFbG">
            <node concept="37vLTw" id="1isQzel$a23" role="2Oq$k0">
              <ref role="3cqZAo" node="1isQzel$a1y" resolve="helper" />
            </node>
            <node concept="liA8E" id="1isQzel$a24" role="2OqNvi">
              <ref role="37wK5l" to="t5kh:1pPth$lNtBJ" resolve="withSteps" />
              <node concept="2OqwBi" id="1isQzel$a25" role="37wK5m">
                <node concept="37vLTw" id="1isQzel$a26" role="2Oq$k0">
                  <ref role="3cqZAo" node="1isQzel$a1y" resolve="helper" />
                </node>
                <node concept="liA8E" id="1isQzel$a27" role="2OqNvi">
                  <ref role="37wK5l" to="t5kh:1pPth$lBvOo" resolve="collectRules" />
                  <node concept="2YIFZM" id="1isQzel$a28" role="37wK5m">
                    <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                    <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                    <node concept="2OqwBi" id="1isQzel$a29" role="37wK5m">
                      <node concept="2WthIp" id="1isQzel$a2a" role="2Oq$k0" />
                      <node concept="1DTwFV" id="1isQzel$a2b" role="2OqNvi">
                        <ref role="2WH_rO" node="1isQzel$a2Z" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1isQzel$a2c" role="37wK5m">
                <node concept="37vLTw" id="1isQzel$a2d" role="2Oq$k0">
                  <ref role="3cqZAo" node="1isQzel$a1y" resolve="helper" />
                </node>
                <node concept="liA8E" id="1isQzel$a2e" role="2OqNvi">
                  <ref role="37wK5l" node="4pWvZ2nlC2q" resolve="solveOnTheFly" />
                </node>
              </node>
              <node concept="2OqwBi" id="1isQzel$a2f" role="37wK5m">
                <node concept="37vLTw" id="1isQzel$a2g" role="2Oq$k0">
                  <ref role="3cqZAo" node="1isQzel$a1y" resolve="helper" />
                </node>
                <node concept="liA8E" id="1isQzel$a2h" role="2OqNvi">
                  <ref role="37wK5l" to="t5kh:1pPth$lDplP" resolve="highlightTypesAndErrors" />
                  <node concept="2OqwBi" id="1isQzel$a2i" role="37wK5m">
                    <node concept="2WthIp" id="1isQzel$a2j" role="2Oq$k0" />
                    <node concept="1DTwFV" id="1isQzel$a2k" role="2OqNvi">
                      <ref role="2WH_rO" node="1isQzel$a31" resolve="editorComponent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1isQzel$a2S" role="3cqZAp" />
        <node concept="3clFbF" id="1isQzel$a2T" role="3cqZAp">
          <node concept="2OqwBi" id="1isQzel$a2U" role="3clFbG">
            <node concept="37vLTw" id="1isQzel$a2V" role="2Oq$k0">
              <ref role="3cqZAo" node="1isQzel$a1y" resolve="helper" />
            </node>
            <node concept="liA8E" id="1isQzel$a2W" role="2OqNvi">
              <ref role="37wK5l" to="t5kh:1pPth$lNVW2" resolve="execute" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="1isQzel$a2X" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="1isQzel$a2Y" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="1isQzel$a2Z" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.NODE" resolve="NODE" />
      <node concept="1oajcY" id="1isQzel$a30" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="1isQzel$a31" role="1NuT2Z">
      <property role="TrG5h" value="editorComponent" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="1isQzel$a32" role="1oa70y" />
    </node>
  </node>
  <node concept="312cEu" id="1isQzel_J8z">
    <property role="TrG5h" value="TypeHelper" />
    <property role="1sVAO0" value="true" />
    <node concept="312cEg" id="1isQzelA5U_" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <node concept="3Tm6S6" id="1isQzelA5UA" role="1B3o_S" />
      <node concept="3uibUv" id="1isQzelA6f2" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="3clFbW" id="1isQzel_YBx" role="jymVt">
      <node concept="3cqZAl" id="1isQzel_YBy" role="3clF45" />
      <node concept="3Tm1VV" id="1isQzel_YBz" role="1B3o_S" />
      <node concept="3clFbS" id="1isQzel_YB_" role="3clF47">
        <node concept="XkiVB" id="1isQzel_YBB" role="3cqZAp">
          <ref role="37wK5l" to="t5kh:1pPth$lK1ZL" resolve="TypecheckingHelper" />
          <node concept="37vLTw" id="1isQzel_YBF" role="37wK5m">
            <ref role="3cqZAo" node="1isQzel_YBC" resolve="mpsProject" />
          </node>
        </node>
        <node concept="3clFbF" id="1isQzelA6kG" role="3cqZAp">
          <node concept="37vLTI" id="1isQzelA6q7" role="3clFbG">
            <node concept="37vLTw" id="1isQzelA6tu" role="37vLTx">
              <ref role="3cqZAo" node="1isQzel_YBC" resolve="mpsProject" />
            </node>
            <node concept="37vLTw" id="1isQzelA75z" role="37vLTJ">
              <ref role="3cqZAo" node="1isQzelA5U_" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1isQzel_YBC" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="1isQzel_YBE" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1isQzel_YnS" role="jymVt" />
    <node concept="3clFb_" id="4pWvZ2nlC2q" role="jymVt">
      <property role="TrG5h" value="solveOnTheFly" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="4pWvZ2nlC2r" role="3clF47">
        <node concept="3clFbF" id="4pWvZ2nlC2s" role="3cqZAp">
          <node concept="2ShNRf" id="4pWvZ2nlC2t" role="3clFbG">
            <node concept="HV5vD" id="4pWvZ2nm0jK" role="2ShVmc">
              <ref role="HV5vE" node="4pWvZ2nh4h1" resolve="TypeHelper.SolveOnTheFly" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4pWvZ2nlC2v" role="3clF45">
        <ref role="3uigEE" to="t5kh:1pPth$lAzAx" resolve="TypecheckingHelper.Step" />
      </node>
      <node concept="3Tm1VV" id="4pWvZ2nlC2w" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1isQzel_J8R" role="jymVt" />
    <node concept="3Tm1VV" id="1isQzel_J8$" role="1B3o_S" />
    <node concept="312cEu" id="4pWvZ2nh4h1" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="SolveOnTheFly" />
      <node concept="3clFb_" id="4pWvZ2nh4h2" role="jymVt">
        <property role="TrG5h" value="info" />
        <property role="1EzhhJ" value="false" />
        <node concept="17QB3L" id="4pWvZ2nh4h3" role="3clF45" />
        <node concept="3Tmbuc" id="4pWvZ2nh4h4" role="1B3o_S" />
        <node concept="3clFbS" id="4pWvZ2nh4h5" role="3clF47">
          <node concept="3clFbF" id="4pWvZ2nh4h6" role="3cqZAp">
            <node concept="Xl_RD" id="4pWvZ2nh4h7" role="3clFbG">
              <property role="Xl_RC" value="solving rules" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="4pWvZ2nh4h8" role="jymVt">
        <property role="TrG5h" value="execute" />
        <property role="1EzhhJ" value="false" />
        <node concept="37vLTG" id="4pWvZ2nh4h9" role="3clF46">
          <property role="TrG5h" value="prev" />
          <node concept="3uibUv" id="4pWvZ2nh4ha" role="1tU5fm">
            <ref role="3uigEE" to="t5kh:1pPth$lAwc0" resolve="TypecheckingHelper.CollectRules" />
          </node>
        </node>
        <node concept="3cqZAl" id="4pWvZ2nh4hb" role="3clF45" />
        <node concept="3Tm1VV" id="4pWvZ2nh4hc" role="1B3o_S" />
        <node concept="3clFbS" id="4pWvZ2nh4hd" role="3clF47">
          <node concept="3clFbH" id="4pWvZ2nh4he" role="3cqZAp" />
          <node concept="3cpWs8" id="4pWvZ2nh4hf" role="3cqZAp">
            <node concept="3cpWsn" id="4pWvZ2nh4hg" role="3cpWs9">
              <property role="TrG5h" value="errors" />
              <node concept="10Oyi0" id="4pWvZ2nh4hh" role="1tU5fm" />
              <node concept="3cmrfG" id="4pWvZ2nh4hi" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="1QHqEO" id="4pWvZ2nh4hj" role="3cqZAp">
            <node concept="1QHqEC" id="4pWvZ2nh4hk" role="1QHqEI">
              <node concept="3clFbS" id="4pWvZ2nh4hl" role="1bW5cS">
                <node concept="SfApY" id="4pWvZ2nh4hp" role="3cqZAp">
                  <node concept="3clFbS" id="4pWvZ2nh4hq" role="SfCbr">
                    <node concept="3cpWs8" id="4pWvZ2nh4hr" role="3cqZAp">
                      <node concept="3cpWsn" id="4pWvZ2nh4hs" role="3cpWs9">
                        <property role="TrG5h" value="tracer" />
                        <node concept="3uibUv" id="4pWvZ2nh4ht" role="1tU5fm">
                          <ref role="3uigEE" to="t5kh:4i4XGQZlbGA" resolve="MessageViewTracer" />
                        </node>
                        <node concept="2YIFZM" id="4pWvZ2nh4hu" role="33vP2m">
                          <ref role="1Pybhc" to="t5kh:4i4XGQZlbGA" resolve="MessageViewTracer" />
                          <ref role="37wK5l" to="t5kh:4i4XGQZmHHg" resolve="get" />
                          <node concept="2OqwBi" id="4pWvZ2nh4hv" role="37wK5m">
                            <node concept="37vLTw" id="1isQzelA9JY" role="2Oq$k0">
                              <ref role="3cqZAo" node="1isQzelA5U_" resolve="myProject" />
                            </node>
                            <node concept="liA8E" id="4pWvZ2nh4hz" role="2OqNvi">
                              <ref role="37wK5l" to="z1c3:~MPSProject.getProject():com.intellij.openapi.project.Project" resolve="getProject" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="4pWvZ2nh4h$" role="3cqZAp">
                      <node concept="2OqwBi" id="4pWvZ2nh4h_" role="3clFbG">
                        <node concept="37vLTw" id="4pWvZ2nh4hA" role="2Oq$k0">
                          <ref role="3cqZAo" node="4pWvZ2nh4hs" resolve="tracer" />
                        </node>
                        <node concept="liA8E" id="4pWvZ2nh4hB" role="2OqNvi">
                          <ref role="37wK5l" to="t5kh:61vfVfp5zwA" resolve="showEvents" />
                          <node concept="Rm8GO" id="1XX620Laz_K" role="37wK5m">
                            <ref role="Rm8GQ" to="t5kh:61vfVfp5uMw" resolve="TRIGGERED" />
                            <ref role="1Px2BO" to="t5kh:61vfVfp5tJN" resolve="MessageViewTracer.Event" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="1XX620Laxg$" role="3cqZAp" />
                    <node concept="3cpWs8" id="1XX620LaxZm" role="3cqZAp">
                      <node concept="3cpWsn" id="3Qp4N06byjA" role="3cpWs9">
                        <property role="TrG5h" value="manifest" />
                        <node concept="3uibUv" id="3Qp4N06byjB" role="1tU5fm">
                          <ref role="3uigEE" to="i348:4OKkcnfu_xe" resolve="AbstractRuleTemplateManifest" />
                        </node>
                        <node concept="2YIFZM" id="3Qp4N06byjC" role="33vP2m">
                          <ref role="1Pybhc" to="t5kh:3Qp4N06byjn" resolve="CollectRuleTemplates" />
                          <ref role="37wK5l" to="t5kh:3Qp4N06bynQ" resolve="getRuleManifest" />
                          <node concept="2OqwBi" id="1pPth$lGtu2" role="37wK5m">
                            <node concept="Xjq3P" id="1pPth$lGtu3" role="2Oq$k0">
                              <ref role="1HBi2w" node="1isQzel_J8z" resolve="TypeHelper" />
                            </node>
                            <node concept="liA8E" id="1pPth$lGtu4" role="2OqNvi">
                              <ref role="37wK5l" to="t5kh:1pPth$lA58k" resolve="templatesModel" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="4pWvZ2nh4hD" role="3cqZAp" />
                    <node concept="1DcWWT" id="4pWvZ2nh4hE" role="3cqZAp">
                      <node concept="3clFbS" id="4pWvZ2nh4hF" role="2LFqv$">
                        <node concept="3cpWs8" id="4pWvZ2nhNEK" role="3cqZAp">
                          <node concept="3cpWsn" id="4pWvZ2nhNEL" role="3cpWs9">
                            <property role="TrG5h" value="solver" />
                            <node concept="3uibUv" id="4pWvZ2nhNEC" role="1tU5fm">
                              <ref role="3uigEE" to="uppo:4pWvZ2n32be" resolve="ChrSolver" />
                            </node>
                            <node concept="2ShNRf" id="4pWvZ2nhNEM" role="33vP2m">
                              <node concept="1pGfFk" id="4pWvZ2nhNEN" role="2ShVmc">
                                <ref role="37wK5l" to="uppo:4pWvZ2n32bg" resolve="ChrSolver" />
                                <node concept="37vLTw" id="4pWvZ2nhNEO" role="37wK5m">
                                  <ref role="3cqZAo" node="4pWvZ2nh4hX" resolve="rh" />
                                </node>
                                <node concept="2OqwBi" id="1XX620La_lB" role="37wK5m">
                                  <node concept="37vLTw" id="1XX620La_48" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3Qp4N06byjA" resolve="manifest" />
                                  </node>
                                  <node concept="liA8E" id="1XX620La_C$" role="2OqNvi">
                                    <ref role="37wK5l" to="i348:1ggxSI7z1S5" resolve="javaExpressionSolver" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="4pWvZ2nhNEP" role="37wK5m">
                                  <ref role="3cqZAo" node="4pWvZ2nh4hs" resolve="tracer" />
                                </node>
                                <node concept="37vLTw" id="5DGJruk3LLv" role="37wK5m">
                                  <ref role="3cqZAo" node="4pWvZ2nh4hs" resolve="tracer" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="4pWvZ2nh4hG" role="3cqZAp">
                          <node concept="2OqwBi" id="4pWvZ2nh4hH" role="3clFbG">
                            <node concept="37vLTw" id="4pWvZ2nhNEQ" role="2Oq$k0">
                              <ref role="3cqZAo" node="4pWvZ2nhNEL" resolve="solver" />
                            </node>
                            <node concept="liA8E" id="4pWvZ2nh4hM" role="2OqNvi">
                              <ref role="37wK5l" to="uppo:4pWvZ2n3zcY" resolve="solve" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="4pWvZ2nFe3L" role="3cqZAp">
                          <node concept="3cpWsn" id="4pWvZ2nFe3M" role="3cpWs9">
                            <property role="TrG5h" value="formatter" />
                            <node concept="3uibUv" id="4pWvZ2nFe3B" role="1tU5fm">
                              <ref role="3uigEE" node="4pWvZ2nEi3p" resolve="RunTypeRules.OnTheFlyTypeFormatter" />
                            </node>
                            <node concept="2ShNRf" id="4pWvZ2nFe3N" role="33vP2m">
                              <node concept="1pGfFk" id="4pWvZ2nFe3O" role="2ShVmc">
                                <ref role="37wK5l" node="4pWvZ2nEi3v" resolve="RunTypeRules.OnTheFlyTypeFormatter" />
                                <node concept="37vLTw" id="4pWvZ2nFe3P" role="37wK5m">
                                  <ref role="3cqZAo" node="4pWvZ2nhNEL" resolve="solver" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="4pWvZ2nFizm" role="3cqZAp">
                          <node concept="2OqwBi" id="4pWvZ2nFjmW" role="3clFbG">
                            <node concept="37vLTw" id="4pWvZ2nFizk" role="2Oq$k0">
                              <ref role="3cqZAo" node="4pWvZ2nFe3M" resolve="formatter" />
                            </node>
                            <node concept="liA8E" id="4pWvZ2nFk8R" role="2OqNvi">
                              <ref role="37wK5l" node="4pWvZ2oeTmh" resolve="initialize" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="4pWvZ2nFm5W" role="3cqZAp">
                          <node concept="2OqwBi" id="4pWvZ2nFmTN" role="3clFbG">
                            <node concept="37vLTw" id="4pWvZ2nFm5U" role="2Oq$k0">
                              <ref role="3cqZAo" node="4pWvZ2nFe3M" resolve="formatter" />
                            </node>
                            <node concept="liA8E" id="4pWvZ2nFnGf" role="2OqNvi">
                              <ref role="37wK5l" node="4pWvZ2nHiCQ" resolve="collectTypes" />
                              <node concept="37vLTw" id="4pWvZ2nFp$4" role="37wK5m">
                                <ref role="3cqZAo" node="4pWvZ2nhPRH" resolve="nodeId2Type" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWsn" id="4pWvZ2nh4hX" role="1Duv9x">
                        <property role="TrG5h" value="rh" />
                        <node concept="3uibUv" id="65oL76bX6ve" role="1tU5fm">
                          <ref role="3uigEE" to="rchb:5uFPQ7BvNzE" resolve="Program" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4pWvZ2nh4hZ" role="1DdaDG">
                        <node concept="37vLTw" id="4pWvZ2nh4i0" role="2Oq$k0">
                          <ref role="3cqZAo" node="4pWvZ2nh4h9" resolve="prev" />
                        </node>
                        <node concept="liA8E" id="1isQzelAbCY" role="2OqNvi">
                          <ref role="37wK5l" to="t5kh:1isQzelAao_" resolve="getPrograms" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="TDmWw" id="4pWvZ2nh4i2" role="TEbGg">
                    <node concept="3cpWsn" id="4pWvZ2nh4i3" role="TDEfY">
                      <property role="TrG5h" value="ex" />
                      <node concept="3uibUv" id="4pWvZ2nh4i4" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="4pWvZ2nh4i5" role="TDEfX">
                      <node concept="34ab3g" id="4pWvZ2nh4i6" role="3cqZAp">
                        <property role="35gtTG" value="error" />
                        <property role="34fQS0" value="true" />
                        <node concept="Xl_RD" id="4pWvZ2nh4i7" role="34bqiv">
                          <property role="Xl_RC" value="exception during rules solving" />
                        </node>
                        <node concept="37vLTw" id="4pWvZ2nh4i8" role="34bMjA">
                          <ref role="3cqZAo" node="4pWvZ2nh4i3" resolve="ex" />
                        </node>
                      </node>
                      <node concept="3clFbF" id="4pWvZ2nh4i9" role="3cqZAp">
                        <node concept="d57v9" id="4pWvZ2nh4ia" role="3clFbG">
                          <node concept="3cmrfG" id="4pWvZ2nh4ib" role="37vLTx">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="37vLTw" id="4pWvZ2nh4ic" role="37vLTJ">
                            <ref role="3cqZAo" node="4pWvZ2nh4hg" resolve="errors" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4pWvZ2nh4ii" role="ukAjM">
              <node concept="37vLTw" id="1isQzelA7wX" role="2Oq$k0">
                <ref role="3cqZAo" node="1isQzelA5U_" resolve="myProject" />
              </node>
              <node concept="liA8E" id="4pWvZ2nh4im" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4pWvZ2nh4in" role="3cqZAp" />
          <node concept="3clFbF" id="4pWvZ2nh4io" role="3cqZAp">
            <node concept="1rXfSq" id="4pWvZ2nh4ip" role="3clFbG">
              <ref role="37wK5l" to="t5kh:7dgRGU4Nmfr" resolve="done" />
              <node concept="3clFbC" id="4pWvZ2nh4iq" role="37wK5m">
                <node concept="37vLTw" id="4pWvZ2nh4ir" role="3uHU7B">
                  <ref role="3cqZAo" node="4pWvZ2nh4hg" resolve="errors" />
                </node>
                <node concept="3cmrfG" id="4pWvZ2nh4is" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4pWvZ2nl1_m" role="jymVt" />
      <node concept="3clFb_" id="4pWvZ2nl0ck" role="jymVt">
        <property role="TrG5h" value="getTypes" />
        <node concept="3rvAFt" id="4pWvZ2nl0cl" role="3clF45">
          <node concept="17QB3L" id="4pWvZ2nl0cm" role="3rvSg0" />
          <node concept="17QB3L" id="4pWvZ2nl0cn" role="3rvQeY" />
        </node>
        <node concept="3Tm1VV" id="4pWvZ2nl0co" role="1B3o_S" />
        <node concept="3clFbS" id="4pWvZ2nl0cp" role="3clF47">
          <node concept="3clFbF" id="4pWvZ2nl0cq" role="3cqZAp">
            <node concept="37vLTw" id="4pWvZ2nl348" role="3clFbG">
              <ref role="3cqZAo" node="4pWvZ2nhPRH" resolve="nodeId2Type" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="4pWvZ2nl0cs" role="jymVt">
        <property role="TrG5h" value="getErrors" />
        <node concept="3rvAFt" id="4pWvZ2nl0ct" role="3clF45">
          <node concept="17QB3L" id="4pWvZ2nl0cu" role="3rvSg0" />
          <node concept="17QB3L" id="4pWvZ2nl0cv" role="3rvQeY" />
        </node>
        <node concept="3Tm1VV" id="4pWvZ2nl0cw" role="1B3o_S" />
        <node concept="3clFbS" id="4pWvZ2nl0cx" role="3clF47">
          <node concept="3clFbF" id="4pWvZ2nl50m" role="3cqZAp">
            <node concept="2ShNRf" id="4pWvZ2nl50g" role="3clFbG">
              <node concept="3rGOSV" id="4pWvZ2nl6Sw" role="2ShVmc">
                <node concept="17QB3L" id="4pWvZ2nl8u0" role="3rHrn6" />
                <node concept="17QB3L" id="4pWvZ2nl90e" role="3rHtpV" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4pWvZ2nkYHW" role="jymVt" />
      <node concept="2tJIrI" id="4pWvZ2nkZmq" role="jymVt" />
      <node concept="312cEg" id="4pWvZ2nhPRH" role="jymVt">
        <property role="TrG5h" value="nodeId2Type" />
        <node concept="3Tm1VV" id="4pWvZ2nhQSk" role="1B3o_S" />
        <node concept="3rvAFt" id="4pWvZ2niiaW" role="1tU5fm">
          <node concept="17QB3L" id="4pWvZ2niKl8" role="3rvSg0" />
          <node concept="17QB3L" id="4pWvZ2niK6w" role="3rvQeY" />
        </node>
        <node concept="2ShNRf" id="4pWvZ2niKH3" role="33vP2m">
          <node concept="3rGOSV" id="4pWvZ2niKCD" role="2ShVmc">
            <node concept="17QB3L" id="4pWvZ2niKCE" role="3rHrn6" />
            <node concept="17QB3L" id="4pWvZ2niKCF" role="3rHtpV" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4pWvZ2nh4it" role="1B3o_S" />
      <node concept="3uibUv" id="4pWvZ2nh4iu" role="1zkMxy">
        <ref role="3uigEE" to="t5kh:4pWvZ2nk_q3" resolve="TypecheckingHelper.RunSolver" />
        <node concept="3uibUv" id="4pWvZ2nh4iv" role="11_B2D">
          <ref role="3uigEE" to="t5kh:1pPth$lAwc0" resolve="TypecheckingHelper.CollectRules" />
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="1isQzel_Y9H" role="1zkMxy">
      <ref role="3uigEE" to="t5kh:1pPth$l_TFV" resolve="TypecheckingHelper" />
    </node>
  </node>
  <node concept="tC5Ba" id="1isQzelBtMo">
    <property role="TrG5h" value="MarkOnTheFlyGroup" />
    <node concept="ftmFs" id="1isQzelBtMp" role="ftER_">
      <node concept="tCFHf" id="1isQzelBtTB" role="ftvYc">
        <ref role="tCJdB" node="1isQzel$a0H" resolve="MarkTypesOnTheFly" />
      </node>
    </node>
    <node concept="tT9cl" id="1isQzelBtMs" role="2f5YQi">
      <ref role="tU$_T" to="t5kh:2Rw7mr8T72C" resolve="TypecheckingEditorGroup" />
      <ref role="2f8Tey" to="t5kh:1isQzelDXbq" resolve="markTypes" />
    </node>
  </node>
  <node concept="2DaZZR" id="1isQzelCzgh" />
  <node concept="312cEu" id="1isQzelCAbH">
    <property role="TrG5h" value="RunTypeRules" />
    <node concept="3Tm1VV" id="1isQzelCAbI" role="1B3o_S" />
    <node concept="312cEu" id="4pWvZ2nEi3p" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="OnTheFlyTypeFormatter" />
      <node concept="312cEg" id="4pWvZ2nEnUY" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="solver" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="4pWvZ2nEnGh" role="1B3o_S" />
        <node concept="3uibUv" id="4pWvZ2nEnUy" role="1tU5fm">
          <ref role="3uigEE" to="uppo:4pWvZ2n32be" resolve="ChrSolver" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4pWvZ2nEi3t" role="1B3o_S" />
      <node concept="3uibUv" id="4pWvZ2nEi3u" role="1zkMxy">
        <ref role="3uigEE" to="t5kh:4pWvZ2nDCbU" resolve="RunTypecheckingRules.AbstractFormatter" />
      </node>
      <node concept="3clFbW" id="4pWvZ2nEi3v" role="jymVt">
        <node concept="3cqZAl" id="4pWvZ2nEi3w" role="3clF45" />
        <node concept="3Tm1VV" id="4pWvZ2nEi3x" role="1B3o_S" />
        <node concept="3clFbS" id="4pWvZ2nEi3y" role="3clF47">
          <node concept="3clFbF" id="4pWvZ2nEi3z" role="3cqZAp">
            <node concept="37vLTI" id="4pWvZ2nEi3$" role="3clFbG">
              <node concept="2OqwBi" id="4pWvZ2nEi3_" role="37vLTJ">
                <node concept="Xjq3P" id="4pWvZ2nEi3A" role="2Oq$k0" />
                <node concept="2OwXpG" id="4pWvZ2nEnZh" role="2OqNvi">
                  <ref role="2Oxat5" node="4pWvZ2nEnUY" resolve="solver" />
                </node>
              </node>
              <node concept="37vLTw" id="4pWvZ2nEi3C" role="37vLTx">
                <ref role="3cqZAo" node="4pWvZ2nEi3D" resolve="solver" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4pWvZ2nEi3D" role="3clF46">
          <property role="TrG5h" value="solver" />
          <node concept="3uibUv" id="4pWvZ2nEnrg" role="1tU5fm">
            <ref role="3uigEE" to="uppo:4pWvZ2n32be" resolve="ChrSolver" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="4pWvZ2nEi3F" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getConstraintOccurrences" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3Tmbuc" id="4pWvZ2nEi3G" role="1B3o_S" />
        <node concept="A3Dl8" id="4pWvZ2nEi3H" role="3clF45">
          <node concept="3uibUv" id="4pWvZ2nEq5W" role="A3Ik2">
            <ref role="3uigEE" to="rchb:5uFPQ7B$Pn9" resolve="AndItem" />
          </node>
        </node>
        <node concept="3clFbS" id="4pWvZ2nEi3J" role="3clF47">
          <node concept="3clFbF" id="4pWvZ2nEi3K" role="3cqZAp">
            <node concept="2OqwBi" id="4pWvZ2nEotf" role="3clFbG">
              <node concept="2OqwBi" id="4pWvZ2nEi3L" role="2Oq$k0">
                <node concept="37vLTw" id="4pWvZ2nEoaU" role="2Oq$k0">
                  <ref role="3cqZAo" node="4pWvZ2nEnUY" resolve="solver" />
                </node>
                <node concept="2OwXpG" id="4pWvZ2nEofS" role="2OqNvi">
                  <ref role="2Oxat5" to="uppo:4pWvZ2nh_ow" resolve="constraintsPool" />
                </node>
              </node>
              <node concept="3$u5V9" id="4pWvZ2nEoKy" role="2OqNvi">
                <node concept="1bVj0M" id="4pWvZ2nEoK$" role="23t8la">
                  <node concept="37vLTG" id="4pWvZ2nExzm" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="4pWvZ2nEy1M" role="1tU5fm">
                      <ref role="3uigEE" to="uppo:4pWvZ2n8$0$" resolve="ChrSolver.ConstraintOccurence" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="4pWvZ2nEoK_" role="1bW5cS">
                    <node concept="3clFbF" id="4pWvZ2nEpg1" role="3cqZAp">
                      <node concept="2ShNRf" id="4pWvZ2nEwtE" role="3clFbG">
                        <node concept="YeOm9" id="4pWvZ2nExeM" role="2ShVmc">
                          <node concept="1Y3b0j" id="4pWvZ2nExeP" role="YeSDq">
                            <property role="2bfB8j" value="true" />
                            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                            <ref role="1Y3XeK" to="rchb:5uFPQ7B$Pn9" resolve="AndItem" />
                            <node concept="3Tm1VV" id="4pWvZ2nExeQ" role="1B3o_S" />
                            <node concept="3clFb_" id="4pWvZ2nExeR" role="jymVt">
                              <property role="1EzhhJ" value="false" />
                              <property role="TrG5h" value="symbol" />
                              <node concept="3uibUv" id="4pWvZ2nExeS" role="3clF45">
                                <ref role="3uigEE" to="rchb:5uFPQ7B$mzX" resolve="Symbol" />
                              </node>
                              <node concept="3Tm1VV" id="4pWvZ2nExeT" role="1B3o_S" />
                              <node concept="3clFbS" id="4pWvZ2nExeV" role="3clF47">
                                <node concept="3clFbF" id="4pWvZ2nEz7B" role="3cqZAp">
                                  <node concept="1eOMI4" id="4pWvZ2nE$2x" role="3clFbG">
                                    <node concept="10QFUN" id="4pWvZ2nE$2y" role="1eOMHV">
                                      <node concept="2OqwBi" id="4pWvZ2nE$2s" role="10QFUP">
                                        <node concept="2OqwBi" id="4pWvZ2nE$2t" role="2Oq$k0">
                                          <node concept="37vLTw" id="4pWvZ2nE$2u" role="2Oq$k0">
                                            <ref role="3cqZAo" node="4pWvZ2nExzm" resolve="it" />
                                          </node>
                                          <node concept="2OwXpG" id="4pWvZ2nE$2v" role="2OqNvi">
                                            <ref role="2Oxat5" to="uppo:4pWvZ2n8$8b" resolve="myConstraint" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="4pWvZ2nE$2w" role="2OqNvi">
                                          <ref role="37wK5l" to="yt73:~Term.symbol():java.lang.Object" resolve="symbol" />
                                        </node>
                                      </node>
                                      <node concept="3uibUv" id="4pWvZ2nE$o3" role="10QFUM">
                                        <ref role="3uigEE" to="rchb:5uFPQ7B$mzX" resolve="Symbol" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFb_" id="4pWvZ2nExeX" role="jymVt">
                              <property role="1EzhhJ" value="false" />
                              <property role="TrG5h" value="arguments" />
                              <node concept="3Tm1VV" id="4pWvZ2nExf0" role="1B3o_S" />
                              <node concept="3clFbS" id="4pWvZ2nExf2" role="3clF47">
                                <node concept="3cpWs8" id="4pWvZ2nEDAM" role="3cqZAp">
                                  <node concept="3cpWsn" id="4pWvZ2nEDAN" role="3cpWs9">
                                    <property role="TrG5h" value="arguments" />
                                    <node concept="A3Dl8" id="4pWvZ2nEEqZ" role="1tU5fm">
                                      <node concept="3qUE_q" id="4pWvZ2nEEr1" role="A3Ik2">
                                        <node concept="3uibUv" id="4pWvZ2nEEr2" role="3qUE_r">
                                          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="4pWvZ2nEDAO" role="33vP2m">
                                      <node concept="2OqwBi" id="4pWvZ2nEDAP" role="2Oq$k0">
                                        <node concept="37vLTw" id="4pWvZ2nEDAQ" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4pWvZ2nExzm" resolve="it" />
                                        </node>
                                        <node concept="2OwXpG" id="4pWvZ2nEDAR" role="2OqNvi">
                                          <ref role="2Oxat5" to="uppo:4pWvZ2n8$8b" resolve="myConstraint" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="4pWvZ2nEDAS" role="2OqNvi">
                                        <ref role="37wK5l" to="yt73:~Term.arguments():java.util.Collection" resolve="arguments" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="4pWvZ2nE_jw" role="3cqZAp">
                                  <node concept="2ShNRf" id="4pWvZ2nEAac" role="3clFbG">
                                    <node concept="Tc6Ow" id="4pWvZ2nEB8a" role="2ShVmc">
                                      <node concept="3uibUv" id="4pWvZ2nECLr" role="HW$YZ">
                                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                      </node>
                                      <node concept="37vLTw" id="4pWvZ2nEDAT" role="I$8f6">
                                        <ref role="3cqZAo" node="4pWvZ2nEDAN" resolve="arguments" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3uibUv" id="7HUwyZaBHhW" role="3clF45">
                                <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                                <node concept="3qTvmN" id="7HUwyZaBHwS" role="11_B2D" />
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
      <node concept="3clFb_" id="4pWvZ2nHiCQ" role="jymVt">
        <property role="TrG5h" value="collectTypes" />
        <property role="1EzhhJ" value="false" />
        <node concept="3cqZAl" id="4pWvZ2nHiCR" role="3clF45" />
        <node concept="3Tm1VV" id="4pWvZ2nHiCS" role="1B3o_S" />
        <node concept="37vLTG" id="4pWvZ2nHiDD" role="3clF46">
          <property role="TrG5h" value="nodeId2Type" />
          <node concept="3uibUv" id="4pWvZ2nHiDE" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
            <node concept="17QB3L" id="4pWvZ2nHiDF" role="11_B2D" />
            <node concept="17QB3L" id="4pWvZ2nHiDG" role="11_B2D" />
          </node>
        </node>
        <node concept="3clFbS" id="4pWvZ2nHiDH" role="3clF47">
          <node concept="1DcWWT" id="4pWvZ2nHjxJ" role="3cqZAp">
            <node concept="3clFbS" id="4pWvZ2nHjxK" role="2LFqv$">
              <node concept="3cpWs8" id="7HUwyZaH$GO" role="3cqZAp">
                <node concept="3cpWsn" id="7HUwyZaH$GP" role="3cpWs9">
                  <property role="TrG5h" value="arguments" />
                  <node concept="3uibUv" id="7HUwyZaH$GK" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="7HUwyZaH_hb" role="11_B2D">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="7HUwyZaMDQC" role="33vP2m">
                    <node concept="1pGfFk" id="7HUwyZaMEmX" role="2ShVmc">
                      <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(java.util.Collection)" resolve="ArrayList" />
                      <node concept="10QFUN" id="7HUwyZaHFE6" role="37wK5m">
                        <node concept="3uibUv" id="7HUwyZaHFE1" role="10QFUM">
                          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                          <node concept="3uibUv" id="7HUwyZaHFE2" role="11_B2D">
                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="7HUwyZaHFE3" role="10QFUP">
                          <node concept="37vLTw" id="7HUwyZaHFE4" role="2Oq$k0">
                            <ref role="3cqZAo" node="4pWvZ2nHjyr" resolve="co" />
                          </node>
                          <node concept="liA8E" id="7HUwyZaHFE5" role="2OqNvi">
                            <ref role="37wK5l" to="rchb:5uFPQ7B_b06" resolve="arguments" />
                          </node>
                        </node>
                      </node>
                      <node concept="3uibUv" id="7HUwyZaMEx9" role="1pMfVU">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7HUwyZaMDrX" role="3cqZAp" />
              <node concept="3clFbJ" id="4pWvZ2nHjxL" role="3cqZAp">
                <node concept="3clFbS" id="4pWvZ2nHjxM" role="3clFbx">
                  <node concept="3cpWs8" id="4pWvZ2nHjxN" role="3cqZAp">
                    <node concept="3cpWsn" id="4pWvZ2nHjxO" role="3cpWs9">
                      <property role="TrG5h" value="type" />
                      <node concept="3uibUv" id="4pWvZ2nHkdB" role="1tU5fm">
                        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                      </node>
                      <node concept="10QFUN" id="4pWvZ2nHjxQ" role="33vP2m">
                        <node concept="3uibUv" id="4pWvZ2nHkyp" role="10QFUM">
                          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                        </node>
                        <node concept="2OqwBi" id="4pWvZ2nHjxS" role="10QFUP">
                          <node concept="37vLTw" id="7HUwyZaMEOp" role="2Oq$k0">
                            <ref role="3cqZAo" node="7HUwyZaH$GP" resolve="arguments" />
                          </node>
                          <node concept="liA8E" id="4pWvZ2nHjxW" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                            <node concept="3cmrfG" id="4pWvZ2nHjxX" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4pWvZ2nHjxY" role="3cqZAp">
                    <node concept="3cpWsn" id="4pWvZ2nHjxZ" role="3cpWs9">
                      <property role="TrG5h" value="anchor" />
                      <node concept="3uibUv" id="4pWvZ2nHjy0" role="1tU5fm">
                        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                      </node>
                      <node concept="10QFUN" id="4pWvZ2nHjy1" role="33vP2m">
                        <node concept="3uibUv" id="4pWvZ2nHjy2" role="10QFUM">
                          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                        </node>
                        <node concept="2OqwBi" id="4pWvZ2nHjy3" role="10QFUP">
                          <node concept="37vLTw" id="7HUwyZaMEXx" role="2Oq$k0">
                            <ref role="3cqZAo" node="7HUwyZaH$GP" resolve="arguments" />
                          </node>
                          <node concept="liA8E" id="4pWvZ2nHjy7" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                            <node concept="3cmrfG" id="4pWvZ2nHjy8" role="37wK5m">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4pWvZ2nHjy9" role="3cqZAp">
                    <node concept="2OqwBi" id="4pWvZ2nHjya" role="3clFbG">
                      <node concept="37vLTw" id="4pWvZ2nHjyb" role="2Oq$k0">
                        <ref role="3cqZAo" node="4pWvZ2nHiDD" resolve="nodeId2Type" />
                      </node>
                      <node concept="liA8E" id="4pWvZ2nHjyc" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                        <node concept="2YIFZM" id="4pWvZ2nHjyd" role="37wK5m">
                          <ref role="37wK5l" to="t5kh:4pWvZ2njtBV" resolve="getNode" />
                          <ref role="1Pybhc" to="t5kh:4pWvZ2nDCbU" resolve="RunTypecheckingRules.AbstractFormatter" />
                          <node concept="37vLTw" id="4pWvZ2nHjye" role="37wK5m">
                            <ref role="3cqZAo" node="4pWvZ2nHjxZ" resolve="anchor" />
                          </node>
                        </node>
                        <node concept="1rXfSq" id="4pWvZ2nHjyf" role="37wK5m">
                          <ref role="37wK5l" to="t5kh:4pWvZ2njipn" resolve="getType" />
                          <node concept="2ShNRf" id="4pWvZ2nHkQD" role="37wK5m">
                            <node concept="1pGfFk" id="4pWvZ2nHlB9" role="2ShVmc">
                              <ref role="37wK5l" to="oy3s:6SkxsM$2Uu7" resolve="AtomLogical" />
                              <node concept="37vLTw" id="4pWvZ2nHlNg" role="37wK5m">
                                <ref role="3cqZAo" node="4pWvZ2nHjxO" resolve="type" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4pWvZ2nHjyh" role="3clFbw">
                  <node concept="2OqwBi" id="4pWvZ2nHjyi" role="2Oq$k0">
                    <node concept="10M0yZ" id="4pWvZ2nHjyj" role="2Oq$k0">
                      <ref role="1PxDUh" to="i348:4OKkcnfu_zf" resolve="CustomConstraints" />
                      <ref role="3cqZAo" to="i348:5uFPQ7CgjLS" resolve="TYPEOF_SYM" />
                    </node>
                    <node concept="liA8E" id="4pWvZ2nHjyk" role="2OqNvi">
                      <ref role="37wK5l" to="rchb:54i3FxcZMvt" resolve="id" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4pWvZ2nHjyl" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="2OqwBi" id="4pWvZ2nHjym" role="37wK5m">
                      <node concept="2OqwBi" id="4pWvZ2nHjyn" role="2Oq$k0">
                        <node concept="37vLTw" id="4pWvZ2nHjyo" role="2Oq$k0">
                          <ref role="3cqZAo" node="4pWvZ2nHjyr" resolve="co" />
                        </node>
                        <node concept="liA8E" id="4pWvZ2nHjyp" role="2OqNvi">
                          <ref role="37wK5l" to="rchb:5uFPQ7BE$9i" resolve="symbol" />
                        </node>
                      </node>
                      <node concept="liA8E" id="4pWvZ2nHjyq" role="2OqNvi">
                        <ref role="37wK5l" to="rchb:54i3FxcZMvt" resolve="id" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="4pWvZ2nHjyr" role="1Duv9x">
              <property role="TrG5h" value="co" />
              <node concept="3uibUv" id="4pWvZ2nHjys" role="1tU5fm">
                <ref role="3uigEE" to="rchb:5uFPQ7B$Pn9" resolve="AndItem" />
              </node>
            </node>
            <node concept="1rXfSq" id="4pWvZ2nHjyt" role="1DdaDG">
              <ref role="37wK5l" node="4pWvZ2nEi3F" resolve="getConstraintOccurrences" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="4pWvZ2oeTmh" role="jymVt">
        <property role="TrG5h" value="initialize" />
        <node concept="3cqZAl" id="4pWvZ2oeTmi" role="3clF45" />
        <node concept="3Tm1VV" id="4pWvZ2oeTmj" role="1B3o_S" />
        <node concept="3clFbS" id="4pWvZ2oeTmk" role="3clF47">
          <node concept="1DcWWT" id="4pWvZ2oeTml" role="3cqZAp">
            <node concept="3clFbS" id="4pWvZ2oeTmm" role="2LFqv$">
              <node concept="3cpWs8" id="7HUwyZaMFjz" role="3cqZAp">
                <node concept="3cpWsn" id="7HUwyZaMFj$" role="3cpWs9">
                  <property role="TrG5h" value="arguments" />
                  <node concept="3uibUv" id="7HUwyZaMFj_" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="7HUwyZaMFjA" role="11_B2D">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="7HUwyZaMFjB" role="33vP2m">
                    <node concept="1pGfFk" id="7HUwyZaMFjC" role="2ShVmc">
                      <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(java.util.Collection)" resolve="ArrayList" />
                      <node concept="10QFUN" id="7HUwyZaMFjD" role="37wK5m">
                        <node concept="3uibUv" id="7HUwyZaMFjE" role="10QFUM">
                          <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                          <node concept="3uibUv" id="7HUwyZaMFjF" role="11_B2D">
                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="7HUwyZaMFjG" role="10QFUP">
                          <node concept="37vLTw" id="7HUwyZaMFjH" role="2Oq$k0">
                            <ref role="3cqZAo" node="4pWvZ2oeTnK" resolve="co" />
                          </node>
                          <node concept="liA8E" id="7HUwyZaMFjI" role="2OqNvi">
                            <ref role="37wK5l" to="rchb:5uFPQ7B_b06" resolve="arguments" />
                          </node>
                        </node>
                      </node>
                      <node concept="3uibUv" id="7HUwyZaMFjJ" role="1pMfVU">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7HUwyZaMF1B" role="3cqZAp" />
              <node concept="3clFbJ" id="4pWvZ2oeTmn" role="3cqZAp">
                <node concept="3clFbS" id="4pWvZ2oeTmo" role="3clFbx">
                  <node concept="3cpWs8" id="4pWvZ2oeTmp" role="3cqZAp">
                    <node concept="3cpWsn" id="4pWvZ2oeTmq" role="3cpWs9">
                      <property role="TrG5h" value="args" />
                      <node concept="3uibUv" id="4pWvZ2oeTmr" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~List" resolve="List" />
                        <node concept="3uibUv" id="4pWvZ2oeTms" role="11_B2D">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7HUwyZaMFPC" role="33vP2m">
                        <ref role="3cqZAo" node="7HUwyZaMFj$" resolve="arguments" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4pWvZ2oeTmw" role="3cqZAp">
                    <node concept="3cpWsn" id="4pWvZ2oeTmx" role="3cpWs9">
                      <property role="TrG5h" value="type" />
                      <node concept="3uibUv" id="4pWvZ2oeZl1" role="1tU5fm">
                        <ref role="3uigEE" to="oy3s:3HJTsBmSn3l" resolve="AtomLogical.AtomLogicalVar" />
                      </node>
                      <node concept="10QFUN" id="4pWvZ2oeTmz" role="33vP2m">
                        <node concept="3uibUv" id="4pWvZ2oeZ38" role="10QFUM">
                          <ref role="3uigEE" to="oy3s:3HJTsBmSn3l" resolve="AtomLogical.AtomLogicalVar" />
                        </node>
                        <node concept="2OqwBi" id="4pWvZ2oeTm_" role="10QFUP">
                          <node concept="37vLTw" id="4pWvZ2oeTmA" role="2Oq$k0">
                            <ref role="3cqZAo" node="4pWvZ2oeTmq" resolve="args" />
                          </node>
                          <node concept="liA8E" id="4pWvZ2oeTmB" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                            <node concept="3cmrfG" id="4pWvZ2oeTmC" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4pWvZ2oeTmD" role="3cqZAp">
                    <node concept="2OqwBi" id="4pWvZ2oeTmE" role="3clFbG">
                      <node concept="37vLTw" id="4pWvZ2oeTmF" role="2Oq$k0">
                        <ref role="3cqZAo" to="t5kh:6HT7BWBSGym" resolve="varnames" />
                      </node>
                      <node concept="liA8E" id="4pWvZ2oeTmG" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                        <node concept="2OqwBi" id="4pWvZ2oeZK7" role="37wK5m">
                          <node concept="2OqwBi" id="4pWvZ2oeTmH" role="2Oq$k0">
                            <node concept="37vLTw" id="4pWvZ2oeTmI" role="2Oq$k0">
                              <ref role="3cqZAo" node="4pWvZ2oeTmx" resolve="type" />
                            </node>
                            <node concept="liA8E" id="4pWvZ2oeZ$Z" role="2OqNvi">
                              <ref role="37wK5l" to="oy3s:3HJTsBmSn3F" resolve="logical" />
                            </node>
                          </node>
                          <node concept="liA8E" id="4pWvZ2of0cK" role="2OqNvi">
                            <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                          </node>
                        </node>
                        <node concept="2YIFZM" id="4pWvZ2oeTmK" role="37wK5m">
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                          <node concept="2OqwBi" id="4pWvZ2oeTmL" role="37wK5m">
                            <node concept="37vLTw" id="4pWvZ2oeTmM" role="2Oq$k0">
                              <ref role="3cqZAo" node="4pWvZ2oeTmq" resolve="args" />
                            </node>
                            <node concept="liA8E" id="4pWvZ2oeTmN" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                              <node concept="3cmrfG" id="4pWvZ2oeTmO" role="37wK5m">
                                <property role="3cmrfH" value="1" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4pWvZ2oeTmP" role="3clFbw">
                  <node concept="liA8E" id="4pWvZ2oeTmQ" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="2OqwBi" id="4pWvZ2oeTmR" role="37wK5m">
                      <node concept="2OqwBi" id="4pWvZ2oeTmS" role="2Oq$k0">
                        <node concept="37vLTw" id="4pWvZ2oeTmT" role="2Oq$k0">
                          <ref role="3cqZAo" node="4pWvZ2oeTnK" resolve="co" />
                        </node>
                        <node concept="liA8E" id="4pWvZ2oeTmU" role="2OqNvi">
                          <ref role="37wK5l" to="rchb:5uFPQ7BE$9i" resolve="symbol" />
                        </node>
                      </node>
                      <node concept="liA8E" id="4pWvZ2oeTmV" role="2OqNvi">
                        <ref role="37wK5l" to="rchb:54i3FxcZMvt" resolve="id" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4pWvZ2oeTmW" role="2Oq$k0">
                    <node concept="3fl2lp" id="4pWvZ2oeTmX" role="2Oq$k0">
                      <ref role="3fl3PK" to="kqnc:3Qp4N06bUPt" resolve="varname" />
                      <node concept="3B5_sB" id="4pWvZ2oeTmY" role="3fl3PI">
                        <ref role="3B5MYn" to="kqnc:3Qp4N06bUPp" resolve="StandardConstraints" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="4pWvZ2oeTmZ" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4pWvZ2oeTn0" role="3cqZAp">
                <node concept="3clFbS" id="4pWvZ2oeTn1" role="3clFbx">
                  <node concept="3cpWs8" id="4pWvZ2oeTn2" role="3cqZAp">
                    <node concept="3cpWsn" id="4pWvZ2oeTn3" role="3cpWs9">
                      <property role="TrG5h" value="args" />
                      <node concept="3uibUv" id="4pWvZ2oeTn4" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~List" resolve="List" />
                        <node concept="3uibUv" id="4pWvZ2oeTn5" role="11_B2D">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7HUwyZaMG2M" role="33vP2m">
                        <ref role="3cqZAo" node="7HUwyZaMFj$" resolve="arguments" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4pWvZ2oeTn9" role="3cqZAp">
                    <node concept="3cpWsn" id="4pWvZ2oeTna" role="3cpWs9">
                      <property role="TrG5h" value="typeLogical" />
                      <node concept="3uibUv" id="4pWvZ2oeTnb" role="1tU5fm">
                        <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
                      </node>
                      <node concept="10QFUN" id="4pWvZ2oeTnc" role="33vP2m">
                        <node concept="3uibUv" id="4pWvZ2oeTnd" role="10QFUM">
                          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
                        </node>
                        <node concept="2OqwBi" id="4pWvZ2oeTne" role="10QFUP">
                          <node concept="37vLTw" id="4pWvZ2oeTnf" role="2Oq$k0">
                            <ref role="3cqZAo" node="4pWvZ2oeTn3" resolve="args" />
                          </node>
                          <node concept="liA8E" id="4pWvZ2oeTng" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                            <node concept="3cmrfG" id="4pWvZ2oeTnh" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4pWvZ2oeTni" role="3cqZAp">
                    <node concept="3cpWsn" id="4pWvZ2oeTnj" role="3cpWs9">
                      <property role="TrG5h" value="boundLogical" />
                      <node concept="3uibUv" id="4pWvZ2oeTnk" role="1tU5fm">
                        <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
                      </node>
                      <node concept="10QFUN" id="4pWvZ2oeTnl" role="33vP2m">
                        <node concept="3uibUv" id="4pWvZ2oeTnm" role="10QFUM">
                          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
                        </node>
                        <node concept="2OqwBi" id="4pWvZ2oeTnn" role="10QFUP">
                          <node concept="37vLTw" id="4pWvZ2oeTno" role="2Oq$k0">
                            <ref role="3cqZAo" node="4pWvZ2oeTn3" resolve="args" />
                          </node>
                          <node concept="liA8E" id="4pWvZ2oeTnp" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                            <node concept="3cmrfG" id="4pWvZ2oeTnq" role="37wK5m">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4pWvZ2oeTnr" role="3cqZAp">
                    <node concept="2OqwBi" id="4pWvZ2oeTns" role="3clFbG">
                      <node concept="liA8E" id="4pWvZ2oeTnt" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                        <node concept="2OqwBi" id="4pWvZ2oeTnu" role="37wK5m">
                          <node concept="37vLTw" id="4pWvZ2oeTnv" role="2Oq$k0">
                            <ref role="3cqZAo" node="4pWvZ2oeTna" resolve="typeLogical" />
                          </node>
                          <node concept="liA8E" id="4pWvZ2oeTnw" role="2OqNvi">
                            <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="4pWvZ2oeTnx" role="37wK5m">
                          <node concept="37vLTw" id="4pWvZ2oeTny" role="2Oq$k0">
                            <ref role="3cqZAo" node="4pWvZ2oeTnj" resolve="boundLogical" />
                          </node>
                          <node concept="liA8E" id="4pWvZ2oeTnz" role="2OqNvi">
                            <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="4pWvZ2oeTn$" role="2Oq$k0">
                        <ref role="3cqZAo" to="t5kh:6HT7BWBSGys" resolve="ubounds" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4pWvZ2oeTn_" role="3clFbw">
                  <node concept="2OqwBi" id="4pWvZ2oeTnA" role="2Oq$k0">
                    <node concept="3fl2lp" id="4pWvZ2oeTnB" role="2Oq$k0">
                      <ref role="3fl3PK" to="kqnc:3Qp4N06bUPr" resolve="ubound" />
                      <node concept="3B5_sB" id="4pWvZ2oeTnC" role="3fl3PI">
                        <ref role="3B5MYn" to="kqnc:3Qp4N06bUPp" resolve="StandardConstraints" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="4pWvZ2oeTnD" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4pWvZ2oeTnE" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="2OqwBi" id="4pWvZ2oeTnF" role="37wK5m">
                      <node concept="2OqwBi" id="4pWvZ2oeTnG" role="2Oq$k0">
                        <node concept="37vLTw" id="4pWvZ2oeTnH" role="2Oq$k0">
                          <ref role="3cqZAo" node="4pWvZ2oeTnK" resolve="co" />
                        </node>
                        <node concept="liA8E" id="4pWvZ2oeTnI" role="2OqNvi">
                          <ref role="37wK5l" to="rchb:5uFPQ7BE$9i" resolve="symbol" />
                        </node>
                      </node>
                      <node concept="liA8E" id="4pWvZ2oeTnJ" role="2OqNvi">
                        <ref role="37wK5l" to="rchb:54i3FxcZMvt" resolve="id" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="4pWvZ2oeTnK" role="1Duv9x">
              <property role="TrG5h" value="co" />
              <node concept="3uibUv" id="4pWvZ2oeTnL" role="1tU5fm">
                <ref role="3uigEE" to="rchb:5uFPQ7B$Pn9" resolve="AndItem" />
              </node>
            </node>
            <node concept="1rXfSq" id="4pWvZ2oeTnM" role="1DdaDG">
              <ref role="37wK5l" node="4pWvZ2nEi3F" resolve="getConstraintOccurrences" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="Zd50a" id="1isQzelE21t">
    <property role="TrG5h" value="TypingKeymap" />
    <node concept="Zd509" id="1isQzelE21u" role="Zd508">
      <ref role="1bYAoF" node="1isQzel$a0H" resolve="MarkTypesOnTheFly" />
      <node concept="pLAjd" id="1isQzelE21v" role="Zd501">
        <property role="pLAjc" value="ctrl+alt" />
        <property role="pLAjf" value="VK_F7" />
      </node>
    </node>
  </node>
</model>

