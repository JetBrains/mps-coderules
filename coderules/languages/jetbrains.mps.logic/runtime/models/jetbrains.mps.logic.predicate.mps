<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:daa544a7-0a5c-49c0-a54c-4c2a5b4868aa(jetbrains.mps.logic.predicate)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
  </languages>
  <imports>
    <import index="av0y" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.program(jetbrains.mps.logic.reactor/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="bj13" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.logical(jetbrains.mps.logic.reactor/)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.unification)" />
    <import index="yt73" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.unification(jetbrains.mps.logic.reactor/)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.dataform)" />
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
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
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
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
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
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
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
  </registry>
  <node concept="312cEu" id="6Kcfpq7B0Wu">
    <property role="TrG5h" value="AbstractPredicate" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="6Kcfpq7B16q" role="jymVt" />
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
    <node concept="3Tm1VV" id="6Kcfpq7B0Wv" role="1B3o_S" />
    <node concept="3clFb_" id="5uFPQ7BZhBG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="arguments" />
      <node concept="3Tm1VV" id="5uFPQ7BZhBJ" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7BZhBL" role="3clF47">
        <node concept="3clFbF" id="5uFPQ7BZjve" role="3cqZAp">
          <node concept="2YIFZM" id="5uFPQ7BZjxZ" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="2YIFZM" id="5uFPQ7BZjDb" role="37wK5m">
              <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
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
              <ref role="37wK5l" to="av0y:~Predicate.symbol():jetbrains.mps.logic.reactor.program.PredicateSymbol" resolve="symbol" />
            </node>
            <node concept="liA8E" id="5uFPQ7BZfHQ" role="2OqNvi">
              <ref role="37wK5l" to="av0y:~PredicateSymbol.toString():java.lang.String" resolve="toString" />
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
                  <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                </node>
              </node>
              <node concept="2OqwBi" id="6Kcfpq7B2Wr" role="3uHU7w">
                <node concept="37vLTw" id="6Kcfpq7B2Ws" role="2Oq$k0">
                  <ref role="3cqZAo" node="6Kcfpq7B2W_" resolve="o" />
                </node>
                <node concept="liA8E" id="6Kcfpq7B2Wt" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
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
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="2OqwBi" id="6Kcfpq7B2WR" role="37wK5m">
                    <node concept="37vLTw" id="6Kcfpq7B2WC" role="2Oq$k0">
                      <ref role="3cqZAo" node="6Kcfpq7B2Ww" resolve="that" />
                    </node>
                    <node concept="liA8E" id="7ISVfSJor9" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~Predicate.symbol():jetbrains.mps.logic.reactor.program.PredicateSymbol" resolve="symbol" />
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="6Kcfpq7B2WS" role="2Oq$k0">
                  <node concept="10QFUN" id="6Kcfpq7B2WT" role="1eOMHV">
                    <node concept="3uibUv" id="6Kcfpq7B2WU" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="1rXfSq" id="7ISVfSJomP" role="10QFUP">
                      <ref role="37wK5l" to="av0y:~Predicate.symbol():jetbrains.mps.logic.reactor.program.PredicateSymbol" resolve="symbol" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="6Kcfpq7B2WV" role="3K4Cdx">
              <node concept="10Nm6u" id="6Kcfpq7B2WW" role="3uHU7w" />
              <node concept="1rXfSq" id="7ISVfSJojN" role="3uHU7B">
                <ref role="37wK5l" to="av0y:~Predicate.symbol():jetbrains.mps.logic.reactor.program.PredicateSymbol" resolve="symbol" />
              </node>
            </node>
            <node concept="3y3z36" id="6Kcfpq7B2WX" role="3K4GZi">
              <node concept="10Nm6u" id="6Kcfpq7B2WY" role="3uHU7w" />
              <node concept="2OqwBi" id="6Kcfpq7B2WZ" role="3uHU7B">
                <node concept="37vLTw" id="6Kcfpq7B2X0" role="2Oq$k0">
                  <ref role="3cqZAo" node="6Kcfpq7B2Ww" resolve="that" />
                </node>
                <node concept="liA8E" id="7ISVfSJots" role="2OqNvi">
                  <ref role="37wK5l" to="av0y:~Predicate.symbol():jetbrains.mps.logic.reactor.program.PredicateSymbol" resolve="symbol" />
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
                      <ref role="37wK5l" to="av0y:~Predicate.symbol():jetbrains.mps.logic.reactor.program.PredicateSymbol" resolve="symbol" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6Kcfpq7B2Xv" role="3K4E3e">
                    <node concept="2YIFZM" id="6Kcfpq7B2Xw" role="2Oq$k0">
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                      <node concept="1rXfSq" id="7ISVfSJoy$" role="37wK5m">
                        <ref role="37wK5l" to="av0y:~Predicate.symbol():jetbrains.mps.logic.reactor.program.PredicateSymbol" resolve="symbol" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6Kcfpq7B2Xx" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.hashCode():int" resolve="hashCode" />
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
            <node concept="3clFb_" id="7lt0LtQv_dR" role="jymVt">
              <property role="TrG5h" value="solver" />
              <property role="1EzhhJ" value="false" />
              <node concept="3uibUv" id="7lt0LtQv_dS" role="3clF45">
                <ref role="3uigEE" to="w7la:~AbstractSolver" resolve="AbstractSolver" />
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
            <node concept="3SKdUq" id="2rIdnPtNtf7" role="3SKWNk">
              <property role="3SKdUp" value="FIXME: logicalContext not used?" />
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
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="2UGjFq4m8A9" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
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
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="2UGjFq4m8Af" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
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
                        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                    <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                    <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                        <node concept="16syzq" id="2UGjFq4lTCT" role="11_B2D">
                          <ref role="16sUi3" node="2UGjFq4lWIN" resolve="TERM" />
                        </node>
                      </node>
                    </node>
                    <node concept="10QFUN" id="2UGjFq4lTCU" role="37wK5m">
                      <node concept="3uibUv" id="2UGjFq4lTCV" role="10QFUM">
                        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                    <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                  </node>
                  <node concept="37vLTw" id="2UGjFq4lTDp" role="2ZW6bz">
                    <ref role="3cqZAo" node="2UGjFq4lTDe" resolve="right" />
                  </node>
                </node>
                <node concept="2ZW3vV" id="2UGjFq4lTD3" role="3uHU7B">
                  <node concept="3uibUv" id="5cDlfXt7fd7" role="2ZW6by">
                    <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
          <node concept="3clFbF" id="2UGjFq4mjW$" role="3cqZAp">
            <node concept="1rXfSq" id="2UGjFq4mjW_" role="3clFbG">
              <ref role="37wK5l" node="2UGjFq4mbmq" resolve="doTell" />
              <node concept="2OqwBi" id="2UGjFq4mjWA" role="37wK5m">
                <node concept="2OqwBi" id="2UGjFq4mjWB" role="2Oq$k0">
                  <node concept="37vLTw" id="2UGjFq4mjWC" role="2Oq$k0">
                    <ref role="3cqZAo" node="2UGjFq4mhER" resolve="invocation" />
                  </node>
                  <node concept="liA8E" id="2UGjFq4mjWD" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="2UGjFq4mjWE" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                  <node concept="3cmrfG" id="2UGjFq4mjWF" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2UGjFq4mjWG" role="37wK5m">
                <node concept="2OqwBi" id="2UGjFq4mjWH" role="2Oq$k0">
                  <node concept="37vLTw" id="2UGjFq4mjWI" role="2Oq$k0">
                    <ref role="3cqZAo" node="2UGjFq4mhER" resolve="invocation" />
                  </node>
                  <node concept="liA8E" id="2UGjFq4mjWJ" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="2UGjFq4mjWK" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                  <node concept="3cmrfG" id="2UGjFq4mjWL" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
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
        <node concept="3cqZAl" id="2UGjFq4mbms" role="3clF45" />
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
              <node concept="3clFbF" id="5TfjU0x$Mm3" role="3cqZAp">
                <node concept="1rXfSq" id="5TfjU0x$Mm4" role="3clFbG">
                  <ref role="37wK5l" node="4U_yxogC05I" resolve="tellUni_logical_logical" />
                  <node concept="10QFUN" id="5TfjU0x$Mm5" role="37wK5m">
                    <node concept="37vLTw" id="5TfjU0x$Mm6" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4mbm4" resolve="left" />
                    </node>
                    <node concept="3uibUv" id="5TfjU0x$Mm7" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                      <node concept="16syzq" id="5TfjU0x_9T$" role="11_B2D">
                        <ref role="16sUi3" node="5TfjU0x_7hm" resolve="T" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="5TfjU0x$Mm9" role="37wK5m">
                    <node concept="3uibUv" id="5TfjU0x$Mma" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                  <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                </node>
                <node concept="37vLTw" id="5TfjU0x$Mmh" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4mbm6" resolve="right" />
                </node>
              </node>
              <node concept="2ZW3vV" id="5TfjU0x$Mmi" role="3uHU7B">
                <node concept="3uibUv" id="5TfjU0x$Mmj" role="2ZW6by">
                  <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                </node>
                <node concept="37vLTw" id="5TfjU0x$Mmk" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4mbm4" resolve="left" />
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="5TfjU0x$Mml" role="3eNLev">
              <node concept="3clFbS" id="5TfjU0x$Mmm" role="3eOfB_">
                <node concept="3clFbF" id="5TfjU0x$Mmn" role="3cqZAp">
                  <node concept="1rXfSq" id="5TfjU0x$Mmo" role="3clFbG">
                    <ref role="37wK5l" node="4U_yxogBZLB" resolve="tellUni_logical_val" />
                    <node concept="10QFUN" id="5TfjU0x$Mmp" role="37wK5m">
                      <node concept="37vLTw" id="5TfjU0x$Mmq" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4mbm4" resolve="left" />
                      </node>
                      <node concept="3uibUv" id="5TfjU0x$Mmr" role="10QFUM">
                        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                      </node>
                      <node concept="37vLTw" id="5TfjU0x$MmA" role="2ZW6bz">
                        <ref role="3cqZAo" node="2UGjFq4mbm6" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="5TfjU0x$MmB" role="3uHU7B">
                  <node concept="3uibUv" id="5TfjU0x$MmC" role="2ZW6by">
                    <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                  </node>
                  <node concept="37vLTw" id="5TfjU0x$MmD" role="2ZW6bz">
                    <ref role="3cqZAo" node="2UGjFq4mbm4" resolve="left" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="5TfjU0x$MmE" role="3eNLev">
              <node concept="3clFbS" id="5TfjU0x$MmF" role="3eOfB_">
                <node concept="3clFbF" id="5TfjU0x$MmG" role="3cqZAp">
                  <node concept="1rXfSq" id="5TfjU0x$MmH" role="3clFbG">
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
                        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                    <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                  </node>
                  <node concept="37vLTw" id="5TfjU0x$MmT" role="2ZW6bz">
                    <ref role="3cqZAo" node="2UGjFq4mbm6" resolve="right" />
                  </node>
                </node>
                <node concept="3fqX7Q" id="5TfjU0x$MmU" role="3uHU7B">
                  <node concept="1eOMI4" id="5TfjU0x$MmV" role="3fr31v">
                    <node concept="2ZW3vV" id="5TfjU0x$MmW" role="1eOMHV">
                      <node concept="3uibUv" id="5TfjU0x$MmX" role="2ZW6by">
                        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                <node concept="3clFbF" id="5TfjU0x$Mn3" role="3cqZAp">
                  <node concept="1rXfSq" id="5TfjU0x$Mn4" role="3clFbG">
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
        <node concept="3cqZAl" id="6GYQG_SpvAL" role="3clF45" />
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
                      <ref role="37wK5l" to="yt73:~Unification.unify(jetbrains.mps.unification.Term,jetbrains.mps.unification.Term):jetbrains.mps.unification.Substitution" resolve="unify" />
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
                  <node concept="YS8fn" id="5jCHAT1IF0X" role="3cqZAp">
                    <node concept="2ShNRf" id="5jCHAT1IF0Y" role="YScLw">
                      <node concept="1pGfFk" id="5jCHAT1IF0Z" role="2ShVmc">
                        <ref role="37wK5l" to="w7la:~EvaluationFailureException.&lt;init&gt;(java.lang.String)" resolve="EvaluationFailureException" />
                        <node concept="3cpWs3" id="5jCHAT1IFhN" role="37wK5m">
                          <node concept="3cpWs3" id="5jCHAT1IFhO" role="3uHU7B">
                            <node concept="3cpWs3" id="5jCHAT1IFhP" role="3uHU7B">
                              <node concept="3cpWs3" id="5jCHAT1IFhQ" role="3uHU7B">
                                <node concept="3cpWs3" id="5jCHAT1IFhR" role="3uHU7B">
                                  <node concept="Xl_RD" id="5jCHAT1IFhS" role="3uHU7B">
                                    <property role="Xl_RC" value="Cannot unify " />
                                  </node>
                                  <node concept="37vLTw" id="5jCHAT1IFhT" role="3uHU7w">
                                    <ref role="3cqZAo" node="6GYQG_SpvAH" resolve="leftVal" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="5jCHAT1IFhU" role="3uHU7w">
                                  <property role="Xl_RC" value=" and " />
                                </node>
                              </node>
                              <node concept="37vLTw" id="5jCHAT1IFhV" role="3uHU7w">
                                <ref role="3cqZAo" node="6GYQG_SpvAJ" resolve="rightVal" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="5jCHAT1IFhW" role="3uHU7w">
                              <property role="Xl_RC" value=": " />
                            </node>
                          </node>
                          <node concept="1rXfSq" id="5jCHAT1IFhX" role="3uHU7w">
                            <ref role="37wK5l" node="1MWQR5SpMLA" resolve="formatMessage" />
                            <node concept="37vLTw" id="5jCHAT1IFhY" role="37wK5m">
                              <ref role="3cqZAo" node="7K4Mb_J$cIB" resolve="subs" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="6SkxsMzEe76" role="3clFbw">
                  <node concept="2OqwBi" id="6SkxsMzEeju" role="3fr31v">
                    <node concept="37vLTw" id="6SkxsMzEehu" role="2Oq$k0">
                      <ref role="3cqZAo" node="7K4Mb_J$cIB" resolve="subs" />
                    </node>
                    <node concept="liA8E" id="6SkxsMzEepC" role="2OqNvi">
                      <ref role="37wK5l" to="yt73:~Substitution.isSuccessful():boolean" resolve="isSuccessful" />
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
                          <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
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
                            <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                          <node concept="3clFbF" id="6SkxsMzEti1" role="3cqZAp">
                            <node concept="1rXfSq" id="6SkxsMzEti0" role="3clFbG">
                              <ref role="37wK5l" node="4U_yxogBZLB" resolve="tellUni_logical_val" />
                              <node concept="37vLTw" id="46l0wJhwl3q" role="37wK5m">
                                <ref role="3cqZAo" node="6MYr6JwRS$H" resolve="bvarLogical" />
                              </node>
                              <node concept="2OqwBi" id="6MYr6JwS1$k" role="37wK5m">
                                <node concept="Xjq3P" id="3gNap3frV2F" role="2Oq$k0" />
                                <node concept="liA8E" id="6MYr6JwS1$m" role="2OqNvi">
                                  <ref role="37wK5l" node="3FIATxbQg$x" resolve="asRoot" />
                                  <node concept="2OqwBi" id="6MYr6JwS1$n" role="37wK5m">
                                    <node concept="37vLTw" id="6MYr6JwS1$o" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                                    </node>
                                    <node concept="liA8E" id="6MYr6JwS1$p" role="2OqNvi">
                                      <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                                    </node>
                                  </node>
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
                              <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                            </node>
                          </node>
                          <node concept="liA8E" id="56MMu0Ap5n2" role="2OqNvi">
                            <ref role="37wK5l" to="yt73:~Term.is(jetbrains.mps.unification.Term$Kind):boolean" resolve="is" />
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
                                <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                              </node>
                            </node>
                            <node concept="liA8E" id="56MMu0ApUkU" role="2OqNvi">
                              <ref role="37wK5l" to="yt73:~Term.is(jetbrains.mps.unification.Term$Kind):boolean" resolve="is" />
                              <node concept="Rm8GO" id="56MMu0ApUkV" role="37wK5m">
                                <ref role="1Px2BO" to="yt73:~Term$Kind" resolve="Term.Kind" />
                                <ref role="Rm8GQ" to="yt73:~Term$Kind.VAR" resolve="VAR" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="6SkxsMzEv3_" role="3eOfB_">
                            <node concept="3clFbF" id="6SkxsMzF0u3" role="3cqZAp">
                              <node concept="1rXfSq" id="6SkxsMzF0u2" role="3clFbG">
                                <ref role="37wK5l" node="4U_yxogC05I" resolve="tellUni_logical_logical" />
                                <node concept="37vLTw" id="46l0wJhwllA" role="37wK5m">
                                  <ref role="3cqZAo" node="6MYr6JwRS$H" resolve="bvarLogical" />
                                </node>
                                <node concept="2OqwBi" id="6MYr6JwRG9q" role="37wK5m">
                                  <node concept="Xjq3P" id="3gNap3fzIAd" role="2Oq$k0" />
                                  <node concept="liA8E" id="6MYr6JwRG9s" role="2OqNvi">
                                    <ref role="37wK5l" node="3FIATxbQg$N" resolve="asLogicalTerm" />
                                    <node concept="2OqwBi" id="6MYr6JwSbtb" role="37wK5m">
                                      <node concept="37vLTw" id="6MYr6JwSbtc" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                                      </node>
                                      <node concept="liA8E" id="6MYr6JwSbtd" role="2OqNvi">
                                        <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                                      </node>
                                    </node>
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
                              <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                                <ref role="3uigEE" to="6exd:2xQ7eRAD2dj" resolve="Value" />
                              </node>
                              <node concept="2OqwBi" id="3gNap3fZkgd" role="2ZW6bz">
                                <node concept="37vLTw" id="3gNap3fZkbt" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                                </node>
                                <node concept="liA8E" id="3gNap3fZkiL" role="2OqNvi">
                                  <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="3gNap3fZkak" role="3eOfB_">
                              <node concept="3cpWs8" id="3gNap3fZmj3" role="3cqZAp">
                                <node concept="3cpWsn" id="3gNap3fZmj4" role="3cpWs9">
                                  <property role="TrG5h" value="left" />
                                  <node concept="3uibUv" id="3gNap3fZmiC" role="1tU5fm">
                                    <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                                    <node concept="3uibUv" id="3gNap3g07tK" role="11_B2D">
                                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="3gNap3fZmj5" role="33vP2m">
                                    <node concept="37vLTw" id="3gNap3fZmj6" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3gNap3fZiSP" resolve="bvarLogical" />
                                    </node>
                                    <node concept="liA8E" id="3gNap3fZmj7" role="2OqNvi">
                                      <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
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
                                          <ref role="3uigEE" to="6exd:2xQ7eRAD2dj" resolve="Value" />
                                        </node>
                                        <node concept="2OqwBi" id="3gNap3fZlup" role="10QFUP">
                                          <node concept="37vLTw" id="3gNap3fZluq" role="2Oq$k0">
                                            <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                                          </node>
                                          <node concept="liA8E" id="3gNap3fZlur" role="2OqNvi">
                                            <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="3gNap3fZlus" role="2OqNvi">
                                      <ref role="37wK5l" to="6exd:1msb0mq8QTt" resolve="symbol" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="3gNap3fZmqG" role="3cqZAp">
                                <node concept="3clFbS" id="3gNap3fZmqI" role="3clFbx">
                                  <node concept="3clFbJ" id="3gNap3fZp9j" role="3cqZAp">
                                    <node concept="3clFbS" id="3gNap3fZp9l" role="3clFbx">
                                      <node concept="YS8fn" id="3gNap3fZq1z" role="3cqZAp">
                                        <node concept="2ShNRf" id="3gNap3fZq1$" role="YScLw">
                                          <node concept="1pGfFk" id="3gNap3fZq1_" role="2ShVmc">
                                            <ref role="37wK5l" to="w7la:~EvaluationFailureException.&lt;init&gt;(java.lang.String)" resolve="EvaluationFailureException" />
                                            <node concept="3cpWs3" id="3gNap3fZq1C" role="37wK5m">
                                              <node concept="3cpWs3" id="3gNap3fZq1D" role="3uHU7B">
                                                <node concept="3cpWs3" id="3gNap3fZq1E" role="3uHU7B">
                                                  <node concept="Xl_RD" id="3gNap3fZq1F" role="3uHU7B">
                                                    <property role="Xl_RC" value="Values differ " />
                                                  </node>
                                                  <node concept="2OqwBi" id="3gNap3fZqeL" role="3uHU7w">
                                                    <node concept="37vLTw" id="3gNap3fZq37" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="3gNap3fZmj4" resolve="left" />
                                                    </node>
                                                    <node concept="liA8E" id="3gNap3fZqTd" role="2OqNvi">
                                                      <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="Xl_RD" id="3gNap3fZq1H" role="3uHU7w">
                                                  <property role="Xl_RC" value=" and " />
                                                </node>
                                              </node>
                                              <node concept="37vLTw" id="3gNap3fZqU6" role="3uHU7w">
                                                <ref role="3cqZAo" node="3gNap3fZluk" resolve="value" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
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
                                          <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
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
                                    <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
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
                                          <ref role="37wK5l" to="bj13:~JoinableLogical.setValue(java.lang.Object):void" resolve="setValue" />
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
                                <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="3gNap3fZk_A" role="3clFbx">
                            <node concept="3cpWs8" id="3gNap3fZrMr" role="3cqZAp">
                              <node concept="3cpWsn" id="3gNap3fZrMs" role="3cpWs9">
                                <property role="TrG5h" value="left" />
                                <node concept="3uibUv" id="3gNap3fZrM4" role="1tU5fm">
                                  <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                                  <node concept="3uibUv" id="3gNap3g07dj" role="11_B2D">
                                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="3gNap3fZrMt" role="33vP2m">
                                  <node concept="37vLTw" id="3gNap3fZrMu" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3gNap3fZiSP" resolve="bvarLogical" />
                                  </node>
                                  <node concept="liA8E" id="3gNap3fZrMv" role="2OqNvi">
                                    <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="3gNap3fZkKQ" role="3cqZAp">
                              <node concept="3cpWsn" id="3gNap3fZkKR" role="3cpWs9">
                                <property role="TrG5h" value="right" />
                                <node concept="3uibUv" id="3gNap3fZkKS" role="1tU5fm">
                                  <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                                          <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                                        </node>
                                      </node>
                                      <node concept="3uibUv" id="3gNap3g07gl" role="3PaCim">
                                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="3gNap3fZsjf" role="2OqNvi">
                                    <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="3gNap3fZskp" role="3cqZAp" />
                            <node concept="3clFbJ" id="3gNap3fZsmo" role="3cqZAp">
                              <node concept="3clFbS" id="3gNap3fZsmq" role="3clFbx">
                                <node concept="3clFbJ" id="3gNap3fZtZ0" role="3cqZAp">
                                  <node concept="3clFbS" id="3gNap3fZtZ1" role="3clFbx">
                                    <node concept="YS8fn" id="3gNap3fZtZ2" role="3cqZAp">
                                      <node concept="2ShNRf" id="3gNap3fZtZ3" role="YScLw">
                                        <node concept="1pGfFk" id="3gNap3fZtZ4" role="2ShVmc">
                                          <ref role="37wK5l" to="w7la:~EvaluationFailureException.&lt;init&gt;(java.lang.String)" resolve="EvaluationFailureException" />
                                          <node concept="3cpWs3" id="3gNap3fZtZ5" role="37wK5m">
                                            <node concept="3cpWs3" id="3gNap3fZtZ6" role="3uHU7B">
                                              <node concept="3cpWs3" id="3gNap3fZtZ7" role="3uHU7B">
                                                <node concept="Xl_RD" id="3gNap3fZtZ8" role="3uHU7B">
                                                  <property role="Xl_RC" value="Values differ " />
                                                </node>
                                                <node concept="2OqwBi" id="3gNap3fZtZ9" role="3uHU7w">
                                                  <node concept="37vLTw" id="3gNap3fZtZa" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="3gNap3fZrMs" resolve="left" />
                                                  </node>
                                                  <node concept="liA8E" id="3gNap3fZtZb" role="2OqNvi">
                                                    <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="Xl_RD" id="3gNap3fZtZc" role="3uHU7w">
                                                <property role="Xl_RC" value=" and " />
                                              </node>
                                            </node>
                                            <node concept="2OqwBi" id="3gNap3fZufK" role="3uHU7w">
                                              <node concept="37vLTw" id="3gNap3fZu0t" role="2Oq$k0">
                                                <ref role="3cqZAo" node="3gNap3fZkKR" resolve="right" />
                                              </node>
                                              <node concept="liA8E" id="3gNap3fZuQW" role="2OqNvi">
                                                <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
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
                                        <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
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
                                    <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="3gNap3fZsy2" role="3uHU7B">
                                  <node concept="37vLTw" id="3gNap3fZsnI" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3gNap3fZrMs" resolve="left" />
                                  </node>
                                  <node concept="liA8E" id="3gNap3fZt9V" role="2OqNvi">
                                    <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
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
                                        <ref role="37wK5l" to="bj13:~JoinableLogical.union(jetbrains.mps.logic.reactor.logical.JoinableLogical):void" resolve="union" />
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
                    <ref role="37wK5l" to="yt73:~Substitution.bindings():java.util.Collection" resolve="bindings" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="6SkxsMzE_KM" role="3cqZAp">
                <node concept="3SKdUq" id="6SkxsMzEA5A" role="3SKWNk">
                  <property role="3SKdUp" value="unification succeeded and all the bindings have been processed" />
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
                    <node concept="YS8fn" id="5TfjU0x$$Lt" role="3cqZAp">
                      <node concept="2ShNRf" id="5TfjU0x$$Lu" role="YScLw">
                        <node concept="1pGfFk" id="5TfjU0x$$Lv" role="2ShVmc">
                          <ref role="37wK5l" to="w7la:~EvaluationFailureException.&lt;init&gt;(java.lang.String)" resolve="EvaluationFailureException" />
                          <node concept="3cpWs3" id="5TfjU0x$$Lw" role="37wK5m">
                            <node concept="3cpWs3" id="5TfjU0x$$Lx" role="3uHU7B">
                              <node concept="3cpWs3" id="5TfjU0x$$Ly" role="3uHU7B">
                                <node concept="Xl_RD" id="5TfjU0x$$Lz" role="3uHU7B">
                                  <property role="Xl_RC" value="Values differ " />
                                </node>
                                <node concept="37vLTw" id="5TfjU0x$$L$" role="3uHU7w">
                                  <ref role="3cqZAo" node="6GYQG_SpvAH" resolve="leftVal" />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="5TfjU0x$$L_" role="3uHU7w">
                                <property role="Xl_RC" value=" and " />
                              </node>
                            </node>
                            <node concept="37vLTw" id="5TfjU0x$$LA" role="3uHU7w">
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
            <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
            <node concept="16syzq" id="5TfjU0xzHrn" role="11_B2D">
              <ref role="16sUi3" node="5TfjU0xzEQN" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="4U_yxogBZsP" role="3clF45" />
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
            <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
            <node concept="3qTvmN" id="5TfjU0xJquy" role="11_B2D" />
          </node>
        </node>
        <node concept="37vLTG" id="4U_yxogBZLC" role="3clF46">
          <property role="TrG5h" value="rightVal" />
          <node concept="3uibUv" id="5TfjU0xyoB$" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3cqZAl" id="4U_yxogBZLG" role="3clF45" />
        <node concept="3Tm6S6" id="3gNap3fZftW" role="1B3o_S" />
        <node concept="3clFbS" id="4U_yxogBZLL" role="3clF47">
          <node concept="3cpWs8" id="6b_Nj5K6khb" role="3cqZAp">
            <node concept="3cpWsn" id="6b_Nj5K6khc" role="3cpWs9">
              <property role="TrG5h" value="leftRepr" />
              <node concept="3uibUv" id="6b_Nj5K6kh3" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                <node concept="3qTvmN" id="6b_Nj5K6kh6" role="11_B2D" />
              </node>
              <node concept="2OqwBi" id="6b_Nj5K6khd" role="33vP2m">
                <node concept="37vLTw" id="6b_Nj5K6khe" role="2Oq$k0">
                  <ref role="3cqZAo" node="4U_yxogBZLE" resolve="left" />
                </node>
                <node concept="liA8E" id="6b_Nj5K6khf" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1bm7a6EV2Np" role="3cqZAp">
            <node concept="3clFbS" id="1bm7a6EV2Ns" role="3clFbx">
              <node concept="3clFbF" id="1POzLwyWxZw" role="3cqZAp">
                <node concept="1rXfSq" id="1POzLwyWxZv" role="3clFbG">
                  <ref role="37wK5l" node="1POzLwyWxZp" resolve="occurrsCheck" />
                  <node concept="37vLTw" id="1POzLwyWxZu" role="37wK5m">
                    <ref role="3cqZAo" node="4U_yxogBZLE" resolve="left" />
                  </node>
                  <node concept="37vLTw" id="1POzLwyWxZt" role="37wK5m">
                    <ref role="3cqZAo" node="4U_yxogBZLC" resolve="rightVal" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1bm7a6EV48H" role="3cqZAp">
                <node concept="2OqwBi" id="1bm7a6EV4cC" role="3clFbG">
                  <node concept="1eOMI4" id="6b_Nj5K6ogY" role="2Oq$k0">
                    <node concept="10QFUN" id="6b_Nj5K6ogV" role="1eOMHV">
                      <node concept="3uibUv" id="6b_Nj5K6onh" role="10QFUM">
                        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                    <ref role="37wK5l" to="bj13:~JoinableLogical.setValue(java.lang.Object):void" resolve="setValue" />
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
              <node concept="3clFbH" id="1bm7a6EV5AJ" role="3cqZAp" />
            </node>
            <node concept="3fqX7Q" id="5TfjU0xJggO" role="3clFbw">
              <node concept="2OqwBi" id="5TfjU0xJggQ" role="3fr31v">
                <node concept="37vLTw" id="1POzLwyX9gq" role="2Oq$k0">
                  <ref role="3cqZAo" node="6b_Nj5K6khc" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="5TfjU0xJggS" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="1bm7a6EV3hd" role="9aQIa">
              <node concept="3clFbS" id="1bm7a6EV3he" role="9aQI4">
                <node concept="3clFbF" id="6SkxsMzEU$Q" role="3cqZAp">
                  <node concept="1rXfSq" id="6SkxsMzEU$P" role="3clFbG">
                    <ref role="37wK5l" node="6GYQG_SpvAG" resolve="tellUni_val_val" />
                    <node concept="2OqwBi" id="5TfjU0xJhdi" role="37wK5m">
                      <node concept="37vLTw" id="6b_Nj5K6khi" role="2Oq$k0">
                        <ref role="3cqZAo" node="6b_Nj5K6khc" resolve="leftRepr" />
                      </node>
                      <node concept="liA8E" id="5TfjU0xJhdk" role="2OqNvi">
                        <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
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
            <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
            <node concept="16syzq" id="5TfjU0xzy_y" role="11_B2D">
              <ref role="16sUi3" node="5TfjU0xzvGM" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4U_yxogC0jU" role="3clF46">
          <property role="TrG5h" value="right" />
          <node concept="3uibUv" id="6MYr6Jwz28q" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
            <node concept="16syzq" id="5TfjU0xzz_q" role="11_B2D">
              <ref role="16sUi3" node="5TfjU0xzvGM" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="4U_yxogC05N" role="3clF45" />
        <node concept="3Tm6S6" id="3gNap3fZftZ" role="1B3o_S" />
        <node concept="3clFbS" id="4U_yxogC05S" role="3clF47">
          <node concept="3cpWs8" id="7d$oK1$rAnD" role="3cqZAp">
            <node concept="3cpWsn" id="7d$oK1$rAnE" role="3cpWs9">
              <property role="TrG5h" value="leftRepr" />
              <node concept="3uibUv" id="6MYr6Jwz28t" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                <node concept="16syzq" id="5TfjU0xz$x6" role="11_B2D">
                  <ref role="16sUi3" node="5TfjU0xzvGM" resolve="T" />
                </node>
              </node>
              <node concept="2OqwBi" id="7d$oK1$rAnG" role="33vP2m">
                <node concept="37vLTw" id="7d$oK1$rAnH" role="2Oq$k0">
                  <ref role="3cqZAo" node="4U_yxogC05J" resolve="left" />
                </node>
                <node concept="liA8E" id="7d$oK1$rAnI" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7d$oK1$rAnJ" role="3cqZAp">
            <node concept="3cpWsn" id="7d$oK1$rAnK" role="3cpWs9">
              <property role="TrG5h" value="rightRepr" />
              <node concept="3uibUv" id="6MYr6Jwz28w" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                <node concept="16syzq" id="5TfjU0xz_b9" role="11_B2D">
                  <ref role="16sUi3" node="5TfjU0xzvGM" resolve="T" />
                </node>
              </node>
              <node concept="2OqwBi" id="7d$oK1$rAnM" role="33vP2m">
                <node concept="37vLTw" id="7d$oK1$rAnN" role="2Oq$k0">
                  <ref role="3cqZAo" node="4U_yxogC0jU" resolve="right" />
                </node>
                <node concept="liA8E" id="7d$oK1$rAnO" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4U_yxogDxEc" role="3cqZAp">
            <node concept="3clFbS" id="4U_yxogDxEf" role="3clFbx">
              <node concept="3cpWs6" id="4U_yxogDybj" role="3cqZAp" />
            </node>
            <node concept="3clFbC" id="4U_yxogDy8i" role="3clFbw">
              <node concept="37vLTw" id="7d$oK1$rBSI" role="3uHU7w">
                <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
              </node>
              <node concept="37vLTw" id="7d$oK1$rBvZ" role="3uHU7B">
                <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="4U_yxogDycf" role="3cqZAp" />
          <node concept="3clFbJ" id="5TfjU0xIiER" role="3cqZAp">
            <node concept="3clFbS" id="5TfjU0xIiES" role="3clFbx">
              <node concept="3clFbF" id="5TfjU0xIlah" role="3cqZAp">
                <node concept="1rXfSq" id="5TfjU0xIiEU" role="3clFbG">
                  <ref role="37wK5l" node="6GYQG_SpvAG" resolve="tellUni_val_val" />
                  <node concept="2OqwBi" id="5TfjU0xIiEV" role="37wK5m">
                    <node concept="37vLTw" id="5TfjU0xIiEW" role="2Oq$k0">
                      <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
                    </node>
                    <node concept="liA8E" id="5TfjU0xIiEX" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5TfjU0xIiEY" role="37wK5m">
                    <node concept="37vLTw" id="5TfjU0xIiEZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
                    </node>
                    <node concept="liA8E" id="5TfjU0xIiF0" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1POzLwzdIyL" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="5TfjU0xIiF1" role="3clFbw">
              <node concept="2OqwBi" id="5TfjU0xIiF2" role="3uHU7w">
                <node concept="37vLTw" id="5TfjU0xIiF3" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
                </node>
                <node concept="liA8E" id="5TfjU0xIiF4" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
                </node>
              </node>
              <node concept="2OqwBi" id="5TfjU0xIiF5" role="3uHU7B">
                <node concept="37vLTw" id="5TfjU0xIiF6" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="5TfjU0xIiF7" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1POzLwzdIdV" role="3cqZAp" />
          <node concept="3clFbJ" id="1POzLwzdIhe" role="3cqZAp">
            <node concept="3clFbS" id="1POzLwzdIhg" role="3clFbx">
              <node concept="3clFbF" id="1POzLwzdIuy" role="3cqZAp">
                <node concept="1rXfSq" id="1POzLwzdIuz" role="3clFbG">
                  <ref role="37wK5l" node="1POzLwyWxZp" resolve="occurrsCheck" />
                  <node concept="37vLTw" id="1POzLwzdIu$" role="37wK5m">
                    <ref role="3cqZAo" node="4U_yxogC0jU" resolve="right" />
                  </node>
                  <node concept="2OqwBi" id="1POzLwzdIu_" role="37wK5m">
                    <node concept="37vLTw" id="1POzLwzdIuA" role="2Oq$k0">
                      <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
                    </node>
                    <node concept="liA8E" id="1POzLwzdIuB" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1POzLwzdIhf" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="1POzLwzdIjl" role="3clFbw">
              <node concept="37vLTw" id="1POzLwzdIjm" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="1POzLwzdIjn" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
              </node>
            </node>
            <node concept="3eNFk2" id="1POzLwzdIv$" role="3eNLev">
              <node concept="2OqwBi" id="1POzLwzdIv_" role="3eO9$A">
                <node concept="37vLTw" id="1POzLwzdIvA" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
                </node>
                <node concept="liA8E" id="1POzLwzdIvB" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
                </node>
              </node>
              <node concept="3clFbS" id="1POzLwzdIvC" role="3eOfB_">
                <node concept="3clFbF" id="1POzLwzdIvD" role="3cqZAp">
                  <node concept="1rXfSq" id="1POzLwzdIvE" role="3clFbG">
                    <ref role="37wK5l" node="1POzLwyWxZp" resolve="occurrsCheck" />
                    <node concept="37vLTw" id="1POzLwzdIvF" role="37wK5m">
                      <ref role="3cqZAo" node="4U_yxogC05J" resolve="left" />
                    </node>
                    <node concept="2OqwBi" id="1POzLwzdIvG" role="37wK5m">
                      <node concept="37vLTw" id="1POzLwzdIvH" role="2Oq$k0">
                        <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
                      </node>
                      <node concept="liA8E" id="1POzLwzdIvI" role="2OqNvi">
                        <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
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
                <ref role="37wK5l" to="bj13:~JoinableLogical.union(jetbrains.mps.logic.reactor.logical.JoinableLogical):void" resolve="union" />
                <node concept="37vLTw" id="1POzLwzdIwa" role="37wK5m">
                  <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
                </node>
              </node>
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
        <node concept="3cqZAl" id="1POzLwyWxZr" role="3clF45" />
        <node concept="37vLTG" id="1POzLwyWxZf" role="3clF46">
          <property role="TrG5h" value="logical" />
          <node concept="3uibUv" id="1POzLwyWxZg" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
              <node concept="3uibUv" id="1POzLwyX6px" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                <node concept="3qTvmN" id="1POzLwyX6p$" role="11_B2D" />
              </node>
              <node concept="2OqwBi" id="1POzLwyX6pJ" role="33vP2m">
                <node concept="37vLTw" id="1POzLwyX6pK" role="2Oq$k0">
                  <ref role="3cqZAo" node="1POzLwyWxZf" resolve="logical" />
                </node>
                <node concept="liA8E" id="1POzLwyX6pL" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
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
                    <ref role="37wK5l" to="bj13:~Logical.metaLogical():jetbrains.mps.logic.reactor.logical.MetaLogical" resolve="metaLogical" />
                  </node>
                </node>
                <node concept="liA8E" id="1POzLwyWxYi" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~MetaLogical.type():java.lang.Class" resolve="type" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1POzLwyWxYj" role="3cqZAp">
            <node concept="3clFbS" id="1POzLwyWxYk" role="3clFbx">
              <node concept="3cpWs8" id="1POzLwyWxYl" role="3cqZAp">
                <node concept="3cpWsn" id="1POzLwyWxYm" role="3cpWs9">
                  <property role="TrG5h" value="termLeftRepr" />
                  <node concept="3uibUv" id="1POzLwyWxYn" role="1tU5fm">
                    <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                    <node concept="16syzq" id="1POzLwyWSnC" role="11_B2D">
                      <ref role="16sUi3" node="5TfjU0xz4dl" resolve="TERM" />
                    </node>
                  </node>
                  <node concept="10QFUN" id="1POzLwyWxYp" role="33vP2m">
                    <node concept="37vLTw" id="1POzLwyX84G" role="10QFUP">
                      <ref role="3cqZAo" node="1POzLwyX6pI" resolve="repr" />
                    </node>
                    <node concept="3uibUv" id="1POzLwyWxYr" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                      <node concept="16syzq" id="1POzLwyWSJo" role="11_B2D">
                        <ref role="16sUi3" node="5TfjU0xz4dl" resolve="TERM" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="1POzLwyWxYt" role="3cqZAp">
                <node concept="3SKdUq" id="1POzLwyWxYu" role="3SKWNk">
                  <property role="3SKdUp" value="check for occurrences of the logical in the value" />
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
                      <ref role="37wK5l" to="yt73:~Unification.unify(jetbrains.mps.unification.Term,jetbrains.mps.unification.Term):jetbrains.mps.unification.Substitution" resolve="unify" />
                      <node concept="2ShNRf" id="1POzLwyWxY_" role="37wK5m">
                        <node concept="1pGfFk" id="1POzLwyWxYA" role="2ShVmc">
                          <ref role="37wK5l" to="oy3s:4TCblo5ML4I" resolve="LogicalDataForm" />
                          <node concept="37vLTw" id="1POzLwyWxYB" role="37wK5m">
                            <ref role="3cqZAo" node="1POzLwyWxYm" resolve="termLeftRepr" />
                          </node>
                        </node>
                      </node>
                      <node concept="10QFUN" id="1POzLwyWxYC" role="37wK5m">
                        <node concept="16syzq" id="1POzLwyWT78" role="10QFUM">
                          <ref role="16sUi3" node="5TfjU0xz4dl" resolve="TERM" />
                        </node>
                        <node concept="37vLTw" id="1POzLwyWxZl" role="10QFUP">
                          <ref role="3cqZAo" node="1POzLwyWxZd" resolve="val" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1POzLwyWxYF" role="3cqZAp">
                <node concept="3clFbS" id="1POzLwyWxYG" role="3clFbx">
                  <node concept="YS8fn" id="1POzLwyWxYH" role="3cqZAp">
                    <node concept="2ShNRf" id="1POzLwyWxYI" role="YScLw">
                      <node concept="1pGfFk" id="1POzLwyWxYJ" role="2ShVmc">
                        <ref role="37wK5l" to="w7la:~EvaluationFailureException.&lt;init&gt;(java.lang.String)" resolve="EvaluationFailureException" />
                        <node concept="3cpWs3" id="1POzLwyWxYK" role="37wK5m">
                          <node concept="3cpWs3" id="1POzLwyWxYL" role="3uHU7B">
                            <node concept="3cpWs3" id="1POzLwyWxYM" role="3uHU7B">
                              <node concept="3cpWs3" id="1POzLwyWxYN" role="3uHU7B">
                                <node concept="3cpWs3" id="1POzLwyWxYO" role="3uHU7B">
                                  <node concept="Xl_RD" id="1POzLwyWxYP" role="3uHU7B">
                                    <property role="Xl_RC" value="Cannot unify " />
                                  </node>
                                  <node concept="37vLTw" id="1POzLwyWxZi" role="3uHU7w">
                                    <ref role="3cqZAo" node="1POzLwyWxZf" resolve="logical" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="1POzLwyWxYR" role="3uHU7w">
                                  <property role="Xl_RC" value=" and " />
                                </node>
                              </node>
                              <node concept="37vLTw" id="1POzLwyWxZj" role="3uHU7w">
                                <ref role="3cqZAo" node="1POzLwyWxZd" resolve="val" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="1POzLwyWxYT" role="3uHU7w">
                              <property role="Xl_RC" value=": " />
                            </node>
                          </node>
                          <node concept="1rXfSq" id="1POzLwyWxYU" role="3uHU7w">
                            <ref role="37wK5l" node="1MWQR5SpMLA" resolve="formatMessage" />
                            <node concept="37vLTw" id="1POzLwyWxYV" role="37wK5m">
                              <ref role="3cqZAo" node="1POzLwyWxYw" resolve="subs" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="1POzLwyWxYW" role="3clFbw">
                  <node concept="2OqwBi" id="1POzLwyWxYX" role="3fr31v">
                    <node concept="37vLTw" id="1POzLwyWxYY" role="2Oq$k0">
                      <ref role="3cqZAo" node="1POzLwyWxYw" resolve="subs" />
                    </node>
                    <node concept="liA8E" id="1POzLwyWxYZ" role="2OqNvi">
                      <ref role="37wK5l" to="yt73:~Substitution.isSuccessful():boolean" resolve="isSuccessful" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1POzLwyWxZ0" role="3cqZAp" />
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
                  <ref role="37wK5l" to="wyt6:~Class.isAssignableFrom(java.lang.Class):boolean" resolve="isAssignableFrom" />
                  <node concept="37vLTw" id="1POzLwyWxZ8" role="37wK5m">
                    <ref role="3cqZAo" node="1POzLwyWxYb" resolve="cls" />
                  </node>
                </node>
              </node>
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
                      <ref role="37wK5l" to="yt73:~Unification.unify(jetbrains.mps.unification.Term,jetbrains.mps.unification.Term):jetbrains.mps.unification.Substitution" resolve="unify" />
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
                      <ref role="37wK5l" to="yt73:~Substitution.isSuccessful():boolean" resolve="isSuccessful" />
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
                                    <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="6xYPVrp_s00" role="37wK5m">
                              <node concept="37vLTw" id="6xYPVrp_s01" role="2Oq$k0">
                                <ref role="3cqZAo" node="6xYPVrp_s03" resolve="bnd" />
                              </node>
                              <node concept="liA8E" id="6xYPVrp_s02" role="2OqNvi">
                                <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
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
                            <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
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
                              <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                                        <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="3gNap3fZ_6Y" role="2OqNvi">
                                <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
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
                                  <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                                          <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="3gNap3fZ_7a" role="2OqNvi">
                                    <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
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
                                        <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
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
                                    <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="3gNap3fZ_m6" role="3uHU7B">
                                  <node concept="37vLTw" id="3gNap3fZ_a8" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3gNap3fZ_6T" resolve="bndLeft" />
                                  </node>
                                  <node concept="liA8E" id="3gNap3fZ_Y5" role="2OqNvi">
                                    <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
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
                                <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                              </node>
                            </node>
                          </node>
                          <node concept="3eNFk2" id="3gNap3g8ZRz" role="3eNLev">
                            <node concept="2ZW3vV" id="3gNap3g91$1" role="3eO9$A">
                              <node concept="3uibUv" id="3gNap3g91$i" role="2ZW6by">
                                <ref role="3uigEE" to="6exd:2xQ7eRAD2dj" resolve="Value" />
                              </node>
                              <node concept="2OqwBi" id="3gNap3g91ii" role="2ZW6bz">
                                <node concept="37vLTw" id="3gNap3g8ZT7" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6xYPVrp_s03" resolve="bnd" />
                                </node>
                                <node concept="liA8E" id="3gNap3g91kQ" role="2OqNvi">
                                  <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
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
                                            <ref role="3uigEE" to="6exd:2xQ7eRAD2dj" resolve="Value" />
                                          </node>
                                          <node concept="2OqwBi" id="3gNap3g94bY" role="10QFUP">
                                            <node concept="37vLTw" id="3gNap3g94bZ" role="2Oq$k0">
                                              <ref role="3cqZAo" node="6xYPVrp_s03" resolve="bnd" />
                                            </node>
                                            <node concept="liA8E" id="3gNap3g94c0" role="2OqNvi">
                                              <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="3gNap3g94p1" role="2OqNvi">
                                        <ref role="37wK5l" to="6exd:1msb0mq8QTt" resolve="symbol" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="3gNap3g93Zu" role="3uHU7B">
                                      <node concept="37vLTw" id="3gNap3g93R$" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3gNap3fZ_6T" resolve="bndLeft" />
                                      </node>
                                      <node concept="liA8E" id="3gNap3g945W" role="2OqNvi">
                                        <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="3gNap3g939Q" role="3uHU7B">
                                    <node concept="37vLTw" id="3gNap3g91Hg" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3gNap3fZ_6T" resolve="bndLeft" />
                                    </node>
                                    <node concept="liA8E" id="3gNap3g93IL" role="2OqNvi">
                                      <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
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
                            <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
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
                    <ref role="37wK5l" to="yt73:~Substitution.bindings():java.util.Collection" resolve="bindings" />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="5TfjU0xAGed" role="3cqZAp">
                <node concept="3SKdUq" id="5TfjU0xAGee" role="3SKWNk">
                  <property role="3SKdUp" value="unification succeeded and all the bindings have been processed" />
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
            <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
            <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                <node concept="3SKdUq" id="5TfjU0xBWUi" role="3SKWNk">
                  <property role="3SKdUp" value="free variable can be unified with any value" />
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
                              <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="5TfjU0xCkrQ" role="2OqNvi">
                          <ref role="37wK5l" to="bj13:~Logical.metaLogical():jetbrains.mps.logic.reactor.logical.MetaLogical" resolve="metaLogical" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="5TfjU0xCkrR" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~MetaLogical.type():java.lang.Class" resolve="type" />
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
                        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                              <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
                            </node>
                          </node>
                        </node>
                        <node concept="3uibUv" id="5TfjU0xCks0" role="10QFUM">
                          <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                          <node concept="16syzq" id="5TfjU0xCks1" role="11_B2D">
                            <ref role="16sUi3" node="6MYr6Jw$T5v" resolve="TERM" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="5TfjU0xCks2" role="3cqZAp">
                    <node concept="3SKdUq" id="5TfjU0xCks3" role="3SKWNk">
                      <property role="3SKdUp" value="check for occurrences of the logical in the value" />
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
                          <ref role="37wK5l" to="yt73:~Unification.unify(jetbrains.mps.unification.Term,jetbrains.mps.unification.Term):jetbrains.mps.unification.Substitution" resolve="unify" />
                          <node concept="2ShNRf" id="5TfjU0xCksa" role="37wK5m">
                            <node concept="1pGfFk" id="5TfjU0xCksb" role="2ShVmc">
                              <ref role="37wK5l" to="oy3s:4TCblo5ML4I" resolve="LogicalDataForm" />
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
                          <ref role="37wK5l" to="yt73:~Substitution.isSuccessful():boolean" resolve="isSuccessful" />
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
                              <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
                            </node>
                          </node>
                          <node concept="1eOMI4" id="5TfjU0xJFHq" role="3uHU7w">
                            <node concept="2OqwBi" id="5TfjU0xJFHn" role="1eOMHV">
                              <node concept="37vLTw" id="5TfjU0xJFHo" role="2Oq$k0">
                                <ref role="3cqZAo" node="4U_yxogC1Ek" resolve="left" />
                              </node>
                              <node concept="liA8E" id="5TfjU0xJFHp" role="2OqNvi">
                                <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
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
                                        <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="5TfjU0xHlrB" role="37wK5m">
                                  <node concept="37vLTw" id="5TfjU0xHlrC" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5TfjU0xHlrK" resolve="bnd" />
                                  </node>
                                  <node concept="liA8E" id="5TfjU0xHlrD" role="2OqNvi">
                                    <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
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
                                <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
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
                                  <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                                            <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="5TfjU0xHMHa" role="2OqNvi">
                                    <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
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
                                      <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                                              <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="5TfjU0xHMHo" role="2OqNvi">
                                        <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
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
                                            <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
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
                                        <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="5TfjU0xHMHD" role="3uHU7B">
                                      <node concept="37vLTw" id="5TfjU0xHMHE" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5TfjU0xHMGZ" resolve="bndLeft" />
                                      </node>
                                      <node concept="liA8E" id="5TfjU0xHMHF" role="2OqNvi">
                                        <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
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
                                    <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3eNFk2" id="5TfjU0xHMHL" role="3eNLev">
                                <node concept="2ZW3vV" id="5TfjU0xHMHM" role="3eO9$A">
                                  <node concept="3uibUv" id="5TfjU0xHMHN" role="2ZW6by">
                                    <ref role="3uigEE" to="6exd:2xQ7eRAD2dj" resolve="Value" />
                                  </node>
                                  <node concept="2OqwBi" id="5TfjU0xHMHO" role="2ZW6bz">
                                    <node concept="37vLTw" id="5TfjU0xHMHP" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5TfjU0xHlrK" resolve="bnd" />
                                    </node>
                                    <node concept="liA8E" id="5TfjU0xHMHQ" role="2OqNvi">
                                      <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
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
                                                <ref role="3uigEE" to="6exd:2xQ7eRAD2dj" resolve="Value" />
                                              </node>
                                              <node concept="2OqwBi" id="5TfjU0xHMHZ" role="10QFUP">
                                                <node concept="37vLTw" id="5TfjU0xHMI0" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="5TfjU0xHlrK" resolve="bnd" />
                                                </node>
                                                <node concept="liA8E" id="5TfjU0xHMI1" role="2OqNvi">
                                                  <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="5TfjU0xHMI2" role="2OqNvi">
                                            <ref role="37wK5l" to="6exd:1msb0mq8QTt" resolve="symbol" />
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="5TfjU0xHMI3" role="3uHU7B">
                                          <node concept="37vLTw" id="5TfjU0xHMI4" role="2Oq$k0">
                                            <ref role="3cqZAo" node="5TfjU0xHMGZ" resolve="bndLeft" />
                                          </node>
                                          <node concept="liA8E" id="5TfjU0xHMI5" role="2OqNvi">
                                            <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="5TfjU0xHMI6" role="3uHU7B">
                                        <node concept="37vLTw" id="5TfjU0xHMI7" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5TfjU0xHMGZ" resolve="bndLeft" />
                                        </node>
                                        <node concept="liA8E" id="5TfjU0xHMI8" role="2OqNvi">
                                          <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
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
                                <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
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
                        <ref role="37wK5l" to="yt73:~Substitution.bindings():java.util.Collection" resolve="bindings" />
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
                      <ref role="37wK5l" to="wyt6:~Class.isAssignableFrom(java.lang.Class):boolean" resolve="isAssignableFrom" />
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
                      <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4U_yxogDnOx" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
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
                            <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="5TfjU0xCZYL" role="2OqNvi">
                        <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
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
            <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
            <node concept="16syzq" id="5TfjU0xDw1d" role="11_B2D">
              <ref role="16sUi3" node="5TfjU0xDjwQ" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4U_yxogC2z$" role="3clF46">
          <property role="TrG5h" value="right" />
          <node concept="3uibUv" id="6MYr6Jwz28J" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                <node concept="16syzq" id="5TfjU0xH76F" role="11_B2D">
                  <ref role="16sUi3" node="5TfjU0xDjwQ" resolve="T" />
                </node>
              </node>
              <node concept="2OqwBi" id="7d$oK1$nL7H" role="33vP2m">
                <node concept="37vLTw" id="7d$oK1$nL7I" role="2Oq$k0">
                  <ref role="3cqZAo" node="4U_yxogC2zy" resolve="left" />
                </node>
                <node concept="liA8E" id="7d$oK1$nL7J" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7d$oK1$nLDM" role="3cqZAp">
            <node concept="3cpWsn" id="7d$oK1$nLDN" role="3cpWs9">
              <property role="TrG5h" value="rightRepr" />
              <node concept="3uibUv" id="6MYr6Jwz28P" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                <node concept="16syzq" id="5TfjU0xHaCr" role="11_B2D">
                  <ref role="16sUi3" node="5TfjU0xDjwQ" resolve="T" />
                </node>
              </node>
              <node concept="2OqwBi" id="7d$oK1$nLDP" role="33vP2m">
                <node concept="37vLTw" id="7d$oK1$nLDQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="4U_yxogC2z$" resolve="right" />
                </node>
                <node concept="liA8E" id="7d$oK1$nLDR" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
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
                      <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5TfjU0xFrQi" role="37wK5m">
                    <node concept="37vLTw" id="5TfjU0xFpBG" role="2Oq$k0">
                      <ref role="3cqZAo" node="7d$oK1$nLDN" resolve="rightRepr" />
                    </node>
                    <node concept="liA8E" id="5TfjU0xFufg" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
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
                  <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
                </node>
              </node>
              <node concept="2OqwBi" id="5TfjU0xF0Tt" role="3uHU7B">
                <node concept="37vLTw" id="5TfjU0xEYq6" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$nL7F" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="5TfjU0xF2Pc" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
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
                      <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
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
                <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
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
                      <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
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
                <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5TfjU0xEQmV" role="3cqZAp" />
          <node concept="3SKdUt" id="5TfjU0xI2Fy" role="3cqZAp">
            <node concept="3SKdUq" id="5TfjU0xI2F$" role="3SKWNk">
              <property role="3SKdUp" value="both logicals are free" />
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
                  <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
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
                      <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                      <node concept="16syzq" id="2T1p0CFz6at" role="11_B2D">
                        <ref role="16sUi3" node="6MYr6JwM1_T" resolve="TERM" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2T1p0CFz6au" role="10QFUP">
                      <ref role="3cqZAo" node="6xYPVrp_1P$" resolve="logical" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2T1p0CFz6av" role="37wK5m">
                    <node concept="Xjq3P" id="3gNap3frV6S" role="2Oq$k0" />
                    <node concept="liA8E" id="2T1p0CFz6ax" role="2OqNvi">
                      <ref role="37wK5l" node="3FIATxbQg$x" resolve="asRoot" />
                      <node concept="37vLTw" id="2T1p0CFz6ay" role="37wK5m">
                        <ref role="3cqZAo" node="6xYPVrp_37O" resolve="bound" />
                      </node>
                    </node>
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
                <ref role="37wK5l" to="yt73:~Term.is(jetbrains.mps.unification.Term$Kind):boolean" resolve="is" />
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
                        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                  <ref role="37wK5l" to="yt73:~Term.is(jetbrains.mps.unification.Term$Kind):boolean" resolve="is" />
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
                    <ref role="37wK5l" to="yt73:~Substitution.failureCause():jetbrains.mps.unification.Substitution$FailureCause" resolve="failureCause" />
                  </node>
                </node>
                <node concept="liA8E" id="1MWQR5SpML6" role="2OqNvi">
                  <ref role="37wK5l" to="yt73:~Substitution$FailureCause.toString():java.lang.String" resolve="toString" />
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
                    <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                    <node concept="Xl_RD" id="1MWQR5SpMLc" role="37wK5m">
                      <property role="Xl_RC" value="'%s' != '%s'" />
                    </node>
                    <node concept="2OqwBi" id="1MWQR5SpMLd" role="37wK5m">
                      <node concept="37vLTw" id="1MWQR5SpMLy" role="2Oq$k0">
                        <ref role="3cqZAo" node="1MWQR5SpMLu" resolve="subs" />
                      </node>
                      <node concept="liA8E" id="1MWQR5SpMLf" role="2OqNvi">
                        <ref role="37wK5l" to="yt73:~Substitution.failureDetails():java.lang.Object[]" resolve="failureDetails" />
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
                    <ref role="37wK5l" to="yt73:~Substitution.failureCause():jetbrains.mps.unification.Substitution$FailureCause" resolve="failureCause" />
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
                    <ref role="37wK5l" to="yt73:~Substitution.failureDetails():java.lang.Object[]" resolve="failureDetails" />
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
      <node concept="2tJIrI" id="1bm7a6EU93j" role="jymVt" />
      <node concept="3clFb_" id="3FIATxbQg$x" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="asRoot" />
        <node concept="37vLTG" id="3FIATxbQg$y" role="3clF46">
          <property role="TrG5h" value="term" />
          <node concept="16syzq" id="3FIATxbQg$z" role="1tU5fm">
            <ref role="16sUi3" node="3FIATxbQg$A" resolve="TERM" />
          </node>
        </node>
        <node concept="16syzq" id="3FIATxbQg$$" role="3clF45">
          <ref role="16sUi3" node="3FIATxbQg$A" resolve="TERM" />
        </node>
        <node concept="3Tm6S6" id="3gNap3frRyq" role="1B3o_S" />
        <node concept="16euLQ" id="3FIATxbQg$A" role="16eVyc">
          <property role="TrG5h" value="TERM" />
          <node concept="3uibUv" id="3FIATxbQg$B" role="3ztrMU">
            <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
          </node>
        </node>
        <node concept="3clFbS" id="3FIATxbQg$C" role="3clF47">
          <node concept="3clFbJ" id="3gNap3frQsX" role="3cqZAp">
            <node concept="3clFbS" id="3gNap3frQsZ" role="3clFbx">
              <node concept="3cpWs6" id="3gNap3frReU" role="3cqZAp">
                <node concept="10QFUN" id="3gNap3frRf2" role="3cqZAk">
                  <node concept="2OqwBi" id="3gNap3frRf3" role="10QFUP">
                    <node concept="1eOMI4" id="3gNap3frRf4" role="2Oq$k0">
                      <node concept="10QFUN" id="3gNap3frRf5" role="1eOMHV">
                        <node concept="37vLTw" id="3gNap3frRf6" role="10QFUP">
                          <ref role="3cqZAo" node="3FIATxbQg$y" resolve="term" />
                        </node>
                        <node concept="3uibUv" id="3gNap3frRf7" role="10QFUM">
                          <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3gNap3frRf8" role="2OqNvi">
                      <ref role="37wK5l" to="6exd:2QE4RCGndD7" resolve="asRoot" />
                    </node>
                  </node>
                  <node concept="16syzq" id="3gNap3frRf9" role="10QFUM">
                    <ref role="16sUi3" node="3FIATxbQg$A" resolve="TERM" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="3gNap3frRey" role="3clFbw">
              <node concept="3uibUv" id="3gNap3frReD" role="2ZW6by">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="DataForm" />
              </node>
              <node concept="37vLTw" id="3gNap3frQtt" role="2ZW6bz">
                <ref role="3cqZAo" node="3FIATxbQg$y" resolve="term" />
              </node>
            </node>
            <node concept="9aQIb" id="3gNap3frRfF" role="9aQIa">
              <node concept="3clFbS" id="3gNap3frRfG" role="9aQI4">
                <node concept="3cpWs6" id="3gNap3frRfX" role="3cqZAp">
                  <node concept="37vLTw" id="3gNap3frRgg" role="3cqZAk">
                    <ref role="3cqZAo" node="3FIATxbQg$y" resolve="term" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="P$JXv" id="3gNap3frRgA" role="lGtFl">
          <node concept="TZ5HA" id="3gNap3frRgB" role="TZ5H$">
            <node concept="1dT_AC" id="3gNap3frRgC" role="1dT_Ay">
              <property role="1dT_AB" value="Type-safe asRoot operation. Copies a data form, otherwise returns the passed parameter." />
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
          <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                          <ref role="3uigEE" to="oy3s:4TCblo5MJ1m" resolve="LogicalDataForm" />
                          <node concept="16syzq" id="3gNap3fMVwA" role="11_B2D">
                            <ref role="16sUi3" node="3FIATxbQg$T" resolve="TERM" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3gNap3fzGMh" role="2OqNvi">
                      <ref role="37wK5l" to="oy3s:4TCblo5MS1o" resolve="logical" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="3gNap3fzGMi" role="10QFUM">
                    <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                <ref role="3uigEE" to="oy3s:4TCblo5MJ1m" resolve="LogicalDataForm" />
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
          <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                          <ref role="3uigEE" to="oy3s:3gNap3fN2hw" resolve="LogicalValue" />
                          <node concept="16syzq" id="3gNap3fZimO" role="11_B2D">
                            <ref role="16sUi3" node="3gNap3fZimC" resolve="T" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3gNap3fZimP" role="2OqNvi">
                      <ref role="37wK5l" to="oy3s:3gNap3fN7SD" resolve="logical" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="3gNap3fZimQ" role="10QFUM">
                    <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                <ref role="3uigEE" to="oy3s:3gNap3fN2hw" resolve="LogicalValue" />
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
                <ref role="3uigEE" to="oy3s:4TCblo5MJ1m" resolve="LogicalDataForm" />
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
                <ref role="3uigEE" to="oy3s:3gNap3fN2hw" resolve="LogicalValue" />
              </node>
              <node concept="37vLTw" id="3gNap3fZhXt" role="2ZW6bz">
                <ref role="3cqZAo" node="3gNap3fZhXl" resolve="term" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3gNap3fZhXj" role="jymVt" />
      <node concept="3uibUv" id="60zk4o77o9G" role="1zkMxy">
        <ref role="3uigEE" to="w7la:~AbstractSolver" resolve="AbstractSolver" />
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
              <node concept="3uibUv" id="7lt0LtQvGMv" role="3clF45">
                <ref role="3uigEE" to="w7la:~AbstractSolver" resolve="AbstractSolver" />
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
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="2UGjFq4l_Rj" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
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
                        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
      <node concept="2tJIrI" id="2tcGHBEqirK" role="jymVt" />
      <node concept="3clFb_" id="2UGjFq4kzkJ" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="tell" />
        <node concept="3cqZAl" id="2UGjFq4kzkK" role="3clF45" />
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
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="2UGjFq4lzR9" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
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
        <node concept="3cqZAl" id="2UGjFq4lzcg" role="3clF45" />
        <node concept="37vLTG" id="2UGjFq4lzb1" role="3clF46">
          <property role="TrG5h" value="test" />
          <node concept="3uibUv" id="2UGjFq4lzb2" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3clFbS" id="2UGjFq4lzay" role="3clF47">
          <node concept="3clFbJ" id="2UGjFq4lzaz" role="3cqZAp">
            <node concept="3clFbS" id="2UGjFq4lza$" role="3clFbx">
              <node concept="3clFbF" id="2UGjFq4lza_" role="3cqZAp">
                <node concept="1rXfSq" id="2UGjFq4lzaA" role="3clFbG">
                  <ref role="37wK5l" node="6infEALAKQH" resolve="_tellAssert" />
                  <node concept="1eOMI4" id="2UGjFq4lzaB" role="37wK5m">
                    <node concept="10QFUN" id="2UGjFq4lzaC" role="1eOMHV">
                      <node concept="3uibUv" id="2UGjFq4lzaD" role="10QFUM">
                        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                <node concept="3clFbF" id="2UGjFq4lzaP" role="3cqZAp">
                  <node concept="1rXfSq" id="2UGjFq4lzaQ" role="3clFbG">
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
                <node concept="YS8fn" id="2UGjFq4lzaX" role="3cqZAp">
                  <node concept="2ShNRf" id="2UGjFq4lzaY" role="YScLw">
                    <node concept="1pGfFk" id="2UGjFq4lzaZ" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                      <node concept="Xl_RD" id="2UGjFq4lzb0" role="37wK5m">
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
        <node concept="3cqZAl" id="6infEALAKQA" role="3clF45" />
        <node concept="3Tmbuc" id="6MYr6JwZXea" role="1B3o_S" />
        <node concept="3clFbS" id="6infEALAKQG" role="3clF47">
          <node concept="3clFbJ" id="6infEALBkC$" role="3cqZAp">
            <node concept="3clFbS" id="6infEALBkC_" role="3clFbx">
              <node concept="YS8fn" id="3eLgHzX3On1" role="3cqZAp">
                <node concept="2ShNRf" id="3eLgHzX3OnK" role="YScLw">
                  <node concept="1pGfFk" id="3eLgHzX3PBQ" role="2ShVmc">
                    <ref role="37wK5l" to="w7la:~EvaluationFailureException.&lt;init&gt;(java.lang.String)" resolve="EvaluationFailureException" />
                    <node concept="Xl_RD" id="5jCHAT1IAg4" role="37wK5m">
                      <property role="Xl_RC" value="cannot assert false" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="6infEALBkHm" role="3clFbw">
              <node concept="37vLTw" id="6infEALBl5n" role="3fr31v">
                <ref role="3cqZAo" node="6infEALAKQ$" resolve="val" />
              </node>
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
            <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
            <node concept="3uibUv" id="6infEALAKQK" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="6infEALAKQL" role="3clF45" />
        <node concept="3Tmbuc" id="6MYr6JwZXJI" role="1B3o_S" />
        <node concept="3clFbS" id="6infEALAKQR" role="3clF47">
          <node concept="3cpWs8" id="6infEALBclm" role="3cqZAp">
            <node concept="3cpWsn" id="6infEALBcln" role="3cpWs9">
              <property role="TrG5h" value="repr" />
              <node concept="3uibUv" id="6infEALBclo" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                <node concept="3uibUv" id="6infEALBclp" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                </node>
              </node>
              <node concept="2OqwBi" id="6infEALBclq" role="33vP2m">
                <node concept="37vLTw" id="6infEALBclr" role="2Oq$k0">
                  <ref role="3cqZAo" node="6infEALAKQI" resolve="logical" />
                </node>
                <node concept="liA8E" id="6infEALBcls" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6infEALBcOh" role="3cqZAp">
            <node concept="3clFbS" id="6infEALBcOj" role="3clFbx">
              <node concept="YS8fn" id="5jCHAT1IAFu" role="3cqZAp">
                <node concept="2ShNRf" id="5jCHAT1IAFv" role="YScLw">
                  <node concept="1pGfFk" id="5jCHAT1IAFw" role="2ShVmc">
                    <ref role="37wK5l" to="w7la:~EvaluationFailureException.&lt;init&gt;(java.lang.String)" resolve="EvaluationFailureException" />
                    <node concept="Xl_RD" id="5jCHAT1IAFx" role="37wK5m">
                      <property role="Xl_RC" value="cannot assert false" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="6infEALBeKX" role="3clFbw">
              <node concept="3fqX7Q" id="6infEALBeNq" role="3uHU7w">
                <node concept="2OqwBi" id="6infEALBf3L" role="3fr31v">
                  <node concept="37vLTw" id="6infEALBePw" role="2Oq$k0">
                    <ref role="3cqZAo" node="6infEALBcln" resolve="repr" />
                  </node>
                  <node concept="liA8E" id="6infEALBgCV" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6infEALBd3w" role="3uHU7B">
                <node concept="37vLTw" id="6infEALBcQc" role="2Oq$k0">
                  <ref role="3cqZAo" node="6infEALBcln" resolve="repr" />
                </node>
                <node concept="liA8E" id="6infEALBeBH" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
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
                  <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
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
                    <ref role="37wK5l" to="bj13:~JoinableLogical.setValue(java.lang.Object):void" resolve="setValue" />
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
            <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                <node concept="3uibUv" id="6infEALBa$$" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                </node>
              </node>
              <node concept="2OqwBi" id="6infEALBa$B" role="33vP2m">
                <node concept="37vLTw" id="6infEALBa$C" role="2Oq$k0">
                  <ref role="3cqZAo" node="6infEALAKR3" resolve="logical" />
                </node>
                <node concept="liA8E" id="6infEALBa$D" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
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
                  <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
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
                <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6infEALAT0A" role="jymVt" />
      <node concept="3uibUv" id="60zk4o77kpg" role="1zkMxy">
        <ref role="3uigEE" to="w7la:~AbstractSolver" resolve="AbstractSolver" />
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
              <node concept="3uibUv" id="7lt0LtQvDZ8" role="3clF45">
                <ref role="3uigEE" to="w7la:~AbstractSolver" resolve="AbstractSolver" />
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
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="2UGjFq4lFof" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
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
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="2UGjFq4lFMf" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
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
                      <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                      <node concept="16syzq" id="2UGjFq4lBz4" role="11_B2D">
                        <ref role="16sUi3" node="2UGjFq4mCKS" resolve="T" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="2UGjFq4lBz5" role="37wK5m">
                    <node concept="3uibUv" id="2UGjFq4lBz6" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                  <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                </node>
                <node concept="37vLTw" id="2UGjFq4lB$E" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4lB$p" resolve="right" />
                </node>
              </node>
              <node concept="2ZW3vV" id="2UGjFq4lBze" role="3uHU7B">
                <node concept="3uibUv" id="5cDlfXt5Ofi" role="2ZW6by">
                  <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                      </node>
                      <node concept="37vLTw" id="2UGjFq4lB$w" role="2ZW6bz">
                        <ref role="3cqZAo" node="2UGjFq4lB$p" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="2UGjFq4lBzz" role="3uHU7B">
                  <node concept="3uibUv" id="5cDlfXt5OPp" role="2ZW6by">
                    <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                    <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                  </node>
                  <node concept="37vLTw" id="2UGjFq4lB$u" role="2ZW6bz">
                    <ref role="3cqZAo" node="2UGjFq4lB$p" resolve="right" />
                  </node>
                </node>
                <node concept="3fqX7Q" id="2UGjFq4lBzQ" role="3uHU7B">
                  <node concept="1eOMI4" id="2UGjFq4lBzR" role="3fr31v">
                    <node concept="2ZW3vV" id="2UGjFq4lBzS" role="1eOMHV">
                      <node concept="3uibUv" id="5cDlfXt5Pas" role="2ZW6by">
                        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
          <node concept="3clFbF" id="2UGjFq4lNPr" role="3cqZAp">
            <node concept="1rXfSq" id="2UGjFq4lNPt" role="3clFbG">
              <ref role="37wK5l" node="2UGjFq4lGBW" resolve="doTell" />
              <node concept="2OqwBi" id="2UGjFq4lNPu" role="37wK5m">
                <node concept="2OqwBi" id="2UGjFq4lNPv" role="2Oq$k0">
                  <node concept="37vLTw" id="2UGjFq4lNPw" role="2Oq$k0">
                    <ref role="3cqZAo" node="2UGjFq4lKkm" resolve="invocation" />
                  </node>
                  <node concept="liA8E" id="2UGjFq4lNPx" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="2UGjFq4lNPy" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                  <node concept="3cmrfG" id="2UGjFq4lNPz" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2UGjFq4lNP$" role="37wK5m">
                <node concept="2OqwBi" id="2UGjFq4lNP_" role="2Oq$k0">
                  <node concept="37vLTw" id="2UGjFq4lNPA" role="2Oq$k0">
                    <ref role="3cqZAo" node="2UGjFq4lKkm" resolve="invocation" />
                  </node>
                  <node concept="liA8E" id="2UGjFq4lNPB" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="2UGjFq4lNPC" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                  <node concept="3cmrfG" id="2UGjFq4lNPD" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2UGjFq4lNHF" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2UGjFq4lJKz" role="jymVt" />
      <node concept="3clFb_" id="2UGjFq4lGBW" role="jymVt">
        <property role="TrG5h" value="doTell" />
        <node concept="3Tmbuc" id="2UGjFq4lJig" role="1B3o_S" />
        <node concept="3cqZAl" id="2UGjFq4lGBY" role="3clF45" />
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
              <node concept="3clFbF" id="2UGjFq4lGAd" role="3cqZAp">
                <node concept="1rXfSq" id="2UGjFq4lGAe" role="3clFbG">
                  <ref role="37wK5l" node="3HJTsBn4V_Q" resolve="tellEq_logical_logical" />
                  <node concept="10QFUN" id="2UGjFq4lGAf" role="37wK5m">
                    <node concept="37vLTw" id="2UGjFq4lGBJ" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lGBA" resolve="left" />
                    </node>
                    <node concept="3uibUv" id="2UGjFq4lGAh" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                      <node concept="16syzq" id="2UGjFq4lGAi" role="11_B2D">
                        <ref role="16sUi3" node="2UGjFq4lHLA" resolve="T" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="2UGjFq4lGAj" role="37wK5m">
                    <node concept="3uibUv" id="2UGjFq4lGAk" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                  <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                </node>
                <node concept="37vLTw" id="2UGjFq4lGBM" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4lGBC" resolve="right" />
                </node>
              </node>
              <node concept="2ZW3vV" id="2UGjFq4lGAs" role="3uHU7B">
                <node concept="3uibUv" id="5cDlfXt5Pzu" role="2ZW6by">
                  <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                </node>
                <node concept="37vLTw" id="2UGjFq4lGBG" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4lGBA" resolve="left" />
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="2UGjFq4lGAv" role="3eNLev">
              <node concept="3clFbS" id="2UGjFq4lGAw" role="3eOfB_">
                <node concept="3clFbF" id="2UGjFq4lGAx" role="3cqZAp">
                  <node concept="1rXfSq" id="2UGjFq4lGAy" role="3clFbG">
                    <ref role="37wK5l" node="3HJTsBn4V_B" resolve="tellEq_logical_val" />
                    <node concept="10QFUN" id="2UGjFq4lGAz" role="37wK5m">
                      <node concept="37vLTw" id="2UGjFq4lGBR" role="10QFUP">
                        <ref role="3cqZAo" node="2UGjFq4lGBA" resolve="left" />
                      </node>
                      <node concept="3uibUv" id="2UGjFq4lGA_" role="10QFUM">
                        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                      </node>
                      <node concept="37vLTw" id="2UGjFq4lGBH" role="2ZW6bz">
                        <ref role="3cqZAo" node="2UGjFq4lGBC" resolve="right" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="2UGjFq4lGAL" role="3uHU7B">
                  <node concept="3uibUv" id="5cDlfXt5PDh" role="2ZW6by">
                    <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                  </node>
                  <node concept="37vLTw" id="2UGjFq4lGBN" role="2ZW6bz">
                    <ref role="3cqZAo" node="2UGjFq4lGBA" resolve="left" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="2UGjFq4lGAO" role="3eNLev">
              <node concept="3clFbS" id="2UGjFq4lGAP" role="3eOfB_">
                <node concept="3clFbF" id="2UGjFq4lGAQ" role="3cqZAp">
                  <node concept="1rXfSq" id="2UGjFq4lGAR" role="3clFbG">
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
                        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                    <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                  </node>
                  <node concept="37vLTw" id="2UGjFq4lGBP" role="2ZW6bz">
                    <ref role="3cqZAo" node="2UGjFq4lGBC" resolve="right" />
                  </node>
                </node>
                <node concept="3fqX7Q" id="2UGjFq4lGB4" role="3uHU7B">
                  <node concept="1eOMI4" id="2UGjFq4lGB5" role="3fr31v">
                    <node concept="2ZW3vV" id="2UGjFq4lGB6" role="1eOMHV">
                      <node concept="3uibUv" id="5cDlfXt5PIb" role="2ZW6by">
                        <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                <node concept="3clFbF" id="2UGjFq4lGBd" role="3cqZAp">
                  <node concept="1rXfSq" id="2UGjFq4lGBe" role="3clFbG">
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
        <node concept="3cqZAl" id="3HJTsBn4V_f" role="3clF45" />
        <node concept="3Tmbuc" id="6MYr6JwU_Pm" role="1B3o_S" />
        <node concept="3clFbS" id="3HJTsBn4V_n" role="3clF47">
          <node concept="3clFbJ" id="3HJTsBn7oRW" role="3cqZAp">
            <node concept="3clFbS" id="3HJTsBn7oRY" role="3clFbx">
              <node concept="3cpWs6" id="3HJTsBn7qLI" role="3cqZAp" />
            </node>
            <node concept="3clFbC" id="3HJTsBn7pR4" role="3clFbw">
              <node concept="37vLTw" id="3HJTsBn7qsr" role="3uHU7w">
                <ref role="3cqZAo" node="3HJTsBn4V_d" resolve="rightVal" />
              </node>
              <node concept="37vLTw" id="3HJTsBn7pkA" role="3uHU7B">
                <ref role="3cqZAo" node="3HJTsBn4V_b" resolve="leftVal" />
              </node>
            </node>
          </node>
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
                      <ref role="37wK5l" to="yt73:~Unification.unify(jetbrains.mps.unification.Term,jetbrains.mps.unification.Term):jetbrains.mps.unification.Substitution" resolve="unify" />
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
                  <node concept="YS8fn" id="390NiL16yem" role="3cqZAp">
                    <node concept="2ShNRf" id="390NiL16yen" role="YScLw">
                      <node concept="1pGfFk" id="390NiL16yeo" role="2ShVmc">
                        <ref role="37wK5l" to="w7la:~EvaluationFailureException.&lt;init&gt;(java.lang.String)" resolve="EvaluationFailureException" />
                        <node concept="3cpWs3" id="390NiL16yep" role="37wK5m">
                          <node concept="3cpWs3" id="390NiL16yeq" role="3uHU7B">
                            <node concept="3cpWs3" id="390NiL16yer" role="3uHU7B">
                              <node concept="3cpWs3" id="390NiL16yes" role="3uHU7B">
                                <node concept="3cpWs3" id="390NiL16yet" role="3uHU7B">
                                  <node concept="Xl_RD" id="390NiL16yeu" role="3uHU7B">
                                    <property role="Xl_RC" value="Cannot unify " />
                                  </node>
                                  <node concept="37vLTw" id="390NiL16yev" role="3uHU7w">
                                    <ref role="3cqZAo" node="3HJTsBn4V_b" resolve="leftVal" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="390NiL16yew" role="3uHU7w">
                                  <property role="Xl_RC" value=" and " />
                                </node>
                              </node>
                              <node concept="37vLTw" id="390NiL16yex" role="3uHU7w">
                                <ref role="3cqZAo" node="3HJTsBn4V_d" resolve="rightVal" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="390NiL16yey" role="3uHU7w">
                              <property role="Xl_RC" value=": " />
                            </node>
                          </node>
                          <node concept="1rXfSq" id="390NiL16yez" role="3uHU7w">
                            <ref role="37wK5l" node="390NiL16JOu" resolve="formatMessage" />
                            <node concept="37vLTw" id="390NiL16ye$" role="37wK5m">
                              <ref role="3cqZAo" node="390NiL16ye7" resolve="subs" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="390NiL16ye_" role="3clFbw">
                  <node concept="2OqwBi" id="390NiL16yeA" role="3fr31v">
                    <node concept="37vLTw" id="390NiL16yeB" role="2Oq$k0">
                      <ref role="3cqZAo" node="390NiL16ye7" resolve="subs" />
                    </node>
                    <node concept="liA8E" id="390NiL16yeC" role="2OqNvi">
                      <ref role="37wK5l" to="yt73:~Substitution.isSuccessful():boolean" resolve="isSuccessful" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="390NiL16yeD" role="3cqZAp" />
              <node concept="1DcWWT" id="6SwZmzBBWe0" role="3cqZAp">
                <node concept="3clFbS" id="6SwZmzBBWe3" role="2LFqv$">
                  <node concept="3clFbJ" id="6SwZmzBBXQl" role="3cqZAp">
                    <node concept="3clFbS" id="6SwZmzBBXQn" role="3clFbx">
                      <node concept="3cpWs8" id="6SwZmzBBYur" role="3cqZAp">
                        <node concept="3cpWsn" id="6SwZmzBBYus" role="3cpWs9">
                          <property role="TrG5h" value="vLogical" />
                          <node concept="3uibUv" id="6SwZmzBBYut" role="1tU5fm">
                            <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                            <node concept="3uibUv" id="6SwZmzBBYuu" role="11_B2D">
                              <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="6SwZmzBBYuv" role="33vP2m">
                            <node concept="Xjq3P" id="6SwZmzBBYuw" role="2Oq$k0" />
                            <node concept="liA8E" id="6SwZmzBBYux" role="2OqNvi">
                              <ref role="37wK5l" node="6SwZmzBBLvb" resolve="asLogicalTerm" />
                              <node concept="2OqwBi" id="6SwZmzBC0bY" role="37wK5m">
                                <node concept="37vLTw" id="6SwZmzBC04y" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6SwZmzBBWe4" resolve="bnd" />
                                </node>
                                <node concept="liA8E" id="6SwZmzBC0kj" role="2OqNvi">
                                  <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="6SwZmzBCqd_" role="3cqZAp">
                        <node concept="3cpWsn" id="6SwZmzBCqdA" role="3cpWs9">
                          <property role="TrG5h" value="tLogical" />
                          <node concept="3uibUv" id="6SwZmzBCqdB" role="1tU5fm">
                            <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                            <node concept="3uibUv" id="6SwZmzBCqdC" role="11_B2D">
                              <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="6SwZmzBCqdD" role="33vP2m">
                            <node concept="Xjq3P" id="6SwZmzBCqdE" role="2Oq$k0" />
                            <node concept="liA8E" id="6SwZmzBCqdF" role="2OqNvi">
                              <ref role="37wK5l" node="6SwZmzBBLvb" resolve="asLogicalTerm" />
                              <node concept="2OqwBi" id="6SwZmzBCqdG" role="37wK5m">
                                <node concept="37vLTw" id="6SwZmzBCqdH" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6SwZmzBBWe4" resolve="bnd" />
                                </node>
                                <node concept="liA8E" id="6SwZmzBCqdI" role="2OqNvi">
                                  <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="6SwZmzBCrRM" role="3cqZAp">
                        <node concept="3clFbS" id="6SwZmzBCrRO" role="3clFbx">
                          <node concept="3SKdUt" id="6SwZmzBCJte" role="3cqZAp">
                            <node concept="3SKdUq" id="6SwZmzBCJtg" role="3SKWNk">
                              <property role="3SKdUp" value="same variable" />
                            </node>
                          </node>
                          <node concept="3N13vt" id="6SwZmzBCx7k" role="3cqZAp" />
                        </node>
                        <node concept="3clFbC" id="6SwZmzBCuRS" role="3clFbw">
                          <node concept="2OqwBi" id="6SwZmzBCvsJ" role="3uHU7w">
                            <node concept="37vLTw" id="6SwZmzBCvlS" role="2Oq$k0">
                              <ref role="3cqZAo" node="6SwZmzBCqdA" resolve="tLogical" />
                            </node>
                            <node concept="liA8E" id="6SwZmzBCwD7" role="2OqNvi">
                              <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="6SwZmzBCs5M" role="3uHU7B">
                            <node concept="37vLTw" id="6SwZmzBCrXm" role="2Oq$k0">
                              <ref role="3cqZAo" node="6SwZmzBBYus" resolve="vLogical" />
                            </node>
                            <node concept="liA8E" id="6SwZmzBCtkA" role="2OqNvi">
                              <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1Wc70l" id="6SwZmzBCptl" role="3clFbw">
                      <node concept="1rXfSq" id="6SwZmzBCpKa" role="3uHU7w">
                        <ref role="37wK5l" node="6SwZmzBBJSL" resolve="isLogicalTerm" />
                        <node concept="2OqwBi" id="6SwZmzBCpZW" role="37wK5m">
                          <node concept="37vLTw" id="6SwZmzBCpWJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="6SwZmzBBWe4" resolve="bnd" />
                          </node>
                          <node concept="liA8E" id="6SwZmzBCq7Y" role="2OqNvi">
                            <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
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
                            <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
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
                              <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
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
                              <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="6SwZmzBGn_r" role="3eOfB_">
                        <node concept="3cpWs8" id="6SwZmzBGn_s" role="3cqZAp">
                          <node concept="3cpWsn" id="6SwZmzBGn_t" role="3cpWs9">
                            <property role="TrG5h" value="vLogical" />
                            <node concept="3uibUv" id="6SwZmzBGn_u" role="1tU5fm">
                              <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                              <node concept="3qTvmN" id="6SwZmzBGn_v" role="11_B2D" />
                            </node>
                            <node concept="1rXfSq" id="6SwZmzBGn_w" role="33vP2m">
                              <ref role="37wK5l" node="6SwZmzBBLvF" resolve="asLogicalValue" />
                              <node concept="2OqwBi" id="6SwZmzBGn_x" role="37wK5m">
                                <node concept="37vLTw" id="6SwZmzBGn_y" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6SwZmzBBWe4" resolve="bnd" />
                                </node>
                                <node concept="liA8E" id="6SwZmzBGn_z" role="2OqNvi">
                                  <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="6SwZmzBGn_$" role="3cqZAp">
                          <node concept="3cpWsn" id="6SwZmzBGn__" role="3cpWs9">
                            <property role="TrG5h" value="tLogical" />
                            <node concept="3uibUv" id="6SwZmzBGn_A" role="1tU5fm">
                              <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                              <node concept="3qTvmN" id="6SwZmzBGn_B" role="11_B2D" />
                            </node>
                            <node concept="1rXfSq" id="6SwZmzBGn_C" role="33vP2m">
                              <ref role="37wK5l" node="6SwZmzBBLvF" resolve="asLogicalValue" />
                              <node concept="2OqwBi" id="6SwZmzBGn_D" role="37wK5m">
                                <node concept="37vLTw" id="6SwZmzBGn_E" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6SwZmzBBWe4" resolve="bnd" />
                                </node>
                                <node concept="liA8E" id="6SwZmzBGn_F" role="2OqNvi">
                                  <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="6SwZmzBGn_G" role="3cqZAp">
                          <node concept="3clFbS" id="6SwZmzBGn_H" role="3clFbx">
                            <node concept="3SKdUt" id="6SwZmzBGn_I" role="3cqZAp">
                              <node concept="3SKdUq" id="6SwZmzBGn_J" role="3SKWNk">
                                <property role="3SKdUp" value="same variable" />
                              </node>
                            </node>
                            <node concept="3N13vt" id="6SwZmzBGn_K" role="3cqZAp" />
                          </node>
                          <node concept="3clFbC" id="6SwZmzBGn_L" role="3clFbw">
                            <node concept="2OqwBi" id="6SwZmzBGn_M" role="3uHU7w">
                              <node concept="37vLTw" id="6SwZmzBGn_N" role="2Oq$k0">
                                <ref role="3cqZAo" node="6SwZmzBGn__" resolve="tLogical" />
                              </node>
                              <node concept="liA8E" id="6SwZmzBGn_O" role="2OqNvi">
                                <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="6SwZmzBGn_P" role="3uHU7B">
                              <node concept="37vLTw" id="6SwZmzBGn_Q" role="2Oq$k0">
                                <ref role="3cqZAo" node="6SwZmzBGn_t" resolve="vLogical" />
                              </node>
                              <node concept="liA8E" id="6SwZmzBGn_R" role="2OqNvi">
                                <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6SwZmzBGpdV" role="3cqZAp" />
                  <node concept="YS8fn" id="390NiL16$dZ" role="3cqZAp">
                    <node concept="2ShNRf" id="390NiL16$e0" role="YScLw">
                      <node concept="1pGfFk" id="390NiL16$e1" role="2ShVmc">
                        <ref role="37wK5l" to="w7la:~EvaluationFailureException.&lt;init&gt;(java.lang.String)" resolve="EvaluationFailureException" />
                        <node concept="3cpWs3" id="390NiL16$e3" role="37wK5m">
                          <node concept="3cpWs3" id="390NiL16$e4" role="3uHU7B">
                            <node concept="3cpWs3" id="390NiL16$e5" role="3uHU7B">
                              <node concept="3cpWs3" id="390NiL16$e6" role="3uHU7B">
                                <node concept="Xl_RD" id="390NiL16$e7" role="3uHU7B">
                                  <property role="Xl_RC" value="Unification of " />
                                </node>
                                <node concept="37vLTw" id="390NiL16$e8" role="3uHU7w">
                                  <ref role="3cqZAo" node="3HJTsBn4V_b" resolve="leftVal" />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="390NiL16$e9" role="3uHU7w">
                                <property role="Xl_RC" value=" and " />
                              </node>
                            </node>
                            <node concept="37vLTw" id="390NiL16$ea" role="3uHU7w">
                              <ref role="3cqZAo" node="3HJTsBn4V_d" resolve="rightVal" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="390NiL16$eb" role="3uHU7w">
                            <property role="Xl_RC" value=" results in new bindings" />
                          </node>
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
                    <ref role="37wK5l" to="yt73:~Substitution.bindings():java.util.Collection" resolve="bindings" />
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
                    <node concept="YS8fn" id="390NiL16yi7" role="3cqZAp">
                      <node concept="2ShNRf" id="390NiL16yi8" role="YScLw">
                        <node concept="1pGfFk" id="390NiL16yi9" role="2ShVmc">
                          <ref role="37wK5l" to="w7la:~EvaluationFailureException.&lt;init&gt;(java.lang.String)" resolve="EvaluationFailureException" />
                          <node concept="3cpWs3" id="390NiL16yia" role="37wK5m">
                            <node concept="3cpWs3" id="390NiL16yib" role="3uHU7B">
                              <node concept="3cpWs3" id="390NiL16yic" role="3uHU7B">
                                <node concept="Xl_RD" id="390NiL16yid" role="3uHU7B">
                                  <property role="Xl_RC" value="Values differ " />
                                </node>
                                <node concept="37vLTw" id="390NiL16yie" role="3uHU7w">
                                  <ref role="3cqZAo" node="3HJTsBn4V_b" resolve="leftVal" />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="390NiL16yif" role="3uHU7w">
                                <property role="Xl_RC" value=" and " />
                              </node>
                            </node>
                            <node concept="37vLTw" id="390NiL16yig" role="3uHU7w">
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
            <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
            <node concept="16syzq" id="6MYr6JwQ7Bx" role="11_B2D">
              <ref role="16sUi3" node="6MYr6JwQ5Cq" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="3HJTsBn4V_u" role="3clF45" />
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
            <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
        <node concept="3cqZAl" id="3HJTsBn4V_H" role="3clF45" />
        <node concept="3Tmbuc" id="6MYr6JwUAxn" role="1B3o_S" />
        <node concept="3clFbS" id="3HJTsBn4V_P" role="3clF47">
          <node concept="3cpWs8" id="3HJTsBn77YV" role="3cqZAp">
            <node concept="3cpWsn" id="3HJTsBn77YW" role="3cpWs9">
              <property role="TrG5h" value="leftRepr" />
              <node concept="3uibUv" id="3HJTsBn79hD" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                <node concept="16syzq" id="6MYr6JwQpP1" role="11_B2D">
                  <ref role="16sUi3" node="6MYr6JwQnR4" resolve="T" />
                </node>
              </node>
              <node concept="2OqwBi" id="3HJTsBn77YY" role="33vP2m">
                <node concept="37vLTw" id="3HJTsBn77YZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn4V_C" resolve="left" />
                </node>
                <node concept="liA8E" id="3HJTsBn77Z0" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
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
                  <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3HJTsBn77Zo" role="3cqZAp">
            <node concept="3clFbS" id="3HJTsBn77Zp" role="3clFbx">
              <node concept="YS8fn" id="5TfjU0xlCpc" role="3cqZAp">
                <node concept="2ShNRf" id="5TfjU0xlCpd" role="YScLw">
                  <node concept="1pGfFk" id="5TfjU0xlCpe" role="2ShVmc">
                    <ref role="37wK5l" to="w7la:~EvaluationFailureException.&lt;init&gt;(java.lang.String)" resolve="EvaluationFailureException" />
                    <node concept="3cpWs3" id="5TfjU0xlCpj" role="37wK5m">
                      <node concept="3cpWs3" id="5TfjU0xlMno" role="3uHU7B">
                        <node concept="3cpWs3" id="5TfjU0xlMSu" role="3uHU7B">
                          <node concept="37vLTw" id="5TfjU0xlMXj" role="3uHU7w">
                            <ref role="3cqZAo" node="3HJTsBn4V_C" resolve="left" />
                          </node>
                          <node concept="Xl_RD" id="5TfjU0xlMnu" role="3uHU7B">
                            <property role="Xl_RC" value="Free logical " />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="5TfjU0xlMnw" role="3uHU7w">
                          <property role="Xl_RC" value=" is not equal to " />
                        </node>
                      </node>
                      <node concept="37vLTw" id="5TfjU0xlFbS" role="3uHU7w">
                        <ref role="3cqZAo" node="3HJTsBn4V_F" resolve="rightVal" />
                      </node>
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
                <node concept="3clFbF" id="3HJTsBn77ZK" role="3cqZAp">
                  <node concept="1rXfSq" id="3HJTsBn77ZL" role="3clFbG">
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
            <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
            <node concept="16syzq" id="6MYr6JwQtLp" role="11_B2D">
              <ref role="16sUi3" node="6MYr6JwQsDp" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3HJTsBn4V_U" role="3clF46">
          <property role="TrG5h" value="right" />
          <node concept="3uibUv" id="3HJTsBn4V_V" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
            <node concept="16syzq" id="6MYr6JwQuP9" role="11_B2D">
              <ref role="16sUi3" node="6MYr6JwQsDp" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="3HJTsBn4V_X" role="3clF45" />
        <node concept="3Tmbuc" id="6MYr6JwUATr" role="1B3o_S" />
        <node concept="3clFbS" id="3HJTsBn4VA5" role="3clF47">
          <node concept="3SKdUt" id="3HJTsBn6TsO" role="3cqZAp">
            <node concept="3SKdUq" id="3HJTsBn6U2z" role="3SKWNk">
              <property role="3SKdUp" value="TODO: avoid code duplication" />
            </node>
          </node>
          <node concept="3clFbJ" id="3HJTsBn6R7p" role="3cqZAp">
            <node concept="3clFbS" id="3HJTsBn6R7q" role="3clFbx">
              <node concept="3cpWs6" id="3HJTsBn6R7r" role="3cqZAp" />
            </node>
            <node concept="3clFbC" id="3HJTsBn6R7s" role="3clFbw">
              <node concept="37vLTw" id="3HJTsBn6R7t" role="3uHU7w">
                <ref role="3cqZAo" node="3HJTsBn4V_U" resolve="right" />
              </node>
              <node concept="37vLTw" id="3HJTsBn6R7u" role="3uHU7B">
                <ref role="3cqZAo" node="3HJTsBn4V_R" resolve="left" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3HJTsBn6R7v" role="3cqZAp" />
          <node concept="3cpWs8" id="3HJTsBn6R7w" role="3cqZAp">
            <node concept="3cpWsn" id="3HJTsBn6R7x" role="3cpWs9">
              <property role="TrG5h" value="leftRepr" />
              <node concept="3uibUv" id="3HJTsBn6UOm" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                <node concept="16syzq" id="6MYr6JwQvoS" role="11_B2D">
                  <ref role="16sUi3" node="6MYr6JwQsDp" resolve="T" />
                </node>
              </node>
              <node concept="2OqwBi" id="3HJTsBn6R7z" role="33vP2m">
                <node concept="37vLTw" id="3HJTsBn6R7$" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn4V_R" resolve="left" />
                </node>
                <node concept="liA8E" id="3HJTsBn6R7_" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3HJTsBn6R7A" role="3cqZAp">
            <node concept="3cpWsn" id="3HJTsBn6R7B" role="3cpWs9">
              <property role="TrG5h" value="rightRepr" />
              <node concept="3uibUv" id="3HJTsBn6WzP" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                <node concept="16syzq" id="6MYr6JwQvEZ" role="11_B2D">
                  <ref role="16sUi3" node="6MYr6JwQsDp" resolve="T" />
                </node>
              </node>
              <node concept="2OqwBi" id="3HJTsBn6R7D" role="33vP2m">
                <node concept="37vLTw" id="3HJTsBn6R7E" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn4V_U" resolve="right" />
                </node>
                <node concept="liA8E" id="3HJTsBn6R7F" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3HJTsBn6R7G" role="3cqZAp" />
          <node concept="3clFbJ" id="3HJTsBn6R7H" role="3cqZAp">
            <node concept="3clFbS" id="3HJTsBn6R7I" role="3clFbx">
              <node concept="3SKdUt" id="5TfjU0xlLS$" role="3cqZAp">
                <node concept="3SKdUq" id="5TfjU0xlLSA" role="3SKWNk">
                  <property role="3SKdUp" value="same logical" />
                </node>
              </node>
              <node concept="3cpWs6" id="3HJTsBn6R7J" role="3cqZAp" />
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
              <node concept="3clFbF" id="5TfjU0xlJ7H" role="3cqZAp">
                <node concept="1rXfSq" id="5TfjU0xlJ7F" role="3clFbG">
                  <ref role="37wK5l" node="3HJTsBn4V_a" resolve="tellEq_val_val" />
                  <node concept="2OqwBi" id="5TfjU0xlJoT" role="37wK5m">
                    <node concept="37vLTw" id="5TfjU0xlJj3" role="2Oq$k0">
                      <ref role="3cqZAo" node="3HJTsBn6R7x" resolve="leftRepr" />
                    </node>
                    <node concept="liA8E" id="5TfjU0xlJO3" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5TfjU0xlKvG" role="37wK5m">
                    <node concept="37vLTw" id="5TfjU0xlKit" role="2Oq$k0">
                      <ref role="3cqZAo" node="3HJTsBn6R7B" resolve="rightRepr" />
                    </node>
                    <node concept="liA8E" id="5TfjU0xlKQD" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
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
                  <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
                </node>
              </node>
              <node concept="2OqwBi" id="5TfjU0xlHGF" role="3uHU7B">
                <node concept="37vLTw" id="5TfjU0xlHxc" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn6R7x" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="5TfjU0xlI96" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="390NiL16_4R" role="9aQIa">
              <node concept="3clFbS" id="390NiL16_4S" role="9aQI4">
                <node concept="YS8fn" id="5TfjU0xlL94" role="3cqZAp">
                  <node concept="2ShNRf" id="5TfjU0xlL95" role="YScLw">
                    <node concept="1pGfFk" id="5TfjU0xlL96" role="2ShVmc">
                      <ref role="37wK5l" to="w7la:~EvaluationFailureException.&lt;init&gt;(java.lang.String)" resolve="EvaluationFailureException" />
                      <node concept="3cpWs3" id="5TfjU0xlPwS" role="37wK5m">
                        <node concept="3cpWs3" id="5TfjU0xlOCY" role="3uHU7B">
                          <node concept="3cpWs3" id="5TfjU0xlL97" role="3uHU7B">
                            <node concept="Xl_RD" id="5TfjU0xlL98" role="3uHU7B">
                              <property role="Xl_RC" value="Logical " />
                            </node>
                            <node concept="37vLTw" id="5TfjU0xlOuR" role="3uHU7w">
                              <ref role="3cqZAo" node="3HJTsBn4V_R" resolve="left" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="5TfjU0xlODF" role="3uHU7w">
                            <property role="Xl_RC" value=" is not equal to " />
                          </node>
                        </node>
                        <node concept="37vLTw" id="5TfjU0xlPML" role="3uHU7w">
                          <ref role="3cqZAo" node="3HJTsBn4V_U" resolve="right" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3HJTsBn6R7N" role="3cqZAp" />
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
                      <ref role="37wK5l" to="yt73:~Unification.unify(jetbrains.mps.unification.Term,jetbrains.mps.unification.Term):jetbrains.mps.unification.Substitution" resolve="unify" />
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
                      <ref role="37wK5l" to="yt73:~Substitution.isSuccessful():boolean" resolve="isSuccessful" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6SwZmzBD7ZA" role="3cqZAp" />
              <node concept="1DcWWT" id="6SwZmzBD5Ag" role="3cqZAp">
                <node concept="3clFbS" id="6SwZmzBD5Ah" role="2LFqv$">
                  <node concept="3clFbJ" id="6SwZmzBD5Ai" role="3cqZAp">
                    <node concept="3clFbS" id="6SwZmzBD5Aj" role="3clFbx">
                      <node concept="3cpWs8" id="6SwZmzBD5Ak" role="3cqZAp">
                        <node concept="3cpWsn" id="6SwZmzBD5Al" role="3cpWs9">
                          <property role="TrG5h" value="vLogical" />
                          <node concept="3uibUv" id="6SwZmzBD5Am" role="1tU5fm">
                            <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                            <node concept="3uibUv" id="6SwZmzBD5An" role="11_B2D">
                              <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="6SwZmzBD5Ao" role="33vP2m">
                            <node concept="Xjq3P" id="6SwZmzBD5Ap" role="2Oq$k0" />
                            <node concept="liA8E" id="6SwZmzBD5Aq" role="2OqNvi">
                              <ref role="37wK5l" node="6SwZmzBBLvb" resolve="asLogicalTerm" />
                              <node concept="2OqwBi" id="6SwZmzBD5Ar" role="37wK5m">
                                <node concept="37vLTw" id="6SwZmzBD5As" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6SwZmzBD5B9" resolve="bnd" />
                                </node>
                                <node concept="liA8E" id="6SwZmzBD5At" role="2OqNvi">
                                  <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="6SwZmzBD5Au" role="3cqZAp">
                        <node concept="3cpWsn" id="6SwZmzBD5Av" role="3cpWs9">
                          <property role="TrG5h" value="tLogical" />
                          <node concept="3uibUv" id="6SwZmzBD5Aw" role="1tU5fm">
                            <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                            <node concept="3uibUv" id="6SwZmzBD5Ax" role="11_B2D">
                              <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="6SwZmzBD5Ay" role="33vP2m">
                            <node concept="Xjq3P" id="6SwZmzBD5Az" role="2Oq$k0" />
                            <node concept="liA8E" id="6SwZmzBD5A$" role="2OqNvi">
                              <ref role="37wK5l" node="6SwZmzBBLvb" resolve="asLogicalTerm" />
                              <node concept="2OqwBi" id="6SwZmzBD5A_" role="37wK5m">
                                <node concept="37vLTw" id="6SwZmzBD5AA" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6SwZmzBD5B9" resolve="bnd" />
                                </node>
                                <node concept="liA8E" id="6SwZmzBD5AB" role="2OqNvi">
                                  <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="6SwZmzBD5AC" role="3cqZAp">
                        <node concept="3clFbS" id="6SwZmzBD5AD" role="3clFbx">
                          <node concept="3SKdUt" id="6SwZmzBD5AE" role="3cqZAp">
                            <node concept="3SKdUq" id="6SwZmzBD5AF" role="3SKWNk">
                              <property role="3SKdUp" value="same variable" />
                            </node>
                          </node>
                          <node concept="3N13vt" id="6SwZmzBD5AG" role="3cqZAp" />
                        </node>
                        <node concept="3clFbC" id="6SwZmzBD5AH" role="3clFbw">
                          <node concept="2OqwBi" id="6SwZmzBD5AI" role="3uHU7w">
                            <node concept="37vLTw" id="6SwZmzBD5AJ" role="2Oq$k0">
                              <ref role="3cqZAo" node="6SwZmzBD5Av" resolve="tLogical" />
                            </node>
                            <node concept="liA8E" id="6SwZmzBD5AK" role="2OqNvi">
                              <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="6SwZmzBD5AL" role="3uHU7B">
                            <node concept="37vLTw" id="6SwZmzBD5AM" role="2Oq$k0">
                              <ref role="3cqZAo" node="6SwZmzBD5Al" resolve="vLogical" />
                            </node>
                            <node concept="liA8E" id="6SwZmzBD5AN" role="2OqNvi">
                              <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1Wc70l" id="6SwZmzBD5AO" role="3clFbw">
                      <node concept="1rXfSq" id="6SwZmzBD5AP" role="3uHU7w">
                        <ref role="37wK5l" node="6SwZmzBBJSL" resolve="isLogicalTerm" />
                        <node concept="2OqwBi" id="6SwZmzBD5AQ" role="37wK5m">
                          <node concept="37vLTw" id="6SwZmzBD5AR" role="2Oq$k0">
                            <ref role="3cqZAo" node="6SwZmzBD5B9" resolve="bnd" />
                          </node>
                          <node concept="liA8E" id="6SwZmzBD5AS" role="2OqNvi">
                            <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
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
                            <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
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
                              <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
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
                              <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="6SwZmzBG8UE" role="3eOfB_">
                        <node concept="3cpWs8" id="6SwZmzBGbbX" role="3cqZAp">
                          <node concept="3cpWsn" id="6SwZmzBGbbY" role="3cpWs9">
                            <property role="TrG5h" value="vLogical" />
                            <node concept="3uibUv" id="6SwZmzBGbbQ" role="1tU5fm">
                              <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                              <node concept="3qTvmN" id="6SwZmzBGdiR" role="11_B2D" />
                            </node>
                            <node concept="1rXfSq" id="6SwZmzBGbbZ" role="33vP2m">
                              <ref role="37wK5l" node="6SwZmzBBLvF" resolve="asLogicalValue" />
                              <node concept="2OqwBi" id="6SwZmzBGbc0" role="37wK5m">
                                <node concept="37vLTw" id="6SwZmzBGbc1" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6SwZmzBD5B9" resolve="bnd" />
                                </node>
                                <node concept="liA8E" id="6SwZmzBGbc2" role="2OqNvi">
                                  <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="6SwZmzBGfdM" role="3cqZAp">
                          <node concept="3cpWsn" id="6SwZmzBGfdN" role="3cpWs9">
                            <property role="TrG5h" value="tLogical" />
                            <node concept="3uibUv" id="6SwZmzBGfdO" role="1tU5fm">
                              <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                              <node concept="3qTvmN" id="6SwZmzBGfdP" role="11_B2D" />
                            </node>
                            <node concept="1rXfSq" id="6SwZmzBGfdQ" role="33vP2m">
                              <ref role="37wK5l" node="6SwZmzBBLvF" resolve="asLogicalValue" />
                              <node concept="2OqwBi" id="6SwZmzBGfdR" role="37wK5m">
                                <node concept="37vLTw" id="6SwZmzBGfdS" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6SwZmzBD5B9" resolve="bnd" />
                                </node>
                                <node concept="liA8E" id="6SwZmzBGfdT" role="2OqNvi">
                                  <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="6SwZmzBGgQs" role="3cqZAp">
                          <node concept="3clFbS" id="6SwZmzBGgQt" role="3clFbx">
                            <node concept="3SKdUt" id="6SwZmzBGgQu" role="3cqZAp">
                              <node concept="3SKdUq" id="6SwZmzBGgQv" role="3SKWNk">
                                <property role="3SKdUp" value="same variable" />
                              </node>
                            </node>
                            <node concept="3N13vt" id="6SwZmzBGgQw" role="3cqZAp" />
                          </node>
                          <node concept="3clFbC" id="6SwZmzBGgQx" role="3clFbw">
                            <node concept="2OqwBi" id="6SwZmzBGgQy" role="3uHU7w">
                              <node concept="37vLTw" id="6SwZmzBGgQz" role="2Oq$k0">
                                <ref role="3cqZAo" node="6SwZmzBGfdN" resolve="tLogical" />
                              </node>
                              <node concept="liA8E" id="6SwZmzBGgQ$" role="2OqNvi">
                                <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="6SwZmzBGgQ_" role="3uHU7B">
                              <node concept="37vLTw" id="6SwZmzBGgQA" role="2Oq$k0">
                                <ref role="3cqZAo" node="6SwZmzBGbbY" resolve="vLogical" />
                              </node>
                              <node concept="liA8E" id="6SwZmzBGgQB" role="2OqNvi">
                                <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
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
                    <ref role="37wK5l" to="yt73:~Substitution.bindings():java.util.Collection" resolve="bindings" />
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
            <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
            <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                <node concept="16syzq" id="6MYr6JwQIFk" role="11_B2D">
                  <ref role="16sUi3" node="6MYr6JwQGB9" resolve="T" />
                </node>
              </node>
              <node concept="2OqwBi" id="3HJTsBn6Ehm" role="33vP2m">
                <node concept="37vLTw" id="3HJTsBn6Ehn" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn4VAC" resolve="left" />
                </node>
                <node concept="liA8E" id="3HJTsBn6Eho" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
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
                  <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3HJTsBn6Ehq" role="3cqZAp">
            <node concept="3clFbS" id="3HJTsBn6Ehr" role="3clFbx">
              <node concept="3SKdUt" id="5TfjU0xlT5L" role="3cqZAp">
                <node concept="3SKdUq" id="5TfjU0xlT5N" role="3SKWNk">
                  <property role="3SKdUp" value="free logical is equal to itself only" />
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
            <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
            <node concept="16syzq" id="6MYr6JwQLAe" role="11_B2D">
              <ref role="16sUi3" node="6MYr6JwQJMk" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3HJTsBn4VAW" role="3clF46">
          <property role="TrG5h" value="right" />
          <node concept="3uibUv" id="3HJTsBn4VAX" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
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
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                <node concept="16syzq" id="6MYr6JwQN3J" role="11_B2D">
                  <ref role="16sUi3" node="6MYr6JwQJMk" resolve="T" />
                </node>
              </node>
              <node concept="2OqwBi" id="3HJTsBn61Rt" role="33vP2m">
                <node concept="37vLTw" id="3HJTsBn61Ru" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn4VAT" resolve="left" />
                </node>
                <node concept="liA8E" id="3HJTsBn61Rv" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3HJTsBn61Rw" role="3cqZAp">
            <node concept="3cpWsn" id="3HJTsBn61Rx" role="3cpWs9">
              <property role="TrG5h" value="rightRepr" />
              <node concept="3uibUv" id="3HJTsBn6yZM" role="1tU5fm">
                <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                <node concept="16syzq" id="6MYr6JwQNvZ" role="11_B2D">
                  <ref role="16sUi3" node="6MYr6JwQJMk" resolve="T" />
                </node>
              </node>
              <node concept="2OqwBi" id="3HJTsBn61Rz" role="33vP2m">
                <node concept="37vLTw" id="3HJTsBn61R$" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn4VAW" resolve="right" />
                </node>
                <node concept="liA8E" id="3HJTsBn61R_" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~JoinableLogical.findRoot():jetbrains.mps.logic.reactor.logical.JoinableLogical" resolve="findRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3HJTsBn6_OQ" role="3cqZAp" />
          <node concept="3clFbJ" id="3HJTsBn6_pv" role="3cqZAp">
            <node concept="3clFbS" id="3HJTsBn6_pw" role="3clFbx">
              <node concept="3SKdUt" id="5TfjU0xm1Nj" role="3cqZAp">
                <node concept="3SKdUq" id="5TfjU0xm1Nl" role="3SKWNk">
                  <property role="3SKdUp" value="same logical" />
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
                      <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5TfjU0xmdeJ" role="37wK5m">
                    <node concept="37vLTw" id="5TfjU0xmcj$" role="2Oq$k0">
                      <ref role="3cqZAo" node="3HJTsBn61Rx" resolve="rightRepr" />
                    </node>
                    <node concept="liA8E" id="5TfjU0xmdxZ" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
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
                  <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
                </node>
              </node>
              <node concept="2OqwBi" id="5TfjU0xm4Bq" role="3uHU7B">
                <node concept="37vLTw" id="5TfjU0xm3IX" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn61Rr" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="5TfjU0xm5Ho" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
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
                      <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
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
                <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
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
                      <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
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
                <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="5TfjU0xmejy" role="3cqZAp" />
          <node concept="3SKdUt" id="390NiL16ICi" role="3cqZAp">
            <node concept="3SKdUq" id="390NiL16ICk" role="3SKWNk">
              <property role="3SKdUp" value="both logicals are free" />
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
                    <ref role="37wK5l" to="yt73:~Substitution.failureCause():jetbrains.mps.unification.Substitution$FailureCause" resolve="failureCause" />
                  </node>
                </node>
                <node concept="liA8E" id="390NiL16JOF" role="2OqNvi">
                  <ref role="37wK5l" to="yt73:~Substitution$FailureCause.toString():java.lang.String" resolve="toString" />
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
                    <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                    <node concept="Xl_RD" id="390NiL16JOL" role="37wK5m">
                      <property role="Xl_RC" value="'%s' != '%s'" />
                    </node>
                    <node concept="2OqwBi" id="390NiL16JOM" role="37wK5m">
                      <node concept="37vLTw" id="390NiL16JON" role="2Oq$k0">
                        <ref role="3cqZAo" node="390NiL16JOx" resolve="subs" />
                      </node>
                      <node concept="liA8E" id="390NiL16JOO" role="2OqNvi">
                        <ref role="37wK5l" to="yt73:~Substitution.failureDetails():java.lang.Object[]" resolve="failureDetails" />
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
                    <ref role="37wK5l" to="yt73:~Substitution.failureCause():jetbrains.mps.unification.Substitution$FailureCause" resolve="failureCause" />
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
                    <ref role="37wK5l" to="yt73:~Substitution.failureDetails():java.lang.Object[]" resolve="failureDetails" />
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
      <node concept="2tJIrI" id="6SwZmzBBO54" role="jymVt" />
      <node concept="3clFb_" id="6SwZmzBBLvb" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="asLogicalTerm" />
        <node concept="37vLTG" id="6SwZmzBBLvc" role="3clF46">
          <property role="TrG5h" value="var" />
          <node concept="16syzq" id="6SwZmzBBLvd" role="1tU5fm">
            <ref role="16sUi3" node="6SwZmzBBLvh" resolve="TERM" />
          </node>
        </node>
        <node concept="3uibUv" id="6SwZmzBBLve" role="3clF45">
          <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
          <node concept="16syzq" id="6SwZmzBBLvf" role="11_B2D">
            <ref role="16sUi3" node="6SwZmzBBLvh" resolve="TERM" />
          </node>
        </node>
        <node concept="3Tm6S6" id="6SwZmzBBLvg" role="1B3o_S" />
        <node concept="16euLQ" id="6SwZmzBBLvh" role="16eVyc">
          <property role="TrG5h" value="TERM" />
          <node concept="3uibUv" id="6SwZmzBBLvi" role="3ztrMU">
            <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
          </node>
        </node>
        <node concept="3clFbS" id="6SwZmzBBLvj" role="3clF47">
          <node concept="3clFbJ" id="6SwZmzBBLvk" role="3cqZAp">
            <node concept="3clFbS" id="6SwZmzBBLvl" role="3clFbx">
              <node concept="3cpWs6" id="6SwZmzBBLvm" role="3cqZAp">
                <node concept="10QFUN" id="6SwZmzBBLvn" role="3cqZAk">
                  <node concept="2OqwBi" id="6SwZmzBBLvo" role="10QFUP">
                    <node concept="1eOMI4" id="6SwZmzBBLvp" role="2Oq$k0">
                      <node concept="10QFUN" id="6SwZmzBBLvq" role="1eOMHV">
                        <node concept="37vLTw" id="6SwZmzBBLvr" role="10QFUP">
                          <ref role="3cqZAo" node="6SwZmzBBLvc" resolve="var" />
                        </node>
                        <node concept="3uibUv" id="6SwZmzBBLvs" role="10QFUM">
                          <ref role="3uigEE" to="oy3s:4TCblo5MJ1m" resolve="LogicalDataForm" />
                          <node concept="16syzq" id="6SwZmzBBLvt" role="11_B2D">
                            <ref role="16sUi3" node="6SwZmzBBLvh" resolve="TERM" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="6SwZmzBBLvu" role="2OqNvi">
                      <ref role="37wK5l" to="oy3s:4TCblo5MS1o" resolve="logical" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="6SwZmzBBLvv" role="10QFUM">
                    <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                    <node concept="16syzq" id="6SwZmzBBLvw" role="11_B2D">
                      <ref role="16sUi3" node="6SwZmzBBLvh" resolve="TERM" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6SwZmzBBLvx" role="3cqZAp" />
            </node>
            <node concept="2ZW3vV" id="6SwZmzBBLvy" role="3clFbw">
              <node concept="3uibUv" id="6SwZmzBBLvz" role="2ZW6by">
                <ref role="3uigEE" to="oy3s:4TCblo5MJ1m" resolve="LogicalDataForm" />
              </node>
              <node concept="37vLTw" id="6SwZmzBBLv$" role="2ZW6bz">
                <ref role="3cqZAo" node="6SwZmzBBLvc" resolve="var" />
              </node>
            </node>
            <node concept="9aQIb" id="6SwZmzBBLv_" role="9aQIa">
              <node concept="3clFbS" id="6SwZmzBBLvA" role="9aQI4">
                <node concept="YS8fn" id="6SwZmzBBLvB" role="3cqZAp">
                  <node concept="2ShNRf" id="6SwZmzBBLvC" role="YScLw">
                    <node concept="1pGfFk" id="6SwZmzBBLvD" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6SwZmzBBLvE" role="jymVt" />
      <node concept="3clFb_" id="6SwZmzBBLvF" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="asLogicalValue" />
        <node concept="37vLTG" id="6SwZmzBBLvG" role="3clF46">
          <property role="TrG5h" value="var" />
          <node concept="3uibUv" id="6SwZmzBCmH5" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3uibUv" id="6SwZmzBBLvI" role="3clF45">
          <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
          <node concept="16syzq" id="6SwZmzBBLvJ" role="11_B2D">
            <ref role="16sUi3" node="6SwZmzBBLvL" resolve="T" />
          </node>
        </node>
        <node concept="3Tm6S6" id="6SwZmzBBLvK" role="1B3o_S" />
        <node concept="16euLQ" id="6SwZmzBBLvL" role="16eVyc">
          <property role="TrG5h" value="T" />
        </node>
        <node concept="3clFbS" id="6SwZmzBBLvM" role="3clF47">
          <node concept="3clFbJ" id="6SwZmzBBLvN" role="3cqZAp">
            <node concept="3clFbS" id="6SwZmzBBLvO" role="3clFbx">
              <node concept="3cpWs6" id="6SwZmzBBLvP" role="3cqZAp">
                <node concept="10QFUN" id="6SwZmzBBLvQ" role="3cqZAk">
                  <node concept="2OqwBi" id="6SwZmzBBLvR" role="10QFUP">
                    <node concept="1eOMI4" id="6SwZmzBBLvS" role="2Oq$k0">
                      <node concept="10QFUN" id="6SwZmzBBLvT" role="1eOMHV">
                        <node concept="37vLTw" id="6SwZmzBBLvU" role="10QFUP">
                          <ref role="3cqZAo" node="6SwZmzBBLvG" resolve="var" />
                        </node>
                        <node concept="3uibUv" id="6SwZmzBBLvV" role="10QFUM">
                          <ref role="3uigEE" to="oy3s:3gNap3fN2hw" resolve="LogicalValue" />
                          <node concept="16syzq" id="6SwZmzBBLvW" role="11_B2D">
                            <ref role="16sUi3" node="6SwZmzBBLvL" resolve="T" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="6SwZmzBBLvX" role="2OqNvi">
                      <ref role="37wK5l" to="oy3s:3gNap3fN7SD" resolve="logical" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="6SwZmzBBLvY" role="10QFUM">
                    <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                    <node concept="16syzq" id="6SwZmzBBLvZ" role="11_B2D">
                      <ref role="16sUi3" node="6SwZmzBBLvL" resolve="T" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6SwZmzBBLw0" role="3cqZAp" />
            </node>
            <node concept="2ZW3vV" id="6SwZmzBBLw1" role="3clFbw">
              <node concept="3uibUv" id="6SwZmzBBLw2" role="2ZW6by">
                <ref role="3uigEE" to="oy3s:3gNap3fN2hw" resolve="LogicalValue" />
              </node>
              <node concept="37vLTw" id="6SwZmzBBLw3" role="2ZW6bz">
                <ref role="3cqZAo" node="6SwZmzBBLvG" resolve="var" />
              </node>
            </node>
            <node concept="9aQIb" id="6SwZmzBBLw4" role="9aQIa">
              <node concept="3clFbS" id="6SwZmzBBLw5" role="9aQI4">
                <node concept="YS8fn" id="6SwZmzBBLw6" role="3cqZAp">
                  <node concept="2ShNRf" id="6SwZmzBBLw7" role="YScLw">
                    <node concept="1pGfFk" id="6SwZmzBBLw8" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                    </node>
                  </node>
                </node>
              </node>
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
                <ref role="3uigEE" to="oy3s:4TCblo5MJ1m" resolve="LogicalDataForm" />
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
                <ref role="3uigEE" to="oy3s:3gNap3fN2hw" resolve="LogicalValue" />
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
      <node concept="3uibUv" id="60zk4o77lms" role="1zkMxy">
        <ref role="3uigEE" to="w7la:~AbstractSolver" resolve="AbstractSolver" />
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
      <property role="TrG5h" value="BOUND" />
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
                <ref role="3cqZAo" node="5uFPQ7C26$b" resolve="BOUND_SYM" />
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
      <property role="TrG5h" value="BOUND_SYM" />
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
              <property role="Xl_RC" value="isNonVar" />
            </node>
            <node concept="3cmrfG" id="5uFPQ7C276T" role="37wK5m">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="3Tm1VV" id="7lt0LtQvKLY" role="1B3o_S" />
            <node concept="3clFb_" id="7lt0LtQvKLZ" role="jymVt">
              <property role="TrG5h" value="solver" />
              <property role="1EzhhJ" value="false" />
              <node concept="3uibUv" id="7lt0LtQvKM0" role="3clF45">
                <ref role="3uigEE" to="w7la:~AbstractSolver" resolve="AbstractSolver" />
              </node>
              <node concept="3Tm1VV" id="7lt0LtQvKM1" role="1B3o_S" />
              <node concept="3clFbS" id="7lt0LtQvKM3" role="3clF47">
                <node concept="3clFbF" id="7lt0LtQvOjC" role="3cqZAp">
                  <node concept="2ShNRf" id="7lt0LtQvOjA" role="3clFbG">
                    <node concept="HV5vD" id="7lt0LtQvOv1" role="2ShVmc">
                      <ref role="HV5vE" node="7ISVfSJ1oi" resolve="LogicalPredicate.LogicalSolver.Free" />
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
                    <ref role="37wK5l" node="5uFPQ7CiQEd" resolve="FREE" />
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
              <property role="Xl_RC" value="isVar" />
            </node>
            <node concept="3cmrfG" id="5uFPQ7C279E" role="37wK5m">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="3Tm1VV" id="7lt0LtQvPGB" role="1B3o_S" />
            <node concept="3clFb_" id="7lt0LtQvPGC" role="jymVt">
              <property role="TrG5h" value="solver" />
              <property role="1EzhhJ" value="false" />
              <node concept="3uibUv" id="7lt0LtQvPGD" role="3clF45">
                <ref role="3uigEE" to="w7la:~AbstractSolver" resolve="AbstractSolver" />
              </node>
              <node concept="3Tm1VV" id="7lt0LtQvPGE" role="1B3o_S" />
              <node concept="3clFbS" id="7lt0LtQvPGG" role="3clF47">
                <node concept="3clFbF" id="7lt0LtQvQBk" role="3cqZAp">
                  <node concept="2ShNRf" id="7lt0LtQvQBi" role="3clFbG">
                    <node concept="HV5vD" id="7lt0LtQvQMH" role="2ShVmc">
                      <ref role="HV5vE" node="7ISVfSJ0DF" resolve="LogicalPredicate.LogicalSolver.Bound" />
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
                    <ref role="37wK5l" node="5uFPQ7CiPYx" resolve="BOUND" />
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
                      <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2UGjFq4lQ3A" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
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
          <node concept="3clFbJ" id="2UGjFq4lQVz" role="3cqZAp">
            <node concept="3clFbS" id="2UGjFq4lQV$" role="3clFbx">
              <node concept="YS8fn" id="2UGjFq4lQV_" role="3cqZAp">
                <node concept="2ShNRf" id="2UGjFq4lQVA" role="YScLw">
                  <node concept="1pGfFk" id="2UGjFq4lQVB" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                    <node concept="Xl_RD" id="2UGjFq4lQVC" role="37wK5m">
                      <property role="Xl_RC" value="logical bound state is inconsistent" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2UGjFq4lRmk" role="3cqZAp" />
            </node>
            <node concept="3fqX7Q" id="2UGjFq4lQVD" role="3clFbw">
              <node concept="1rXfSq" id="2UGjFq4lQVE" role="3fr31v">
                <ref role="37wK5l" node="6MYr6Jx1D_6" resolve="_ask" />
                <node concept="10QFUN" id="2UGjFq4lQVF" role="37wK5m">
                  <node concept="3uibUv" id="2UGjFq4lQVG" role="10QFUM">
                    <ref role="3uigEE" to="bj13:~JoinableLogical" resolve="JoinableLogical" />
                    <node concept="3qTvmN" id="2UGjFq4lQVH" role="11_B2D" />
                  </node>
                  <node concept="2OqwBi" id="2UGjFq4lR8D" role="10QFUP">
                    <node concept="2OqwBi" id="2UGjFq4lR3x" role="2Oq$k0">
                      <node concept="37vLTw" id="2UGjFq4lQYz" role="2Oq$k0">
                        <ref role="3cqZAo" node="2UGjFq4lQgb" resolve="invocation" />
                      </node>
                      <node concept="liA8E" id="2UGjFq4lR5V" role="2OqNvi">
                        <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2UGjFq4lRfo" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                      <node concept="3cmrfG" id="2UGjFq4lRja" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
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
                  <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
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
                    <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
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
      <node concept="3uibUv" id="60zk4o77mgW" role="1zkMxy">
        <ref role="3uigEE" to="w7la:~AbstractSolver" resolve="AbstractSolver" />
      </node>
    </node>
    <node concept="2tJIrI" id="7lt0LtQwxu_" role="jymVt" />
    <node concept="3Tm1VV" id="5$WbtTOYoMc" role="1B3o_S" />
    <node concept="3uibUv" id="4xBopTzr8gp" role="1zkMxy">
      <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
    </node>
  </node>
  <node concept="312cEu" id="3F6vMxqo13Y">
    <property role="TrG5h" value="DefaultSessionSolver" />
    <node concept="2tJIrI" id="3F6vMxqo1bG" role="jymVt" />
    <node concept="3clFbW" id="23c4kVtavpK" role="jymVt">
      <node concept="3cqZAl" id="23c4kVtavpM" role="3clF45" />
      <node concept="3Tm1VV" id="23c4kVtavpN" role="1B3o_S" />
      <node concept="3clFbS" id="23c4kVtavpO" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="3F6vMxqo23u" role="jymVt" />
    <node concept="3clFb_" id="3F6vMxqo28Q" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="registerSymbol" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3Tmbuc" id="3F6vMxqo28S" role="1B3o_S" />
      <node concept="3cqZAl" id="3F6vMxqo28T" role="3clF45" />
      <node concept="37vLTG" id="3F6vMxqo28U" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="3F6vMxqo28V" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="3F6vMxqo28W" role="3clF46">
        <property role="TrG5h" value="computingTracer" />
        <node concept="3uibUv" id="3F6vMxqo28X" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~EvaluationTrace" resolve="EvaluationTrace" />
        </node>
      </node>
      <node concept="3clFbS" id="3F6vMxqo28Y" role="3clF47">
        <node concept="3clFbJ" id="7lt0LtQvblr" role="3cqZAp">
          <node concept="3clFbS" id="7lt0LtQvblt" role="3clFbx">
            <node concept="3clFbF" id="7lt0LtQvcCW" role="3cqZAp">
              <node concept="2OqwBi" id="7lt0LtQvcH7" role="3clFbG">
                <node concept="Xjq3P" id="7lt0LtQvcCU" role="2Oq$k0" />
                <node concept="liA8E" id="7lt0LtQvcPw" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~SessionSolver.registerSolver(jetbrains.mps.logic.reactor.program.PredicateSymbol,jetbrains.mps.logic.reactor.evaluation.AbstractSolver):void" resolve="registerSolver" />
                  <node concept="37vLTw" id="7lt0LtQvcUA" role="37wK5m">
                    <ref role="3cqZAo" node="3F6vMxqo28U" resolve="symbol" />
                  </node>
                  <node concept="2OqwBi" id="7lt0LtQvcY5" role="37wK5m">
                    <node concept="1eOMI4" id="7lt0LtQvcY6" role="2Oq$k0">
                      <node concept="10QFUN" id="7lt0LtQvcY7" role="1eOMHV">
                        <node concept="3uibUv" id="7lt0LtQvcY8" role="10QFUM">
                          <ref role="3uigEE" node="7lt0LtQvaw_" resolve="PredicateSymbolExt" />
                        </node>
                        <node concept="37vLTw" id="7lt0LtQvcY9" role="10QFUP">
                          <ref role="3cqZAo" node="3F6vMxqo28U" resolve="symbol" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7lt0LtQvcYa" role="2OqNvi">
                      <ref role="37wK5l" node="7lt0LtQvaPQ" resolve="solver" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7lt0LtQvWVx" role="3cqZAp" />
          </node>
          <node concept="2ZW3vV" id="7lt0LtQvbS4" role="3clFbw">
            <node concept="3uibUv" id="7lt0LtQvcbN" role="2ZW6by">
              <ref role="3uigEE" node="7lt0LtQvaw_" resolve="PredicateSymbolExt" />
            </node>
            <node concept="37vLTw" id="7lt0LtQvbzZ" role="2ZW6bz">
              <ref role="3cqZAo" node="3F6vMxqo28U" resolve="symbol" />
            </node>
          </node>
          <node concept="9aQIb" id="7lt0LtQvW_z" role="9aQIa">
            <node concept="3clFbS" id="7lt0LtQvW_$" role="9aQI4">
              <node concept="YS8fn" id="5mr7UHchgjZ" role="3cqZAp">
                <node concept="2ShNRf" id="5mr7UHchgme" role="YScLw">
                  <node concept="1pGfFk" id="5mr7UHchgDA" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="3cpWs3" id="5mr7UHchgIt" role="37wK5m">
                      <node concept="37vLTw" id="5mr7UHchgKN" role="3uHU7w">
                        <ref role="3cqZAo" node="3F6vMxqo28U" resolve="symbol" />
                      </node>
                      <node concept="Xl_RD" id="5mr7UHchgEB" role="3uHU7B">
                        <property role="Xl_RC" value="unknown symbol: " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3F6vMxqo28Z" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3F6vMxqo1bP" role="jymVt" />
    <node concept="3Tm1VV" id="3F6vMxqo13Z" role="1B3o_S" />
    <node concept="3uibUv" id="3F6vMxqo15F" role="1zkMxy">
      <ref role="3uigEE" to="w7la:~SessionSolver" resolve="SessionSolver" />
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
              <node concept="3uibUv" id="7lt0LtQvxYS" role="3clF45">
                <ref role="3uigEE" to="w7la:~AbstractSolver" resolve="AbstractSolver" />
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
                      <ref role="37wK5l" to="w7la:~PredicateInvocation.predicate():jetbrains.mps.logic.reactor.program.Predicate" resolve="predicate" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="5WBVN_M2TRc" role="3cqZAp">
            <node concept="3SKdUq" id="5WBVN_M2TRe" role="3SKWNk">
              <property role="3SKdUp" value="the expression has been evaluated while instantiating arguments" />
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
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="1v5snkI5gi3" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
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
            <node concept="3SKdUq" id="5pIcDR7_$JK" role="3SKWNk">
              <property role="3SKdUp" value="TODO: return false in case the expression evaluates to null?" />
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
          <node concept="3clFbJ" id="2UGjFq4pFcR" role="3cqZAp">
            <node concept="3clFbS" id="2UGjFq4pFcS" role="3clFbx">
              <node concept="YS8fn" id="2UGjFq4pFcT" role="3cqZAp">
                <node concept="2ShNRf" id="2UGjFq4pFcU" role="YScLw">
                  <node concept="1pGfFk" id="2UGjFq4pFcV" role="2ShVmc">
                    <ref role="37wK5l" to="w7la:~EvaluationFailureException.&lt;init&gt;(java.lang.String)" resolve="EvaluationFailureException" />
                    <node concept="3cpWs3" id="2UGjFq4pFcW" role="37wK5m">
                      <node concept="2OqwBi" id="2UGjFq4pGID" role="3uHU7w">
                        <node concept="2OqwBi" id="2UGjFq4pG$q" role="2Oq$k0">
                          <node concept="37vLTw" id="2UGjFq4pGyz" role="2Oq$k0">
                            <ref role="3cqZAo" node="5WBVN_M2Qjf" resolve="invocation" />
                          </node>
                          <node concept="liA8E" id="2UGjFq4pGBj" role="2OqNvi">
                            <ref role="37wK5l" to="w7la:~PredicateInvocation.predicate():jetbrains.mps.logic.reactor.program.Predicate" resolve="predicate" />
                          </node>
                        </node>
                        <node concept="liA8E" id="2UGjFq4pGMy" role="2OqNvi">
                          <ref role="37wK5l" to="av0y:~Predicate.symbol():jetbrains.mps.logic.reactor.program.PredicateSymbol" resolve="symbol" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="2UGjFq4pFcY" role="3uHU7B">
                        <property role="Xl_RC" value="unsatisfied predicate: " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="2UGjFq4pFcZ" role="3clFbw">
              <node concept="1rXfSq" id="2UGjFq4pFd0" role="3fr31v">
                <ref role="37wK5l" node="5WBVN_M2Qjm" resolve="ask" />
                <node concept="37vLTw" id="2UGjFq4pGvi" role="37wK5m">
                  <ref role="3cqZAo" node="5WBVN_M2Qjf" resolve="invocation" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5WBVN_M2Qjl" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5WBVN_M2Qj4" role="jymVt" />
      <node concept="3Tm1VV" id="5WBVN_M2Qfa" role="1B3o_S" />
      <node concept="3uibUv" id="5WBVN_M2Qig" role="1zkMxy">
        <ref role="3uigEE" to="w7la:~AbstractSolver" resolve="AbstractSolver" />
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
      <node concept="3uibUv" id="7lt0LtQvaSJ" role="3clF45">
        <ref role="3uigEE" to="w7la:~AbstractSolver" resolve="AbstractSolver" />
      </node>
      <node concept="3Tm1VV" id="7lt0LtQvaPT" role="1B3o_S" />
      <node concept="3clFbS" id="7lt0LtQvaPU" role="3clF47" />
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
</model>

