<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:97d6f79f-4a27-4a9b-9122-9bccfb5317c9(jetbrains.mps.lang.coderules.predicate)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
  </languages>
  <imports>
    <import index="av0y" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.program(jetbrains.mps.logic.reactor/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="bj13" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.logical(jetbrains.mps.logic.reactor/)" />
    <import index="yt73" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.unification(jetbrains.mps.logic.reactor/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="i8bi" ref="r:c3548bac-30eb-4a2a-937c-0111d5697309(jetbrains.mps.lang.smodel.generator.smodelAdapter)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="cof4" ref="r:0a9d1d47-250c-4f98-8962-b65edf8b0721(jetbrains.mps.logic.dataform)" />
    <import index="uwx2" ref="r:76101703-3fc5-4e76-aa48-9728dde91f7b(jetbrains.mps.logic.unification)" />
    <import index="ugy2" ref="r:57b2449f-b7c7-4941-bd75-9c594835f5cd(jetbrains.mps.lang.coderules.template)" />
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
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
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
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ngI" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
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
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="4269842503726207156" name="jetbrains.mps.baseLanguage.structure.LongLiteral" flags="nn" index="1adDum">
        <property id="4269842503726207157" name="value" index="1adDun" />
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
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
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
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
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
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="312cEu" id="6Kcfpq7B0Wu">
    <property role="TrG5h" value="AbstractPredicate" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="6Kcfpq7B16q" role="jymVt" />
    <node concept="Wx3nA" id="1laj_RTNVH9" role="jymVt">
      <property role="TrG5h" value="NO_ARGUMENT" />
      <node concept="3Tm1VV" id="1laj_RTNXH9" role="1B3o_S" />
      <node concept="3uibUv" id="1laj_RTNWrk" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="2ShNRf" id="1laj_RTNXtv" role="33vP2m">
        <node concept="1pGfFk" id="1laj_RTNXt5" role="2ShVmc">
          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1laj_RTNUao" role="jymVt" />
    <node concept="3clFbW" id="6Kcfpq7B1f7" role="jymVt">
      <node concept="37vLTG" id="6Kcfpq7BmCY" role="3clF46">
        <property role="TrG5h" value="arguments" />
        <node concept="8X2XB" id="5uFPQ7BZ$7f" role="1tU5fm">
          <node concept="3uibUv" id="5uFPQ7BZzTo" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6Kcfpq7B1f9" role="3clF45" />
      <node concept="3Tm1VV" id="6Kcfpq7B1fa" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7B1fb" role="3clF47">
        <node concept="3clFbF" id="5uFPQ7BZe1a" role="3cqZAp">
          <node concept="37vLTI" id="5uFPQ7BZe1c" role="3clFbG">
            <node concept="2OqwBi" id="5uFPQ7BZe1g" role="37vLTJ">
              <node concept="Xjq3P" id="5uFPQ7BZe1j" role="2Oq$k0" />
              <node concept="2OwXpG" id="5uFPQ7BZe1f" role="2OqNvi">
                <ref role="2Oxat5" node="5uFPQ7BZe15" resolve="arguments" />
              </node>
            </node>
            <node concept="37vLTw" id="5uFPQ7BZe1k" role="37vLTx">
              <ref role="3cqZAo" node="6Kcfpq7BmCY" resolve="arguments" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7B1eT" role="jymVt" />
    <node concept="3clFb_" id="5Nh6YP298OX" role="jymVt">
      <property role="TrG5h" value="setCRTemplateRef" />
      <node concept="3clFbS" id="5Nh6YP298OY" role="3clF47">
        <node concept="3clFbF" id="5Nh6YP29t0p" role="3cqZAp">
          <node concept="37vLTI" id="5Nh6YP29t0r" role="3clFbG">
            <node concept="2OqwBi" id="5Nh6YP29vc3" role="37vLTJ">
              <node concept="Xjq3P" id="5Nh6YP29wgp" role="2Oq$k0" />
              <node concept="2OwXpG" id="5Nh6YP29vc6" role="2OqNvi">
                <ref role="2Oxat5" node="5Nh6YP29t0l" resolve="templateRef" />
              </node>
            </node>
            <node concept="37vLTw" id="5Nh6YP29t0v" role="37vLTx">
              <ref role="3cqZAo" node="5Nh6YP29blq" resolve="ref" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5Nh6YP298OV" role="3clF45" />
      <node concept="3Tm1VV" id="5Nh6YP298OW" role="1B3o_S" />
      <node concept="37vLTG" id="5Nh6YP29blq" role="3clF46">
        <property role="TrG5h" value="ref" />
        <node concept="3uibUv" id="5Nh6YP29blp" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Nh6YP29$CD" role="jymVt" />
    <node concept="3clFb_" id="5Nh6YP29Bcl" role="jymVt">
      <property role="TrG5h" value="getCRTemplateRef" />
      <node concept="3uibUv" id="5Nh6YP29P0x" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3Tm1VV" id="5Nh6YP29Bco" role="1B3o_S" />
      <node concept="3clFbS" id="5Nh6YP29Bcp" role="3clF47">
        <node concept="3clFbF" id="5Nh6YP29MFm" role="3cqZAp">
          <node concept="37vLTw" id="5Nh6YP29MFl" role="3clFbG">
            <ref role="3cqZAo" node="5Nh6YP29t0l" resolve="templateRef" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Nh6YP29NFH" role="jymVt" />
    <node concept="3clFb_" id="5Nh6YP1TXyg" role="jymVt">
      <property role="TrG5h" value="setNodeId" />
      <node concept="37vLTG" id="5Nh6YP1U1c3" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3cpWsb" id="5Nh6YP1U2ba" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5Nh6YP1TXyh" role="3clF47">
        <node concept="3clFbF" id="5Nh6YP1U2pR" role="3cqZAp">
          <node concept="37vLTI" id="5Nh6YP1U2pT" role="3clFbG">
            <node concept="2OqwBi" id="5Nh6YP1U5ga" role="37vLTJ">
              <node concept="Xjq3P" id="5Nh6YP1U6dE" role="2Oq$k0" />
              <node concept="2OwXpG" id="5Nh6YP1U5gd" role="2OqNvi">
                <ref role="2Oxat5" node="5Nh6YP1U2pN" resolve="nodeId" />
              </node>
            </node>
            <node concept="37vLTw" id="5Nh6YP1U2pX" role="37vLTx">
              <ref role="3cqZAo" node="5Nh6YP1U1c3" resolve="nodeId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5Nh6YP1TXye" role="3clF45" />
      <node concept="3Tm1VV" id="5Nh6YP1TXyf" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5Nh6YP1Uin7" role="jymVt" />
    <node concept="3clFb_" id="5Nh6YP1UdP7" role="jymVt">
      <property role="TrG5h" value="getNodeId" />
      <node concept="3clFbS" id="5Nh6YP1UdPa" role="3clF47">
        <node concept="3clFbF" id="5Nh6YP1UdPb" role="3cqZAp">
          <node concept="2OqwBi" id="5Nh6YP1UdPd" role="3clFbG">
            <node concept="Xjq3P" id="5Nh6YP1UdPe" role="2Oq$k0" />
            <node concept="2OwXpG" id="5Nh6YP1UdPf" role="2OqNvi">
              <ref role="2Oxat5" node="5Nh6YP1U2pN" resolve="nodeId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWsb" id="5Nh6YP1UjCi" role="3clF45" />
      <node concept="3Tm1VV" id="5Nh6YP1UdPi" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5Nh6YP2eTZ6" role="jymVt" />
    <node concept="3Tm1VV" id="6Kcfpq7B0Wv" role="1B3o_S" />
    <node concept="3clFb_" id="5uFPQ7BZhBG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="arguments" />
      <node concept="3Tm1VV" id="5uFPQ7BZhBJ" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7BZhBL" role="3clF47">
        <node concept="3clFbF" id="5uFPQ7BZjve" role="3cqZAp">
          <node concept="2YIFZM" id="5uFPQ7BZjxZ" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List)" resolve="unmodifiableList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="2YIFZM" id="5uFPQ7BZjDb" role="37wK5m">
              <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
              <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
              <node concept="37vLTw" id="5uFPQ7BZjFA" role="37wK5m">
                <ref role="3cqZAo" node="5uFPQ7BZe15" resolve="arguments" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5uFPQ7BZl4Y" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3uibUv" id="7rf49NglMG9" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3qTvmN" id="7rf49NglNci" role="11_B2D" />
      </node>
    </node>
    <node concept="2tJIrI" id="4TCblo5MfR_" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7B8WD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="6Kcfpq7B8WE" role="1B3o_S" />
      <node concept="17QB3L" id="5jCHAT2VZ5B" role="3clF45" />
      <node concept="3clFbS" id="6Kcfpq7B8WH" role="3clF47">
        <node concept="3clFbF" id="6Kcfpq7B99k" role="3cqZAp">
          <node concept="2OqwBi" id="5uFPQ7BZfDt" role="3clFbG">
            <node concept="1rXfSq" id="7ISVfSJnHs" role="2Oq$k0">
              <ref role="37wK5l" to="av0y:~Predicate.symbol()" resolve="symbol" />
            </node>
            <node concept="liA8E" id="5uFPQ7BZfHQ" role="2OqNvi">
              <ref role="37wK5l" to="av0y:~PredicateSymbol.toString()" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6Kcfpq7B8WI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7BBoK" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7B2W5" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="6Kcfpq7B2W6" role="3clF45" />
      <node concept="3Tm1VV" id="6Kcfpq7B2W7" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7B2W8" role="3clF47">
        <node concept="3clFbJ" id="6Kcfpq7B2W9" role="3cqZAp">
          <node concept="3clFbS" id="6Kcfpq7B2Wa" role="3clFbx">
            <node concept="3cpWs6" id="6Kcfpq7B2Wb" role="3cqZAp">
              <node concept="3clFbT" id="6Kcfpq7B2Wc" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6Kcfpq7B2Wd" role="3clFbw">
            <node concept="Xjq3P" id="6Kcfpq7B2W4" role="3uHU7B" />
            <node concept="37vLTw" id="6Kcfpq7B2We" role="3uHU7w">
              <ref role="3cqZAo" node="6Kcfpq7B2W_" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6Kcfpq7B2Wf" role="3cqZAp">
          <node concept="3clFbS" id="6Kcfpq7B2Wg" role="3clFbx">
            <node concept="3cpWs6" id="6Kcfpq7B2Wh" role="3cqZAp">
              <node concept="3clFbT" id="6Kcfpq7B2Wi" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="6Kcfpq7B2Wj" role="3clFbw">
            <node concept="3clFbC" id="6Kcfpq7B2Wk" role="3uHU7B">
              <node concept="37vLTw" id="6Kcfpq7B2Wl" role="3uHU7B">
                <ref role="3cqZAo" node="6Kcfpq7B2W_" resolve="o" />
              </node>
              <node concept="10Nm6u" id="6Kcfpq7B2Wm" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="6Kcfpq7B2Wn" role="3uHU7w">
              <node concept="2OqwBi" id="6Kcfpq7B2Wo" role="3uHU7B">
                <node concept="Xjq3P" id="6Kcfpq7B2Wp" role="2Oq$k0" />
                <node concept="liA8E" id="6Kcfpq7B2Wq" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="2OqwBi" id="6Kcfpq7B2Wr" role="3uHU7w">
                <node concept="37vLTw" id="6Kcfpq7B2Ws" role="2Oq$k0">
                  <ref role="3cqZAo" node="6Kcfpq7B2W_" resolve="o" />
                </node>
                <node concept="liA8E" id="6Kcfpq7B2Wt" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6Kcfpq7B2Wu" role="3cqZAp" />
        <node concept="3cpWs8" id="6Kcfpq7B2Wv" role="3cqZAp">
          <node concept="3cpWsn" id="6Kcfpq7B2Ww" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="6Kcfpq7B2Wx" role="1tU5fm">
              <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
            </node>
            <node concept="10QFUN" id="6Kcfpq7B2Wy" role="33vP2m">
              <node concept="3uibUv" id="6Kcfpq7B2Wz" role="10QFUM">
                <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
              </node>
              <node concept="37vLTw" id="6Kcfpq7B2W$" role="10QFUP">
                <ref role="3cqZAo" node="6Kcfpq7B2W_" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6Kcfpq7B2WJ" role="3cqZAp">
          <node concept="3clFbS" id="6Kcfpq7B2WK" role="3clFbx">
            <node concept="3cpWs6" id="6Kcfpq7B2WL" role="3cqZAp">
              <node concept="3clFbT" id="6Kcfpq7B2WM" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3K4zz7" id="6Kcfpq7B2WN" role="3clFbw">
            <node concept="3fqX7Q" id="6Kcfpq7B2WO" role="3K4E3e">
              <node concept="2OqwBi" id="6Kcfpq7B2WP" role="3fr31v">
                <node concept="liA8E" id="6Kcfpq7B2WQ" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="6Kcfpq7B2WR" role="37wK5m">
                    <node concept="37vLTw" id="6Kcfpq7B2WC" role="2Oq$k0">
                      <ref role="3cqZAo" node="6Kcfpq7B2Ww" resolve="that" />
                    </node>
                    <node concept="liA8E" id="7ISVfSJor9" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~Predicate.symbol()" resolve="symbol" />
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="6Kcfpq7B2WS" role="2Oq$k0">
                  <node concept="10QFUN" id="6Kcfpq7B2WT" role="1eOMHV">
                    <node concept="3uibUv" id="6Kcfpq7B2WU" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="1rXfSq" id="7ISVfSJomP" role="10QFUP">
                      <ref role="37wK5l" to="av0y:~Predicate.symbol()" resolve="symbol" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="6Kcfpq7B2WV" role="3K4Cdx">
              <node concept="10Nm6u" id="6Kcfpq7B2WW" role="3uHU7w" />
              <node concept="1rXfSq" id="7ISVfSJojN" role="3uHU7B">
                <ref role="37wK5l" to="av0y:~Predicate.symbol()" resolve="symbol" />
              </node>
            </node>
            <node concept="3y3z36" id="6Kcfpq7B2WX" role="3K4GZi">
              <node concept="10Nm6u" id="6Kcfpq7B2WY" role="3uHU7w" />
              <node concept="2OqwBi" id="6Kcfpq7B2WZ" role="3uHU7B">
                <node concept="37vLTw" id="6Kcfpq7B2X0" role="2Oq$k0">
                  <ref role="3cqZAo" node="6Kcfpq7B2Ww" resolve="that" />
                </node>
                <node concept="liA8E" id="7ISVfSJots" role="2OqNvi">
                  <ref role="37wK5l" to="av0y:~Predicate.symbol()" resolve="symbol" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6Kcfpq7B2X1" role="3cqZAp" />
        <node concept="3clFbF" id="6Kcfpq7B2X2" role="3cqZAp">
          <node concept="3clFbT" id="6Kcfpq7B2X3" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6Kcfpq7B2W_" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="6Kcfpq7B2WA" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="6Kcfpq7B2WB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7B3h2" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7B2X4" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="6Kcfpq7B2X5" role="3clF45" />
      <node concept="3Tm1VV" id="6Kcfpq7B2X6" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7B2X7" role="3clF47">
        <node concept="3cpWs8" id="6Kcfpq7B2X9" role="3cqZAp">
          <node concept="3cpWsn" id="6Kcfpq7B2Xa" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Oyi0" id="6Kcfpq7B2Xb" role="1tU5fm" />
            <node concept="3cmrfG" id="6Kcfpq7B2Xc" role="33vP2m">
              <property role="3cmrfH" value="17" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6Kcfpq7B2Xm" role="3cqZAp">
          <node concept="37vLTI" id="6Kcfpq7B2Xn" role="3clFbG">
            <node concept="37vLTw" id="6Kcfpq7B2Xo" role="37vLTJ">
              <ref role="3cqZAo" node="6Kcfpq7B2Xa" resolve="result" />
            </node>
            <node concept="3cpWs3" id="6Kcfpq7B2Xp" role="37vLTx">
              <node concept="17qRlL" id="6Kcfpq7B2Xi" role="3uHU7B">
                <node concept="3cmrfG" id="6Kcfpq7B2Xj" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="6Kcfpq7B2Xd" role="3uHU7w">
                  <ref role="3cqZAo" node="6Kcfpq7B2Xa" resolve="result" />
                </node>
              </node>
              <node concept="1eOMI4" id="6Kcfpq7B2Xq" role="3uHU7w">
                <node concept="3K4zz7" id="6Kcfpq7B2Xr" role="1eOMHV">
                  <node concept="3cmrfG" id="6Kcfpq7B2Xs" role="3K4GZi">
                    <property role="3cmrfH" value="37" />
                  </node>
                  <node concept="3y3z36" id="6Kcfpq7B2Xt" role="3K4Cdx">
                    <node concept="10Nm6u" id="6Kcfpq7B2Xu" role="3uHU7w" />
                    <node concept="1rXfSq" id="7ISVfSJoxI" role="3uHU7B">
                      <ref role="37wK5l" to="av0y:~Predicate.symbol()" resolve="symbol" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6Kcfpq7B2Xv" role="3K4E3e">
                    <node concept="2YIFZM" id="6Kcfpq7B2Xw" role="2Oq$k0">
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                      <node concept="1rXfSq" id="7ISVfSJoy$" role="37wK5m">
                        <ref role="37wK5l" to="av0y:~Predicate.symbol()" resolve="symbol" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6Kcfpq7B2Xx" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.hashCode()" resolve="hashCode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6Kcfpq7B2Xy" role="3cqZAp">
          <node concept="37vLTw" id="6Kcfpq7B2Xz" role="3clFbG">
            <ref role="3cqZAo" node="6Kcfpq7B2Xa" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6Kcfpq7B2X8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7B3IY" role="jymVt" />
    <node concept="3uibUv" id="5uFPQ7BZiil" role="EKbjA">
      <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
    </node>
    <node concept="312cEg" id="5uFPQ7BZe15" role="jymVt">
      <property role="TrG5h" value="arguments" />
      <node concept="3Tm6S6" id="5uFPQ7BZe16" role="1B3o_S" />
      <node concept="10Q1$e" id="5uFPQ7BZDfP" role="1tU5fm">
        <node concept="3uibUv" id="5uFPQ7BZ$Ap" role="10Q1$1">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5Nh6YP1U2pN" role="jymVt">
      <property role="TrG5h" value="nodeId" />
      <node concept="3Tm6S6" id="5Nh6YP1U2pO" role="1B3o_S" />
      <node concept="3cpWsb" id="5Nh6YP1U2pQ" role="1tU5fm" />
      <node concept="1adDum" id="5Nh6YP1UcOD" role="33vP2m">
        <property role="1adDun" value="-1L" />
      </node>
    </node>
    <node concept="312cEg" id="5Nh6YP29t0l" role="jymVt">
      <property role="TrG5h" value="templateRef" />
      <node concept="3Tm6S6" id="5Nh6YP29t0m" role="1B3o_S" />
      <node concept="3uibUv" id="5Nh6YP29t0o" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2GO7tyJVmP4">
    <property role="TrG5h" value="UnificationPredicate" />
    <node concept="2tJIrI" id="5uFPQ7C29se" role="jymVt" />
    <node concept="3Tm1VV" id="2GO7tyJVmP5" role="1B3o_S" />
    <node concept="2YIFZL" id="5jCHAT29qgV" role="jymVt">
      <property role="TrG5h" value="unifies" />
      <node concept="37vLTG" id="5jCHAT29qMq" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="5jCHAT29qMr" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="5jCHAT29qMs" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="5jCHAT29qMt" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3uibUv" id="5jCHAT29qnP" role="3clF45">
        <ref role="3uigEE" node="2GO7tyJVmP4" resolve="UnificationPredicate" />
      </node>
      <node concept="3Tm1VV" id="5jCHAT29qgY" role="1B3o_S" />
      <node concept="3clFbS" id="5jCHAT29qgZ" role="3clF47">
        <node concept="3clFbF" id="5jCHAT29qU2" role="3cqZAp">
          <node concept="2ShNRf" id="5jCHAT29qU0" role="3clFbG">
            <node concept="1pGfFk" id="5jCHAT29r5d" role="2ShVmc">
              <ref role="37wK5l" node="4xBopTzmopz" resolve="UnificationPredicate" />
              <node concept="37vLTw" id="5jCHAT29rbn" role="37wK5m">
                <ref role="3cqZAo" node="5jCHAT29qMq" resolve="left" />
              </node>
              <node concept="37vLTw" id="5jCHAT29rcn" role="37wK5m">
                <ref role="3cqZAo" node="5jCHAT29qMs" resolve="right" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jCHAT29rrQ" role="jymVt" />
    <node concept="3clFbW" id="4xBopTzmopz" role="jymVt">
      <node concept="37vLTG" id="5uFPQ7C29xx" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="5uFPQ7C29_R" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="5uFPQ7C29DX" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="5uFPQ7C29G3" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="4xBopTzmop_" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzmopA" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzmopB" role="3clF47">
        <node concept="XkiVB" id="4xBopTzmoNB" role="3cqZAp">
          <ref role="37wK5l" node="6Kcfpq7B1f7" resolve="AbstractPredicate" />
          <node concept="37vLTw" id="5uFPQ7C29Rp" role="37wK5m">
            <ref role="3cqZAo" node="5uFPQ7C29xx" resolve="left" />
          </node>
          <node concept="37vLTw" id="5uFPQ7C29TI" role="37wK5m">
            <ref role="3cqZAo" node="5uFPQ7C29DX" resolve="right" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzmo93" role="jymVt" />
    <node concept="3clFb_" id="7ISVfSJpsU" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <node concept="3uibUv" id="7ISVfSJpsV" role="3clF45">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="3Tm1VV" id="7ISVfSJpsW" role="1B3o_S" />
      <node concept="3clFbS" id="7ISVfSJpsZ" role="3clF47">
        <node concept="3clFbF" id="7ISVfSJpt1" role="3cqZAp">
          <node concept="37vLTw" id="7ISVfSJpym" role="3clFbG">
            <ref role="3cqZAo" node="5uFPQ7C29mw" resolve="UNI_SYM" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="49L2l3Fhvjr" role="jymVt" />
    <node concept="Wx3nA" id="7NKKM352RLY" role="jymVt">
      <property role="TrG5h" value="SOLVER" />
      <node concept="3Tm6S6" id="7NKKM352RM0" role="1B3o_S" />
      <node concept="3uibUv" id="7NKKM352X32" role="1tU5fm">
        <ref role="3uigEE" to="w7la:~DataProvider$Key" resolve="DataProvider.Key" />
        <node concept="3uibUv" id="7NKKM352XoM" role="11_B2D">
          <ref role="3uigEE" node="6GYQG_Spvw5" resolve="UnificationPredicate.UnificationSolver" />
        </node>
      </node>
      <node concept="2ShNRf" id="7NKKM352YKU" role="33vP2m">
        <node concept="1pGfFk" id="6QvGnAJunE8" role="2ShVmc">
          <ref role="37wK5l" to="w7la:~DataProvider$Key.&lt;init&gt;(java.lang.String)" resolve="DataProvider.Key" />
          <node concept="2OqwBi" id="6QvGnAJutUv" role="37wK5m">
            <node concept="3VsKOn" id="6QvGnAJusDG" role="2Oq$k0">
              <ref role="3VsUkX" node="6GYQG_Spvw5" resolve="UnificationPredicate.UnificationSolver" />
            </node>
            <node concept="liA8E" id="6QvGnAJuvmp" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="4xBopTzmmAx" role="1zkMxy">
      <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
    </node>
    <node concept="Wx3nA" id="2GO7tyJVob2" role="jymVt">
      <property role="TrG5h" value="UNI" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2GO7tyJVob3" role="1B3o_S" />
      <node concept="17QB3L" id="2GO7tyJVob4" role="1tU5fm" />
      <node concept="Xl_RD" id="2GO7tyJVob5" role="33vP2m">
        <property role="Xl_RC" value="uni" />
      </node>
    </node>
    <node concept="Wx3nA" id="2GO7tyJVob6" role="jymVt">
      <property role="TrG5h" value="INFIX_UNI" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2GO7tyJVob7" role="1B3o_S" />
      <node concept="17QB3L" id="2GO7tyJVob8" role="1tU5fm" />
      <node concept="Xl_RD" id="2GO7tyJVob9" role="33vP2m">
        <property role="Xl_RC" value="===" />
      </node>
    </node>
    <node concept="Wx3nA" id="5uFPQ7C29mw" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="UNI_SYM" />
      <node concept="3Tm1VV" id="5uFPQ7C29mq" role="1B3o_S" />
      <node concept="3uibUv" id="5uFPQ7C29mr" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="2ShNRf" id="5uFPQ7C29ms" role="33vP2m">
        <node concept="YeOm9" id="7lt0LtQv_dM" role="2ShVmc">
          <node concept="1Y3b0j" id="7lt0LtQv_dP" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="7lt0LtQvaw_" resolve="PredicateSymbolExt" />
            <ref role="37wK5l" node="7lt0LtQva_c" resolve="PredicateSymbolExt" />
            <node concept="37vLTw" id="5uFPQ7C29mu" role="37wK5m">
              <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
            </node>
            <node concept="3cmrfG" id="5uFPQ7C29mv" role="37wK5m">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="3Tm1VV" id="7lt0LtQv_dQ" role="1B3o_S" />
            <node concept="2tJIrI" id="2_OUDMLYbJW" role="jymVt" />
            <node concept="3clFb_" id="7lt0LtQv_dR" role="jymVt">
              <property role="TrG5h" value="solver" />
              <property role="1EzhhJ" value="false" />
              <node concept="3uibUv" id="4jcOV4hawSL" role="3clF45">
                <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
              </node>
              <node concept="3Tm1VV" id="7lt0LtQv_dT" role="1B3o_S" />
              <node concept="3clFbS" id="7lt0LtQv_dV" role="3clF47">
                <node concept="3clFbF" id="7lt0LtQv_YR" role="3cqZAp">
                  <node concept="2ShNRf" id="7lt0LtQv_YP" role="3clFbG">
                    <node concept="HV5vD" id="3gNap3fzJvU" role="2ShVmc">
                      <ref role="HV5vE" node="6GYQG_Spvw5" resolve="UnificationPredicate.UnificationSolver" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2tJIrI" id="3zMCWVasHDI" role="jymVt" />
            <node concept="3clFb_" id="3zMCWVas3Oh" role="jymVt">
              <property role="TrG5h" value="solver" />
              <node concept="3Tm1VV" id="3zMCWVas3Oi" role="1B3o_S" />
              <node concept="3uibUv" id="3zMCWVas3Ok" role="3clF45">
                <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
              </node>
              <node concept="37vLTG" id="3zMCWVas3Ol" role="3clF46">
                <property role="TrG5h" value="supervisor" />
                <node concept="3uibUv" id="3zMCWVas3Om" role="1tU5fm">
                  <ref role="3uigEE" to="w7la:~Supervisor" resolve="Supervisor" />
                </node>
              </node>
              <node concept="3clFbS" id="3zMCWVas3Op" role="3clF47">
                <node concept="3clFbJ" id="6QvGnAJuvAe" role="3cqZAp">
                  <node concept="3clFbS" id="6QvGnAJuvAg" role="3clFbx">
                    <node concept="3cpWs6" id="7rkc8Gyhbd9" role="3cqZAp">
                      <node concept="2OqwBi" id="7rkc8Gyhbda" role="3cqZAk">
                        <node concept="1eOMI4" id="7rkc8Gyhbdb" role="2Oq$k0">
                          <node concept="10QFUN" id="7rkc8Gyhbdc" role="1eOMHV">
                            <node concept="37vLTw" id="7rkc8Gyhbdd" role="10QFUP">
                              <ref role="3cqZAo" node="3zMCWVas3Ol" resolve="supervisor" />
                            </node>
                            <node concept="3uibUv" id="7rkc8Gyhbde" role="10QFUM">
                              <ref role="3uigEE" to="w7la:~DataProvider" resolve="DataProvider" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7rkc8Gyhbdf" role="2OqNvi">
                          <ref role="37wK5l" to="w7la:~DataProvider.getOrSetData(jetbrains.mps.logic.reactor.evaluation.DataProvider$Key,java.util.function.Supplier)" resolve="getOrSetData" />
                          <node concept="37vLTw" id="7rkc8Gyhbdg" role="37wK5m">
                            <ref role="3cqZAo" node="7NKKM352RLY" resolve="SOLVER" />
                          </node>
                          <node concept="1bVj0M" id="7rkc8Gyhbdh" role="37wK5m">
                            <node concept="3clFbS" id="7rkc8Gyhbdi" role="1bW5cS">
                              <node concept="3clFbF" id="7rkc8Gyhbdj" role="3cqZAp">
                                <node concept="2ShNRf" id="7rkc8Gyhbdk" role="3clFbG">
                                  <node concept="HV5vD" id="7rkc8Gyhbdl" role="2ShVmc">
                                    <ref role="HV5vE" node="6GYQG_Spvw5" resolve="UnificationPredicate.UnificationSolver" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="7rkc8GyheNj" role="3cqZAp" />
                  </node>
                  <node concept="2ZW3vV" id="6QvGnAJuvNG" role="3clFbw">
                    <node concept="3uibUv" id="6QvGnAJuvUE" role="2ZW6by">
                      <ref role="3uigEE" to="w7la:~DataProvider" resolve="DataProvider" />
                    </node>
                    <node concept="37vLTw" id="6QvGnAJuvCe" role="2ZW6bz">
                      <ref role="3cqZAo" node="3zMCWVas3Ol" resolve="supervisor" />
                    </node>
                  </node>
                  <node concept="9aQIb" id="7rkc8GyhdXO" role="9aQIa">
                    <node concept="3clFbS" id="7rkc8GyhdXP" role="9aQI4">
                      <node concept="3cpWs6" id="7rkc8GyhejN" role="3cqZAp">
                        <node concept="3nyPlj" id="7rkc8GyhejO" role="3cqZAk">
                          <ref role="37wK5l" to="av0y:~PredicateSymbol.solver(jetbrains.mps.logic.reactor.evaluation.Supervisor)" resolve="solver" />
                          <node concept="37vLTw" id="7rkc8GyhejP" role="37wK5m">
                            <ref role="3cqZAo" node="3zMCWVas3Ol" resolve="supervisor" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3zMCWVas3Oq" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="3zMCWVasHkb" role="jymVt" />
            <node concept="3clFb_" id="7lt0LtQv_dX" role="jymVt">
              <property role="TrG5h" value="predicate" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="7lt0LtQv_dY" role="3clF46">
                <property role="TrG5h" value="args" />
                <node concept="8X2XB" id="7lt0LtQv_dZ" role="1tU5fm">
                  <node concept="3uibUv" id="7lt0LtQv_e0" role="8Xvag">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="7lt0LtQv_e1" role="3clF45">
                <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
              </node>
              <node concept="3Tm1VV" id="7lt0LtQv_e2" role="1B3o_S" />
              <node concept="3clFbS" id="7lt0LtQv_e4" role="3clF47">
                <node concept="3clFbF" id="7lt0LtQvB9v" role="3cqZAp">
                  <node concept="2ShNRf" id="7lt0LtQvB9t" role="3clFbG">
                    <node concept="1pGfFk" id="7lt0LtQvBkS" role="2ShVmc">
                      <ref role="37wK5l" node="4xBopTzmopz" resolve="UnificationPredicate" />
                      <node concept="AH0OO" id="7lt0LtQvCOL" role="37wK5m">
                        <node concept="3cmrfG" id="7lt0LtQvCWe" role="AHEQo">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="7lt0LtQvCHo" role="AHHXb">
                          <ref role="3cqZAo" node="7lt0LtQv_dY" resolve="args" />
                        </node>
                      </node>
                      <node concept="AH0OO" id="7lt0LtQvD3_" role="37wK5m">
                        <node concept="3cmrfG" id="7lt0LtQvD46" role="AHEQo">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="7lt0LtQvCYf" role="AHHXb">
                          <ref role="3cqZAo" node="7lt0LtQv_dY" resolve="args" />
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
    <node concept="2tJIrI" id="7lt0LtQwhLS" role="jymVt" />
    <node concept="312cEu" id="6GYQG_Spvw5" role="jymVt">
      <property role="TrG5h" value="UnificationSolver" />
      <node concept="3Tm1VV" id="6GYQG_Spvw6" role="1B3o_S" />
      <node concept="2tJIrI" id="2UGjFq4h8Y6" role="jymVt" />
      <node concept="Wx3nA" id="4WeLqVxg6j0" role="jymVt">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="OCCURS_CHECK_EX" />
        <node concept="3Tm6S6" id="4WeLqVxg6iW" role="1B3o_S" />
        <node concept="3uibUv" id="4WeLqVxg6iX" role="1tU5fm">
          <ref role="3uigEE" node="4WeLqVxfpe8" resolve="UnificationPredicate.UnificationSolver.OccursCheckException" />
        </node>
        <node concept="2ShNRf" id="4WeLqVxg6iY" role="33vP2m">
          <node concept="HV5vD" id="4WeLqVxg6iZ" role="2ShVmc">
            <property role="373rjd" value="true" />
            <ref role="HV5vE" node="4WeLqVxfpe8" resolve="UnificationPredicate.UnificationSolver.OccursCheckException" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4WeLqVxge92" role="jymVt" />
      <node concept="3clFb_" id="2UGjFq4m5q0" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="ask" />
        <node concept="37vLTG" id="2UGjFq4m5q1" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="2UGjFq4m5q2" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="10P_77" id="2UGjFq4m5q3" role="3clF45" />
        <node concept="3Tm1VV" id="2UGjFq4m5q4" role="1B3o_S" />
        <node concept="3clFbS" id="2UGjFq4m5q6" role="3clF47">
          <node concept="3SKdUt" id="2rIdnPtNtf5" role="3cqZAp">
            <node concept="1PaTwC" id="589APehYy3X" role="1aUNEU">
              <node concept="3oM_SD" id="589APehYy3Y" role="1PaTwD">
                <property role="3oM_SC" value="FIXME:" />
              </node>
              <node concept="3oM_SD" id="589APehYy3Z" role="1PaTwD">
                <property role="3oM_SC" value="logicalContext" />
              </node>
              <node concept="3oM_SD" id="589APehYy40" role="1PaTwD">
                <property role="3oM_SC" value="not" />
              </node>
              <node concept="3oM_SD" id="589APehYy41" role="1PaTwD">
                <property role="3oM_SC" value="used?" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="2UGjFq4m8A3" role="3cqZAp">
            <node concept="1rXfSq" id="2UGjFq4m8A4" role="3cqZAk">
              <ref role="37wK5l" node="2UGjFq4lTDy" resolve="doAsk" />
              <node concept="2OqwBi" id="2UGjFq4m8A5" role="37wK5m">
                <node concept="2OqwBi" id="2UGjFq4m8A6" role="2Oq$k0">
                  <node concept="37vLTw" id="2UGjFq4m8A7" role="2Oq$k0">
                    <ref role="3cqZAo" node="2UGjFq4m5q1" resolve="invocation" />
                  </node>
                  <node concept="liA8E" id="2UGjFq4m8A8" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments()" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="2UGjFq4m8A9" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                  <node concept="3cmrfG" id="2UGjFq4m8Aa" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2UGjFq4m8Ab" role="37wK5m">
                <node concept="2OqwBi" id="2UGjFq4m8Ac" role="2Oq$k0">
                  <node concept="37vLTw" id="2UGjFq4m8Ad" role="2Oq$k0">
                    <ref role="3cqZAo" node="2UGjFq4m5q1" resolve="invocation" />
                  </node>
                  <node concept="liA8E" id="2UGjFq4m8Ae" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments()" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="2UGjFq4m8Af" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                  <node concept="3cmrfG" id="2UGjFq4m8Ag" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2rIdnPtNsRg" role="jymVt" />
      <node concept="3clFb_" id="2UGjFq4lTDy" role="jymVt">
        <property role="TrG5h" value="doAsk" />
        <node concept="3Tmbuc" id="6yEjedm66M5" role="1B3o_S" />
        <node concept="10P_77" id="2UGjFq4lTD$" role="3clF45" />
        <node concept="37vLTG" id="2UGjFq4lTDc" role="3clF46">
          <property role="TrG5h" value="left" />
          <node concept="3uibUv" id="2UGjFq4lTDd" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="2UGjFq4lTDe" role="3clF46">
          <property role="TrG5h" value="right" />
          <node concept="3uibUv" id="2UGjFq4lTDf" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3clFbS" id="2UGjFq4lTBT" role="3clF47">
          <node concept="3clFbJ" id="2UGjFq4lTBU" role="3cqZAp">
            <node concept="3clFbS" id="2UGjFq4lTBV" role="3clFbx">
              <node concept="3cpWs6" id="2UGjFq4lTBW" role="3cqZAp">
                <node concept="1rXfSq" id="2UGjFq4lTBX" role="3cqZAk">
                  <ref role="37wK5l" node="6GYQG_SpvAS" resolve="askUni_val_val" />
                  <node concept="10QFUN" id="2UGjFq4lTBY" role="37wK5m">
                    <node concept="37vLTw" id="2UGjFq4lTDj" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lTDc" resolve="left" />
                    </node>
                    <node concept="16syzq" id="2UGjFq4lTC0" role="10QFUM">
                      <ref role="16sUi3" node="2UGjFq4lWIN" resolve="TERM" />
                    </node>
                  </node>
                  <node concept="10QFUN" id="2UGjFq4lTC1" role="37wK5m">
                    <node concept="16syzq" id="2UGjFq4lTC2" role="10QFUM">
                      <ref role="16sUi3" node="2UGjFq4lWIN" resolve="TERM" />
                    </node>
                    <node concept="37vLTw" id="2UGjFq4lTDs" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lTDe" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2UGjFq4lTC4" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="2UGjFq4lTC5" role="3clFbw">
              <node concept="2ZW3vV" id="2UGjFq4lTC6" role="3uHU7w">
                <node concept="3uibUv" id="2UGjFq4lTC7" role="2ZW6by">
                  <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                </node>
                <node concept="37vLTw" id="2UGjFq4lTDq" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4lTDe" resolve="right" />
                </node>
              </node>
              <node concept="2ZW3vV" id="2UGjFq4lTC9" role="3uHU7B">
                <node concept="3uibUv" id="2UGjFq4lTCa" role="2ZW6by">
                  <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                </node>
                <node concept="37vLTw" id="2UGjFq4lTDh" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4lTDc" resolve="left" />
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="2UGjFq4lTCc" role="3eNLev">
              <node concept="3clFbS" id="2UGjFq4lTCd" role="3eOfB_">
                <node concept="3cpWs6" id="2UGjFq4lTCe" role="3cqZAp">
                  <node concept="1rXfSq" id="2UGjFq4lTCf" role="3cqZAk">
                    <ref role="37wK5l" node="4U_yxogC1eF" resolve="askUni_val_logical" />
                    <node concept="10QFUN" id="2UGjFq4lTCg" role="37wK5m">
                      <node concept="37vLTw" id="2UGjFq4lTDm" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4lTDc" resolve="left" />
                      </node>
                      <node concept="16syzq" id="2UGjFq4lTCi" role="10QFUM">
                        <ref role="16sUi3" node="2UGjFq4lWIN" resolve="TERM" />
                      </node>
                    </node>
                    <node concept="10QFUN" id="2UGjFq4lTCj" role="37wK5m">
                      <node concept="3uibUv" id="2UGjFq4lTCk" role="10QFUM">
                        <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                        <node concept="16syzq" id="2UGjFq4lTCl" role="11_B2D">
                          <ref role="16sUi3" node="2UGjFq4lWIN" resolve="TERM" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2UGjFq4lTDt" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4lTDe" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2UGjFq4lTCn" role="3cqZAp" />
              </node>
              <node concept="1Wc70l" id="2UGjFq4lTCo" role="3eO9$A">
                <node concept="2ZW3vV" id="2UGjFq4lTCp" role="3uHU7w">
                  <node concept="3uibUv" id="5cDlfXt7dlz" role="2ZW6by">
                    <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                  </node>
                  <node concept="37vLTw" id="2UGjFq4lTDg" role="2ZW6bz">
                    <ref role="3cqZAo" node="2UGjFq4lTDe" resolve="right" />
                  </node>
                </node>
                <node concept="2ZW3vV" id="2UGjFq4lTCs" role="3uHU7B">
                  <node concept="3uibUv" id="2UGjFq4lTCt" role="2ZW6by">
                    <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                  </node>
                  <node concept="37vLTw" id="2UGjFq4lTDk" role="2ZW6bz">
                    <ref role="3cqZAo" node="2UGjFq4lTDc" resolve="left" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="2UGjFq4lTCv" role="3eNLev">
              <node concept="3clFbS" id="2UGjFq4lTCw" role="3eOfB_">
                <node concept="3cpWs6" id="2UGjFq4lTCx" role="3cqZAp">
                  <node concept="1rXfSq" id="2UGjFq4lTCy" role="3cqZAk">
                    <ref role="37wK5l" node="4U_yxogC1Eh" resolve="askUni_logical_val" />
                    <node concept="10QFUN" id="2UGjFq4lTCz" role="37wK5m">
                      <node concept="37vLTw" id="2UGjFq4lTDu" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4lTDc" resolve="left" />
                      </node>
                      <node concept="3uibUv" id="2UGjFq4lTC_" role="10QFUM">
                        <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                        <node concept="16syzq" id="2UGjFq4lTCA" role="11_B2D">
                          <ref role="16sUi3" node="2UGjFq4lWIN" resolve="TERM" />
                        </node>
                      </node>
                    </node>
                    <node concept="10QFUN" id="2UGjFq4lTCB" role="37wK5m">
                      <node concept="16syzq" id="2UGjFq4lTCC" role="10QFUM">
                        <ref role="16sUi3" node="2UGjFq4lWIN" resolve="TERM" />
                      </node>
                      <node concept="37vLTw" id="2UGjFq4lTDv" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4lTDe" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2UGjFq4lTCE" role="3cqZAp" />
              </node>
              <node concept="1Wc70l" id="2UGjFq4lTCF" role="3eO9$A">
                <node concept="2ZW3vV" id="2UGjFq4lTCG" role="3uHU7w">
                  <node concept="3uibUv" id="2UGjFq4lTCH" role="2ZW6by">
                    <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                  </node>
                  <node concept="37vLTw" id="2UGjFq4lTDn" role="2ZW6bz">
                    <ref role="3cqZAo" node="2UGjFq4lTDe" resolve="right" />
                  </node>
                </node>
                <node concept="2ZW3vV" id="2UGjFq4lTCJ" role="3uHU7B">
                  <node concept="3uibUv" id="5cDlfXt7eh8" role="2ZW6by">
                    <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                  </node>
                  <node concept="37vLTw" id="2UGjFq4lTDl" role="2ZW6bz">
                    <ref role="3cqZAo" node="2UGjFq4lTDc" resolve="left" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="2UGjFq4lTCM" role="3eNLev">
              <node concept="3clFbS" id="2UGjFq4lTCN" role="3eOfB_">
                <node concept="3cpWs6" id="2UGjFq4lTCO" role="3cqZAp">
                  <node concept="1rXfSq" id="2UGjFq4lTCP" role="3cqZAk">
                    <ref role="37wK5l" node="4U_yxogC2zx" resolve="ask_logical_logical" />
                    <node concept="10QFUN" id="2UGjFq4lTCQ" role="37wK5m">
                      <node concept="37vLTw" id="2UGjFq4lTDr" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4lTDc" resolve="left" />
                      </node>
                      <node concept="3uibUv" id="2UGjFq4lTCS" role="10QFUM">
                        <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                        <node concept="16syzq" id="2UGjFq4lTCT" role="11_B2D">
                          <ref role="16sUi3" node="2UGjFq4lWIN" resolve="TERM" />
                        </node>
                      </node>
                    </node>
                    <node concept="10QFUN" id="2UGjFq4lTCU" role="37wK5m">
                      <node concept="3uibUv" id="2UGjFq4lTCV" role="10QFUM">
                        <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                        <node concept="16syzq" id="2UGjFq4lTCW" role="11_B2D">
                          <ref role="16sUi3" node="2UGjFq4lWIN" resolve="TERM" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2UGjFq4lTDi" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4lTDe" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2UGjFq4lTCY" role="3cqZAp" />
              </node>
              <node concept="1Wc70l" id="2UGjFq4lTCZ" role="3eO9$A">
                <node concept="2ZW3vV" id="2UGjFq4lTD0" role="3uHU7w">
                  <node concept="3uibUv" id="5cDlfXt7fg3" role="2ZW6by">
                    <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                  </node>
                  <node concept="37vLTw" id="2UGjFq4lTDp" role="2ZW6bz">
                    <ref role="3cqZAo" node="2UGjFq4lTDe" resolve="right" />
                  </node>
                </node>
                <node concept="2ZW3vV" id="2UGjFq4lTD3" role="3uHU7B">
                  <node concept="3uibUv" id="5cDlfXt7fd7" role="2ZW6by">
                    <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                  </node>
                  <node concept="37vLTw" id="2UGjFq4lTDo" role="2ZW6bz">
                    <ref role="3cqZAo" node="2UGjFq4lTDc" resolve="left" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="2UGjFq4lTD6" role="9aQIa">
              <node concept="3clFbS" id="2UGjFq4lTD7" role="9aQI4">
                <node concept="YS8fn" id="2UGjFq4lTD8" role="3cqZAp">
                  <node concept="2ShNRf" id="2UGjFq4lTD9" role="YScLw">
                    <node concept="1pGfFk" id="2UGjFq4lTDa" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                      <node concept="Xl_RD" id="2UGjFq4lTDb" role="37wK5m">
                        <property role="Xl_RC" value="invalid arguments" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="2UGjFq4lWIN" role="16eVyc">
          <property role="TrG5h" value="TERM" />
          <node concept="3uibUv" id="2UGjFq4lWIO" role="3ztrMU">
            <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2UGjFq4mgxO" role="jymVt" />
      <node concept="3clFb_" id="2UGjFq4mhEN" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="tell" />
        <node concept="3cqZAl" id="2UGjFq4mhEO" role="3clF45" />
        <node concept="3Tm1VV" id="2UGjFq4mhEP" role="1B3o_S" />
        <node concept="37vLTG" id="2UGjFq4mhER" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="2UGjFq4mhES" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3clFbS" id="2UGjFq4mhEU" role="3clF47">
          <node concept="YS8fn" id="2gPa6JH_wMo" role="3cqZAp">
            <node concept="2ShNRf" id="2gPa6JH_z5J" role="YScLw">
              <node concept="1pGfFk" id="2gPa6JH_CA3" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2gPa6JH_nyX" role="jymVt" />
      <node concept="3clFb_" id="2gPa6JH_g0T" role="jymVt">
        <property role="TrG5h" value="tryTell" />
        <node concept="3Tm1VV" id="2gPa6JH_g0V" role="1B3o_S" />
        <node concept="3uibUv" id="2gPa6JH_g0X" role="3clF45">
          <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
        </node>
        <node concept="37vLTG" id="2gPa6JH_g0Y" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="2gPa6JH_g0Z" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3clFbS" id="2gPa6JH_g10" role="3clF47">
          <node concept="3clFbF" id="2UGjFq4mjW$" role="3cqZAp">
            <node concept="1rXfSq" id="2UGjFq4mjW_" role="3clFbG">
              <ref role="37wK5l" node="2UGjFq4mbmq" resolve="doTell" />
              <node concept="2OqwBi" id="2UGjFq4mjWA" role="37wK5m">
                <node concept="2OqwBi" id="2UGjFq4mjWB" role="2Oq$k0">
                  <node concept="37vLTw" id="2gPa6JH_L8z" role="2Oq$k0">
                    <ref role="3cqZAo" node="2gPa6JH_g0Y" resolve="invocation" />
                  </node>
                  <node concept="liA8E" id="2UGjFq4mjWD" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments()" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="2UGjFq4mjWE" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                  <node concept="3cmrfG" id="2UGjFq4mjWF" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2UGjFq4mjWG" role="37wK5m">
                <node concept="2OqwBi" id="2UGjFq4mjWH" role="2Oq$k0">
                  <node concept="37vLTw" id="2gPa6JH_OQ0" role="2Oq$k0">
                    <ref role="3cqZAo" node="2gPa6JH_g0Y" resolve="invocation" />
                  </node>
                  <node concept="liA8E" id="2UGjFq4mjWJ" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments()" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="2UGjFq4mjWK" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                  <node concept="3cmrfG" id="2UGjFq4mjWL" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2gPa6JH_g11" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2UGjFq4mcDg" role="jymVt" />
      <node concept="3clFb_" id="2rIdnPtNuu2" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="tell" />
        <node concept="37vLTG" id="2rIdnPtNuQG" role="3clF46">
          <property role="TrG5h" value="left" />
          <node concept="3uibUv" id="2rIdnPtNuQH" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="2rIdnPtNuQI" role="3clF46">
          <property role="TrG5h" value="right" />
          <node concept="3uibUv" id="2rIdnPtNuQJ" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3cqZAl" id="2rIdnPtNuu3" role="3clF45" />
        <node concept="3Tm1VV" id="2rIdnPtNuu4" role="1B3o_S" />
        <node concept="3clFbS" id="2rIdnPtNuu7" role="3clF47">
          <node concept="3clFbF" id="2rIdnPtNuu8" role="3cqZAp">
            <node concept="1rXfSq" id="2rIdnPtNuu9" role="3clFbG">
              <ref role="37wK5l" node="2UGjFq4mbmq" resolve="doTell" />
              <node concept="37vLTw" id="2rIdnPtNw7C" role="37wK5m">
                <ref role="3cqZAo" node="2rIdnPtNuQG" resolve="left" />
              </node>
              <node concept="37vLTw" id="2rIdnPtNwaI" role="37wK5m">
                <ref role="3cqZAo" node="2rIdnPtNuQI" resolve="right" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2rIdnPtNuu1" role="jymVt" />
      <node concept="3clFb_" id="2UGjFq4mbmq" role="jymVt">
        <property role="TrG5h" value="doTell" />
        <node concept="3Tmbuc" id="6yEjedm67P8" role="1B3o_S" />
        <node concept="3uibUv" id="2gPa6JH_SlL" role="3clF45">
          <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
        </node>
        <node concept="37vLTG" id="2UGjFq4mbm4" role="3clF46">
          <property role="TrG5h" value="left" />
          <node concept="3uibUv" id="2UGjFq4mbm5" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="2UGjFq4mbm6" role="3clF46">
          <property role="TrG5h" value="right" />
          <node concept="3uibUv" id="2UGjFq4mbm7" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3clFbS" id="2UGjFq4mbkL" role="3clF47">
          <node concept="3clFbJ" id="5TfjU0x$Mm1" role="3cqZAp">
            <node concept="3clFbS" id="5TfjU0x$Mm2" role="3clFbx">
              <node concept="3cpWs6" id="2gPa6JH_X$Q" role="3cqZAp">
                <node concept="1rXfSq" id="5TfjU0x$Mm4" role="3cqZAk">
                  <ref role="37wK5l" node="4U_yxogC05I" resolve="tellUni_logical_logical" />
                  <node concept="10QFUN" id="5TfjU0x$Mm5" role="37wK5m">
                    <node concept="37vLTw" id="5TfjU0x$Mm6" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4mbm4" resolve="left" />
                    </node>
                    <node concept="3uibUv" id="5TfjU0x$Mm7" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                      <node concept="16syzq" id="5TfjU0x_9T$" role="11_B2D">
                        <ref role="16sUi3" node="5TfjU0x_7hm" resolve="T" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="5TfjU0x$Mm9" role="37wK5m">
                    <node concept="3uibUv" id="5TfjU0x$Mma" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                      <node concept="16syzq" id="5TfjU0x_abK" role="11_B2D">
                        <ref role="16sUi3" node="5TfjU0x_7hm" resolve="T" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="5TfjU0x$Mmc" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4mbm6" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5TfjU0x$Mmd" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="5TfjU0x$Mme" role="3clFbw">
              <node concept="2ZW3vV" id="5TfjU0x$Mmf" role="3uHU7w">
                <node concept="3uibUv" id="5TfjU0x$Mmg" role="2ZW6by">
                  <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                </node>
                <node concept="37vLTw" id="5TfjU0x$Mmh" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4mbm6" resolve="right" />
                </node>
              </node>
              <node concept="2ZW3vV" id="5TfjU0x$Mmi" role="3uHU7B">
                <node concept="3uibUv" id="5TfjU0x$Mmj" role="2ZW6by">
                  <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                </node>
                <node concept="37vLTw" id="5TfjU0x$Mmk" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4mbm4" resolve="left" />
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="5TfjU0x$Mml" role="3eNLev">
              <node concept="3clFbS" id="5TfjU0x$Mmm" role="3eOfB_">
                <node concept="3cpWs6" id="2gPa6JHA2vn" role="3cqZAp">
                  <node concept="1rXfSq" id="5TfjU0x$Mmo" role="3cqZAk">
                    <ref role="37wK5l" node="4U_yxogBZLB" resolve="tellUni_logical_val" />
                    <node concept="10QFUN" id="5TfjU0x$Mmp" role="37wK5m">
                      <node concept="37vLTw" id="5TfjU0x$Mmq" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4mbm4" resolve="left" />
                      </node>
                      <node concept="3uibUv" id="5TfjU0x$Mmr" role="10QFUM">
                        <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                        <node concept="16syzq" id="5TfjU0x_aKF" role="11_B2D">
                          <ref role="16sUi3" node="5TfjU0x_7hm" resolve="T" />
                        </node>
                      </node>
                    </node>
                    <node concept="10QFUN" id="5TfjU0x$Mmt" role="37wK5m">
                      <node concept="16syzq" id="5TfjU0x_aMf" role="10QFUM">
                        <ref role="16sUi3" node="5TfjU0x_7hm" resolve="T" />
                      </node>
                      <node concept="37vLTw" id="5TfjU0x$Mmv" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4mbm6" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="5TfjU0x$Mmw" role="3cqZAp" />
              </node>
              <node concept="1Wc70l" id="5TfjU0x$Mmx" role="3eO9$A">
                <node concept="3fqX7Q" id="5TfjU0x$Mmy" role="3uHU7w">
                  <node concept="1eOMI4" id="5TfjU0x$Mmz" role="3fr31v">
                    <node concept="2ZW3vV" id="5TfjU0x$Mm$" role="1eOMHV">
                      <node concept="3uibUv" id="5TfjU0x$Mm_" role="2ZW6by">
                        <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                      </node>
                      <node concept="37vLTw" id="5TfjU0x$MmA" role="2ZW6bz">
                        <ref role="3cqZAo" node="2UGjFq4mbm6" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="5TfjU0x$MmB" role="3uHU7B">
                  <node concept="3uibUv" id="5TfjU0x$MmC" role="2ZW6by">
                    <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                  </node>
                  <node concept="37vLTw" id="5TfjU0x$MmD" role="2ZW6bz">
                    <ref role="3cqZAo" node="2UGjFq4mbm4" resolve="left" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="5TfjU0x$MmE" role="3eNLev">
              <node concept="3clFbS" id="5TfjU0x$MmF" role="3eOfB_">
                <node concept="3cpWs6" id="2gPa6JHA7$Z" role="3cqZAp">
                  <node concept="1rXfSq" id="5TfjU0x$MmH" role="3cqZAk">
                    <ref role="37wK5l" node="4U_yxogBZsK" resolve="tellUni_val_logical" />
                    <node concept="10QFUN" id="5TfjU0x$MmI" role="37wK5m">
                      <node concept="16syzq" id="5TfjU0x_jDc" role="10QFUM">
                        <ref role="16sUi3" node="5TfjU0x_7hm" resolve="T" />
                      </node>
                      <node concept="37vLTw" id="5TfjU0x$MmK" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4mbm4" resolve="left" />
                      </node>
                    </node>
                    <node concept="10QFUN" id="5TfjU0x$MmL" role="37wK5m">
                      <node concept="3uibUv" id="5TfjU0x$MmM" role="10QFUM">
                        <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                        <node concept="16syzq" id="5TfjU0x_jF0" role="11_B2D">
                          <ref role="16sUi3" node="5TfjU0x_7hm" resolve="T" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="5TfjU0x$MmO" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4mbm6" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="5TfjU0x$MmP" role="3cqZAp" />
              </node>
              <node concept="1Wc70l" id="5TfjU0x$MmQ" role="3eO9$A">
                <node concept="2ZW3vV" id="5TfjU0x$MmR" role="3uHU7w">
                  <node concept="3uibUv" id="5TfjU0x$MmS" role="2ZW6by">
                    <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                  </node>
                  <node concept="37vLTw" id="5TfjU0x$MmT" role="2ZW6bz">
                    <ref role="3cqZAo" node="2UGjFq4mbm6" resolve="right" />
                  </node>
                </node>
                <node concept="3fqX7Q" id="5TfjU0x$MmU" role="3uHU7B">
                  <node concept="1eOMI4" id="5TfjU0x$MmV" role="3fr31v">
                    <node concept="2ZW3vV" id="5TfjU0x$MmW" role="1eOMHV">
                      <node concept="3uibUv" id="5TfjU0x$MmX" role="2ZW6by">
                        <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                      </node>
                      <node concept="37vLTw" id="5TfjU0x$MmY" role="2ZW6bz">
                        <ref role="3cqZAo" node="2UGjFq4mbm4" resolve="left" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="5TfjU0x$Mnm" role="9aQIa">
              <node concept="3clFbS" id="5TfjU0x$Mnn" role="9aQI4">
                <node concept="3cpWs6" id="2gPa6JHAbln" role="3cqZAp">
                  <node concept="1rXfSq" id="5TfjU0x$Mn4" role="3cqZAk">
                    <ref role="37wK5l" node="6GYQG_SpvAG" resolve="tellUni_val_val" />
                    <node concept="10QFUN" id="5TfjU0x$Mn5" role="37wK5m">
                      <node concept="16syzq" id="5TfjU0x_l26" role="10QFUM">
                        <ref role="16sUi3" node="5TfjU0x_7hm" resolve="T" />
                      </node>
                      <node concept="37vLTw" id="5TfjU0x$Mn7" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4mbm4" resolve="left" />
                      </node>
                    </node>
                    <node concept="10QFUN" id="5TfjU0x$Mn8" role="37wK5m">
                      <node concept="16syzq" id="5TfjU0x_l4S" role="10QFUM">
                        <ref role="16sUi3" node="5TfjU0x_7hm" resolve="T" />
                      </node>
                      <node concept="37vLTw" id="5TfjU0x$Mna" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4mbm6" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="5TfjU0x_7hm" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
      </node>
      <node concept="2tJIrI" id="4xBopTzmvIq" role="jymVt" />
      <node concept="3clFb_" id="6GYQG_SpvAG" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="tellUni_val_val" />
        <node concept="37vLTG" id="6GYQG_SpvAH" role="3clF46">
          <property role="TrG5h" value="leftVal" />
          <node concept="16syzq" id="5TfjU0xzQSB" role="1tU5fm">
            <ref role="16sUi3" node="5TfjU0xzNnP" resolve="T" />
          </node>
        </node>
        <node concept="37vLTG" id="6GYQG_SpvAJ" role="3clF46">
          <property role="TrG5h" value="rightVal" />
          <node concept="16syzq" id="5TfjU0xzSA0" role="1tU5fm">
            <ref role="16sUi3" node="5TfjU0xzNnP" resolve="T" />
          </node>
        </node>
        <node concept="3uibUv" id="2gPa6JHAgDJ" role="3clF45">
          <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
        </node>
        <node concept="3Tm6S6" id="3gNap3fZftQ" role="1B3o_S" />
        <node concept="3clFbS" id="6GYQG_SpvAR" role="3clF47">
          <node concept="3clFbJ" id="5TfjU0x$3Wv" role="3cqZAp">
            <node concept="3clFbS" id="5TfjU0x$3Wx" role="3clFbx">
              <node concept="3cpWs8" id="7K4Mb_J$cIA" role="3cqZAp">
                <node concept="3cpWsn" id="7K4Mb_J$cIB" role="3cpWs9">
                  <property role="TrG5h" value="subs" />
                  <node concept="3uibUv" id="7K4Mb_J$cIC" role="1tU5fm">
                    <ref role="3uigEE" to="yt73:~Substitution" resolve="Substitution" />
                  </node>
                  <node concept="2OqwBi" id="6OkhGGhHPa$" role="33vP2m">
                    <node concept="10M0yZ" id="6OkhGGhHOO5" role="2Oq$k0">
                      <ref role="1PxDUh" to="yt73:~Unification" resolve="Unification" />
                      <ref role="3cqZAo" to="yt73:~Unification.INSTANCE" resolve="INSTANCE" />
                    </node>
                    <node concept="liA8E" id="6OkhGGhHPxp" role="2OqNvi">
                      <ref role="37wK5l" to="yt73:~Unification.unify(jetbrains.mps.unification.Term,jetbrains.mps.unification.Term)" resolve="unify" />
                      <node concept="1eOMI4" id="5TfjU0x$pu8" role="37wK5m">
                        <node concept="10QFUN" id="5TfjU0x$pu5" role="1eOMHV">
                          <node concept="3uibUv" id="5TfjU0x$pua" role="10QFUM">
                            <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                          </node>
                          <node concept="37vLTw" id="5TfjU0x$puh" role="10QFUP">
                            <ref role="3cqZAo" node="6GYQG_SpvAH" resolve="leftVal" />
                          </node>
                        </node>
                      </node>
                      <node concept="1eOMI4" id="5TfjU0x$rdb" role="37wK5m">
                        <node concept="10QFUN" id="5TfjU0x$rd8" role="1eOMHV">
                          <node concept="3uibUv" id="5TfjU0x$rdd" role="10QFUM">
                            <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                          </node>
                          <node concept="37vLTw" id="5TfjU0x$rdk" role="10QFUP">
                            <ref role="3cqZAo" node="6GYQG_SpvAJ" resolve="rightVal" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6SkxsMzEdRd" role="3cqZAp">
                <node concept="3clFbS" id="6SkxsMzEdRg" role="3clFbx">
                  <node concept="3cpWs6" id="2gPa6JHBfNC" role="3cqZAp">
                    <node concept="2YIFZM" id="2gPa6JHBsIN" role="3cqZAk">
                      <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
                      <ref role="37wK5l" to="w7la:~Solver$Result.FAIL(java.lang.String)" resolve="FAIL" />
                      <node concept="3cpWs3" id="2gPa6JHBxlA" role="37wK5m">
                        <node concept="3cpWs3" id="2gPa6JHBxlB" role="3uHU7B">
                          <node concept="3cpWs3" id="2gPa6JHBxlC" role="3uHU7B">
                            <node concept="3cpWs3" id="2gPa6JHBxlD" role="3uHU7B">
                              <node concept="3cpWs3" id="2gPa6JHBxlE" role="3uHU7B">
                                <node concept="Xl_RD" id="2gPa6JHBxlF" role="3uHU7B">
                                  <property role="Xl_RC" value="Cannot unify " />
                                </node>
                                <node concept="37vLTw" id="2gPa6JHBxlG" role="3uHU7w">
                                  <ref role="3cqZAo" node="6GYQG_SpvAH" resolve="leftVal" />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="2gPa6JHBxlH" role="3uHU7w">
                                <property role="Xl_RC" value=" and " />
                              </node>
                            </node>
                            <node concept="37vLTw" id="2gPa6JHBxlI" role="3uHU7w">
                              <ref role="3cqZAo" node="6GYQG_SpvAJ" resolve="rightVal" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="2gPa6JHBxlJ" role="3uHU7w">
                            <property role="Xl_RC" value=": " />
                          </node>
                        </node>
                        <node concept="1rXfSq" id="2gPa6JHBxlK" role="3uHU7w">
                          <ref role="37wK5l" node="1MWQR5SpMLA" resolve="formatMessage" />
                          <node concept="37vLTw" id="2gPa6JHBxlL" role="37wK5m">
                            <ref role="3cqZAo" node="7K4Mb_J$cIB" resolve="subs" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="2gPa6JHBDYG" role="3cqZAp" />
                </node>
                <node concept="3fqX7Q" id="6SkxsMzEe76" role="3clFbw">
                  <node concept="2OqwBi" id="6SkxsMzEeju" role="3fr31v">
                    <node concept="37vLTw" id="6SkxsMzEehu" role="2Oq$k0">
                      <ref role="3cqZAo" node="7K4Mb_J$cIB" resolve="subs" />
                    </node>
                    <node concept="liA8E" id="6SkxsMzEepC" role="2OqNvi">
                      <ref role="37wK5l" to="yt73:~Substitution.isSuccessful()" resolve="isSuccessful" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6SkxsMzEiLZ" role="3cqZAp" />
              <node concept="1DcWWT" id="6SkxsMzDp24" role="3cqZAp">
                <node concept="3clFbS" id="6SkxsMzDp25" role="2LFqv$">
                  <node concept="3cpWs8" id="1Ns6gpY7SoW" role="3cqZAp">
                    <node concept="3cpWsn" id="1Ns6gpY7SoX" role="3cpWs9">
                      <property role="TrG5h" value="bvar" />
                      <node concept="3uibUv" id="6MYr6JwRXQ1" role="1tU5fm">
                        <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                      </node>
                      <node concept="2OqwBi" id="1Ns6gpY7SoY" role="33vP2m">
                        <node concept="37vLTw" id="1Ns6gpY7SoZ" role="2Oq$k0">
                          <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                        </node>
                        <node concept="liA8E" id="1Ns6gpY7Sp0" role="2OqNvi">
                          <ref role="37wK5l" to="yt73:~Substitution$Binding.var()" resolve="var" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="7FFmDVAJHGS" role="3cqZAp">
                    <node concept="2OqwBi" id="6MYr6JwRQi2" role="3clFbw">
                      <node concept="Xjq3P" id="3gNap3fzDwH" role="2Oq$k0" />
                      <node concept="liA8E" id="6MYr6JwRQjW" role="2OqNvi">
                        <ref role="37wK5l" node="3FIATxbQg_7" resolve="isLogicalTerm" />
                        <node concept="37vLTw" id="6MYr6JwRQlP" role="37wK5m">
                          <ref role="3cqZAo" node="1Ns6gpY7SoX" resolve="bvar" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="3gNap3fZidt" role="3clFbx">
                      <node concept="3cpWs8" id="6MYr6JwRS$G" role="3cqZAp">
                        <node concept="3cpWsn" id="6MYr6JwRS$H" role="3cpWs9">
                          <property role="TrG5h" value="bvarLogical" />
                          <node concept="3uibUv" id="6MYr6JwRS$v" role="1tU5fm">
                            <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                            <node concept="3uibUv" id="6MYr6JwSaxS" role="11_B2D">
                              <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="6MYr6JwRS$I" role="33vP2m">
                            <node concept="Xjq3P" id="3gNap3fzIt_" role="2Oq$k0" />
                            <node concept="liA8E" id="6MYr6JwRS$K" role="2OqNvi">
                              <ref role="37wK5l" node="3FIATxbQg$N" resolve="asLogicalTerm" />
                              <node concept="37vLTw" id="6MYr6JwRS$L" role="37wK5m">
                                <ref role="3cqZAo" node="1Ns6gpY7SoX" resolve="bvar" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="6MYr6JwSY_r" role="3cqZAp" />
                      <node concept="3clFbJ" id="6SkxsMzEpRs" role="3cqZAp">
                        <node concept="3clFbS" id="6SkxsMzEpRv" role="3clFbx">
                          <node concept="3cpWs8" id="2gPa6JHJJlg" role="3cqZAp">
                            <node concept="3cpWsn" id="2gPa6JHJJlh" role="3cpWs9">
                              <property role="TrG5h" value="uni" />
                              <node concept="3uibUv" id="2gPa6JHIP7e" role="1tU5fm">
                                <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
                              </node>
                              <node concept="1rXfSq" id="2gPa6JHJJli" role="33vP2m">
                                <ref role="37wK5l" node="4U_yxogBZLB" resolve="tellUni_logical_val" />
                                <node concept="37vLTw" id="2gPa6JHJJlj" role="37wK5m">
                                  <ref role="3cqZAo" node="6MYr6JwRS$H" resolve="bvarLogical" />
                                </node>
                                <node concept="2OqwBi" id="2gPa6JHJJlk" role="37wK5m">
                                  <node concept="37vLTw" id="2gPa6JHJJll" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                                  </node>
                                  <node concept="liA8E" id="2gPa6JHJJlm" role="2OqNvi">
                                    <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="2gPa6JHKlo6" role="3cqZAp">
                            <node concept="3clFbS" id="2gPa6JHKloq" role="3clFbx">
                              <node concept="3cpWs6" id="2gPa6JHBISk" role="3cqZAp">
                                <node concept="37vLTw" id="2gPa6JHJJln" role="3cqZAk">
                                  <ref role="3cqZAo" node="2gPa6JHJJlh" resolve="uni" />
                                </node>
                              </node>
                            </node>
                            <node concept="3fqX7Q" id="2gPa6JHK8CA" role="3clFbw">
                              <node concept="2OqwBi" id="2gPa6JHK8CC" role="3fr31v">
                                <node concept="37vLTw" id="2gPa6JHK8CD" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2gPa6JHJJlh" resolve="uni" />
                                </node>
                                <node concept="liA8E" id="2gPa6JHK8CE" role="2OqNvi">
                                  <ref role="37wK5l" to="w7la:~Solver$Result.isOk()" resolve="isOk" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="6SkxsMzF270" role="3cqZAp" />
                        </node>
                        <node concept="2OqwBi" id="6SkxsMzEpXG" role="3clFbw">
                          <node concept="2OqwBi" id="6SkxsMzFMgW" role="2Oq$k0">
                            <node concept="37vLTw" id="6SkxsMzFMgX" role="2Oq$k0">
                              <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                            </node>
                            <node concept="liA8E" id="6SkxsMzFMgY" role="2OqNvi">
                              <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                            </node>
                          </node>
                          <node concept="liA8E" id="56MMu0Ap5n2" role="2OqNvi">
                            <ref role="37wK5l" to="yt73:~Term.is(jetbrains.mps.unification.Term$Kind)" resolve="is" />
                            <node concept="Rm8GO" id="573vQv1oO8g" role="37wK5m">
                              <ref role="1Px2BO" to="yt73:~Term$Kind" resolve="Term.Kind" />
                              <ref role="Rm8GQ" to="yt73:~Term$Kind.FUN" resolve="FUN" />
                            </node>
                          </node>
                        </node>
                        <node concept="3eNFk2" id="6SkxsMzEv3z" role="3eNLev">
                          <node concept="2OqwBi" id="6SkxsMzEv9Q" role="3eO9$A">
                            <node concept="2OqwBi" id="6SkxsMzFMD6" role="2Oq$k0">
                              <node concept="37vLTw" id="6SkxsMzFMD7" role="2Oq$k0">
                                <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                              </node>
                              <node concept="liA8E" id="6SkxsMzFMD8" role="2OqNvi">
                                <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                              </node>
                            </node>
                            <node concept="liA8E" id="56MMu0ApUkU" role="2OqNvi">
                              <ref role="37wK5l" to="yt73:~Term.is(jetbrains.mps.unification.Term$Kind)" resolve="is" />
                              <node concept="Rm8GO" id="56MMu0ApUkV" role="37wK5m">
                                <ref role="1Px2BO" to="yt73:~Term$Kind" resolve="Term.Kind" />
                                <ref role="Rm8GQ" to="yt73:~Term$Kind.VAR" resolve="VAR" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="6SkxsMzEv3_" role="3eOfB_">
                            <node concept="3cpWs8" id="2gPa6JHKClg" role="3cqZAp">
                              <node concept="3cpWsn" id="2gPa6JHKClh" role="3cpWs9">
                                <property role="TrG5h" value="uni" />
                                <node concept="3uibUv" id="2gPa6JHK_Qi" role="1tU5fm">
                                  <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
                                </node>
                                <node concept="1rXfSq" id="2gPa6JHKCli" role="33vP2m">
                                  <ref role="37wK5l" node="4U_yxogC05I" resolve="tellUni_logical_logical" />
                                  <node concept="37vLTw" id="2gPa6JHKClj" role="37wK5m">
                                    <ref role="3cqZAo" node="6MYr6JwRS$H" resolve="bvarLogical" />
                                  </node>
                                  <node concept="2OqwBi" id="2gPa6JHKClk" role="37wK5m">
                                    <node concept="Xjq3P" id="2gPa6JHKCll" role="2Oq$k0" />
                                    <node concept="liA8E" id="2gPa6JHKClm" role="2OqNvi">
                                      <ref role="37wK5l" node="3FIATxbQg$N" resolve="asLogicalTerm" />
                                      <node concept="2OqwBi" id="2gPa6JHKCln" role="37wK5m">
                                        <node concept="37vLTw" id="2gPa6JHKClo" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                                        </node>
                                        <node concept="liA8E" id="2gPa6JHKClp" role="2OqNvi">
                                          <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="2gPa6JHL5lj" role="3cqZAp">
                              <node concept="3clFbS" id="2gPa6JHL5lB" role="3clFbx">
                                <node concept="3cpWs6" id="2gPa6JHBNQi" role="3cqZAp">
                                  <node concept="37vLTw" id="2gPa6JHKClq" role="3cqZAk">
                                    <ref role="3cqZAo" node="2gPa6JHKClh" resolve="uni" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3fqX7Q" id="2gPa6JHL1wN" role="3clFbw">
                                <node concept="2OqwBi" id="2gPa6JHL1wP" role="3fr31v">
                                  <node concept="37vLTw" id="2gPa6JHL1wQ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2gPa6JHKClh" resolve="uni" />
                                  </node>
                                  <node concept="liA8E" id="2gPa6JHL1wR" role="2OqNvi">
                                    <ref role="37wK5l" to="w7la:~Solver$Result.isOk()" resolve="isOk" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="3gNap3fZih_" role="3cqZAp" />
                    </node>
                    <node concept="3eNFk2" id="3gNap3fZiij" role="3eNLev">
                      <node concept="3clFbS" id="3gNap3fZiik" role="3eOfB_">
                        <node concept="3cpWs8" id="3gNap3fZiSO" role="3cqZAp">
                          <node concept="3cpWsn" id="3gNap3fZiSP" role="3cpWs9">
                            <property role="TrG5h" value="bvarLogical" />
                            <node concept="3uibUv" id="3gNap3fZiSQ" role="1tU5fm">
                              <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                              <node concept="3uibUv" id="3gNap3g018A" role="11_B2D">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="3gNap3fZiSS" role="33vP2m">
                              <node concept="Xjq3P" id="3gNap3fZiST" role="2Oq$k0" />
                              <node concept="liA8E" id="3gNap3fZiSU" role="2OqNvi">
                                <ref role="37wK5l" node="3gNap3fZimy" resolve="asLogicalValue" />
                                <node concept="37vLTw" id="3gNap3fZiSV" role="37wK5m">
                                  <ref role="3cqZAo" node="1Ns6gpY7SoX" resolve="bvar" />
                                </node>
                                <node concept="3uibUv" id="3gNap3g018w" role="3PaCim">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="3gNap3fZimp" role="3cqZAp" />
                        <node concept="3clFbJ" id="3gNap3fZkai" role="3cqZAp">
                          <node concept="3eNFk2" id="3gNap3fZk_$" role="3eNLev">
                            <node concept="2ZW3vV" id="3gNap3fZk$r" role="3eO9$A">
                              <node concept="3uibUv" id="3gNap3fZk$D" role="2ZW6by">
                                <ref role="3uigEE" to="cof4:2xQ7eRAD2dj" resolve="Value" />
                              </node>
                              <node concept="2OqwBi" id="3gNap3fZkgd" role="2ZW6bz">
                                <node concept="37vLTw" id="3gNap3fZkbt" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                                </node>
                                <node concept="liA8E" id="3gNap3fZkiL" role="2OqNvi">
                                  <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="3gNap3fZkak" role="3eOfB_">
                              <node concept="3cpWs8" id="3gNap3fZmj3" role="3cqZAp">
                                <node concept="3cpWsn" id="3gNap3fZmj4" role="3cpWs9">
                                  <property role="TrG5h" value="left" />
                                  <node concept="3uibUv" id="3gNap3fZmiC" role="1tU5fm">
                                    <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                                    <node concept="3uibUv" id="3gNap3g07tK" role="11_B2D">
                                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="3gNap3fZmj5" role="33vP2m">
                                    <node concept="37vLTw" id="3gNap3fZmj6" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3gNap3fZiSP" resolve="bvarLogical" />
                                    </node>
                                    <node concept="liA8E" id="3gNap3fZmj7" role="2OqNvi">
                                      <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="3gNap3fZluj" role="3cqZAp">
                                <node concept="3cpWsn" id="3gNap3fZluk" role="3cpWs9">
                                  <property role="TrG5h" value="value" />
                                  <node concept="3uibUv" id="3gNap3fZlug" role="1tU5fm">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                  <node concept="2OqwBi" id="3gNap3fZlul" role="33vP2m">
                                    <node concept="1eOMI4" id="3gNap3fZlum" role="2Oq$k0">
                                      <node concept="10QFUN" id="3gNap3fZlun" role="1eOMHV">
                                        <node concept="3uibUv" id="3gNap3fZluo" role="10QFUM">
                                          <ref role="3uigEE" to="cof4:2xQ7eRAD2dj" resolve="Value" />
                                        </node>
                                        <node concept="2OqwBi" id="3gNap3fZlup" role="10QFUP">
                                          <node concept="37vLTw" id="3gNap3fZluq" role="2Oq$k0">
                                            <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                                          </node>
                                          <node concept="liA8E" id="3gNap3fZlur" role="2OqNvi">
                                            <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="3gNap3fZlus" role="2OqNvi">
                                      <ref role="37wK5l" to="cof4:1msb0mq8QTt" resolve="symbol" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="3gNap3fZmqG" role="3cqZAp">
                                <node concept="3clFbS" id="3gNap3fZmqI" role="3clFbx">
                                  <node concept="3clFbJ" id="3gNap3fZp9j" role="3cqZAp">
                                    <node concept="3clFbS" id="3gNap3fZp9l" role="3clFbx">
                                      <node concept="3cpWs6" id="2gPa6JHCz4S" role="3cqZAp">
                                        <node concept="2YIFZM" id="2gPa6JHCJjq" role="3cqZAk">
                                          <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
                                          <ref role="37wK5l" to="w7la:~Solver$Result.FAIL(java.lang.String)" resolve="FAIL" />
                                          <node concept="3cpWs3" id="2gPa6JHCMJI" role="37wK5m">
                                            <node concept="3cpWs3" id="2gPa6JHCMJJ" role="3uHU7B">
                                              <node concept="3cpWs3" id="2gPa6JHCMJK" role="3uHU7B">
                                                <node concept="Xl_RD" id="2gPa6JHCMJL" role="3uHU7B">
                                                  <property role="Xl_RC" value="Values differ " />
                                                </node>
                                                <node concept="2OqwBi" id="2gPa6JHCMJM" role="3uHU7w">
                                                  <node concept="37vLTw" id="2gPa6JHCMJN" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="3gNap3fZmj4" resolve="left" />
                                                  </node>
                                                  <node concept="liA8E" id="2gPa6JHCMJO" role="2OqNvi">
                                                    <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="Xl_RD" id="2gPa6JHCMJP" role="3uHU7w">
                                                <property role="Xl_RC" value=" and " />
                                              </node>
                                            </node>
                                            <node concept="37vLTw" id="2gPa6JHCMJQ" role="3uHU7w">
                                              <ref role="3cqZAo" node="3gNap3fZluk" resolve="value" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbH" id="2gPa6JHCV$h" role="3cqZAp" />
                                    </node>
                                    <node concept="17QLQc" id="3gNap3fZpj9" role="3clFbw">
                                      <node concept="37vLTw" id="3gNap3fZpbe" role="3uHU7B">
                                        <ref role="3cqZAo" node="3gNap3fZluk" resolve="value" />
                                      </node>
                                      <node concept="2OqwBi" id="3gNap3fZpoN" role="3uHU7w">
                                        <node concept="37vLTw" id="3gNap3fZpk9" role="2Oq$k0">
                                          <ref role="3cqZAo" node="3gNap3fZmj4" resolve="left" />
                                        </node>
                                        <node concept="liA8E" id="3gNap3fZq0K" role="2OqNvi">
                                          <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbH" id="3gNap3fZqVb" role="3cqZAp" />
                                </node>
                                <node concept="2OqwBi" id="3gNap3fZm_z" role="3clFbw">
                                  <node concept="37vLTw" id="3gNap3fZms0" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3gNap3fZmj4" resolve="left" />
                                  </node>
                                  <node concept="liA8E" id="3gNap3fZnds" role="2OqNvi">
                                    <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                                  </node>
                                </node>
                                <node concept="9aQIb" id="3gNap3fZnen" role="9aQIa">
                                  <node concept="3clFbS" id="3gNap3fZneo" role="9aQI4">
                                    <node concept="3clFbF" id="3gNap3fZnfs" role="3cqZAp">
                                      <node concept="2OqwBi" id="3gNap3fZnk$" role="3clFbG">
                                        <node concept="37vLTw" id="3gNap3fZnfq" role="2Oq$k0">
                                          <ref role="3cqZAo" node="3gNap3fZmj4" resolve="left" />
                                        </node>
                                        <node concept="liA8E" id="3gNap3fZp4c" role="2OqNvi">
                                          <ref role="37wK5l" to="bj13:~MutableLogical.setValue(java.lang.Object)" resolve="setValue" />
                                          <node concept="37vLTw" id="3gNap3fZp55" role="37wK5m">
                                            <ref role="3cqZAo" node="3gNap3fZluk" resolve="value" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1rXfSq" id="3gNap3fZkBm" role="3clFbw">
                            <ref role="37wK5l" node="3gNap3fZhXk" resolve="isLogicalValue" />
                            <node concept="2OqwBi" id="3gNap3fZkFn" role="37wK5m">
                              <node concept="37vLTw" id="3gNap3fZkCf" role="2Oq$k0">
                                <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                              </node>
                              <node concept="liA8E" id="3gNap3fZkHV" role="2OqNvi">
                                <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="3gNap3fZk_A" role="3clFbx">
                            <node concept="3cpWs8" id="3gNap3fZrMr" role="3cqZAp">
                              <node concept="3cpWsn" id="3gNap3fZrMs" role="3cpWs9">
                                <property role="TrG5h" value="left" />
                                <node concept="3uibUv" id="3gNap3fZrM4" role="1tU5fm">
                                  <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                                  <node concept="3uibUv" id="3gNap3g07dj" role="11_B2D">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="3gNap3fZrMt" role="33vP2m">
                                  <node concept="37vLTw" id="3gNap3fZrMu" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3gNap3fZiSP" resolve="bvarLogical" />
                                  </node>
                                  <node concept="liA8E" id="3gNap3fZrMv" role="2OqNvi">
                                    <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="3gNap3fZkKQ" role="3cqZAp">
                              <node concept="3cpWsn" id="3gNap3fZkKR" role="3cpWs9">
                                <property role="TrG5h" value="right" />
                                <node concept="3uibUv" id="3gNap3fZkKS" role="1tU5fm">
                                  <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                                  <node concept="3uibUv" id="3gNap3g07gr" role="11_B2D">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="3gNap3fZrSS" role="33vP2m">
                                  <node concept="2OqwBi" id="3gNap3fZkKU" role="2Oq$k0">
                                    <node concept="Xjq3P" id="3gNap3fZkKV" role="2Oq$k0" />
                                    <node concept="liA8E" id="3gNap3fZkKW" role="2OqNvi">
                                      <ref role="37wK5l" node="3gNap3fZimy" resolve="asLogicalValue" />
                                      <node concept="2OqwBi" id="3gNap3fZkRU" role="37wK5m">
                                        <node concept="37vLTw" id="3gNap3fZkM8" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                                        </node>
                                        <node concept="liA8E" id="3gNap3fZkUu" role="2OqNvi">
                                          <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                                        </node>
                                      </node>
                                      <node concept="3uibUv" id="3gNap3g07gl" role="3PaCim">
                                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="3gNap3fZsjf" role="2OqNvi">
                                    <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="3gNap3fZskp" role="3cqZAp" />
                            <node concept="3clFbJ" id="3gNap3fZsmo" role="3cqZAp">
                              <node concept="3clFbS" id="3gNap3fZsmq" role="3clFbx">
                                <node concept="3clFbJ" id="3gNap3fZtZ0" role="3cqZAp">
                                  <node concept="3clFbS" id="3gNap3fZtZ1" role="3clFbx">
                                    <node concept="3cpWs6" id="2gPa6JHBWY1" role="3cqZAp">
                                      <node concept="2YIFZM" id="2gPa6JHCaNj" role="3cqZAk">
                                        <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
                                        <ref role="37wK5l" to="w7la:~Solver$Result.FAIL(java.lang.String)" resolve="FAIL" />
                                        <node concept="3cpWs3" id="2gPa6JHCefA" role="37wK5m">
                                          <node concept="3cpWs3" id="2gPa6JHCefB" role="3uHU7B">
                                            <node concept="3cpWs3" id="2gPa6JHCefC" role="3uHU7B">
                                              <node concept="Xl_RD" id="2gPa6JHCefD" role="3uHU7B">
                                                <property role="Xl_RC" value="Values differ " />
                                              </node>
                                              <node concept="2OqwBi" id="2gPa6JHCefE" role="3uHU7w">
                                                <node concept="37vLTw" id="2gPa6JHCefF" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="3gNap3fZrMs" resolve="left" />
                                                </node>
                                                <node concept="liA8E" id="2gPa6JHCefG" role="2OqNvi">
                                                  <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="Xl_RD" id="2gPa6JHCefH" role="3uHU7w">
                                              <property role="Xl_RC" value=" and " />
                                            </node>
                                          </node>
                                          <node concept="2OqwBi" id="2gPa6JHCefI" role="3uHU7w">
                                            <node concept="37vLTw" id="2gPa6JHCefJ" role="2Oq$k0">
                                              <ref role="3cqZAo" node="3gNap3fZkKR" resolve="right" />
                                            </node>
                                            <node concept="liA8E" id="2gPa6JHCefK" role="2OqNvi">
                                              <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbH" id="2gPa6JHCpif" role="3cqZAp" />
                                  </node>
                                  <node concept="17QLQc" id="3gNap3fZtZe" role="3clFbw">
                                    <node concept="37vLTw" id="3gNap3fZtZf" role="3uHU7B">
                                      <ref role="3cqZAo" node="6GYQG_SpvAJ" resolve="rightVal" />
                                    </node>
                                    <node concept="2OqwBi" id="3gNap3fZtZg" role="3uHU7w">
                                      <node concept="37vLTw" id="3gNap3fZtZh" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3gNap3fZrMs" resolve="left" />
                                      </node>
                                      <node concept="liA8E" id="3gNap3fZtZi" role="2OqNvi">
                                        <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="3gNap3fZuSi" role="3cqZAp" />
                              </node>
                              <node concept="1Wc70l" id="3gNap3fZth_" role="3clFbw">
                                <node concept="2OqwBi" id="3gNap3fZtqo" role="3uHU7w">
                                  <node concept="37vLTw" id="3gNap3fZtiA" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3gNap3fZkKR" resolve="right" />
                                  </node>
                                  <node concept="liA8E" id="3gNap3fZtYX" role="2OqNvi">
                                    <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="3gNap3fZsy2" role="3uHU7B">
                                  <node concept="37vLTw" id="3gNap3fZsnI" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3gNap3fZrMs" resolve="left" />
                                  </node>
                                  <node concept="liA8E" id="3gNap3fZt9V" role="2OqNvi">
                                    <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3eNFk2" id="7fidXgOaBTw" role="3eNLev">
                                <node concept="3clFbS" id="7fidXgOaBTx" role="3eOfB_">
                                  <node concept="3clFbF" id="7fidXgOaBTy" role="3cqZAp">
                                    <node concept="2OqwBi" id="7fidXgOaBTz" role="3clFbG">
                                      <node concept="37vLTw" id="7fidXgOaBT$" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3gNap3fZrMs" resolve="left" />
                                      </node>
                                      <node concept="liA8E" id="7fidXgOaBT_" role="2OqNvi">
                                        <ref role="37wK5l" to="bj13:~MutableLogical.union(jetbrains.mps.logic.reactor.logical.MutableLogical)" resolve="union" />
                                        <node concept="37vLTw" id="7fidXgOaBTA" role="37wK5m">
                                          <ref role="3cqZAo" node="3gNap3fZkKR" resolve="right" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3y3z36" id="7fidXgOaCdn" role="3eO9$A">
                                  <node concept="37vLTw" id="7fidXgOaCek" role="3uHU7w">
                                    <ref role="3cqZAo" node="3gNap3fZkKR" resolve="right" />
                                  </node>
                                  <node concept="37vLTw" id="7fidXgOaBU$" role="3uHU7B">
                                    <ref role="3cqZAo" node="3gNap3fZrMs" resolve="left" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="3gNap3fZkKL" role="3cqZAp" />
                          </node>
                        </node>
                      </node>
                      <node concept="1rXfSq" id="3gNap3fZijZ" role="3eO9$A">
                        <ref role="37wK5l" node="3gNap3fZhXk" resolve="isLogicalValue" />
                        <node concept="37vLTw" id="3gNap3fZikO" role="37wK5m">
                          <ref role="3cqZAo" node="1Ns6gpY7SoX" resolve="bvar" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="6SkxsMzDp28" role="1Duv9x">
                  <property role="TrG5h" value="bnd" />
                  <node concept="3uibUv" id="6SkxsMzDp2c" role="1tU5fm">
                    <ref role="3uigEE" to="yt73:~Substitution$Binding" resolve="Substitution.Binding" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6SkxsMzDp2d" role="1DdaDG">
                  <node concept="37vLTw" id="6SkxsMzDp2e" role="2Oq$k0">
                    <ref role="3cqZAo" node="7K4Mb_J$cIB" resolve="subs" />
                  </node>
                  <node concept="liA8E" id="6SkxsMzDp2f" role="2OqNvi">
                    <ref role="37wK5l" to="yt73:~Substitution.bindings()" resolve="bindings" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="6SkxsMzE_KM" role="3cqZAp">
                <node concept="1PaTwC" id="589APehYy42" role="1aUNEU">
                  <node concept="3oM_SD" id="589APehYy43" role="1PaTwD">
                    <property role="3oM_SC" value="unification" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy44" role="1PaTwD">
                    <property role="3oM_SC" value="succeeded" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy45" role="1PaTwD">
                    <property role="3oM_SC" value="and" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy46" role="1PaTwD">
                    <property role="3oM_SC" value="all" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy47" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy48" role="1PaTwD">
                    <property role="3oM_SC" value="bindings" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy49" role="1PaTwD">
                    <property role="3oM_SC" value="have" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy4a" role="1PaTwD">
                    <property role="3oM_SC" value="been" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy4b" role="1PaTwD">
                    <property role="3oM_SC" value="processed" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5TfjU0x$3Ww" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="5TfjU0x$gbc" role="3clFbw">
              <node concept="2ZW3vV" id="5TfjU0x$hTj" role="3uHU7w">
                <node concept="3uibUv" id="5TfjU0x$ihm" role="2ZW6by">
                  <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                </node>
                <node concept="37vLTw" id="5TfjU0x$htV" role="2ZW6bz">
                  <ref role="3cqZAo" node="6GYQG_SpvAJ" resolve="rightVal" />
                </node>
              </node>
              <node concept="2ZW3vV" id="5TfjU0x$9Q3" role="3uHU7B">
                <node concept="3uibUv" id="5TfjU0x$b3W" role="2ZW6by">
                  <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                </node>
                <node concept="37vLTw" id="5TfjU0x$677" role="2ZW6bz">
                  <ref role="3cqZAo" node="6GYQG_SpvAH" resolve="leftVal" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="5TfjU0x$wjI" role="9aQIa">
              <node concept="3clFbS" id="5TfjU0x$wjJ" role="9aQI4">
                <node concept="3clFbJ" id="5TfjU0x$$Lo" role="3cqZAp">
                  <node concept="17QLQc" id="5TfjU0x$$Lp" role="3clFbw">
                    <node concept="37vLTw" id="5TfjU0x$$Lq" role="3uHU7w">
                      <ref role="3cqZAo" node="6GYQG_SpvAJ" resolve="rightVal" />
                    </node>
                    <node concept="37vLTw" id="5TfjU0x$$Lr" role="3uHU7B">
                      <ref role="3cqZAo" node="6GYQG_SpvAH" resolve="leftVal" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="5TfjU0x$$Ls" role="3clFbx">
                    <node concept="3cpWs6" id="2gPa6JHApsw" role="3cqZAp">
                      <node concept="2YIFZM" id="2gPa6JHAAmz" role="3cqZAk">
                        <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
                        <ref role="37wK5l" to="w7la:~Solver$Result.FAIL(java.lang.String)" resolve="FAIL" />
                        <node concept="3cpWs3" id="2gPa6JHALSz" role="37wK5m">
                          <node concept="3cpWs3" id="2gPa6JHALS$" role="3uHU7B">
                            <node concept="3cpWs3" id="2gPa6JHALS_" role="3uHU7B">
                              <node concept="Xl_RD" id="2gPa6JHALSA" role="3uHU7B">
                                <property role="Xl_RC" value="Values differ " />
                              </node>
                              <node concept="37vLTw" id="2gPa6JHALSB" role="3uHU7w">
                                <ref role="3cqZAo" node="6GYQG_SpvAH" resolve="leftVal" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="2gPa6JHALSC" role="3uHU7w">
                              <property role="Xl_RC" value=" and " />
                            </node>
                          </node>
                          <node concept="37vLTw" id="2gPa6JHALSD" role="3uHU7w">
                            <ref role="3cqZAo" node="6GYQG_SpvAJ" resolve="rightVal" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2gPa6JHB1C2" role="3cqZAp">
            <node concept="2YIFZM" id="2gPa6JHB71n" role="3clFbG">
              <ref role="37wK5l" to="w7la:~Solver$Result.OK()" resolve="OK" />
              <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="5TfjU0xzNnP" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
      </node>
      <node concept="2tJIrI" id="4U_yxogBZ9l" role="jymVt" />
      <node concept="3clFb_" id="4U_yxogBZsK" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="tellUni_val_logical" />
        <node concept="37vLTG" id="4U_yxogBZsL" role="3clF46">
          <property role="TrG5h" value="leftVal" />
          <node concept="3uibUv" id="5TfjU0xyiW7" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="4U_yxogBZsN" role="3clF46">
          <property role="TrG5h" value="right" />
          <node concept="3uibUv" id="6MYr6Jwz28e" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
            <node concept="16syzq" id="5TfjU0xzHrn" role="11_B2D">
              <ref role="16sUi3" node="5TfjU0xzEQN" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="2gPa6JHD71Z" role="3clF45">
          <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
        </node>
        <node concept="3Tm6S6" id="3gNap3fZftT" role="1B3o_S" />
        <node concept="3clFbS" id="4U_yxogBZsU" role="3clF47">
          <node concept="3clFbF" id="1bm7a6EV6Wo" role="3cqZAp">
            <node concept="1rXfSq" id="1bm7a6EV6Wn" role="3clFbG">
              <ref role="37wK5l" node="4U_yxogBZLB" resolve="tellUni_logical_val" />
              <node concept="37vLTw" id="1bm7a6EV7k2" role="37wK5m">
                <ref role="3cqZAo" node="4U_yxogBZsN" resolve="right" />
              </node>
              <node concept="37vLTw" id="1bm7a6EV7BE" role="37wK5m">
                <ref role="3cqZAo" node="4U_yxogBZsL" resolve="leftVal" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="5TfjU0xzEQN" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
      </node>
      <node concept="2tJIrI" id="4U_yxogBZsJ" role="jymVt" />
      <node concept="3clFb_" id="4U_yxogBZLB" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="tellUni_logical_val" />
        <node concept="37vLTG" id="4U_yxogBZLE" role="3clF46">
          <property role="TrG5h" value="left" />
          <node concept="3uibUv" id="6MYr6Jwz28h" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
            <node concept="3qTvmN" id="5TfjU0xJquy" role="11_B2D" />
          </node>
        </node>
        <node concept="37vLTG" id="4U_yxogBZLC" role="3clF46">
          <property role="TrG5h" value="rightVal" />
          <node concept="3uibUv" id="5TfjU0xyoB$" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3uibUv" id="2gPa6JHDcnQ" role="3clF45">
          <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
        </node>
        <node concept="3Tm6S6" id="3gNap3fZftW" role="1B3o_S" />
        <node concept="3clFbS" id="4U_yxogBZLL" role="3clF47">
          <node concept="3cpWs8" id="6b_Nj5K6khb" role="3cqZAp">
            <node concept="3cpWsn" id="6b_Nj5K6khc" role="3cpWs9">
              <property role="TrG5h" value="leftRepr" />
              <node concept="3uibUv" id="6b_Nj5K6kh3" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                <node concept="3qTvmN" id="6b_Nj5K6kh6" role="11_B2D" />
              </node>
              <node concept="2OqwBi" id="6b_Nj5K6khd" role="33vP2m">
                <node concept="37vLTw" id="6b_Nj5K6khe" role="2Oq$k0">
                  <ref role="3cqZAo" node="4U_yxogBZLE" resolve="left" />
                </node>
                <node concept="liA8E" id="6b_Nj5K6khf" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1bm7a6EV2Np" role="3cqZAp">
            <node concept="3clFbS" id="1bm7a6EV2Ns" role="3clFbx">
              <node concept="3cpWs8" id="2gPa6JHEh5f" role="3cqZAp">
                <node concept="3cpWsn" id="2gPa6JHEh5g" role="3cpWs9">
                  <property role="TrG5h" value="occurrsCheck" />
                  <node concept="3uibUv" id="2gPa6JHEeoi" role="1tU5fm">
                    <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
                  </node>
                  <node concept="1rXfSq" id="2gPa6JHEh5h" role="33vP2m">
                    <ref role="37wK5l" node="1POzLwyWxZp" resolve="occurrsCheck" />
                    <node concept="37vLTw" id="2gPa6JHEh5i" role="37wK5m">
                      <ref role="3cqZAo" node="6b_Nj5K6khc" resolve="leftRepr" />
                    </node>
                    <node concept="37vLTw" id="2gPa6JHEh5j" role="37wK5m">
                      <ref role="3cqZAo" node="4U_yxogBZLC" resolve="rightVal" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="2gPa6JHEvqn" role="3cqZAp">
                <node concept="3clFbS" id="2gPa6JHEvqH" role="3clFbx">
                  <node concept="3cpWs6" id="2gPa6JHEyU4" role="3cqZAp">
                    <node concept="37vLTw" id="2gPa6JHEF$6" role="3cqZAk">
                      <ref role="3cqZAo" node="2gPa6JHEh5g" resolve="occurrsCheck" />
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="2gPa6JHIzOi" role="3clFbw">
                  <node concept="2OqwBi" id="2gPa6JHIzOk" role="3fr31v">
                    <node concept="37vLTw" id="2gPa6JHIzOl" role="2Oq$k0">
                      <ref role="3cqZAo" node="2gPa6JHEh5g" resolve="occurrsCheck" />
                    </node>
                    <node concept="liA8E" id="2gPa6JHIzOm" role="2OqNvi">
                      <ref role="37wK5l" to="w7la:~Solver$Result.isOk()" resolve="isOk" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1bm7a6EV48H" role="3cqZAp">
                <node concept="2OqwBi" id="1bm7a6EV4cC" role="3clFbG">
                  <node concept="1eOMI4" id="6b_Nj5K6ogY" role="2Oq$k0">
                    <node concept="10QFUN" id="6b_Nj5K6ogV" role="1eOMHV">
                      <node concept="3uibUv" id="6b_Nj5K6onh" role="10QFUM">
                        <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                        <node concept="16syzq" id="6b_Nj5K6oVX" role="11_B2D">
                          <ref role="16sUi3" node="5TfjU0xJAYc" resolve="T" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6b_Nj5K6oh0" role="10QFUP">
                        <ref role="3cqZAo" node="6b_Nj5K6khc" resolve="leftRepr" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1bm7a6EV5ci" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~MutableLogical.setValue(java.lang.Object)" resolve="setValue" />
                    <node concept="1eOMI4" id="5TfjU0xyP_X" role="37wK5m">
                      <node concept="10QFUN" id="5TfjU0xyP_U" role="1eOMHV">
                        <node concept="16syzq" id="5TfjU0xJFts" role="10QFUM">
                          <ref role="16sUi3" node="5TfjU0xJAYc" resolve="T" />
                        </node>
                        <node concept="37vLTw" id="5TfjU0xyPBr" role="10QFUP">
                          <ref role="3cqZAo" node="4U_yxogBZLC" resolve="rightVal" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2gPa6JHF2tZ" role="3cqZAp">
                <node concept="2YIFZM" id="2gPa6JHFdI3" role="3cqZAk">
                  <ref role="37wK5l" to="w7la:~Solver$Result.OK()" resolve="OK" />
                  <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
                </node>
              </node>
              <node concept="3clFbH" id="2gPa6JHEXR7" role="3cqZAp" />
            </node>
            <node concept="3fqX7Q" id="5TfjU0xJggO" role="3clFbw">
              <node concept="2OqwBi" id="5TfjU0xJggQ" role="3fr31v">
                <node concept="37vLTw" id="1POzLwyX9gq" role="2Oq$k0">
                  <ref role="3cqZAo" node="6b_Nj5K6khc" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="5TfjU0xJggS" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="1bm7a6EV3hd" role="9aQIa">
              <node concept="3clFbS" id="1bm7a6EV3he" role="9aQI4">
                <node concept="3cpWs6" id="2gPa6JHEKDg" role="3cqZAp">
                  <node concept="1rXfSq" id="6SkxsMzEU$P" role="3cqZAk">
                    <ref role="37wK5l" node="6GYQG_SpvAG" resolve="tellUni_val_val" />
                    <node concept="2OqwBi" id="5TfjU0xJhdi" role="37wK5m">
                      <node concept="37vLTw" id="6b_Nj5K6khi" role="2Oq$k0">
                        <ref role="3cqZAo" node="6b_Nj5K6khc" resolve="leftRepr" />
                      </node>
                      <node concept="liA8E" id="5TfjU0xJhdk" role="2OqNvi">
                        <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="6SkxsMzEV29" role="37wK5m">
                      <ref role="3cqZAo" node="4U_yxogBZLC" resolve="rightVal" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="5TfjU0xJAYc" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
      </node>
      <node concept="2tJIrI" id="1POzLwyW_Hi" role="jymVt" />
      <node concept="3clFb_" id="4U_yxogC05I" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="tellUni_logical_logical" />
        <node concept="37vLTG" id="4U_yxogC05J" role="3clF46">
          <property role="TrG5h" value="left" />
          <node concept="3uibUv" id="6MYr6Jwz28n" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
            <node concept="16syzq" id="5TfjU0xzy_y" role="11_B2D">
              <ref role="16sUi3" node="5TfjU0xzvGM" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4U_yxogC0jU" role="3clF46">
          <property role="TrG5h" value="right" />
          <node concept="3uibUv" id="6MYr6Jwz28q" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
            <node concept="16syzq" id="5TfjU0xzz_q" role="11_B2D">
              <ref role="16sUi3" node="5TfjU0xzvGM" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="2gPa6JHFoHn" role="3clF45">
          <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
        </node>
        <node concept="3Tm6S6" id="3gNap3fZftZ" role="1B3o_S" />
        <node concept="3clFbS" id="4U_yxogC05S" role="3clF47">
          <node concept="3cpWs8" id="7d$oK1$rAnD" role="3cqZAp">
            <node concept="3cpWsn" id="7d$oK1$rAnE" role="3cpWs9">
              <property role="TrG5h" value="leftRepr" />
              <node concept="3uibUv" id="6MYr6Jwz28t" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                <node concept="16syzq" id="5TfjU0xz$x6" role="11_B2D">
                  <ref role="16sUi3" node="5TfjU0xzvGM" resolve="T" />
                </node>
              </node>
              <node concept="2OqwBi" id="7d$oK1$rAnG" role="33vP2m">
                <node concept="37vLTw" id="7d$oK1$rAnH" role="2Oq$k0">
                  <ref role="3cqZAo" node="4U_yxogC05J" resolve="left" />
                </node>
                <node concept="liA8E" id="7d$oK1$rAnI" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7d$oK1$rAnJ" role="3cqZAp">
            <node concept="3cpWsn" id="7d$oK1$rAnK" role="3cpWs9">
              <property role="TrG5h" value="rightRepr" />
              <node concept="3uibUv" id="6MYr6Jwz28w" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                <node concept="16syzq" id="5TfjU0xz_b9" role="11_B2D">
                  <ref role="16sUi3" node="5TfjU0xzvGM" resolve="T" />
                </node>
              </node>
              <node concept="2OqwBi" id="7d$oK1$rAnM" role="33vP2m">
                <node concept="37vLTw" id="7d$oK1$rAnN" role="2Oq$k0">
                  <ref role="3cqZAo" node="4U_yxogC0jU" resolve="right" />
                </node>
                <node concept="liA8E" id="7d$oK1$rAnO" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4U_yxogDxEc" role="3cqZAp">
            <node concept="3y3z36" id="2gPa6JHFBZt" role="3clFbw">
              <node concept="37vLTw" id="7d$oK1$rBvZ" role="3uHU7B">
                <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
              </node>
              <node concept="37vLTw" id="7d$oK1$rBSI" role="3uHU7w">
                <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
              </node>
            </node>
            <node concept="3clFbS" id="2gPa6JHFBZy" role="3clFbx">
              <node concept="3clFbJ" id="5TfjU0xIiER" role="3cqZAp">
                <node concept="3clFbS" id="5TfjU0xIiES" role="3clFbx">
                  <node concept="3cpWs6" id="2gPa6JHFUns" role="3cqZAp">
                    <node concept="1rXfSq" id="5TfjU0xIiEU" role="3cqZAk">
                      <ref role="37wK5l" node="6GYQG_SpvAG" resolve="tellUni_val_val" />
                      <node concept="2OqwBi" id="5TfjU0xIiEV" role="37wK5m">
                        <node concept="37vLTw" id="5TfjU0xIiEW" role="2Oq$k0">
                          <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
                        </node>
                        <node concept="liA8E" id="5TfjU0xIiEX" role="2OqNvi">
                          <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5TfjU0xIiEY" role="37wK5m">
                        <node concept="37vLTw" id="5TfjU0xIiEZ" role="2Oq$k0">
                          <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
                        </node>
                        <node concept="liA8E" id="5TfjU0xIiF0" role="2OqNvi">
                          <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="2gPa6JHG4yq" role="3cqZAp" />
                </node>
                <node concept="1Wc70l" id="5TfjU0xIiF1" role="3clFbw">
                  <node concept="2OqwBi" id="5TfjU0xIiF2" role="3uHU7w">
                    <node concept="37vLTw" id="5TfjU0xIiF3" role="2Oq$k0">
                      <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
                    </node>
                    <node concept="liA8E" id="5TfjU0xIiF4" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5TfjU0xIiF5" role="3uHU7B">
                    <node concept="37vLTw" id="5TfjU0xIiF6" role="2Oq$k0">
                      <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
                    </node>
                    <node concept="liA8E" id="5TfjU0xIiF7" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1POzLwzdIdV" role="3cqZAp" />
              <node concept="3clFbJ" id="1POzLwzdIhe" role="3cqZAp">
                <node concept="3clFbS" id="1POzLwzdIhg" role="3clFbx">
                  <node concept="3cpWs8" id="2gPa6JHG8Ok" role="3cqZAp">
                    <node concept="3cpWsn" id="2gPa6JHG8Ol" role="3cpWs9">
                      <property role="TrG5h" value="occurrsCheck" />
                      <node concept="3uibUv" id="2gPa6JHG6Tc" role="1tU5fm">
                        <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
                      </node>
                      <node concept="1rXfSq" id="2gPa6JHG8Om" role="33vP2m">
                        <ref role="37wK5l" node="1POzLwyWxZp" resolve="occurrsCheck" />
                        <node concept="37vLTw" id="2gPa6JHG8On" role="37wK5m">
                          <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
                        </node>
                        <node concept="2OqwBi" id="2gPa6JHG8Oo" role="37wK5m">
                          <node concept="37vLTw" id="2gPa6JHG8Op" role="2Oq$k0">
                            <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
                          </node>
                          <node concept="liA8E" id="2gPa6JHG8Oq" role="2OqNvi">
                            <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="2gPa6JHGljQ" role="3cqZAp">
                    <node concept="3clFbS" id="2gPa6JHGlkc" role="3clFbx">
                      <node concept="3cpWs6" id="2gPa6JHGqCy" role="3cqZAp">
                        <node concept="37vLTw" id="2gPa6JHGu94" role="3cqZAk">
                          <ref role="3cqZAo" node="2gPa6JHG8Ol" resolve="occurrsCheck" />
                        </node>
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="2gPa6JHICIt" role="3clFbw">
                      <node concept="2OqwBi" id="2gPa6JHICIv" role="3fr31v">
                        <node concept="37vLTw" id="2gPa6JHICIw" role="2Oq$k0">
                          <ref role="3cqZAo" node="2gPa6JHG8Ol" resolve="occurrsCheck" />
                        </node>
                        <node concept="liA8E" id="2gPa6JHICIx" role="2OqNvi">
                          <ref role="37wK5l" to="w7la:~Solver$Result.isOk()" resolve="isOk" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="1POzLwzdIhf" role="3cqZAp" />
                </node>
                <node concept="1Wc70l" id="3XrkykB_$nJ" role="3clFbw">
                  <node concept="3fqX7Q" id="3XrkykB_$QL" role="3uHU7B">
                    <node concept="2OqwBi" id="3XrkykB__SD" role="3fr31v">
                      <node concept="37vLTw" id="3XrkykB__xI" role="2Oq$k0">
                        <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
                      </node>
                      <node concept="liA8E" id="3XrkykB_AlF" role="2OqNvi">
                        <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1POzLwzdIjl" role="3uHU7w">
                    <node concept="37vLTw" id="1POzLwzdIjm" role="2Oq$k0">
                      <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
                    </node>
                    <node concept="liA8E" id="1POzLwzdIjn" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="1POzLwzdIv$" role="3eNLev">
                  <node concept="1Wc70l" id="3XrkykB_B5_" role="3eO9$A">
                    <node concept="3fqX7Q" id="3XrkykB_Bwo" role="3uHU7B">
                      <node concept="2OqwBi" id="3XrkykB_Cd9" role="3fr31v">
                        <node concept="37vLTw" id="3XrkykB_BzN" role="2Oq$k0">
                          <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
                        </node>
                        <node concept="liA8E" id="3XrkykB_CzV" role="2OqNvi">
                          <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1POzLwzdIv_" role="3uHU7w">
                      <node concept="37vLTw" id="1POzLwzdIvA" role="2Oq$k0">
                        <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
                      </node>
                      <node concept="liA8E" id="1POzLwzdIvB" role="2OqNvi">
                        <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="1POzLwzdIvC" role="3eOfB_">
                    <node concept="3cpWs8" id="2gPa6JHGzsI" role="3cqZAp">
                      <node concept="3cpWsn" id="2gPa6JHGzsJ" role="3cpWs9">
                        <property role="TrG5h" value="occurrsCheck" />
                        <node concept="3uibUv" id="2gPa6JHGw_A" role="1tU5fm">
                          <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
                        </node>
                        <node concept="1rXfSq" id="2gPa6JHGzsK" role="33vP2m">
                          <ref role="37wK5l" node="1POzLwyWxZp" resolve="occurrsCheck" />
                          <node concept="37vLTw" id="2gPa6JHGzsL" role="37wK5m">
                            <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
                          </node>
                          <node concept="2OqwBi" id="2gPa6JHGzsM" role="37wK5m">
                            <node concept="37vLTw" id="2gPa6JHGzsN" role="2Oq$k0">
                              <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
                            </node>
                            <node concept="liA8E" id="2gPa6JHGzsO" role="2OqNvi">
                              <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="2gPa6JHGSMi" role="3cqZAp">
                      <node concept="3clFbS" id="2gPa6JHGSMC" role="3clFbx">
                        <node concept="3cpWs6" id="2gPa6JHGW_B" role="3cqZAp">
                          <node concept="37vLTw" id="2gPa6JHH1w6" role="3cqZAk">
                            <ref role="3cqZAo" node="2gPa6JHGzsJ" resolve="occurrsCheck" />
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="2gPa6JHIHFT" role="3clFbw">
                        <node concept="2OqwBi" id="2gPa6JHIHFV" role="3fr31v">
                          <node concept="37vLTw" id="2gPa6JHIHFW" role="2Oq$k0">
                            <ref role="3cqZAo" node="2gPa6JHGzsJ" resolve="occurrsCheck" />
                          </node>
                          <node concept="liA8E" id="2gPa6JHIHFX" role="2OqNvi">
                            <ref role="37wK5l" to="w7la:~Solver$Result.isOk()" resolve="isOk" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1POzLwzdIw6" role="3cqZAp">
                <node concept="2OqwBi" id="1POzLwzdIw7" role="3clFbG">
                  <node concept="37vLTw" id="1POzLwzdIw8" role="2Oq$k0">
                    <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
                  </node>
                  <node concept="liA8E" id="1POzLwzdIw9" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~MutableLogical.union(jetbrains.mps.logic.reactor.logical.MutableLogical)" resolve="union" />
                    <node concept="37vLTw" id="1POzLwzdIwa" role="37wK5m">
                      <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2gPa6JHH6fU" role="3cqZAp">
            <node concept="2YIFZM" id="2gPa6JHH9cE" role="3clFbG">
              <ref role="37wK5l" to="w7la:~Solver$Result.OK()" resolve="OK" />
              <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="5TfjU0xzvGM" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
      </node>
      <node concept="2tJIrI" id="7K4Mb_JvMKB" role="jymVt" />
      <node concept="3clFb_" id="1POzLwyWxZp" role="jymVt">
        <property role="TrG5h" value="occurrsCheck" />
        <node concept="3Tm6S6" id="1POzLwyWxZq" role="1B3o_S" />
        <node concept="3uibUv" id="2gPa6JHDg$R" role="3clF45">
          <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
        </node>
        <node concept="37vLTG" id="1POzLwyWxZf" role="3clF46">
          <property role="TrG5h" value="logical" />
          <node concept="3uibUv" id="1POzLwyWxZg" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
            <node concept="3qTvmN" id="1POzLwyWxZh" role="11_B2D" />
          </node>
        </node>
        <node concept="37vLTG" id="1POzLwyWxZd" role="3clF46">
          <property role="TrG5h" value="val" />
          <node concept="3uibUv" id="1POzLwyWxZe" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3clFbS" id="1POzLwyWxY9" role="3clF47">
          <node concept="3cpWs8" id="1POzLwyX6pH" role="3cqZAp">
            <node concept="3cpWsn" id="1POzLwyX6pI" role="3cpWs9">
              <property role="TrG5h" value="repr" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="1POzLwyX6px" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                <node concept="3qTvmN" id="1POzLwyX6p$" role="11_B2D" />
              </node>
              <node concept="2OqwBi" id="1POzLwyX6pJ" role="33vP2m">
                <node concept="37vLTw" id="1POzLwyX6pK" role="2Oq$k0">
                  <ref role="3cqZAo" node="1POzLwyWxZf" resolve="logical" />
                </node>
                <node concept="liA8E" id="1POzLwyX6pL" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1POzLwyWxYa" role="3cqZAp">
            <node concept="3cpWsn" id="1POzLwyWxYb" role="3cpWs9">
              <property role="TrG5h" value="cls" />
              <node concept="3uibUv" id="1POzLwyWxYc" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                <node concept="3qTvmN" id="1POzLwyWxYd" role="11_B2D" />
              </node>
              <node concept="2EnYce" id="1POzLwyWxYe" role="33vP2m">
                <node concept="2OqwBi" id="1POzLwyWxYf" role="2Oq$k0">
                  <node concept="37vLTw" id="1POzLwyX7Yr" role="2Oq$k0">
                    <ref role="3cqZAo" node="1POzLwyX6pI" resolve="repr" />
                  </node>
                  <node concept="liA8E" id="1POzLwyWxYh" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~Logical.metaLogical()" resolve="metaLogical" />
                  </node>
                </node>
                <node concept="liA8E" id="1POzLwyWxYi" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~MetaLogical.type()" resolve="type" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1POzLwyWxYj" role="3cqZAp">
            <node concept="3clFbS" id="1POzLwyWxYk" role="3clFbx">
              <node concept="3clFbJ" id="4WeLqVwRxVG" role="3cqZAp">
                <node concept="3clFbS" id="4WeLqVwRxVI" role="3clFbx">
                  <node concept="3J1_TO" id="4WeLqVxhQQW" role="3cqZAp">
                    <node concept="3clFbS" id="4WeLqVxhQQX" role="1zxBo7">
                      <node concept="3clFbF" id="4WeLqVwTqn6" role="3cqZAp">
                        <node concept="2OqwBi" id="4WeLqVxh7CK" role="3clFbG">
                          <node concept="2ShNRf" id="4WeLqVwTqn2" role="2Oq$k0">
                            <node concept="1pGfFk" id="4WeLqVwT$f1" role="2ShVmc">
                              <property role="373rjd" value="true" />
                              <ref role="37wK5l" to="cof4:4WeLqVxOSvl" resolve="DataFormWalk" />
                              <node concept="2ShNRf" id="4WeLqVwX5c$" role="37wK5m">
                                <node concept="YeOm9" id="4WeLqVwXrvH" role="2ShVmc">
                                  <node concept="1Y3b0j" id="4WeLqVwXrvK" role="YeSDq">
                                    <property role="2bfB8j" value="true" />
                                    <property role="373rjd" value="true" />
                                    <ref role="1Y3XeK" to="cof4:2ev$9JFHDMZ" resolve="DataFormWalk.IdleWalker" />
                                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                    <node concept="3Tm1VV" id="4WeLqVwXrvL" role="1B3o_S" />
                                    <node concept="3clFb_" id="4WeLqVwYscQ" role="jymVt">
                                      <property role="TrG5h" value="visitVariable" />
                                      <node concept="37vLTG" id="4WeLqVwYscR" role="3clF46">
                                        <property role="TrG5h" value="variable" />
                                        <node concept="3uibUv" id="4WeLqVwYscS" role="1tU5fm">
                                          <ref role="3uigEE" to="cof4:uNmovXiEd4" resolve="Variable" />
                                        </node>
                                      </node>
                                      <node concept="3uibUv" id="4WeLqVwYsd3" role="3clF45">
                                        <ref role="3uigEE" to="cof4:2q_78a95hAL" resolve="Action" />
                                      </node>
                                      <node concept="3Tm1VV" id="4WeLqVwYscU" role="1B3o_S" />
                                      <node concept="3clFbS" id="4WeLqVwYsd4" role="3clF47">
                                        <node concept="3clFbJ" id="4WeLqVwZYZ5" role="3cqZAp">
                                          <node concept="3clFbS" id="4WeLqVwZYZ7" role="3clFbx">
                                            <node concept="3clFbJ" id="4WeLqVx1X$r" role="3cqZAp">
                                              <node concept="3clFbS" id="4WeLqVx1X$X" role="3clFbx">
                                                <node concept="YS8fn" id="4WeLqVxfFH9" role="3cqZAp">
                                                  <node concept="37vLTw" id="4WeLqVxg6jp" role="YScLw">
                                                    <ref role="3cqZAo" node="4WeLqVxg6j0" resolve="OCCURS_CHECK_EX" />
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="3clFbC" id="4WeLqVx1Gk0" role="3clFbw">
                                                <node concept="37vLTw" id="4WeLqVx1RrQ" role="3uHU7w">
                                                  <ref role="3cqZAo" node="1POzLwyX6pI" resolve="repr" />
                                                </node>
                                                <node concept="2OqwBi" id="4WeLqVx1wog" role="3uHU7B">
                                                  <node concept="1eOMI4" id="4WeLqVx0ymY" role="2Oq$k0">
                                                    <node concept="10QFUN" id="4WeLqVx0ymV" role="1eOMHV">
                                                      <node concept="3uibUv" id="4WeLqVx0yn0" role="10QFUM">
                                                        <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                                                        <node concept="3qTvmN" id="4WeLqVx0N$1" role="11_B2D" />
                                                      </node>
                                                      <node concept="2OqwBi" id="4WeLqVx12HF" role="10QFUP">
                                                        <node concept="37vLTw" id="4WeLqVx0TlY" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="4WeLqVwYscR" resolve="variable" />
                                                        </node>
                                                        <node concept="liA8E" id="4WeLqVx17gv" role="2OqNvi">
                                                          <ref role="37wK5l" to="yt73:~Term.symbol()" resolve="symbol" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="liA8E" id="4WeLqVx1Aq2" role="2OqNvi">
                                                    <ref role="37wK5l" to="bj13:~Logical.findRoot()" resolve="findRoot" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3fqX7Q" id="4WeLqVxeDAq" role="3clFbw">
                                            <node concept="2OqwBi" id="4WeLqVxeDAs" role="3fr31v">
                                              <node concept="37vLTw" id="4WeLqVxeDAt" role="2Oq$k0">
                                                <ref role="3cqZAo" node="4WeLqVwYscR" resolve="variable" />
                                              </node>
                                              <node concept="liA8E" id="4WeLqVxeDAu" role="2OqNvi">
                                                <ref role="37wK5l" to="cof4:4p5SefkhK7Y" resolve="isBound" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbF" id="4WeLqVx2Zq5" role="3cqZAp">
                                          <node concept="Rm8GO" id="4WeLqVxdVcm" role="3clFbG">
                                            <ref role="Rm8GQ" to="cof4:2q_78a95hAM" resolve="WALK" />
                                            <ref role="1Px2BO" to="cof4:2q_78a95hAL" resolve="Action" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2AHcQZ" id="4WeLqVwYsd5" role="2AJF6D">
                                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbT" id="4WeLqVxXSXc" role="37wK5m">
                                <property role="3clFbU" value="true" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="4WeLqVxhiWc" role="2OqNvi">
                            <ref role="37wK5l" to="cof4:1hOy_Afq63K" resolve="walk" />
                            <node concept="10QFUN" id="4WeLqVxhA59" role="37wK5m">
                              <node concept="37vLTw" id="4WeLqVxhA58" role="10QFUP">
                                <ref role="3cqZAo" node="1POzLwyWxZd" resolve="val" />
                              </node>
                              <node concept="3uibUv" id="4WeLqVxhA55" role="10QFUM">
                                <ref role="3uigEE" to="cof4:1bm7a6EXvsP" resolve="DataForm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3uVAMA" id="4WeLqVxhQQY" role="1zxBo5">
                      <node concept="XOnhg" id="4WeLqVxhQQZ" role="1zc67B">
                        <property role="TrG5h" value="ex" />
                        <node concept="nSUau" id="4WeLqVxhQR0" role="1tU5fm">
                          <node concept="3uibUv" id="4WeLqVxhWFi" role="nSUat">
                            <ref role="3uigEE" node="4WeLqVxfpe8" resolve="UnificationPredicate.UnificationSolver.OccursCheckException" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="4WeLqVxhQR1" role="1zc67A">
                        <node concept="3cpWs6" id="4WeLqVxidnT" role="3cqZAp">
                          <node concept="2YIFZM" id="4WeLqVxidnU" role="3cqZAk">
                            <ref role="37wK5l" to="w7la:~Solver$Result.FAIL(java.lang.String)" resolve="FAIL" />
                            <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
                            <node concept="Xl_RD" id="4WeLqVxincw" role="37wK5m">
                              <property role="Xl_RC" value="occurs check failed" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="4WeLqVwSa0u" role="3clFbw">
                  <node concept="3uibUv" id="4WeLqVwSa0v" role="2ZW6by">
                    <ref role="3uigEE" to="cof4:1bm7a6EXvsP" resolve="DataForm" />
                  </node>
                  <node concept="37vLTw" id="4WeLqVwSa0w" role="2ZW6bz">
                    <ref role="3cqZAo" node="1POzLwyWxZd" resolve="val" />
                  </node>
                </node>
                <node concept="3eNFk2" id="4WeLqVxiWz_" role="3eNLev">
                  <node concept="3clFbS" id="4WeLqVxiWzB" role="3eOfB_">
                    <node concept="3cpWs8" id="1POzLwyWxYl" role="3cqZAp">
                      <node concept="3cpWsn" id="1POzLwyWxYm" role="3cpWs9">
                        <property role="TrG5h" value="termLeftRepr" />
                        <node concept="3uibUv" id="1POzLwyWxYn" role="1tU5fm">
                          <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                          <node concept="16syzq" id="1POzLwyWSnC" role="11_B2D">
                            <ref role="16sUi3" node="5TfjU0xz4dl" resolve="TERM" />
                          </node>
                        </node>
                        <node concept="10QFUN" id="1POzLwyWxYp" role="33vP2m">
                          <node concept="37vLTw" id="1POzLwyX84G" role="10QFUP">
                            <ref role="3cqZAo" node="1POzLwyX6pI" resolve="repr" />
                          </node>
                          <node concept="3uibUv" id="1POzLwyWxYr" role="10QFUM">
                            <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                            <node concept="16syzq" id="1POzLwyWSJo" role="11_B2D">
                              <ref role="16sUi3" node="5TfjU0xz4dl" resolve="TERM" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="1POzLwyWxYt" role="3cqZAp">
                      <node concept="1PaTwC" id="589APehYy4c" role="1aUNEU">
                        <node concept="3oM_SD" id="589APehYy4d" role="1PaTwD">
                          <property role="3oM_SC" value="check" />
                        </node>
                        <node concept="3oM_SD" id="589APehYy4e" role="1PaTwD">
                          <property role="3oM_SC" value="for" />
                        </node>
                        <node concept="3oM_SD" id="589APehYy4f" role="1PaTwD">
                          <property role="3oM_SC" value="occurrences" />
                        </node>
                        <node concept="3oM_SD" id="589APehYy4g" role="1PaTwD">
                          <property role="3oM_SC" value="of" />
                        </node>
                        <node concept="3oM_SD" id="589APehYy4h" role="1PaTwD">
                          <property role="3oM_SC" value="the" />
                        </node>
                        <node concept="3oM_SD" id="589APehYy4i" role="1PaTwD">
                          <property role="3oM_SC" value="logical" />
                        </node>
                        <node concept="3oM_SD" id="589APehYy4j" role="1PaTwD">
                          <property role="3oM_SC" value="in" />
                        </node>
                        <node concept="3oM_SD" id="589APehYy4k" role="1PaTwD">
                          <property role="3oM_SC" value="the" />
                        </node>
                        <node concept="3oM_SD" id="589APehYy4l" role="1PaTwD">
                          <property role="3oM_SC" value="value" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="1POzLwyWxYv" role="3cqZAp">
                      <node concept="3cpWsn" id="1POzLwyWxYw" role="3cpWs9">
                        <property role="TrG5h" value="subs" />
                        <node concept="3uibUv" id="1POzLwyWxYx" role="1tU5fm">
                          <ref role="3uigEE" to="yt73:~Substitution" resolve="Substitution" />
                        </node>
                        <node concept="2OqwBi" id="1POzLwyWxYy" role="33vP2m">
                          <node concept="10M0yZ" id="1POzLwyWxYz" role="2Oq$k0">
                            <ref role="1PxDUh" to="yt73:~Unification" resolve="Unification" />
                            <ref role="3cqZAo" to="yt73:~Unification.INSTANCE" resolve="INSTANCE" />
                          </node>
                          <node concept="liA8E" id="1POzLwyWxY$" role="2OqNvi">
                            <ref role="37wK5l" to="yt73:~Unification.unify(jetbrains.mps.unification.Term,jetbrains.mps.unification.Term)" resolve="unify" />
                            <node concept="2ShNRf" id="1POzLwyWxY_" role="37wK5m">
                              <node concept="1pGfFk" id="1POzLwyWxYA" role="2ShVmc">
                                <ref role="37wK5l" to="uwx2:4TCblo5ML4I" resolve="LogicalDataForm" />
                                <node concept="37vLTw" id="1POzLwyWxYB" role="37wK5m">
                                  <ref role="3cqZAo" node="1POzLwyWxYm" resolve="termLeftRepr" />
                                </node>
                              </node>
                            </node>
                            <node concept="10QFUN" id="77mpfA3SrXj" role="37wK5m">
                              <node concept="16syzq" id="77mpfA3SrXk" role="10QFUM">
                                <ref role="16sUi3" node="5TfjU0xz4dl" resolve="TERM" />
                              </node>
                              <node concept="37vLTw" id="77mpfA3SrXl" role="10QFUP">
                                <ref role="3cqZAo" node="1POzLwyWxZd" resolve="val" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1POzLwyWxYF" role="3cqZAp">
                      <node concept="3clFbS" id="1POzLwyWxYG" role="3clFbx">
                        <node concept="3cpWs6" id="2gPa6JHDHm4" role="3cqZAp">
                          <node concept="2YIFZM" id="2gPa6JHE6QK" role="3cqZAk">
                            <ref role="37wK5l" to="w7la:~Solver$Result.FAIL(java.lang.String)" resolve="FAIL" />
                            <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
                            <node concept="3cpWs3" id="2gPa6JHE6QL" role="37wK5m">
                              <node concept="3cpWs3" id="2gPa6JHE6QM" role="3uHU7B">
                                <node concept="3cpWs3" id="2gPa6JHE6QN" role="3uHU7B">
                                  <node concept="3cpWs3" id="2gPa6JHE6QO" role="3uHU7B">
                                    <node concept="3cpWs3" id="2gPa6JHE6QP" role="3uHU7B">
                                      <node concept="Xl_RD" id="2gPa6JHE6QQ" role="3uHU7B">
                                        <property role="Xl_RC" value="Cannot unify " />
                                      </node>
                                      <node concept="37vLTw" id="2gPa6JHE6QR" role="3uHU7w">
                                        <ref role="3cqZAo" node="1POzLwyWxZf" resolve="logical" />
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="2gPa6JHE6QS" role="3uHU7w">
                                      <property role="Xl_RC" value=" and " />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="2gPa6JHE6QT" role="3uHU7w">
                                    <ref role="3cqZAo" node="1POzLwyWxZd" resolve="val" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="2gPa6JHE6QU" role="3uHU7w">
                                  <property role="Xl_RC" value=": " />
                                </node>
                              </node>
                              <node concept="1rXfSq" id="2gPa6JHE6QV" role="3uHU7w">
                                <ref role="37wK5l" node="1MWQR5SpMLA" resolve="formatMessage" />
                                <node concept="37vLTw" id="2gPa6JHE6QW" role="37wK5m">
                                  <ref role="3cqZAo" node="1POzLwyWxYw" resolve="subs" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="4WeLqVwGKUw" role="3cqZAp" />
                      </node>
                      <node concept="3fqX7Q" id="1POzLwyWxYW" role="3clFbw">
                        <node concept="2OqwBi" id="1POzLwyWxYX" role="3fr31v">
                          <node concept="37vLTw" id="1POzLwyWxYY" role="2Oq$k0">
                            <ref role="3cqZAo" node="1POzLwyWxYw" resolve="subs" />
                          </node>
                          <node concept="liA8E" id="1POzLwyWxYZ" role="2OqNvi">
                            <ref role="37wK5l" to="yt73:~Substitution.isSuccessful()" resolve="isSuccessful" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="4WeLqVxjird" role="3eO9$A">
                    <node concept="3uibUv" id="4WeLqVxjire" role="2ZW6by">
                      <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                    </node>
                    <node concept="37vLTw" id="4WeLqVxjirf" role="2ZW6bz">
                      <ref role="3cqZAo" node="1POzLwyWxZd" resolve="val" />
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="4WeLqVxjobi" role="9aQIa">
                  <node concept="3clFbS" id="4WeLqVxjobj" role="9aQI4">
                    <node concept="RRSsy" id="4WeLqVwJw2Q" role="3cqZAp">
                      <property role="RRSoG" value="gZ5fh_4/error" />
                      <node concept="3cpWs3" id="4WeLqVwK3ZO" role="RRSoy">
                        <node concept="37vLTw" id="4WeLqVwK9FZ" role="3uHU7w">
                          <ref role="3cqZAo" node="1POzLwyWxZd" resolve="val" />
                        </node>
                        <node concept="Xl_RD" id="4WeLqVwJw2S" role="3uHU7B">
                          <property role="Xl_RC" value="expected instance of Term, got " />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="4WeLqVwKp_l" role="3cqZAp">
                      <node concept="2YIFZM" id="4WeLqVwKp_m" role="3cqZAk">
                        <ref role="37wK5l" to="w7la:~Solver$Result.FAIL(java.lang.String)" resolve="FAIL" />
                        <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
                        <node concept="3cpWs3" id="4WeLqVwKEGW" role="37wK5m">
                          <node concept="37vLTw" id="4WeLqVwKEGX" role="3uHU7w">
                            <ref role="3cqZAo" node="1POzLwyWxZd" resolve="val" />
                          </node>
                          <node concept="Xl_RD" id="4WeLqVwKEGY" role="3uHU7B">
                            <property role="Xl_RC" value="expected instance of Term, got " />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="1POzLwyWxZ1" role="3clFbw">
              <node concept="3y3z36" id="1POzLwyWxZ2" role="3uHU7B">
                <node concept="10Nm6u" id="1POzLwyWxZ3" role="3uHU7w" />
                <node concept="37vLTw" id="1POzLwyWxZ4" role="3uHU7B">
                  <ref role="3cqZAo" node="1POzLwyWxYb" resolve="cls" />
                </node>
              </node>
              <node concept="2OqwBi" id="1POzLwyWxZ5" role="3uHU7w">
                <node concept="3VsKOn" id="1POzLwyWxZ6" role="2Oq$k0">
                  <ref role="3VsUkX" to="yt73:~Term" resolve="Term" />
                </node>
                <node concept="liA8E" id="1POzLwyWxZ7" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Class.isAssignableFrom(java.lang.Class)" resolve="isAssignableFrom" />
                  <node concept="37vLTw" id="1POzLwyWxZ8" role="37wK5m">
                    <ref role="3cqZAo" node="1POzLwyWxYb" resolve="cls" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2gPa6JHEcag" role="3cqZAp">
            <node concept="2YIFZM" id="2gPa6JHEcai" role="3clFbG">
              <ref role="37wK5l" to="w7la:~Solver$Result.OK()" resolve="OK" />
              <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="5TfjU0xz4dl" role="16eVyc">
          <property role="TrG5h" value="TERM" />
          <node concept="3uibUv" id="5TfjU0xzb8Y" role="3ztrMU">
            <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4U_yxogBZLA" role="jymVt" />
      <node concept="3clFb_" id="6GYQG_SpvAS" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="askUni_val_val" />
        <node concept="37vLTG" id="6GYQG_SpvAT" role="3clF46">
          <property role="TrG5h" value="leftVal" />
          <node concept="16syzq" id="5TfjU0x_B3K" role="1tU5fm">
            <ref role="16sUi3" node="5TfjU0x_pYa" resolve="T" />
          </node>
        </node>
        <node concept="37vLTG" id="6GYQG_SpvAV" role="3clF46">
          <property role="TrG5h" value="rightVal" />
          <node concept="16syzq" id="5TfjU0x_Ep8" role="1tU5fm">
            <ref role="16sUi3" node="5TfjU0x_pYa" resolve="T" />
          </node>
        </node>
        <node concept="10P_77" id="4U_yxogC8WW" role="3clF45" />
        <node concept="3Tm6S6" id="3gNap3fZfu2" role="1B3o_S" />
        <node concept="3clFbS" id="6GYQG_SpvB3" role="3clF47">
          <node concept="3clFbJ" id="5TfjU0x_Pby" role="3cqZAp">
            <node concept="3clFbS" id="5TfjU0x_Pb$" role="3clFbx">
              <node concept="3cpWs8" id="7K4Mb_J$cIU" role="3cqZAp">
                <node concept="3cpWsn" id="7K4Mb_J$cIV" role="3cpWs9">
                  <property role="TrG5h" value="subs" />
                  <node concept="3uibUv" id="7K4Mb_J$cIW" role="1tU5fm">
                    <ref role="3uigEE" to="yt73:~Substitution" resolve="Substitution" />
                  </node>
                  <node concept="2OqwBi" id="6OkhGGhHULL" role="33vP2m">
                    <node concept="10M0yZ" id="6OkhGGhHU$r" role="2Oq$k0">
                      <ref role="1PxDUh" to="yt73:~Unification" resolve="Unification" />
                      <ref role="3cqZAo" to="yt73:~Unification.INSTANCE" resolve="INSTANCE" />
                    </node>
                    <node concept="liA8E" id="6OkhGGhHV2K" role="2OqNvi">
                      <ref role="37wK5l" to="yt73:~Unification.unify(jetbrains.mps.unification.Term,jetbrains.mps.unification.Term)" resolve="unify" />
                      <node concept="10QFUN" id="5TfjU0xA2t7" role="37wK5m">
                        <node concept="3uibUv" id="5TfjU0xA2t5" role="10QFUM">
                          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                        </node>
                        <node concept="37vLTw" id="5TfjU0xA2t6" role="10QFUP">
                          <ref role="3cqZAo" node="6GYQG_SpvAT" resolve="leftVal" />
                        </node>
                      </node>
                      <node concept="10QFUN" id="5TfjU0xA4aS" role="37wK5m">
                        <node concept="3uibUv" id="5TfjU0xA4aQ" role="10QFUM">
                          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                        </node>
                        <node concept="37vLTw" id="5TfjU0xA4aR" role="10QFUP">
                          <ref role="3cqZAo" node="6GYQG_SpvAV" resolve="rightVal" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6xYPVrp_rZu" role="3cqZAp">
                <node concept="3clFbS" id="6xYPVrp_rZv" role="3clFbx">
                  <node concept="3cpWs6" id="6xYPVrp_rZw" role="3cqZAp">
                    <node concept="3clFbT" id="6xYPVrp_rZx" role="3cqZAk">
                      <property role="3clFbU" value="false" />
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="6xYPVrp_rZy" role="3clFbw">
                  <node concept="2OqwBi" id="6xYPVrp_rZz" role="3fr31v">
                    <node concept="37vLTw" id="6xYPVrp_vQg" role="2Oq$k0">
                      <ref role="3cqZAo" node="7K4Mb_J$cIV" resolve="subs" />
                    </node>
                    <node concept="liA8E" id="6xYPVrp_rZ_" role="2OqNvi">
                      <ref role="37wK5l" to="yt73:~Substitution.isSuccessful()" resolve="isSuccessful" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6xYPVrp_rZA" role="3cqZAp" />
              <node concept="1DcWWT" id="6xYPVrp_rZB" role="3cqZAp">
                <node concept="3clFbS" id="6xYPVrp_rZC" role="2LFqv$">
                  <node concept="3clFbJ" id="7FFmDVAMcl6" role="3cqZAp">
                    <node concept="3clFbS" id="7FFmDVAMcl8" role="3clFbx">
                      <node concept="3clFbJ" id="6xYPVrp_rZM" role="3cqZAp">
                        <node concept="3clFbS" id="6xYPVrp_rZN" role="3clFbx">
                          <node concept="3cpWs6" id="6xYPVrp_rZO" role="3cqZAp">
                            <node concept="3clFbT" id="6xYPVrp_rZP" role="3cqZAk">
                              <property role="3clFbU" value="false" />
                            </node>
                          </node>
                        </node>
                        <node concept="3fqX7Q" id="6xYPVrp_rZQ" role="3clFbw">
                          <node concept="1rXfSq" id="6xYPVrp_rZR" role="3fr31v">
                            <ref role="37wK5l" node="6xYPVrp$baS" resolve="askLogicalUni" />
                            <node concept="2OqwBi" id="6MYr6JwBr3Q" role="37wK5m">
                              <node concept="Xjq3P" id="3gNap3fzIB5" role="2Oq$k0" />
                              <node concept="liA8E" id="6MYr6JwBrpD" role="2OqNvi">
                                <ref role="37wK5l" node="3FIATxbQg$N" resolve="asLogicalTerm" />
                                <node concept="2OqwBi" id="6xYPVrp_rZW" role="37wK5m">
                                  <node concept="37vLTw" id="6xYPVrp_rZX" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6xYPVrp_s03" resolve="bnd" />
                                  </node>
                                  <node concept="liA8E" id="6xYPVrp_rZY" role="2OqNvi">
                                    <ref role="37wK5l" to="yt73:~Substitution$Binding.var()" resolve="var" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="6xYPVrp_s00" role="37wK5m">
                              <node concept="37vLTw" id="6xYPVrp_s01" role="2Oq$k0">
                                <ref role="3cqZAo" node="6xYPVrp_s03" resolve="bnd" />
                              </node>
                              <node concept="liA8E" id="6xYPVrp_s02" role="2OqNvi">
                                <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="3gNap3fZwPf" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="6MYr6JwSiJ2" role="3clFbw">
                      <node concept="Xjq3P" id="3gNap3fzDyj" role="2Oq$k0" />
                      <node concept="liA8E" id="6MYr6JwSk3X" role="2OqNvi">
                        <ref role="37wK5l" node="3FIATxbQg_7" resolve="isLogicalTerm" />
                        <node concept="2OqwBi" id="7FFmDVAMd61" role="37wK5m">
                          <node concept="37vLTw" id="7FFmDVAMd62" role="2Oq$k0">
                            <ref role="3cqZAo" node="6xYPVrp_s03" resolve="bnd" />
                          </node>
                          <node concept="liA8E" id="7FFmDVAMd63" role="2OqNvi">
                            <ref role="37wK5l" to="yt73:~Substitution$Binding.var()" resolve="var" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3eNFk2" id="3gNap3fZwPw" role="3eNLev">
                      <node concept="3clFbS" id="3gNap3fZwPx" role="3eOfB_">
                        <node concept="3cpWs8" id="3gNap3fZ_6S" role="3cqZAp">
                          <node concept="3cpWsn" id="3gNap3fZ_6T" role="3cpWs9">
                            <property role="TrG5h" value="bndLeft" />
                            <node concept="3uibUv" id="3gNap3fZ_6U" role="1tU5fm">
                              <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                              <node concept="3qTvmN" id="3gNap3fZ_6V" role="11_B2D" />
                            </node>
                            <node concept="2OqwBi" id="3gNap3fZ_6W" role="33vP2m">
                              <node concept="1eOMI4" id="3gNap3g91F3" role="2Oq$k0">
                                <node concept="2OqwBi" id="3gNap3g91EX" role="1eOMHV">
                                  <node concept="Xjq3P" id="3gNap3g91EY" role="2Oq$k0" />
                                  <node concept="liA8E" id="3gNap3g91EZ" role="2OqNvi">
                                    <ref role="37wK5l" node="3gNap3fZimy" resolve="asLogicalValue" />
                                    <node concept="2OqwBi" id="3gNap3g91F0" role="37wK5m">
                                      <node concept="37vLTw" id="3gNap3g91F1" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6xYPVrp_s03" resolve="bnd" />
                                      </node>
                                      <node concept="liA8E" id="3gNap3g91F2" role="2OqNvi">
                                        <ref role="37wK5l" to="yt73:~Substitution$Binding.var()" resolve="var" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="3gNap3fZ_6Y" role="2OqNvi">
                                <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="3gNap3fZ$VP" role="3cqZAp">
                          <node concept="3clFbS" id="3gNap3fZ$VR" role="3clFbx">
                            <node concept="3cpWs8" id="3gNap3fZ_6Z" role="3cqZAp">
                              <node concept="3cpWsn" id="3gNap3fZ_70" role="3cpWs9">
                                <property role="TrG5h" value="bndRight" />
                                <node concept="3uibUv" id="3gNap3fZ_71" role="1tU5fm">
                                  <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                                  <node concept="3qTvmN" id="3gNap3fZ_72" role="11_B2D" />
                                </node>
                                <node concept="2OqwBi" id="3gNap3fZ_73" role="33vP2m">
                                  <node concept="2OqwBi" id="3gNap3fZ_74" role="2Oq$k0">
                                    <node concept="Xjq3P" id="3gNap3fZ_75" role="2Oq$k0" />
                                    <node concept="liA8E" id="3gNap3fZ_76" role="2OqNvi">
                                      <ref role="37wK5l" node="3gNap3fZimy" resolve="asLogicalValue" />
                                      <node concept="2OqwBi" id="3gNap3fZ_77" role="37wK5m">
                                        <node concept="37vLTw" id="3gNap3fZ_78" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6xYPVrp_s03" resolve="bnd" />
                                        </node>
                                        <node concept="liA8E" id="3gNap3fZ_79" role="2OqNvi">
                                          <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="3gNap3fZ_7a" role="2OqNvi">
                                    <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="3gNap3fZ$VQ" role="3cqZAp" />
                            <node concept="3clFbJ" id="3gNap3fZ_8M" role="3cqZAp">
                              <node concept="3clFbS" id="3gNap3fZ_8O" role="3clFbx">
                                <node concept="3clFbJ" id="3gNap3fZHlX" role="3cqZAp">
                                  <node concept="3clFbS" id="3gNap3fZHlY" role="3clFbx">
                                    <node concept="3cpWs6" id="3gNap3fZHnv" role="3cqZAp">
                                      <node concept="3clFbT" id="3gNap3fZHoq" role="3cqZAk" />
                                    </node>
                                  </node>
                                  <node concept="17QLQc" id="3gNap3fZHmd" role="3clFbw">
                                    <node concept="37vLTw" id="3gNap3fZHme" role="3uHU7B">
                                      <ref role="3cqZAo" node="6GYQG_SpvAV" resolve="rightVal" />
                                    </node>
                                    <node concept="2OqwBi" id="3gNap3fZHmf" role="3uHU7w">
                                      <node concept="37vLTw" id="3gNap3fZHmg" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3gNap3fZ_6T" resolve="bndLeft" />
                                      </node>
                                      <node concept="liA8E" id="3gNap3fZHmh" role="2OqNvi">
                                        <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1Wc70l" id="3gNap3fZA5P" role="3clFbw">
                                <node concept="2OqwBi" id="3gNap3fZAeI" role="3uHU7w">
                                  <node concept="37vLTw" id="3gNap3fZA6Q" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3gNap3fZ_70" resolve="bndRight" />
                                  </node>
                                  <node concept="liA8E" id="3gNap3fZAJG" role="2OqNvi">
                                    <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="3gNap3fZ_m6" role="3uHU7B">
                                  <node concept="37vLTw" id="3gNap3fZ_a8" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3gNap3fZ_6T" resolve="bndLeft" />
                                  </node>
                                  <node concept="liA8E" id="3gNap3fZ_Y5" role="2OqNvi">
                                    <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="3gNap3g8ZRD" role="3cqZAp" />
                          </node>
                          <node concept="1rXfSq" id="3gNap3fZ$XQ" role="3clFbw">
                            <ref role="37wK5l" node="3gNap3fZhXk" resolve="isLogicalValue" />
                            <node concept="2OqwBi" id="3gNap3fZ_39" role="37wK5m">
                              <node concept="37vLTw" id="3gNap3fZ$YJ" role="2Oq$k0">
                                <ref role="3cqZAo" node="6xYPVrp_s03" resolve="bnd" />
                              </node>
                              <node concept="liA8E" id="3gNap3fZ_5H" role="2OqNvi">
                                <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                              </node>
                            </node>
                          </node>
                          <node concept="3eNFk2" id="3gNap3g8ZRz" role="3eNLev">
                            <node concept="2ZW3vV" id="3gNap3g91$1" role="3eO9$A">
                              <node concept="3uibUv" id="3gNap3g91$i" role="2ZW6by">
                                <ref role="3uigEE" to="cof4:2xQ7eRAD2dj" resolve="Value" />
                              </node>
                              <node concept="2OqwBi" id="3gNap3g91ii" role="2ZW6bz">
                                <node concept="37vLTw" id="3gNap3g8ZT7" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6xYPVrp_s03" resolve="bnd" />
                                </node>
                                <node concept="liA8E" id="3gNap3g91kQ" role="2OqNvi">
                                  <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="3gNap3g8ZR_" role="3eOfB_">
                              <node concept="3clFbJ" id="3gNap3g91_b" role="3cqZAp">
                                <node concept="1Wc70l" id="3gNap3g93Qz" role="3clFbw">
                                  <node concept="17QLQc" id="3gNap3g94a1" role="3uHU7w">
                                    <node concept="2OqwBi" id="3gNap3g94hS" role="3uHU7w">
                                      <node concept="1eOMI4" id="3gNap3g94bV" role="2Oq$k0">
                                        <node concept="10QFUN" id="3gNap3g94bS" role="1eOMHV">
                                          <node concept="3uibUv" id="3gNap3g94bX" role="10QFUM">
                                            <ref role="3uigEE" to="cof4:2xQ7eRAD2dj" resolve="Value" />
                                          </node>
                                          <node concept="2OqwBi" id="3gNap3g94bY" role="10QFUP">
                                            <node concept="37vLTw" id="3gNap3g94bZ" role="2Oq$k0">
                                              <ref role="3cqZAo" node="6xYPVrp_s03" resolve="bnd" />
                                            </node>
                                            <node concept="liA8E" id="3gNap3g94c0" role="2OqNvi">
                                              <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="3gNap3g94p1" role="2OqNvi">
                                        <ref role="37wK5l" to="cof4:1msb0mq8QTt" resolve="symbol" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="3gNap3g93Zu" role="3uHU7B">
                                      <node concept="37vLTw" id="3gNap3g93R$" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3gNap3fZ_6T" resolve="bndLeft" />
                                      </node>
                                      <node concept="liA8E" id="3gNap3g945W" role="2OqNvi">
                                        <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="3gNap3g939Q" role="3uHU7B">
                                    <node concept="37vLTw" id="3gNap3g91Hg" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3gNap3fZ_6T" resolve="bndLeft" />
                                    </node>
                                    <node concept="liA8E" id="3gNap3g93IL" role="2OqNvi">
                                      <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbS" id="3gNap3g91_d" role="3clFbx">
                                  <node concept="3cpWs6" id="3gNap3g94pU" role="3cqZAp">
                                    <node concept="3clFbT" id="3gNap3g94qQ" role="3cqZAk" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1rXfSq" id="3gNap3fZwRg" role="3eO9$A">
                        <ref role="37wK5l" node="3gNap3fZhXk" resolve="isLogicalValue" />
                        <node concept="2OqwBi" id="3gNap3fZzvm" role="37wK5m">
                          <node concept="37vLTw" id="3gNap3fZwS8" role="2Oq$k0">
                            <ref role="3cqZAo" node="6xYPVrp_s03" resolve="bnd" />
                          </node>
                          <node concept="liA8E" id="3gNap3fZzxU" role="2OqNvi">
                            <ref role="37wK5l" to="yt73:~Substitution$Binding.var()" resolve="var" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="6xYPVrp_s03" role="1Duv9x">
                  <property role="TrG5h" value="bnd" />
                  <node concept="3uibUv" id="6xYPVrp_s04" role="1tU5fm">
                    <ref role="3uigEE" to="yt73:~Substitution$Binding" resolve="Substitution.Binding" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6xYPVrp_s05" role="1DdaDG">
                  <node concept="37vLTw" id="6xYPVrp_s06" role="2Oq$k0">
                    <ref role="3cqZAo" node="7K4Mb_J$cIV" resolve="subs" />
                  </node>
                  <node concept="liA8E" id="6xYPVrp_s07" role="2OqNvi">
                    <ref role="37wK5l" to="yt73:~Substitution.bindings()" resolve="bindings" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="5TfjU0xAGed" role="3cqZAp">
                <node concept="1PaTwC" id="589APehYy4m" role="1aUNEU">
                  <node concept="3oM_SD" id="589APehYy4n" role="1PaTwD">
                    <property role="3oM_SC" value="unification" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy4o" role="1PaTwD">
                    <property role="3oM_SC" value="succeeded" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy4p" role="1PaTwD">
                    <property role="3oM_SC" value="and" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy4q" role="1PaTwD">
                    <property role="3oM_SC" value="all" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy4r" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy4s" role="1PaTwD">
                    <property role="3oM_SC" value="bindings" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy4t" role="1PaTwD">
                    <property role="3oM_SC" value="have" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy4u" role="1PaTwD">
                    <property role="3oM_SC" value="been" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy4v" role="1PaTwD">
                    <property role="3oM_SC" value="processed" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6xYPVrp_s09" role="3cqZAp">
                <node concept="3clFbT" id="6xYPVrp_s0a" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
              <node concept="3clFbH" id="5TfjU0xAccl" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="5TfjU0x_USX" role="3clFbw">
              <node concept="2ZW3vV" id="5TfjU0x_W50" role="3uHU7w">
                <node concept="3uibUv" id="5TfjU0x_WnH" role="2ZW6by">
                  <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                </node>
                <node concept="37vLTw" id="5TfjU0x_VIY" role="2ZW6bz">
                  <ref role="3cqZAo" node="6GYQG_SpvAV" resolve="rightVal" />
                </node>
              </node>
              <node concept="2ZW3vV" id="5TfjU0x_TmZ" role="3uHU7B">
                <node concept="3uibUv" id="5TfjU0x_U7y" role="2ZW6by">
                  <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                </node>
                <node concept="37vLTw" id="5TfjU0x_Sza" role="2ZW6bz">
                  <ref role="3cqZAo" node="6GYQG_SpvAT" resolve="leftVal" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="5TfjU0xA8QP" role="9aQIa">
              <node concept="3clFbS" id="5TfjU0xA8QQ" role="9aQI4">
                <node concept="3cpWs6" id="5TfjU0xAUAa" role="3cqZAp">
                  <node concept="17R0WA" id="5TfjU0xB26w" role="3cqZAk">
                    <node concept="37vLTw" id="5TfjU0xB5ye" role="3uHU7w">
                      <ref role="3cqZAo" node="6GYQG_SpvAV" resolve="rightVal" />
                    </node>
                    <node concept="37vLTw" id="5TfjU0xAYD$" role="3uHU7B">
                      <ref role="3cqZAo" node="6GYQG_SpvAT" resolve="leftVal" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="5TfjU0x_pYa" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
      </node>
      <node concept="2tJIrI" id="4U_yxogC15$" role="jymVt" />
      <node concept="3clFb_" id="4U_yxogC1eF" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="askUni_val_logical" />
        <node concept="37vLTG" id="4U_yxogC1eG" role="3clF46">
          <property role="TrG5h" value="leftVal" />
          <node concept="16syzq" id="5TfjU0xBvIS" role="1tU5fm">
            <ref role="16sUi3" node="5TfjU0xBs31" resolve="T" />
          </node>
        </node>
        <node concept="37vLTG" id="4U_yxogC1eI" role="3clF46">
          <property role="TrG5h" value="right" />
          <node concept="3uibUv" id="6MYr6Jwz28z" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
            <node concept="16syzq" id="5TfjU0xBye8" role="11_B2D">
              <ref role="16sUi3" node="5TfjU0xBs31" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="10P_77" id="4U_yxogC8Kd" role="3clF45" />
        <node concept="3Tm6S6" id="3gNap3fZfu5" role="1B3o_S" />
        <node concept="3clFbS" id="4U_yxogC1eP" role="3clF47">
          <node concept="3clFbF" id="1bm7a6EVoQx" role="3cqZAp">
            <node concept="1rXfSq" id="1bm7a6EVoQw" role="3clFbG">
              <ref role="37wK5l" node="4U_yxogC1Eh" resolve="askUni_logical_val" />
              <node concept="37vLTw" id="1bm7a6EVpBI" role="37wK5m">
                <ref role="3cqZAo" node="4U_yxogC1eI" resolve="right" />
              </node>
              <node concept="37vLTw" id="1bm7a6EVqdf" role="37wK5m">
                <ref role="3cqZAo" node="4U_yxogC1eG" resolve="leftVal" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="5TfjU0xBs31" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
      </node>
      <node concept="2tJIrI" id="4U_yxogC1eE" role="jymVt" />
      <node concept="3clFb_" id="4U_yxogC1Eh" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="askUni_logical_val" />
        <node concept="37vLTG" id="4U_yxogC1Ek" role="3clF46">
          <property role="TrG5h" value="left" />
          <node concept="3uibUv" id="6MYr6Jwz28A" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
            <node concept="3qTvmN" id="5TfjU0xJJxB" role="11_B2D" />
          </node>
        </node>
        <node concept="37vLTG" id="4U_yxogC1Ei" role="3clF46">
          <property role="TrG5h" value="rightVal" />
          <node concept="16syzq" id="5TfjU0xBOsC" role="1tU5fm">
            <ref role="16sUi3" node="5TfjU0xBAXc" resolve="T" />
          </node>
        </node>
        <node concept="10P_77" id="4U_yxogC8y$" role="3clF45" />
        <node concept="3Tm6S6" id="3gNap3fZfum" role="1B3o_S" />
        <node concept="3clFbS" id="4U_yxogC1Er" role="3clF47">
          <node concept="3clFbJ" id="4U_yxogDnOp" role="3cqZAp">
            <node concept="3clFbS" id="4U_yxogDnOq" role="3clFbx">
              <node concept="3SKdUt" id="5TfjU0xBWUg" role="3cqZAp">
                <node concept="1PaTwC" id="589APehYy4w" role="1aUNEU">
                  <node concept="3oM_SD" id="589APehYy4x" role="1PaTwD">
                    <property role="3oM_SC" value="free" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy4y" role="1PaTwD">
                    <property role="3oM_SC" value="variable" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy4z" role="1PaTwD">
                    <property role="3oM_SC" value="can" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy4$" role="1PaTwD">
                    <property role="3oM_SC" value="be" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy4_" role="1PaTwD">
                    <property role="3oM_SC" value="unified" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy4A" role="1PaTwD">
                    <property role="3oM_SC" value="with" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy4B" role="1PaTwD">
                    <property role="3oM_SC" value="any" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy4C" role="1PaTwD">
                    <property role="3oM_SC" value="value" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="5TfjU0xCkrI" role="3cqZAp">
                <node concept="3cpWsn" id="5TfjU0xCkrJ" role="3cpWs9">
                  <property role="TrG5h" value="cls" />
                  <node concept="3uibUv" id="5TfjU0xCkrK" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                    <node concept="3qTvmN" id="5TfjU0xCkrL" role="11_B2D" />
                  </node>
                  <node concept="2EnYce" id="5TfjU0xCkrM" role="33vP2m">
                    <node concept="1eOMI4" id="5TfjU0xCkrN" role="2Oq$k0">
                      <node concept="2OqwBi" id="5TfjU0xCkrO" role="1eOMHV">
                        <node concept="1eOMI4" id="5TfjU0xJFHa" role="2Oq$k0">
                          <node concept="2OqwBi" id="5TfjU0xJFH7" role="1eOMHV">
                            <node concept="37vLTw" id="5TfjU0xJFH8" role="2Oq$k0">
                              <ref role="3cqZAo" node="4U_yxogC1Ek" resolve="left" />
                            </node>
                            <node concept="liA8E" id="5TfjU0xJFH9" role="2OqNvi">
                              <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="5TfjU0xCkrQ" role="2OqNvi">
                          <ref role="37wK5l" to="bj13:~Logical.metaLogical()" resolve="metaLogical" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="5TfjU0xCkrR" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~MetaLogical.type()" resolve="type" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="5TfjU0xCkrS" role="3cqZAp">
                <node concept="3clFbS" id="5TfjU0xCkrT" role="3clFbx">
                  <node concept="3cpWs8" id="5TfjU0xCkrU" role="3cqZAp">
                    <node concept="3cpWsn" id="5TfjU0xCkrV" role="3cpWs9">
                      <property role="TrG5h" value="termLeftRepr" />
                      <node concept="3uibUv" id="5TfjU0xCkrW" role="1tU5fm">
                        <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                        <node concept="16syzq" id="5TfjU0xCkrX" role="11_B2D">
                          <ref role="16sUi3" node="6MYr6Jw$T5v" resolve="TERM" />
                        </node>
                      </node>
                      <node concept="10QFUN" id="5TfjU0xCkrY" role="33vP2m">
                        <node concept="1eOMI4" id="5TfjU0xJFHe" role="10QFUP">
                          <node concept="2OqwBi" id="5TfjU0xJFHb" role="1eOMHV">
                            <node concept="37vLTw" id="5TfjU0xJFHc" role="2Oq$k0">
                              <ref role="3cqZAo" node="4U_yxogC1Ek" resolve="left" />
                            </node>
                            <node concept="liA8E" id="5TfjU0xJFHd" role="2OqNvi">
                              <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                            </node>
                          </node>
                        </node>
                        <node concept="3uibUv" id="5TfjU0xCks0" role="10QFUM">
                          <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                          <node concept="16syzq" id="5TfjU0xCks1" role="11_B2D">
                            <ref role="16sUi3" node="6MYr6Jw$T5v" resolve="TERM" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="5TfjU0xCks2" role="3cqZAp">
                    <node concept="1PaTwC" id="589APehYy4D" role="1aUNEU">
                      <node concept="3oM_SD" id="589APehYy4E" role="1PaTwD">
                        <property role="3oM_SC" value="check" />
                      </node>
                      <node concept="3oM_SD" id="589APehYy4F" role="1PaTwD">
                        <property role="3oM_SC" value="for" />
                      </node>
                      <node concept="3oM_SD" id="589APehYy4G" role="1PaTwD">
                        <property role="3oM_SC" value="occurrences" />
                      </node>
                      <node concept="3oM_SD" id="589APehYy4H" role="1PaTwD">
                        <property role="3oM_SC" value="of" />
                      </node>
                      <node concept="3oM_SD" id="589APehYy4I" role="1PaTwD">
                        <property role="3oM_SC" value="the" />
                      </node>
                      <node concept="3oM_SD" id="589APehYy4J" role="1PaTwD">
                        <property role="3oM_SC" value="logical" />
                      </node>
                      <node concept="3oM_SD" id="589APehYy4K" role="1PaTwD">
                        <property role="3oM_SC" value="in" />
                      </node>
                      <node concept="3oM_SD" id="589APehYy4L" role="1PaTwD">
                        <property role="3oM_SC" value="the" />
                      </node>
                      <node concept="3oM_SD" id="589APehYy4M" role="1PaTwD">
                        <property role="3oM_SC" value="value" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="5TfjU0xCks4" role="3cqZAp">
                    <node concept="3cpWsn" id="5TfjU0xCks5" role="3cpWs9">
                      <property role="TrG5h" value="subs" />
                      <node concept="3uibUv" id="5TfjU0xCks6" role="1tU5fm">
                        <ref role="3uigEE" to="yt73:~Substitution" resolve="Substitution" />
                      </node>
                      <node concept="2OqwBi" id="5TfjU0xCks7" role="33vP2m">
                        <node concept="10M0yZ" id="5TfjU0xCks8" role="2Oq$k0">
                          <ref role="1PxDUh" to="yt73:~Unification" resolve="Unification" />
                          <ref role="3cqZAo" to="yt73:~Unification.INSTANCE" resolve="INSTANCE" />
                        </node>
                        <node concept="liA8E" id="5TfjU0xCks9" role="2OqNvi">
                          <ref role="37wK5l" to="yt73:~Unification.unify(jetbrains.mps.unification.Term,jetbrains.mps.unification.Term)" resolve="unify" />
                          <node concept="2ShNRf" id="5TfjU0xCksa" role="37wK5m">
                            <node concept="1pGfFk" id="5TfjU0xCksb" role="2ShVmc">
                              <ref role="37wK5l" to="uwx2:4TCblo5ML4I" resolve="LogicalDataForm" />
                              <node concept="37vLTw" id="5TfjU0xCksc" role="37wK5m">
                                <ref role="3cqZAo" node="5TfjU0xCkrV" resolve="termLeftRepr" />
                              </node>
                            </node>
                          </node>
                          <node concept="10QFUN" id="5TfjU0xCksd" role="37wK5m">
                            <node concept="16syzq" id="5TfjU0xCkse" role="10QFUM">
                              <ref role="16sUi3" node="6MYr6Jw$T5v" resolve="TERM" />
                            </node>
                            <node concept="37vLTw" id="5TfjU0xCksf" role="10QFUP">
                              <ref role="3cqZAo" node="4U_yxogC1Ei" resolve="rightVal" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="5TfjU0xCksg" role="3cqZAp">
                    <node concept="3clFbS" id="5TfjU0xCksh" role="3clFbx">
                      <node concept="3cpWs6" id="5TfjU0xCpaR" role="3cqZAp">
                        <node concept="3clFbT" id="5TfjU0xCpbY" role="3cqZAk" />
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="5TfjU0xCksx" role="3clFbw">
                      <node concept="2OqwBi" id="5TfjU0xCksy" role="3fr31v">
                        <node concept="37vLTw" id="5TfjU0xCksz" role="2Oq$k0">
                          <ref role="3cqZAo" node="5TfjU0xCks5" resolve="subs" />
                        </node>
                        <node concept="liA8E" id="5TfjU0xCks$" role="2OqNvi">
                          <ref role="37wK5l" to="yt73:~Substitution.isSuccessful()" resolve="isSuccessful" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="5TfjU0xExYr" role="3cqZAp" />
                  <node concept="1DcWWT" id="5TfjU0xHlr8" role="3cqZAp">
                    <node concept="3clFbS" id="5TfjU0xHlr9" role="2LFqv$">
                      <node concept="3clFbJ" id="5TfjU0xHlra" role="3cqZAp">
                        <node concept="3clFbS" id="5TfjU0xHlrb" role="3clFbx">
                          <node concept="3N13vt" id="5TfjU0xHlrc" role="3cqZAp" />
                        </node>
                        <node concept="3clFbC" id="5TfjU0xHlrj" role="3clFbw">
                          <node concept="2OqwBi" id="5TfjU0xHlrk" role="3uHU7B">
                            <node concept="37vLTw" id="5TfjU0xHlrl" role="2Oq$k0">
                              <ref role="3cqZAo" node="5TfjU0xHlrK" resolve="bnd" />
                            </node>
                            <node concept="liA8E" id="5TfjU0xHlrm" role="2OqNvi">
                              <ref role="37wK5l" to="yt73:~Substitution$Binding.var()" resolve="var" />
                            </node>
                          </node>
                          <node concept="1eOMI4" id="5TfjU0xJFHq" role="3uHU7w">
                            <node concept="2OqwBi" id="5TfjU0xJFHn" role="1eOMHV">
                              <node concept="37vLTw" id="5TfjU0xJFHo" role="2Oq$k0">
                                <ref role="3cqZAo" node="4U_yxogC1Ek" resolve="left" />
                              </node>
                              <node concept="liA8E" id="5TfjU0xJFHp" role="2OqNvi">
                                <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="5TfjU0xHlro" role="3cqZAp" />
                      <node concept="3clFbJ" id="5TfjU0xHlrp" role="3cqZAp">
                        <node concept="3clFbS" id="5TfjU0xHlrq" role="3clFbx">
                          <node concept="3clFbJ" id="5TfjU0xHlrr" role="3cqZAp">
                            <node concept="3clFbS" id="5TfjU0xHlrs" role="3clFbx">
                              <node concept="3cpWs6" id="5TfjU0xHlrt" role="3cqZAp">
                                <node concept="3clFbT" id="5TfjU0xHlru" role="3cqZAk">
                                  <property role="3clFbU" value="false" />
                                </node>
                              </node>
                            </node>
                            <node concept="3fqX7Q" id="5TfjU0xHlrv" role="3clFbw">
                              <node concept="1rXfSq" id="5TfjU0xHlrw" role="3fr31v">
                                <ref role="37wK5l" node="6xYPVrp$baS" resolve="askLogicalUni" />
                                <node concept="2OqwBi" id="5TfjU0xHlrx" role="37wK5m">
                                  <node concept="Xjq3P" id="5TfjU0xHlry" role="2Oq$k0" />
                                  <node concept="liA8E" id="5TfjU0xHlrz" role="2OqNvi">
                                    <ref role="37wK5l" node="3FIATxbQg$N" resolve="asLogicalTerm" />
                                    <node concept="2OqwBi" id="5TfjU0xHlr$" role="37wK5m">
                                      <node concept="37vLTw" id="5TfjU0xHlr_" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5TfjU0xHlrK" resolve="bnd" />
                                      </node>
                                      <node concept="liA8E" id="5TfjU0xHlrA" role="2OqNvi">
                                        <ref role="37wK5l" to="yt73:~Substitution$Binding.var()" resolve="var" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="5TfjU0xHlrB" role="37wK5m">
                                  <node concept="37vLTw" id="5TfjU0xHlrC" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5TfjU0xHlrK" resolve="bnd" />
                                  </node>
                                  <node concept="liA8E" id="5TfjU0xHlrD" role="2OqNvi">
                                    <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="5TfjU0xHQSq" role="3cqZAp" />
                        </node>
                        <node concept="2OqwBi" id="5TfjU0xHlrE" role="3clFbw">
                          <node concept="Xjq3P" id="5TfjU0xHlrF" role="2Oq$k0" />
                          <node concept="liA8E" id="5TfjU0xHlrG" role="2OqNvi">
                            <ref role="37wK5l" node="3FIATxbQg_7" resolve="isLogicalTerm" />
                            <node concept="2OqwBi" id="5TfjU0xHlrH" role="37wK5m">
                              <node concept="37vLTw" id="5TfjU0xHlrI" role="2Oq$k0">
                                <ref role="3cqZAo" node="5TfjU0xHlrK" resolve="bnd" />
                              </node>
                              <node concept="liA8E" id="5TfjU0xHlrJ" role="2OqNvi">
                                <ref role="37wK5l" to="yt73:~Substitution$Binding.var()" resolve="var" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3eNFk2" id="5TfjU0xHMGW" role="3eNLev">
                          <node concept="3clFbS" id="5TfjU0xHMGX" role="3eOfB_">
                            <node concept="3cpWs8" id="5TfjU0xHMGY" role="3cqZAp">
                              <node concept="3cpWsn" id="5TfjU0xHMGZ" role="3cpWs9">
                                <property role="TrG5h" value="bndLeft" />
                                <node concept="3uibUv" id="5TfjU0xHMH0" role="1tU5fm">
                                  <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                                  <node concept="3qTvmN" id="5TfjU0xHV1U" role="11_B2D" />
                                </node>
                                <node concept="2OqwBi" id="5TfjU0xHMH2" role="33vP2m">
                                  <node concept="1eOMI4" id="5TfjU0xHMH3" role="2Oq$k0">
                                    <node concept="2OqwBi" id="5TfjU0xHMH4" role="1eOMHV">
                                      <node concept="Xjq3P" id="5TfjU0xHMH5" role="2Oq$k0" />
                                      <node concept="liA8E" id="5TfjU0xHMH6" role="2OqNvi">
                                        <ref role="37wK5l" node="3gNap3fZimy" resolve="asLogicalValue" />
                                        <node concept="2OqwBi" id="5TfjU0xHMH7" role="37wK5m">
                                          <node concept="37vLTw" id="5TfjU0xHMH8" role="2Oq$k0">
                                            <ref role="3cqZAo" node="5TfjU0xHlrK" resolve="bnd" />
                                          </node>
                                          <node concept="liA8E" id="5TfjU0xHMH9" role="2OqNvi">
                                            <ref role="37wK5l" to="yt73:~Substitution$Binding.var()" resolve="var" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="5TfjU0xHMHa" role="2OqNvi">
                                    <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="5TfjU0xHMHb" role="3cqZAp">
                              <node concept="3clFbS" id="5TfjU0xHMHc" role="3clFbx">
                                <node concept="3cpWs8" id="5TfjU0xHMHd" role="3cqZAp">
                                  <node concept="3cpWsn" id="5TfjU0xHMHe" role="3cpWs9">
                                    <property role="TrG5h" value="bndRight" />
                                    <node concept="3uibUv" id="5TfjU0xHMHf" role="1tU5fm">
                                      <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                                      <node concept="3qTvmN" id="5TfjU0xHMHg" role="11_B2D" />
                                    </node>
                                    <node concept="2OqwBi" id="5TfjU0xHMHh" role="33vP2m">
                                      <node concept="2OqwBi" id="5TfjU0xHMHi" role="2Oq$k0">
                                        <node concept="Xjq3P" id="5TfjU0xHMHj" role="2Oq$k0" />
                                        <node concept="liA8E" id="5TfjU0xHMHk" role="2OqNvi">
                                          <ref role="37wK5l" node="3gNap3fZimy" resolve="asLogicalValue" />
                                          <node concept="2OqwBi" id="5TfjU0xHMHl" role="37wK5m">
                                            <node concept="37vLTw" id="5TfjU0xHMHm" role="2Oq$k0">
                                              <ref role="3cqZAo" node="5TfjU0xHlrK" resolve="bnd" />
                                            </node>
                                            <node concept="liA8E" id="5TfjU0xHMHn" role="2OqNvi">
                                              <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="5TfjU0xHMHo" role="2OqNvi">
                                        <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="5TfjU0xHMHp" role="3cqZAp" />
                                <node concept="3clFbJ" id="5TfjU0xHMHq" role="3cqZAp">
                                  <node concept="3clFbS" id="5TfjU0xHMHr" role="3clFbx">
                                    <node concept="3clFbJ" id="5TfjU0xHMHs" role="3cqZAp">
                                      <node concept="3clFbS" id="5TfjU0xHMHt" role="3clFbx">
                                        <node concept="3cpWs6" id="5TfjU0xHMHu" role="3cqZAp">
                                          <node concept="3clFbT" id="5TfjU0xHMHv" role="3cqZAk" />
                                        </node>
                                      </node>
                                      <node concept="17QLQc" id="5TfjU0xHMHw" role="3clFbw">
                                        <node concept="37vLTw" id="5TfjU0xHMHx" role="3uHU7B">
                                          <ref role="3cqZAo" node="4U_yxogC1Ei" resolve="rightVal" />
                                        </node>
                                        <node concept="2OqwBi" id="5TfjU0xHMHy" role="3uHU7w">
                                          <node concept="37vLTw" id="5TfjU0xHMHz" role="2Oq$k0">
                                            <ref role="3cqZAo" node="5TfjU0xHMGZ" resolve="bndLeft" />
                                          </node>
                                          <node concept="liA8E" id="5TfjU0xHMH$" role="2OqNvi">
                                            <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="1Wc70l" id="5TfjU0xHMH_" role="3clFbw">
                                    <node concept="2OqwBi" id="5TfjU0xHMHA" role="3uHU7w">
                                      <node concept="37vLTw" id="5TfjU0xHMHB" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5TfjU0xHMHe" resolve="bndRight" />
                                      </node>
                                      <node concept="liA8E" id="5TfjU0xHMHC" role="2OqNvi">
                                        <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="5TfjU0xHMHD" role="3uHU7B">
                                      <node concept="37vLTw" id="5TfjU0xHMHE" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5TfjU0xHMGZ" resolve="bndLeft" />
                                      </node>
                                      <node concept="liA8E" id="5TfjU0xHMHF" role="2OqNvi">
                                        <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="5TfjU0xHMHG" role="3cqZAp" />
                              </node>
                              <node concept="1rXfSq" id="5TfjU0xHMHH" role="3clFbw">
                                <ref role="37wK5l" node="3gNap3fZhXk" resolve="isLogicalValue" />
                                <node concept="2OqwBi" id="5TfjU0xHMHI" role="37wK5m">
                                  <node concept="37vLTw" id="5TfjU0xHMHJ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5TfjU0xHlrK" resolve="bnd" />
                                  </node>
                                  <node concept="liA8E" id="5TfjU0xHMHK" role="2OqNvi">
                                    <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3eNFk2" id="5TfjU0xHMHL" role="3eNLev">
                                <node concept="2ZW3vV" id="5TfjU0xHMHM" role="3eO9$A">
                                  <node concept="3uibUv" id="5TfjU0xHMHN" role="2ZW6by">
                                    <ref role="3uigEE" to="cof4:2xQ7eRAD2dj" resolve="Value" />
                                  </node>
                                  <node concept="2OqwBi" id="5TfjU0xHMHO" role="2ZW6bz">
                                    <node concept="37vLTw" id="5TfjU0xHMHP" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5TfjU0xHlrK" resolve="bnd" />
                                    </node>
                                    <node concept="liA8E" id="5TfjU0xHMHQ" role="2OqNvi">
                                      <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbS" id="5TfjU0xHMHR" role="3eOfB_">
                                  <node concept="3clFbJ" id="5TfjU0xHMHS" role="3cqZAp">
                                    <node concept="1Wc70l" id="5TfjU0xHMHT" role="3clFbw">
                                      <node concept="17QLQc" id="5TfjU0xHMHU" role="3uHU7w">
                                        <node concept="2OqwBi" id="5TfjU0xHMHV" role="3uHU7w">
                                          <node concept="1eOMI4" id="5TfjU0xHMHW" role="2Oq$k0">
                                            <node concept="10QFUN" id="5TfjU0xHMHX" role="1eOMHV">
                                              <node concept="3uibUv" id="5TfjU0xHMHY" role="10QFUM">
                                                <ref role="3uigEE" to="cof4:2xQ7eRAD2dj" resolve="Value" />
                                              </node>
                                              <node concept="2OqwBi" id="5TfjU0xHMHZ" role="10QFUP">
                                                <node concept="37vLTw" id="5TfjU0xHMI0" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="5TfjU0xHlrK" resolve="bnd" />
                                                </node>
                                                <node concept="liA8E" id="5TfjU0xHMI1" role="2OqNvi">
                                                  <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="5TfjU0xHMI2" role="2OqNvi">
                                            <ref role="37wK5l" to="cof4:1msb0mq8QTt" resolve="symbol" />
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="5TfjU0xHMI3" role="3uHU7B">
                                          <node concept="37vLTw" id="5TfjU0xHMI4" role="2Oq$k0">
                                            <ref role="3cqZAo" node="5TfjU0xHMGZ" resolve="bndLeft" />
                                          </node>
                                          <node concept="liA8E" id="5TfjU0xHMI5" role="2OqNvi">
                                            <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="5TfjU0xHMI6" role="3uHU7B">
                                        <node concept="37vLTw" id="5TfjU0xHMI7" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5TfjU0xHMGZ" resolve="bndLeft" />
                                        </node>
                                        <node concept="liA8E" id="5TfjU0xHMI8" role="2OqNvi">
                                          <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbS" id="5TfjU0xHMI9" role="3clFbx">
                                      <node concept="3cpWs6" id="5TfjU0xHMIa" role="3cqZAp">
                                        <node concept="3clFbT" id="5TfjU0xHMIb" role="3cqZAk" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1rXfSq" id="5TfjU0xHMIc" role="3eO9$A">
                            <ref role="37wK5l" node="3gNap3fZhXk" resolve="isLogicalValue" />
                            <node concept="2OqwBi" id="5TfjU0xHMId" role="37wK5m">
                              <node concept="37vLTw" id="5TfjU0xHMIe" role="2Oq$k0">
                                <ref role="3cqZAo" node="5TfjU0xHlrK" resolve="bnd" />
                              </node>
                              <node concept="liA8E" id="5TfjU0xHMIf" role="2OqNvi">
                                <ref role="37wK5l" to="yt73:~Substitution$Binding.var()" resolve="var" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWsn" id="5TfjU0xHlrK" role="1Duv9x">
                      <property role="TrG5h" value="bnd" />
                      <node concept="3uibUv" id="5TfjU0xHlrL" role="1tU5fm">
                        <ref role="3uigEE" to="yt73:~Substitution$Binding" resolve="Substitution.Binding" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5TfjU0xHlrM" role="1DdaDG">
                      <node concept="37vLTw" id="5TfjU0xHlrN" role="2Oq$k0">
                        <ref role="3cqZAo" node="5TfjU0xCks5" resolve="subs" />
                      </node>
                      <node concept="liA8E" id="5TfjU0xHlrO" role="2OqNvi">
                        <ref role="37wK5l" to="yt73:~Substitution.bindings()" resolve="bindings" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="5TfjU0xCksA" role="3clFbw">
                  <node concept="3y3z36" id="5TfjU0xCksB" role="3uHU7B">
                    <node concept="10Nm6u" id="5TfjU0xCksC" role="3uHU7w" />
                    <node concept="37vLTw" id="5TfjU0xCksD" role="3uHU7B">
                      <ref role="3cqZAo" node="5TfjU0xCkrJ" resolve="cls" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5TfjU0xCksE" role="3uHU7w">
                    <node concept="3VsKOn" id="5TfjU0xCksF" role="2Oq$k0">
                      <ref role="3VsUkX" to="yt73:~Term" resolve="Term" />
                    </node>
                    <node concept="liA8E" id="5TfjU0xCksG" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Class.isAssignableFrom(java.lang.Class)" resolve="isAssignableFrom" />
                      <node concept="37vLTw" id="5TfjU0xCksH" role="37wK5m">
                        <ref role="3cqZAo" node="5TfjU0xCkrJ" resolve="cls" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5TfjU0xCkr_" role="3cqZAp" />
              <node concept="3cpWs6" id="4U_yxogDnOr" role="3cqZAp">
                <node concept="3clFbT" id="5oZZzbriPgw" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
              <node concept="3clFbH" id="5TfjU0xCIpl" role="3cqZAp" />
            </node>
            <node concept="3clFbC" id="4U_yxogDnOt" role="3clFbw">
              <node concept="10Nm6u" id="4U_yxogDnOu" role="3uHU7w" />
              <node concept="2OqwBi" id="4U_yxogDnOv" role="3uHU7B">
                <node concept="1eOMI4" id="5TfjU0xJFHi" role="2Oq$k0">
                  <node concept="2OqwBi" id="5TfjU0xJFHf" role="1eOMHV">
                    <node concept="37vLTw" id="5TfjU0xJFHg" role="2Oq$k0">
                      <ref role="3cqZAo" node="4U_yxogC1Ek" resolve="left" />
                    </node>
                    <node concept="liA8E" id="5TfjU0xJFHh" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4U_yxogDnOx" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="5TfjU0xCEWa" role="9aQIa">
              <node concept="3clFbS" id="5TfjU0xCEWb" role="9aQI4">
                <node concept="3cpWs6" id="5TfjU0xCLRp" role="3cqZAp">
                  <node concept="1rXfSq" id="5TfjU0xCOdx" role="3cqZAk">
                    <ref role="37wK5l" node="6GYQG_SpvAS" resolve="askUni_val_val" />
                    <node concept="2OqwBi" id="5TfjU0xCXuW" role="37wK5m">
                      <node concept="1eOMI4" id="5TfjU0xJFHm" role="2Oq$k0">
                        <node concept="2OqwBi" id="5TfjU0xJFHj" role="1eOMHV">
                          <node concept="37vLTw" id="5TfjU0xJFHk" role="2Oq$k0">
                            <ref role="3cqZAo" node="4U_yxogC1Ek" resolve="left" />
                          </node>
                          <node concept="liA8E" id="5TfjU0xJFHl" role="2OqNvi">
                            <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="5TfjU0xCZYL" role="2OqNvi">
                        <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="5TfjU0xD3yM" role="37wK5m">
                      <ref role="3cqZAo" node="4U_yxogC1Ei" resolve="rightVal" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="5TfjU0xBAXc" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
        <node concept="16euLQ" id="6MYr6Jw$T5v" role="16eVyc">
          <property role="TrG5h" value="TERM" />
          <node concept="3uibUv" id="6MYr6Jw$XyJ" role="3ztrMU">
            <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7txc83pee6D" role="jymVt" />
      <node concept="3clFb_" id="4U_yxogC2zx" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="ask_logical_logical" />
        <node concept="37vLTG" id="4U_yxogC2zy" role="3clF46">
          <property role="TrG5h" value="left" />
          <node concept="3uibUv" id="6MYr6Jwz28G" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
            <node concept="16syzq" id="5TfjU0xDw1d" role="11_B2D">
              <ref role="16sUi3" node="5TfjU0xDjwQ" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4U_yxogC2z$" role="3clF46">
          <property role="TrG5h" value="right" />
          <node concept="3uibUv" id="6MYr6Jwz28J" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
            <node concept="16syzq" id="5TfjU0xDzo5" role="11_B2D">
              <ref role="16sUi3" node="5TfjU0xDjwQ" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="10P_77" id="4U_yxogC8eN" role="3clF45" />
        <node concept="3Tm6S6" id="3gNap3fZfup" role="1B3o_S" />
        <node concept="3clFbS" id="4U_yxogC2zF" role="3clF47">
          <node concept="3cpWs8" id="7d$oK1$nL7E" role="3cqZAp">
            <node concept="3cpWsn" id="7d$oK1$nL7F" role="3cpWs9">
              <property role="TrG5h" value="leftRepr" />
              <node concept="3uibUv" id="6MYr6Jwz28M" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                <node concept="16syzq" id="5TfjU0xH76F" role="11_B2D">
                  <ref role="16sUi3" node="5TfjU0xDjwQ" resolve="T" />
                </node>
              </node>
              <node concept="2OqwBi" id="7d$oK1$nL7H" role="33vP2m">
                <node concept="37vLTw" id="7d$oK1$nL7I" role="2Oq$k0">
                  <ref role="3cqZAo" node="4U_yxogC2zy" resolve="left" />
                </node>
                <node concept="liA8E" id="7d$oK1$nL7J" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7d$oK1$nLDM" role="3cqZAp">
            <node concept="3cpWsn" id="7d$oK1$nLDN" role="3cpWs9">
              <property role="TrG5h" value="rightRepr" />
              <node concept="3uibUv" id="6MYr6Jwz28P" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                <node concept="16syzq" id="5TfjU0xHaCr" role="11_B2D">
                  <ref role="16sUi3" node="5TfjU0xDjwQ" resolve="T" />
                </node>
              </node>
              <node concept="2OqwBi" id="7d$oK1$nLDP" role="33vP2m">
                <node concept="37vLTw" id="7d$oK1$nLDQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="4U_yxogC2z$" resolve="right" />
                </node>
                <node concept="liA8E" id="7d$oK1$nLDR" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4U_yxogCA7q" role="3cqZAp">
            <node concept="3clFbS" id="4U_yxogCA7t" role="3clFbx">
              <node concept="3cpWs6" id="4U_yxogCANm" role="3cqZAp">
                <node concept="3clFbT" id="4U_yxogCAQD" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="4U_yxogCAKd" role="3clFbw">
              <node concept="37vLTw" id="7d$oK1$oi_v" role="3uHU7w">
                <ref role="3cqZAo" node="7d$oK1$nLDN" resolve="rightRepr" />
              </node>
              <node concept="37vLTw" id="7d$oK1$oicb" role="3uHU7B">
                <ref role="3cqZAo" node="7d$oK1$nL7F" resolve="leftRepr" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5TfjU0xDUhP" role="3cqZAp" />
          <node concept="3clFbJ" id="5TfjU0xETOL" role="3cqZAp">
            <node concept="3clFbS" id="5TfjU0xETON" role="3clFbx">
              <node concept="3cpWs6" id="5TfjU0xF5Fa" role="3cqZAp">
                <node concept="1rXfSq" id="5TfjU0xF8ln" role="3cqZAk">
                  <ref role="37wK5l" node="6GYQG_SpvAS" resolve="askUni_val_val" />
                  <node concept="2OqwBi" id="5TfjU0xFff$" role="37wK5m">
                    <node concept="37vLTw" id="5TfjU0xFbLz" role="2Oq$k0">
                      <ref role="3cqZAo" node="7d$oK1$nL7F" resolve="leftRepr" />
                    </node>
                    <node concept="liA8E" id="5TfjU0xFiJ$" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5TfjU0xFrQi" role="37wK5m">
                    <node concept="37vLTw" id="5TfjU0xFpBG" role="2Oq$k0">
                      <ref role="3cqZAo" node="7d$oK1$nLDN" resolve="rightRepr" />
                    </node>
                    <node concept="liA8E" id="5TfjU0xFufg" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="5TfjU0xF3b0" role="3clFbw">
              <node concept="2OqwBi" id="5TfjU0xF52e" role="3uHU7w">
                <node concept="37vLTw" id="5TfjU0xF4T$" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$nLDN" resolve="rightRepr" />
                </node>
                <node concept="liA8E" id="5TfjU0xF5pB" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                </node>
              </node>
              <node concept="2OqwBi" id="5TfjU0xF0Tt" role="3uHU7B">
                <node concept="37vLTw" id="5TfjU0xEYq6" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$nL7F" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="5TfjU0xF2Pc" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5TfjU0xFDWr" role="3cqZAp">
            <node concept="3clFbS" id="5TfjU0xFDWt" role="3clFbx">
              <node concept="3cpWs6" id="5TfjU0xG7BU" role="3cqZAp">
                <node concept="1rXfSq" id="5TfjU0xGb5X" role="3cqZAk">
                  <ref role="37wK5l" node="4U_yxogC1eF" resolve="askUni_val_logical" />
                  <node concept="2OqwBi" id="5TfjU0xGqLz" role="37wK5m">
                    <node concept="37vLTw" id="5TfjU0xGoBM" role="2Oq$k0">
                      <ref role="3cqZAo" node="7d$oK1$nL7F" resolve="leftRepr" />
                    </node>
                    <node concept="liA8E" id="5TfjU0xGuDg" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5TfjU0xGyXd" role="37wK5m">
                    <ref role="3cqZAo" node="7d$oK1$nLDN" resolve="rightRepr" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5TfjU0xFVP6" role="3clFbw">
              <node concept="37vLTw" id="5TfjU0xFTvn" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$nL7F" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="5TfjU0xFYlu" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5TfjU0xGAr4" role="3cqZAp">
            <node concept="3clFbS" id="5TfjU0xGAr5" role="3clFbx">
              <node concept="3cpWs6" id="5TfjU0xGAr6" role="3cqZAp">
                <node concept="1rXfSq" id="5TfjU0xGAr7" role="3cqZAk">
                  <ref role="37wK5l" node="4U_yxogC1Eh" resolve="askUni_logical_val" />
                  <node concept="37vLTw" id="5TfjU0xGAr9" role="37wK5m">
                    <ref role="3cqZAo" node="7d$oK1$nL7F" resolve="leftRepr" />
                  </node>
                  <node concept="2OqwBi" id="5TfjU0xGNGl" role="37wK5m">
                    <node concept="37vLTw" id="5TfjU0xGArb" role="2Oq$k0">
                      <ref role="3cqZAo" node="7d$oK1$nLDN" resolve="rightRepr" />
                    </node>
                    <node concept="liA8E" id="5TfjU0xGRAT" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5TfjU0xGArc" role="3clFbw">
              <node concept="37vLTw" id="5TfjU0xGE2W" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$nLDN" resolve="rightRepr" />
              </node>
              <node concept="liA8E" id="5TfjU0xGAre" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5TfjU0xEQmV" role="3cqZAp" />
          <node concept="3SKdUt" id="5TfjU0xI2Fy" role="3cqZAp">
            <node concept="1PaTwC" id="589APehYy4N" role="1aUNEU">
              <node concept="3oM_SD" id="589APehYy4O" role="1PaTwD">
                <property role="3oM_SC" value="both" />
              </node>
              <node concept="3oM_SD" id="589APehYy4P" role="1PaTwD">
                <property role="3oM_SC" value="logicals" />
              </node>
              <node concept="3oM_SD" id="589APehYy4Q" role="1PaTwD">
                <property role="3oM_SC" value="are" />
              </node>
              <node concept="3oM_SD" id="589APehYy4R" role="1PaTwD">
                <property role="3oM_SC" value="free" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="3HJTsBn3F6H" role="3cqZAp">
            <node concept="3clFbT" id="6xYPVrp_bB3" role="3cqZAk">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="5TfjU0xDjwQ" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
      </node>
      <node concept="2tJIrI" id="6xYPVrp$ahc" role="jymVt" />
      <node concept="3clFb_" id="6xYPVrp$baS" role="jymVt">
        <property role="TrG5h" value="askLogicalUni" />
        <node concept="37vLTG" id="6xYPVrp_1P$" role="3clF46">
          <property role="TrG5h" value="logical" />
          <node concept="3uibUv" id="6xYPVrp_2ET" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
            <node concept="3qTvmN" id="6xYPVrp_31s" role="11_B2D" />
          </node>
        </node>
        <node concept="37vLTG" id="6xYPVrp_37O" role="3clF46">
          <property role="TrG5h" value="bound" />
          <node concept="16syzq" id="6MYr6JwM2_H" role="1tU5fm">
            <ref role="16sUi3" node="6MYr6JwM1_T" resolve="TERM" />
          </node>
        </node>
        <node concept="10P_77" id="6xYPVrp$cck" role="3clF45" />
        <node concept="3Tm6S6" id="6xYPVrp$spZ" role="1B3o_S" />
        <node concept="3clFbS" id="6xYPVrp$baW" role="3clF47">
          <node concept="3clFbJ" id="6MYr6Jy8zYq" role="3cqZAp">
            <node concept="3clFbS" id="6MYr6Jy8zYs" role="3clFbx">
              <node concept="3cpWs6" id="6MYr6Jy8_fg" role="3cqZAp">
                <node concept="3clFbT" id="6MYr6Jy8AkY" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="6MYr6Jy8_4n" role="3clFbw">
              <node concept="2OqwBi" id="6MYr6Jy8_aP" role="3fr31v">
                <node concept="37vLTw" id="6MYr6Jy8_8Y" role="2Oq$k0">
                  <ref role="3cqZAo" node="6xYPVrp_1P$" resolve="logical" />
                </node>
                <node concept="liA8E" id="6MYr6Jy8_cI" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2T1p0CFz5tY" role="3cqZAp" />
          <node concept="3clFbJ" id="2T1p0CFz6an" role="3cqZAp">
            <node concept="3clFbS" id="2T1p0CFz6ao" role="3clFbx">
              <node concept="3cpWs6" id="2T1p0CFz6ap" role="3cqZAp">
                <node concept="1rXfSq" id="2T1p0CFz6aq" role="3cqZAk">
                  <ref role="37wK5l" node="4U_yxogC1Eh" resolve="askUni_logical_val" />
                  <node concept="10QFUN" id="2T1p0CFz6ar" role="37wK5m">
                    <node concept="3uibUv" id="2T1p0CFz6as" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                      <node concept="16syzq" id="2T1p0CFz6at" role="11_B2D">
                        <ref role="16sUi3" node="6MYr6JwM1_T" resolve="TERM" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2T1p0CFz6au" role="10QFUP">
                      <ref role="3cqZAo" node="6xYPVrp_1P$" resolve="logical" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4p5Sefk9MPc" role="37wK5m">
                    <ref role="3cqZAo" node="6xYPVrp_37O" resolve="bound" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2T1p0CFz6az" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="2T1p0CFz6a$" role="3clFbw">
              <node concept="37vLTw" id="2T1p0CFz6a_" role="2Oq$k0">
                <ref role="3cqZAo" node="6xYPVrp_37O" resolve="bound" />
              </node>
              <node concept="liA8E" id="2T1p0CFz6aA" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Term.is(jetbrains.mps.unification.Term$Kind)" resolve="is" />
                <node concept="Rm8GO" id="2T1p0CFz6aB" role="37wK5m">
                  <ref role="1Px2BO" to="yt73:~Term$Kind" resolve="Term.Kind" />
                  <ref role="Rm8GQ" to="yt73:~Term$Kind.FUN" resolve="FUN" />
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="2T1p0CFz6aC" role="3eNLev">
              <node concept="3clFbS" id="2T1p0CFz6aD" role="3eOfB_">
                <node concept="3cpWs6" id="2T1p0CFz6aE" role="3cqZAp">
                  <node concept="1rXfSq" id="2T1p0CFz6aF" role="3cqZAk">
                    <ref role="37wK5l" node="4U_yxogC2zx" resolve="ask_logical_logical" />
                    <node concept="10QFUN" id="2T1p0CFz6aG" role="37wK5m">
                      <node concept="3uibUv" id="2T1p0CFz6aH" role="10QFUM">
                        <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                        <node concept="16syzq" id="2T1p0CFz6aI" role="11_B2D">
                          <ref role="16sUi3" node="6MYr6JwM1_T" resolve="TERM" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2T1p0CFz6aJ" role="10QFUP">
                        <ref role="3cqZAo" node="6xYPVrp_1P$" resolve="logical" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2T1p0CFz6aK" role="37wK5m">
                      <node concept="Xjq3P" id="3gNap3fzIDH" role="2Oq$k0" />
                      <node concept="liA8E" id="2T1p0CFz6aM" role="2OqNvi">
                        <ref role="37wK5l" node="3FIATxbQg$N" resolve="asLogicalTerm" />
                        <node concept="37vLTw" id="2T1p0CFz6aN" role="37wK5m">
                          <ref role="3cqZAo" node="6xYPVrp_37O" resolve="bound" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2T1p0CFz6aO" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="2T1p0CFz6aP" role="3eO9$A">
                <node concept="37vLTw" id="2T1p0CFz6aQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="6xYPVrp_37O" resolve="bound" />
                </node>
                <node concept="liA8E" id="2T1p0CFz6aR" role="2OqNvi">
                  <ref role="37wK5l" to="yt73:~Term.is(jetbrains.mps.unification.Term$Kind)" resolve="is" />
                  <node concept="Rm8GO" id="2T1p0CFz6aS" role="37wK5m">
                    <ref role="1Px2BO" to="yt73:~Term$Kind" resolve="Term.Kind" />
                    <ref role="Rm8GQ" to="yt73:~Term$Kind.VAR" resolve="VAR" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="2T1p0CFz6aT" role="9aQIa">
              <node concept="3clFbS" id="2T1p0CFz6aU" role="9aQI4">
                <node concept="3clFbH" id="5TfjU0xJ9wW" role="3cqZAp" />
                <node concept="YS8fn" id="2T1p0CFz6aV" role="3cqZAp">
                  <node concept="2ShNRf" id="2T1p0CFz6aW" role="YScLw">
                    <node concept="1pGfFk" id="2T1p0CFz6aX" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                      <node concept="3cpWs3" id="2T1p0CFz6aY" role="37wK5m">
                        <node concept="Xl_RD" id="2T1p0CFz6aZ" role="3uHU7w">
                          <property role="Xl_RC" value="'" />
                        </node>
                        <node concept="3cpWs3" id="2T1p0CFz6b0" role="3uHU7B">
                          <node concept="Xl_RD" id="2T1p0CFz6b1" role="3uHU7B">
                            <property role="Xl_RC" value="node is neither a term nor a var: '" />
                          </node>
                          <node concept="37vLTw" id="2T1p0CFz6b2" role="3uHU7w">
                            <ref role="3cqZAo" node="6xYPVrp_37O" resolve="bound" />
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
        <node concept="16euLQ" id="6MYr6JwM1_T" role="16eVyc">
          <property role="TrG5h" value="TERM" />
          <node concept="3uibUv" id="6MYr6JwM2t7" role="3ztrMU">
            <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4U_yxogC2zw" role="jymVt" />
      <node concept="3clFb_" id="1MWQR5SpMLA" role="jymVt">
        <property role="TrG5h" value="formatMessage" />
        <node concept="3Tm6S6" id="1MWQR5SpMLB" role="1B3o_S" />
        <node concept="17QB3L" id="1MWQR5SpMLC" role="3clF45" />
        <node concept="37vLTG" id="1MWQR5SpMLu" role="3clF46">
          <property role="TrG5h" value="subs" />
          <node concept="3uibUv" id="1MWQR5SpMLv" role="1tU5fm">
            <ref role="3uigEE" to="yt73:~Substitution" resolve="Substitution" />
          </node>
        </node>
        <node concept="3clFbS" id="1MWQR5SpMKW" role="3clF47">
          <node concept="3cpWs8" id="1MWQR5SpMKZ" role="3cqZAp">
            <node concept="3cpWsn" id="1MWQR5SpML0" role="3cpWs9">
              <property role="TrG5h" value="msg" />
              <node concept="17QB3L" id="1MWQR5SpML1" role="1tU5fm" />
              <node concept="2OqwBi" id="1MWQR5SpML2" role="33vP2m">
                <node concept="2OqwBi" id="1MWQR5SpML3" role="2Oq$k0">
                  <node concept="37vLTw" id="1MWQR5SpMLw" role="2Oq$k0">
                    <ref role="3cqZAo" node="1MWQR5SpMLu" resolve="subs" />
                  </node>
                  <node concept="liA8E" id="1MWQR5SpML5" role="2OqNvi">
                    <ref role="37wK5l" to="yt73:~Substitution.failureCause()" resolve="failureCause" />
                  </node>
                </node>
                <node concept="liA8E" id="1MWQR5SpML6" role="2OqNvi">
                  <ref role="37wK5l" to="yt73:~Substitution$FailureCause.toString()" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1MWQR5SpML7" role="3cqZAp">
            <node concept="3clFbS" id="1MWQR5SpML8" role="3clFbx">
              <node concept="3clFbF" id="1MWQR5SpML9" role="3cqZAp">
                <node concept="37vLTI" id="1MWQR5SpMLa" role="3clFbG">
                  <node concept="2YIFZM" id="1MWQR5SpMLb" role="37vLTx">
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                    <node concept="Xl_RD" id="1MWQR5SpMLc" role="37wK5m">
                      <property role="Xl_RC" value="'%s' != '%s'" />
                    </node>
                    <node concept="2OqwBi" id="1MWQR5SpMLd" role="37wK5m">
                      <node concept="37vLTw" id="1MWQR5SpMLy" role="2Oq$k0">
                        <ref role="3cqZAo" node="1MWQR5SpMLu" resolve="subs" />
                      </node>
                      <node concept="liA8E" id="1MWQR5SpMLf" role="2OqNvi">
                        <ref role="37wK5l" to="yt73:~Substitution.failureDetails()" resolve="failureDetails" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="1MWQR5SpMLg" role="37vLTJ">
                    <ref role="3cqZAo" node="1MWQR5SpML0" resolve="msg" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="1MWQR5SpMLh" role="3clFbw">
              <node concept="3clFbC" id="1MWQR5SpMLi" role="3uHU7B">
                <node concept="Rm8GO" id="1MWQR5SpMLj" role="3uHU7w">
                  <ref role="1Px2BO" to="yt73:~Substitution$FailureCause" resolve="Substitution.FailureCause" />
                  <ref role="Rm8GQ" to="yt73:~Substitution$FailureCause.SYMBOL_CLASH" resolve="SYMBOL_CLASH" />
                </node>
                <node concept="2OqwBi" id="1MWQR5SpMLk" role="3uHU7B">
                  <node concept="37vLTw" id="1MWQR5SpMLx" role="2Oq$k0">
                    <ref role="3cqZAo" node="1MWQR5SpMLu" resolve="subs" />
                  </node>
                  <node concept="liA8E" id="1MWQR5SpMLm" role="2OqNvi">
                    <ref role="37wK5l" to="yt73:~Substitution.failureCause()" resolve="failureCause" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="1MWQR5SpMLn" role="3uHU7w">
                <node concept="10Nm6u" id="1MWQR5SpMLo" role="3uHU7w" />
                <node concept="2OqwBi" id="1MWQR5SpMLp" role="3uHU7B">
                  <node concept="37vLTw" id="1MWQR5SpMLz" role="2Oq$k0">
                    <ref role="3cqZAo" node="1MWQR5SpMLu" resolve="subs" />
                  </node>
                  <node concept="liA8E" id="1MWQR5SpMLr" role="2OqNvi">
                    <ref role="37wK5l" to="yt73:~Substitution.failureDetails()" resolve="failureDetails" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="1MWQR5SpMLs" role="3cqZAp">
            <node concept="37vLTw" id="1MWQR5SpMLt" role="3cqZAk">
              <ref role="3cqZAo" node="1MWQR5SpML0" resolve="msg" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3gNap3frX0L" role="jymVt" />
      <node concept="3clFb_" id="3FIATxbQg$N" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="asLogicalTerm" />
        <node concept="37vLTG" id="3FIATxbQg$O" role="3clF46">
          <property role="TrG5h" value="var" />
          <node concept="16syzq" id="3FIATxbQg$P" role="1tU5fm">
            <ref role="16sUi3" node="3FIATxbQg$T" resolve="TERM" />
          </node>
        </node>
        <node concept="3uibUv" id="3FIATxbQg$Q" role="3clF45">
          <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
          <node concept="16syzq" id="3FIATxbQg$R" role="11_B2D">
            <ref role="16sUi3" node="3FIATxbQg$T" resolve="TERM" />
          </node>
        </node>
        <node concept="3Tm6S6" id="3gNap3fzEkQ" role="1B3o_S" />
        <node concept="16euLQ" id="3FIATxbQg$T" role="16eVyc">
          <property role="TrG5h" value="TERM" />
          <node concept="3uibUv" id="3FIATxbQg$U" role="3ztrMU">
            <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
          </node>
        </node>
        <node concept="3clFbS" id="3FIATxbQg$V" role="3clF47">
          <node concept="3clFbJ" id="3gNap3fzF$k" role="3cqZAp">
            <node concept="3clFbS" id="3gNap3fzF$m" role="3clFbx">
              <node concept="3cpWs6" id="3gNap3fzGM6" role="3cqZAp">
                <node concept="10QFUN" id="3gNap3fzGMb" role="3cqZAk">
                  <node concept="2OqwBi" id="3gNap3fzGMc" role="10QFUP">
                    <node concept="1eOMI4" id="3gNap3fzGMd" role="2Oq$k0">
                      <node concept="10QFUN" id="3gNap3fzGMe" role="1eOMHV">
                        <node concept="37vLTw" id="3gNap3fzGMf" role="10QFUP">
                          <ref role="3cqZAo" node="3FIATxbQg$O" resolve="var" />
                        </node>
                        <node concept="3uibUv" id="3gNap3fMVwq" role="10QFUM">
                          <ref role="3uigEE" to="uwx2:4TCblo5MJ1m" resolve="LogicalDataForm" />
                          <node concept="16syzq" id="3gNap3fMVwA" role="11_B2D">
                            <ref role="16sUi3" node="3FIATxbQg$T" resolve="TERM" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3gNap3fzGMh" role="2OqNvi">
                      <ref role="37wK5l" to="uwx2:4TCblo5MS1o" resolve="logical" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="3gNap3fzGMi" role="10QFUM">
                    <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                    <node concept="16syzq" id="3gNap3fzGMj" role="11_B2D">
                      <ref role="16sUi3" node="3FIATxbQg$T" resolve="TERM" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3gNap3fzGNm" role="3cqZAp" />
            </node>
            <node concept="2ZW3vV" id="3gNap3fzGL3" role="3clFbw">
              <node concept="3uibUv" id="3gNap3fMVwe" role="2ZW6by">
                <ref role="3uigEE" to="uwx2:4TCblo5MJ1m" resolve="LogicalDataForm" />
              </node>
              <node concept="37vLTw" id="3gNap3fzF_q" role="2ZW6bz">
                <ref role="3cqZAo" node="3FIATxbQg$O" resolve="var" />
              </node>
            </node>
            <node concept="9aQIb" id="3gNap3fzGNi" role="9aQIa">
              <node concept="3clFbS" id="3gNap3fzGNj" role="9aQI4">
                <node concept="YS8fn" id="3gNap3fzGOl" role="3cqZAp">
                  <node concept="2ShNRf" id="3gNap3fzGPc" role="YScLw">
                    <node concept="1pGfFk" id="3gNap3fzI1f" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3gNap3fZiBp" role="jymVt" />
      <node concept="3clFb_" id="3gNap3fZimy" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="asLogicalValue" />
        <node concept="37vLTG" id="3gNap3fZimz" role="3clF46">
          <property role="TrG5h" value="var" />
          <node concept="3uibUv" id="6SwZmzBC0t9" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3uibUv" id="3gNap3fZim_" role="3clF45">
          <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
          <node concept="16syzq" id="3gNap3fZimA" role="11_B2D">
            <ref role="16sUi3" node="3gNap3fZimC" resolve="T" />
          </node>
        </node>
        <node concept="3Tm6S6" id="3gNap3fZimB" role="1B3o_S" />
        <node concept="16euLQ" id="3gNap3fZimC" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
        <node concept="3clFbS" id="3gNap3fZimE" role="3clF47">
          <node concept="3clFbJ" id="3gNap3fZimF" role="3cqZAp">
            <node concept="3clFbS" id="3gNap3fZimG" role="3clFbx">
              <node concept="3cpWs6" id="3gNap3fZimH" role="3cqZAp">
                <node concept="10QFUN" id="3gNap3fZimI" role="3cqZAk">
                  <node concept="2OqwBi" id="3gNap3fZimJ" role="10QFUP">
                    <node concept="1eOMI4" id="3gNap3fZimK" role="2Oq$k0">
                      <node concept="10QFUN" id="3gNap3fZimL" role="1eOMHV">
                        <node concept="37vLTw" id="3gNap3fZimM" role="10QFUP">
                          <ref role="3cqZAo" node="3gNap3fZimz" resolve="var" />
                        </node>
                        <node concept="3uibUv" id="3gNap3fZimN" role="10QFUM">
                          <ref role="3uigEE" to="uwx2:3gNap3fN2hw" resolve="LogicalValue" />
                          <node concept="16syzq" id="3gNap3fZimO" role="11_B2D">
                            <ref role="16sUi3" node="3gNap3fZimC" resolve="T" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3gNap3fZimP" role="2OqNvi">
                      <ref role="37wK5l" to="uwx2:3gNap3fN7SD" resolve="logical" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="3gNap3fZimQ" role="10QFUM">
                    <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                    <node concept="16syzq" id="3gNap3fZimR" role="11_B2D">
                      <ref role="16sUi3" node="3gNap3fZimC" resolve="T" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3gNap3fZimS" role="3cqZAp" />
            </node>
            <node concept="2ZW3vV" id="3gNap3fZimT" role="3clFbw">
              <node concept="3uibUv" id="3gNap3fZiRQ" role="2ZW6by">
                <ref role="3uigEE" to="uwx2:3gNap3fN2hw" resolve="LogicalValue" />
              </node>
              <node concept="37vLTw" id="3gNap3fZimV" role="2ZW6bz">
                <ref role="3cqZAo" node="3gNap3fZimz" resolve="var" />
              </node>
            </node>
            <node concept="9aQIb" id="3gNap3fZimW" role="9aQIa">
              <node concept="3clFbS" id="3gNap3fZimX" role="9aQI4">
                <node concept="YS8fn" id="3gNap3fZimY" role="3cqZAp">
                  <node concept="2ShNRf" id="3gNap3fZimZ" role="YScLw">
                    <node concept="1pGfFk" id="3gNap3fZin0" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3gNap3fzEkW" role="jymVt" />
      <node concept="3clFb_" id="3FIATxbQg_7" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="isLogicalTerm" />
        <node concept="37vLTG" id="3FIATxbQg_8" role="3clF46">
          <property role="TrG5h" value="term" />
          <node concept="3uibUv" id="3FIATxbQg_9" role="1tU5fm">
            <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
          </node>
        </node>
        <node concept="10P_77" id="3FIATxbQg_a" role="3clF45" />
        <node concept="3Tm6S6" id="3gNap3fzEkT" role="1B3o_S" />
        <node concept="3clFbS" id="3FIATxbQg_c" role="3clF47">
          <node concept="3clFbF" id="3FIATxbQg_d" role="3cqZAp">
            <node concept="2ZW3vV" id="3FIATxbQg_e" role="3clFbG">
              <node concept="3uibUv" id="3gNap3fMVIc" role="2ZW6by">
                <ref role="3uigEE" to="uwx2:4TCblo5MJ1m" resolve="LogicalDataForm" />
              </node>
              <node concept="37vLTw" id="3FIATxbQg_g" role="2ZW6bz">
                <ref role="3cqZAo" node="3FIATxbQg_8" resolve="term" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3gNap3fzDfM" role="jymVt" />
      <node concept="3clFb_" id="3gNap3fZhXk" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="isLogicalValue" />
        <node concept="37vLTG" id="3gNap3fZhXl" role="3clF46">
          <property role="TrG5h" value="term" />
          <node concept="3uibUv" id="3gNap3fZhXm" role="1tU5fm">
            <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
          </node>
        </node>
        <node concept="10P_77" id="3gNap3fZhXn" role="3clF45" />
        <node concept="3Tm6S6" id="3gNap3fZhXo" role="1B3o_S" />
        <node concept="3clFbS" id="3gNap3fZhXp" role="3clF47">
          <node concept="3clFbF" id="3gNap3fZhXq" role="3cqZAp">
            <node concept="2ZW3vV" id="3gNap3fZhXr" role="3clFbG">
              <node concept="3uibUv" id="3gNap3fZidi" role="2ZW6by">
                <ref role="3uigEE" to="uwx2:3gNap3fN2hw" resolve="LogicalValue" />
              </node>
              <node concept="37vLTw" id="3gNap3fZhXt" role="2ZW6bz">
                <ref role="3cqZAo" node="3gNap3fZhXl" resolve="term" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4jcOV4ha_nc" role="EKbjA">
        <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
      </node>
      <node concept="2tJIrI" id="3gNap3fZhXj" role="jymVt" />
      <node concept="312cEu" id="4WeLqVxfpe8" role="jymVt">
        <property role="TrG5h" value="OccursCheckException" />
        <node concept="2tJIrI" id="4WeLqVxfF1I" role="jymVt" />
        <node concept="3Tm1VV" id="4WeLqVxfpe9" role="1B3o_S" />
        <node concept="3uibUv" id="4WeLqVxfEKf" role="1zkMxy">
          <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7lt0LtQwhN6" role="jymVt" />
  </node>
  <node concept="312cEu" id="6infEALAfer">
    <property role="TrG5h" value="AssertPredicate" />
    <node concept="2tJIrI" id="6infEALAgQp" role="jymVt" />
    <node concept="3clFbW" id="4xBopTzrPWl" role="jymVt">
      <node concept="37vLTG" id="5uFPQ7C251x" role="3clF46">
        <property role="TrG5h" value="expression" />
        <node concept="3uibUv" id="5uFPQ7C256l" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="4xBopTzrPWn" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzrPWo" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzrPWp" role="3clF47">
        <node concept="XkiVB" id="4xBopTzrQgb" role="3cqZAp">
          <ref role="37wK5l" node="6Kcfpq7B1f7" resolve="AbstractPredicate" />
          <node concept="37vLTw" id="5uFPQ7C25fP" role="37wK5m">
            <ref role="3cqZAo" node="5uFPQ7C251x" resolve="expression" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzrQOJ" role="jymVt" />
    <node concept="3clFb_" id="7ISVfSJpfI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <node concept="3uibUv" id="7ISVfSJpfJ" role="3clF45">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="3Tm1VV" id="7ISVfSJpfK" role="1B3o_S" />
      <node concept="3clFbS" id="7ISVfSJpfN" role="3clF47">
        <node concept="3clFbF" id="7ISVfSJpfP" role="3cqZAp">
          <node concept="37vLTw" id="7ISVfSJpnd" role="3clFbG">
            <ref role="3cqZAo" node="5uFPQ7BZnLB" resolve="ASSERT_SYM" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="506k$zeLgrQ" role="jymVt" />
    <node concept="3Tm1VV" id="6infEALAfes" role="1B3o_S" />
    <node concept="3uibUv" id="4xBopTzrP0O" role="1zkMxy">
      <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
    </node>
    <node concept="Wx3nA" id="6infEALAgS7" role="jymVt">
      <property role="TrG5h" value="ASSERT" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="6infEALAgT4" role="1B3o_S" />
      <node concept="17QB3L" id="6infEALAgTf" role="1tU5fm" />
      <node concept="Xl_RD" id="6infEALAgUt" role="33vP2m">
        <property role="Xl_RC" value="assertThat" />
      </node>
    </node>
    <node concept="Wx3nA" id="5uFPQ7BZnLB" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ASSERT_SYM" />
      <node concept="3Tm1VV" id="5uFPQ7BZnLx" role="1B3o_S" />
      <node concept="3uibUv" id="5uFPQ7BZnLy" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="2ShNRf" id="5uFPQ7BZnLz" role="33vP2m">
        <node concept="YeOm9" id="7lt0LtQvGMp" role="2ShVmc">
          <node concept="1Y3b0j" id="7lt0LtQvGMs" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="7lt0LtQvaw_" resolve="PredicateSymbolExt" />
            <ref role="37wK5l" node="7lt0LtQva_c" resolve="PredicateSymbolExt" />
            <node concept="37vLTw" id="5uFPQ7BZnL_" role="37wK5m">
              <ref role="3cqZAo" node="6infEALAgS7" resolve="ASSERT" />
            </node>
            <node concept="3cmrfG" id="5uFPQ7BZnLA" role="37wK5m">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="3Tm1VV" id="7lt0LtQvGMt" role="1B3o_S" />
            <node concept="3clFb_" id="7lt0LtQvGMu" role="jymVt">
              <property role="TrG5h" value="solver" />
              <property role="1EzhhJ" value="false" />
              <node concept="3uibUv" id="4jcOV4h9Zp4" role="3clF45">
                <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
              </node>
              <node concept="3Tm1VV" id="7lt0LtQvGMw" role="1B3o_S" />
              <node concept="3clFbS" id="7lt0LtQvGMy" role="3clF47">
                <node concept="3clFbF" id="7lt0LtQvHzn" role="3cqZAp">
                  <node concept="2ShNRf" id="7lt0LtQvHzl" role="3clFbG">
                    <node concept="HV5vD" id="7lt0LtQvZeK" role="2ShVmc">
                      <ref role="HV5vE" node="6infEALAKBG" resolve="AssertPredicate.AssertSolver" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="7lt0LtQvGM$" role="jymVt">
              <property role="TrG5h" value="predicate" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="7lt0LtQvGM_" role="3clF46">
                <property role="TrG5h" value="args" />
                <node concept="8X2XB" id="7lt0LtQvGMA" role="1tU5fm">
                  <node concept="3uibUv" id="7lt0LtQvGMB" role="8Xvag">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="7lt0LtQvGMC" role="3clF45">
                <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
              </node>
              <node concept="3Tm1VV" id="7lt0LtQvGMD" role="1B3o_S" />
              <node concept="3clFbS" id="7lt0LtQvGMF" role="3clF47">
                <node concept="3clFbF" id="7lt0LtQvHKe" role="3cqZAp">
                  <node concept="2ShNRf" id="7lt0LtQvHKc" role="3clFbG">
                    <node concept="1pGfFk" id="7lt0LtQvHVB" role="2ShVmc">
                      <ref role="37wK5l" node="4xBopTzrPWl" resolve="AssertPredicate" />
                      <node concept="AH0OO" id="7lt0LtQvI4P" role="37wK5m">
                        <node concept="3cmrfG" id="7lt0LtQvI97" role="AHEQo">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="7lt0LtQvI00" role="AHHXb">
                          <ref role="3cqZAo" node="7lt0LtQvGM_" resolve="args" />
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
    <node concept="2tJIrI" id="7lt0LtQvXqz" role="jymVt" />
    <node concept="312cEu" id="6infEALAKBG" role="jymVt">
      <property role="TrG5h" value="AssertSolver" />
      <node concept="2tJIrI" id="2UGjFq4gIew" role="jymVt" />
      <node concept="3clFb_" id="2UGjFq4l$TY" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="ask" />
        <node concept="37vLTG" id="2UGjFq4l$TZ" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="2UGjFq4l$U0" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="10P_77" id="2UGjFq4l$U1" role="3clF45" />
        <node concept="3Tm1VV" id="2UGjFq4l$U2" role="1B3o_S" />
        <node concept="3clFbS" id="2UGjFq4l$U4" role="3clF47">
          <node concept="3cpWs6" id="2UGjFq4l_qL" role="3cqZAp">
            <node concept="1rXfSq" id="2UGjFq4l_rP" role="3cqZAk">
              <ref role="37wK5l" node="2UGjFq4l$3T" resolve="_ask" />
              <node concept="2OqwBi" id="2UGjFq4l_yY" role="37wK5m">
                <node concept="2OqwBi" id="2UGjFq4l_uy" role="2Oq$k0">
                  <node concept="37vLTw" id="2UGjFq4l_tm" role="2Oq$k0">
                    <ref role="3cqZAo" node="2UGjFq4l$TZ" resolve="invocation" />
                  </node>
                  <node concept="liA8E" id="2UGjFq4l_wR" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments()" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="2UGjFq4l_Rj" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                  <node concept="3cmrfG" id="2UGjFq4l_Ux" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2UGjFq4l$ic" role="jymVt" />
      <node concept="3clFb_" id="2UGjFq4l$3T" role="jymVt">
        <property role="TrG5h" value="_ask" />
        <node concept="3Tmbuc" id="2UGjFq4l$tb" role="1B3o_S" />
        <node concept="10P_77" id="2UGjFq4l$3V" role="3clF45" />
        <node concept="37vLTG" id="2UGjFq4l$3L" role="3clF46">
          <property role="TrG5h" value="test" />
          <node concept="3uibUv" id="2UGjFq4l$3M" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3clFbS" id="2UGjFq4l$3i" role="3clF47">
          <node concept="3clFbJ" id="2UGjFq4l$3j" role="3cqZAp">
            <node concept="3clFbS" id="2UGjFq4l$3k" role="3clFbx">
              <node concept="3cpWs6" id="2UGjFq4l$3l" role="3cqZAp">
                <node concept="1rXfSq" id="2UGjFq4l$3m" role="3cqZAk">
                  <ref role="37wK5l" node="6infEALAKR2" resolve="_askAssert" />
                  <node concept="1eOMI4" id="2UGjFq4l$3n" role="37wK5m">
                    <node concept="10QFUN" id="2UGjFq4l$3o" role="1eOMHV">
                      <node concept="3uibUv" id="2UGjFq4l$3p" role="10QFUM">
                        <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                        <node concept="3uibUv" id="2UGjFq4l$3q" role="11_B2D">
                          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2UGjFq4l$3N" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4l$3L" resolve="test" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2UGjFq4l$3s" role="3cqZAp" />
            </node>
            <node concept="2ZW3vV" id="2UGjFq4l$3t" role="3clFbw">
              <node concept="3uibUv" id="5cDlfXt5M5X" role="2ZW6by">
                <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
              </node>
              <node concept="37vLTw" id="2UGjFq4l$3O" role="2ZW6bz">
                <ref role="3cqZAo" node="2UGjFq4l$3L" resolve="test" />
              </node>
            </node>
            <node concept="3eNFk2" id="2UGjFq4l$3w" role="3eNLev">
              <node concept="2ZW3vV" id="2UGjFq4l$3x" role="3eO9$A">
                <node concept="3uibUv" id="2UGjFq4l$3y" role="2ZW6by">
                  <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                </node>
                <node concept="37vLTw" id="2UGjFq4l$3Q" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4l$3L" resolve="test" />
                </node>
              </node>
              <node concept="3clFbS" id="2UGjFq4l$3$" role="3eOfB_">
                <node concept="3cpWs6" id="2UGjFq4l$3_" role="3cqZAp">
                  <node concept="1rXfSq" id="2UGjFq4l$3A" role="3cqZAk">
                    <ref role="37wK5l" node="6infEALAKQS" resolve="_askAssert" />
                    <node concept="10QFUN" id="2UGjFq4l$3B" role="37wK5m">
                      <node concept="37vLTw" id="2UGjFq4l$3P" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4l$3L" resolve="test" />
                      </node>
                      <node concept="3uibUv" id="2UGjFq4l$3D" role="10QFUM">
                        <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2UGjFq4l$3E" role="3cqZAp" />
              </node>
            </node>
            <node concept="9aQIb" id="2UGjFq4l$3F" role="9aQIa">
              <node concept="3clFbS" id="2UGjFq4l$3G" role="9aQI4">
                <node concept="YS8fn" id="2UGjFq4l$3H" role="3cqZAp">
                  <node concept="2ShNRf" id="2UGjFq4l$3I" role="YScLw">
                    <node concept="1pGfFk" id="2UGjFq4l$3J" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                      <node concept="Xl_RD" id="2UGjFq4l$3K" role="37wK5m">
                        <property role="Xl_RC" value="invalid arguments" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2gPa6JHMOf_" role="jymVt" />
      <node concept="3clFb_" id="2gPa6JHMOJa" role="jymVt">
        <property role="TrG5h" value="tell" />
        <node concept="3Tm1VV" id="2gPa6JHMOJb" role="1B3o_S" />
        <node concept="3cqZAl" id="2gPa6JHMOJd" role="3clF45" />
        <node concept="37vLTG" id="2gPa6JHMOJe" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="2gPa6JHMOJf" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3clFbS" id="2gPa6JHMOJj" role="3clF47">
          <node concept="YS8fn" id="2gPa6JHMPEh" role="3cqZAp">
            <node concept="2ShNRf" id="2gPa6JHMQ7S" role="YScLw">
              <node concept="1pGfFk" id="2gPa6JHMR1k" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2gPa6JHMOJk" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2gPa6JHMRBZ" role="jymVt" />
      <node concept="3clFb_" id="2UGjFq4kzkJ" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="tryTell" />
        <node concept="3uibUv" id="2gPa6JHMNE7" role="3clF45">
          <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
        </node>
        <node concept="3Tm1VV" id="2UGjFq4kzkL" role="1B3o_S" />
        <node concept="37vLTG" id="2UGjFq4kzkN" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="2UGjFq4kzkO" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3clFbS" id="2UGjFq4kzkQ" role="3clF47">
          <node concept="3clFbF" id="2UGjFq4lzpt" role="3cqZAp">
            <node concept="1rXfSq" id="2UGjFq4lzps" role="3clFbG">
              <ref role="37wK5l" node="2UGjFq4lzce" resolve="_tell" />
              <node concept="2OqwBi" id="2UGjFq4lzR5" role="37wK5m">
                <node concept="2OqwBi" id="2UGjFq4lzR6" role="2Oq$k0">
                  <node concept="37vLTw" id="2UGjFq4lzR7" role="2Oq$k0">
                    <ref role="3cqZAo" node="2UGjFq4kzkN" resolve="invocation" />
                  </node>
                  <node concept="liA8E" id="2UGjFq4lzR8" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments()" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="2UGjFq4lzR9" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                  <node concept="3cmrfG" id="2UGjFq4lzRa" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2UGjFq4k$6S" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2UGjFq4lzpU" role="jymVt" />
      <node concept="3clFb_" id="2UGjFq4lzce" role="jymVt">
        <property role="TrG5h" value="_tell" />
        <node concept="3Tmbuc" id="2UGjFq4lzZM" role="1B3o_S" />
        <node concept="3uibUv" id="2gPa6JHMSEj" role="3clF45">
          <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
        </node>
        <node concept="37vLTG" id="2UGjFq4lzb1" role="3clF46">
          <property role="TrG5h" value="test" />
          <node concept="3uibUv" id="2UGjFq4lzb2" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3clFbS" id="2UGjFq4lzay" role="3clF47">
          <node concept="3clFbJ" id="2UGjFq4lzaz" role="3cqZAp">
            <node concept="3clFbS" id="2UGjFq4lza$" role="3clFbx">
              <node concept="3cpWs6" id="2gPa6JHMTi_" role="3cqZAp">
                <node concept="1rXfSq" id="2UGjFq4lzaA" role="3cqZAk">
                  <ref role="37wK5l" node="6infEALAKQH" resolve="_tellAssert" />
                  <node concept="1eOMI4" id="2UGjFq4lzaB" role="37wK5m">
                    <node concept="10QFUN" id="2UGjFq4lzaC" role="1eOMHV">
                      <node concept="3uibUv" id="2UGjFq4lzaD" role="10QFUM">
                        <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                        <node concept="3uibUv" id="2UGjFq4lzaE" role="11_B2D">
                          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2UGjFq4lzc9" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4lzb1" resolve="test" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2UGjFq4lzaG" role="3cqZAp" />
            </node>
            <node concept="2ZW3vV" id="2UGjFq4lzaH" role="3clFbw">
              <node concept="37vLTw" id="2UGjFq4lzcb" role="2ZW6bz">
                <ref role="3cqZAo" node="2UGjFq4lzb1" resolve="test" />
              </node>
              <node concept="3uibUv" id="5cDlfXt5MgC" role="2ZW6by">
                <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
              </node>
            </node>
            <node concept="3eNFk2" id="2UGjFq4lzaK" role="3eNLev">
              <node concept="2ZW3vV" id="2UGjFq4lzaL" role="3eO9$A">
                <node concept="3uibUv" id="2UGjFq4lzaM" role="2ZW6by">
                  <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                </node>
                <node concept="37vLTw" id="2UGjFq4lzc8" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4lzb1" resolve="test" />
                </node>
              </node>
              <node concept="3clFbS" id="2UGjFq4lzaO" role="3eOfB_">
                <node concept="3cpWs6" id="2gPa6JHMTM$" role="3cqZAp">
                  <node concept="1rXfSq" id="2UGjFq4lzaQ" role="3cqZAk">
                    <ref role="37wK5l" node="6infEALAKQz" resolve="_tellAssert" />
                    <node concept="10QFUN" id="2UGjFq4lzaR" role="37wK5m">
                      <node concept="37vLTw" id="2UGjFq4lzca" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4lzb1" resolve="test" />
                      </node>
                      <node concept="3uibUv" id="2UGjFq4lzaT" role="10QFUM">
                        <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2UGjFq4lzaU" role="3cqZAp" />
              </node>
            </node>
            <node concept="9aQIb" id="2UGjFq4lzaV" role="9aQIa">
              <node concept="3clFbS" id="2UGjFq4lzaW" role="9aQI4">
                <node concept="3cpWs6" id="2gPa6JHMURe" role="3cqZAp">
                  <node concept="2YIFZM" id="2gPa6JHMWpC" role="3cqZAk">
                    <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
                    <ref role="37wK5l" to="w7la:~Solver$Result.FAIL(java.lang.String)" resolve="FAIL" />
                    <node concept="Xl_RD" id="2gPa6JHMWQQ" role="37wK5m">
                      <property role="Xl_RC" value="invalid arguments" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4xBopTzrRzV" role="jymVt" />
      <node concept="3Tm1VV" id="6infEALAKBH" role="1B3o_S" />
      <node concept="3clFb_" id="6infEALAKQz" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="_tellAssert" />
        <node concept="37vLTG" id="6infEALAKQ$" role="3clF46">
          <property role="TrG5h" value="val" />
          <node concept="3uibUv" id="6infEALAKQ_" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
        </node>
        <node concept="3uibUv" id="2gPa6JHMZt3" role="3clF45">
          <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
        </node>
        <node concept="3Tmbuc" id="6MYr6JwZXea" role="1B3o_S" />
        <node concept="3clFbS" id="6infEALAKQG" role="3clF47">
          <node concept="3clFbJ" id="6infEALBkC$" role="3cqZAp">
            <node concept="3clFbS" id="6infEALBkC_" role="3clFbx">
              <node concept="3cpWs6" id="2gPa6JHN0oM" role="3cqZAp">
                <node concept="2YIFZM" id="2gPa6JHN21t" role="3cqZAk">
                  <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
                  <ref role="37wK5l" to="w7la:~Solver$Result.FAIL(java.lang.String)" resolve="FAIL" />
                  <node concept="Xl_RD" id="2gPa6JHN2v9" role="37wK5m">
                    <property role="Xl_RC" value="cannot assert false" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2gPa6JHN3qW" role="3cqZAp" />
            </node>
            <node concept="3fqX7Q" id="6infEALBkHm" role="3clFbw">
              <node concept="37vLTw" id="6infEALBl5n" role="3fr31v">
                <ref role="3cqZAo" node="6infEALAKQ$" resolve="val" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2gPa6JHN54j" role="3cqZAp">
            <node concept="2YIFZM" id="2gPa6JHN5yz" role="3clFbG">
              <ref role="37wK5l" to="w7la:~Solver$Result.OK()" resolve="OK" />
              <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6infEALAU2t" role="jymVt" />
      <node concept="3clFb_" id="6infEALAKQH" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="_tellAssert" />
        <node concept="37vLTG" id="6infEALAKQI" role="3clF46">
          <property role="TrG5h" value="logical" />
          <node concept="3uibUv" id="6infEALAKQJ" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
            <node concept="3uibUv" id="6infEALAKQK" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="2gPa6JHN610" role="3clF45">
          <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
        </node>
        <node concept="3Tmbuc" id="6MYr6JwZXJI" role="1B3o_S" />
        <node concept="3clFbS" id="6infEALAKQR" role="3clF47">
          <node concept="3cpWs8" id="6infEALBclm" role="3cqZAp">
            <node concept="3cpWsn" id="6infEALBcln" role="3cpWs9">
              <property role="TrG5h" value="repr" />
              <node concept="3uibUv" id="6infEALBclo" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                <node concept="3uibUv" id="6infEALBclp" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                </node>
              </node>
              <node concept="2OqwBi" id="6infEALBclq" role="33vP2m">
                <node concept="37vLTw" id="6infEALBclr" role="2Oq$k0">
                  <ref role="3cqZAo" node="6infEALAKQI" resolve="logical" />
                </node>
                <node concept="liA8E" id="6infEALBcls" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6infEALBcOh" role="3cqZAp">
            <node concept="3clFbS" id="6infEALBcOj" role="3clFbx">
              <node concept="3cpWs6" id="2gPa6JHN7av" role="3cqZAp">
                <node concept="2YIFZM" id="2gPa6JHNaei" role="3cqZAk">
                  <ref role="37wK5l" to="w7la:~Solver$Result.FAIL(java.lang.String)" resolve="FAIL" />
                  <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
                  <node concept="Xl_RD" id="2gPa6JHNaej" role="37wK5m">
                    <property role="Xl_RC" value="cannot assert false" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2gPa6JHNaTq" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="6infEALBeKX" role="3clFbw">
              <node concept="3fqX7Q" id="6infEALBeNq" role="3uHU7w">
                <node concept="2OqwBi" id="6infEALBf3L" role="3fr31v">
                  <node concept="37vLTw" id="6infEALBePw" role="2Oq$k0">
                    <ref role="3cqZAo" node="6infEALBcln" resolve="repr" />
                  </node>
                  <node concept="liA8E" id="6infEALBgCV" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6infEALBd3w" role="3uHU7B">
                <node concept="37vLTw" id="6infEALBcQc" role="2Oq$k0">
                  <ref role="3cqZAo" node="6infEALBcln" resolve="repr" />
                </node>
                <node concept="liA8E" id="6infEALBeBH" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6infEALBksI" role="3cqZAp" />
          <node concept="3cpWs8" id="6infEALBscn" role="3cqZAp">
            <node concept="3cpWsn" id="6infEALBsco" role="3cpWs9">
              <property role="TrG5h" value="value" />
              <node concept="3uibUv" id="6infEALBsce" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
              <node concept="2OqwBi" id="6infEALBscp" role="33vP2m">
                <node concept="37vLTw" id="6infEALBscq" role="2Oq$k0">
                  <ref role="3cqZAo" node="6infEALBcln" resolve="repr" />
                </node>
                <node concept="liA8E" id="6infEALBscr" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6infEALBsxX" role="3cqZAp">
            <node concept="3clFbS" id="6infEALBsxZ" role="3clFbx">
              <node concept="3clFbF" id="6infEALBtCI" role="3cqZAp">
                <node concept="2OqwBi" id="6infEALBtMi" role="3clFbG">
                  <node concept="37vLTw" id="6infEALBtCG" role="2Oq$k0">
                    <ref role="3cqZAo" node="6infEALBcln" resolve="repr" />
                  </node>
                  <node concept="liA8E" id="6infEALBvmp" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~MutableLogical.setValue(java.lang.Object)" resolve="setValue" />
                    <node concept="10M0yZ" id="6infEALBvoZ" role="37wK5m">
                      <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
                      <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="6infEALBsL1" role="3clFbw">
              <node concept="10Nm6u" id="6infEALBsO_" role="3uHU7w" />
              <node concept="37vLTw" id="6infEALBsCh" role="3uHU7B">
                <ref role="3cqZAo" node="6infEALBsco" resolve="value" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2gPa6JHNc2a" role="3cqZAp">
            <node concept="2YIFZM" id="2gPa6JHNcxx" role="3clFbG">
              <ref role="37wK5l" to="w7la:~Solver$Result.OK()" resolve="OK" />
              <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6infEALAUiN" role="jymVt" />
      <node concept="3clFb_" id="6infEALAKQS" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="_askAssert" />
        <node concept="37vLTG" id="6infEALAKQT" role="3clF46">
          <property role="TrG5h" value="val" />
          <node concept="3uibUv" id="6infEALAKQU" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
        </node>
        <node concept="10P_77" id="6infEALB3_x" role="3clF45" />
        <node concept="3Tmbuc" id="6MYr6JwZYaT" role="1B3o_S" />
        <node concept="3clFbS" id="6infEALAKR1" role="3clF47">
          <node concept="3clFbF" id="6infEALB4$1" role="3cqZAp">
            <node concept="37vLTw" id="6infEALB4$0" role="3clFbG">
              <ref role="3cqZAo" node="6infEALAKQT" resolve="val" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6infEALAUAu" role="jymVt" />
      <node concept="3clFb_" id="6infEALAKR2" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="_askAssert" />
        <node concept="37vLTG" id="6infEALAKR3" role="3clF46">
          <property role="TrG5h" value="logical" />
          <node concept="3uibUv" id="6infEALAKR4" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
            <node concept="3uibUv" id="6infEALAKR5" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
            </node>
          </node>
        </node>
        <node concept="10P_77" id="6infEALB3F8" role="3clF45" />
        <node concept="3Tmbuc" id="6MYr6JwZYrd" role="1B3o_S" />
        <node concept="3clFbS" id="6infEALAKRc" role="3clF47">
          <node concept="3cpWs8" id="6infEALBa$_" role="3cqZAp">
            <node concept="3cpWsn" id="6infEALBa$A" role="3cpWs9">
              <property role="TrG5h" value="repr" />
              <node concept="3uibUv" id="6infEALBa$x" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                <node concept="3uibUv" id="6infEALBa$$" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                </node>
              </node>
              <node concept="2OqwBi" id="6infEALBa$B" role="33vP2m">
                <node concept="37vLTw" id="6infEALBa$C" role="2Oq$k0">
                  <ref role="3cqZAo" node="6infEALAKR3" resolve="logical" />
                </node>
                <node concept="liA8E" id="6infEALBa$D" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6infEALAYLT" role="3cqZAp">
            <node concept="3clFbS" id="6infEALAYLV" role="3clFbx">
              <node concept="3cpWs6" id="6infEALB1yd" role="3cqZAp">
                <node concept="3clFbT" id="6infEALB1$I" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="6infEALAYNg" role="3clFbw">
              <node concept="2OqwBi" id="6infEALAZ5t" role="3fr31v">
                <node concept="37vLTw" id="6infEALBbmW" role="2Oq$k0">
                  <ref role="3cqZAo" node="6infEALBa$A" resolve="repr" />
                </node>
                <node concept="liA8E" id="6infEALB0GT" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6infEALAYKA" role="3cqZAp" />
          <node concept="3clFbF" id="6infEALAVvu" role="3cqZAp">
            <node concept="2OqwBi" id="6infEALAVD2" role="3clFbG">
              <node concept="37vLTw" id="6infEALBbtf" role="2Oq$k0">
                <ref role="3cqZAo" node="6infEALBa$A" resolve="repr" />
              </node>
              <node concept="liA8E" id="6infEALAXgk" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6infEALAT0A" role="jymVt" />
      <node concept="3uibUv" id="4jcOV4halFn" role="EKbjA">
        <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
      </node>
    </node>
    <node concept="2tJIrI" id="7lt0LtQvXrn" role="jymVt" />
  </node>
  <node concept="312cEu" id="3HJTsBn4kk_">
    <property role="TrG5h" value="EqualsPredicate" />
    <node concept="2tJIrI" id="3HJTsBn4kQm" role="jymVt" />
    <node concept="2YIFZL" id="5jCHAT2iqus" role="jymVt">
      <property role="TrG5h" value="eq" />
      <node concept="37vLTG" id="5jCHAT2ir1t" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="5jCHAT2ircQ" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="5jCHAT2iror" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="5jCHAT2irzS" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3uibUv" id="5jCHAT2iqEZ" role="3clF45">
        <ref role="3uigEE" node="3HJTsBn4kk_" resolve="EqualsPredicate" />
      </node>
      <node concept="3Tm1VV" id="5jCHAT2iquv" role="1B3o_S" />
      <node concept="3clFbS" id="5jCHAT2iquw" role="3clF47">
        <node concept="3clFbF" id="5jCHAT2irKd" role="3cqZAp">
          <node concept="2ShNRf" id="5jCHAT2irKb" role="3clFbG">
            <node concept="1pGfFk" id="5jCHAT2irVw" role="2ShVmc">
              <ref role="37wK5l" node="4xBopTzo_Q1" resolve="EqualsPredicate" />
              <node concept="37vLTw" id="5jCHAT2is1N" role="37wK5m">
                <ref role="3cqZAo" node="5jCHAT2ir1t" resolve="left" />
              </node>
              <node concept="37vLTw" id="5jCHAT2is2W" role="37wK5m">
                <ref role="3cqZAo" node="5jCHAT2iror" resolve="right" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2UGjFq4gG5y" role="jymVt" />
    <node concept="3clFbW" id="4xBopTzo_Q1" role="jymVt">
      <node concept="37vLTG" id="5uFPQ7C24iY" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="5uFPQ7C24qL" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="5uFPQ7C24vP" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="5uFPQ7C24$_" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="4xBopTzo_Q3" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzo_Q4" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzo_Q5" role="3clF47">
        <node concept="XkiVB" id="4xBopTzoAs2" role="3cqZAp">
          <ref role="37wK5l" node="6Kcfpq7B1f7" resolve="AbstractPredicate" />
          <node concept="37vLTw" id="5uFPQ7C24EQ" role="37wK5m">
            <ref role="3cqZAo" node="5uFPQ7C24iY" resolve="left" />
          </node>
          <node concept="37vLTw" id="5uFPQ7C24Gx" role="37wK5m">
            <ref role="3cqZAo" node="5uFPQ7C24vP" resolve="right" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzo_yK" role="jymVt" />
    <node concept="3clFb_" id="5uFPQ7BZaxa" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <node concept="3uibUv" id="5uFPQ7BZaJx" role="3clF45">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="3Tm1VV" id="5uFPQ7BZaxc" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7BZaxh" role="3clF47">
        <node concept="3clFbF" id="7ISVfSJoMD" role="3cqZAp">
          <node concept="37vLTw" id="7ISVfSJoMC" role="3clFbG">
            <ref role="3cqZAo" node="5uFPQ7C23RV" resolve="EQ_SYM" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzop_B" role="jymVt" />
    <node concept="3Tm1VV" id="3HJTsBn4kkA" role="1B3o_S" />
    <node concept="3uibUv" id="4xBopTzozPs" role="1zkMxy">
      <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
    </node>
    <node concept="Wx3nA" id="3HJTsBn4kQi" role="jymVt">
      <property role="TrG5h" value="EQ" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3HJTsBn4kQj" role="1B3o_S" />
      <node concept="17QB3L" id="3HJTsBn4kQk" role="1tU5fm" />
      <node concept="Xl_RD" id="3HJTsBn4kQl" role="33vP2m">
        <property role="Xl_RC" value="eq" />
      </node>
    </node>
    <node concept="Wx3nA" id="3HJTsBn4kQn" role="jymVt">
      <property role="TrG5h" value="INFIX_EQ" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3HJTsBn4kQo" role="1B3o_S" />
      <node concept="17QB3L" id="3HJTsBn4kQp" role="1tU5fm" />
      <node concept="Xl_RD" id="3HJTsBn4kQq" role="33vP2m">
        <property role="Xl_RC" value="==" />
      </node>
    </node>
    <node concept="Wx3nA" id="5uFPQ7C23RV" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="EQ_SYM" />
      <node concept="3Tm1VV" id="5uFPQ7C23RP" role="1B3o_S" />
      <node concept="3uibUv" id="5uFPQ7C23RQ" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="2ShNRf" id="5uFPQ7C23RR" role="33vP2m">
        <node concept="YeOm9" id="7lt0LtQvDZ2" role="2ShVmc">
          <node concept="1Y3b0j" id="7lt0LtQvDZ5" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="7lt0LtQvaw_" resolve="PredicateSymbolExt" />
            <ref role="37wK5l" node="7lt0LtQva_c" resolve="PredicateSymbolExt" />
            <node concept="37vLTw" id="5uFPQ7C23RT" role="37wK5m">
              <ref role="3cqZAo" node="3HJTsBn4kQi" resolve="EQ" />
            </node>
            <node concept="3cmrfG" id="5uFPQ7C23RU" role="37wK5m">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="3Tm1VV" id="7lt0LtQvDZ6" role="1B3o_S" />
            <node concept="3clFb_" id="7lt0LtQvDZ7" role="jymVt">
              <property role="TrG5h" value="solver" />
              <property role="1EzhhJ" value="false" />
              <node concept="3uibUv" id="4jcOV4ha4N1" role="3clF45">
                <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
              </node>
              <node concept="3Tm1VV" id="7lt0LtQvDZ9" role="1B3o_S" />
              <node concept="3clFbS" id="7lt0LtQvDZb" role="3clF47">
                <node concept="3clFbF" id="7lt0LtQvEK7" role="3cqZAp">
                  <node concept="2ShNRf" id="7lt0LtQvEK5" role="3clFbG">
                    <node concept="HV5vD" id="7lt0LtQvEVw" role="2ShVmc">
                      <ref role="HV5vE" node="3HJTsBn4ogZ" resolve="EqualsPredicate.EqualsSolver" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="7lt0LtQvDZd" role="jymVt">
              <property role="TrG5h" value="predicate" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="7lt0LtQvDZe" role="3clF46">
                <property role="TrG5h" value="args" />
                <node concept="8X2XB" id="7lt0LtQvDZf" role="1tU5fm">
                  <node concept="3uibUv" id="7lt0LtQvDZg" role="8Xvag">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="7lt0LtQvDZh" role="3clF45">
                <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
              </node>
              <node concept="3Tm1VV" id="7lt0LtQvDZi" role="1B3o_S" />
              <node concept="3clFbS" id="7lt0LtQvDZk" role="3clF47">
                <node concept="3clFbF" id="7lt0LtQvEWV" role="3cqZAp">
                  <node concept="2ShNRf" id="7lt0LtQvEWT" role="3clFbG">
                    <node concept="1pGfFk" id="7lt0LtQvF8k" role="2ShVmc">
                      <ref role="37wK5l" node="4xBopTzo_Q1" resolve="EqualsPredicate" />
                      <node concept="AH0OO" id="7lt0LtQvFkR" role="37wK5m">
                        <node concept="3cmrfG" id="7lt0LtQvFsl" role="AHEQo">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="7lt0LtQvFg2" role="AHHXb">
                          <ref role="3cqZAo" node="7lt0LtQvDZe" resolve="args" />
                        </node>
                      </node>
                      <node concept="AH0OO" id="7lt0LtQvFBR" role="37wK5m">
                        <node concept="3cmrfG" id="7lt0LtQvFCo" role="AHEQo">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="7lt0LtQvFvV" role="AHHXb">
                          <ref role="3cqZAo" node="7lt0LtQvDZe" resolve="args" />
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
    <node concept="2tJIrI" id="7lt0LtQw51z" role="jymVt" />
    <node concept="312cEu" id="3HJTsBn4ogZ" role="jymVt">
      <property role="TrG5h" value="EqualsSolver" />
      <node concept="2tJIrI" id="2UGjFq4fUQ7" role="jymVt" />
      <node concept="3clFb_" id="2UGjFq4lDR5" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="ask" />
        <node concept="37vLTG" id="2UGjFq4lDR6" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="2UGjFq4lDR7" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="10P_77" id="2UGjFq4lDR8" role="3clF45" />
        <node concept="3Tm1VV" id="2UGjFq4lDR9" role="1B3o_S" />
        <node concept="3clFbS" id="2UGjFq4lDRb" role="3clF47">
          <node concept="3cpWs6" id="2UGjFq4lFo9" role="3cqZAp">
            <node concept="1rXfSq" id="2UGjFq4lFoa" role="3cqZAk">
              <ref role="37wK5l" node="2UGjFq4lB$H" resolve="doAsk" />
              <node concept="2OqwBi" id="2UGjFq4lFob" role="37wK5m">
                <node concept="2OqwBi" id="2UGjFq4lFoc" role="2Oq$k0">
                  <node concept="37vLTw" id="2UGjFq4lFod" role="2Oq$k0">
                    <ref role="3cqZAo" node="2UGjFq4lDR6" resolve="invocation" />
                  </node>
                  <node concept="liA8E" id="2UGjFq4lFoe" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments()" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="2UGjFq4lFof" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                  <node concept="3cmrfG" id="2UGjFq4lFog" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2UGjFq4lFMb" role="37wK5m">
                <node concept="2OqwBi" id="2UGjFq4lFMc" role="2Oq$k0">
                  <node concept="37vLTw" id="2UGjFq4lFMd" role="2Oq$k0">
                    <ref role="3cqZAo" node="2UGjFq4lDR6" resolve="invocation" />
                  </node>
                  <node concept="liA8E" id="2UGjFq4lFMe" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments()" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="2UGjFq4lFMf" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                  <node concept="3cmrfG" id="2UGjFq4lFMg" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2UGjFq4lEmO" role="jymVt" />
      <node concept="3clFb_" id="2UGjFq4lB$H" role="jymVt">
        <property role="TrG5h" value="doAsk" />
        <node concept="3Tmbuc" id="2UGjFq4lC_p" role="1B3o_S" />
        <node concept="10P_77" id="2UGjFq4lB$J" role="3clF45" />
        <node concept="37vLTG" id="2UGjFq4lB$n" role="3clF46">
          <property role="TrG5h" value="left" />
          <node concept="3uibUv" id="2UGjFq4lB$o" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="2UGjFq4lB$p" role="3clF46">
          <property role="TrG5h" value="right" />
          <node concept="3uibUv" id="2UGjFq4lB$q" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3clFbS" id="2UGjFq4lByW" role="3clF47">
          <node concept="3clFbJ" id="2UGjFq4lByX" role="3cqZAp">
            <node concept="3clFbS" id="2UGjFq4lByY" role="3clFbx">
              <node concept="3cpWs6" id="2UGjFq4lByZ" role="3cqZAp">
                <node concept="1rXfSq" id="2UGjFq4lBz0" role="3cqZAk">
                  <ref role="37wK5l" node="3HJTsBn4VAS" resolve="askEq_logical_logical" />
                  <node concept="10QFUN" id="2UGjFq4lBz1" role="37wK5m">
                    <node concept="37vLTw" id="2UGjFq4lB$x" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lB$n" resolve="left" />
                    </node>
                    <node concept="3uibUv" id="2UGjFq4lBz3" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                      <node concept="16syzq" id="2UGjFq4lBz4" role="11_B2D">
                        <ref role="16sUi3" node="2UGjFq4mCKS" resolve="T" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="2UGjFq4lBz5" role="37wK5m">
                    <node concept="3uibUv" id="2UGjFq4lBz6" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                      <node concept="16syzq" id="2UGjFq4lBz7" role="11_B2D">
                        <ref role="16sUi3" node="2UGjFq4mCKS" resolve="T" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2UGjFq4lB$t" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lB$p" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2UGjFq4lBz9" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="2UGjFq4lBza" role="3clFbw">
              <node concept="2ZW3vV" id="2UGjFq4lBzb" role="3uHU7w">
                <node concept="3uibUv" id="5cDlfXt5OgE" role="2ZW6by">
                  <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                </node>
                <node concept="37vLTw" id="2UGjFq4lB$E" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4lB$p" resolve="right" />
                </node>
              </node>
              <node concept="2ZW3vV" id="2UGjFq4lBze" role="3uHU7B">
                <node concept="3uibUv" id="5cDlfXt5Ofi" role="2ZW6by">
                  <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                </node>
                <node concept="37vLTw" id="2UGjFq4lB$z" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4lB$n" resolve="left" />
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="2UGjFq4lBzh" role="3eNLev">
              <node concept="3clFbS" id="2UGjFq4lBzi" role="3eOfB_">
                <node concept="3cpWs6" id="2UGjFq4lBzj" role="3cqZAp">
                  <node concept="1rXfSq" id="2UGjFq4lBzk" role="3cqZAk">
                    <ref role="37wK5l" node="3HJTsBn4VAB" resolve="askEq_logical_val" />
                    <node concept="10QFUN" id="2UGjFq4lBzl" role="37wK5m">
                      <node concept="37vLTw" id="2UGjFq4lB$C" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4lB$n" resolve="left" />
                      </node>
                      <node concept="3uibUv" id="2UGjFq4lBzn" role="10QFUM">
                        <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                        <node concept="16syzq" id="2UGjFq4lBzo" role="11_B2D">
                          <ref role="16sUi3" node="2UGjFq4mCKS" resolve="T" />
                        </node>
                      </node>
                    </node>
                    <node concept="10QFUN" id="2UGjFq4lBzp" role="37wK5m">
                      <node concept="16syzq" id="2UGjFq4lBzq" role="10QFUM">
                        <ref role="16sUi3" node="2UGjFq4mCKS" resolve="T" />
                      </node>
                      <node concept="37vLTw" id="2UGjFq4lB$B" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4lB$p" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2UGjFq4lBzs" role="3cqZAp" />
              </node>
              <node concept="1Wc70l" id="2UGjFq4lBzt" role="3eO9$A">
                <node concept="3fqX7Q" id="2UGjFq4lBzu" role="3uHU7w">
                  <node concept="1eOMI4" id="2UGjFq4lBzv" role="3fr31v">
                    <node concept="2ZW3vV" id="2UGjFq4lBzw" role="1eOMHV">
                      <node concept="3uibUv" id="5cDlfXt5OR2" role="2ZW6by">
                        <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                      </node>
                      <node concept="37vLTw" id="2UGjFq4lB$w" role="2ZW6bz">
                        <ref role="3cqZAo" node="2UGjFq4lB$p" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="2UGjFq4lBzz" role="3uHU7B">
                  <node concept="3uibUv" id="5cDlfXt5OPp" role="2ZW6by">
                    <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                  </node>
                  <node concept="37vLTw" id="2UGjFq4lB$v" role="2ZW6bz">
                    <ref role="3cqZAo" node="2UGjFq4lB$n" resolve="left" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="2UGjFq4lBzA" role="3eNLev">
              <node concept="3clFbS" id="2UGjFq4lBzB" role="3eOfB_">
                <node concept="3cpWs6" id="2UGjFq4lBzC" role="3cqZAp">
                  <node concept="1rXfSq" id="2UGjFq4lBzD" role="3cqZAk">
                    <ref role="37wK5l" node="3HJTsBn4VAm" resolve="askEq_val_logical" />
                    <node concept="10QFUN" id="2UGjFq4lBzE" role="37wK5m">
                      <node concept="16syzq" id="2UGjFq4lBzF" role="10QFUM">
                        <ref role="16sUi3" node="2UGjFq4mCKS" resolve="T" />
                      </node>
                      <node concept="37vLTw" id="2UGjFq4lB$$" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4lB$n" resolve="left" />
                      </node>
                    </node>
                    <node concept="10QFUN" id="2UGjFq4lBzH" role="37wK5m">
                      <node concept="3uibUv" id="2UGjFq4lBzI" role="10QFUM">
                        <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                        <node concept="16syzq" id="2UGjFq4lBzJ" role="11_B2D">
                          <ref role="16sUi3" node="2UGjFq4mCKS" resolve="T" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2UGjFq4lB$_" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4lB$p" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2UGjFq4lBzL" role="3cqZAp" />
              </node>
              <node concept="1Wc70l" id="2UGjFq4lBzM" role="3eO9$A">
                <node concept="2ZW3vV" id="2UGjFq4lBzN" role="3uHU7w">
                  <node concept="3uibUv" id="5cDlfXt5Pc9" role="2ZW6by">
                    <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                  </node>
                  <node concept="37vLTw" id="2UGjFq4lB$u" role="2ZW6bz">
                    <ref role="3cqZAo" node="2UGjFq4lB$p" resolve="right" />
                  </node>
                </node>
                <node concept="3fqX7Q" id="2UGjFq4lBzQ" role="3uHU7B">
                  <node concept="1eOMI4" id="2UGjFq4lBzR" role="3fr31v">
                    <node concept="2ZW3vV" id="2UGjFq4lBzS" role="1eOMHV">
                      <node concept="3uibUv" id="5cDlfXt5Pas" role="2ZW6by">
                        <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                      </node>
                      <node concept="37vLTw" id="2UGjFq4lB$D" role="2ZW6bz">
                        <ref role="3cqZAo" node="2UGjFq4lB$n" resolve="left" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="2UGjFq4lBzV" role="3eNLev">
              <node concept="3clFbS" id="2UGjFq4lBzW" role="3eOfB_">
                <node concept="3cpWs6" id="2UGjFq4lBzX" role="3cqZAp">
                  <node concept="1rXfSq" id="2UGjFq4lBzY" role="3cqZAk">
                    <ref role="37wK5l" node="3HJTsBn4VA6" resolve="askEq_val_val" />
                    <node concept="10QFUN" id="2UGjFq4lBzZ" role="37wK5m">
                      <node concept="16syzq" id="2UGjFq4lB$0" role="10QFUM">
                        <ref role="16sUi3" node="2UGjFq4mCKS" resolve="T" />
                      </node>
                      <node concept="37vLTw" id="2UGjFq4lB$y" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4lB$n" resolve="left" />
                      </node>
                    </node>
                    <node concept="10QFUN" id="2UGjFq4lB$2" role="37wK5m">
                      <node concept="16syzq" id="2UGjFq4lB$3" role="10QFUM">
                        <ref role="16sUi3" node="2UGjFq4mCKS" resolve="T" />
                      </node>
                      <node concept="37vLTw" id="2UGjFq4lB$A" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4lB$p" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2UGjFq4lB$5" role="3cqZAp" />
              </node>
              <node concept="1Wc70l" id="2UGjFq4lB$6" role="3eO9$A">
                <node concept="3fqX7Q" id="2UGjFq4lB$7" role="3uHU7B">
                  <node concept="1eOMI4" id="2UGjFq4lB$8" role="3fr31v">
                    <node concept="2ZW3vV" id="2UGjFq4lB$9" role="1eOMHV">
                      <node concept="3uibUv" id="5cDlfXt5PvF" role="2ZW6by">
                        <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                      </node>
                      <node concept="37vLTw" id="2UGjFq4lB$r" role="2ZW6bz">
                        <ref role="3cqZAo" node="2UGjFq4lB$n" resolve="left" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="2UGjFq4lB$c" role="3uHU7w">
                  <node concept="1eOMI4" id="2UGjFq4lB$d" role="3fr31v">
                    <node concept="2ZW3vV" id="2UGjFq4lB$e" role="1eOMHV">
                      <node concept="3uibUv" id="5cDlfXt5Px$" role="2ZW6by">
                        <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                      </node>
                      <node concept="37vLTw" id="2UGjFq4lB$s" role="2ZW6bz">
                        <ref role="3cqZAo" node="2UGjFq4lB$p" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="2UGjFq4lB$h" role="9aQIa">
              <node concept="3clFbS" id="2UGjFq4lB$i" role="9aQI4">
                <node concept="YS8fn" id="2UGjFq4lB$j" role="3cqZAp">
                  <node concept="2ShNRf" id="2UGjFq4lB$k" role="YScLw">
                    <node concept="1pGfFk" id="2UGjFq4lB$l" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                      <node concept="Xl_RD" id="2UGjFq4lB$m" role="37wK5m">
                        <property role="Xl_RC" value="invalid arguments" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="2UGjFq4mCKS" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
      </node>
      <node concept="2tJIrI" id="6MYr6JwQPY5" role="jymVt" />
      <node concept="3clFb_" id="2UGjFq4lKki" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="tell" />
        <node concept="3cqZAl" id="2UGjFq4lKkj" role="3clF45" />
        <node concept="3Tm1VV" id="2UGjFq4lKkk" role="1B3o_S" />
        <node concept="37vLTG" id="2UGjFq4lKkm" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="2UGjFq4lKkn" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3clFbS" id="2UGjFq4lKkp" role="3clF47">
          <node concept="YS8fn" id="2gPa6JHx4cR" role="3cqZAp">
            <node concept="2ShNRf" id="2gPa6JHx5YU" role="YScLw">
              <node concept="1pGfFk" id="2gPa6JHx9GX" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2UGjFq4lNHF" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2gPa6JHunvQ" role="jymVt" />
      <node concept="3clFb_" id="2gPa6JHujKS" role="jymVt">
        <property role="TrG5h" value="tryTell" />
        <node concept="3Tm1VV" id="2gPa6JHujKU" role="1B3o_S" />
        <node concept="3uibUv" id="2gPa6JHujKW" role="3clF45">
          <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
        </node>
        <node concept="37vLTG" id="2gPa6JHujKX" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="2gPa6JHujKY" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3clFbS" id="2gPa6JHujKZ" role="3clF47">
          <node concept="3clFbF" id="2gPa6JHurZn" role="3cqZAp">
            <node concept="1rXfSq" id="2gPa6JHurZo" role="3clFbG">
              <ref role="37wK5l" node="2UGjFq4lGBW" resolve="doTell" />
              <node concept="2OqwBi" id="2gPa6JHurZp" role="37wK5m">
                <node concept="2OqwBi" id="2gPa6JHurZq" role="2Oq$k0">
                  <node concept="37vLTw" id="2gPa6JHwWTt" role="2Oq$k0">
                    <ref role="3cqZAo" node="2gPa6JHujKX" resolve="invocation" />
                  </node>
                  <node concept="liA8E" id="2gPa6JHurZs" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments()" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="2gPa6JHurZt" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                  <node concept="3cmrfG" id="2gPa6JHurZu" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2gPa6JHurZv" role="37wK5m">
                <node concept="2OqwBi" id="2gPa6JHurZw" role="2Oq$k0">
                  <node concept="37vLTw" id="2gPa6JHwZJq" role="2Oq$k0">
                    <ref role="3cqZAo" node="2gPa6JHujKX" resolve="invocation" />
                  </node>
                  <node concept="liA8E" id="2gPa6JHurZy" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments()" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="2gPa6JHurZz" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                  <node concept="3cmrfG" id="2gPa6JHurZ$" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2gPa6JHujL0" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2UGjFq4lJKz" role="jymVt" />
      <node concept="3clFb_" id="2UGjFq4lGBW" role="jymVt">
        <property role="TrG5h" value="doTell" />
        <node concept="3Tmbuc" id="2UGjFq4lJig" role="1B3o_S" />
        <node concept="3uibUv" id="2gPa6JHuuXW" role="3clF45">
          <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
        </node>
        <node concept="37vLTG" id="2UGjFq4lGBA" role="3clF46">
          <property role="TrG5h" value="left" />
          <node concept="3uibUv" id="2UGjFq4lGBB" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="2UGjFq4lGBC" role="3clF46">
          <property role="TrG5h" value="right" />
          <node concept="3uibUv" id="2UGjFq4lGBD" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3clFbS" id="2UGjFq4lGAa" role="3clF47">
          <node concept="3clFbJ" id="2UGjFq4lGAb" role="3cqZAp">
            <node concept="3clFbS" id="2UGjFq4lGAc" role="3clFbx">
              <node concept="3cpWs6" id="2gPa6JHuzUq" role="3cqZAp">
                <node concept="1rXfSq" id="2UGjFq4lGAe" role="3cqZAk">
                  <ref role="37wK5l" node="3HJTsBn4V_Q" resolve="tellEq_logical_logical" />
                  <node concept="10QFUN" id="2UGjFq4lGAf" role="37wK5m">
                    <node concept="37vLTw" id="2UGjFq4lGBJ" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lGBA" resolve="left" />
                    </node>
                    <node concept="3uibUv" id="2UGjFq4lGAh" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                      <node concept="16syzq" id="2UGjFq4lGAi" role="11_B2D">
                        <ref role="16sUi3" node="2UGjFq4lHLA" resolve="T" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="2UGjFq4lGAj" role="37wK5m">
                    <node concept="3uibUv" id="2UGjFq4lGAk" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                      <node concept="16syzq" id="2UGjFq4lGAl" role="11_B2D">
                        <ref role="16sUi3" node="2UGjFq4lHLA" resolve="T" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2UGjFq4lGBE" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lGBC" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2UGjFq4lGAn" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="2UGjFq4lGAo" role="3clFbw">
              <node concept="2ZW3vV" id="2UGjFq4lGAp" role="3uHU7w">
                <node concept="3uibUv" id="5cDlfXt5P_1" role="2ZW6by">
                  <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                </node>
                <node concept="37vLTw" id="2UGjFq4lGBM" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4lGBC" resolve="right" />
                </node>
              </node>
              <node concept="2ZW3vV" id="2UGjFq4lGAs" role="3uHU7B">
                <node concept="3uibUv" id="5cDlfXt5Pzu" role="2ZW6by">
                  <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                </node>
                <node concept="37vLTw" id="2UGjFq4lGBG" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4lGBA" resolve="left" />
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="2UGjFq4lGAv" role="3eNLev">
              <node concept="3clFbS" id="2UGjFq4lGAw" role="3eOfB_">
                <node concept="3cpWs6" id="2gPa6JHuFfw" role="3cqZAp">
                  <node concept="1rXfSq" id="2UGjFq4lGAy" role="3cqZAk">
                    <ref role="37wK5l" node="3HJTsBn4V_B" resolve="tellEq_logical_val" />
                    <node concept="10QFUN" id="2UGjFq4lGAz" role="37wK5m">
                      <node concept="37vLTw" id="2UGjFq4lGBR" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4lGBA" resolve="left" />
                      </node>
                      <node concept="3uibUv" id="2UGjFq4lGA_" role="10QFUM">
                        <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                        <node concept="16syzq" id="2UGjFq4lGAA" role="11_B2D">
                          <ref role="16sUi3" node="2UGjFq4lHLA" resolve="T" />
                        </node>
                      </node>
                    </node>
                    <node concept="10QFUN" id="2UGjFq4lGAB" role="37wK5m">
                      <node concept="16syzq" id="2UGjFq4lGAC" role="10QFUM">
                        <ref role="16sUi3" node="2UGjFq4lHLA" resolve="T" />
                      </node>
                      <node concept="37vLTw" id="2UGjFq4lGBK" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4lGBC" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2UGjFq4lGAE" role="3cqZAp" />
              </node>
              <node concept="1Wc70l" id="2UGjFq4lGAF" role="3eO9$A">
                <node concept="3fqX7Q" id="2UGjFq4lGAG" role="3uHU7w">
                  <node concept="1eOMI4" id="2UGjFq4lGAH" role="3fr31v">
                    <node concept="2ZW3vV" id="2UGjFq4lGAI" role="1eOMHV">
                      <node concept="3uibUv" id="5cDlfXt5PF5" role="2ZW6by">
                        <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                      </node>
                      <node concept="37vLTw" id="2UGjFq4lGBH" role="2ZW6bz">
                        <ref role="3cqZAo" node="2UGjFq4lGBC" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="2UGjFq4lGAL" role="3uHU7B">
                  <node concept="3uibUv" id="5cDlfXt5PDh" role="2ZW6by">
                    <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                  </node>
                  <node concept="37vLTw" id="2UGjFq4lGBN" role="2ZW6bz">
                    <ref role="3cqZAo" node="2UGjFq4lGBA" resolve="left" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="2UGjFq4lGAO" role="3eNLev">
              <node concept="3clFbS" id="2UGjFq4lGAP" role="3eOfB_">
                <node concept="3cpWs6" id="2gPa6JHuI4k" role="3cqZAp">
                  <node concept="1rXfSq" id="2UGjFq4lGAR" role="3cqZAk">
                    <ref role="37wK5l" node="3HJTsBn4V_o" resolve="tellEq_val_logical" />
                    <node concept="10QFUN" id="2UGjFq4lGAS" role="37wK5m">
                      <node concept="16syzq" id="2UGjFq4lGAT" role="10QFUM">
                        <ref role="16sUi3" node="2UGjFq4lHLA" resolve="T" />
                      </node>
                      <node concept="37vLTw" id="2UGjFq4lGBS" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4lGBA" resolve="left" />
                      </node>
                    </node>
                    <node concept="10QFUN" id="2UGjFq4lGAV" role="37wK5m">
                      <node concept="3uibUv" id="2UGjFq4lGAW" role="10QFUM">
                        <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                        <node concept="16syzq" id="2UGjFq4lGAX" role="11_B2D">
                          <ref role="16sUi3" node="2UGjFq4lHLA" resolve="T" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2UGjFq4lGBO" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4lGBC" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2UGjFq4lGAZ" role="3cqZAp" />
              </node>
              <node concept="1Wc70l" id="2UGjFq4lGB0" role="3eO9$A">
                <node concept="2ZW3vV" id="2UGjFq4lGB1" role="3uHU7w">
                  <node concept="3uibUv" id="5cDlfXt5PK3" role="2ZW6by">
                    <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                  </node>
                  <node concept="37vLTw" id="2UGjFq4lGBP" role="2ZW6bz">
                    <ref role="3cqZAo" node="2UGjFq4lGBC" resolve="right" />
                  </node>
                </node>
                <node concept="3fqX7Q" id="2UGjFq4lGB4" role="3uHU7B">
                  <node concept="1eOMI4" id="2UGjFq4lGB5" role="3fr31v">
                    <node concept="2ZW3vV" id="2UGjFq4lGB6" role="1eOMHV">
                      <node concept="3uibUv" id="5cDlfXt5PIb" role="2ZW6by">
                        <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                      </node>
                      <node concept="37vLTw" id="2UGjFq4lGBT" role="2ZW6bz">
                        <ref role="3cqZAo" node="2UGjFq4lGBA" resolve="left" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="2UGjFq4lGBw" role="9aQIa">
              <node concept="3clFbS" id="2UGjFq4lGBx" role="9aQI4">
                <node concept="3cpWs6" id="2gPa6JHuJTH" role="3cqZAp">
                  <node concept="1rXfSq" id="2UGjFq4lGBe" role="3cqZAk">
                    <ref role="37wK5l" node="3HJTsBn4V_a" resolve="tellEq_val_val" />
                    <node concept="10QFUN" id="2UGjFq4lGBf" role="37wK5m">
                      <node concept="16syzq" id="2UGjFq4lGBg" role="10QFUM">
                        <ref role="16sUi3" node="2UGjFq4lHLA" resolve="T" />
                      </node>
                      <node concept="37vLTw" id="2UGjFq4lGBF" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4lGBA" resolve="left" />
                      </node>
                    </node>
                    <node concept="10QFUN" id="2UGjFq4lGBi" role="37wK5m">
                      <node concept="16syzq" id="2UGjFq4lGBj" role="10QFUM">
                        <ref role="16sUi3" node="2UGjFq4lHLA" resolve="T" />
                      </node>
                      <node concept="37vLTw" id="2UGjFq4lGBL" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4lGBC" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="2UGjFq4lHLA" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
      </node>
      <node concept="2tJIrI" id="6MYr6JwR0ld" role="jymVt" />
      <node concept="3clFb_" id="3HJTsBn4V_a" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="tellEq_val_val" />
        <node concept="37vLTG" id="3HJTsBn4V_b" role="3clF46">
          <property role="TrG5h" value="leftVal" />
          <node concept="16syzq" id="6MYr6JwQ3A$" role="1tU5fm">
            <ref role="16sUi3" node="6MYr6JwQ38R" resolve="T" />
          </node>
        </node>
        <node concept="37vLTG" id="3HJTsBn4V_d" role="3clF46">
          <property role="TrG5h" value="rightVal" />
          <node concept="16syzq" id="6MYr6JwQ4jc" role="1tU5fm">
            <ref role="16sUi3" node="6MYr6JwQ38R" resolve="T" />
          </node>
        </node>
        <node concept="3uibUv" id="2gPa6JHuMyf" role="3clF45">
          <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
        </node>
        <node concept="3Tmbuc" id="6MYr6JwU_Pm" role="1B3o_S" />
        <node concept="3clFbS" id="3HJTsBn4V_n" role="3clF47">
          <node concept="3clFbJ" id="3HJTsBn7oRW" role="3cqZAp">
            <node concept="3y3z36" id="2gPa6JHvIUn" role="3clFbw">
              <node concept="37vLTw" id="3HJTsBn7pkA" role="3uHU7B">
                <ref role="3cqZAo" node="3HJTsBn4V_b" resolve="leftVal" />
              </node>
              <node concept="37vLTw" id="3HJTsBn7qsr" role="3uHU7w">
                <ref role="3cqZAo" node="3HJTsBn4V_d" resolve="rightVal" />
              </node>
            </node>
            <node concept="3clFbS" id="2gPa6JHvIUs" role="3clFbx">
              <node concept="3clFbJ" id="390NiL16ye4" role="3cqZAp">
                <node concept="3clFbS" id="390NiL16ye5" role="3clFbx">
                  <node concept="3cpWs8" id="390NiL16ye6" role="3cqZAp">
                    <node concept="3cpWsn" id="390NiL16ye7" role="3cpWs9">
                      <property role="TrG5h" value="subs" />
                      <node concept="3uibUv" id="390NiL16ye8" role="1tU5fm">
                        <ref role="3uigEE" to="yt73:~Substitution" resolve="Substitution" />
                      </node>
                      <node concept="2OqwBi" id="390NiL16ye9" role="33vP2m">
                        <node concept="10M0yZ" id="390NiL16yea" role="2Oq$k0">
                          <ref role="3cqZAo" to="yt73:~Unification.INSTANCE" resolve="INSTANCE" />
                          <ref role="1PxDUh" to="yt73:~Unification" resolve="Unification" />
                        </node>
                        <node concept="liA8E" id="390NiL16yeb" role="2OqNvi">
                          <ref role="37wK5l" to="yt73:~Unification.unify(jetbrains.mps.unification.Term,jetbrains.mps.unification.Term)" resolve="unify" />
                          <node concept="1eOMI4" id="390NiL16yec" role="37wK5m">
                            <node concept="10QFUN" id="390NiL16yed" role="1eOMHV">
                              <node concept="3uibUv" id="390NiL16yee" role="10QFUM">
                                <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                              </node>
                              <node concept="37vLTw" id="390NiL16yef" role="10QFUP">
                                <ref role="3cqZAo" node="3HJTsBn4V_b" resolve="leftVal" />
                              </node>
                            </node>
                          </node>
                          <node concept="1eOMI4" id="390NiL16yeg" role="37wK5m">
                            <node concept="10QFUN" id="390NiL16yeh" role="1eOMHV">
                              <node concept="3uibUv" id="390NiL16yei" role="10QFUM">
                                <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                              </node>
                              <node concept="37vLTw" id="390NiL16yej" role="10QFUP">
                                <ref role="3cqZAo" node="3HJTsBn4V_d" resolve="rightVal" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="390NiL16yek" role="3cqZAp">
                    <node concept="3clFbS" id="390NiL16yel" role="3clFbx">
                      <node concept="3cpWs6" id="2gPa6JHuXl7" role="3cqZAp">
                        <node concept="2YIFZM" id="2gPa6JHv36Y" role="3cqZAk">
                          <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
                          <ref role="37wK5l" to="w7la:~Solver$Result.FAIL(java.lang.String)" resolve="FAIL" />
                          <node concept="3cpWs3" id="2gPa6JHv4TL" role="37wK5m">
                            <node concept="3cpWs3" id="2gPa6JHv4TM" role="3uHU7B">
                              <node concept="3cpWs3" id="2gPa6JHv4TN" role="3uHU7B">
                                <node concept="3cpWs3" id="2gPa6JHv4TO" role="3uHU7B">
                                  <node concept="3cpWs3" id="2gPa6JHv4TP" role="3uHU7B">
                                    <node concept="Xl_RD" id="2gPa6JHv4TQ" role="3uHU7B">
                                      <property role="Xl_RC" value="Cannot unify " />
                                    </node>
                                    <node concept="37vLTw" id="2gPa6JHv4TR" role="3uHU7w">
                                      <ref role="3cqZAo" node="3HJTsBn4V_b" resolve="leftVal" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="2gPa6JHv4TS" role="3uHU7w">
                                    <property role="Xl_RC" value=" and " />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="2gPa6JHv4TT" role="3uHU7w">
                                  <ref role="3cqZAo" node="3HJTsBn4V_d" resolve="rightVal" />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="2gPa6JHv4TU" role="3uHU7w">
                                <property role="Xl_RC" value=": " />
                              </node>
                            </node>
                            <node concept="1rXfSq" id="2gPa6JHv4TV" role="3uHU7w">
                              <ref role="37wK5l" node="390NiL16JOu" resolve="formatMessage" />
                              <node concept="37vLTw" id="2gPa6JHv4TW" role="37wK5m">
                                <ref role="3cqZAo" node="390NiL16ye7" resolve="subs" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="2gPa6JHvb5n" role="3cqZAp" />
                    </node>
                    <node concept="3fqX7Q" id="390NiL16ye_" role="3clFbw">
                      <node concept="2OqwBi" id="390NiL16yeA" role="3fr31v">
                        <node concept="37vLTw" id="390NiL16yeB" role="2Oq$k0">
                          <ref role="3cqZAo" node="390NiL16ye7" resolve="subs" />
                        </node>
                        <node concept="liA8E" id="390NiL16yeC" role="2OqNvi">
                          <ref role="37wK5l" to="yt73:~Substitution.isSuccessful()" resolve="isSuccessful" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="390NiL16yeD" role="3cqZAp" />
                  <node concept="1DcWWT" id="6SwZmzBBWe0" role="3cqZAp">
                    <node concept="3clFbS" id="6SwZmzBBWe3" role="2LFqv$">
                      <node concept="3clFbJ" id="6SwZmzBBXQl" role="3cqZAp">
                        <node concept="3clFbS" id="6SwZmzBBXQn" role="3clFbx">
                          <node concept="3SKdUt" id="4p5Sefki$7U" role="3cqZAp">
                            <node concept="1PaTwC" id="4p5Sefki$7V" role="1aUNEU">
                              <node concept="3oM_SD" id="4p5Sefki$7X" role="1PaTwD">
                                <property role="3oM_SC" value="same" />
                              </node>
                              <node concept="3oM_SD" id="4p5Sefki$gz" role="1PaTwD">
                                <property role="3oM_SC" value="variable" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="4p5SefkixJr" role="3cqZAp">
                            <node concept="3clFbS" id="4p5SefkixJt" role="3clFbx">
                              <node concept="3N13vt" id="4p5SefkizPA" role="3cqZAp" />
                            </node>
                            <node concept="3clFbC" id="4p5SefkiyPx" role="3clFbw">
                              <node concept="2OqwBi" id="4p5SefkizuM" role="3uHU7w">
                                <node concept="2OqwBi" id="4p5Sefkiz4D" role="2Oq$k0">
                                  <node concept="37vLTw" id="4p5SefkiyYF" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6SwZmzBBWe4" resolve="bnd" />
                                  </node>
                                  <node concept="liA8E" id="4p5SefkizaB" role="2OqNvi">
                                    <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="4p5SefkizLs" role="2OqNvi">
                                  <ref role="37wK5l" to="yt73:~Term.symbol()" resolve="symbol" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="4p5Sefkiyu9" role="3uHU7B">
                                <node concept="2OqwBi" id="4p5Sefkiy5n" role="2Oq$k0">
                                  <node concept="37vLTw" id="4p5SefkixY_" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6SwZmzBBWe4" resolve="bnd" />
                                  </node>
                                  <node concept="liA8E" id="4p5SefkiyaS" role="2OqNvi">
                                    <ref role="37wK5l" to="yt73:~Substitution$Binding.var()" resolve="var" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="4p5SefkiyJY" role="2OqNvi">
                                  <ref role="37wK5l" to="yt73:~Term.symbol()" resolve="symbol" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="4p5Sefki$QG" role="3cqZAp" />
                        </node>
                        <node concept="1Wc70l" id="6SwZmzBCptl" role="3clFbw">
                          <node concept="1rXfSq" id="6SwZmzBCpKa" role="3uHU7w">
                            <ref role="37wK5l" node="6SwZmzBBJSL" resolve="isLogicalTerm" />
                            <node concept="2OqwBi" id="6SwZmzBCpZW" role="37wK5m">
                              <node concept="37vLTw" id="6SwZmzBCpWJ" role="2Oq$k0">
                                <ref role="3cqZAo" node="6SwZmzBBWe4" resolve="bnd" />
                              </node>
                              <node concept="liA8E" id="6SwZmzBCq7Y" role="2OqNvi">
                                <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                              </node>
                            </node>
                          </node>
                          <node concept="1rXfSq" id="6SwZmzBBYex" role="3uHU7B">
                            <ref role="37wK5l" node="6SwZmzBBJSL" resolve="isLogicalTerm" />
                            <node concept="2OqwBi" id="6SwZmzBBXV4" role="37wK5m">
                              <node concept="37vLTw" id="6SwZmzBBXRp" role="2Oq$k0">
                                <ref role="3cqZAo" node="6SwZmzBBWe4" resolve="bnd" />
                              </node>
                              <node concept="liA8E" id="6SwZmzBCphD" role="2OqNvi">
                                <ref role="37wK5l" to="yt73:~Substitution$Binding.var()" resolve="var" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3eNFk2" id="6SwZmzBGn_h" role="3eNLev">
                          <node concept="1Wc70l" id="6SwZmzBGn_i" role="3eO9$A">
                            <node concept="1rXfSq" id="6SwZmzBGn_j" role="3uHU7w">
                              <ref role="37wK5l" node="6SwZmzBBJSW" resolve="isLogicalValue" />
                              <node concept="2OqwBi" id="6SwZmzBGn_k" role="37wK5m">
                                <node concept="37vLTw" id="6SwZmzBGn_l" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6SwZmzBBWe4" resolve="bnd" />
                                </node>
                                <node concept="liA8E" id="6SwZmzBGn_m" role="2OqNvi">
                                  <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                                </node>
                              </node>
                            </node>
                            <node concept="1rXfSq" id="6SwZmzBGn_n" role="3uHU7B">
                              <ref role="37wK5l" node="6SwZmzBBJSW" resolve="isLogicalValue" />
                              <node concept="2OqwBi" id="6SwZmzBGn_o" role="37wK5m">
                                <node concept="37vLTw" id="6SwZmzBGn_p" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6SwZmzBBWe4" resolve="bnd" />
                                </node>
                                <node concept="liA8E" id="6SwZmzBGn_q" role="2OqNvi">
                                  <ref role="37wK5l" to="yt73:~Substitution$Binding.var()" resolve="var" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="6SwZmzBGn_r" role="3eOfB_">
                            <node concept="3SKdUt" id="4p5Sefki$U6" role="3cqZAp">
                              <node concept="1PaTwC" id="4p5Sefki$U7" role="1aUNEU">
                                <node concept="3oM_SD" id="4p5Sefki$U8" role="1PaTwD">
                                  <property role="3oM_SC" value="same" />
                                </node>
                                <node concept="3oM_SD" id="4p5Sefki$U9" role="1PaTwD">
                                  <property role="3oM_SC" value="variable" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="4p5Sefki_qF" role="3cqZAp">
                              <node concept="3clFbS" id="4p5Sefki_qG" role="3clFbx">
                                <node concept="3N13vt" id="4p5Sefki_qH" role="3cqZAp" />
                              </node>
                              <node concept="3clFbC" id="4p5Sefki_qI" role="3clFbw">
                                <node concept="2OqwBi" id="4p5Sefki_qJ" role="3uHU7w">
                                  <node concept="2OqwBi" id="4p5Sefki_qK" role="2Oq$k0">
                                    <node concept="37vLTw" id="4p5Sefki_qL" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6SwZmzBBWe4" resolve="bnd" />
                                    </node>
                                    <node concept="liA8E" id="4p5Sefki_qM" role="2OqNvi">
                                      <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4p5Sefki_qN" role="2OqNvi">
                                    <ref role="37wK5l" to="yt73:~Term.symbol()" resolve="symbol" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="4p5Sefki_qO" role="3uHU7B">
                                  <node concept="2OqwBi" id="4p5Sefki_qP" role="2Oq$k0">
                                    <node concept="37vLTw" id="4p5Sefki_qQ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6SwZmzBBWe4" resolve="bnd" />
                                    </node>
                                    <node concept="liA8E" id="4p5Sefki_qR" role="2OqNvi">
                                      <ref role="37wK5l" to="yt73:~Substitution$Binding.var()" resolve="var" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4p5Sefki_qS" role="2OqNvi">
                                    <ref role="37wK5l" to="yt73:~Term.symbol()" resolve="symbol" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="6SwZmzBGpdV" role="3cqZAp" />
                      <node concept="3cpWs6" id="2gPa6JHvfN4" role="3cqZAp">
                        <node concept="2YIFZM" id="2gPa6JHvl5a" role="3cqZAk">
                          <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
                          <ref role="37wK5l" to="w7la:~Solver$Result.FAIL(java.lang.String)" resolve="FAIL" />
                          <node concept="3cpWs3" id="2gPa6JHvnOP" role="37wK5m">
                            <node concept="3cpWs3" id="2gPa6JHvnOQ" role="3uHU7B">
                              <node concept="3cpWs3" id="2gPa6JHvnOR" role="3uHU7B">
                                <node concept="3cpWs3" id="2gPa6JHvnOS" role="3uHU7B">
                                  <node concept="Xl_RD" id="2gPa6JHvnOT" role="3uHU7B">
                                    <property role="Xl_RC" value="Unification of " />
                                  </node>
                                  <node concept="37vLTw" id="2gPa6JHvnOU" role="3uHU7w">
                                    <ref role="3cqZAo" node="3HJTsBn4V_b" resolve="leftVal" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="2gPa6JHvnOV" role="3uHU7w">
                                  <property role="Xl_RC" value=" and " />
                                </node>
                              </node>
                              <node concept="37vLTw" id="2gPa6JHvnOW" role="3uHU7w">
                                <ref role="3cqZAo" node="3HJTsBn4V_d" resolve="rightVal" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="2gPa6JHvnOX" role="3uHU7w">
                              <property role="Xl_RC" value=" results in new bindings" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWsn" id="6SwZmzBBWe4" role="1Duv9x">
                      <property role="TrG5h" value="bnd" />
                      <node concept="3uibUv" id="6SwZmzBBWe8" role="1tU5fm">
                        <ref role="3uigEE" to="yt73:~Substitution$Binding" resolve="Substitution.Binding" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6SwZmzBBWe9" role="1DdaDG">
                      <node concept="37vLTw" id="6SwZmzBBWea" role="2Oq$k0">
                        <ref role="3cqZAo" node="390NiL16ye7" resolve="subs" />
                      </node>
                      <node concept="liA8E" id="6SwZmzBBWeb" role="2OqNvi">
                        <ref role="37wK5l" to="yt73:~Substitution.bindings()" resolve="bindings" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="390NiL16yhS" role="3cqZAp" />
                </node>
                <node concept="1Wc70l" id="390NiL16yhT" role="3clFbw">
                  <node concept="2ZW3vV" id="390NiL16yhU" role="3uHU7w">
                    <node concept="3uibUv" id="390NiL16yhV" role="2ZW6by">
                      <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                    </node>
                    <node concept="37vLTw" id="390NiL16yhW" role="2ZW6bz">
                      <ref role="3cqZAo" node="3HJTsBn4V_d" resolve="rightVal" />
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="390NiL16yhX" role="3uHU7B">
                    <node concept="3uibUv" id="390NiL16yhY" role="2ZW6by">
                      <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                    </node>
                    <node concept="37vLTw" id="390NiL16yhZ" role="2ZW6bz">
                      <ref role="3cqZAo" node="3HJTsBn4V_b" resolve="leftVal" />
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="390NiL16yi0" role="9aQIa">
                  <node concept="3clFbS" id="390NiL16yi1" role="9aQI4">
                    <node concept="3clFbJ" id="390NiL16yi2" role="3cqZAp">
                      <node concept="17QLQc" id="390NiL16yi3" role="3clFbw">
                        <node concept="37vLTw" id="390NiL16yi4" role="3uHU7w">
                          <ref role="3cqZAo" node="3HJTsBn4V_d" resolve="rightVal" />
                        </node>
                        <node concept="37vLTw" id="390NiL16yi5" role="3uHU7B">
                          <ref role="3cqZAo" node="3HJTsBn4V_b" resolve="leftVal" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="390NiL16yi6" role="3clFbx">
                        <node concept="3cpWs6" id="2gPa6JHvw7Q" role="3cqZAp">
                          <node concept="2YIFZM" id="2gPa6JHvA$R" role="3cqZAk">
                            <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
                            <ref role="37wK5l" to="w7la:~Solver$Result.FAIL(java.lang.String)" resolve="FAIL" />
                            <node concept="3cpWs3" id="2gPa6JHvCpc" role="37wK5m">
                              <node concept="3cpWs3" id="2gPa6JHvCpd" role="3uHU7B">
                                <node concept="3cpWs3" id="2gPa6JHvCpe" role="3uHU7B">
                                  <node concept="Xl_RD" id="2gPa6JHvCpf" role="3uHU7B">
                                    <property role="Xl_RC" value="Values differ " />
                                  </node>
                                  <node concept="37vLTw" id="2gPa6JHvCpg" role="3uHU7w">
                                    <ref role="3cqZAo" node="3HJTsBn4V_b" resolve="leftVal" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="2gPa6JHvCph" role="3uHU7w">
                                  <property role="Xl_RC" value=" and " />
                                </node>
                              </node>
                              <node concept="37vLTw" id="2gPa6JHvCpi" role="3uHU7w">
                                <ref role="3cqZAo" node="3HJTsBn4V_d" resolve="rightVal" />
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
          <node concept="3cpWs6" id="3HJTsBn7qLI" role="3cqZAp">
            <node concept="2YIFZM" id="2gPa6JHuSL7" role="3cqZAk">
              <ref role="37wK5l" to="w7la:~Solver$Result.OK()" resolve="OK" />
              <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="6MYr6JwQ38R" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
      </node>
      <node concept="2tJIrI" id="3HJTsBn4X9i" role="jymVt" />
      <node concept="3clFb_" id="3HJTsBn4V_o" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="tellEq_val_logical" />
        <node concept="37vLTG" id="3HJTsBn4V_p" role="3clF46">
          <property role="TrG5h" value="leftVal" />
          <node concept="16syzq" id="6MYr6JwQ64U" role="1tU5fm">
            <ref role="16sUi3" node="6MYr6JwQ5Cq" resolve="T" />
          </node>
        </node>
        <node concept="37vLTG" id="3HJTsBn4V_r" role="3clF46">
          <property role="TrG5h" value="right" />
          <node concept="3uibUv" id="3HJTsBn4V_s" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
            <node concept="16syzq" id="6MYr6JwQ7Bx" role="11_B2D">
              <ref role="16sUi3" node="6MYr6JwQ5Cq" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="2gPa6JHvSvO" role="3clF45">
          <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
        </node>
        <node concept="3Tmbuc" id="6MYr6JwUAbQ" role="1B3o_S" />
        <node concept="3clFbS" id="3HJTsBn4V_A" role="3clF47">
          <node concept="3clFbF" id="3HJTsBn7fYl" role="3cqZAp">
            <node concept="1rXfSq" id="3HJTsBn7fYk" role="3clFbG">
              <ref role="37wK5l" node="3HJTsBn4V_B" resolve="tellEq_logical_val" />
              <node concept="37vLTw" id="3HJTsBn7g__" role="37wK5m">
                <ref role="3cqZAo" node="3HJTsBn4V_r" resolve="right" />
              </node>
              <node concept="37vLTw" id="3HJTsBn7h4K" role="37wK5m">
                <ref role="3cqZAo" node="3HJTsBn4V_p" resolve="leftVal" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="6MYr6JwQ5Cq" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
      </node>
      <node concept="2tJIrI" id="3HJTsBn4XRl" role="jymVt" />
      <node concept="3clFb_" id="3HJTsBn4V_B" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="tellEq_logical_val" />
        <node concept="37vLTG" id="3HJTsBn4V_C" role="3clF46">
          <property role="TrG5h" value="left" />
          <node concept="3uibUv" id="3HJTsBn4V_D" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
            <node concept="16syzq" id="6MYr6JwQoGG" role="11_B2D">
              <ref role="16sUi3" node="6MYr6JwQnR4" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3HJTsBn4V_F" role="3clF46">
          <property role="TrG5h" value="rightVal" />
          <node concept="16syzq" id="6MYr6JwQp7S" role="1tU5fm">
            <ref role="16sUi3" node="6MYr6JwQnR4" resolve="T" />
          </node>
        </node>
        <node concept="3uibUv" id="2gPa6JHvViw" role="3clF45">
          <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
        </node>
        <node concept="3Tmbuc" id="6MYr6JwUAxn" role="1B3o_S" />
        <node concept="3clFbS" id="3HJTsBn4V_P" role="3clF47">
          <node concept="3cpWs8" id="3HJTsBn77YV" role="3cqZAp">
            <node concept="3cpWsn" id="3HJTsBn77YW" role="3cpWs9">
              <property role="TrG5h" value="leftRepr" />
              <node concept="3uibUv" id="3HJTsBn79hD" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                <node concept="16syzq" id="6MYr6JwQpP1" role="11_B2D">
                  <ref role="16sUi3" node="6MYr6JwQnR4" resolve="T" />
                </node>
              </node>
              <node concept="2OqwBi" id="3HJTsBn77YY" role="33vP2m">
                <node concept="37vLTw" id="3HJTsBn77YZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn4V_C" resolve="left" />
                </node>
                <node concept="liA8E" id="3HJTsBn77Z0" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3HJTsBn77Z1" role="3cqZAp" />
          <node concept="3cpWs8" id="3HJTsBn77Zi" role="3cqZAp">
            <node concept="3cpWsn" id="3HJTsBn77Zj" role="3cpWs9">
              <property role="TrG5h" value="leftVal" />
              <node concept="3uibUv" id="2c3nq4GStuE" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
              <node concept="2OqwBi" id="3HJTsBn77Zl" role="33vP2m">
                <node concept="37vLTw" id="3HJTsBn77Zm" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn77YW" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="3HJTsBn77Zn" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3HJTsBn77Zo" role="3cqZAp">
            <node concept="3clFbS" id="3HJTsBn77Zp" role="3clFbx">
              <node concept="3cpWs6" id="2gPa6JHvZW6" role="3cqZAp">
                <node concept="2YIFZM" id="2gPa6JHw6te" role="3cqZAk">
                  <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
                  <ref role="37wK5l" to="w7la:~Solver$Result.FAIL(java.lang.String)" resolve="FAIL" />
                  <node concept="3cpWs3" id="2gPa6JHw8iT" role="37wK5m">
                    <node concept="3cpWs3" id="2gPa6JHw8iU" role="3uHU7B">
                      <node concept="3cpWs3" id="2gPa6JHw8iV" role="3uHU7B">
                        <node concept="37vLTw" id="2gPa6JHw8iW" role="3uHU7w">
                          <ref role="3cqZAo" node="3HJTsBn4V_C" resolve="left" />
                        </node>
                        <node concept="Xl_RD" id="2gPa6JHw8iX" role="3uHU7B">
                          <property role="Xl_RC" value="Free logical " />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="2gPa6JHw8iY" role="3uHU7w">
                        <property role="Xl_RC" value=" is not equal to " />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2gPa6JHw8iZ" role="3uHU7w">
                      <ref role="3cqZAo" node="3HJTsBn4V_F" resolve="rightVal" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3HJTsBn77ZE" role="3cqZAp" />
            </node>
            <node concept="3clFbC" id="3HJTsBn77ZF" role="3clFbw">
              <node concept="10Nm6u" id="3HJTsBn77ZG" role="3uHU7w" />
              <node concept="37vLTw" id="3HJTsBn77ZH" role="3uHU7B">
                <ref role="3cqZAo" node="3HJTsBn77Zj" resolve="leftVal" />
              </node>
            </node>
            <node concept="9aQIb" id="3HJTsBn77ZI" role="9aQIa">
              <node concept="3clFbS" id="3HJTsBn77ZJ" role="9aQI4">
                <node concept="3cpWs6" id="2gPa6JHweSs" role="3cqZAp">
                  <node concept="1rXfSq" id="3HJTsBn77ZL" role="3cqZAk">
                    <ref role="37wK5l" node="3HJTsBn4V_a" resolve="tellEq_val_val" />
                    <node concept="37vLTw" id="3HJTsBn77ZM" role="37wK5m">
                      <ref role="3cqZAo" node="3HJTsBn77Zj" resolve="leftVal" />
                    </node>
                    <node concept="37vLTw" id="3HJTsBn77ZN" role="37wK5m">
                      <ref role="3cqZAo" node="3HJTsBn4V_F" resolve="rightVal" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="6MYr6JwQnR4" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
      </node>
      <node concept="2tJIrI" id="3HJTsBn5gqM" role="jymVt" />
      <node concept="3clFb_" id="3HJTsBn4V_Q" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="tellEq_logical_logical" />
        <node concept="37vLTG" id="3HJTsBn4V_R" role="3clF46">
          <property role="TrG5h" value="left" />
          <node concept="3uibUv" id="3HJTsBn4V_S" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
            <node concept="16syzq" id="6MYr6JwQtLp" role="11_B2D">
              <ref role="16sUi3" node="6MYr6JwQsDp" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3HJTsBn4V_U" role="3clF46">
          <property role="TrG5h" value="right" />
          <node concept="3uibUv" id="3HJTsBn4V_V" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
            <node concept="16syzq" id="6MYr6JwQuP9" role="11_B2D">
              <ref role="16sUi3" node="6MYr6JwQsDp" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="2gPa6JHwgJW" role="3clF45">
          <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
        </node>
        <node concept="3Tmbuc" id="6MYr6JwUATr" role="1B3o_S" />
        <node concept="3clFbS" id="3HJTsBn4VA5" role="3clF47">
          <node concept="3SKdUt" id="3HJTsBn6TsO" role="3cqZAp">
            <node concept="1PaTwC" id="589APehYy4Y" role="1aUNEU">
              <node concept="3oM_SD" id="589APehYy4Z" role="1PaTwD">
                <property role="3oM_SC" value="TODO:" />
              </node>
              <node concept="3oM_SD" id="589APehYy50" role="1PaTwD">
                <property role="3oM_SC" value="avoid" />
              </node>
              <node concept="3oM_SD" id="589APehYy51" role="1PaTwD">
                <property role="3oM_SC" value="code" />
              </node>
              <node concept="3oM_SD" id="589APehYy52" role="1PaTwD">
                <property role="3oM_SC" value="duplication" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3HJTsBn6R7p" role="3cqZAp">
            <node concept="3y3z36" id="2gPa6JHwnrX" role="3clFbw">
              <node concept="37vLTw" id="3HJTsBn6R7u" role="3uHU7B">
                <ref role="3cqZAo" node="3HJTsBn4V_R" resolve="left" />
              </node>
              <node concept="37vLTw" id="3HJTsBn6R7t" role="3uHU7w">
                <ref role="3cqZAo" node="3HJTsBn4V_U" resolve="right" />
              </node>
            </node>
            <node concept="3clFbS" id="2gPa6JHwns2" role="3clFbx">
              <node concept="3cpWs8" id="3HJTsBn6R7w" role="3cqZAp">
                <node concept="3cpWsn" id="3HJTsBn6R7x" role="3cpWs9">
                  <property role="TrG5h" value="leftRepr" />
                  <node concept="3uibUv" id="3HJTsBn6UOm" role="1tU5fm">
                    <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                    <node concept="16syzq" id="6MYr6JwQvoS" role="11_B2D">
                      <ref role="16sUi3" node="6MYr6JwQsDp" resolve="T" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3HJTsBn6R7z" role="33vP2m">
                    <node concept="37vLTw" id="3HJTsBn6R7$" role="2Oq$k0">
                      <ref role="3cqZAo" node="3HJTsBn4V_R" resolve="left" />
                    </node>
                    <node concept="liA8E" id="3HJTsBn6R7_" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="3HJTsBn6R7A" role="3cqZAp">
                <node concept="3cpWsn" id="3HJTsBn6R7B" role="3cpWs9">
                  <property role="TrG5h" value="rightRepr" />
                  <node concept="3uibUv" id="3HJTsBn6WzP" role="1tU5fm">
                    <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                    <node concept="16syzq" id="6MYr6JwQvEZ" role="11_B2D">
                      <ref role="16sUi3" node="6MYr6JwQsDp" resolve="T" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3HJTsBn6R7D" role="33vP2m">
                    <node concept="37vLTw" id="3HJTsBn6R7E" role="2Oq$k0">
                      <ref role="3cqZAo" node="3HJTsBn4V_U" resolve="right" />
                    </node>
                    <node concept="liA8E" id="3HJTsBn6R7F" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3HJTsBn6R7G" role="3cqZAp" />
              <node concept="3clFbJ" id="3HJTsBn6R7H" role="3cqZAp">
                <node concept="3clFbS" id="3HJTsBn6R7I" role="3clFbx">
                  <node concept="3SKdUt" id="5TfjU0xlLS$" role="3cqZAp">
                    <node concept="1PaTwC" id="589APehYy53" role="1aUNEU">
                      <node concept="3oM_SD" id="589APehYy54" role="1PaTwD">
                        <property role="3oM_SC" value="same" />
                      </node>
                      <node concept="3oM_SD" id="589APehYy55" role="1PaTwD">
                        <property role="3oM_SC" value="logical" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="3HJTsBn6R7J" role="3cqZAp">
                    <node concept="2YIFZM" id="2gPa6JHwDOG" role="3cqZAk">
                      <ref role="37wK5l" to="w7la:~Solver$Result.OK()" resolve="OK" />
                      <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="3HJTsBn6R7K" role="3clFbw">
                  <node concept="37vLTw" id="3HJTsBn6R7L" role="3uHU7w">
                    <ref role="3cqZAo" node="3HJTsBn6R7B" resolve="rightRepr" />
                  </node>
                  <node concept="37vLTw" id="3HJTsBn6R7M" role="3uHU7B">
                    <ref role="3cqZAo" node="3HJTsBn6R7x" resolve="leftRepr" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="390NiL16$pY" role="3cqZAp" />
              <node concept="3clFbJ" id="5TfjU0xlHoO" role="3cqZAp">
                <node concept="3clFbS" id="5TfjU0xlHoQ" role="3clFbx">
                  <node concept="3cpWs6" id="2gPa6JH$4RB" role="3cqZAp">
                    <node concept="1rXfSq" id="5TfjU0xlJ7F" role="3cqZAk">
                      <ref role="37wK5l" node="3HJTsBn4V_a" resolve="tellEq_val_val" />
                      <node concept="2OqwBi" id="5TfjU0xlJoT" role="37wK5m">
                        <node concept="37vLTw" id="5TfjU0xlJj3" role="2Oq$k0">
                          <ref role="3cqZAo" node="3HJTsBn6R7x" resolve="leftRepr" />
                        </node>
                        <node concept="liA8E" id="5TfjU0xlJO3" role="2OqNvi">
                          <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5TfjU0xlKvG" role="37wK5m">
                        <node concept="37vLTw" id="5TfjU0xlKit" role="2Oq$k0">
                          <ref role="3cqZAo" node="3HJTsBn6R7B" resolve="rightRepr" />
                        </node>
                        <node concept="liA8E" id="5TfjU0xlKQD" role="2OqNvi">
                          <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="390NiL16_53" role="3cqZAp" />
                </node>
                <node concept="1Wc70l" id="5TfjU0xlIlN" role="3clFbw">
                  <node concept="2OqwBi" id="5TfjU0xlIDs" role="3uHU7w">
                    <node concept="37vLTw" id="5TfjU0xlIwd" role="2Oq$k0">
                      <ref role="3cqZAo" node="3HJTsBn6R7B" resolve="rightRepr" />
                    </node>
                    <node concept="liA8E" id="5TfjU0xlIZU" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5TfjU0xlHGF" role="3uHU7B">
                    <node concept="37vLTw" id="5TfjU0xlHxc" role="2Oq$k0">
                      <ref role="3cqZAo" node="3HJTsBn6R7x" resolve="leftRepr" />
                    </node>
                    <node concept="liA8E" id="5TfjU0xlI96" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="390NiL16_4R" role="9aQIa">
                  <node concept="3clFbS" id="390NiL16_4S" role="9aQI4">
                    <node concept="3cpWs6" id="2gPa6JHwHPf" role="3cqZAp">
                      <node concept="2YIFZM" id="2gPa6JHwOpe" role="3cqZAk">
                        <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
                        <ref role="37wK5l" to="w7la:~Solver$Result.FAIL(java.lang.String)" resolve="FAIL" />
                        <node concept="3cpWs3" id="2gPa6JHwQgK" role="37wK5m">
                          <node concept="3cpWs3" id="2gPa6JHwQgL" role="3uHU7B">
                            <node concept="3cpWs3" id="2gPa6JHwQgM" role="3uHU7B">
                              <node concept="Xl_RD" id="2gPa6JHwQgN" role="3uHU7B">
                                <property role="Xl_RC" value="Logical " />
                              </node>
                              <node concept="37vLTw" id="2gPa6JHwQgO" role="3uHU7w">
                                <ref role="3cqZAo" node="3HJTsBn4V_R" resolve="left" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="2gPa6JHwQgP" role="3uHU7w">
                              <property role="Xl_RC" value=" is not equal to " />
                            </node>
                          </node>
                          <node concept="37vLTw" id="2gPa6JHwQgQ" role="3uHU7w">
                            <ref role="3cqZAo" node="3HJTsBn4V_U" resolve="right" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3HJTsBn6R7N" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbF" id="2gPa6JHw$dX" role="3cqZAp">
            <node concept="2YIFZM" id="2gPa6JHw_t9" role="3clFbG">
              <ref role="37wK5l" to="w7la:~Solver$Result.OK()" resolve="OK" />
              <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="6MYr6JwQsDp" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
      </node>
      <node concept="2tJIrI" id="6MYr6JwR1xu" role="jymVt" />
      <node concept="3clFb_" id="3HJTsBn4VA6" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="askEq_val_val" />
        <node concept="37vLTG" id="3HJTsBn4VA7" role="3clF46">
          <property role="TrG5h" value="leftVal" />
          <node concept="16syzq" id="6MYr6JwQALa" role="1tU5fm">
            <ref role="16sUi3" node="6MYr6JwQA1q" resolve="T" />
          </node>
        </node>
        <node concept="37vLTG" id="3HJTsBn4VA9" role="3clF46">
          <property role="TrG5h" value="rightVal" />
          <node concept="16syzq" id="6MYr6JwQBzT" role="1tU5fm">
            <ref role="16sUi3" node="6MYr6JwQA1q" resolve="T" />
          </node>
        </node>
        <node concept="10P_77" id="3HJTsBn4VAb" role="3clF45" />
        <node concept="3Tmbuc" id="6MYr6JwUBqG" role="1B3o_S" />
        <node concept="3clFbS" id="3HJTsBn4VAj" role="3clF47">
          <node concept="3clFbJ" id="390NiL16_I4" role="3cqZAp">
            <node concept="3clFbS" id="390NiL16_I5" role="3clFbx">
              <node concept="3cpWs8" id="390NiL16_I6" role="3cqZAp">
                <node concept="3cpWsn" id="390NiL16_I7" role="3cpWs9">
                  <property role="TrG5h" value="subs" />
                  <node concept="3uibUv" id="390NiL16_I8" role="1tU5fm">
                    <ref role="3uigEE" to="yt73:~Substitution" resolve="Substitution" />
                  </node>
                  <node concept="2OqwBi" id="390NiL16_I9" role="33vP2m">
                    <node concept="10M0yZ" id="390NiL16_Ia" role="2Oq$k0">
                      <ref role="3cqZAo" to="yt73:~Unification.INSTANCE" resolve="INSTANCE" />
                      <ref role="1PxDUh" to="yt73:~Unification" resolve="Unification" />
                    </node>
                    <node concept="liA8E" id="390NiL16_Ib" role="2OqNvi">
                      <ref role="37wK5l" to="yt73:~Unification.unify(jetbrains.mps.unification.Term,jetbrains.mps.unification.Term)" resolve="unify" />
                      <node concept="10QFUN" id="390NiL16_Ic" role="37wK5m">
                        <node concept="3uibUv" id="390NiL16_Id" role="10QFUM">
                          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                        </node>
                        <node concept="37vLTw" id="390NiL16_Ie" role="10QFUP">
                          <ref role="3cqZAo" node="3HJTsBn4VA7" resolve="leftVal" />
                        </node>
                      </node>
                      <node concept="10QFUN" id="390NiL16_If" role="37wK5m">
                        <node concept="3uibUv" id="390NiL16_Ig" role="10QFUM">
                          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                        </node>
                        <node concept="37vLTw" id="390NiL16_Ih" role="10QFUP">
                          <ref role="3cqZAo" node="3HJTsBn4VA9" resolve="rightVal" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="390NiL16_Ii" role="3cqZAp">
                <node concept="3clFbS" id="390NiL16_Ij" role="3clFbx">
                  <node concept="3cpWs6" id="390NiL16_Ik" role="3cqZAp">
                    <node concept="3clFbT" id="390NiL16_Il" role="3cqZAk">
                      <property role="3clFbU" value="false" />
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="390NiL16_Im" role="3clFbw">
                  <node concept="2OqwBi" id="390NiL16_In" role="3fr31v">
                    <node concept="37vLTw" id="390NiL16_Io" role="2Oq$k0">
                      <ref role="3cqZAo" node="390NiL16_I7" resolve="subs" />
                    </node>
                    <node concept="liA8E" id="390NiL16_Ip" role="2OqNvi">
                      <ref role="37wK5l" to="yt73:~Substitution.isSuccessful()" resolve="isSuccessful" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6SwZmzBD7ZA" role="3cqZAp" />
              <node concept="1DcWWT" id="6SwZmzBD5Ag" role="3cqZAp">
                <node concept="3clFbS" id="6SwZmzBD5Ah" role="2LFqv$">
                  <node concept="3clFbJ" id="6SwZmzBD5Ai" role="3cqZAp">
                    <node concept="3clFbS" id="6SwZmzBD5Aj" role="3clFbx">
                      <node concept="3SKdUt" id="4p5SefkiALB" role="3cqZAp">
                        <node concept="1PaTwC" id="4p5SefkiALC" role="1aUNEU">
                          <node concept="3oM_SD" id="4p5SefkiALE" role="1PaTwD">
                            <property role="3oM_SC" value="same" />
                          </node>
                          <node concept="3oM_SD" id="4p5SefkiANR" role="1PaTwD">
                            <property role="3oM_SC" value="variable" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="4p5Sefki_z$" role="3cqZAp">
                        <node concept="3clFbS" id="4p5Sefki_z_" role="3clFbx">
                          <node concept="3N13vt" id="4p5Sefki_zA" role="3cqZAp" />
                        </node>
                        <node concept="3clFbC" id="4p5Sefki_zB" role="3clFbw">
                          <node concept="2OqwBi" id="4p5Sefki_zC" role="3uHU7w">
                            <node concept="2OqwBi" id="4p5Sefki_zD" role="2Oq$k0">
                              <node concept="37vLTw" id="4p5Sefki_zE" role="2Oq$k0">
                                <ref role="3cqZAo" node="6SwZmzBD5B9" resolve="bnd" />
                              </node>
                              <node concept="liA8E" id="4p5Sefki_zF" role="2OqNvi">
                                <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                              </node>
                            </node>
                            <node concept="liA8E" id="4p5Sefki_zG" role="2OqNvi">
                              <ref role="37wK5l" to="yt73:~Term.symbol()" resolve="symbol" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="4p5Sefki_zH" role="3uHU7B">
                            <node concept="2OqwBi" id="4p5Sefki_zI" role="2Oq$k0">
                              <node concept="37vLTw" id="4p5Sefki_zJ" role="2Oq$k0">
                                <ref role="3cqZAo" node="6SwZmzBD5B9" resolve="bnd" />
                              </node>
                              <node concept="liA8E" id="4p5Sefki_zK" role="2OqNvi">
                                <ref role="37wK5l" to="yt73:~Substitution$Binding.var()" resolve="var" />
                              </node>
                            </node>
                            <node concept="liA8E" id="4p5Sefki_zL" role="2OqNvi">
                              <ref role="37wK5l" to="yt73:~Term.symbol()" resolve="symbol" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="4p5SefkiA8E" role="3cqZAp" />
                    </node>
                    <node concept="1Wc70l" id="6SwZmzBD5AO" role="3clFbw">
                      <node concept="1rXfSq" id="6SwZmzBD5AP" role="3uHU7w">
                        <ref role="37wK5l" node="6SwZmzBBJSL" resolve="isLogicalTerm" />
                        <node concept="2OqwBi" id="6SwZmzBD5AQ" role="37wK5m">
                          <node concept="37vLTw" id="6SwZmzBD5AR" role="2Oq$k0">
                            <ref role="3cqZAo" node="6SwZmzBD5B9" resolve="bnd" />
                          </node>
                          <node concept="liA8E" id="6SwZmzBD5AS" role="2OqNvi">
                            <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                          </node>
                        </node>
                      </node>
                      <node concept="1rXfSq" id="6SwZmzBD5AT" role="3uHU7B">
                        <ref role="37wK5l" node="6SwZmzBBJSL" resolve="isLogicalTerm" />
                        <node concept="2OqwBi" id="6SwZmzBD5AU" role="37wK5m">
                          <node concept="37vLTw" id="6SwZmzBD5AV" role="2Oq$k0">
                            <ref role="3cqZAo" node="6SwZmzBD5B9" resolve="bnd" />
                          </node>
                          <node concept="liA8E" id="6SwZmzBD5AW" role="2OqNvi">
                            <ref role="37wK5l" to="yt73:~Substitution$Binding.var()" resolve="var" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3eNFk2" id="6SwZmzBG8UC" role="3eNLev">
                      <node concept="1Wc70l" id="6SwZmzBG9CQ" role="3eO9$A">
                        <node concept="1rXfSq" id="6SwZmzBG9Xj" role="3uHU7w">
                          <ref role="37wK5l" node="6SwZmzBBJSW" resolve="isLogicalValue" />
                          <node concept="2OqwBi" id="6SwZmzBGafq" role="37wK5m">
                            <node concept="37vLTw" id="6SwZmzBGac3" role="2Oq$k0">
                              <ref role="3cqZAo" node="6SwZmzBD5B9" resolve="bnd" />
                            </node>
                            <node concept="liA8E" id="6SwZmzBGanM" role="2OqNvi">
                              <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                            </node>
                          </node>
                        </node>
                        <node concept="1rXfSq" id="6SwZmzBG93K" role="3uHU7B">
                          <ref role="37wK5l" node="6SwZmzBBJSW" resolve="isLogicalValue" />
                          <node concept="2OqwBi" id="6SwZmzBG9kv" role="37wK5m">
                            <node concept="37vLTw" id="6SwZmzBG9hF" role="2Oq$k0">
                              <ref role="3cqZAo" node="6SwZmzBD5B9" resolve="bnd" />
                            </node>
                            <node concept="liA8E" id="6SwZmzBG9s2" role="2OqNvi">
                              <ref role="37wK5l" to="yt73:~Substitution$Binding.var()" resolve="var" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="6SwZmzBG8UE" role="3eOfB_">
                        <node concept="3SKdUt" id="4p5SefkiASL" role="3cqZAp">
                          <node concept="1PaTwC" id="4p5SefkiASM" role="1aUNEU">
                            <node concept="3oM_SD" id="4p5SefkiAVb" role="1PaTwD">
                              <property role="3oM_SC" value="same" />
                            </node>
                            <node concept="3oM_SD" id="4p5SefkiAVd" role="1PaTwD">
                              <property role="3oM_SC" value="variable" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="4p5SefkiAaM" role="3cqZAp">
                          <node concept="3clFbS" id="4p5SefkiAaN" role="3clFbx">
                            <node concept="3N13vt" id="4p5SefkiAaO" role="3cqZAp" />
                          </node>
                          <node concept="3clFbC" id="4p5SefkiAaP" role="3clFbw">
                            <node concept="2OqwBi" id="4p5SefkiAaQ" role="3uHU7w">
                              <node concept="2OqwBi" id="4p5SefkiAaR" role="2Oq$k0">
                                <node concept="37vLTw" id="4p5SefkiAaS" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6SwZmzBD5B9" resolve="bnd" />
                                </node>
                                <node concept="liA8E" id="4p5SefkiAaT" role="2OqNvi">
                                  <ref role="37wK5l" to="yt73:~Substitution$Binding.term()" resolve="term" />
                                </node>
                              </node>
                              <node concept="liA8E" id="4p5SefkiAaU" role="2OqNvi">
                                <ref role="37wK5l" to="yt73:~Term.symbol()" resolve="symbol" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="4p5SefkiAaV" role="3uHU7B">
                              <node concept="2OqwBi" id="4p5SefkiAaW" role="2Oq$k0">
                                <node concept="37vLTw" id="4p5SefkiAaX" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6SwZmzBD5B9" resolve="bnd" />
                                </node>
                                <node concept="liA8E" id="4p5SefkiAaY" role="2OqNvi">
                                  <ref role="37wK5l" to="yt73:~Substitution$Binding.var()" resolve="var" />
                                </node>
                              </node>
                              <node concept="liA8E" id="4p5SefkiAaZ" role="2OqNvi">
                                <ref role="37wK5l" to="yt73:~Term.symbol()" resolve="symbol" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="6SwZmzBDa9F" role="3cqZAp">
                    <node concept="3clFbT" id="6SwZmzBDbmX" role="3cqZAk" />
                  </node>
                </node>
                <node concept="3cpWsn" id="6SwZmzBD5B9" role="1Duv9x">
                  <property role="TrG5h" value="bnd" />
                  <node concept="3uibUv" id="6SwZmzBD5Ba" role="1tU5fm">
                    <ref role="3uigEE" to="yt73:~Substitution$Binding" resolve="Substitution.Binding" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6SwZmzBD5Bb" role="1DdaDG">
                  <node concept="37vLTw" id="6SwZmzBD5Bc" role="2Oq$k0">
                    <ref role="3cqZAo" node="390NiL16_I7" resolve="subs" />
                  </node>
                  <node concept="liA8E" id="6SwZmzBD5Bd" role="2OqNvi">
                    <ref role="37wK5l" to="yt73:~Substitution.bindings()" resolve="bindings" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6SwZmzBD4bo" role="3cqZAp" />
              <node concept="3cpWs6" id="390NiL16_NZ" role="3cqZAp">
                <node concept="3clFbT" id="6SwZmzBDmPz" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
              <node concept="3clFbH" id="390NiL16_Ki" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="390NiL16_Kj" role="3clFbw">
              <node concept="2ZW3vV" id="390NiL16_Kk" role="3uHU7w">
                <node concept="3uibUv" id="390NiL16_Kl" role="2ZW6by">
                  <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                </node>
                <node concept="37vLTw" id="390NiL16_Km" role="2ZW6bz">
                  <ref role="3cqZAo" node="3HJTsBn4VA9" resolve="rightVal" />
                </node>
              </node>
              <node concept="2ZW3vV" id="390NiL16_Kn" role="3uHU7B">
                <node concept="3uibUv" id="390NiL16_Ko" role="2ZW6by">
                  <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                </node>
                <node concept="37vLTw" id="390NiL16_Kp" role="2ZW6bz">
                  <ref role="3cqZAo" node="3HJTsBn4VA7" resolve="leftVal" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="390NiL16_Kq" role="9aQIa">
              <node concept="3clFbS" id="390NiL16_Kr" role="9aQI4">
                <node concept="3cpWs6" id="390NiL16_Ks" role="3cqZAp">
                  <node concept="17R0WA" id="390NiL16_Kt" role="3cqZAk">
                    <node concept="37vLTw" id="390NiL16_Ku" role="3uHU7w">
                      <ref role="3cqZAo" node="3HJTsBn4VA9" resolve="rightVal" />
                    </node>
                    <node concept="37vLTw" id="390NiL16_Kv" role="3uHU7B">
                      <ref role="3cqZAo" node="3HJTsBn4VA7" resolve="leftVal" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="6MYr6JwQA1q" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
      </node>
      <node concept="2tJIrI" id="3HJTsBn6LBY" role="jymVt" />
      <node concept="3clFb_" id="3HJTsBn4VAm" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="askEq_val_logical" />
        <node concept="37vLTG" id="3HJTsBn4VAn" role="3clF46">
          <property role="TrG5h" value="leftVal" />
          <node concept="16syzq" id="6MYr6JwQE6u" role="1tU5fm">
            <ref role="16sUi3" node="6MYr6JwQDrB" resolve="T" />
          </node>
        </node>
        <node concept="37vLTG" id="3HJTsBn4VAp" role="3clF46">
          <property role="TrG5h" value="right" />
          <node concept="3uibUv" id="3HJTsBn4VAq" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
            <node concept="16syzq" id="6MYr6JwQEWs" role="11_B2D">
              <ref role="16sUi3" node="6MYr6JwQDrB" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="10P_77" id="3HJTsBn4VAs" role="3clF45" />
        <node concept="3Tmbuc" id="6MYr6JwUBKB" role="1B3o_S" />
        <node concept="3clFbS" id="3HJTsBn4VA$" role="3clF47">
          <node concept="3clFbF" id="3HJTsBn6Ihr" role="3cqZAp">
            <node concept="1rXfSq" id="3HJTsBn6Ihp" role="3clFbG">
              <ref role="37wK5l" node="3HJTsBn4VAB" resolve="askEq_logical_val" />
              <node concept="37vLTw" id="3HJTsBn6IDu" role="37wK5m">
                <ref role="3cqZAo" node="3HJTsBn4VAp" resolve="right" />
              </node>
              <node concept="37vLTw" id="3HJTsBn6ISy" role="37wK5m">
                <ref role="3cqZAo" node="3HJTsBn4VAn" resolve="leftVal" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="6MYr6JwQDrB" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
      </node>
      <node concept="2tJIrI" id="3HJTsBn4ZY2" role="jymVt" />
      <node concept="3clFb_" id="3HJTsBn4VAB" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="askEq_logical_val" />
        <node concept="37vLTG" id="3HJTsBn4VAC" role="3clF46">
          <property role="TrG5h" value="left" />
          <node concept="3uibUv" id="3HJTsBn4VAD" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
            <node concept="16syzq" id="6MYr6JwQHqG" role="11_B2D">
              <ref role="16sUi3" node="6MYr6JwQGB9" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3HJTsBn4VAF" role="3clF46">
          <property role="TrG5h" value="rightVal" />
          <node concept="16syzq" id="6MYr6JwQHVX" role="1tU5fm">
            <ref role="16sUi3" node="6MYr6JwQGB9" resolve="T" />
          </node>
        </node>
        <node concept="10P_77" id="3HJTsBn4VAH" role="3clF45" />
        <node concept="3Tmbuc" id="6MYr6JwUC68" role="1B3o_S" />
        <node concept="3clFbS" id="3HJTsBn4VAP" role="3clF47">
          <node concept="3cpWs8" id="3HJTsBn6Ehj" role="3cqZAp">
            <node concept="3cpWsn" id="3HJTsBn6Ehk" role="3cpWs9">
              <property role="TrG5h" value="leftRepr" />
              <node concept="3uibUv" id="3HJTsBn6Fci" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                <node concept="16syzq" id="6MYr6JwQIFk" role="11_B2D">
                  <ref role="16sUi3" node="6MYr6JwQGB9" resolve="T" />
                </node>
              </node>
              <node concept="2OqwBi" id="3HJTsBn6Ehm" role="33vP2m">
                <node concept="37vLTw" id="3HJTsBn6Ehn" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn4VAC" resolve="left" />
                </node>
                <node concept="liA8E" id="3HJTsBn6Eho" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL16DKl" role="3cqZAp" />
          <node concept="3cpWs8" id="390NiL16DNn" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL16DNo" role="3cpWs9">
              <property role="TrG5h" value="leftVal" />
              <node concept="16syzq" id="390NiL16DNd" role="1tU5fm">
                <ref role="16sUi3" node="6MYr6JwQGB9" resolve="T" />
              </node>
              <node concept="2OqwBi" id="390NiL16DNp" role="33vP2m">
                <node concept="37vLTw" id="390NiL16DNq" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn6Ehk" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="390NiL16DNr" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3HJTsBn6Ehq" role="3cqZAp">
            <node concept="3clFbS" id="3HJTsBn6Ehr" role="3clFbx">
              <node concept="3SKdUt" id="5TfjU0xlT5L" role="3cqZAp">
                <node concept="1PaTwC" id="589APehYy5c" role="1aUNEU">
                  <node concept="3oM_SD" id="589APehYy5d" role="1PaTwD">
                    <property role="3oM_SC" value="free" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy5e" role="1PaTwD">
                    <property role="3oM_SC" value="logical" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy5f" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy5g" role="1PaTwD">
                    <property role="3oM_SC" value="equal" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy5h" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy5i" role="1PaTwD">
                    <property role="3oM_SC" value="itself" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy5j" role="1PaTwD">
                    <property role="3oM_SC" value="only" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3HJTsBn6Ehs" role="3cqZAp">
                <node concept="3clFbT" id="3HJTsBn6Eht" role="3cqZAk" />
              </node>
            </node>
            <node concept="3clFbC" id="3HJTsBn6Ehu" role="3clFbw">
              <node concept="10Nm6u" id="3HJTsBn6Ehv" role="3uHU7w" />
              <node concept="37vLTw" id="390NiL16DNs" role="3uHU7B">
                <ref role="3cqZAo" node="390NiL16DNo" resolve="leftVal" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3HJTsBn6Hcd" role="3cqZAp" />
          <node concept="3cpWs6" id="5TfjU0xlUWE" role="3cqZAp">
            <node concept="1rXfSq" id="5TfjU0xlWcq" role="3cqZAk">
              <ref role="37wK5l" node="3HJTsBn4VA6" resolve="askEq_val_val" />
              <node concept="37vLTw" id="390NiL16DNt" role="37wK5m">
                <ref role="3cqZAo" node="390NiL16DNo" resolve="leftVal" />
              </node>
              <node concept="37vLTw" id="5TfjU0xlZOg" role="37wK5m">
                <ref role="3cqZAo" node="3HJTsBn4VAF" resolve="rightVal" />
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="6MYr6JwQGB9" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
      </node>
      <node concept="2tJIrI" id="3HJTsBn51oT" role="jymVt" />
      <node concept="3clFb_" id="3HJTsBn4VAS" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="askEq_logical_logical" />
        <node concept="37vLTG" id="3HJTsBn4VAT" role="3clF46">
          <property role="TrG5h" value="left" />
          <node concept="3uibUv" id="3HJTsBn4VAU" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
            <node concept="16syzq" id="6MYr6JwQLAe" role="11_B2D">
              <ref role="16sUi3" node="6MYr6JwQJMk" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3HJTsBn4VAW" role="3clF46">
          <property role="TrG5h" value="right" />
          <node concept="3uibUv" id="3HJTsBn4VAX" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
            <node concept="16syzq" id="6MYr6JwQMz4" role="11_B2D">
              <ref role="16sUi3" node="6MYr6JwQJMk" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="10P_77" id="3HJTsBn4VAZ" role="3clF45" />
        <node concept="3Tmbuc" id="6MYr6JwUCud" role="1B3o_S" />
        <node concept="3clFbS" id="3HJTsBn4VB7" role="3clF47">
          <node concept="3cpWs8" id="3HJTsBn61Rq" role="3cqZAp">
            <node concept="3cpWsn" id="3HJTsBn61Rr" role="3cpWs9">
              <property role="TrG5h" value="leftRepr" />
              <node concept="3uibUv" id="3HJTsBn6y1d" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                <node concept="16syzq" id="6MYr6JwQN3J" role="11_B2D">
                  <ref role="16sUi3" node="6MYr6JwQJMk" resolve="T" />
                </node>
              </node>
              <node concept="2OqwBi" id="3HJTsBn61Rt" role="33vP2m">
                <node concept="37vLTw" id="3HJTsBn61Ru" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn4VAT" resolve="left" />
                </node>
                <node concept="liA8E" id="3HJTsBn61Rv" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3HJTsBn61Rw" role="3cqZAp">
            <node concept="3cpWsn" id="3HJTsBn61Rx" role="3cpWs9">
              <property role="TrG5h" value="rightRepr" />
              <node concept="3uibUv" id="3HJTsBn6yZM" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                <node concept="16syzq" id="6MYr6JwQNvZ" role="11_B2D">
                  <ref role="16sUi3" node="6MYr6JwQJMk" resolve="T" />
                </node>
              </node>
              <node concept="2OqwBi" id="3HJTsBn61Rz" role="33vP2m">
                <node concept="37vLTw" id="3HJTsBn61R$" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn4VAW" resolve="right" />
                </node>
                <node concept="liA8E" id="3HJTsBn61R_" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~MutableLogical.findRoot()" resolve="findRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3HJTsBn6_OQ" role="3cqZAp" />
          <node concept="3clFbJ" id="3HJTsBn6_pv" role="3cqZAp">
            <node concept="3clFbS" id="3HJTsBn6_pw" role="3clFbx">
              <node concept="3SKdUt" id="5TfjU0xm1Nj" role="3cqZAp">
                <node concept="1PaTwC" id="589APehYy5k" role="1aUNEU">
                  <node concept="3oM_SD" id="589APehYy5l" role="1PaTwD">
                    <property role="3oM_SC" value="same" />
                  </node>
                  <node concept="3oM_SD" id="589APehYy5m" role="1PaTwD">
                    <property role="3oM_SC" value="logical" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3HJTsBn6_px" role="3cqZAp">
                <node concept="3clFbT" id="3HJTsBn6_py" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="3HJTsBn6_pz" role="3clFbw">
              <node concept="37vLTw" id="3HJTsBn6_p$" role="3uHU7w">
                <ref role="3cqZAo" node="3HJTsBn61Rx" resolve="rightRepr" />
              </node>
              <node concept="37vLTw" id="3HJTsBn6_p_" role="3uHU7B">
                <ref role="3cqZAo" node="3HJTsBn61Rr" resolve="leftRepr" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="390NiL16DYy" role="3cqZAp" />
          <node concept="3clFbJ" id="5TfjU0xm2Ze" role="3cqZAp">
            <node concept="3clFbS" id="5TfjU0xm2Zg" role="3clFbx">
              <node concept="3cpWs6" id="5TfjU0xm7jI" role="3cqZAp">
                <node concept="1rXfSq" id="5TfjU0xm84k" role="3cqZAk">
                  <ref role="37wK5l" node="3HJTsBn4VA6" resolve="askEq_val_val" />
                  <node concept="2OqwBi" id="5TfjU0xm9D1" role="37wK5m">
                    <node concept="37vLTw" id="5TfjU0xm8P2" role="2Oq$k0">
                      <ref role="3cqZAo" node="3HJTsBn61Rr" resolve="leftRepr" />
                    </node>
                    <node concept="liA8E" id="5TfjU0xmaKZ" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5TfjU0xmdeJ" role="37wK5m">
                    <node concept="37vLTw" id="5TfjU0xmcj$" role="2Oq$k0">
                      <ref role="3cqZAo" node="3HJTsBn61Rx" resolve="rightRepr" />
                    </node>
                    <node concept="liA8E" id="5TfjU0xmdxZ" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="5TfjU0xm5Vb" role="3clFbw">
              <node concept="2OqwBi" id="5TfjU0xm6OV" role="3uHU7w">
                <node concept="37vLTw" id="5TfjU0xm6F$" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn61Rx" resolve="rightRepr" />
                </node>
                <node concept="liA8E" id="5TfjU0xm7bx" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                </node>
              </node>
              <node concept="2OqwBi" id="5TfjU0xm4Bq" role="3uHU7B">
                <node concept="37vLTw" id="5TfjU0xm3IX" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn61Rr" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="5TfjU0xm5Ho" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="390NiL16E0E" role="3cqZAp">
            <node concept="3clFbS" id="390NiL16E0G" role="3clFbx">
              <node concept="3cpWs6" id="390NiL16Fy4" role="3cqZAp">
                <node concept="1rXfSq" id="390NiL16Fzv" role="3cqZAk">
                  <ref role="37wK5l" node="3HJTsBn4VAm" resolve="askEq_val_logical" />
                  <node concept="2OqwBi" id="390NiL16FEn" role="37wK5m">
                    <node concept="37vLTw" id="390NiL16F$Q" role="2Oq$k0">
                      <ref role="3cqZAo" node="3HJTsBn61Rr" resolve="leftRepr" />
                    </node>
                    <node concept="liA8E" id="390NiL16Gtl" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="390NiL16Gv0" role="37wK5m">
                    <ref role="3cqZAo" node="3HJTsBn61Rx" resolve="rightRepr" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="390NiL16EEE" role="3clFbw">
              <node concept="37vLTw" id="390NiL16E2O" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn61Rr" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="390NiL16Fxn" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="390NiL16Gv6" role="3cqZAp">
            <node concept="3clFbS" id="390NiL16Gv7" role="3clFbx">
              <node concept="3cpWs6" id="390NiL16Gv8" role="3cqZAp">
                <node concept="1rXfSq" id="390NiL16Gv9" role="3cqZAk">
                  <ref role="37wK5l" node="3HJTsBn4VAB" resolve="askEq_logical_val" />
                  <node concept="37vLTw" id="390NiL16Gvb" role="37wK5m">
                    <ref role="3cqZAo" node="3HJTsBn61Rr" resolve="leftRepr" />
                  </node>
                  <node concept="2OqwBi" id="390NiL16HHL" role="37wK5m">
                    <node concept="37vLTw" id="390NiL16Gvd" role="2Oq$k0">
                      <ref role="3cqZAo" node="3HJTsBn61Rx" resolve="rightRepr" />
                    </node>
                    <node concept="liA8E" id="390NiL16IAw" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="390NiL16Gve" role="3clFbw">
              <node concept="37vLTw" id="390NiL16H1x" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn61Rx" resolve="rightRepr" />
              </node>
              <node concept="liA8E" id="390NiL16Gvg" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5TfjU0xmejy" role="3cqZAp" />
          <node concept="3SKdUt" id="390NiL16ICi" role="3cqZAp">
            <node concept="1PaTwC" id="589APehYy5n" role="1aUNEU">
              <node concept="3oM_SD" id="589APehYy5o" role="1PaTwD">
                <property role="3oM_SC" value="both" />
              </node>
              <node concept="3oM_SD" id="589APehYy5p" role="1PaTwD">
                <property role="3oM_SC" value="logicals" />
              </node>
              <node concept="3oM_SD" id="589APehYy5q" role="1PaTwD">
                <property role="3oM_SC" value="are" />
              </node>
              <node concept="3oM_SD" id="589APehYy5r" role="1PaTwD">
                <property role="3oM_SC" value="free" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="5TfjU0xmfT3" role="3cqZAp">
            <node concept="3clFbT" id="5TfjU0xmfUZ" role="3cqZAk" />
          </node>
        </node>
        <node concept="16euLQ" id="6MYr6JwQJMk" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
      </node>
      <node concept="2tJIrI" id="390NiL16Jw5" role="jymVt" />
      <node concept="3clFb_" id="390NiL16JOu" role="jymVt">
        <property role="TrG5h" value="formatMessage" />
        <node concept="3Tm6S6" id="390NiL16JOv" role="1B3o_S" />
        <node concept="17QB3L" id="390NiL16JOw" role="3clF45" />
        <node concept="37vLTG" id="390NiL16JOx" role="3clF46">
          <property role="TrG5h" value="subs" />
          <node concept="3uibUv" id="390NiL16JOy" role="1tU5fm">
            <ref role="3uigEE" to="yt73:~Substitution" resolve="Substitution" />
          </node>
        </node>
        <node concept="3clFbS" id="390NiL16JOz" role="3clF47">
          <node concept="3cpWs8" id="390NiL16JO$" role="3cqZAp">
            <node concept="3cpWsn" id="390NiL16JO_" role="3cpWs9">
              <property role="TrG5h" value="msg" />
              <node concept="17QB3L" id="390NiL16JOA" role="1tU5fm" />
              <node concept="2OqwBi" id="390NiL16JOB" role="33vP2m">
                <node concept="2OqwBi" id="390NiL16JOC" role="2Oq$k0">
                  <node concept="37vLTw" id="390NiL16JOD" role="2Oq$k0">
                    <ref role="3cqZAo" node="390NiL16JOx" resolve="subs" />
                  </node>
                  <node concept="liA8E" id="390NiL16JOE" role="2OqNvi">
                    <ref role="37wK5l" to="yt73:~Substitution.failureCause()" resolve="failureCause" />
                  </node>
                </node>
                <node concept="liA8E" id="390NiL16JOF" role="2OqNvi">
                  <ref role="37wK5l" to="yt73:~Substitution$FailureCause.toString()" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="390NiL16JOG" role="3cqZAp">
            <node concept="3clFbS" id="390NiL16JOH" role="3clFbx">
              <node concept="3clFbF" id="390NiL16JOI" role="3cqZAp">
                <node concept="37vLTI" id="390NiL16JOJ" role="3clFbG">
                  <node concept="2YIFZM" id="390NiL16JOK" role="37vLTx">
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                    <node concept="Xl_RD" id="390NiL16JOL" role="37wK5m">
                      <property role="Xl_RC" value="'%s' != '%s'" />
                    </node>
                    <node concept="2OqwBi" id="390NiL16JOM" role="37wK5m">
                      <node concept="37vLTw" id="390NiL16JON" role="2Oq$k0">
                        <ref role="3cqZAo" node="390NiL16JOx" resolve="subs" />
                      </node>
                      <node concept="liA8E" id="390NiL16JOO" role="2OqNvi">
                        <ref role="37wK5l" to="yt73:~Substitution.failureDetails()" resolve="failureDetails" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="390NiL16JOP" role="37vLTJ">
                    <ref role="3cqZAo" node="390NiL16JO_" resolve="msg" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="390NiL16JOQ" role="3clFbw">
              <node concept="3clFbC" id="390NiL16JOR" role="3uHU7B">
                <node concept="Rm8GO" id="390NiL16JOS" role="3uHU7w">
                  <ref role="1Px2BO" to="yt73:~Substitution$FailureCause" resolve="Substitution.FailureCause" />
                  <ref role="Rm8GQ" to="yt73:~Substitution$FailureCause.SYMBOL_CLASH" resolve="SYMBOL_CLASH" />
                </node>
                <node concept="2OqwBi" id="390NiL16JOT" role="3uHU7B">
                  <node concept="37vLTw" id="390NiL16JOU" role="2Oq$k0">
                    <ref role="3cqZAo" node="390NiL16JOx" resolve="subs" />
                  </node>
                  <node concept="liA8E" id="390NiL16JOV" role="2OqNvi">
                    <ref role="37wK5l" to="yt73:~Substitution.failureCause()" resolve="failureCause" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="390NiL16JOW" role="3uHU7w">
                <node concept="10Nm6u" id="390NiL16JOX" role="3uHU7w" />
                <node concept="2OqwBi" id="390NiL16JOY" role="3uHU7B">
                  <node concept="37vLTw" id="390NiL16JOZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="390NiL16JOx" resolve="subs" />
                  </node>
                  <node concept="liA8E" id="390NiL16JP0" role="2OqNvi">
                    <ref role="37wK5l" to="yt73:~Substitution.failureDetails()" resolve="failureDetails" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="390NiL16JP1" role="3cqZAp">
            <node concept="37vLTw" id="390NiL16JP2" role="3cqZAk">
              <ref role="3cqZAo" node="390NiL16JO_" resolve="msg" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="390NiL16JEh" role="jymVt" />
      <node concept="3clFb_" id="6SwZmzBBJSL" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="isLogicalTerm" />
        <node concept="37vLTG" id="6SwZmzBBJSM" role="3clF46">
          <property role="TrG5h" value="term" />
          <node concept="3uibUv" id="6SwZmzBBJSN" role="1tU5fm">
            <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
          </node>
        </node>
        <node concept="10P_77" id="6SwZmzBBJSO" role="3clF45" />
        <node concept="3Tm6S6" id="6SwZmzBBJSP" role="1B3o_S" />
        <node concept="3clFbS" id="6SwZmzBBJSQ" role="3clF47">
          <node concept="3clFbF" id="6SwZmzBBJSR" role="3cqZAp">
            <node concept="2ZW3vV" id="6SwZmzBBJSS" role="3clFbG">
              <node concept="3uibUv" id="6SwZmzBBJST" role="2ZW6by">
                <ref role="3uigEE" to="uwx2:4TCblo5MJ1m" resolve="LogicalDataForm" />
              </node>
              <node concept="37vLTw" id="6SwZmzBBJSU" role="2ZW6bz">
                <ref role="3cqZAo" node="6SwZmzBBJSM" resolve="term" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6SwZmzBBJSV" role="jymVt" />
      <node concept="3clFb_" id="6SwZmzBBJSW" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="isLogicalValue" />
        <node concept="37vLTG" id="6SwZmzBBJSX" role="3clF46">
          <property role="TrG5h" value="term" />
          <node concept="3uibUv" id="6SwZmzBBJSY" role="1tU5fm">
            <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
          </node>
        </node>
        <node concept="10P_77" id="6SwZmzBBJSZ" role="3clF45" />
        <node concept="3Tm6S6" id="6SwZmzBBJT0" role="1B3o_S" />
        <node concept="3clFbS" id="6SwZmzBBJT1" role="3clF47">
          <node concept="3clFbF" id="6SwZmzBBJT2" role="3cqZAp">
            <node concept="2ZW3vV" id="6SwZmzBBJT3" role="3clFbG">
              <node concept="3uibUv" id="6SwZmzBBJT4" role="2ZW6by">
                <ref role="3uigEE" to="uwx2:3gNap3fN2hw" resolve="LogicalValue" />
              </node>
              <node concept="37vLTw" id="6SwZmzBBJT5" role="2ZW6bz">
                <ref role="3cqZAo" node="6SwZmzBBJSX" resolve="term" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6SwZmzBBIG6" role="jymVt" />
      <node concept="3Tm1VV" id="3HJTsBn4oh0" role="1B3o_S" />
      <node concept="3uibUv" id="4jcOV4hagjj" role="EKbjA">
        <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
      </node>
    </node>
    <node concept="2tJIrI" id="7lt0LtQw52J" role="jymVt" />
    <node concept="2tJIrI" id="390NiL16IW$" role="jymVt" />
  </node>
  <node concept="312cEu" id="5$WbtTOYoMb">
    <property role="TrG5h" value="LogicalPredicate" />
    <property role="1sVAO0" value="false" />
    <node concept="2tJIrI" id="5$WbtTOYpQU" role="jymVt" />
    <node concept="2YIFZL" id="5uFPQ7CiPYx" role="jymVt">
      <property role="TrG5h" value="NONFREE" />
      <node concept="37vLTG" id="5uFPQ7CiQiV" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="5uFPQ7CiQmW" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3uibUv" id="5uFPQ7CiQa_" role="3clF45">
        <ref role="3uigEE" node="5$WbtTOYoMb" resolve="LogicalPredicate" />
      </node>
      <node concept="3Tm1VV" id="5uFPQ7CiPY$" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7CiPY_" role="3clF47">
        <node concept="3clFbF" id="5uFPQ7CiQsb" role="3cqZAp">
          <node concept="2ShNRf" id="5uFPQ7CiQsd" role="3clFbG">
            <node concept="1pGfFk" id="5uFPQ7CiQse" role="2ShVmc">
              <ref role="37wK5l" node="5$WbtTOYsLU" resolve="LogicalPredicate" />
              <node concept="37vLTw" id="5uFPQ7CiQsz" role="37wK5m">
                <ref role="3cqZAo" node="5uFPQ7C26$b" resolve="NONFREE_SYM" />
              </node>
              <node concept="37vLTw" id="5uFPQ7CiQC4" role="37wK5m">
                <ref role="3cqZAo" node="5uFPQ7CiQiV" resolve="logical" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7CiQVB" role="jymVt" />
    <node concept="2YIFZL" id="5uFPQ7CiQEd" role="jymVt">
      <property role="TrG5h" value="FREE" />
      <node concept="37vLTG" id="5uFPQ7CiQEe" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="5uFPQ7CiQEf" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3uibUv" id="5uFPQ7CiQEg" role="3clF45">
        <ref role="3uigEE" node="5$WbtTOYoMb" resolve="LogicalPredicate" />
      </node>
      <node concept="3Tm1VV" id="5uFPQ7CiQEh" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7CiQEi" role="3clF47">
        <node concept="3clFbF" id="5uFPQ7CiQEj" role="3cqZAp">
          <node concept="2ShNRf" id="5uFPQ7CiQEk" role="3clFbG">
            <node concept="1pGfFk" id="5uFPQ7CiQEl" role="2ShVmc">
              <ref role="37wK5l" node="5$WbtTOYsLU" resolve="LogicalPredicate" />
              <node concept="37vLTw" id="5uFPQ7CiRlW" role="37wK5m">
                <ref role="3cqZAo" node="5uFPQ7C279$" resolve="FREE_SYM" />
              </node>
              <node concept="37vLTw" id="5uFPQ7CiQED" role="37wK5m">
                <ref role="3cqZAo" node="5uFPQ7CiQEe" resolve="logical" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7lt0LtQw_y2" role="jymVt" />
    <node concept="3clFb_" id="7ISVfSJpIT" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <node concept="3uibUv" id="7ISVfSJpIU" role="3clF45">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="3Tm1VV" id="7ISVfSJpIV" role="1B3o_S" />
      <node concept="3clFbS" id="7ISVfSJpIY" role="3clF47">
        <node concept="3clFbF" id="7ISVfSJpQv" role="3cqZAp">
          <node concept="37vLTw" id="7ISVfSJpQt" role="3clFbG">
            <ref role="3cqZAo" node="7ISVfSJpBL" resolve="symbol" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ISVfSOZ4g" role="jymVt" />
    <node concept="3clFbW" id="5$WbtTOYsLU" role="jymVt">
      <node concept="37vLTG" id="5$WbtTOYtPL" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="5uFPQ7C2821" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="5uFPQ7C28iX" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="5uFPQ7C28u4" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="5$WbtTOYsLW" role="3clF45" />
      <node concept="3Tmbuc" id="7lt0LtQwIgC" role="1B3o_S" />
      <node concept="3clFbS" id="5$WbtTOYsLY" role="3clF47">
        <node concept="XkiVB" id="4xBopTzr9fT" role="3cqZAp">
          <ref role="37wK5l" node="6Kcfpq7B1f7" resolve="AbstractPredicate" />
          <node concept="37vLTw" id="5uFPQ7C28G6" role="37wK5m">
            <ref role="3cqZAo" node="5uFPQ7C28iX" resolve="logical" />
          </node>
        </node>
        <node concept="3clFbF" id="7ISVfSJpBS" role="3cqZAp">
          <node concept="37vLTI" id="7ISVfSJpBT" role="3clFbG">
            <node concept="2OqwBi" id="7ISVfSJpBU" role="37vLTJ">
              <node concept="Xjq3P" id="7ISVfSJpBV" role="2Oq$k0" />
              <node concept="2OwXpG" id="7ISVfSJpBW" role="2OqNvi">
                <ref role="2Oxat5" node="7ISVfSJpBL" resolve="symbol" />
              </node>
            </node>
            <node concept="37vLTw" id="7ISVfSJpBX" role="37vLTx">
              <ref role="3cqZAo" node="5$WbtTOYtPL" resolve="symbol" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5$WbtTOYoTe" role="jymVt" />
    <node concept="312cEg" id="7ISVfSJpBL" role="jymVt">
      <property role="TrG5h" value="symbol" />
      <node concept="3Tm6S6" id="7ISVfSJpBJ" role="1B3o_S" />
      <node concept="3uibUv" id="7ISVfSJpBK" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
    </node>
    <node concept="2tJIrI" id="7lt0LtQvKbv" role="jymVt" />
    <node concept="Wx3nA" id="5uFPQ7C26$b" role="jymVt">
      <property role="TrG5h" value="NONFREE_SYM" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="5uFPQ7C26Lh" role="1B3o_S" />
      <node concept="3uibUv" id="5uFPQ7C26Oo" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="2ShNRf" id="5uFPQ7C26Zo" role="33vP2m">
        <node concept="YeOm9" id="7lt0LtQvKLU" role="2ShVmc">
          <node concept="1Y3b0j" id="7lt0LtQvKLX" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="7lt0LtQvaw_" resolve="PredicateSymbolExt" />
            <ref role="37wK5l" node="7lt0LtQva_c" resolve="PredicateSymbolExt" />
            <node concept="Xl_RD" id="5uFPQ7C272B" role="37wK5m">
              <property role="Xl_RC" value="isNonfree" />
            </node>
            <node concept="3cmrfG" id="5uFPQ7C276T" role="37wK5m">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="3Tm1VV" id="7lt0LtQvKLY" role="1B3o_S" />
            <node concept="3clFb_" id="7lt0LtQvKLZ" role="jymVt">
              <property role="TrG5h" value="solver" />
              <property role="1EzhhJ" value="false" />
              <node concept="3uibUv" id="4jcOV4hap4P" role="3clF45">
                <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
              </node>
              <node concept="3Tm1VV" id="7lt0LtQvKM1" role="1B3o_S" />
              <node concept="3clFbS" id="7lt0LtQvKM3" role="3clF47">
                <node concept="3clFbF" id="7lt0LtQvOjC" role="3cqZAp">
                  <node concept="2ShNRf" id="7lt0LtQvOjA" role="3clFbG">
                    <node concept="HV5vD" id="1bodCZ_ccF9" role="2ShVmc">
                      <ref role="HV5vE" node="7ISVfSJ0DF" resolve="LogicalPredicate.LogicalSolver.Bound" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="7lt0LtQvKM5" role="jymVt">
              <property role="TrG5h" value="predicate" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="7lt0LtQvKM6" role="3clF46">
                <property role="TrG5h" value="args" />
                <node concept="8X2XB" id="7lt0LtQvKM7" role="1tU5fm">
                  <node concept="3uibUv" id="7lt0LtQvKM8" role="8Xvag">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="7lt0LtQvKM9" role="3clF45">
                <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
              </node>
              <node concept="3Tm1VV" id="7lt0LtQvKMa" role="1B3o_S" />
              <node concept="3clFbS" id="7lt0LtQvKMc" role="3clF47">
                <node concept="3clFbF" id="7lt0LtQvMF1" role="3cqZAp">
                  <node concept="1rXfSq" id="7lt0LtQvMF0" role="3clFbG">
                    <ref role="37wK5l" node="5uFPQ7CiPYx" resolve="NONFREE" />
                    <node concept="AH0OO" id="7lt0LtQvMNf" role="37wK5m">
                      <node concept="3cmrfG" id="7lt0LtQvMUX" role="AHEQo">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="37vLTw" id="7lt0LtQvMIq" role="AHHXb">
                        <ref role="3cqZAo" node="7lt0LtQvKM6" resolve="args" />
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
    <node concept="Wx3nA" id="5uFPQ7C279$" role="jymVt">
      <property role="TrG5h" value="FREE_SYM" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="5uFPQ7C279_" role="1B3o_S" />
      <node concept="3uibUv" id="5uFPQ7C279A" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="2ShNRf" id="5uFPQ7C279B" role="33vP2m">
        <node concept="YeOm9" id="7lt0LtQvPGz" role="2ShVmc">
          <node concept="1Y3b0j" id="7lt0LtQvPGA" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="7lt0LtQvaw_" resolve="PredicateSymbolExt" />
            <ref role="37wK5l" node="7lt0LtQva_c" resolve="PredicateSymbolExt" />
            <node concept="Xl_RD" id="5uFPQ7C279D" role="37wK5m">
              <property role="Xl_RC" value="isFree" />
            </node>
            <node concept="3cmrfG" id="5uFPQ7C279E" role="37wK5m">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="3Tm1VV" id="7lt0LtQvPGB" role="1B3o_S" />
            <node concept="3clFb_" id="7lt0LtQvPGC" role="jymVt">
              <property role="TrG5h" value="solver" />
              <property role="1EzhhJ" value="false" />
              <node concept="3uibUv" id="4jcOV4hapug" role="3clF45">
                <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
              </node>
              <node concept="3Tm1VV" id="7lt0LtQvPGE" role="1B3o_S" />
              <node concept="3clFbS" id="7lt0LtQvPGG" role="3clF47">
                <node concept="3clFbF" id="7lt0LtQvQBk" role="3cqZAp">
                  <node concept="2ShNRf" id="7lt0LtQvQBi" role="3clFbG">
                    <node concept="HV5vD" id="7lt0LtQvQMH" role="2ShVmc">
                      <ref role="HV5vE" node="7ISVfSJ1oi" resolve="Free" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="7lt0LtQvPGI" role="jymVt">
              <property role="TrG5h" value="predicate" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="7lt0LtQvPGJ" role="3clF46">
                <property role="TrG5h" value="args" />
                <node concept="8X2XB" id="7lt0LtQvPGK" role="1tU5fm">
                  <node concept="3uibUv" id="7lt0LtQvPGL" role="8Xvag">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="7lt0LtQvPGM" role="3clF45">
                <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
              </node>
              <node concept="3Tm1VV" id="7lt0LtQvPGN" role="1B3o_S" />
              <node concept="3clFbS" id="7lt0LtQvPGP" role="3clF47">
                <node concept="3clFbF" id="7lt0LtQvQPy" role="3cqZAp">
                  <node concept="1rXfSq" id="7lt0LtQvQPx" role="3clFbG">
                    <ref role="37wK5l" node="5uFPQ7CiQEd" resolve="FREE" />
                    <node concept="AH0OO" id="7lt0LtQvR0y" role="37wK5m">
                      <node concept="3cmrfG" id="7lt0LtQvR54" role="AHEQo">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="37vLTw" id="7lt0LtQvQSV" role="AHHXb">
                        <ref role="3cqZAo" node="7lt0LtQvPGJ" resolve="args" />
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
    <node concept="2tJIrI" id="5uFPQ7C26l9" role="jymVt" />
    <node concept="312cEu" id="4xBopTzrd8Y" role="jymVt">
      <property role="TrG5h" value="LogicalSolver" />
      <property role="1sVAO0" value="true" />
      <node concept="2tJIrI" id="4xBopTzrdcb" role="jymVt" />
      <node concept="3clFb_" id="2UGjFq4lPBI" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="ask" />
        <node concept="37vLTG" id="2UGjFq4lPBJ" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="2UGjFq4lPBK" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="10P_77" id="2UGjFq4lPBL" role="3clF45" />
        <node concept="3Tm1VV" id="2UGjFq4lPBM" role="1B3o_S" />
        <node concept="3clFbS" id="2UGjFq4lPBO" role="3clF47">
          <node concept="3clFbF" id="2UGjFq4lPM_" role="3cqZAp">
            <node concept="1rXfSq" id="2UGjFq4lPMA" role="3clFbG">
              <ref role="37wK5l" node="6MYr6Jx1D_6" resolve="_ask" />
              <node concept="10QFUN" id="2UGjFq4lPMB" role="37wK5m">
                <node concept="3uibUv" id="2UGjFq4lPMC" role="10QFUM">
                  <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                  <node concept="3qTvmN" id="2UGjFq4lPMD" role="11_B2D" />
                </node>
                <node concept="2OqwBi" id="2UGjFq4lPXm" role="10QFUP">
                  <node concept="2OqwBi" id="2UGjFq4lPTc" role="2Oq$k0">
                    <node concept="37vLTw" id="2UGjFq4lPO9" role="2Oq$k0">
                      <ref role="3cqZAo" node="2UGjFq4lPBJ" resolve="invocation" />
                    </node>
                    <node concept="liA8E" id="2UGjFq4lPV7" role="2OqNvi">
                      <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments()" resolve="arguments" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2UGjFq4lQ3A" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="3cmrfG" id="2UGjFq4lQ6T" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2UGjFq4lQ9z" role="jymVt" />
      <node concept="3clFb_" id="2UGjFq4lQg7" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="tell" />
        <node concept="3cqZAl" id="2UGjFq4lQg8" role="3clF45" />
        <node concept="3Tm1VV" id="2UGjFq4lQg9" role="1B3o_S" />
        <node concept="37vLTG" id="2UGjFq4lQgb" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="2UGjFq4lQgc" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3clFbS" id="2UGjFq4lQge" role="3clF47">
          <node concept="YS8fn" id="2gPa6JH_6ey" role="3cqZAp">
            <node concept="2ShNRf" id="2gPa6JH_6DK" role="YScLw">
              <node concept="1pGfFk" id="2gPa6JH_7JD" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2gPa6JH$Yls" role="jymVt" />
      <node concept="3clFb_" id="2gPa6JH$Xsj" role="jymVt">
        <property role="TrG5h" value="tryTell" />
        <node concept="3Tm1VV" id="2gPa6JH$Xsl" role="1B3o_S" />
        <node concept="3uibUv" id="2gPa6JH$Xsn" role="3clF45">
          <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
        </node>
        <node concept="37vLTG" id="2gPa6JH$Xso" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="2gPa6JH$Xsp" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3clFbS" id="2gPa6JH$Xsq" role="3clF47">
          <node concept="3clFbJ" id="2gPa6JH$YLa" role="3cqZAp">
            <node concept="3clFbS" id="2gPa6JH$YLb" role="3clFbx">
              <node concept="3cpWs6" id="2gPa6JH$ZOZ" role="3cqZAp">
                <node concept="2YIFZM" id="2gPa6JH_1nI" role="3cqZAk">
                  <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
                  <ref role="37wK5l" to="w7la:~Solver$Result.FAIL(java.lang.String)" resolve="FAIL" />
                  <node concept="Xl_RD" id="2gPa6JH_1Z2" role="37wK5m">
                    <property role="Xl_RC" value="logical assignment state is inconsistent" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2gPa6JH$YLg" role="3cqZAp" />
            </node>
            <node concept="3fqX7Q" id="2gPa6JH$YLh" role="3clFbw">
              <node concept="1rXfSq" id="2gPa6JH$YLi" role="3fr31v">
                <ref role="37wK5l" node="6MYr6Jx1D_6" resolve="_ask" />
                <node concept="10QFUN" id="2gPa6JH$YLj" role="37wK5m">
                  <node concept="3uibUv" id="2gPa6JH$YLk" role="10QFUM">
                    <ref role="3uigEE" to="bj13:~MutableLogical" resolve="MutableLogical" />
                    <node concept="3qTvmN" id="2gPa6JH$YLl" role="11_B2D" />
                  </node>
                  <node concept="2OqwBi" id="2gPa6JH$YLm" role="10QFUP">
                    <node concept="2OqwBi" id="2gPa6JH$YLn" role="2Oq$k0">
                      <node concept="37vLTw" id="2gPa6JH$YLo" role="2Oq$k0">
                        <ref role="3cqZAo" node="2gPa6JH$Xso" resolve="invocation" />
                      </node>
                      <node concept="liA8E" id="2gPa6JH$YLp" role="2OqNvi">
                        <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments()" resolve="arguments" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2gPa6JH$YLq" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="3cmrfG" id="2gPa6JH$YLr" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2gPa6JH_44l" role="3cqZAp">
            <node concept="2YIFZM" id="2gPa6JH_4$H" role="3clFbG">
              <ref role="37wK5l" to="w7la:~Solver$Result.OK()" resolve="OK" />
              <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2gPa6JH$Xsr" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4xBopTzrdcg" role="jymVt" />
      <node concept="3clFb_" id="6MYr6Jx1D_6" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="_ask" />
        <node concept="37vLTG" id="6MYr6Jx1EGF" role="3clF46">
          <property role="TrG5h" value="logical" />
          <node concept="3uibUv" id="6MYr6Jx1EGG" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
            <node concept="3qTvmN" id="6MYr6Jx1EGH" role="11_B2D" />
          </node>
        </node>
        <node concept="10P_77" id="6MYr6Jx1FaD" role="3clF45" />
        <node concept="3Tmbuc" id="6MYr6Jx1D_8" role="1B3o_S" />
        <node concept="3clFbS" id="6MYr6Jx1D_a" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="6MYr6Jx1Dg4" role="jymVt" />
      <node concept="312cEu" id="7ISVfSJ0DF" role="jymVt">
        <property role="2bfB8j" value="false" />
        <property role="TrG5h" value="Bound" />
        <node concept="2tJIrI" id="7ISVfSJ16q" role="jymVt" />
        <node concept="3clFb_" id="7ISVfSJ19r" role="jymVt">
          <property role="1EzhhJ" value="false" />
          <property role="TrG5h" value="_ask" />
          <node concept="37vLTG" id="7ISVfSJ19s" role="3clF46">
            <property role="TrG5h" value="logical" />
            <node concept="3uibUv" id="7ISVfSJ19t" role="1tU5fm">
              <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
              <node concept="3qTvmN" id="7ISVfSJ19u" role="11_B2D" />
            </node>
          </node>
          <node concept="10P_77" id="7ISVfSJ19v" role="3clF45" />
          <node concept="3Tmbuc" id="6MYr6Jx1Fv2" role="1B3o_S" />
          <node concept="3clFbS" id="7ISVfSJ19A" role="3clF47">
            <node concept="3clFbF" id="5uFPQ7CiQsr" role="3cqZAp">
              <node concept="2OqwBi" id="5uFPQ7CiQss" role="3clFbG">
                <node concept="37vLTw" id="5uFPQ7CiQst" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ISVfSJ19s" resolve="logical" />
                </node>
                <node concept="liA8E" id="5uFPQ7CiQsu" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="6MYr6Jx1F6s" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="2tJIrI" id="2tcGHBEqput" role="jymVt" />
        <node concept="3Tm1VV" id="7ISVfSJ0DG" role="1B3o_S" />
        <node concept="3uibUv" id="7ISVfSJ10y" role="1zkMxy">
          <ref role="3uigEE" node="4xBopTzrd8Y" resolve="LogicalPredicate.LogicalSolver" />
        </node>
      </node>
      <node concept="2tJIrI" id="7ISVfSJ1A_" role="jymVt" />
      <node concept="312cEu" id="7ISVfSJ1oi" role="jymVt">
        <property role="2bfB8j" value="false" />
        <property role="TrG5h" value="Free" />
        <node concept="2tJIrI" id="7ISVfSJ1oj" role="jymVt" />
        <node concept="3clFb_" id="7ISVfSJ1ok" role="jymVt">
          <property role="1EzhhJ" value="false" />
          <property role="TrG5h" value="_ask" />
          <node concept="37vLTG" id="7ISVfSJ1ol" role="3clF46">
            <property role="TrG5h" value="logical" />
            <node concept="3uibUv" id="7ISVfSJ1om" role="1tU5fm">
              <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
              <node concept="3qTvmN" id="7ISVfSJ1on" role="11_B2D" />
            </node>
          </node>
          <node concept="10P_77" id="7ISVfSJ1oo" role="3clF45" />
          <node concept="3Tmbuc" id="6MYr6Jx1Frs" role="1B3o_S" />
          <node concept="3clFbS" id="7ISVfSJ1ot" role="3clF47">
            <node concept="3clFbF" id="7ISVfSJ1ou" role="3cqZAp">
              <node concept="3fqX7Q" id="3eLgHzX3VwG" role="3clFbG">
                <node concept="2OqwBi" id="3eLgHzX3VwI" role="3fr31v">
                  <node concept="37vLTw" id="3eLgHzX3VwJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ISVfSJ1ol" resolve="logical" />
                  </node>
                  <node concept="liA8E" id="3eLgHzX3VwK" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="6MYr6Jx1FnO" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="2tJIrI" id="2tcGHBEvoB2" role="jymVt" />
        <node concept="3Tm1VV" id="7ISVfSJ1oz" role="1B3o_S" />
        <node concept="3uibUv" id="7ISVfSJ1o$" role="1zkMxy">
          <ref role="3uigEE" node="4xBopTzrd8Y" resolve="LogicalPredicate.LogicalSolver" />
        </node>
      </node>
      <node concept="2tJIrI" id="7ISVfSIZY1" role="jymVt" />
      <node concept="3Tm1VV" id="4xBopTzrd8Z" role="1B3o_S" />
      <node concept="3uibUv" id="4jcOV4haqrh" role="EKbjA">
        <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
      </node>
    </node>
    <node concept="2tJIrI" id="7lt0LtQwxu_" role="jymVt" />
    <node concept="3Tm1VV" id="5$WbtTOYoMc" role="1B3o_S" />
    <node concept="3uibUv" id="4xBopTzr8gp" role="1zkMxy">
      <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
    </node>
  </node>
  <node concept="312cEu" id="5WBVN_M1SJ9">
    <property role="TrG5h" value="EvalExpressionPredicate" />
    <node concept="2tJIrI" id="5WBVN_M1T_3" role="jymVt" />
    <node concept="3clFbW" id="5WBVN_M1T_o" role="jymVt">
      <node concept="37vLTG" id="5WBVN_M1TK8" role="3clF46">
        <property role="TrG5h" value="expression" />
        <node concept="3uibUv" id="5WBVN_M3lXg" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="5WBVN_M1T_q" role="3clF45" />
      <node concept="3Tm1VV" id="5WBVN_M1T_r" role="1B3o_S" />
      <node concept="3clFbS" id="5WBVN_M1T_s" role="3clF47">
        <node concept="XkiVB" id="5WBVN_M1Upn" role="3cqZAp">
          <ref role="37wK5l" node="6Kcfpq7B1f7" resolve="AbstractPredicate" />
          <node concept="37vLTw" id="5WBVN_M1Utw" role="37wK5m">
            <ref role="3cqZAo" node="5WBVN_M1TK8" resolve="expression" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5WBVN_M2QU_" role="jymVt" />
    <node concept="3clFb_" id="5WBVN_M1UHN" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="5WBVN_M1UHO" role="1B3o_S" />
      <node concept="3uibUv" id="5WBVN_M1Vot" role="3clF45">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="3clFbS" id="5WBVN_M1UHV" role="3clF47">
        <node concept="3clFbF" id="5WBVN_M2w3K" role="3cqZAp">
          <node concept="37vLTw" id="5WBVN_M2w3J" role="3clFbG">
            <ref role="3cqZAo" node="5WBVN_M2qrL" resolve="EVAL_SYM" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5WBVN_M1UHW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5WBVN_M2v78" role="jymVt" />
    <node concept="Wx3nA" id="5WBVN_M2tIe" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="EVAL" />
      <node concept="3Tm1VV" id="5WBVN_M2vBr" role="1B3o_S" />
      <node concept="17QB3L" id="5WBVN_M2tIc" role="1tU5fm" />
      <node concept="Xl_RD" id="5WBVN_M2tId" role="33vP2m">
        <property role="Xl_RC" value="eval" />
      </node>
    </node>
    <node concept="Wx3nA" id="5WBVN_M2qrL" role="jymVt">
      <property role="TrG5h" value="EVAL_SYM" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="5WBVN_M1T$L" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="3Tm1VV" id="5WBVN_M2vMw" role="1B3o_S" />
      <node concept="2ShNRf" id="5WBVN_M2sgI" role="33vP2m">
        <node concept="YeOm9" id="7lt0LtQvxYM" role="2ShVmc">
          <node concept="1Y3b0j" id="7lt0LtQvxYP" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="7lt0LtQvaw_" resolve="PredicateSymbolExt" />
            <ref role="37wK5l" node="7lt0LtQva_c" resolve="PredicateSymbolExt" />
            <node concept="37vLTw" id="5WBVN_M2tIh" role="37wK5m">
              <ref role="3cqZAo" node="5WBVN_M2tIe" resolve="EVAL" />
            </node>
            <node concept="3cmrfG" id="5WBVN_M2sxX" role="37wK5m">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="3Tm1VV" id="7lt0LtQvxYQ" role="1B3o_S" />
            <node concept="3clFb_" id="7lt0LtQvxYR" role="jymVt">
              <property role="TrG5h" value="solver" />
              <property role="1EzhhJ" value="false" />
              <node concept="3uibUv" id="4jcOV4haipB" role="3clF45">
                <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
              </node>
              <node concept="3Tm1VV" id="7lt0LtQvxYT" role="1B3o_S" />
              <node concept="3clFbS" id="7lt0LtQvxYV" role="3clF47">
                <node concept="3clFbF" id="7lt0LtQvy$a" role="3cqZAp">
                  <node concept="2ShNRf" id="7lt0LtQvy$8" role="3clFbG">
                    <node concept="HV5vD" id="7lt0LtQvyJz" role="2ShVmc">
                      <ref role="HV5vE" node="5WBVN_M2Qf9" resolve="EvalExpressionPredicate.EvalExpressionSolver" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="7lt0LtQvxYX" role="jymVt">
              <property role="TrG5h" value="predicate" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="7lt0LtQvxYY" role="3clF46">
                <property role="TrG5h" value="args" />
                <node concept="8X2XB" id="7lt0LtQvxYZ" role="1tU5fm">
                  <node concept="3uibUv" id="7lt0LtQvxZ0" role="8Xvag">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="7lt0LtQvxZ1" role="3clF45">
                <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
              </node>
              <node concept="3Tm1VV" id="7lt0LtQvxZ2" role="1B3o_S" />
              <node concept="3clFbS" id="7lt0LtQvxZ4" role="3clF47">
                <node concept="3clFbF" id="7lt0LtQvznD" role="3cqZAp">
                  <node concept="2ShNRf" id="7lt0LtQvznB" role="3clFbG">
                    <node concept="1pGfFk" id="7lt0LtQvzz2" role="2ShVmc">
                      <ref role="37wK5l" node="5WBVN_M1T_o" resolve="EvalExpressionPredicate" />
                      <node concept="AH0OO" id="7lt0LtQvzGi" role="37wK5m">
                        <node concept="3cmrfG" id="7lt0LtQvzQ0" role="AHEQo">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="7lt0LtQvzBr" role="AHHXb">
                          <ref role="3cqZAo" node="7lt0LtQvxYY" resolve="args" />
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
    <node concept="2tJIrI" id="7lt0LtQw9_n" role="jymVt" />
    <node concept="312cEu" id="5WBVN_M2Qf9" role="jymVt">
      <property role="TrG5h" value="EvalExpressionSolver" />
      <node concept="2tJIrI" id="5WBVN_M2QLe" role="jymVt" />
      <node concept="3clFb_" id="5WBVN_M2Qjm" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="ask" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5WBVN_M2Qjn" role="1B3o_S" />
        <node concept="10P_77" id="5WBVN_M2Qjp" role="3clF45" />
        <node concept="37vLTG" id="5WBVN_M2Qjq" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="5WBVN_M2Qjr" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3clFbS" id="5WBVN_M2Qjv" role="3clF47">
          <node concept="3clFbJ" id="5WBVN_M2REh" role="3cqZAp">
            <node concept="3clFbS" id="5WBVN_M2REj" role="3clFbx">
              <node concept="YS8fn" id="5WBVN_M2SBd" role="3cqZAp">
                <node concept="2ShNRf" id="5WBVN_M2SBI" role="YScLw">
                  <node concept="1pGfFk" id="5WBVN_M2TMF" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="5WBVN_M2REN" role="3clFbw">
              <node concept="1eOMI4" id="5WBVN_M2RGy" role="3fr31v">
                <node concept="2ZW3vV" id="5WBVN_M2Stl" role="1eOMHV">
                  <node concept="3uibUv" id="5WBVN_M2SAm" role="2ZW6by">
                    <ref role="3uigEE" node="5WBVN_M1SJ9" resolve="EvalExpressionPredicate" />
                  </node>
                  <node concept="2OqwBi" id="5WBVN_M2ROo" role="2ZW6bz">
                    <node concept="37vLTw" id="5WBVN_M2RHi" role="2Oq$k0">
                      <ref role="3cqZAo" node="5WBVN_M2Qjq" resolve="invocation" />
                    </node>
                    <node concept="liA8E" id="5WBVN_M2RSG" role="2OqNvi">
                      <ref role="37wK5l" to="w7la:~PredicateInvocation.predicate()" resolve="predicate" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="5WBVN_M2TRc" role="3cqZAp">
            <node concept="1PaTwC" id="589APehYy5s" role="1aUNEU">
              <node concept="3oM_SD" id="589APehYy5t" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="589APehYy5u" role="1PaTwD">
                <property role="3oM_SC" value="expression" />
              </node>
              <node concept="3oM_SD" id="589APehYy5v" role="1PaTwD">
                <property role="3oM_SC" value="has" />
              </node>
              <node concept="3oM_SD" id="589APehYy5w" role="1PaTwD">
                <property role="3oM_SC" value="been" />
              </node>
              <node concept="3oM_SD" id="589APehYy5x" role="1PaTwD">
                <property role="3oM_SC" value="evaluated" />
              </node>
              <node concept="3oM_SD" id="589APehYy5y" role="1PaTwD">
                <property role="3oM_SC" value="while" />
              </node>
              <node concept="3oM_SD" id="589APehYy5z" role="1PaTwD">
                <property role="3oM_SC" value="instantiating" />
              </node>
              <node concept="3oM_SD" id="589APehYy5$" role="1PaTwD">
                <property role="3oM_SC" value="arguments" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1v5snkI5ghX" role="3cqZAp">
            <node concept="3cpWsn" id="1v5snkI5ghY" role="3cpWs9">
              <property role="TrG5h" value="val" />
              <node concept="3uibUv" id="1v5snkI5ghW" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
              <node concept="2OqwBi" id="1v5snkI5ghZ" role="33vP2m">
                <node concept="2OqwBi" id="1v5snkI5gi0" role="2Oq$k0">
                  <node concept="37vLTw" id="1v5snkI5gi1" role="2Oq$k0">
                    <ref role="3cqZAo" node="5WBVN_M2Qjq" resolve="invocation" />
                  </node>
                  <node concept="liA8E" id="1v5snkI5gi2" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments()" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="1v5snkI5gi3" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                  <node concept="3cmrfG" id="1v5snkI5gi4" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5pIcDR7lSQL" role="3cqZAp">
            <node concept="3clFbS" id="5pIcDR7lSQN" role="3clFbx">
              <node concept="3cpWs6" id="5pIcDR7lTzP" role="3cqZAp">
                <node concept="10QFUN" id="5pIcDR7lTzQ" role="3cqZAk">
                  <node concept="3uibUv" id="5pIcDR7lTzR" role="10QFUM">
                    <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                  </node>
                  <node concept="37vLTw" id="5pIcDR7lTzS" role="10QFUP">
                    <ref role="3cqZAo" node="1v5snkI5ghY" resolve="val" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="5pIcDR7lTpr" role="3clFbw">
              <node concept="3uibUv" id="5pIcDR7lTpC" role="2ZW6by">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
              <node concept="37vLTw" id="5pIcDR7lSSq" role="2ZW6bz">
                <ref role="3cqZAo" node="1v5snkI5ghY" resolve="val" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="5pIcDR7_$JI" role="3cqZAp">
            <node concept="1PaTwC" id="589APehYy5_" role="1aUNEU">
              <node concept="3oM_SD" id="589APehYy5A" role="1PaTwD">
                <property role="3oM_SC" value="TODO:" />
              </node>
              <node concept="3oM_SD" id="589APehYy5B" role="1PaTwD">
                <property role="3oM_SC" value="return" />
              </node>
              <node concept="3oM_SD" id="589APehYy5C" role="1PaTwD">
                <property role="3oM_SC" value="false" />
              </node>
              <node concept="3oM_SD" id="589APehYy5D" role="1PaTwD">
                <property role="3oM_SC" value="in" />
              </node>
              <node concept="3oM_SD" id="589APehYy5E" role="1PaTwD">
                <property role="3oM_SC" value="case" />
              </node>
              <node concept="3oM_SD" id="589APehYy5F" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="589APehYy5G" role="1PaTwD">
                <property role="3oM_SC" value="expression" />
              </node>
              <node concept="3oM_SD" id="589APehYy5H" role="1PaTwD">
                <property role="3oM_SC" value="evaluates" />
              </node>
              <node concept="3oM_SD" id="589APehYy5I" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="589APehYy5J" role="1PaTwD">
                <property role="3oM_SC" value="null?" />
              </node>
            </node>
          </node>
          <node concept="1X3_iC" id="5pIcDR7_$HT" role="lGtFl">
            <property role="3V$3am" value="statement" />
            <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
            <node concept="3clFbJ" id="5pIcDR7lTA3" role="8Wnug">
              <node concept="3clFbS" id="5pIcDR7lTA5" role="3clFbx">
                <node concept="3cpWs6" id="5pIcDR7lTTp" role="3cqZAp">
                  <node concept="3clFbT" id="5pIcDR7lTTN" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="5pIcDR7lTS$" role="3clFbw">
                <node concept="10Nm6u" id="5pIcDR7lTSZ" role="3uHU7w" />
                <node concept="37vLTw" id="5pIcDR7lTC5" role="3uHU7B">
                  <ref role="3cqZAo" node="1v5snkI5ghY" resolve="val" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5pIcDR7lU2H" role="3cqZAp">
            <node concept="3clFbT" id="5pIcDR7lU2G" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5WBVN_M2Qjw" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5WBVN_M2Xj5" role="jymVt" />
      <node concept="3clFb_" id="5WBVN_M2Qjb" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="tell" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5WBVN_M2Qjc" role="1B3o_S" />
        <node concept="3cqZAl" id="5WBVN_M2Qje" role="3clF45" />
        <node concept="37vLTG" id="5WBVN_M2Qjf" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="5WBVN_M2Qjg" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3clFbS" id="5WBVN_M2Qjk" role="3clF47">
          <node concept="YS8fn" id="2gPa6JHMARb" role="3cqZAp">
            <node concept="2ShNRf" id="2gPa6JHMBgO" role="YScLw">
              <node concept="1pGfFk" id="2gPa6JHMBXH" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5WBVN_M2Qjl" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2gPa6JHMCea" role="jymVt" />
      <node concept="3clFb_" id="2gPa6JHMxFu" role="jymVt">
        <property role="TrG5h" value="tryTell" />
        <node concept="3Tm1VV" id="2gPa6JHMxFw" role="1B3o_S" />
        <node concept="3uibUv" id="2gPa6JHMxFy" role="3clF45">
          <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
        </node>
        <node concept="37vLTG" id="2gPa6JHMxFz" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="2gPa6JHMxF$" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3clFbS" id="2gPa6JHMxF_" role="3clF47">
          <node concept="3clFbJ" id="2UGjFq4pFcR" role="3cqZAp">
            <node concept="3clFbS" id="2UGjFq4pFcS" role="3clFbx">
              <node concept="3cpWs6" id="2gPa6JHMyQL" role="3cqZAp">
                <node concept="2YIFZM" id="2gPa6JHMzOG" role="3cqZAk">
                  <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
                  <ref role="37wK5l" to="w7la:~Solver$Result.FAIL(java.lang.String)" resolve="FAIL" />
                  <node concept="3cpWs3" id="2gPa6JHM$5e" role="37wK5m">
                    <node concept="2OqwBi" id="2gPa6JHM$5f" role="3uHU7w">
                      <node concept="2OqwBi" id="2gPa6JHM$5g" role="2Oq$k0">
                        <node concept="37vLTw" id="2gPa6JHM$5h" role="2Oq$k0">
                          <ref role="3cqZAo" node="2gPa6JHMxFz" resolve="invocation" />
                        </node>
                        <node concept="liA8E" id="2gPa6JHM$5i" role="2OqNvi">
                          <ref role="37wK5l" to="w7la:~PredicateInvocation.predicate()" resolve="predicate" />
                        </node>
                      </node>
                      <node concept="liA8E" id="2gPa6JHM$5j" role="2OqNvi">
                        <ref role="37wK5l" to="av0y:~Predicate.symbol()" resolve="symbol" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="2gPa6JHM$5k" role="3uHU7B">
                      <property role="Xl_RC" value="unsatisfied predicate: " />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2gPa6JHM$Ue" role="3cqZAp" />
            </node>
            <node concept="3fqX7Q" id="2UGjFq4pFcZ" role="3clFbw">
              <node concept="1rXfSq" id="2UGjFq4pFd0" role="3fr31v">
                <ref role="37wK5l" node="5WBVN_M2Qjm" resolve="ask" />
                <node concept="37vLTw" id="2gPa6JHMylh" role="37wK5m">
                  <ref role="3cqZAo" node="2gPa6JHMxFz" resolve="invocation" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2gPa6JHM_OE" role="3cqZAp">
            <node concept="2YIFZM" id="2gPa6JHMAAg" role="3clFbG">
              <ref role="37wK5l" to="w7la:~Solver$Result.OK()" resolve="OK" />
              <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2gPa6JHMxFA" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5WBVN_M2Qj4" role="jymVt" />
      <node concept="3Tm1VV" id="5WBVN_M2Qfa" role="1B3o_S" />
      <node concept="3uibUv" id="4jcOV4hamZl" role="EKbjA">
        <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
      </node>
    </node>
    <node concept="2tJIrI" id="7lt0LtQw9Ac" role="jymVt" />
    <node concept="3Tm1VV" id="5WBVN_M1SJa" role="1B3o_S" />
    <node concept="3uibUv" id="5WBVN_M1SK4" role="1zkMxy">
      <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
    </node>
  </node>
  <node concept="312cEu" id="7lt0LtQvaw_">
    <property role="TrG5h" value="PredicateSymbolExt" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="7lt0LtQva_5" role="jymVt" />
    <node concept="3clFbW" id="7lt0LtQva_c" role="jymVt">
      <node concept="37vLTG" id="7lt0LtQvaDl" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="7lt0LtQvaGC" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7lt0LtQvaIt" role="3clF46">
        <property role="TrG5h" value="arity" />
        <node concept="10Oyi0" id="7lt0LtQvaJC" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7lt0LtQva_e" role="3clF45" />
      <node concept="3Tm1VV" id="7lt0LtQva_f" role="1B3o_S" />
      <node concept="3clFbS" id="7lt0LtQva_g" role="3clF47">
        <node concept="XkiVB" id="7lt0LtQvaAq" role="3cqZAp">
          <ref role="37wK5l" to="av0y:~PredicateSymbol.&lt;init&gt;(java.lang.String,int)" resolve="PredicateSymbol" />
          <node concept="37vLTw" id="7lt0LtQvaLj" role="37wK5m">
            <ref role="3cqZAo" node="7lt0LtQvaDl" resolve="id" />
          </node>
          <node concept="37vLTw" id="7lt0LtQvaNK" role="37wK5m">
            <ref role="3cqZAo" node="7lt0LtQvaIt" resolve="arity" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7lt0LtQvaOq" role="jymVt" />
    <node concept="3clFb_" id="7lt0LtQvaPQ" role="jymVt">
      <property role="TrG5h" value="solver" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="4jcOV4h9ZOr" role="3clF45">
        <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
      </node>
      <node concept="3Tm1VV" id="7lt0LtQvaPT" role="1B3o_S" />
      <node concept="3clFbS" id="7lt0LtQvaPU" role="3clF47" />
      <node concept="2AHcQZ" id="4$YN6QvnXYV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7lt0LtQvpxT" role="jymVt" />
    <node concept="3clFb_" id="7lt0LtQvpyU" role="jymVt">
      <property role="TrG5h" value="predicate" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="7lt0LtQvpE4" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="7lt0LtQvpFu" role="1tU5fm">
          <node concept="3uibUv" id="7lt0LtQvpFo" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7lt0LtQvp$_" role="3clF45">
        <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
      </node>
      <node concept="3Tm1VV" id="7lt0LtQvpyX" role="1B3o_S" />
      <node concept="3clFbS" id="7lt0LtQvpyY" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7lt0LtQvaX6" role="jymVt" />
    <node concept="3Tm1VV" id="7lt0LtQvawA" role="1B3o_S" />
    <node concept="3uibUv" id="7lt0LtQvazD" role="1zkMxy">
      <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
    </node>
  </node>
  <node concept="312cEu" id="4jcOV4hx9Du">
    <property role="TrG5h" value="ProvideFeedbackPredicate" />
    <node concept="2tJIrI" id="4jcOV4hx9Dv" role="jymVt" />
    <node concept="3clFbW" id="4jcOV4hx9Dw" role="jymVt">
      <node concept="37vLTG" id="4jcOV4hx9Dx" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="3uibUv" id="4jcOV4hx9Dy" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="4jcOV4hxwdM" role="3clF46">
        <property role="TrG5h" value="severity" />
        <node concept="3uibUv" id="4jcOV4hxwlu" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="1laj_RTCg1Z" role="3clF46">
        <property role="TrG5h" value="template" />
        <node concept="3uibUv" id="1laj_RTCgaw" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="4ekZiHduGxB" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="4ekZiHduGxC" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="4jcOV4hx9Dz" role="3clF45" />
      <node concept="3Tm1VV" id="4jcOV4hx9D$" role="1B3o_S" />
      <node concept="3clFbS" id="4jcOV4hx9D_" role="3clF47">
        <node concept="XkiVB" id="4jcOV4hx9DA" role="3cqZAp">
          <ref role="37wK5l" node="6Kcfpq7B1f7" resolve="AbstractPredicate" />
          <node concept="37vLTw" id="4jcOV4hx9DB" role="37wK5m">
            <ref role="3cqZAo" node="4jcOV4hx9Dx" resolve="message" />
          </node>
          <node concept="37vLTw" id="4jcOV4hxwVj" role="37wK5m">
            <ref role="3cqZAo" node="4jcOV4hxwdM" resolve="severity" />
          </node>
          <node concept="37vLTw" id="1laj_RTCgJu" role="37wK5m">
            <ref role="3cqZAo" node="1laj_RTCg1Z" resolve="template" />
          </node>
          <node concept="37vLTw" id="4ekZiHduHaa" role="37wK5m">
            <ref role="3cqZAo" node="4ekZiHduGxB" resolve="target" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4jcOV4hx9DC" role="jymVt" />
    <node concept="3clFb_" id="4jcOV4hx9DD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4jcOV4hx9DE" role="1B3o_S" />
      <node concept="3uibUv" id="4jcOV4hx9DF" role="3clF45">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="3clFbS" id="4jcOV4hx9DG" role="3clF47">
        <node concept="3clFbF" id="4jcOV4hx9DH" role="3cqZAp">
          <node concept="37vLTw" id="4jcOV4hx9DI" role="3clFbG">
            <ref role="3cqZAo" node="4jcOV4hx9DP" resolve="FEEDBACK_SYM" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4jcOV4hx9DJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4jcOV4hx9DK" role="jymVt" />
    <node concept="Wx3nA" id="4jcOV4hx9DL" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="FEEDBACK" />
      <node concept="3Tm1VV" id="4jcOV4hx9DM" role="1B3o_S" />
      <node concept="17QB3L" id="4jcOV4hx9DN" role="1tU5fm" />
      <node concept="Xl_RD" id="4jcOV4hx9DO" role="33vP2m">
        <property role="Xl_RC" value="feedback" />
      </node>
    </node>
    <node concept="Wx3nA" id="4jcOV4hx9DP" role="jymVt">
      <property role="TrG5h" value="FEEDBACK_SYM" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4jcOV4hx9DQ" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="3Tm1VV" id="4jcOV4hx9DR" role="1B3o_S" />
      <node concept="2ShNRf" id="4jcOV4hx9DS" role="33vP2m">
        <node concept="YeOm9" id="4jcOV4hx9DT" role="2ShVmc">
          <node concept="1Y3b0j" id="4jcOV4hx9DU" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="7lt0LtQvaw_" resolve="PredicateSymbolExt" />
            <ref role="37wK5l" node="7lt0LtQva_c" resolve="PredicateSymbolExt" />
            <node concept="37vLTw" id="4jcOV4hx9DV" role="37wK5m">
              <ref role="3cqZAo" node="4jcOV4hx9DL" resolve="FEEDBACK" />
            </node>
            <node concept="3cmrfG" id="4jcOV4hx9DW" role="37wK5m">
              <property role="3cmrfH" value="4" />
            </node>
            <node concept="3Tm1VV" id="4jcOV4hx9DX" role="1B3o_S" />
            <node concept="3clFb_" id="4jcOV4hx9DY" role="jymVt">
              <property role="TrG5h" value="solver" />
              <property role="1EzhhJ" value="false" />
              <node concept="3uibUv" id="4jcOV4hx9DZ" role="3clF45">
                <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
              </node>
              <node concept="3Tm1VV" id="4jcOV4hx9E0" role="1B3o_S" />
              <node concept="3clFbS" id="4jcOV4hx9E1" role="3clF47">
                <node concept="3clFbF" id="4jcOV4hx9E2" role="3cqZAp">
                  <node concept="2ShNRf" id="4jcOV4hx9E3" role="3clFbG">
                    <node concept="HV5vD" id="4jcOV4hx9E4" role="2ShVmc">
                      <ref role="HV5vE" node="4jcOV4hx9Ej" resolve="ProvideFeedbackPredicate.EvalExpressionSolver" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="4jcOV4hx9E5" role="jymVt">
              <property role="TrG5h" value="predicate" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="4jcOV4hx9E6" role="3clF46">
                <property role="TrG5h" value="args" />
                <node concept="8X2XB" id="4jcOV4hx9E7" role="1tU5fm">
                  <node concept="3uibUv" id="4jcOV4hx9E8" role="8Xvag">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="4jcOV4hx9E9" role="3clF45">
                <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
              </node>
              <node concept="3Tm1VV" id="4jcOV4hx9Ea" role="1B3o_S" />
              <node concept="3clFbS" id="4jcOV4hx9Eb" role="3clF47">
                <node concept="3clFbF" id="4jcOV4hx9Ec" role="3cqZAp">
                  <node concept="2ShNRf" id="4jcOV4hx9Ed" role="3clFbG">
                    <node concept="1pGfFk" id="4jcOV4hx9Ee" role="2ShVmc">
                      <ref role="37wK5l" node="4jcOV4hx9Dw" resolve="ProvideFeedbackPredicate" />
                      <node concept="AH0OO" id="4jcOV4hxxao" role="37wK5m">
                        <node concept="3cmrfG" id="4jcOV4hxxfg" role="AHEQo">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="4jcOV4hxx4W" role="AHHXb">
                          <ref role="3cqZAo" node="4jcOV4hx9E6" resolve="args" />
                        </node>
                      </node>
                      <node concept="AH0OO" id="4jcOV4hx9Ef" role="37wK5m">
                        <node concept="3cmrfG" id="4jcOV4hx9Eg" role="AHEQo">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="4jcOV4hx9Eh" role="AHHXb">
                          <ref role="3cqZAo" node="4jcOV4hx9E6" resolve="args" />
                        </node>
                      </node>
                      <node concept="AH0OO" id="1laj_RTCfGt" role="37wK5m">
                        <node concept="3cmrfG" id="1laj_RTCfGu" role="AHEQo">
                          <property role="3cmrfH" value="2" />
                        </node>
                        <node concept="37vLTw" id="1laj_RTCfGv" role="AHHXb">
                          <ref role="3cqZAo" node="4jcOV4hx9E6" resolve="args" />
                        </node>
                      </node>
                      <node concept="AH0OO" id="4ekZiHduGj8" role="37wK5m">
                        <node concept="3cmrfG" id="4ekZiHduGj9" role="AHEQo">
                          <property role="3cmrfH" value="3" />
                        </node>
                        <node concept="37vLTw" id="4ekZiHduGja" role="AHHXb">
                          <ref role="3cqZAo" node="4jcOV4hx9E6" resolve="args" />
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
    <node concept="2tJIrI" id="4jcOV4hx9Ei" role="jymVt" />
    <node concept="312cEu" id="4jcOV4hx9Ej" role="jymVt">
      <property role="TrG5h" value="EvalExpressionSolver" />
      <node concept="2tJIrI" id="4jcOV4hx9Ek" role="jymVt" />
      <node concept="3clFb_" id="4jcOV4hx9El" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="ask" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="4jcOV4hx9Em" role="1B3o_S" />
        <node concept="10P_77" id="4jcOV4hx9En" role="3clF45" />
        <node concept="37vLTG" id="4jcOV4hx9Eo" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="4jcOV4hx9Ep" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3clFbS" id="4jcOV4hx9Eq" role="3clF47">
          <node concept="YS8fn" id="4jcOV4hxlhz" role="3cqZAp">
            <node concept="2ShNRf" id="4jcOV4hxlh$" role="YScLw">
              <node concept="1pGfFk" id="4jcOV4hxlh_" role="2ShVmc">
                <ref role="37wK5l" to="w7la:~EvaluationFailureException.&lt;init&gt;(java.lang.String)" resolve="EvaluationFailureException" />
                <node concept="3cpWs3" id="4jcOV4hxmQP" role="37wK5m">
                  <node concept="Xl_RD" id="4jcOV4hxmoD" role="3uHU7B">
                    <property role="Xl_RC" value="ask not applicable to " />
                  </node>
                  <node concept="2OqwBi" id="4jcOV4hxp3V" role="3uHU7w">
                    <node concept="2OqwBi" id="4jcOV4hxnNA" role="2Oq$k0">
                      <node concept="37vLTw" id="4jcOV4hxnrS" role="2Oq$k0">
                        <ref role="3cqZAo" node="4jcOV4hx9Eo" resolve="invocation" />
                      </node>
                      <node concept="liA8E" id="4jcOV4hxo3E" role="2OqNvi">
                        <ref role="37wK5l" to="w7la:~PredicateInvocation.predicate()" resolve="predicate" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4jcOV4hxpET" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~Predicate.symbol()" resolve="symbol" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4jcOV4hx9F7" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4jcOV4hx9F8" role="jymVt" />
      <node concept="3clFb_" id="2gPa6JHMGeu" role="jymVt">
        <property role="TrG5h" value="tell" />
        <node concept="3Tm1VV" id="2gPa6JHMGev" role="1B3o_S" />
        <node concept="3cqZAl" id="2gPa6JHMGex" role="3clF45" />
        <node concept="37vLTG" id="2gPa6JHMGey" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="2gPa6JHMGez" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3clFbS" id="2gPa6JHMGeB" role="3clF47">
          <node concept="YS8fn" id="2gPa6JHMHj1" role="3cqZAp">
            <node concept="2ShNRf" id="2gPa6JHMHOV" role="YScLw">
              <node concept="1pGfFk" id="2gPa6JHMIME" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2gPa6JHMGeC" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2gPa6JHMJjX" role="jymVt" />
      <node concept="3clFb_" id="4jcOV4hx9F9" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="tryTell" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="4jcOV4hx9Fa" role="1B3o_S" />
        <node concept="3uibUv" id="2gPa6JHMFHH" role="3clF45">
          <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
        </node>
        <node concept="37vLTG" id="4jcOV4hx9Fc" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="4jcOV4hx9Fd" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3clFbS" id="4jcOV4hx9Fe" role="3clF47">
          <node concept="3clFbJ" id="4jcOV4hx9Er" role="3cqZAp">
            <node concept="3clFbS" id="4jcOV4hx9Es" role="3clFbx">
              <node concept="YS8fn" id="4jcOV4hx9Et" role="3cqZAp">
                <node concept="2ShNRf" id="4jcOV4hx9Eu" role="YScLw">
                  <node concept="1pGfFk" id="4jcOV4hx9Ev" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="4jcOV4hx9Ew" role="3clFbw">
              <node concept="1eOMI4" id="4jcOV4hx9Ex" role="3fr31v">
                <node concept="2ZW3vV" id="4jcOV4hx9Ey" role="1eOMHV">
                  <node concept="3uibUv" id="4jcOV4hx9Ez" role="2ZW6by">
                    <ref role="3uigEE" node="4jcOV4hx9Du" resolve="ProvideFeedbackPredicate" />
                  </node>
                  <node concept="2OqwBi" id="4jcOV4hx9E$" role="2ZW6bz">
                    <node concept="37vLTw" id="4jcOV4hx9E_" role="2Oq$k0">
                      <ref role="3cqZAo" node="4jcOV4hx9Fc" resolve="invocation" />
                    </node>
                    <node concept="liA8E" id="4jcOV4hx9EA" role="2OqNvi">
                      <ref role="37wK5l" to="w7la:~PredicateInvocation.predicate()" resolve="predicate" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4jcOV4hx_1$" role="3cqZAp">
            <node concept="3cpWsn" id="4jcOV4hx_1_" role="3cpWs9">
              <property role="TrG5h" value="msg" />
              <node concept="3uibUv" id="4jcOV4hx_OJ" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="2YIFZM" id="4jcOV4hxADP" role="33vP2m">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.valueOf(char[])" resolve="valueOf" />
                <node concept="2OqwBi" id="4jcOV4hx_1A" role="37wK5m">
                  <node concept="2OqwBi" id="4jcOV4hx_1B" role="2Oq$k0">
                    <node concept="37vLTw" id="4jcOV4hx_1C" role="2Oq$k0">
                      <ref role="3cqZAo" node="4jcOV4hx9Fc" resolve="invocation" />
                    </node>
                    <node concept="liA8E" id="4jcOV4hx_1D" role="2OqNvi">
                      <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments()" resolve="arguments" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4jcOV4hx_1E" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="3cmrfG" id="4jcOV4hx_1F" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1laj_RS1ySw" role="3cqZAp">
            <node concept="3cpWsn" id="1laj_RS1ySx" role="3cpWs9">
              <property role="TrG5h" value="severity" />
              <node concept="3uibUv" id="1laj_RS1yDO" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="2YIFZM" id="1laj_RS1ySy" role="33vP2m">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.valueOf(char[])" resolve="valueOf" />
                <node concept="2OqwBi" id="1laj_RS1ySz" role="37wK5m">
                  <node concept="2OqwBi" id="1laj_RS1yS$" role="2Oq$k0">
                    <node concept="37vLTw" id="1laj_RS1yS_" role="2Oq$k0">
                      <ref role="3cqZAo" node="4jcOV4hx9Fc" resolve="invocation" />
                    </node>
                    <node concept="liA8E" id="1laj_RS1ySA" role="2OqNvi">
                      <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments()" resolve="arguments" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1laj_RS1ySB" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="3cmrfG" id="1laj_RS1ySC" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1laj_RTNK7P" role="3cqZAp">
            <node concept="3cpWsn" id="1laj_RTNK7Q" role="3cpWs9">
              <property role="TrG5h" value="template" />
              <node concept="3uibUv" id="1laj_RTNK7O" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
              <node concept="2OqwBi" id="1laj_RTNK7R" role="33vP2m">
                <node concept="2OqwBi" id="1laj_RTNK7S" role="2Oq$k0">
                  <node concept="37vLTw" id="1laj_RTNK7T" role="2Oq$k0">
                    <ref role="3cqZAo" node="4jcOV4hx9Fc" resolve="invocation" />
                  </node>
                  <node concept="liA8E" id="1laj_RTNK7U" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments()" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="1laj_RTNK7V" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                  <node concept="3cmrfG" id="1laj_RTNK7W" role="37wK5m">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1laj_RTNLWc" role="3cqZAp">
            <node concept="3cpWsn" id="1laj_RTNLWd" role="3cpWs9">
              <property role="TrG5h" value="templateRef" />
              <node concept="3uibUv" id="1laj_RTNLWe" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="10Nm6u" id="1laj_RTNMdA" role="33vP2m" />
            </node>
          </node>
          <node concept="3clFbJ" id="1laj_RTNMuF" role="3cqZAp">
            <node concept="3clFbS" id="1laj_RTNMuH" role="3clFbx">
              <node concept="3clFbF" id="1laj_RTNNqq" role="3cqZAp">
                <node concept="37vLTI" id="1laj_RTNNBn" role="3clFbG">
                  <node concept="1eOMI4" id="1laj_RTNNIo" role="37vLTx">
                    <node concept="10QFUN" id="1laj_RTNNIl" role="1eOMHV">
                      <node concept="3uibUv" id="1laj_RTNNIq" role="10QFUM">
                        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      </node>
                      <node concept="37vLTw" id="1laj_RTNNIr" role="10QFUP">
                        <ref role="3cqZAo" node="1laj_RTNK7Q" resolve="template" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="1laj_RTNOd_" role="37vLTJ">
                    <ref role="3cqZAo" node="1laj_RTNLWd" resolve="templateRef" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1laj_RTNON5" role="3cqZAp" />
            </node>
            <node concept="2ZW3vV" id="1laj_RTNN87" role="3clFbw">
              <node concept="3uibUv" id="1laj_RTNNob" role="2ZW6by">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="37vLTw" id="1laj_RTNMJz" role="2ZW6bz">
                <ref role="3cqZAo" node="1laj_RTNK7Q" resolve="template" />
              </node>
            </node>
            <node concept="3eNFk2" id="1laj_RTNOfz" role="3eNLev">
              <node concept="2ZW3vV" id="1laj_RTNOA6" role="3eO9$A">
                <node concept="3uibUv" id="1laj_RTNODR" role="2ZW6by">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="37vLTw" id="1laj_RTNOv0" role="2ZW6bz">
                  <ref role="3cqZAo" node="1laj_RTNK7Q" resolve="template" />
                </node>
              </node>
              <node concept="3clFbS" id="1laj_RTNOf_" role="3eOfB_">
                <node concept="3clFbF" id="1laj_RTNONm" role="3cqZAp">
                  <node concept="37vLTI" id="1laj_RTNONn" role="3clFbG">
                    <node concept="37vLTw" id="1laj_RTNONs" role="37vLTJ">
                      <ref role="3cqZAo" node="1laj_RTNLWd" resolve="templateRef" />
                    </node>
                    <node concept="2YIFZM" id="1laj_RTNOVA" role="37vLTx">
                      <ref role="1Pybhc" to="w1kc:~SNodePointer" resolve="SNodePointer" />
                      <ref role="37wK5l" to="w1kc:~SNodePointer.deserialize(java.lang.String)" resolve="deserialize" />
                      <node concept="2YIFZM" id="1laj_RTNP7j" role="37wK5m">
                        <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                        <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                        <node concept="37vLTw" id="1laj_RTNPlL" role="37wK5m">
                          <ref role="3cqZAo" node="1laj_RTNK7Q" resolve="template" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4ekZiHduI3l" role="3cqZAp">
            <node concept="3cpWsn" id="4ekZiHduI3m" role="3cpWs9">
              <property role="TrG5h" value="target" />
              <node concept="3uibUv" id="4ekZiHduI3n" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
              <node concept="2OqwBi" id="4ekZiHduI3o" role="33vP2m">
                <node concept="2OqwBi" id="4ekZiHduI3p" role="2Oq$k0">
                  <node concept="37vLTw" id="4ekZiHduI3q" role="2Oq$k0">
                    <ref role="3cqZAo" node="4jcOV4hx9Fc" resolve="invocation" />
                  </node>
                  <node concept="liA8E" id="4ekZiHduI3r" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments()" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="4ekZiHduI3s" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                  <node concept="3cmrfG" id="4ekZiHduI3t" role="37wK5m">
                    <property role="3cmrfH" value="3" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4ekZiHduI3h" role="3cqZAp">
            <node concept="3cpWsn" id="4ekZiHduI3i" role="3cpWs9">
              <property role="TrG5h" value="targetRef" />
              <node concept="3uibUv" id="4ekZiHduI3j" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
              </node>
              <node concept="10Nm6u" id="4ekZiHduI3k" role="33vP2m" />
            </node>
          </node>
          <node concept="3clFbJ" id="4ekZiHduI2T" role="3cqZAp">
            <node concept="3eNFk2" id="4ekZiHduI36" role="3eNLev">
              <node concept="2ZW3vV" id="4ekZiHduI37" role="3eO9$A">
                <node concept="3uibUv" id="4ekZiHduI38" role="2ZW6by">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="37vLTw" id="3ca5Bh20Ozp" role="2ZW6bz">
                  <ref role="3cqZAo" node="4ekZiHduI3m" resolve="target" />
                </node>
              </node>
              <node concept="3clFbS" id="4ekZiHduI3a" role="3eOfB_">
                <node concept="3clFbF" id="4ekZiHduI3b" role="3cqZAp">
                  <node concept="37vLTI" id="4ekZiHduI3c" role="3clFbG">
                    <node concept="37vLTw" id="4ekZiHduJCv" role="37vLTJ">
                      <ref role="3cqZAo" node="4ekZiHduI3i" resolve="targetRef" />
                    </node>
                    <node concept="2YIFZM" id="4ekZiHduI3e" role="37vLTx">
                      <ref role="1Pybhc" to="w1kc:~SNodePointer" resolve="SNodePointer" />
                      <ref role="37wK5l" to="w1kc:~SNodePointer.deserialize(java.lang.String)" resolve="deserialize" />
                      <node concept="2YIFZM" id="4ekZiHduI3f" role="37wK5m">
                        <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                        <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                        <node concept="37vLTw" id="4ekZiHduJS3" role="37wK5m">
                          <ref role="3cqZAo" node="4ekZiHduI3m" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3ca5Bh20LgN" role="3cqZAp" />
              </node>
            </node>
            <node concept="3eNFk2" id="3ca5Bh20KQX" role="3eNLev">
              <node concept="2ZW3vV" id="4ekZiHduI33" role="3eO9$A">
                <node concept="3uibUv" id="4ekZiHduI34" role="2ZW6by">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
                <node concept="37vLTw" id="4ekZiHduJlo" role="2ZW6bz">
                  <ref role="3cqZAo" node="4ekZiHduI3m" resolve="target" />
                </node>
              </node>
              <node concept="3clFbS" id="4ekZiHduI2U" role="3eOfB_">
                <node concept="3clFbF" id="4ekZiHduI2V" role="3cqZAp">
                  <node concept="37vLTI" id="4ekZiHduI2W" role="3clFbG">
                    <node concept="1eOMI4" id="4ekZiHduI2X" role="37vLTx">
                      <node concept="10QFUN" id="4ekZiHduI2Y" role="1eOMHV">
                        <node concept="3uibUv" id="4ekZiHduI2Z" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                        </node>
                        <node concept="37vLTw" id="4ekZiHduJxl" role="10QFUP">
                          <ref role="3cqZAo" node="4ekZiHduI3m" resolve="target" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="4ekZiHduJub" role="37vLTJ">
                      <ref role="3cqZAo" node="4ekZiHduI3i" resolve="targetRef" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="3ca5Bh20MuT" role="3clFbw">
              <node concept="3uibUv" id="3ca5Bh20MOo" role="2ZW6by">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="37vLTw" id="3ca5Bh20M0X" role="2ZW6bz">
                <ref role="3cqZAo" node="4ekZiHduI3m" resolve="target" />
              </node>
            </node>
            <node concept="3clFbS" id="3ca5Bh20KQZ" role="3clFbx">
              <node concept="3clFbF" id="3ca5Bh20MQx" role="3cqZAp">
                <node concept="37vLTI" id="3ca5Bh20Nmq" role="3clFbG">
                  <node concept="2YIFZM" id="3ca5Bh20OoH" role="37vLTx">
                    <ref role="37wK5l" to="i8bi:4o40NPkYQhu" resolve="getPointer" />
                    <ref role="1Pybhc" to="i8bi:5IkW5anFcyt" resolve="SNodeOperations" />
                    <node concept="1eOMI4" id="3ca5Bh20Otp" role="37wK5m">
                      <node concept="10QFUN" id="3ca5Bh20Otm" role="1eOMHV">
                        <node concept="3uibUv" id="3ca5Bh20Otr" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="37vLTw" id="3ca5Bh20Ots" role="10QFUP">
                          <ref role="3cqZAo" node="4ekZiHduI3m" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3ca5Bh20MQz" role="37vLTJ">
                    <ref role="3cqZAo" node="4ekZiHduI3i" resolve="targetRef" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3ca5Bh20MOS" role="3cqZAp" />
            </node>
          </node>
          <node concept="3clFbF" id="4jcOV4hxxyi" role="3cqZAp">
            <node concept="2OqwBi" id="4jcOV4hxxRr" role="3clFbG">
              <node concept="2OqwBi" id="4jcOV4hxxGB" role="2Oq$k0">
                <node concept="37vLTw" id="4jcOV4hxxyg" role="2Oq$k0">
                  <ref role="3cqZAo" node="4jcOV4hx9Fc" resolve="invocation" />
                </node>
                <node concept="liA8E" id="4jcOV4hxxNP" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~PredicateInvocation.invocationContext()" resolve="invocationContext" />
                </node>
              </node>
              <node concept="liA8E" id="4jcOV4hxy0C" role="2OqNvi">
                <ref role="37wK5l" to="w7la:~InvocationContext.report(jetbrains.mps.logic.reactor.evaluation.EvaluationFeedback)" resolve="report" />
                <node concept="2YIFZM" id="61G6TdBsI1H" role="37wK5m">
                  <ref role="1Pybhc" node="61G6TdBsGY8" resolve="FeedbackUtil" />
                  <ref role="37wK5l" node="61G6TdBsHeb" resolve="feedback" />
                  <node concept="37vLTw" id="61G6TdBsI5y" role="37wK5m">
                    <ref role="3cqZAo" node="4jcOV4hx_1_" resolve="msg" />
                  </node>
                  <node concept="37vLTw" id="61G6TdBsI5z" role="37wK5m">
                    <ref role="3cqZAo" node="1laj_RS1ySx" resolve="severity" />
                  </node>
                  <node concept="37vLTw" id="61G6TdBsI5A" role="37wK5m">
                    <ref role="3cqZAo" node="1laj_RTNLWd" resolve="templateRef" />
                  </node>
                  <node concept="37vLTw" id="61G6TdBsI5B" role="37wK5m">
                    <ref role="3cqZAo" node="4ekZiHduI3i" resolve="targetRef" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="4jcOV4hx9EB" role="3cqZAp">
            <node concept="1PaTwC" id="589APehYy5K" role="1aUNEU">
              <node concept="3oM_SD" id="589APehYy5L" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="589APehYy5M" role="1PaTwD">
                <property role="3oM_SC" value="expression" />
              </node>
              <node concept="3oM_SD" id="589APehYy5N" role="1PaTwD">
                <property role="3oM_SC" value="has" />
              </node>
              <node concept="3oM_SD" id="589APehYy5O" role="1PaTwD">
                <property role="3oM_SC" value="been" />
              </node>
              <node concept="3oM_SD" id="589APehYy5P" role="1PaTwD">
                <property role="3oM_SC" value="evaluated" />
              </node>
              <node concept="3oM_SD" id="589APehYy5Q" role="1PaTwD">
                <property role="3oM_SC" value="while" />
              </node>
              <node concept="3oM_SD" id="589APehYy5R" role="1PaTwD">
                <property role="3oM_SC" value="instantiating" />
              </node>
              <node concept="3oM_SD" id="589APehYy5S" role="1PaTwD">
                <property role="3oM_SC" value="arguments" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2gPa6JHMKE1" role="3cqZAp">
            <node concept="2YIFZM" id="2gPa6JHMLdx" role="3clFbG">
              <ref role="37wK5l" to="w7la:~Solver$Result.OK()" resolve="OK" />
              <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4jcOV4hx9Fu" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1laj_RS1lWk" role="jymVt" />
      <node concept="3Tm1VV" id="4jcOV4hx9Fw" role="1B3o_S" />
      <node concept="3uibUv" id="4jcOV4hx9Fx" role="EKbjA">
        <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
      </node>
    </node>
    <node concept="2tJIrI" id="4jcOV4hx9Fy" role="jymVt" />
    <node concept="3Tm1VV" id="4jcOV4hx9Fz" role="1B3o_S" />
    <node concept="3uibUv" id="4jcOV4hx9F$" role="1zkMxy">
      <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
    </node>
  </node>
  <node concept="312cEu" id="4jcOV4hENDg">
    <property role="TrG5h" value="FailPredicate" />
    <node concept="2tJIrI" id="4jcOV4hENDh" role="jymVt" />
    <node concept="3clFbW" id="4jcOV4hENDi" role="jymVt">
      <node concept="37vLTG" id="4jcOV4hENDj" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="3uibUv" id="4jcOV4hENDk" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="4jcOV4hENDn" role="3clF45" />
      <node concept="3Tm1VV" id="4jcOV4hENDo" role="1B3o_S" />
      <node concept="3clFbS" id="4jcOV4hENDp" role="3clF47">
        <node concept="XkiVB" id="4jcOV4hENDq" role="3cqZAp">
          <ref role="37wK5l" node="6Kcfpq7B1f7" resolve="AbstractPredicate" />
          <node concept="37vLTw" id="4jcOV4hENDr" role="37wK5m">
            <ref role="3cqZAo" node="4jcOV4hENDj" resolve="message" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4jcOV4hENDt" role="jymVt" />
    <node concept="3clFb_" id="4jcOV4hENDu" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4jcOV4hENDv" role="1B3o_S" />
      <node concept="3uibUv" id="4jcOV4hENDw" role="3clF45">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="3clFbS" id="4jcOV4hENDx" role="3clF47">
        <node concept="3clFbF" id="4jcOV4hENDy" role="3cqZAp">
          <node concept="37vLTw" id="4jcOV4hENDz" role="3clFbG">
            <ref role="3cqZAo" node="4jcOV4hENDE" resolve="FAIL_SYM" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4jcOV4hEND$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4jcOV4hEND_" role="jymVt" />
    <node concept="Wx3nA" id="4jcOV4hENDA" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="FAIL" />
      <node concept="3Tm1VV" id="4jcOV4hENDB" role="1B3o_S" />
      <node concept="17QB3L" id="4jcOV4hENDC" role="1tU5fm" />
      <node concept="Xl_RD" id="4jcOV4hENDD" role="33vP2m">
        <property role="Xl_RC" value="fail" />
      </node>
    </node>
    <node concept="Wx3nA" id="4jcOV4hENDE" role="jymVt">
      <property role="TrG5h" value="FAIL_SYM" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4jcOV4hENDF" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="3Tm1VV" id="4jcOV4hENDG" role="1B3o_S" />
      <node concept="2ShNRf" id="4jcOV4hENDH" role="33vP2m">
        <node concept="YeOm9" id="4jcOV4hENDI" role="2ShVmc">
          <node concept="1Y3b0j" id="4jcOV4hENDJ" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="7lt0LtQvaw_" resolve="PredicateSymbolExt" />
            <ref role="37wK5l" node="7lt0LtQva_c" resolve="PredicateSymbolExt" />
            <node concept="37vLTw" id="4jcOV4hENDK" role="37wK5m">
              <ref role="3cqZAo" node="4jcOV4hENDA" resolve="FAIL" />
            </node>
            <node concept="3cmrfG" id="4jcOV4hENDL" role="37wK5m">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="3Tm1VV" id="4jcOV4hENDM" role="1B3o_S" />
            <node concept="3clFb_" id="4jcOV4hENDN" role="jymVt">
              <property role="TrG5h" value="solver" />
              <property role="1EzhhJ" value="false" />
              <node concept="3uibUv" id="4jcOV4hENDO" role="3clF45">
                <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
              </node>
              <node concept="3Tm1VV" id="4jcOV4hENDP" role="1B3o_S" />
              <node concept="3clFbS" id="4jcOV4hENDQ" role="3clF47">
                <node concept="3clFbF" id="4jcOV4hENDR" role="3cqZAp">
                  <node concept="2ShNRf" id="4jcOV4hENDS" role="3clFbG">
                    <node concept="HV5vD" id="4jcOV4hENDT" role="2ShVmc">
                      <ref role="HV5vE" node="4jcOV4hENEb" resolve="FailPredicate.EvalExpressionSolver" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="4jcOV4hENDU" role="jymVt">
              <property role="TrG5h" value="predicate" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="4jcOV4hENDV" role="3clF46">
                <property role="TrG5h" value="args" />
                <node concept="8X2XB" id="4jcOV4hENDW" role="1tU5fm">
                  <node concept="3uibUv" id="4jcOV4hENDX" role="8Xvag">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="4jcOV4hENDY" role="3clF45">
                <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
              </node>
              <node concept="3Tm1VV" id="4jcOV4hENDZ" role="1B3o_S" />
              <node concept="3clFbS" id="4jcOV4hENE0" role="3clF47">
                <node concept="3clFbF" id="4jcOV4hENE1" role="3cqZAp">
                  <node concept="2ShNRf" id="4jcOV4hENE2" role="3clFbG">
                    <node concept="1pGfFk" id="4jcOV4hENE3" role="2ShVmc">
                      <ref role="37wK5l" node="4jcOV4hENDi" resolve="FailPredicate" />
                      <node concept="AH0OO" id="4jcOV4hENE4" role="37wK5m">
                        <node concept="3cmrfG" id="4jcOV4hENE5" role="AHEQo">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="4jcOV4hENE6" role="AHHXb">
                          <ref role="3cqZAo" node="4jcOV4hENDV" resolve="args" />
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
    <node concept="2tJIrI" id="4jcOV4hENEa" role="jymVt" />
    <node concept="312cEu" id="4jcOV4hENEb" role="jymVt">
      <property role="TrG5h" value="EvalExpressionSolver" />
      <node concept="2tJIrI" id="4jcOV4hENEc" role="jymVt" />
      <node concept="3clFb_" id="4jcOV4hENEd" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="ask" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="4jcOV4hENEe" role="1B3o_S" />
        <node concept="10P_77" id="4jcOV4hENEf" role="3clF45" />
        <node concept="37vLTG" id="4jcOV4hENEg" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="4jcOV4hENEh" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3clFbS" id="4jcOV4hENEi" role="3clF47">
          <node concept="YS8fn" id="4jcOV4hENEj" role="3cqZAp">
            <node concept="2ShNRf" id="4jcOV4hENEk" role="YScLw">
              <node concept="1pGfFk" id="4jcOV4hENEl" role="2ShVmc">
                <ref role="37wK5l" to="w7la:~EvaluationFailureException.&lt;init&gt;(java.lang.String)" resolve="EvaluationFailureException" />
                <node concept="3cpWs3" id="4jcOV4hENEm" role="37wK5m">
                  <node concept="Xl_RD" id="4jcOV4hENEn" role="3uHU7B">
                    <property role="Xl_RC" value="ask not applicable to " />
                  </node>
                  <node concept="2OqwBi" id="4jcOV4hENEo" role="3uHU7w">
                    <node concept="2OqwBi" id="4jcOV4hENEp" role="2Oq$k0">
                      <node concept="37vLTw" id="4jcOV4hENEq" role="2Oq$k0">
                        <ref role="3cqZAo" node="4jcOV4hENEg" resolve="invocation" />
                      </node>
                      <node concept="liA8E" id="4jcOV4hENEr" role="2OqNvi">
                        <ref role="37wK5l" to="w7la:~PredicateInvocation.predicate()" resolve="predicate" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4jcOV4hENEs" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~Predicate.symbol()" resolve="symbol" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4jcOV4hENEt" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2gPa6JHNf7k" role="jymVt" />
      <node concept="3clFb_" id="2gPa6JHNfov" role="jymVt">
        <property role="TrG5h" value="tell" />
        <node concept="3Tm1VV" id="2gPa6JHNfow" role="1B3o_S" />
        <node concept="3cqZAl" id="2gPa6JHNfoy" role="3clF45" />
        <node concept="37vLTG" id="2gPa6JHNfoz" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="2gPa6JHNfo$" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3clFbS" id="2gPa6JHNfoC" role="3clF47">
          <node concept="YS8fn" id="2gPa6JHNget" role="3cqZAp">
            <node concept="2ShNRf" id="2gPa6JHNgM0" role="YScLw">
              <node concept="1pGfFk" id="2gPa6JHNhvj" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2gPa6JHNfoD" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2gPa6JHNi0Z" role="jymVt" />
      <node concept="3clFb_" id="4jcOV4hENEv" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="tryTell" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="4jcOV4hENEw" role="1B3o_S" />
        <node concept="3uibUv" id="2gPa6JHNeRE" role="3clF45">
          <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
        </node>
        <node concept="37vLTG" id="4jcOV4hENEy" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="4jcOV4hENEz" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3clFbS" id="4jcOV4hENE$" role="3clF47">
          <node concept="3clFbJ" id="4jcOV4hENE_" role="3cqZAp">
            <node concept="3clFbS" id="4jcOV4hENEA" role="3clFbx">
              <node concept="YS8fn" id="4jcOV4hENEB" role="3cqZAp">
                <node concept="2ShNRf" id="4jcOV4hENEC" role="YScLw">
                  <node concept="1pGfFk" id="4jcOV4hENED" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="4jcOV4hENEE" role="3clFbw">
              <node concept="1eOMI4" id="4jcOV4hENEF" role="3fr31v">
                <node concept="2ZW3vV" id="4jcOV4hENEG" role="1eOMHV">
                  <node concept="3uibUv" id="4jcOV4hENEH" role="2ZW6by">
                    <ref role="3uigEE" node="4jcOV4hENDg" resolve="FailPredicate" />
                  </node>
                  <node concept="2OqwBi" id="4jcOV4hENEI" role="2ZW6bz">
                    <node concept="37vLTw" id="4jcOV4hENEJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="4jcOV4hENEy" resolve="invocation" />
                    </node>
                    <node concept="liA8E" id="4jcOV4hENEK" role="2OqNvi">
                      <ref role="37wK5l" to="w7la:~PredicateInvocation.predicate()" resolve="predicate" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4jcOV4hENEL" role="3cqZAp">
            <node concept="3cpWsn" id="4jcOV4hENEM" role="3cpWs9">
              <property role="TrG5h" value="msg" />
              <node concept="3uibUv" id="4jcOV4hENEN" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="2YIFZM" id="4jcOV4hENEO" role="33vP2m">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.valueOf(char[])" resolve="valueOf" />
                <node concept="2OqwBi" id="4jcOV4hENEP" role="37wK5m">
                  <node concept="2OqwBi" id="4jcOV4hENEQ" role="2Oq$k0">
                    <node concept="37vLTw" id="4jcOV4hENER" role="2Oq$k0">
                      <ref role="3cqZAo" node="4jcOV4hENEy" resolve="invocation" />
                    </node>
                    <node concept="liA8E" id="4jcOV4hENES" role="2OqNvi">
                      <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments()" resolve="arguments" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4jcOV4hENET" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="3cmrfG" id="4jcOV4hENEU" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="2gPa6JHNkvC" role="3cqZAp">
            <node concept="2YIFZM" id="2gPa6JHNljR" role="3cqZAk">
              <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
              <ref role="37wK5l" to="w7la:~Solver$Result.FAIL(java.lang.String)" resolve="FAIL" />
              <node concept="37vLTw" id="2gPa6JHNl_r" role="37wK5m">
                <ref role="3cqZAo" node="4jcOV4hENEM" resolve="msg" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4jcOV4hENFi" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4jcOV4hENFT" role="jymVt" />
      <node concept="3Tm1VV" id="4jcOV4hENFU" role="1B3o_S" />
      <node concept="3uibUv" id="4jcOV4hENFV" role="EKbjA">
        <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
      </node>
    </node>
    <node concept="2tJIrI" id="4jcOV4hENFW" role="jymVt" />
    <node concept="3Tm1VV" id="4jcOV4hENFX" role="1B3o_S" />
    <node concept="3uibUv" id="4jcOV4hENFY" role="1zkMxy">
      <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
    </node>
  </node>
  <node concept="312cEu" id="4ekZiHddiXo">
    <property role="TrG5h" value="FeedbackOrigin" />
    <node concept="2tJIrI" id="4ekZiHddiYo" role="jymVt" />
    <node concept="3clFbW" id="4ekZiHddiYF" role="jymVt">
      <node concept="3cqZAl" id="4ekZiHddiYH" role="3clF45" />
      <node concept="3Tm1VV" id="4ekZiHddiYI" role="1B3o_S" />
      <node concept="3clFbS" id="4ekZiHddiYJ" role="3clF47">
        <node concept="3clFbF" id="4ekZiHddj7G" role="3cqZAp">
          <node concept="37vLTI" id="4ekZiHddj7I" role="3clFbG">
            <node concept="2OqwBi" id="4ekZiHddjb3" role="37vLTJ">
              <node concept="Xjq3P" id="4ekZiHddjbP" role="2Oq$k0" />
              <node concept="2OwXpG" id="4ekZiHddjwR" role="2OqNvi">
                <ref role="2Oxat5" node="4ekZiHddj7C" resolve="template" />
              </node>
            </node>
            <node concept="37vLTw" id="4ekZiHddj7M" role="37vLTx">
              <ref role="3cqZAo" node="4ekZiHddj53" resolve="template" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4ekZiHddj0l" role="3cqZAp">
          <node concept="37vLTI" id="4ekZiHddj0n" role="3clFbG">
            <node concept="2OqwBi" id="4ekZiHddj3N" role="37vLTJ">
              <node concept="Xjq3P" id="4ekZiHddj4k" role="2Oq$k0" />
              <node concept="2OwXpG" id="4ekZiHddjy4" role="2OqNvi">
                <ref role="2Oxat5" node="4ekZiHddj0h" resolve="origin" />
              </node>
            </node>
            <node concept="37vLTw" id="4ekZiHddj0r" role="37vLTx">
              <ref role="3cqZAo" node="4ekZiHddiZf" resolve="origin" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4ekZiHddj53" role="3clF46">
        <property role="TrG5h" value="template" />
        <node concept="3uibUv" id="4ekZiHddj6m" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="37vLTG" id="4ekZiHddiZf" role="3clF46">
        <property role="TrG5h" value="origin" />
        <node concept="3uibUv" id="4ekZiHddiZe" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4ekZiHddjck" role="jymVt" />
    <node concept="3clFb_" id="4ekZiHddjyV" role="jymVt">
      <property role="TrG5h" value="getTemplate" />
      <node concept="3uibUv" id="4ekZiHddjyW" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3Tm1VV" id="4ekZiHddjyX" role="1B3o_S" />
      <node concept="3clFbS" id="4ekZiHddjyY" role="3clF47">
        <node concept="3clFbF" id="4ekZiHddjyZ" role="3cqZAp">
          <node concept="37vLTw" id="4ekZiHddjI3" role="3clFbG">
            <ref role="3cqZAo" node="4ekZiHddj7C" resolve="template" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4ekZiHddjmZ" role="jymVt" />
    <node concept="3clFb_" id="4ekZiHddjeb" role="jymVt">
      <property role="TrG5h" value="getOrigin" />
      <node concept="3uibUv" id="4ekZiHddjh7" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3Tm1VV" id="4ekZiHddjee" role="1B3o_S" />
      <node concept="3clFbS" id="4ekZiHddjef" role="3clF47">
        <node concept="3clFbF" id="4ekZiHddjoE" role="3cqZAp">
          <node concept="37vLTw" id="4ekZiHddjqT" role="3clFbG">
            <ref role="3cqZAo" node="4ekZiHddj0h" resolve="origin" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4ekZiHddj_E" role="jymVt" />
    <node concept="3Tm1VV" id="4ekZiHddiXp" role="1B3o_S" />
    <node concept="312cEg" id="4ekZiHddj7C" role="jymVt">
      <property role="TrG5h" value="template" />
      <node concept="3Tm6S6" id="4ekZiHddj7D" role="1B3o_S" />
      <node concept="3uibUv" id="4ekZiHddj7F" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
    </node>
    <node concept="312cEg" id="4ekZiHddj0h" role="jymVt">
      <property role="TrG5h" value="origin" />
      <node concept="3Tm6S6" id="4ekZiHddj0i" role="1B3o_S" />
      <node concept="3uibUv" id="4ekZiHddj0k" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
    </node>
    <node concept="2tJIrI" id="4ekZiHddjKB" role="jymVt" />
    <node concept="3UR2Jj" id="4ekZiHddkfE" role="lGtFl">
      <node concept="TZ5HA" id="4ekZiHddkfF" role="TZ5H$">
        <node concept="1dT_AC" id="4ekZiHddkfG" role="1dT_Ay">
          <property role="1dT_AB" value="A pair of references to the feedback's origin template and the origin node." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="61G6TdBsGY8">
    <property role="TrG5h" value="FeedbackUtil" />
    <node concept="2tJIrI" id="61G6TdBsGYT" role="jymVt" />
    <node concept="2YIFZL" id="61G6TdBsHeb" role="jymVt">
      <property role="TrG5h" value="feedback" />
      <node concept="37vLTG" id="61G6TdBsHgW" role="3clF46">
        <property role="TrG5h" value="msg" />
        <node concept="17QB3L" id="61G6TdBsHgX" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="61G6TdBsHgY" role="3clF46">
        <property role="TrG5h" value="severity" />
        <node concept="17QB3L" id="61G6TdBsHgZ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="61G6TdBsHnW" role="3clF46">
        <property role="TrG5h" value="templateRef" />
        <node concept="3uibUv" id="61G6TdBsHnX" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="37vLTG" id="61G6TdBsHnY" role="3clF46">
        <property role="TrG5h" value="originRef" />
        <node concept="3uibUv" id="61G6TdBsHnZ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="3uibUv" id="61G6TdBsHeL" role="3clF45">
        <ref role="3uigEE" to="w7la:~EvaluationFeedback" resolve="EvaluationFeedback" />
      </node>
      <node concept="3Tm1VV" id="61G6TdBsHee" role="1B3o_S" />
      <node concept="3clFbS" id="61G6TdBsHef" role="3clF47">
        <node concept="3clFbF" id="61G6TdBsHrb" role="3cqZAp">
          <node concept="2YIFZM" id="61G6TdBsHs1" role="3clFbG">
            <ref role="1Pybhc" node="61G6TdBsGY8" resolve="FeedbackUtil" />
            <ref role="37wK5l" node="61G6TdBsHj0" resolve="feedback" />
            <node concept="37vLTw" id="61G6TdBsHsM" role="37wK5m">
              <ref role="3cqZAo" node="61G6TdBsHgW" resolve="msg" />
            </node>
            <node concept="37vLTw" id="61G6TdBsHsN" role="37wK5m">
              <ref role="3cqZAo" node="61G6TdBsHgY" resolve="severity" />
            </node>
            <node concept="2ShNRf" id="61G6TdBsHsO" role="37wK5m">
              <node concept="1pGfFk" id="61G6TdBsHsP" role="2ShVmc">
                <ref role="37wK5l" node="4ekZiHddiYF" resolve="FeedbackOrigin" />
                <node concept="37vLTw" id="61G6TdBsH_o" role="37wK5m">
                  <ref role="3cqZAo" node="61G6TdBsHnW" resolve="templateRef" />
                </node>
                <node concept="37vLTw" id="61G6TdBsHCw" role="37wK5m">
                  <ref role="3cqZAo" node="61G6TdBsHnY" resolve="originRef" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="61G6TdBsGYY" role="jymVt" />
    <node concept="2YIFZL" id="61G6TdBsHj0" role="jymVt">
      <property role="TrG5h" value="feedback" />
      <node concept="37vLTG" id="61G6TdBsHj1" role="3clF46">
        <property role="TrG5h" value="msg" />
        <node concept="17QB3L" id="61G6TdBsHj2" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="61G6TdBsHj3" role="3clF46">
        <property role="TrG5h" value="severity" />
        <node concept="17QB3L" id="61G6TdBsHj4" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="61G6TdBsHj5" role="3clF46">
        <property role="TrG5h" value="origin" />
        <node concept="3uibUv" id="61G6TdBsHj6" role="1tU5fm">
          <ref role="3uigEE" node="4ekZiHddiXo" resolve="FeedbackOrigin" />
        </node>
      </node>
      <node concept="3uibUv" id="61G6TdBsHj7" role="3clF45">
        <ref role="3uigEE" to="w7la:~EvaluationFeedback" resolve="EvaluationFeedback" />
      </node>
      <node concept="3Tm1VV" id="61G6TdBsHj8" role="1B3o_S" />
      <node concept="3clFbS" id="61G6TdBsHj9" role="3clF47">
        <node concept="3KaCP$" id="61G6TdBsHEW" role="3cqZAp">
          <node concept="3KbdKl" id="61G6TdBsHEX" role="3KbHQx">
            <node concept="3clFbS" id="61G6TdBsHEY" role="3Kbo56">
              <node concept="3cpWs6" id="61G6TdBsHEZ" role="3cqZAp">
                <node concept="2YIFZM" id="61G6TdBsHF0" role="3cqZAk">
                  <ref role="1Pybhc" to="w7la:~EvaluationFeedback" resolve="EvaluationFeedback" />
                  <ref role="37wK5l" to="w7la:~EvaluationFeedback.debug(java.lang.String,java.lang.Object)" resolve="debug" />
                  <node concept="37vLTw" id="61G6TdBsHF1" role="37wK5m">
                    <ref role="3cqZAo" node="61G6TdBsHj1" resolve="msg" />
                  </node>
                  <node concept="37vLTw" id="61G6TdBsHF2" role="37wK5m">
                    <ref role="3cqZAo" node="61G6TdBsHj5" resolve="origin" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="61G6TdBsHF3" role="3Kbmr1">
              <property role="Xl_RC" value="DEBUG" />
            </node>
          </node>
          <node concept="3KbdKl" id="61G6TdBsHF4" role="3KbHQx">
            <node concept="3clFbS" id="61G6TdBsHF5" role="3Kbo56">
              <node concept="3cpWs6" id="61G6TdBsHF6" role="3cqZAp">
                <node concept="2YIFZM" id="61G6TdBsHF7" role="3cqZAk">
                  <ref role="37wK5l" to="w7la:~EvaluationFeedback.info(java.lang.String,java.lang.Object)" resolve="info" />
                  <ref role="1Pybhc" to="w7la:~EvaluationFeedback" resolve="EvaluationFeedback" />
                  <node concept="37vLTw" id="61G6TdBsHF8" role="37wK5m">
                    <ref role="3cqZAo" node="61G6TdBsHj1" resolve="msg" />
                  </node>
                  <node concept="37vLTw" id="61G6TdBsHF9" role="37wK5m">
                    <ref role="3cqZAo" node="61G6TdBsHj5" resolve="origin" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="61G6TdBsHFa" role="3Kbmr1">
              <property role="Xl_RC" value="INFO" />
            </node>
          </node>
          <node concept="3KbdKl" id="61G6TdBsHFb" role="3KbHQx">
            <node concept="3clFbS" id="61G6TdBsHFc" role="3Kbo56">
              <node concept="3cpWs6" id="61G6TdBsHFd" role="3cqZAp">
                <node concept="2YIFZM" id="61G6TdBsHFe" role="3cqZAk">
                  <ref role="1Pybhc" to="w7la:~EvaluationFeedback" resolve="EvaluationFeedback" />
                  <ref role="37wK5l" to="w7la:~EvaluationFeedback.warn(java.lang.String,java.lang.Object)" resolve="warn" />
                  <node concept="37vLTw" id="61G6TdBsHFf" role="37wK5m">
                    <ref role="3cqZAo" node="61G6TdBsHj1" resolve="msg" />
                  </node>
                  <node concept="37vLTw" id="61G6TdBsHFg" role="37wK5m">
                    <ref role="3cqZAo" node="61G6TdBsHj5" resolve="origin" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="61G6TdBsHFh" role="3Kbmr1">
              <property role="Xl_RC" value="WARN" />
            </node>
          </node>
          <node concept="3KbdKl" id="61G6TdBsHFi" role="3KbHQx">
            <node concept="3clFbS" id="61G6TdBsHFj" role="3Kbo56">
              <node concept="3cpWs6" id="61G6TdBsHFk" role="3cqZAp">
                <node concept="2YIFZM" id="61G6TdBsHFl" role="3cqZAk">
                  <ref role="37wK5l" to="w7la:~EvaluationFeedback.error(java.lang.String,java.lang.Object)" resolve="error" />
                  <ref role="1Pybhc" to="w7la:~EvaluationFeedback" resolve="EvaluationFeedback" />
                  <node concept="37vLTw" id="61G6TdBsHFm" role="37wK5m">
                    <ref role="3cqZAo" node="61G6TdBsHj1" resolve="msg" />
                  </node>
                  <node concept="37vLTw" id="61G6TdBsHFn" role="37wK5m">
                    <ref role="3cqZAo" node="61G6TdBsHj5" resolve="origin" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="61G6TdBsHFo" role="3Kbmr1">
              <property role="Xl_RC" value="ERROR" />
            </node>
          </node>
          <node concept="3clFbS" id="61G6TdBsHFp" role="3Kb1Dw">
            <node concept="YS8fn" id="61G6TdBsHFq" role="3cqZAp">
              <node concept="2ShNRf" id="61G6TdBsHFr" role="YScLw">
                <node concept="1pGfFk" id="61G6TdBsHFs" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                  <node concept="3cpWs3" id="61G6TdBsHFt" role="37wK5m">
                    <node concept="Xl_RD" id="61G6TdBsHFu" role="3uHU7w">
                      <property role="Xl_RC" value="'" />
                    </node>
                    <node concept="3cpWs3" id="61G6TdBsHFv" role="3uHU7B">
                      <node concept="Xl_RD" id="61G6TdBsHFw" role="3uHU7B">
                        <property role="Xl_RC" value="unknown severity '" />
                      </node>
                      <node concept="37vLTw" id="61G6TdBsHFx" role="3uHU7w">
                        <ref role="3cqZAo" node="61G6TdBsHj3" resolve="severity" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="61G6TdBsHFy" role="3KbGdf">
            <ref role="3cqZAo" node="61G6TdBsHj3" resolve="severity" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="61G6TdBzLWY" role="jymVt" />
    <node concept="2YIFZL" id="3o9wrC3WoA4" role="jymVt">
      <property role="TrG5h" value="severityToStatus" />
      <node concept="3clFbS" id="3o9wrC3WoA6" role="3clF47">
        <node concept="3KaCP$" id="3o9wrC3WoA7" role="3cqZAp">
          <node concept="3KbdKl" id="3o9wrC3WoA8" role="3KbHQx">
            <node concept="Rm8GO" id="3o9wrC3WoA9" role="3Kbmr1">
              <ref role="1Px2BO" to="w7la:~EvaluationFeedback$Severity" resolve="EvaluationFeedback.Severity" />
              <ref role="Rm8GQ" to="w7la:~EvaluationFeedback$Severity.DEBUG" resolve="DEBUG" />
            </node>
            <node concept="3clFbS" id="3o9wrC3WoAa" role="3Kbo56">
              <node concept="3SKdUt" id="3o9wrC3WoAb" role="3cqZAp">
                <node concept="1PaTwC" id="3o9wrC3WoAc" role="1aUNEU">
                  <node concept="3oM_SD" id="3o9wrC3WoAd" role="1PaTwD">
                    <property role="3oM_SC" value="fall" />
                  </node>
                  <node concept="3oM_SD" id="3o9wrC3WoAe" role="1PaTwD">
                    <property role="3oM_SC" value="through" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3o9wrC3WoAf" role="3KbHQx">
            <node concept="Rm8GO" id="3o9wrC3WoAg" role="3Kbmr1">
              <ref role="1Px2BO" to="w7la:~EvaluationFeedback$Severity" resolve="EvaluationFeedback.Severity" />
              <ref role="Rm8GQ" to="w7la:~EvaluationFeedback$Severity.INFO" resolve="INFO" />
            </node>
            <node concept="3clFbS" id="3o9wrC3WoAh" role="3Kbo56">
              <node concept="3cpWs6" id="3o9wrC3WoAi" role="3cqZAp">
                <node concept="Rm8GO" id="3o9wrC3WoAj" role="3cqZAk">
                  <ref role="Rm8GQ" to="2gg1:~MessageStatus.OK" resolve="OK" />
                  <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3o9wrC3WoAk" role="3KbHQx">
            <node concept="Rm8GO" id="3o9wrC3WoAl" role="3Kbmr1">
              <ref role="1Px2BO" to="w7la:~EvaluationFeedback$Severity" resolve="EvaluationFeedback.Severity" />
              <ref role="Rm8GQ" to="w7la:~EvaluationFeedback$Severity.WARN" resolve="WARN" />
            </node>
            <node concept="3clFbS" id="3o9wrC3WoAm" role="3Kbo56">
              <node concept="3cpWs6" id="3o9wrC3WoAn" role="3cqZAp">
                <node concept="Rm8GO" id="3o9wrC3WoAo" role="3cqZAk">
                  <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                  <ref role="Rm8GQ" to="2gg1:~MessageStatus.WARNING" resolve="WARNING" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="3o9wrC3WoAp" role="3KbHQx">
            <node concept="Rm8GO" id="3o9wrC3WoAq" role="3Kbmr1">
              <ref role="1Px2BO" to="w7la:~EvaluationFeedback$Severity" resolve="EvaluationFeedback.Severity" />
              <ref role="Rm8GQ" to="w7la:~EvaluationFeedback$Severity.ERROR" resolve="ERROR" />
            </node>
            <node concept="3clFbS" id="3o9wrC3WoAr" role="3Kbo56">
              <node concept="3cpWs6" id="3o9wrC3WoAz" role="3cqZAp">
                <node concept="Rm8GO" id="3o9wrC3WoA$" role="3cqZAk">
                  <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                  <ref role="Rm8GQ" to="2gg1:~MessageStatus.ERROR" resolve="ERROR" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="1laj_RSegw9" role="3KbHQx">
            <node concept="3clFbS" id="1laj_RSegwb" role="3Kbo56">
              <node concept="3cpWs6" id="1laj_RSegZm" role="3cqZAp">
                <node concept="Rm8GO" id="1laj_RSegZn" role="3cqZAk">
                  <ref role="Rm8GQ" to="2gg1:~MessageStatus.ERROR" resolve="ERROR" />
                  <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                </node>
              </node>
              <node concept="3clFbH" id="1laj_RSegYU" role="3cqZAp" />
            </node>
            <node concept="Rm8GO" id="1laj_RSegG_" role="3Kbmr1">
              <ref role="Rm8GQ" to="w7la:~EvaluationFeedback$Severity.FAILURE" resolve="FAILURE" />
              <ref role="1Px2BO" to="w7la:~EvaluationFeedback$Severity" resolve="EvaluationFeedback.Severity" />
            </node>
          </node>
          <node concept="3KbdKl" id="3o9wrC3WoAw" role="3KbHQx">
            <node concept="Rm8GO" id="3o9wrC3WoAx" role="3Kbmr1">
              <ref role="1Px2BO" to="w7la:~EvaluationFeedback$Severity" resolve="EvaluationFeedback.Severity" />
              <ref role="Rm8GQ" to="w7la:~EvaluationFeedback$Severity.FATAL" resolve="FATAL" />
            </node>
            <node concept="3clFbS" id="3o9wrC3WoAy" role="3Kbo56">
              <node concept="3SKdUt" id="3o9wrC3WoAs" role="3cqZAp">
                <node concept="1PaTwC" id="3o9wrC3WoAt" role="1aUNEU">
                  <node concept="3oM_SD" id="3o9wrC3WoAu" role="1PaTwD">
                    <property role="3oM_SC" value="fall" />
                  </node>
                  <node concept="3oM_SD" id="3o9wrC3WoAv" role="1PaTwD">
                    <property role="3oM_SC" value="through" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="3o9wrC3WoA_" role="3KbGdf">
            <ref role="3cqZAo" node="3o9wrC3WoAF" resolve="severity" />
          </node>
          <node concept="3clFbS" id="3o9wrC3WoAA" role="3Kb1Dw">
            <node concept="YS8fn" id="3o9wrC3WoAB" role="3cqZAp">
              <node concept="2ShNRf" id="3o9wrC3WoAC" role="YScLw">
                <node concept="1pGfFk" id="3o9wrC3WoAD" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="61G6TdBteQI" role="3clF45">
        <ref role="3uigEE" to="2gg1:~MessageStatus" resolve="MessageStatus" />
      </node>
      <node concept="37vLTG" id="3o9wrC3WoAF" role="3clF46">
        <property role="TrG5h" value="severity" />
        <node concept="3uibUv" id="3o9wrC3WoAG" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~EvaluationFeedback$Severity" resolve="EvaluationFeedback.Severity" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3o9wrC3WoAH" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="61G6TdBsHiZ" role="jymVt" />
    <node concept="3Tm1VV" id="61G6TdBsGY9" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7lmP5gAgjDe">
    <property role="TrG5h" value="TermPredicate" />
    <node concept="2tJIrI" id="7lmP5gAgkeZ" role="jymVt" />
    <node concept="2YIFZL" id="7lmP5gAgMxo" role="jymVt">
      <property role="TrG5h" value="GROUND" />
      <node concept="37vLTG" id="7lmP5gAgMxp" role="3clF46">
        <property role="TrG5h" value="arg" />
        <node concept="3uibUv" id="7lmP5gAgMxq" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3uibUv" id="7lmP5gAgNrY" role="3clF45">
        <ref role="3uigEE" node="7lmP5gAgjDe" resolve="TermPredicate" />
      </node>
      <node concept="3Tm1VV" id="7lmP5gAgMxs" role="1B3o_S" />
      <node concept="3clFbS" id="7lmP5gAgMxt" role="3clF47">
        <node concept="3clFbF" id="7lmP5gAgMxu" role="3cqZAp">
          <node concept="2ShNRf" id="7lmP5gAgMxv" role="3clFbG">
            <node concept="1pGfFk" id="7lmP5gAgMxw" role="2ShVmc">
              <ref role="37wK5l" node="7lmP5gAgNKR" resolve="TermPredicate" />
              <node concept="37vLTw" id="7lmP5gAgZxB" role="37wK5m">
                <ref role="3cqZAo" node="7lmP5gAgJxn" resolve="GROUND_SYM" />
              </node>
              <node concept="37vLTw" id="7lmP5gAgMxx" role="37wK5m">
                <ref role="3cqZAo" node="7lmP5gAgMxp" resolve="arg" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7lmP5gAh5on" role="jymVt" />
    <node concept="2YIFZL" id="7lmP5gAh40X" role="jymVt">
      <property role="TrG5h" value="NONGROUND" />
      <node concept="37vLTG" id="7lmP5gAh40Y" role="3clF46">
        <property role="TrG5h" value="arg" />
        <node concept="3uibUv" id="7lmP5gAh40Z" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3uibUv" id="7lmP5gAh410" role="3clF45">
        <ref role="3uigEE" node="7lmP5gAgjDe" resolve="TermPredicate" />
      </node>
      <node concept="3Tm1VV" id="7lmP5gAh411" role="1B3o_S" />
      <node concept="3clFbS" id="7lmP5gAh412" role="3clF47">
        <node concept="3clFbF" id="7lmP5gAh413" role="3cqZAp">
          <node concept="2ShNRf" id="7lmP5gAh414" role="3clFbG">
            <node concept="1pGfFk" id="7lmP5gAh415" role="2ShVmc">
              <ref role="37wK5l" node="7lmP5gAgNKR" resolve="TermPredicate" />
              <node concept="37vLTw" id="7lmP5gAh7bI" role="37wK5m">
                <ref role="3cqZAo" node="7lmP5gAh361" resolve="NONGROUND_SYM" />
              </node>
              <node concept="37vLTw" id="7lmP5gAh417" role="37wK5m">
                <ref role="3cqZAo" node="7lmP5gAh40Y" resolve="arg" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7lmP5gAgM6I" role="jymVt" />
    <node concept="3Tm1VV" id="7lmP5gAgjDf" role="1B3o_S" />
    <node concept="3uibUv" id="7lmP5gAgk27" role="1zkMxy">
      <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
    </node>
    <node concept="Wx3nA" id="7lmP5gAgJxn" role="jymVt">
      <property role="TrG5h" value="GROUND_SYM" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="7lmP5gAgJxo" role="1B3o_S" />
      <node concept="3uibUv" id="7lmP5gAgJxp" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="2ShNRf" id="7lmP5gAgJxq" role="33vP2m">
        <node concept="YeOm9" id="7lmP5gAgJxr" role="2ShVmc">
          <node concept="1Y3b0j" id="7lmP5gAgJxs" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" node="7lt0LtQva_c" resolve="PredicateSymbolExt" />
            <ref role="1Y3XeK" node="7lt0LtQvaw_" resolve="PredicateSymbolExt" />
            <node concept="Xl_RD" id="7lmP5gAgJxt" role="37wK5m">
              <property role="Xl_RC" value="isGround" />
            </node>
            <node concept="3cmrfG" id="7lmP5gAgJxu" role="37wK5m">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="3Tm1VV" id="7lmP5gAgJxv" role="1B3o_S" />
            <node concept="3clFb_" id="7lmP5gAgJxw" role="jymVt">
              <property role="TrG5h" value="solver" />
              <property role="1EzhhJ" value="false" />
              <node concept="3uibUv" id="7lmP5gAgJxx" role="3clF45">
                <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
              </node>
              <node concept="3Tm1VV" id="7lmP5gAgJxy" role="1B3o_S" />
              <node concept="3clFbS" id="7lmP5gAgJxz" role="3clF47">
                <node concept="3clFbF" id="7lmP5gAgJx$" role="3cqZAp">
                  <node concept="2ShNRf" id="7lmP5gAgJx_" role="3clFbG">
                    <node concept="HV5vD" id="7lmP5gAgLKl" role="2ShVmc">
                      <ref role="HV5vE" node="7lmP5gAgo5p" resolve="TermPredicate.TermSolver.Ground" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="7lmP5gAgJxB" role="jymVt">
              <property role="TrG5h" value="predicate" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="7lmP5gAgJxC" role="3clF46">
                <property role="TrG5h" value="args" />
                <node concept="8X2XB" id="7lmP5gAgJxD" role="1tU5fm">
                  <node concept="3uibUv" id="7lmP5gAgJxE" role="8Xvag">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="7lmP5gAgJxF" role="3clF45">
                <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
              </node>
              <node concept="3Tm1VV" id="7lmP5gAgJxG" role="1B3o_S" />
              <node concept="3clFbS" id="7lmP5gAgJxH" role="3clF47">
                <node concept="3clFbF" id="7lmP5gAgJxI" role="3cqZAp">
                  <node concept="1rXfSq" id="7lmP5gAgUSg" role="3clFbG">
                    <ref role="37wK5l" node="7lmP5gAgMxo" resolve="GROUND" />
                    <node concept="AH0OO" id="7lmP5gAgXj_" role="37wK5m">
                      <node concept="3cmrfG" id="7lmP5gAgXLH" role="AHEQo">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="37vLTw" id="7lmP5gAgVmy" role="AHHXb">
                        <ref role="3cqZAo" node="7lmP5gAgJxC" resolve="args" />
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
    <node concept="2tJIrI" id="7lmP5gAgkz5" role="jymVt" />
    <node concept="Wx3nA" id="7lmP5gAh361" role="jymVt">
      <property role="TrG5h" value="NONGROUND_SYM" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="7lmP5gAh362" role="1B3o_S" />
      <node concept="3uibUv" id="7lmP5gAh363" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="2ShNRf" id="7lmP5gAh364" role="33vP2m">
        <node concept="YeOm9" id="7lmP5gAh365" role="2ShVmc">
          <node concept="1Y3b0j" id="7lmP5gAh366" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" node="7lt0LtQva_c" resolve="PredicateSymbolExt" />
            <ref role="1Y3XeK" node="7lt0LtQvaw_" resolve="PredicateSymbolExt" />
            <node concept="Xl_RD" id="7lmP5gAh367" role="37wK5m">
              <property role="Xl_RC" value="isGround" />
            </node>
            <node concept="3cmrfG" id="7lmP5gAh368" role="37wK5m">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="3Tm1VV" id="7lmP5gAh369" role="1B3o_S" />
            <node concept="3clFb_" id="7lmP5gAh36a" role="jymVt">
              <property role="TrG5h" value="solver" />
              <property role="1EzhhJ" value="false" />
              <node concept="3uibUv" id="7lmP5gAh36b" role="3clF45">
                <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
              </node>
              <node concept="3Tm1VV" id="7lmP5gAh36c" role="1B3o_S" />
              <node concept="3clFbS" id="7lmP5gAh36d" role="3clF47">
                <node concept="3clFbF" id="7lmP5gAh36e" role="3cqZAp">
                  <node concept="2ShNRf" id="7lmP5gAh36f" role="3clFbG">
                    <node concept="HV5vD" id="7lmP5gAh8uK" role="2ShVmc">
                      <ref role="HV5vE" node="7lmP5gAgFzF" resolve="TermPredicate.TermSolver.Nonground" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="7lmP5gAh36h" role="jymVt">
              <property role="TrG5h" value="predicate" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="7lmP5gAh36i" role="3clF46">
                <property role="TrG5h" value="args" />
                <node concept="8X2XB" id="7lmP5gAh36j" role="1tU5fm">
                  <node concept="3uibUv" id="7lmP5gAh36k" role="8Xvag">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="7lmP5gAh36l" role="3clF45">
                <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
              </node>
              <node concept="3Tm1VV" id="7lmP5gAh36m" role="1B3o_S" />
              <node concept="3clFbS" id="7lmP5gAh36n" role="3clF47">
                <node concept="3clFbF" id="7lmP5gAh36o" role="3cqZAp">
                  <node concept="1rXfSq" id="7lmP5gAh36p" role="3clFbG">
                    <ref role="37wK5l" node="7lmP5gAh40X" resolve="NONGROUND" />
                    <node concept="AH0OO" id="7lmP5gAh36q" role="37wK5m">
                      <node concept="3cmrfG" id="7lmP5gAh36r" role="AHEQo">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="37vLTw" id="7lmP5gAh36s" role="AHHXb">
                        <ref role="3cqZAo" node="7lmP5gAh36i" resolve="args" />
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
    <node concept="2tJIrI" id="7lmP5gAh360" role="jymVt" />
    <node concept="3clFb_" id="7lmP5gAgkf_" role="jymVt">
      <property role="TrG5h" value="symbol" />
      <node concept="3Tm1VV" id="7lmP5gAgkfA" role="1B3o_S" />
      <node concept="3uibUv" id="7lmP5gAgQuC" role="3clF45">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="3clFbS" id="7lmP5gAgkfF" role="3clF47">
        <node concept="3clFbF" id="7lmP5gAgkfI" role="3cqZAp">
          <node concept="37vLTw" id="7lmP5gAgTwR" role="3clFbG">
            <ref role="3cqZAo" node="7lmP5gAgOHa" resolve="symbol" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7lmP5gAgkfG" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7lmP5gAgkwO" role="jymVt" />
    <node concept="312cEg" id="7lmP5gAgOHa" role="jymVt">
      <property role="TrG5h" value="symbol" />
      <node concept="3Tm6S6" id="7lmP5gAgOHb" role="1B3o_S" />
      <node concept="3uibUv" id="7lmP5gAgOHc" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
    </node>
    <node concept="2tJIrI" id="7lmP5gAgkzh" role="jymVt" />
    <node concept="3clFbW" id="7lmP5gAgNKR" role="jymVt">
      <node concept="37vLTG" id="7lmP5gAgNKS" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="7lmP5gAgNKT" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="7lmP5gAgNKU" role="3clF46">
        <property role="TrG5h" value="arg" />
        <node concept="3uibUv" id="7lmP5gAgNKV" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="7lmP5gAgNKW" role="3clF45" />
      <node concept="3Tmbuc" id="7lmP5gAgNKX" role="1B3o_S" />
      <node concept="3clFbS" id="7lmP5gAgNKY" role="3clF47">
        <node concept="XkiVB" id="7lmP5gAgNKZ" role="3cqZAp">
          <ref role="37wK5l" node="6Kcfpq7B1f7" resolve="AbstractPredicate" />
          <node concept="37vLTw" id="7lmP5gAgNL0" role="37wK5m">
            <ref role="3cqZAo" node="7lmP5gAgNKU" resolve="arg" />
          </node>
        </node>
        <node concept="3clFbF" id="7lmP5gAgNL1" role="3cqZAp">
          <node concept="37vLTI" id="7lmP5gAgNL2" role="3clFbG">
            <node concept="2OqwBi" id="7lmP5gAgNL3" role="37vLTJ">
              <node concept="Xjq3P" id="7lmP5gAgNL4" role="2Oq$k0" />
              <node concept="2OwXpG" id="7lmP5gAgPuB" role="2OqNvi">
                <ref role="2Oxat5" node="7lmP5gAgOHa" resolve="symbol" />
              </node>
            </node>
            <node concept="37vLTw" id="7lmP5gAgNL6" role="37vLTx">
              <ref role="3cqZAo" node="7lmP5gAgNKS" resolve="symbol" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7lmP5gAgkzu" role="jymVt" />
    <node concept="312cEu" id="7lmP5gAgkAH" role="jymVt">
      <property role="TrG5h" value="TermSolver" />
      <property role="1sVAO0" value="true" />
      <node concept="2tJIrI" id="7lmP5gAgl6V" role="jymVt" />
      <node concept="3clFb_" id="7lmP5gAgl97" role="jymVt">
        <property role="TrG5h" value="ask" />
        <node concept="3Tm1VV" id="7lmP5gAgl98" role="1B3o_S" />
        <node concept="10P_77" id="7lmP5gAgl9a" role="3clF45" />
        <node concept="37vLTG" id="7lmP5gAgl9b" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="7lmP5gAgl9c" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3clFbS" id="7lmP5gAgl9f" role="3clF47">
          <node concept="3cpWs8" id="7lmP5gAgp_m" role="3cqZAp">
            <node concept="3cpWsn" id="7lmP5gAgp_n" role="3cpWs9">
              <property role="TrG5h" value="arg" />
              <node concept="3uibUv" id="7lmP5gAgp_l" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
              <node concept="2OqwBi" id="7lmP5gAgp_o" role="33vP2m">
                <node concept="2OqwBi" id="7lmP5gAgp_p" role="2Oq$k0">
                  <node concept="37vLTw" id="7lmP5gAgp_q" role="2Oq$k0">
                    <ref role="3cqZAo" node="7lmP5gAgl9b" resolve="invocation" />
                  </node>
                  <node concept="liA8E" id="7lmP5gAgp_r" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments()" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="7lmP5gAgp_s" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                  <node concept="3cmrfG" id="7lmP5gAgp_t" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7lmP5gAgr0P" role="3cqZAp">
            <node concept="3clFbS" id="7lmP5gAgr16" role="3clFbx">
              <node concept="3cpWs6" id="7lmP5gAgwSH" role="3cqZAp">
                <node concept="1rXfSq" id="7lmP5gAgxhd" role="3cqZAk">
                  <ref role="37wK5l" node="7lmP5gAgmBc" resolve="doAsk" />
                  <node concept="1eOMI4" id="7lmP5gAgxF8" role="37wK5m">
                    <node concept="10QFUN" id="7lmP5gAgxF7" role="1eOMHV">
                      <node concept="37vLTw" id="7lmP5gAgxF6" role="10QFUP">
                        <ref role="3cqZAo" node="7lmP5gAgp_n" resolve="arg" />
                      </node>
                      <node concept="3uibUv" id="7lmP5gAgxF4" role="10QFUM">
                        <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                        <node concept="3qTvmN" id="7lmP5gAgxF5" role="11_B2D" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7lmP5gAgxUG" role="3cqZAp" />
            </node>
            <node concept="2ZW3vV" id="7lmP5gAgqrW" role="3clFbw">
              <node concept="3uibUv" id="7lmP5gAgqCn" role="2ZW6by">
                <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
              </node>
              <node concept="37vLTw" id="7lmP5gAgp_u" role="2ZW6bz">
                <ref role="3cqZAo" node="7lmP5gAgp_n" resolve="arg" />
              </node>
            </node>
            <node concept="3eNFk2" id="7lmP5gAgrgh" role="3eNLev">
              <node concept="2ZW3vV" id="7lmP5gAgrGm" role="3eO9$A">
                <node concept="3uibUv" id="7lmP5gAgrSw" role="2ZW6by">
                  <ref role="3uigEE" to="cof4:1msb0mq9ID4" resolve="DataNode" />
                </node>
                <node concept="37vLTw" id="7lmP5gAgrsA" role="2ZW6bz">
                  <ref role="3cqZAo" node="7lmP5gAgp_n" resolve="arg" />
                </node>
              </node>
              <node concept="3clFbS" id="7lmP5gAgrgj" role="3eOfB_">
                <node concept="3cpWs6" id="7lmP5gAgy7a" role="3cqZAp">
                  <node concept="1rXfSq" id="7lmP5gAgy7b" role="3cqZAk">
                    <ref role="37wK5l" node="7lmP5gAgn8x" resolve="doAsk" />
                    <node concept="1eOMI4" id="7lmP5gAgy7c" role="37wK5m">
                      <node concept="10QFUN" id="7lmP5gAgy7d" role="1eOMHV">
                        <node concept="37vLTw" id="7lmP5gAgy7e" role="10QFUP">
                          <ref role="3cqZAo" node="7lmP5gAgp_n" resolve="arg" />
                        </node>
                        <node concept="3uibUv" id="7lmP5gAgzke" role="10QFUM">
                          <ref role="3uigEE" to="cof4:1msb0mq9ID4" resolve="DataNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7lmP5gAgwG3" role="3cqZAp">
            <node concept="3clFbT" id="7lmP5gAgwG2" role="3clFbG" />
          </node>
        </node>
        <node concept="2AHcQZ" id="7lmP5gAgl9g" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="7lmP5gAglwh" role="jymVt" />
      <node concept="3clFb_" id="7lmP5gAgl9j" role="jymVt">
        <property role="TrG5h" value="tell" />
        <node concept="3Tm1VV" id="7lmP5gAgl9k" role="1B3o_S" />
        <node concept="3cqZAl" id="7lmP5gAgl9m" role="3clF45" />
        <node concept="37vLTG" id="7lmP5gAgl9n" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="7lmP5gAgl9o" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3clFbS" id="7lmP5gAgl9s" role="3clF47">
          <node concept="YS8fn" id="7lmP5gAgmoo" role="3cqZAp">
            <node concept="2ShNRf" id="7lmP5gAgmop" role="YScLw">
              <node concept="1pGfFk" id="7lmP5gAgmoq" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7lmP5gAgl9t" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="7lmP5gAglD$" role="jymVt" />
      <node concept="3clFb_" id="7lmP5gAglJd" role="jymVt">
        <property role="TrG5h" value="tryTell" />
        <node concept="3Tm1VV" id="7lmP5gAglJf" role="1B3o_S" />
        <node concept="3uibUv" id="7lmP5gAglJh" role="3clF45">
          <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
        </node>
        <node concept="37vLTG" id="7lmP5gAglJi" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="7lmP5gAglJj" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3clFbS" id="7lmP5gAglJk" role="3clF47">
          <node concept="3clFbJ" id="7lmP5gAiqRd" role="3cqZAp">
            <node concept="3fqX7Q" id="7lmP5gAirx6" role="3clFbw">
              <node concept="1rXfSq" id="7lmP5gAisA_" role="3fr31v">
                <ref role="37wK5l" node="7lmP5gAgl97" resolve="ask" />
                <node concept="37vLTw" id="7lmP5gAitNz" role="37wK5m">
                  <ref role="3cqZAo" node="7lmP5gAglJi" resolve="invocation" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7lmP5gAiqRf" role="3clFbx">
              <node concept="3cpWs6" id="7lmP5gAiulz" role="3cqZAp">
                <node concept="2YIFZM" id="7lmP5gAiul$" role="3cqZAk">
                  <ref role="37wK5l" to="w7la:~Solver$Result.FAIL(java.lang.String)" resolve="FAIL" />
                  <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
                  <node concept="Xl_RD" id="7lmP5gAiul_" role="37wK5m">
                    <property role="Xl_RC" value="term ground state is inconsistent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7lmP5gAiwDr" role="3cqZAp">
            <node concept="2YIFZM" id="7lmP5gAiwDs" role="3clFbG">
              <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
              <ref role="37wK5l" to="w7la:~Solver$Result.OK()" resolve="OK" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7lmP5gAglJl" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="7lmP5gAgkLh" role="jymVt" />
      <node concept="3clFb_" id="7lmP5gAgmBc" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="doAsk" />
        <node concept="37vLTG" id="7lmP5gAgmBd" role="3clF46">
          <property role="TrG5h" value="logical" />
          <node concept="3uibUv" id="7lmP5gAgmBe" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
            <node concept="3qTvmN" id="7lmP5gAgmBf" role="11_B2D" />
          </node>
        </node>
        <node concept="10P_77" id="7lmP5gAgmBg" role="3clF45" />
        <node concept="3Tmbuc" id="7lmP5gAgmBh" role="1B3o_S" />
        <node concept="3clFbS" id="7lmP5gAgmBi" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="7lmP5gAgnk2" role="jymVt" />
      <node concept="3clFb_" id="7lmP5gAgn8x" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="doAsk" />
        <node concept="37vLTG" id="7lmP5gAgn8y" role="3clF46">
          <property role="TrG5h" value="dataForm" />
          <node concept="3uibUv" id="7lmP5gAip9z" role="1tU5fm">
            <ref role="3uigEE" to="cof4:1bm7a6EXvsP" resolve="DataForm" />
          </node>
        </node>
        <node concept="10P_77" id="7lmP5gAgn8_" role="3clF45" />
        <node concept="3Tmbuc" id="7lmP5gAgn8A" role="1B3o_S" />
        <node concept="3clFbS" id="7lmP5gAgn8B" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="7lmP5gAgmwU" role="jymVt" />
      <node concept="312cEu" id="7lmP5gAgo5p" role="jymVt">
        <property role="TrG5h" value="Ground" />
        <node concept="3Tm1VV" id="7lmP5gAgo5q" role="1B3o_S" />
        <node concept="3uibUv" id="7lmP5gAgovV" role="1zkMxy">
          <ref role="3uigEE" node="7lmP5gAgkAH" resolve="TermPredicate.TermSolver" />
        </node>
        <node concept="3clFb_" id="7lmP5gAgoAN" role="jymVt">
          <property role="TrG5h" value="doAsk" />
          <node concept="37vLTG" id="7lmP5gAgoAO" role="3clF46">
            <property role="TrG5h" value="logical" />
            <node concept="3uibUv" id="7lmP5gAgoAP" role="1tU5fm">
              <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
              <node concept="3qTvmN" id="7lmP5gAgoAQ" role="11_B2D" />
            </node>
          </node>
          <node concept="10P_77" id="7lmP5gAgoAR" role="3clF45" />
          <node concept="3Tmbuc" id="7lmP5gAgoAS" role="1B3o_S" />
          <node concept="3clFbS" id="7lmP5gAgoAU" role="3clF47">
            <node concept="3clFbJ" id="7lmP5gAg$Lq" role="3cqZAp">
              <node concept="2OqwBi" id="7lmP5gAg_5J" role="3clFbw">
                <node concept="37vLTw" id="7lmP5gAg$Ts" role="2Oq$k0">
                  <ref role="3cqZAo" node="7lmP5gAgoAO" resolve="logical" />
                </node>
                <node concept="liA8E" id="7lmP5gAg_rJ" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                </node>
              </node>
              <node concept="3clFbS" id="7lmP5gAg$Ls" role="3clFbx">
                <node concept="3cpWs8" id="7lmP5gAgBdA" role="3cqZAp">
                  <node concept="3cpWsn" id="7lmP5gAgBdB" role="3cpWs9">
                    <property role="TrG5h" value="value" />
                    <node concept="3uibUv" id="7lmP5gAgBd_" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="2OqwBi" id="7lmP5gAgBdC" role="33vP2m">
                      <node concept="2OqwBi" id="7lmP5gAgBdD" role="2Oq$k0">
                        <node concept="37vLTw" id="7lmP5gAgBdE" role="2Oq$k0">
                          <ref role="3cqZAo" node="7lmP5gAgoAO" resolve="logical" />
                        </node>
                        <node concept="liA8E" id="7lmP5gAgBdF" role="2OqNvi">
                          <ref role="37wK5l" to="bj13:~Logical.findRoot()" resolve="findRoot" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7lmP5gAgBdG" role="2OqNvi">
                        <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7lmP5gAgCf9" role="3cqZAp">
                  <node concept="3clFbS" id="7lmP5gAgCfq" role="3clFbx">
                    <node concept="3cpWs6" id="7lmP5gAgCq2" role="3cqZAp">
                      <node concept="1rXfSq" id="7lmP5gAgCHY" role="3cqZAk">
                        <ref role="37wK5l" node="7lmP5gAgoAY" resolve="doAsk" />
                        <node concept="1eOMI4" id="7lmP5gAgD4I" role="37wK5m">
                          <node concept="10QFUN" id="7lmP5gAgD4H" role="1eOMHV">
                            <node concept="37vLTw" id="7lmP5gAgD4G" role="10QFUP">
                              <ref role="3cqZAo" node="7lmP5gAgBdB" resolve="value" />
                            </node>
                            <node concept="3uibUv" id="7lmP5gAiiu5" role="10QFUM">
                              <ref role="3uigEE" to="cof4:1bm7a6EXvsP" resolve="DataForm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="7lmP5gAgBRi" role="3clFbw">
                    <node concept="3uibUv" id="7lmP5gAihFJ" role="2ZW6by">
                      <ref role="3uigEE" to="cof4:1bm7a6EXvsP" resolve="DataForm" />
                    </node>
                    <node concept="37vLTw" id="7lmP5gAgBdH" role="2ZW6bz">
                      <ref role="3cqZAo" node="7lmP5gAgBdB" resolve="value" />
                    </node>
                  </node>
                </node>
                <node concept="YS8fn" id="7lmP5gAgE14" role="3cqZAp">
                  <node concept="2ShNRf" id="7lmP5gAgEcA" role="YScLw">
                    <node concept="1pGfFk" id="7lmP5gAgEPn" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                      <node concept="Xl_RD" id="7lmP5gAgF3j" role="37wK5m">
                        <property role="Xl_RC" value="term is expected" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7lmP5gAg_Yv" role="3cqZAp">
              <node concept="3clFbT" id="7lmP5gAg_Z_" role="3cqZAk" />
            </node>
          </node>
          <node concept="2AHcQZ" id="7lmP5gAgoAV" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="2tJIrI" id="7lmP5gAg$uC" role="jymVt" />
        <node concept="3clFb_" id="7lmP5gAgoAY" role="jymVt">
          <property role="TrG5h" value="doAsk" />
          <node concept="37vLTG" id="7lmP5gAgoAZ" role="3clF46">
            <property role="TrG5h" value="dataForm" />
            <node concept="3uibUv" id="7lmP5gAij10" role="1tU5fm">
              <ref role="3uigEE" to="cof4:1bm7a6EXvsP" resolve="DataForm" />
            </node>
          </node>
          <node concept="10P_77" id="7lmP5gAgoB1" role="3clF45" />
          <node concept="3Tmbuc" id="7lmP5gAgoB2" role="1B3o_S" />
          <node concept="3clFbS" id="7lmP5gAgoB4" role="3clF47">
            <node concept="3clFbF" id="7lmP5gAifKD" role="3cqZAp">
              <node concept="2OqwBi" id="7lmP5gAil7b" role="3clFbG">
                <node concept="2YIFZM" id="7lmP5gAigr7" role="2Oq$k0">
                  <ref role="37wK5l" to="cof4:7lmP5gAhuVX" resolve="freeVariables" />
                  <ref role="1Pybhc" to="cof4:7lmP5gAhjKr" resolve="FreeVariablesFinder" />
                  <node concept="37vLTw" id="7lmP5gAih7E" role="37wK5m">
                    <ref role="3cqZAo" node="7lmP5gAgoAZ" resolve="dataForm" />
                  </node>
                </node>
                <node concept="1v1jN8" id="7lmP5gAinAr" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="7lmP5gAgoB5" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7lmP5gAgGXk" role="jymVt" />
      <node concept="312cEu" id="7lmP5gAgFzF" role="jymVt">
        <property role="TrG5h" value="Nonground" />
        <node concept="3Tm1VV" id="7lmP5gAgFzG" role="1B3o_S" />
        <node concept="3uibUv" id="7lmP5gAgFzH" role="1zkMxy">
          <ref role="3uigEE" node="7lmP5gAgkAH" resolve="TermPredicate.TermSolver" />
        </node>
        <node concept="3clFb_" id="7lmP5gAgFzI" role="jymVt">
          <property role="TrG5h" value="doAsk" />
          <node concept="37vLTG" id="7lmP5gAgFzJ" role="3clF46">
            <property role="TrG5h" value="logical" />
            <node concept="3uibUv" id="7lmP5gAgFzK" role="1tU5fm">
              <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
              <node concept="3qTvmN" id="7lmP5gAgFzL" role="11_B2D" />
            </node>
          </node>
          <node concept="10P_77" id="7lmP5gAgFzM" role="3clF45" />
          <node concept="3Tmbuc" id="7lmP5gAgFzN" role="1B3o_S" />
          <node concept="3clFbS" id="7lmP5gAgFzO" role="3clF47">
            <node concept="3clFbJ" id="7lmP5gAgFzP" role="3cqZAp">
              <node concept="3fqX7Q" id="7lmP5gAgHpQ" role="3clFbw">
                <node concept="2OqwBi" id="7lmP5gAgHpS" role="3fr31v">
                  <node concept="37vLTw" id="7lmP5gAgHpT" role="2Oq$k0">
                    <ref role="3cqZAo" node="7lmP5gAgFzJ" resolve="logical" />
                  </node>
                  <node concept="liA8E" id="7lmP5gAgHpU" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~Logical.isBound()" resolve="isBound" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7lmP5gAgFzT" role="3clFbx">
                <node concept="3cpWs6" id="7lmP5gAgIE4" role="3cqZAp">
                  <node concept="3clFbT" id="7lmP5gAgISk" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
                <node concept="3clFbH" id="7lmP5gAgJjo" role="3cqZAp" />
              </node>
              <node concept="9aQIb" id="7lmP5gAgHEk" role="9aQIa">
                <node concept="3clFbS" id="7lmP5gAgHEl" role="9aQI4">
                  <node concept="3cpWs8" id="7lmP5gAgFzU" role="3cqZAp">
                    <node concept="3cpWsn" id="7lmP5gAgFzV" role="3cpWs9">
                      <property role="TrG5h" value="value" />
                      <node concept="3uibUv" id="7lmP5gAgFzW" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                      <node concept="2OqwBi" id="7lmP5gAgFzX" role="33vP2m">
                        <node concept="2OqwBi" id="7lmP5gAgFzY" role="2Oq$k0">
                          <node concept="37vLTw" id="7lmP5gAgFzZ" role="2Oq$k0">
                            <ref role="3cqZAo" node="7lmP5gAgFzJ" resolve="logical" />
                          </node>
                          <node concept="liA8E" id="7lmP5gAgF$0" role="2OqNvi">
                            <ref role="37wK5l" to="bj13:~Logical.findRoot()" resolve="findRoot" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7lmP5gAgF$1" role="2OqNvi">
                          <ref role="37wK5l" to="bj13:~Logical.value()" resolve="value" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="7lmP5gAgF$2" role="3cqZAp">
                    <node concept="3clFbS" id="7lmP5gAgF$3" role="3clFbx">
                      <node concept="3cpWs6" id="7lmP5gAgF$4" role="3cqZAp">
                        <node concept="1rXfSq" id="7lmP5gAgF$5" role="3cqZAk">
                          <ref role="37wK5l" node="7lmP5gAgF$l" resolve="doAsk" />
                          <node concept="1eOMI4" id="7lmP5gAgF$6" role="37wK5m">
                            <node concept="10QFUN" id="7lmP5gAgF$7" role="1eOMHV">
                              <node concept="37vLTw" id="7lmP5gAgF$8" role="10QFUP">
                                <ref role="3cqZAo" node="7lmP5gAgFzV" resolve="value" />
                              </node>
                              <node concept="3uibUv" id="7lmP5gAizLw" role="10QFUM">
                                <ref role="3uigEE" to="cof4:1bm7a6EXvsP" resolve="DataForm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2ZW3vV" id="7lmP5gAgF$a" role="3clFbw">
                      <node concept="3uibUv" id="7lmP5gAiz2R" role="2ZW6by">
                        <ref role="3uigEE" to="cof4:1bm7a6EXvsP" resolve="DataForm" />
                      </node>
                      <node concept="37vLTw" id="7lmP5gAgF$c" role="2ZW6bz">
                        <ref role="3cqZAo" node="7lmP5gAgFzV" resolve="value" />
                      </node>
                    </node>
                  </node>
                  <node concept="YS8fn" id="7lmP5gAgF$d" role="3cqZAp">
                    <node concept="2ShNRf" id="7lmP5gAgF$e" role="YScLw">
                      <node concept="1pGfFk" id="7lmP5gAgF$f" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                        <node concept="Xl_RD" id="7lmP5gAgF$g" role="37wK5m">
                          <property role="Xl_RC" value="term is expected" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="7lmP5gAgF$j" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="2tJIrI" id="7lmP5gAgF$k" role="jymVt" />
        <node concept="3clFb_" id="7lmP5gAgF$l" role="jymVt">
          <property role="TrG5h" value="doAsk" />
          <node concept="37vLTG" id="7lmP5gAgF$m" role="3clF46">
            <property role="TrG5h" value="dataForm" />
            <node concept="3uibUv" id="7lmP5gAi$QN" role="1tU5fm">
              <ref role="3uigEE" to="cof4:1bm7a6EXvsP" resolve="DataForm" />
            </node>
          </node>
          <node concept="10P_77" id="7lmP5gAgF$o" role="3clF45" />
          <node concept="3Tmbuc" id="7lmP5gAgF$p" role="1B3o_S" />
          <node concept="3clFbS" id="7lmP5gAgF$q" role="3clF47">
            <node concept="3clFbF" id="7lmP5gAiAJQ" role="3cqZAp">
              <node concept="2OqwBi" id="7lmP5gAiAJR" role="3clFbG">
                <node concept="2YIFZM" id="7lmP5gAiAJS" role="2Oq$k0">
                  <ref role="37wK5l" to="cof4:7lmP5gAhuVX" resolve="freeVariables" />
                  <ref role="1Pybhc" to="cof4:7lmP5gAhjKr" resolve="FreeVariablesFinder" />
                  <node concept="37vLTw" id="7lmP5gAiAJT" role="37wK5m">
                    <ref role="3cqZAo" node="7lmP5gAgF$m" resolve="dataForm" />
                  </node>
                </node>
                <node concept="3GX2aA" id="7lmP5gAiBRO" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="7lmP5gAgF$t" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7lmP5gAgnYy" role="jymVt" />
      <node concept="3Tm1VV" id="7lmP5gAgkAI" role="1B3o_S" />
      <node concept="3uibUv" id="7lmP5gAgkQy" role="EKbjA">
        <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="FQ_DIqWkm2">
    <property role="TrG5h" value="TemplateTracePredicate" />
    <node concept="2tJIrI" id="FQ_DIqWkm3" role="jymVt" />
    <node concept="3clFbW" id="FQ_DIqWkm4" role="jymVt">
      <node concept="37vLTG" id="FQ_DIqWkm5" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="3uibUv" id="FQ_DIqWkm6" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="FQ_DIqWkm9" role="3clF46">
        <property role="TrG5h" value="template" />
        <node concept="3uibUv" id="FQ_DIqWkma" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="FQ_DIqWkmd" role="3clF45" />
      <node concept="3Tm1VV" id="FQ_DIqWkme" role="1B3o_S" />
      <node concept="3clFbS" id="FQ_DIqWkmf" role="3clF47">
        <node concept="XkiVB" id="FQ_DIqWkmg" role="3cqZAp">
          <ref role="37wK5l" node="6Kcfpq7B1f7" resolve="AbstractPredicate" />
          <node concept="37vLTw" id="FQ_DIqWkmh" role="37wK5m">
            <ref role="3cqZAo" node="FQ_DIqWkm5" resolve="message" />
          </node>
          <node concept="37vLTw" id="FQ_DIqWkmj" role="37wK5m">
            <ref role="3cqZAo" node="FQ_DIqWkm9" resolve="template" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="FQ_DIqWkml" role="jymVt" />
    <node concept="3clFb_" id="FQ_DIqWkmm" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="FQ_DIqWkmn" role="1B3o_S" />
      <node concept="3uibUv" id="FQ_DIqWkmo" role="3clF45">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="3clFbS" id="FQ_DIqWkmp" role="3clF47">
        <node concept="3clFbF" id="FQ_DIqWkmq" role="3cqZAp">
          <node concept="37vLTw" id="FQ_DIqWkmr" role="3clFbG">
            <ref role="3cqZAo" node="FQ_DIqWkmy" resolve="FEEDBACK_SYM" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="FQ_DIqWkms" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="FQ_DIqWkmt" role="jymVt" />
    <node concept="Wx3nA" id="FQ_DIqWkmu" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="TRACE" />
      <node concept="3Tm1VV" id="FQ_DIqWkmv" role="1B3o_S" />
      <node concept="17QB3L" id="FQ_DIqWkmw" role="1tU5fm" />
      <node concept="Xl_RD" id="FQ_DIqWkmx" role="33vP2m">
        <property role="Xl_RC" value="trace" />
      </node>
    </node>
    <node concept="Wx3nA" id="FQ_DIqWkmy" role="jymVt">
      <property role="TrG5h" value="TRACE_SYM" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="FQ_DIqWkmz" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="3Tm1VV" id="FQ_DIqWkm$" role="1B3o_S" />
      <node concept="2ShNRf" id="FQ_DIqWkm_" role="33vP2m">
        <node concept="YeOm9" id="FQ_DIqWkmA" role="2ShVmc">
          <node concept="1Y3b0j" id="FQ_DIqWkmB" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="7lt0LtQvaw_" resolve="PredicateSymbolExt" />
            <ref role="37wK5l" node="7lt0LtQva_c" resolve="PredicateSymbolExt" />
            <node concept="37vLTw" id="FQ_DIqWkmC" role="37wK5m">
              <ref role="3cqZAo" node="FQ_DIqWkmu" resolve="FEEDBACK" />
            </node>
            <node concept="3cmrfG" id="FQ_DIqWkmD" role="37wK5m">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="3Tm1VV" id="FQ_DIqWkmE" role="1B3o_S" />
            <node concept="3clFb_" id="FQ_DIqWkmF" role="jymVt">
              <property role="TrG5h" value="solver" />
              <property role="1EzhhJ" value="false" />
              <node concept="3uibUv" id="FQ_DIqWkmG" role="3clF45">
                <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
              </node>
              <node concept="3Tm1VV" id="FQ_DIqWkmH" role="1B3o_S" />
              <node concept="3clFbS" id="FQ_DIqWkmI" role="3clF47">
                <node concept="3clFbF" id="FQ_DIqWkmJ" role="3cqZAp">
                  <node concept="2ShNRf" id="FQ_DIqWkmK" role="3clFbG">
                    <node concept="HV5vD" id="FQ_DIqWkmL" role="2ShVmc">
                      <ref role="HV5vE" node="FQ_DIqWkn9" resolve="TemplateTraceSolver" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="FQ_DIqWkmM" role="jymVt">
              <property role="TrG5h" value="predicate" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="FQ_DIqWkmN" role="3clF46">
                <property role="TrG5h" value="args" />
                <node concept="8X2XB" id="FQ_DIqWkmO" role="1tU5fm">
                  <node concept="3uibUv" id="FQ_DIqWkmP" role="8Xvag">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="FQ_DIqWkmQ" role="3clF45">
                <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
              </node>
              <node concept="3Tm1VV" id="FQ_DIqWkmR" role="1B3o_S" />
              <node concept="3clFbS" id="FQ_DIqWkmS" role="3clF47">
                <node concept="3clFbF" id="FQ_DIqWkmT" role="3cqZAp">
                  <node concept="2ShNRf" id="FQ_DIqWkmU" role="3clFbG">
                    <node concept="1pGfFk" id="FQ_DIqWkmV" role="2ShVmc">
                      <ref role="37wK5l" node="FQ_DIqWkm4" resolve="ProvideFeedbackPredicate" />
                      <node concept="AH0OO" id="FQ_DIqWkmW" role="37wK5m">
                        <node concept="3cmrfG" id="FQ_DIqWkmX" role="AHEQo">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="FQ_DIqWkmY" role="AHHXb">
                          <ref role="3cqZAo" node="FQ_DIqWkmN" resolve="args" />
                        </node>
                      </node>
                      <node concept="AH0OO" id="FQ_DIqWkmZ" role="37wK5m">
                        <node concept="3cmrfG" id="FQ_DIqWkn0" role="AHEQo">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="FQ_DIqWkn1" role="AHHXb">
                          <ref role="3cqZAo" node="FQ_DIqWkmN" resolve="args" />
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
    <node concept="2tJIrI" id="FQ_DIqWkn8" role="jymVt" />
    <node concept="312cEu" id="FQ_DIqWkn9" role="jymVt">
      <property role="TrG5h" value="TemplateTraceSolver" />
      <node concept="2tJIrI" id="FQ_DIqWkna" role="jymVt" />
      <node concept="3clFb_" id="FQ_DIqWknb" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="ask" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="FQ_DIqWknc" role="1B3o_S" />
        <node concept="10P_77" id="FQ_DIqWknd" role="3clF45" />
        <node concept="37vLTG" id="FQ_DIqWkne" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="FQ_DIqWknf" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3clFbS" id="FQ_DIqWkng" role="3clF47">
          <node concept="YS8fn" id="FQ_DIqWknh" role="3cqZAp">
            <node concept="2ShNRf" id="FQ_DIqWkni" role="YScLw">
              <node concept="1pGfFk" id="FQ_DIqWknj" role="2ShVmc">
                <ref role="37wK5l" to="w7la:~EvaluationFailureException.&lt;init&gt;(java.lang.String)" resolve="EvaluationFailureException" />
                <node concept="3cpWs3" id="FQ_DIqWknk" role="37wK5m">
                  <node concept="Xl_RD" id="FQ_DIqWknl" role="3uHU7B">
                    <property role="Xl_RC" value="ask not applicable to " />
                  </node>
                  <node concept="2OqwBi" id="FQ_DIqWknm" role="3uHU7w">
                    <node concept="2OqwBi" id="FQ_DIqWknn" role="2Oq$k0">
                      <node concept="37vLTw" id="FQ_DIqWkno" role="2Oq$k0">
                        <ref role="3cqZAo" node="FQ_DIqWkne" resolve="invocation" />
                      </node>
                      <node concept="liA8E" id="FQ_DIqWknp" role="2OqNvi">
                        <ref role="37wK5l" to="w7la:~PredicateInvocation.predicate()" resolve="predicate" />
                      </node>
                    </node>
                    <node concept="liA8E" id="FQ_DIqWknq" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~Predicate.symbol()" resolve="symbol" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="FQ_DIqWknr" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="FQ_DIqWkns" role="jymVt" />
      <node concept="3clFb_" id="FQ_DIqWknt" role="jymVt">
        <property role="TrG5h" value="tell" />
        <node concept="3Tm1VV" id="FQ_DIqWknu" role="1B3o_S" />
        <node concept="3cqZAl" id="FQ_DIqWknv" role="3clF45" />
        <node concept="37vLTG" id="FQ_DIqWknw" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="FQ_DIqWknx" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3clFbS" id="FQ_DIqWkny" role="3clF47">
          <node concept="YS8fn" id="FQ_DIqWknz" role="3cqZAp">
            <node concept="2ShNRf" id="FQ_DIqWkn$" role="YScLw">
              <node concept="1pGfFk" id="FQ_DIqWkn_" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="FQ_DIqWknA" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="FQ_DIqWknB" role="jymVt" />
      <node concept="3clFb_" id="FQ_DIqWknC" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="tryTell" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="FQ_DIqWknD" role="1B3o_S" />
        <node concept="3uibUv" id="FQ_DIqWknE" role="3clF45">
          <ref role="3uigEE" to="w7la:~Solver$Result" resolve="Solver.Result" />
        </node>
        <node concept="37vLTG" id="FQ_DIqWknF" role="3clF46">
          <property role="TrG5h" value="invocation" />
          <node concept="3uibUv" id="FQ_DIqWknG" role="1tU5fm">
            <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
          </node>
        </node>
        <node concept="3clFbS" id="FQ_DIqWknH" role="3clF47">
          <node concept="3clFbJ" id="FQ_DIqWknI" role="3cqZAp">
            <node concept="3clFbS" id="FQ_DIqWknJ" role="3clFbx">
              <node concept="YS8fn" id="FQ_DIqWknK" role="3cqZAp">
                <node concept="2ShNRf" id="FQ_DIqWknL" role="YScLw">
                  <node concept="1pGfFk" id="FQ_DIqWknM" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="FQ_DIqWknN" role="3clFbw">
              <node concept="1eOMI4" id="FQ_DIqWknO" role="3fr31v">
                <node concept="2ZW3vV" id="FQ_DIqWknP" role="1eOMHV">
                  <node concept="3uibUv" id="FQ_DIqWknQ" role="2ZW6by">
                    <ref role="3uigEE" node="FQ_DIqWkm2" resolve="ProvideFeedbackPredicate" />
                  </node>
                  <node concept="2OqwBi" id="FQ_DIqWknR" role="2ZW6bz">
                    <node concept="37vLTw" id="FQ_DIqWknS" role="2Oq$k0">
                      <ref role="3cqZAo" node="FQ_DIqWknF" resolve="invocation" />
                    </node>
                    <node concept="liA8E" id="FQ_DIqWknT" role="2OqNvi">
                      <ref role="37wK5l" to="w7la:~PredicateInvocation.predicate()" resolve="predicate" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1X3_iC" id="FQ_DIqWM7P" role="lGtFl">
            <property role="3V$3am" value="statement" />
            <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
            <node concept="3cpWs8" id="FQ_DIqWknU" role="8Wnug">
              <node concept="3cpWsn" id="FQ_DIqWknV" role="3cpWs9">
                <property role="TrG5h" value="msg" />
                <node concept="3uibUv" id="FQ_DIqWknW" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2YIFZM" id="FQ_DIqWknX" role="33vP2m">
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <ref role="37wK5l" to="wyt6:~String.valueOf(char[])" resolve="valueOf" />
                  <node concept="2OqwBi" id="FQ_DIqWknY" role="37wK5m">
                    <node concept="2OqwBi" id="FQ_DIqWknZ" role="2Oq$k0">
                      <node concept="37vLTw" id="FQ_DIqWko0" role="2Oq$k0">
                        <ref role="3cqZAo" node="FQ_DIqWknF" resolve="invocation" />
                      </node>
                      <node concept="liA8E" id="FQ_DIqWko1" role="2OqNvi">
                        <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments()" resolve="arguments" />
                      </node>
                    </node>
                    <node concept="liA8E" id="FQ_DIqWko2" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="3cmrfG" id="FQ_DIqWko3" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1X3_iC" id="FQ_DIqWM7Q" role="lGtFl">
            <property role="3V$3am" value="statement" />
            <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
            <node concept="3cpWs8" id="FQ_DIqWkoe" role="8Wnug">
              <node concept="3cpWsn" id="FQ_DIqWkof" role="3cpWs9">
                <property role="TrG5h" value="template" />
                <node concept="3uibUv" id="FQ_DIqWkog" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="2OqwBi" id="FQ_DIqWkoh" role="33vP2m">
                  <node concept="2OqwBi" id="FQ_DIqWkoi" role="2Oq$k0">
                    <node concept="37vLTw" id="FQ_DIqWkoj" role="2Oq$k0">
                      <ref role="3cqZAo" node="FQ_DIqWknF" resolve="invocation" />
                    </node>
                    <node concept="liA8E" id="FQ_DIqWkok" role="2OqNvi">
                      <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments()" resolve="arguments" />
                    </node>
                  </node>
                  <node concept="liA8E" id="FQ_DIqWkol" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="3cmrfG" id="FQ_DIqWkom" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1X3_iC" id="FQ_DIqWM7R" role="lGtFl">
            <property role="3V$3am" value="statement" />
            <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
            <node concept="3cpWs8" id="FQ_DIqWkon" role="8Wnug">
              <node concept="3cpWsn" id="FQ_DIqWkoo" role="3cpWs9">
                <property role="TrG5h" value="templateRef" />
                <node concept="3uibUv" id="FQ_DIqWkop" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
                <node concept="10Nm6u" id="FQ_DIqWkoq" role="33vP2m" />
              </node>
            </node>
          </node>
          <node concept="1X3_iC" id="FQ_DIqWM7S" role="lGtFl">
            <property role="3V$3am" value="statement" />
            <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
            <node concept="3clFbJ" id="FQ_DIqWkor" role="8Wnug">
              <node concept="3clFbS" id="FQ_DIqWkos" role="3clFbx">
                <node concept="3clFbF" id="FQ_DIqWkot" role="3cqZAp">
                  <node concept="37vLTI" id="FQ_DIqWkou" role="3clFbG">
                    <node concept="1eOMI4" id="FQ_DIqWkov" role="37vLTx">
                      <node concept="10QFUN" id="FQ_DIqWkow" role="1eOMHV">
                        <node concept="3uibUv" id="FQ_DIqWkox" role="10QFUM">
                          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                        </node>
                        <node concept="37vLTw" id="FQ_DIqWkoy" role="10QFUP">
                          <ref role="3cqZAo" node="FQ_DIqWkof" resolve="template" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="FQ_DIqWkoz" role="37vLTJ">
                      <ref role="3cqZAo" node="FQ_DIqWkoo" resolve="templateRef" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="FQ_DIqWko$" role="3cqZAp" />
              </node>
              <node concept="2ZW3vV" id="FQ_DIqWko_" role="3clFbw">
                <node concept="3uibUv" id="FQ_DIqWkoA" role="2ZW6by">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
                <node concept="37vLTw" id="FQ_DIqWkoB" role="2ZW6bz">
                  <ref role="3cqZAo" node="FQ_DIqWkof" resolve="template" />
                </node>
              </node>
              <node concept="3eNFk2" id="FQ_DIqWkoC" role="3eNLev">
                <node concept="2ZW3vV" id="FQ_DIqWkoD" role="3eO9$A">
                  <node concept="3uibUv" id="FQ_DIqWkoE" role="2ZW6by">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                  <node concept="37vLTw" id="FQ_DIqWkoF" role="2ZW6bz">
                    <ref role="3cqZAo" node="FQ_DIqWkof" resolve="template" />
                  </node>
                </node>
                <node concept="3clFbS" id="FQ_DIqWkoG" role="3eOfB_">
                  <node concept="3clFbF" id="FQ_DIqWkoH" role="3cqZAp">
                    <node concept="37vLTI" id="FQ_DIqWkoI" role="3clFbG">
                      <node concept="37vLTw" id="FQ_DIqWkoJ" role="37vLTJ">
                        <ref role="3cqZAo" node="FQ_DIqWkoo" resolve="templateRef" />
                      </node>
                      <node concept="2YIFZM" id="FQ_DIqWkoK" role="37vLTx">
                        <ref role="1Pybhc" to="w1kc:~SNodePointer" resolve="SNodePointer" />
                        <ref role="37wK5l" to="w1kc:~SNodePointer.deserialize(java.lang.String)" resolve="deserialize" />
                        <node concept="2YIFZM" id="FQ_DIqWkoL" role="37wK5m">
                          <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                          <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                          <node concept="37vLTw" id="FQ_DIqWkoM" role="37wK5m">
                            <ref role="3cqZAo" node="FQ_DIqWkof" resolve="template" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="FQ_DIqWkpV" role="3cqZAp">
            <node concept="2YIFZM" id="FQ_DIqWkpW" role="3clFbG">
              <ref role="37wK5l" to="w7la:~Solver$Result.OK()" resolve="OK" />
              <ref role="1Pybhc" to="w7la:~Solver$Result" resolve="Solver.Result" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="FQ_DIqWkpX" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="FQ_DIqWkpY" role="jymVt" />
      <node concept="3Tm1VV" id="FQ_DIqWkpZ" role="1B3o_S" />
      <node concept="3uibUv" id="FQ_DIqWkq0" role="EKbjA">
        <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
      </node>
    </node>
    <node concept="2tJIrI" id="FQ_DIqWkq1" role="jymVt" />
    <node concept="3Tm1VV" id="FQ_DIqWkq2" role="1B3o_S" />
    <node concept="3uibUv" id="FQ_DIqWkq3" role="1zkMxy">
      <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
    </node>
  </node>
</model>

