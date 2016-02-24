<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f3ff7852-b9dd-4760-b213-a8a031c77d0e(jetbrains.mps.logic.jchr.predicate)">
  <persistence version="9" />
  <languages>
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="f8dg" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:annotations(jetbrains.mps.jchr.runtime/)" />
    <import index="eifs" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:runtime(jetbrains.mps.jchr.runtime/)" />
    <import index="qrld" ref="r:2a79c8aa-e372-4c00-8d71-5d7f3db517e4(jetbrains.mps.logic.reactor.evaluation)" />
    <import index="eift" ref="a5478664-6b44-4c62-a9f7-434f8aa57eee/java:runtime(jetbrains.mps.logic.runtime/)" />
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.logic.atom)" />
    <import index="9js4" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:runtime.hash(jetbrains.mps.jchr.runtime/)" />
    <import index="45ys" ref="r:7365f7fe-12e6-4229-8901-f6dc6d5df03f(jetbrains.mps.logic.reactor.logical)" />
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="rchb" ref="r:f43ee4a0-488a-425a-87a0-594ab3b0d15f(jetbrains.mps.logic.reactor.program)" />
    <import index="yt73" ref="7526e0cf-1ce7-46f8-a555-9eca1e06c23b/java:jetbrains.mps.unification(jetbrains.mps.logic.atom/)" />
    <import index="omn0" ref="r:4e44cb56-a834-45de-a0c4-c49a5c86e78e(jetbrains.mps.logic.builtin.solver)" />
    <import index="cxk7" ref="r:daa544a7-0a5c-49c0-a54c-4c2a5b4868aa(jetbrains.mps.logic.builtin.predicate)" />
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
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
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
      <concept id="1188220165133" name="jetbrains.mps.baseLanguage.structure.ArrayLiteral" flags="nn" index="2BsdOp">
        <child id="1188220173759" name="item" index="2BsfMF" />
      </concept>
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
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
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
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
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="linkRole" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
  </registry>
  <node concept="3HP615" id="6infEALA98Q">
    <property role="TrG5h" value="JchrAssertSolver" />
    <node concept="2tJIrI" id="6infEALAaW4" role="jymVt" />
    <node concept="3clFb_" id="6infEALAaWf" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellAssert" />
      <node concept="37vLTG" id="6infEALAbaU" role="3clF46">
        <property role="TrG5h" value="val" />
        <node concept="3uibUv" id="6infEALAJy7" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="3cqZAl" id="6infEALAaWh" role="3clF45" />
      <node concept="3Tm1VV" id="6infEALAaWi" role="1B3o_S" />
      <node concept="3clFbS" id="6infEALAaWj" role="3clF47" />
      <node concept="2AHcQZ" id="6infEALAbJf" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="6infEALAbJg" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="6infEALACqu" role="2B70Vg">
            <ref role="3cqZAo" to="cxk7:6infEALAgS7" resolve="ASSERT" />
            <ref role="1PxDUh" to="cxk7:6infEALAfer" resolve="AssertPredicate" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6infEALADHP" role="jymVt" />
    <node concept="3clFb_" id="6infEALADHG" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellAssert" />
      <node concept="37vLTG" id="6infEALADHH" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="6infEALADVW" role="1tU5fm">
          <ref role="3uigEE" to="45ys:6MYr6JwxYwB" resolve="SolverLogical" />
          <node concept="3uibUv" id="6infEALAEo5" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6infEALADHJ" role="3clF45" />
      <node concept="3Tm1VV" id="6infEALADHK" role="1B3o_S" />
      <node concept="3clFbS" id="6infEALADHL" role="3clF47" />
      <node concept="2AHcQZ" id="6infEALADHM" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="6infEALADHN" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="6infEALADHO" role="2B70Vg">
            <ref role="3cqZAo" to="cxk7:6infEALAgS7" resolve="ASSERT" />
            <ref role="1PxDUh" to="cxk7:6infEALAfer" resolve="AssertPredicate" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6infEALAbl1" role="jymVt" />
    <node concept="3clFb_" id="6infEALAblu" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askAssert" />
      <node concept="37vLTG" id="6infEALAb$A" role="3clF46">
        <property role="TrG5h" value="val" />
        <node concept="3uibUv" id="6infEALAJD0" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="10P_77" id="6infEALB2Ar" role="3clF45" />
      <node concept="3Tm1VV" id="6infEALAblx" role="1B3o_S" />
      <node concept="3clFbS" id="6infEALAbly" role="3clF47" />
      <node concept="2AHcQZ" id="6infEALAc0y" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="6infEALAc0z" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="6infEALACVN" role="2B70Vg">
            <ref role="3cqZAo" to="cxk7:6infEALAgS7" resolve="ASSERT" />
            <ref role="1PxDUh" to="cxk7:6infEALAfer" resolve="AssertPredicate" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6infEALAFgW" role="jymVt" />
    <node concept="3clFb_" id="6infEALAFgN" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askAssert" />
      <node concept="37vLTG" id="6infEALAFgO" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="6infEALAFw7" role="1tU5fm">
          <ref role="3uigEE" to="45ys:6MYr6JwxYwB" resolve="SolverLogical" />
          <node concept="3uibUv" id="6infEALAFXw" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="6infEALB2E2" role="3clF45" />
      <node concept="3Tm1VV" id="6infEALAFgR" role="1B3o_S" />
      <node concept="3clFbS" id="6infEALAFgS" role="3clF47" />
      <node concept="2AHcQZ" id="6infEALAFgT" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="6infEALAFgU" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="6infEALAFgV" role="2B70Vg">
            <ref role="3cqZAo" to="cxk7:6infEALAgS7" resolve="ASSERT" />
            <ref role="1PxDUh" to="cxk7:6infEALAfer" resolve="AssertPredicate" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6infEALAGQr" role="jymVt" />
    <node concept="3Tm1VV" id="6infEALA98R" role="1B3o_S" />
    <node concept="2AHcQZ" id="6infEALAaAS" role="2AJF6D">
      <ref role="2AI5Lk" to="f8dg:~JCHR_Constraints" resolve="JCHR_Constraints" />
      <node concept="2B6LJw" id="6infEALAaAT" role="2B76xF">
        <ref role="2B6OnR" to="f8dg:~JCHR_Constraints.value()" resolve="value" />
        <node concept="2BsdOp" id="6infEALAaAU" role="2B70Vg">
          <node concept="2AHcQZ" id="6infEALAaAV" role="2BsfMF">
            <ref role="2AI5Lk" to="f8dg:~JCHR_Constraint" resolve="JCHR_Constraint" />
            <node concept="2B6LJw" id="6infEALAaAW" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.identifier()" resolve="identifier" />
              <node concept="10M0yZ" id="6infEALAaAX" role="2B70Vg">
                <ref role="3cqZAo" to="cxk7:6infEALAgS7" resolve="ASSERT" />
                <ref role="1PxDUh" to="cxk7:6infEALAfer" resolve="AssertPredicate" />
              </node>
            </node>
            <node concept="2B6LJw" id="6infEALAaAY" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.arity()" resolve="arity" />
              <node concept="3cmrfG" id="6infEALAaAZ" role="2B70Vg">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
            <node concept="2B6LJw" id="6infEALAaB2" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.idempotent()" resolve="idempotent" />
              <node concept="Rm8GO" id="6infEALAaB3" role="2B70Vg">
                <ref role="Rm8GQ" to="f8dg:~JCHR_Constraint$Value.YES" resolve="YES" />
                <ref role="1Px2BO" to="f8dg:~JCHR_Constraint$Value" resolve="JCHR_Constraint.Value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="4xBopTzrR7K" role="3HQHJm">
      <ref role="3uigEE" to="qrld:6Kcfpq7AYBh" resolve="Queryable" />
    </node>
  </node>
  <node concept="3HP615" id="6njqcfQVO0n">
    <property role="TrG5h" value="JchrUnificationSolver" />
    <node concept="2tJIrI" id="4OsiK2BAn9B" role="jymVt" />
    <node concept="3clFb_" id="4OsiK2BAlI6" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellUni" />
      <node concept="37vLTG" id="4OsiK2BAm0x" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4OsiK2BAm4d" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="4OsiK2BAm7X" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4OsiK2BAm87" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3cqZAl" id="4OsiK2BAlI8" role="3clF45" />
      <node concept="3Tm1VV" id="4OsiK2BAlI9" role="1B3o_S" />
      <node concept="3clFbS" id="4OsiK2BAlIa" role="3clF47" />
      <node concept="2AHcQZ" id="4OsiK2BAnpo" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="4OsiK2BAnsG" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="4OsiK2BALzP" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
            <ref role="3cqZAo" to="cxk7:2GO7tyJVob2" resolve="UNI" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogCcGT" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogCcGI" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellUni" />
      <node concept="37vLTG" id="4U_yxogCcGJ" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4U_yxogCcGK" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogCcGL" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogCd0t" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="3cqZAl" id="4U_yxogCcGN" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogCcGO" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogCcGP" role="3clF47" />
      <node concept="2AHcQZ" id="4U_yxogCcGQ" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="4U_yxogCcGR" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="4U_yxogCcGS" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
            <ref role="3cqZAo" to="cxk7:2GO7tyJVob2" resolve="UNI" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogCdk7" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogCdjW" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellUni" />
      <node concept="37vLTG" id="4U_yxogCdjZ" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4U_yxogCdk0" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogCdjX" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogCdjY" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3cqZAl" id="4U_yxogCdk1" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogCdk2" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogCdk3" role="3clF47" />
      <node concept="2AHcQZ" id="4U_yxogCdk4" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="4U_yxogCdk5" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="4U_yxogCdk6" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
            <ref role="3cqZAo" to="cxk7:2GO7tyJVob2" resolve="UNI" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogCeA5" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogCe_U" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellUni" />
      <node concept="37vLTG" id="4U_yxogCe_V" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4U_yxogCe_W" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogCe_X" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogCf2Z" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="3cqZAl" id="4U_yxogCe_Z" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogCeA0" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogCeA1" role="3clF47" />
      <node concept="2AHcQZ" id="4U_yxogCeA2" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="4U_yxogCeA3" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="4U_yxogCeA4" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
            <ref role="3cqZAo" to="cxk7:2GO7tyJVob2" resolve="UNI" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6njqcfQVOwI" role="jymVt" />
    <node concept="3clFb_" id="4OsiK2BAnTP" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askUni" />
      <node concept="37vLTG" id="4OsiK2BAohR" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4OsiK2BAohS" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="4OsiK2BAohT" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4OsiK2BAohU" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="10P_77" id="4U_yxogCa6w" role="3clF45" />
      <node concept="3Tm1VV" id="4OsiK2BAnTS" role="1B3o_S" />
      <node concept="3clFbS" id="4OsiK2BAnTT" role="3clF47" />
      <node concept="2AHcQZ" id="4OsiK2BAoPZ" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="4OsiK2BAoUv" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="4OsiK2BALAQ" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
            <ref role="3cqZAo" to="cxk7:2GO7tyJVob2" resolve="UNI" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogCa3m" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogC9UH" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askUni" />
      <node concept="37vLTG" id="4U_yxogC9UI" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4U_yxogC9UJ" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogC9UK" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogCabD" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="10P_77" id="4U_yxogCc3n" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogC9UN" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogC9UO" role="3clF47" />
      <node concept="2AHcQZ" id="4U_yxogC9UP" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="4U_yxogC9UQ" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="4U_yxogC9UR" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
            <ref role="3cqZAo" to="cxk7:2GO7tyJVob2" resolve="UNI" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogCan8" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogCamX" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askUni" />
      <node concept="37vLTG" id="4U_yxogCan0" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4U_yxogCan1" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogCamY" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogCamZ" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="10P_77" id="4U_yxogCch8" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogCan3" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogCan4" role="3clF47" />
      <node concept="2AHcQZ" id="4U_yxogCan5" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="4U_yxogCan6" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="4U_yxogCan7" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
            <ref role="3cqZAo" to="cxk7:2GO7tyJVob2" resolve="UNI" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogCbuO" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogCbuD" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askUni" />
      <node concept="37vLTG" id="4U_yxogCbuE" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="4U_yxogCbuF" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogCbuG" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="4U_yxogCbIA" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="10P_77" id="4U_yxogCcuX" role="3clF45" />
      <node concept="3Tm1VV" id="4U_yxogCbuJ" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogCbuK" role="3clF47" />
      <node concept="2AHcQZ" id="4U_yxogCbuL" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="4U_yxogCbuM" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="4U_yxogCbuN" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
            <ref role="3cqZAo" to="cxk7:2GO7tyJVob2" resolve="UNI" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6njqcfQVO0o" role="1B3o_S" />
    <node concept="2AHcQZ" id="6njqcfQVOAK" role="2AJF6D">
      <ref role="2AI5Lk" to="f8dg:~JCHR_Constraints" resolve="JCHR_Constraints" />
      <node concept="2B6LJw" id="6njqcfQWtmO" role="2B76xF">
        <ref role="2B6OnR" to="f8dg:~JCHR_Constraints.value()" resolve="value" />
        <node concept="2BsdOp" id="6njqcfQWztx" role="2B70Vg">
          <node concept="2AHcQZ" id="6njqcfQWwcA" role="2BsfMF">
            <ref role="2AI5Lk" to="f8dg:~JCHR_Constraint" resolve="JCHR_Constraint" />
            <node concept="2B6LJw" id="6njqcfQWwea" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.identifier()" resolve="identifier" />
              <node concept="10M0yZ" id="4OsiK2BALdr" role="2B70Vg">
                <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                <ref role="3cqZAo" to="cxk7:2GO7tyJVob2" resolve="UNI" />
              </node>
            </node>
            <node concept="2B6LJw" id="6njqcfQWwks" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.arity()" resolve="arity" />
              <node concept="3cmrfG" id="6njqcfQWwog" role="2B70Vg">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
            <node concept="2B6LJw" id="35Lj3Tj3LGP" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.infix()" resolve="infix" />
              <node concept="10M0yZ" id="5lJXKvHNj" role="2B70Vg">
                <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                <ref role="3cqZAo" to="cxk7:2GO7tyJVob6" resolve="INFIX_UNI" />
              </node>
            </node>
            <node concept="2B6LJw" id="6njqcfQWwzK" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.idempotent()" resolve="idempotent" />
              <node concept="Rm8GO" id="6GYQG_SpstN" role="2B70Vg">
                <ref role="Rm8GQ" to="f8dg:~JCHR_Constraint$Value.YES" resolve="YES" />
                <ref role="1Px2BO" to="f8dg:~JCHR_Constraint$Value" resolve="JCHR_Constraint.Value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="4xBopTzmsJi" role="3HQHJm">
      <ref role="3uigEE" to="qrld:6Kcfpq7AYBh" resolve="Queryable" />
    </node>
  </node>
  <node concept="3HP615" id="3HJTsBn4mEA">
    <property role="TrG5h" value="JchrEqualsSolver" />
    <node concept="2tJIrI" id="3HJTsBn4xyI" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4xBk" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellEq" />
      <node concept="37vLTG" id="3HJTsBn4xBl" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2c3nq4GRSNF" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4xBn" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2c3nq4GRT5f" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="3HJTsBn4xBp" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn4xBq" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn4xBr" role="3clF47" />
      <node concept="2AHcQZ" id="3HJTsBn4xBs" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="3HJTsBn4xBt" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="3HJTsBn4EEH" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
            <ref role="3cqZAo" to="cxk7:3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4xBx" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4xBy" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellEq" />
      <node concept="37vLTG" id="3HJTsBn4xBz" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2c3nq4GRTmz" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4xB_" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="3HJTsBn4JMA" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
        </node>
      </node>
      <node concept="3cqZAl" id="3HJTsBn4xBB" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn4xBC" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn4xBD" role="3clF47" />
      <node concept="2AHcQZ" id="3HJTsBn4xBE" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="3HJTsBn4xBF" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="3HJTsBn4F8f" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
            <ref role="3cqZAo" to="cxk7:3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4xBJ" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4xBK" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellEq" />
      <node concept="37vLTG" id="3HJTsBn4xBL" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="3HJTsBn4KPZ" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4xBN" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2c3nq4GRU9Y" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="3HJTsBn4xBP" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn4xBQ" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn4xBR" role="3clF47" />
      <node concept="2AHcQZ" id="3HJTsBn4xBS" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="3HJTsBn4xBT" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="3HJTsBn4Fuw" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
            <ref role="3cqZAo" to="cxk7:3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4xBX" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4xBY" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellEq" />
      <node concept="37vLTG" id="3HJTsBn4xBZ" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="3HJTsBn4Mp4" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4xC1" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="3HJTsBn4Nkq" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
        </node>
      </node>
      <node concept="3cqZAl" id="3HJTsBn4xC3" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn4xC4" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn4xC5" role="3clF47" />
      <node concept="2AHcQZ" id="3HJTsBn4xC6" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="3HJTsBn4xC7" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="3HJTsBn4FOM" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
            <ref role="3cqZAo" to="cxk7:3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4xCb" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4xCc" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askEq" />
      <node concept="37vLTG" id="3HJTsBn4xCd" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2c3nq4GRUZy" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4xCf" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2c3nq4GRVhh" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="3HJTsBn4xCh" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn4xCi" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn4xCj" role="3clF47" />
      <node concept="2AHcQZ" id="3HJTsBn4xCk" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="3HJTsBn4xCl" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="3HJTsBn4Gb3" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
            <ref role="3cqZAo" to="cxk7:3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4xCp" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4xCq" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askEq" />
      <node concept="37vLTG" id="3HJTsBn4xCr" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2c3nq4GRVyI" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4xCt" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="3HJTsBn4PwM" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
        </node>
      </node>
      <node concept="10P_77" id="3HJTsBn4xCv" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn4xCw" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn4xCx" role="3clF47" />
      <node concept="2AHcQZ" id="3HJTsBn4xCy" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="3HJTsBn4xCz" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="3HJTsBn4Gxk" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
            <ref role="3cqZAo" to="cxk7:3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4xCB" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4xCC" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askEq" />
      <node concept="37vLTG" id="3HJTsBn4xCD" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="3HJTsBn4QmS" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4xCF" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2c3nq4GRWm$" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="3HJTsBn4xCH" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn4xCI" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn4xCJ" role="3clF47" />
      <node concept="2AHcQZ" id="3HJTsBn4xCK" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="3HJTsBn4xCL" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="3HJTsBn4GR_" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
            <ref role="3cqZAo" to="cxk7:3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4xCP" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4xCQ" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askEq" />
      <node concept="37vLTG" id="3HJTsBn4xCR" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="3HJTsBn4RFp" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4xCT" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="3HJTsBn4SiQ" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
        </node>
      </node>
      <node concept="10P_77" id="3HJTsBn4xCV" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBn4xCW" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn4xCX" role="3clF47" />
      <node concept="2AHcQZ" id="3HJTsBn4xCY" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="3HJTsBn4xCZ" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="3HJTsBn4HdQ" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
            <ref role="3cqZAo" to="cxk7:3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4xyN" role="jymVt" />
    <node concept="3Tm1VV" id="3HJTsBn4mEB" role="1B3o_S" />
    <node concept="2AHcQZ" id="3HJTsBn4BXb" role="2AJF6D">
      <ref role="2AI5Lk" to="f8dg:~JCHR_Constraints" resolve="JCHR_Constraints" />
      <node concept="2B6LJw" id="3HJTsBn4BXc" role="2B76xF">
        <ref role="2B6OnR" to="f8dg:~JCHR_Constraints.value()" resolve="value" />
        <node concept="2BsdOp" id="3HJTsBn4BXd" role="2B70Vg">
          <node concept="2AHcQZ" id="3HJTsBn4BXe" role="2BsfMF">
            <ref role="2AI5Lk" to="f8dg:~JCHR_Constraint" resolve="JCHR_Constraint" />
            <node concept="2B6LJw" id="3HJTsBn4BXf" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.identifier()" resolve="identifier" />
              <node concept="10M0yZ" id="3HJTsBn4BXg" role="2B70Vg">
                <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
                <ref role="3cqZAo" to="cxk7:3HJTsBn4kQi" resolve="EQ" />
              </node>
            </node>
            <node concept="2B6LJw" id="3HJTsBn4BXh" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.arity()" resolve="arity" />
              <node concept="3cmrfG" id="3HJTsBn4BXi" role="2B70Vg">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
            <node concept="2B6LJw" id="3HJTsBn4BXj" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.infix()" resolve="infix" />
              <node concept="10M0yZ" id="3HJTsBn4BXk" role="2B70Vg">
                <ref role="3cqZAo" to="cxk7:3HJTsBn4kQn" resolve="INFIX_EQ" />
                <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
              </node>
            </node>
            <node concept="2B6LJw" id="3HJTsBn4BXl" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.idempotent()" resolve="idempotent" />
              <node concept="Rm8GO" id="3HJTsBn4BXm" role="2B70Vg">
                <ref role="Rm8GQ" to="f8dg:~JCHR_Constraint$Value.YES" resolve="YES" />
                <ref role="1Px2BO" to="f8dg:~JCHR_Constraint$Value" resolve="JCHR_Constraint.Value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="6MYr6JwUFHB" role="3HQHJm">
      <ref role="3uigEE" to="qrld:6Kcfpq7AYBh" resolve="Queryable" />
    </node>
  </node>
  <node concept="3HP615" id="60B5zVEZP8W">
    <property role="TrG5h" value="JchrLogicalSolver" />
    <node concept="2tJIrI" id="5i7izgNdC6s" role="jymVt" />
    <node concept="Wx3nA" id="5i7izgNdCcB" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="LOGICAL" />
      <node concept="3Tm1VV" id="5i7izgNdCcD" role="1B3o_S" />
      <node concept="Xl_RD" id="5i7izgNdCeK" role="33vP2m">
        <property role="Xl_RC" value="logical" />
      </node>
      <node concept="17QB3L" id="5i7izgNdCd8" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="60B5zVEZPqu" role="jymVt" />
    <node concept="3clFb_" id="60B5zVEZPu5" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="ask" />
      <node concept="37vLTG" id="60B5zVEZPI_" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="60B5zVF0xHu" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
        </node>
      </node>
      <node concept="10P_77" id="60B5zVEZP_w" role="3clF45" />
      <node concept="3Tm1VV" id="60B5zVEZPu8" role="1B3o_S" />
      <node concept="3clFbS" id="60B5zVEZPu9" role="3clF47" />
      <node concept="2AHcQZ" id="5uFPQ7CmCOI" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="5uFPQ7CmCOJ" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="37vLTw" id="5i7izgNdCLB" role="2B70Vg">
            <ref role="3cqZAo" node="5i7izgNdCcB" resolve="LOGICAL" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="60B5zVEZPqz" role="jymVt" />
    <node concept="3Tm1VV" id="60B5zVEZP8X" role="1B3o_S" />
    <node concept="3uibUv" id="4xBopTzrcyn" role="3HQHJm">
      <ref role="3uigEE" to="qrld:6Kcfpq7AYBh" resolve="Queryable" />
    </node>
    <node concept="2AHcQZ" id="5uFPQ7CmCOK" role="2AJF6D">
      <ref role="2AI5Lk" to="f8dg:~JCHR_Constraints" resolve="JCHR_Constraints" />
      <node concept="2B6LJw" id="5uFPQ7CmCOL" role="2B76xF">
        <ref role="2B6OnR" to="f8dg:~JCHR_Constraints.value()" resolve="value" />
        <node concept="2BsdOp" id="5uFPQ7CmCOM" role="2B70Vg">
          <node concept="2AHcQZ" id="5uFPQ7CmCON" role="2BsfMF">
            <ref role="2AI5Lk" to="f8dg:~JCHR_Constraint" resolve="JCHR_Constraint" />
            <node concept="2B6LJw" id="5uFPQ7CmCOO" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.identifier()" resolve="identifier" />
              <node concept="10M0yZ" id="5i7izgNdEd0" role="2B70Vg">
                <ref role="1PxDUh" node="60B5zVEZP8W" resolve="JchrLogicalSolver" />
                <ref role="3cqZAo" node="5i7izgNdCcB" resolve="LOGICAL" />
              </node>
            </node>
            <node concept="2B6LJw" id="5uFPQ7CmCOP" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.arity()" resolve="arity" />
              <node concept="3cmrfG" id="5uFPQ7CmCOQ" role="2B70Vg">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
            <node concept="2B6LJw" id="5uFPQ7CmCOR" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.idempotent()" resolve="idempotent" />
              <node concept="Rm8GO" id="5uFPQ7CmCOS" role="2B70Vg">
                <ref role="Rm8GQ" to="f8dg:~JCHR_Constraint$Value.YES" resolve="YES" />
                <ref role="1Px2BO" to="f8dg:~JCHR_Constraint$Value" resolve="JCHR_Constraint.Value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3HJTsBmBSJa">
    <property role="TrG5h" value="JchrLogical" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="3HJTsBmBSVh" role="jymVt" />
    <node concept="3clFbW" id="3HJTsBmBUfM" role="jymVt">
      <node concept="3cqZAl" id="3HJTsBmBUfO" role="3clF45" />
      <node concept="3Tmbuc" id="3HJTsBmBV01" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBmBUfQ" role="3clF47">
        <node concept="XkiVB" id="3HJTsBmBUT6" role="3cqZAp">
          <ref role="37wK5l" to="eifs:~Logical.&lt;init&gt;()" resolve="Logical" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2DKqMqOlPfZ" role="jymVt" />
    <node concept="3clFbW" id="2DKqMqOlOj4" role="jymVt">
      <node concept="3cqZAl" id="2DKqMqOlOj5" role="3clF45" />
      <node concept="3Tmbuc" id="2DKqMqOlOj6" role="1B3o_S" />
      <node concept="3clFbS" id="2DKqMqOlOj7" role="3clF47">
        <node concept="XkiVB" id="2DKqMqOlOj8" role="3cqZAp">
          <ref role="37wK5l" to="eifs:~Logical.&lt;init&gt;()" resolve="Logical" />
        </node>
        <node concept="3clFbF" id="2DKqMqOlQsd" role="3cqZAp">
          <node concept="37vLTI" id="2DKqMqOlSk3" role="3clFbG">
            <node concept="37vLTw" id="2DKqMqOlSxN" role="37vLTx">
              <ref role="3cqZAo" node="2DKqMqOlQcI" resolve="wildcard" />
            </node>
            <node concept="2OqwBi" id="2DKqMqOlQAd" role="37vLTJ">
              <node concept="Xjq3P" id="2DKqMqOlQsb" role="2Oq$k0" />
              <node concept="2OwXpG" id="2DKqMqOlR_1" role="2OqNvi">
                <ref role="2Oxat5" node="2DKqMqOi$it" resolve="wildcard" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2DKqMqOlQcI" role="3clF46">
        <property role="TrG5h" value="wildcard" />
        <node concept="10P_77" id="2DKqMqOlQcH" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBmBV0n" role="jymVt" />
    <node concept="3clFbW" id="3HJTsBmBV0W" role="jymVt">
      <node concept="3cqZAl" id="3HJTsBmBV0Y" role="3clF45" />
      <node concept="3Tmbuc" id="3HJTsBmBV3L" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBmBV10" role="3clF47">
        <node concept="XkiVB" id="3HJTsBmBV5O" role="3cqZAp">
          <ref role="37wK5l" to="eifs:~Logical.&lt;init&gt;(java.lang.String)" resolve="Logical" />
          <node concept="37vLTw" id="3HJTsBmBVeG" role="37wK5m">
            <ref role="3cqZAo" node="3HJTsBmBV1v" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBmBV1v" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="3HJTsBmBV1u" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7nuzzkr1WTZ" role="jymVt" />
    <node concept="3clFbW" id="7nuzzkr1W8y" role="jymVt">
      <node concept="3cqZAl" id="7nuzzkr1W8z" role="3clF45" />
      <node concept="3Tmbuc" id="7nuzzkr1W8$" role="1B3o_S" />
      <node concept="3clFbS" id="7nuzzkr1W8_" role="3clF47">
        <node concept="XkiVB" id="7nuzzkr1W8A" role="3cqZAp">
          <ref role="37wK5l" to="eifs:~Logical.&lt;init&gt;(java.lang.String)" resolve="Logical" />
          <node concept="37vLTw" id="7nuzzkr1W8B" role="37wK5m">
            <ref role="3cqZAo" node="7nuzzkr1W8L" resolve="name" />
          </node>
        </node>
        <node concept="3clFbF" id="7nuzzkr1Y31" role="3cqZAp">
          <node concept="37vLTI" id="7nuzzkr1ZVn" role="3clFbG">
            <node concept="37vLTw" id="7nuzzkr20am" role="37vLTx">
              <ref role="3cqZAo" node="7nuzzkr1XEB" resolve="wildcard" />
            </node>
            <node concept="2OqwBi" id="7nuzzkr1Ydg" role="37vLTJ">
              <node concept="Xjq3P" id="7nuzzkr1Y2Z" role="2Oq$k0" />
              <node concept="2OwXpG" id="7nuzzkr1Zce" role="2OqNvi">
                <ref role="2Oxat5" node="2DKqMqOi$it" resolve="wildcard" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7nuzzkr1W8L" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7nuzzkr1W8M" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7nuzzkr1XEB" role="3clF46">
        <property role="TrG5h" value="wildcard" />
        <node concept="10P_77" id="7nuzzkr1XT7" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2DKqMqOisBZ" role="jymVt" />
    <node concept="3clFbW" id="3HJTsBmBVmo" role="jymVt">
      <node concept="37vLTG" id="3HJTsBmBVne" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="3HJTsBmBVpx" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3HJTsBmBVrK" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="16syzq" id="3HJTsBmBVu7" role="1tU5fm">
          <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
        </node>
      </node>
      <node concept="3cqZAl" id="3HJTsBmBVmq" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBmBVmr" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBmBVms" role="3clF47">
        <node concept="XkiVB" id="3HJTsBmBVyo" role="3cqZAp">
          <ref role="37wK5l" to="eifs:~Logical.&lt;init&gt;(java.lang.String,java.lang.Object)" resolve="Logical" />
          <node concept="37vLTw" id="3HJTsBmBVF_" role="37wK5m">
            <ref role="3cqZAo" node="3HJTsBmBVne" resolve="name" />
          </node>
          <node concept="37vLTw" id="3HJTsBmBVQR" role="37wK5m">
            <ref role="3cqZAo" node="3HJTsBmBVrK" resolve="value" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBmBSVq" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmCy5P" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="3HJTsBmCy5Q" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBmCy5R" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBmCy5S" role="3clF47">
        <node concept="3clFbF" id="3HJTsBmCy5T" role="3cqZAp">
          <node concept="1rXfSq" id="3HJTsBmCy5U" role="3clFbG">
            <ref role="37wK5l" to="eifs:~Logical.getName():java.lang.String" resolve="getName" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3HJTsBmCy5V" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2$F5QputFlO" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmBZ0h" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="value" />
      <node concept="3Tm1VV" id="3HJTsBmBZ0j" role="1B3o_S" />
      <node concept="16syzq" id="3HJTsBmBZ0o" role="3clF45">
        <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
      </node>
      <node concept="3clFbS" id="3HJTsBmBZ0p" role="3clF47">
        <node concept="3clFbF" id="3HJTsBmC0hc" role="3cqZAp">
          <node concept="37vLTw" id="3HJTsBmC0hb" role="3clFbG">
            <ref role="3cqZAo" to="eifs:~Logical.value" resolve="value" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3HJTsBmBZRW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn6sQw" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn6rgQ" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="findRoot" />
      <node concept="3uibUv" id="3HJTsBn6uNs" role="3clF45">
        <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
        <node concept="16syzq" id="3HJTsBn6vt4" role="11_B2D">
          <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3HJTsBn6rgT" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn6rgZ" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="3HJTsBmBYbS" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmC6RD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isBound" />
      <node concept="10P_77" id="3HJTsBmC6RE" role="3clF45" />
      <node concept="3Tm1VV" id="3HJTsBmC6RF" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBmC6RK" role="3clF47">
        <node concept="3clFbF" id="3HJTsBmC8E2" role="3cqZAp">
          <node concept="1rXfSq" id="3HJTsBmC8E1" role="3clFbG">
            <ref role="37wK5l" to="eifs:~Logical.isNonVar():boolean" resolve="isNonVar" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3HJTsBmC9mb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBmCabo" role="jymVt" />
    <node concept="3clFb_" id="2DKqMqOiEEz" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="isWildcard" />
      <node concept="3Tm1VV" id="2DKqMqOiEE$" role="1B3o_S" />
      <node concept="10P_77" id="2DKqMqOiEE_" role="3clF45" />
      <node concept="3clFbS" id="2DKqMqOiEEA" role="3clF47">
        <node concept="3clFbF" id="2DKqMqOiEEB" role="3cqZAp">
          <node concept="37vLTw" id="2DKqMqOiH7Z" role="3clFbG">
            <ref role="3cqZAo" node="2DKqMqOi$it" resolve="wildcard" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2DKqMqOiEED" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="20WMLipw8Sx" role="jymVt" />
    <node concept="3clFb_" id="20WMLipwaQa" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="union" />
      <node concept="3Tm1VV" id="20WMLipwaQc" role="1B3o_S" />
      <node concept="3cqZAl" id="20WMLipwaQd" role="3clF45" />
      <node concept="37vLTG" id="20WMLipwaQe" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3uibUv" id="20WMLipwaQf" role="1tU5fm">
          <ref role="3uigEE" to="45ys:6MYr6JwxYwB" resolve="SolverLogical" />
          <node concept="16syzq" id="20WMLipwaQz" role="11_B2D">
            <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="20WMLipwvci" role="3clF46">
        <property role="TrG5h" value="reconciler" />
        <node concept="3uibUv" id="20WMLipwvPf" role="1tU5fm">
          <ref role="3uigEE" to="45ys:20WMLipwnLy" resolve="SolverLogical.ValueReconciler" />
          <node concept="16syzq" id="20WMLipwwCe" role="11_B2D">
            <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="20WMLipwaQ$" role="3clF47">
        <node concept="3SKdUt" id="20WMLipweSB" role="3cqZAp">
          <node concept="3SKdUq" id="20WMLipweSD" role="3SKWNk">
            <property role="3SKdUp" value="stuff moved from the *Solver implementation" />
          </node>
        </node>
        <node concept="3clFbH" id="20WMLipweT_" role="3cqZAp" />
        <node concept="3cpWs8" id="20WMLipwj0B" role="3cqZAp">
          <node concept="3cpWsn" id="20WMLipwj0C" role="3cpWs9">
            <property role="TrG5h" value="leftRepr" />
            <node concept="3uibUv" id="20WMLipwj0z" role="1tU5fm">
              <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
              <node concept="16syzq" id="20WMLipwj0A" role="11_B2D">
                <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
              </node>
            </node>
            <node concept="1rXfSq" id="20WMLipwj0D" role="33vP2m">
              <ref role="37wK5l" node="3HJTsBn6rgQ" resolve="findRoot" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="20WMLipwkIY" role="3cqZAp">
          <node concept="3cpWsn" id="20WMLipwkIZ" role="3cpWs9">
            <property role="TrG5h" value="rightRepr" />
            <node concept="3uibUv" id="20WMLipwkIU" role="1tU5fm">
              <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
              <node concept="16syzq" id="20WMLipwkIX" role="11_B2D">
                <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
              </node>
            </node>
            <node concept="10QFUN" id="20WMLipwNtd" role="33vP2m">
              <node concept="3uibUv" id="20WMLipwNt8" role="10QFUM">
                <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
                <node concept="16syzq" id="20WMLipwNt9" role="11_B2D">
                  <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
                </node>
              </node>
              <node concept="2OqwBi" id="20WMLipwNta" role="10QFUP">
                <node concept="37vLTw" id="20WMLipwNtb" role="2Oq$k0">
                  <ref role="3cqZAo" node="20WMLipwaQe" resolve="other" />
                </node>
                <node concept="liA8E" id="20WMLipwNtc" role="2OqNvi">
                  <ref role="37wK5l" to="45ys:429xoyqB1jp" resolve="findRoot" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="20WMLipwKuj" role="3cqZAp" />
        <node concept="3SKdUt" id="20WMLipsYKs" role="3cqZAp">
          <node concept="3SKdUq" id="20WMLipsYKu" role="3SKWNk">
            <property role="3SKdUp" value="invariant: leftRepr.rank &gt; rightRepr.rank " />
          </node>
        </node>
        <node concept="3clFbJ" id="20WMLipwm2k" role="3cqZAp">
          <node concept="3clFbS" id="20WMLipwm2m" role="3clFbx">
            <node concept="3clFbF" id="20WMLipwT$W" role="3cqZAp">
              <node concept="2OqwBi" id="20WMLipwTE8" role="3clFbG">
                <node concept="37vLTw" id="20WMLipwT$U" role="2Oq$k0">
                  <ref role="3cqZAo" node="20WMLipwkIZ" resolve="rightRepr" />
                </node>
                <node concept="liA8E" id="20WMLipwTLM" role="2OqNvi">
                  <ref role="37wK5l" node="20WMLipwaQa" resolve="union" />
                  <node concept="37vLTw" id="20WMLipwUiz" role="37wK5m">
                    <ref role="3cqZAo" node="20WMLipwj0C" resolve="leftRepr" />
                  </node>
                  <node concept="37vLTw" id="20WMLipx2ZF" role="37wK5m">
                    <ref role="3cqZAo" node="20WMLipwvci" resolve="reconciler" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="20WMLipwV$4" role="3cqZAp" />
            <node concept="3clFbH" id="20WMLipx7J$" role="3cqZAp" />
          </node>
          <node concept="3eOVzh" id="20WMLipwPW5" role="3clFbw">
            <node concept="2OqwBi" id="20WMLipwOzo" role="3uHU7B">
              <node concept="37vLTw" id="20WMLipwKGQ" role="2Oq$k0">
                <ref role="3cqZAo" node="20WMLipwj0C" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="20WMLipx6xb" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmD3ef" resolve="rank" />
              </node>
            </node>
            <node concept="2OqwBi" id="20WMLipwQFf" role="3uHU7w">
              <node concept="37vLTw" id="20WMLipwQvD" role="2Oq$k0">
                <ref role="3cqZAo" node="20WMLipwkIZ" resolve="rightRepr" />
              </node>
              <node concept="liA8E" id="20WMLipx77X" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmD3ef" resolve="rank" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="20WMLipx7Oi" role="3eNLev">
            <node concept="3clFbS" id="20WMLipx7Ok" role="3eOfB_">
              <node concept="3clFbF" id="20WMLipx92i" role="3cqZAp">
                <node concept="2OqwBi" id="20WMLipx97J" role="3clFbG">
                  <node concept="37vLTw" id="20WMLipx92h" role="2Oq$k0">
                    <ref role="3cqZAo" node="20WMLipwj0C" resolve="leftRepr" />
                  </node>
                  <node concept="liA8E" id="20WMLipx9mp" role="2OqNvi">
                    <ref role="37wK5l" node="3HJTsBmD3em" resolve="incRank" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="20WMLipx8t4" role="3eO9$A">
              <node concept="2OqwBi" id="20WMLipx7Yt" role="3uHU7B">
                <node concept="37vLTw" id="20WMLipx7Yu" role="2Oq$k0">
                  <ref role="3cqZAo" node="20WMLipwj0C" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="20WMLipx7Yv" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmD3ef" resolve="rank" />
                </node>
              </node>
              <node concept="2OqwBi" id="20WMLipx7Yw" role="3uHU7w">
                <node concept="37vLTw" id="20WMLipx7Yx" role="2Oq$k0">
                  <ref role="3cqZAo" node="20WMLipwkIZ" resolve="rightRepr" />
                </node>
                <node concept="liA8E" id="20WMLipx7Yy" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmD3ef" resolve="rank" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="20WMLipweOF" role="3cqZAp" />
        <node concept="3clFbF" id="1bm7a6ETLS_" role="3cqZAp">
          <node concept="2OqwBi" id="1bm7a6ETM9W" role="3clFbG">
            <node concept="37vLTw" id="7d$oK1$rJM7" role="2Oq$k0">
              <ref role="3cqZAo" node="20WMLipwkIZ" resolve="rightRepr" />
            </node>
            <node concept="liA8E" id="1bm7a6ETMW8" role="2OqNvi">
              <ref role="37wK5l" node="3HJTsBmD3e2" resolve="setParent" />
              <node concept="37vLTw" id="7d$oK1$rEug" role="37wK5m">
                <ref role="3cqZAo" node="20WMLipwj0C" resolve="leftRepr" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="20WMLipx9Oh" role="3cqZAp" />
        <node concept="3cpWs8" id="1bm7a6ESodZ" role="3cqZAp">
          <node concept="3cpWsn" id="1bm7a6ESoe0" role="3cpWs9">
            <property role="TrG5h" value="leftVal" />
            <node concept="16syzq" id="20WMLipxbUZ" role="1tU5fm">
              <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
            </node>
            <node concept="2OqwBi" id="1bm7a6ESoe2" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$rESp" role="2Oq$k0">
                <ref role="3cqZAo" node="20WMLipwj0C" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="1bm7a6ESoe4" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1bm7a6ESoe5" role="3cqZAp">
          <node concept="3cpWsn" id="1bm7a6ESoe6" role="3cpWs9">
            <property role="TrG5h" value="rightVal" />
            <node concept="16syzq" id="20WMLipxcv2" role="1tU5fm">
              <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
            </node>
            <node concept="2OqwBi" id="1bm7a6ESoe8" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$rKcs" role="2Oq$k0">
                <ref role="3cqZAo" node="20WMLipwkIZ" resolve="rightRepr" />
              </node>
              <node concept="liA8E" id="1bm7a6ESoea" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1bm7a6ESoeb" role="3cqZAp" />
        <node concept="3clFbJ" id="1bm7a6ETNtZ" role="3cqZAp">
          <node concept="3clFbS" id="1bm7a6ETNu2" role="3clFbx">
            <node concept="3SKdUt" id="1bm7a6ETRAY" role="3cqZAp">
              <node concept="3SKdUq" id="1bm7a6ETRBQ" role="3SKWNk">
                <property role="3SKdUp" value="var ground" />
              </node>
            </node>
            <node concept="3clFbF" id="7K4Mb_JzLV_" role="3cqZAp">
              <node concept="2OqwBi" id="7K4Mb_JzLVA" role="3clFbG">
                <node concept="37vLTw" id="7K4Mb_JzLVM" role="2Oq$k0">
                  <ref role="3cqZAo" node="20WMLipwj0C" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="7K4Mb_JzLVC" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmK4yW" resolve="setValue" />
                  <node concept="2OqwBi" id="7K4Mb_JzMJ4" role="37wK5m">
                    <node concept="37vLTw" id="7K4Mb_JzMJ5" role="2Oq$k0">
                      <ref role="3cqZAo" node="20WMLipwkIZ" resolve="rightRepr" />
                    </node>
                    <node concept="liA8E" id="7K4Mb_JzMJ6" role="2OqNvi">
                      <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1bm7a6EU_8e" role="3cqZAp" />
          </node>
          <node concept="1Wc70l" id="1bm7a6ETQ0A" role="3clFbw">
            <node concept="3y3z36" id="1bm7a6ETQeM" role="3uHU7w">
              <node concept="10Nm6u" id="1bm7a6ETQfV" role="3uHU7w" />
              <node concept="37vLTw" id="1bm7a6ETQcj" role="3uHU7B">
                <ref role="3cqZAo" node="1bm7a6ESoe6" resolve="rightVal" />
              </node>
            </node>
            <node concept="3clFbC" id="1bm7a6ETPON" role="3uHU7B">
              <node concept="37vLTw" id="1bm7a6ETPE4" role="3uHU7B">
                <ref role="3cqZAo" node="1bm7a6ESoe0" resolve="leftVal" />
              </node>
              <node concept="10Nm6u" id="1bm7a6ETPZX" role="3uHU7w" />
            </node>
          </node>
          <node concept="3eNFk2" id="1bm7a6ETQiJ" role="3eNLev">
            <node concept="1Wc70l" id="1bm7a6ETQzC" role="3eO9$A">
              <node concept="3clFbC" id="1bm7a6ETQBE" role="3uHU7w">
                <node concept="10Nm6u" id="1bm7a6ETQDD" role="3uHU7w" />
                <node concept="37vLTw" id="1bm7a6ETQ$I" role="3uHU7B">
                  <ref role="3cqZAo" node="1bm7a6ESoe6" resolve="rightVal" />
                </node>
              </node>
              <node concept="3y3z36" id="1bm7a6ETQxx" role="3uHU7B">
                <node concept="37vLTw" id="1bm7a6ETQvA" role="3uHU7B">
                  <ref role="3cqZAo" node="1bm7a6ESoe0" resolve="leftVal" />
                </node>
                <node concept="10Nm6u" id="1bm7a6ETQy4" role="3uHU7w" />
              </node>
            </node>
            <node concept="3clFbS" id="1bm7a6ETQiL" role="3eOfB_">
              <node concept="3SKdUt" id="1bm7a6ETRDG" role="3cqZAp">
                <node concept="3SKdUq" id="1bm7a6ETRDI" role="3SKWNk">
                  <property role="3SKdUp" value="ground var" />
                </node>
              </node>
              <node concept="1X3_iC" id="20WMLipxuT3" role="lGtFl">
                <property role="3V$3am" value="statement" />
                <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                <node concept="3clFbF" id="7K4Mb_JzNg8" role="8Wnug">
                  <node concept="2OqwBi" id="7K4Mb_JzNg9" role="3clFbG">
                    <node concept="37vLTw" id="7K4Mb_JzNgl" role="2Oq$k0">
                      <ref role="3cqZAo" node="20WMLipwkIZ" resolve="rightRepr" />
                    </node>
                    <node concept="liA8E" id="7K4Mb_JzNgb" role="2OqNvi">
                      <ref role="37wK5l" node="3HJTsBmK4yW" resolve="setValue" />
                      <node concept="2OqwBi" id="7K4Mb_JzPLC" role="37wK5m">
                        <node concept="37vLTw" id="7K4Mb_JzPLD" role="2Oq$k0">
                          <ref role="3cqZAo" node="20WMLipwj0C" resolve="leftRepr" />
                        </node>
                        <node concept="liA8E" id="7K4Mb_JzPLE" role="2OqNvi">
                          <ref role="37wK5l" node="3HJTsBmBZ0h" resolve="value" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="20WMLipxfRk" role="3cqZAp">
                <node concept="3SKdUq" id="20WMLipxfRm" role="3SKWNk">
                  <property role="3SKdUp" value="TODO: no need to copy the value" />
                </node>
              </node>
              <node concept="3clFbF" id="20WMLipxu5F" role="3cqZAp">
                <node concept="2OqwBi" id="20WMLipxucH" role="3clFbG">
                  <node concept="37vLTw" id="20WMLipxu5D" role="2Oq$k0">
                    <ref role="3cqZAo" node="20WMLipwkIZ" resolve="rightRepr" />
                  </node>
                  <node concept="liA8E" id="20WMLipxurp" role="2OqNvi">
                    <ref role="37wK5l" node="20WMLipxgdj" resolve="notifyObservers" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1bm7a6EU_eB" role="3cqZAp" />
            </node>
          </node>
          <node concept="3eNFk2" id="1bm7a6ETQFB" role="3eNLev">
            <node concept="1Wc70l" id="1bm7a6ETQY6" role="3eO9$A">
              <node concept="3clFbC" id="1bm7a6ETRMO" role="3uHU7w">
                <node concept="37vLTw" id="1bm7a6ETRMR" role="3uHU7B">
                  <ref role="3cqZAo" node="1bm7a6ESoe6" resolve="rightVal" />
                </node>
                <node concept="10Nm6u" id="1bm7a6ETRMQ" role="3uHU7w" />
              </node>
              <node concept="3clFbC" id="1bm7a6ETRKJ" role="3uHU7B">
                <node concept="37vLTw" id="1bm7a6ETRKL" role="3uHU7B">
                  <ref role="3cqZAo" node="1bm7a6ESoe0" resolve="leftVal" />
                </node>
                <node concept="10Nm6u" id="1bm7a6ETRKM" role="3uHU7w" />
              </node>
            </node>
            <node concept="3clFbS" id="1bm7a6ETQFD" role="3eOfB_">
              <node concept="3SKdUt" id="1bm7a6ETSu_" role="3cqZAp">
                <node concept="3SKdUq" id="1bm7a6ETSuB" role="3SKWNk">
                  <property role="3SKdUp" value="var var" />
                </node>
              </node>
              <node concept="3clFbF" id="7K4Mb_JzeRx" role="3cqZAp">
                <node concept="2OqwBi" id="7K4Mb_JzeVN" role="3clFbG">
                  <node concept="37vLTw" id="6MYr6Jwy6bd" role="2Oq$k0">
                    <ref role="3cqZAo" node="20WMLipwj0C" resolve="leftRepr" />
                  </node>
                  <node concept="liA8E" id="7K4Mb_Jzfi6" role="2OqNvi">
                    <ref role="37wK5l" node="7K4Mb_Jz6FW" resolve="mergeObservers" />
                    <node concept="37vLTw" id="6MYr6Jwy6gZ" role="37wK5m">
                      <ref role="3cqZAo" node="20WMLipwkIZ" resolve="rightRepr" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1bm7a6EU_G1" role="3cqZAp" />
            </node>
          </node>
          <node concept="9aQIb" id="1bm7a6ETRlN" role="9aQIa">
            <node concept="3clFbS" id="1bm7a6ETRlO" role="9aQI4">
              <node concept="3SKdUt" id="1bm7a6ETRFA" role="3cqZAp">
                <node concept="3SKdUq" id="1bm7a6ETRGv" role="3SKWNk">
                  <property role="3SKdUp" value="ground ground" />
                </node>
              </node>
              <node concept="3clFbF" id="20WMLipxen4" role="3cqZAp">
                <node concept="2OqwBi" id="20WMLipxeVk" role="3clFbG">
                  <node concept="37vLTw" id="20WMLipxen2" role="2Oq$k0">
                    <ref role="3cqZAo" node="20WMLipwvci" resolve="reconciler" />
                  </node>
                  <node concept="liA8E" id="20WMLipxfoW" role="2OqNvi">
                    <ref role="37wK5l" to="45ys:20WMLipwqq1" resolve="reconcile" />
                    <node concept="37vLTw" id="6SkxsMzEWnb" role="37wK5m">
                      <ref role="3cqZAo" node="1bm7a6ESoe0" resolve="leftVal" />
                    </node>
                    <node concept="37vLTw" id="6SkxsMzEWnc" role="37wK5m">
                      <ref role="3cqZAo" node="1bm7a6ESoe6" resolve="rightVal" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="20WMLipweUV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="20WMLipw8Zo" role="jymVt" />
    <node concept="3clFb_" id="20WMLipxFk1" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="union" />
      <node concept="3Tm1VV" id="20WMLipxFk3" role="1B3o_S" />
      <node concept="3cqZAl" id="20WMLipxFk4" role="3clF45" />
      <node concept="37vLTG" id="20WMLipxFk5" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3uibUv" id="20WMLipxFk6" role="1tU5fm">
          <ref role="3uigEE" to="45ys:6MYr6JwxYwB" resolve="SolverLogical" />
          <node concept="16syzq" id="20WMLipxFkt" role="11_B2D">
            <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="20WMLipxFku" role="3clF47">
        <node concept="3clFbF" id="20WMLipxK2U" role="3cqZAp">
          <node concept="1rXfSq" id="20WMLipxK2T" role="3clFbG">
            <ref role="37wK5l" node="20WMLipwaQa" resolve="union" />
            <node concept="37vLTw" id="20WMLipxK$s" role="37wK5m">
              <ref role="3cqZAo" node="20WMLipxFk5" resolve="other" />
            </node>
            <node concept="1bVj0M" id="20WMLipxLdm" role="37wK5m">
              <node concept="3clFbS" id="20WMLipxLdo" role="1bW5cS">
                <node concept="3clFbJ" id="20WMLipxNwJ" role="3cqZAp">
                  <node concept="3clFbS" id="20WMLipxNwK" role="3clFbx">
                    <node concept="YS8fn" id="20WMLipxO1h" role="3cqZAp">
                      <node concept="2ShNRf" id="20WMLipxO6p" role="YScLw">
                        <node concept="1pGfFk" id="20WMLipxOSi" role="2ShVmc">
                          <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                          <node concept="3cpWs3" id="20WMLipxPKA" role="37wK5m">
                            <node concept="37vLTw" id="20WMLipxPRK" role="3uHU7w">
                              <ref role="3cqZAo" node="20WMLipxMg2" resolve="rightVal" />
                            </node>
                            <node concept="3cpWs3" id="20WMLipxP3p" role="3uHU7B">
                              <node concept="37vLTw" id="20WMLipxP9j" role="3uHU7B">
                                <ref role="3cqZAo" node="20WMLipxLfr" resolve="leftVal" />
                              </node>
                              <node concept="Xl_RD" id="20WMLipxOY6" role="3uHU7w">
                                <property role="Xl_RC" value=" does not equal to " />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="20WMLipxN_h" role="3clFbw">
                    <node concept="2OqwBi" id="20WMLipxNIB" role="3fr31v">
                      <node concept="37vLTw" id="20WMLipxNDR" role="2Oq$k0">
                        <ref role="3cqZAo" node="20WMLipxLfr" resolve="leftVal" />
                      </node>
                      <node concept="liA8E" id="20WMLipxNL_" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                        <node concept="37vLTw" id="20WMLipxNVs" role="37wK5m">
                          <ref role="3cqZAo" node="20WMLipxMg2" resolve="rightVal" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="20WMLipxLfr" role="1bW2Oz">
                <property role="TrG5h" value="leftVal" />
                <node concept="16syzq" id="20WMLipxLu8" role="1tU5fm">
                  <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
                </node>
              </node>
              <node concept="37vLTG" id="20WMLipxMg2" role="1bW2Oz">
                <property role="TrG5h" value="rightVal" />
                <node concept="16syzq" id="20WMLipxMAH" role="1tU5fm">
                  <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="20WMLipxD8U" role="jymVt" />
    <node concept="3clFb_" id="7HUwyZaOeBH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="metaLogical" />
      <node concept="3Tm1VV" id="7HUwyZaOeBJ" role="1B3o_S" />
      <node concept="3uibUv" id="7HUwyZaOeBK" role="3clF45">
        <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="MetaLogical" />
        <node concept="16syzq" id="20WMLipvJNV" role="11_B2D">
          <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
        </node>
      </node>
      <node concept="3clFbS" id="7HUwyZaOeBR" role="3clF47">
        <node concept="3SKdUt" id="7HUwyZaOgx5" role="3cqZAp">
          <node concept="3SKdUq" id="7HUwyZaOgx7" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: implement me" />
          </node>
        </node>
        <node concept="YS8fn" id="7HUwyZaOg6C" role="3cqZAp">
          <node concept="2ShNRf" id="7HUwyZaOg8$" role="YScLw">
            <node concept="1pGfFk" id="7HUwyZaOgq0" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="7HUwyZaOgs4" role="37wK5m">
                <property role="Xl_RC" value="not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7HUwyZaOhSh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7MlQDeOy8j5" role="jymVt" />
    <node concept="3clFb_" id="2DKqMqOiKCY" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="2DKqMqOiKCZ" role="1B3o_S" />
      <node concept="17QB3L" id="2DKqMqOrE5e" role="3clF45" />
      <node concept="3clFbS" id="2DKqMqOiKD2" role="3clF47">
        <node concept="3cpWs8" id="2DKqMqOiMKv" role="3cqZAp">
          <node concept="3cpWsn" id="2DKqMqOiMKw" role="3cpWs9">
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="2DKqMqOiMKx" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="2DKqMqOiMNl" role="33vP2m">
              <node concept="1pGfFk" id="2DKqMqOiMNk" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2DKqMqOiMPp" role="3cqZAp">
          <node concept="3clFbS" id="2DKqMqOiMPr" role="3clFbx">
            <node concept="3clFbF" id="2DKqMqOiN2u" role="3cqZAp">
              <node concept="2OqwBi" id="2DKqMqOiN6K" role="3clFbG">
                <node concept="37vLTw" id="2DKqMqOiN2s" role="2Oq$k0">
                  <ref role="3cqZAo" node="2DKqMqOiMKw" resolve="sb" />
                </node>
                <node concept="liA8E" id="2DKqMqOiNtq" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                  <node concept="Xl_RD" id="2DKqMqOiNuY" role="37wK5m">
                    <property role="Xl_RC" value="_" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="2DKqMqOiMSt" role="3clFbw">
            <ref role="3cqZAo" node="2DKqMqOi$it" resolve="wildcard" />
          </node>
        </node>
        <node concept="3clFbF" id="2DKqMqOiOH2" role="3cqZAp">
          <node concept="2OqwBi" id="2DKqMqOiOMb" role="3clFbG">
            <node concept="37vLTw" id="2DKqMqOiOH0" role="2Oq$k0">
              <ref role="3cqZAo" node="2DKqMqOiMKw" resolve="sb" />
            </node>
            <node concept="liA8E" id="2DKqMqOiP8t" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
              <node concept="1rXfSq" id="2DKqMqOiPcl" role="37wK5m">
                <ref role="37wK5l" node="3HJTsBmCy5P" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2DKqMqOiPq2" role="3cqZAp">
          <node concept="2OqwBi" id="2DKqMqOiPw0" role="3clFbG">
            <node concept="37vLTw" id="2DKqMqOiPq0" role="2Oq$k0">
              <ref role="3cqZAo" node="2DKqMqOiMKw" resolve="sb" />
            </node>
            <node concept="liA8E" id="2DKqMqOiPRi" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2DKqMqOiKD3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2DKqMqOiLDE" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmCeTt" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="equals" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="3HJTsBmCeTu" role="1B3o_S" />
      <node concept="10P_77" id="3HJTsBmCeTv" role="3clF45" />
      <node concept="37vLTG" id="3HJTsBmCeTw" role="3clF46">
        <property role="TrG5h" value="that" />
        <node concept="3uibUv" id="3HJTsBmCeTx" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="3HJTsBmCeTy" role="3clF47">
        <node concept="3clFbJ" id="2DKqMqOpzdC" role="3cqZAp">
          <node concept="3clFbS" id="2DKqMqOpzdE" role="3clFbx">
            <node concept="3cpWs6" id="2DKqMqOp$Kg" role="3cqZAp">
              <node concept="3clFbT" id="2DKqMqOp$LJ" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2DKqMqOp$iQ" role="3clFbw">
            <node concept="10Nm6u" id="2DKqMqOp$It" role="3uHU7w" />
            <node concept="37vLTw" id="2DKqMqOpzEL" role="3uHU7B">
              <ref role="3cqZAo" node="3HJTsBmCeTw" resolve="that" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3HJTsBmCeTz" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBmCeT$" role="3clFbx">
            <node concept="3cpWs6" id="3HJTsBmCeT_" role="3cqZAp">
              <node concept="3clFbT" id="3HJTsBmCeTA" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3HJTsBmCkGE" role="3clFbw">
            <node concept="2OqwBi" id="3HJTsBmClyo" role="3uHU7w">
              <node concept="Xjq3P" id="3HJTsBmClhr" role="2Oq$k0" />
              <node concept="liA8E" id="3HJTsBmCmUX" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJTsBmChK1" role="3uHU7B">
              <node concept="37vLTw" id="3HJTsBmCgQg" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBmCeTw" resolve="that" />
              </node>
              <node concept="liA8E" id="3HJTsBmCkg$" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2DKqMqOpqwz" role="3cqZAp">
          <node concept="3clFbS" id="2DKqMqOpqw_" role="3clFbx">
            <node concept="3cpWs6" id="2DKqMqOpsCv" role="3cqZAp">
              <node concept="3clFbT" id="2DKqMqOpt3s" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2DKqMqOprUm" role="3clFbw">
            <node concept="2OqwBi" id="2DKqMqOpZbM" role="3uHU7w">
              <node concept="1eOMI4" id="2DKqMqOpZbN" role="2Oq$k0">
                <node concept="10QFUN" id="2DKqMqOpZbO" role="1eOMHV">
                  <node concept="3uibUv" id="2DKqMqOpZbP" role="10QFUM">
                    <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
                    <node concept="3qTvmN" id="2DKqMqOpZbQ" role="11_B2D" />
                  </node>
                  <node concept="37vLTw" id="2DKqMqOpZbR" role="10QFUP">
                    <ref role="3cqZAo" node="3HJTsBmCeTw" resolve="that" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2DKqMqOpZbS" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBn6rgQ" resolve="findRoot" />
              </node>
            </node>
            <node concept="1rXfSq" id="2DKqMqOpYiq" role="3uHU7B">
              <ref role="37wK5l" node="3HJTsBn6rgQ" resolve="findRoot" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2DKqMqOpvSN" role="3cqZAp" />
        <node concept="3cpWs6" id="5kEUewdu4lP" role="3cqZAp">
          <node concept="3clFbT" id="5kEUewdu5qi" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3HJTsBmCeUd" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBmCeUe" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmCeUf" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hashCode" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="3HJTsBmCeUg" role="1B3o_S" />
      <node concept="10Oyi0" id="3HJTsBmCeUh" role="3clF45" />
      <node concept="3clFbS" id="3HJTsBmCeUi" role="3clF47">
        <node concept="3clFbF" id="5kEUewdymsM" role="3cqZAp">
          <node concept="2YIFZM" id="5kEUewdymsO" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
            <ref role="37wK5l" to="wyt6:~System.identityHashCode(java.lang.Object):int" resolve="identityHashCode" />
            <node concept="1rXfSq" id="5kEUewdymsP" role="37wK5m">
              <ref role="37wK5l" node="3HJTsBn6rgQ" resolve="findRoot" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3HJTsBmCeUl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBmCeUm" role="jymVt" />
    <node concept="3Tm1VV" id="3HJTsBmBSJb" role="1B3o_S" />
    <node concept="3uibUv" id="3HJTsBmBSLt" role="1zkMxy">
      <ref role="3uigEE" to="eifs:~Logical" resolve="Logical" />
      <node concept="16syzq" id="3HJTsBmBSV4" role="11_B2D">
        <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
      </node>
    </node>
    <node concept="16euLQ" id="3HJTsBmBSUN" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
    <node concept="3uibUv" id="3HJTsBmBTqG" role="EKbjA">
      <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
      <node concept="16syzq" id="3HJTsBmBTr8" role="11_B2D">
        <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
      </node>
    </node>
    <node concept="3uibUv" id="6MYr6Jwygwh" role="EKbjA">
      <ref role="3uigEE" to="45ys:6MYr6JwxYwB" resolve="SolverLogical" />
      <node concept="16syzq" id="6MYr6JwyhSo" role="11_B2D">
        <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
      </node>
    </node>
    <node concept="3clFb_" id="3HJTsBmD3e2" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setParent" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3HJTsBmD3e3" role="3clF47">
        <node concept="3clFbF" id="3HJTsBmD3e4" role="3cqZAp">
          <node concept="37vLTI" id="3HJTsBmD3e5" role="3clFbG">
            <node concept="10QFUN" id="6MYr6JwyGrz" role="37vLTx">
              <node concept="3uibUv" id="6MYr6JwyGrw" role="10QFUM">
                <ref role="3uigEE" to="eifs:~Logical" resolve="Logical" />
                <node concept="16syzq" id="6MYr6JwyGrx" role="11_B2D">
                  <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
                </node>
              </node>
              <node concept="37vLTw" id="6MYr6JwyGry" role="10QFUP">
                <ref role="3cqZAo" node="3HJTsBmD3ec" resolve="parent" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJTsBmD3e7" role="37vLTJ">
              <node concept="Xjq3P" id="3HJTsBmD3e8" role="2Oq$k0" />
              <node concept="2OwXpG" id="3HJTsBmD3e9" role="2OqNvi">
                <ref role="2Oxat5" to="eifs:~Logical.parent" resolve="parent" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6MYr6JwyAmH" role="1B3o_S" />
      <node concept="3cqZAl" id="3HJTsBmD3eb" role="3clF45" />
      <node concept="37vLTG" id="3HJTsBmD3ec" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="3HJTsBmD5To" role="1tU5fm">
          <ref role="3uigEE" to="45ys:6MYr6JwxYwB" resolve="SolverLogical" />
          <node concept="16syzq" id="3HJTsBmD6H5" role="11_B2D">
            <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBmD3ee" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmK4yW" role="jymVt">
      <property role="TrG5h" value="setValue" />
      <node concept="37vLTG" id="3HJTsBmK7EC" role="3clF46">
        <property role="TrG5h" value="newVal" />
        <node concept="16syzq" id="3HJTsBmK83g" role="1tU5fm">
          <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
        </node>
      </node>
      <node concept="3cqZAl" id="3HJTsBmK4yY" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwyBfd" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBmK4z0" role="3clF47">
        <node concept="3clFbF" id="3HJTsBmK8iS" role="3cqZAp">
          <node concept="37vLTI" id="3HJTsBmKbmL" role="3clFbG">
            <node concept="37vLTw" id="3HJTsBmKb$7" role="37vLTx">
              <ref role="3cqZAo" node="3HJTsBmK7EC" resolve="newVal" />
            </node>
            <node concept="2OqwBi" id="3HJTsBmK8$2" role="37vLTJ">
              <node concept="Xjq3P" id="3HJTsBmK8iR" role="2Oq$k0" />
              <node concept="2OwXpG" id="3HJTsBmK9K7" role="2OqNvi">
                <ref role="2Oxat5" to="eifs:~Logical.value" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7K4Mb_JzAhs" role="3cqZAp" />
        <node concept="3clFbF" id="20WMLipxgdn" role="3cqZAp">
          <node concept="1rXfSq" id="20WMLipxgdm" role="3clFbG">
            <ref role="37wK5l" node="20WMLipxgdj" resolve="notifyObservers" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="7K4Mb_JzC6i" role="lGtFl">
        <node concept="TZ5HA" id="7K4Mb_JzC6j" role="TZ5H$">
          <node concept="1dT_AC" id="7K4Mb_JzC6k" role="1dT_Ay">
            <property role="1dT_AB" value="Set value and notify observers. " />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBmK5ue" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmD3ef" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="rank" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm6S6" id="20WMLipCC$r" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBmD3eg" role="3clF47">
        <node concept="3clFbF" id="3HJTsBmD3eh" role="3cqZAp">
          <node concept="37vLTw" id="3HJTsBmD3ei" role="3clFbG">
            <ref role="3cqZAo" to="eifs:~Logical.rank" resolve="rank" />
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="3HJTsBmD3ek" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3HJTsBmD3el" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmD3em" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="incRank" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm6S6" id="20WMLipCBjq" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBmD3en" role="3clF47">
        <node concept="3clFbF" id="3HJTsBmD3eo" role="3cqZAp">
          <node concept="3uNrnE" id="3HJTsBmD3ep" role="3clFbG">
            <node concept="2OqwBi" id="3HJTsBmD3eq" role="2$L3a6">
              <node concept="Xjq3P" id="3HJTsBmD3er" role="2Oq$k0" />
              <node concept="2OwXpG" id="3HJTsBmD3es" role="2OqNvi">
                <ref role="2Oxat5" to="eifs:~Logical.rank" resolve="rank" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3HJTsBmD3eu" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3HJTsBmD3ew" role="jymVt" />
    <node concept="3clFb_" id="7K4Mb_Jz6FW" role="jymVt">
      <property role="TrG5h" value="mergeObservers" />
      <node concept="3Tm6S6" id="20WMLipCxTx" role="1B3o_S" />
      <node concept="3cqZAl" id="7K4Mb_Jz6FY" role="3clF45" />
      <node concept="3clFbS" id="7K4Mb_Jz6G0" role="3clF47">
        <node concept="3cpWs8" id="6MYr6JwyLvv" role="3cqZAp">
          <node concept="3cpWsn" id="6MYr6JwyLvw" role="3cpWs9">
            <property role="TrG5h" value="mergeFrom" />
            <node concept="3uibUv" id="6MYr6JwyLvt" role="1tU5fm">
              <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
              <node concept="16syzq" id="6MYr6JwyLET" role="11_B2D">
                <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
              </node>
            </node>
            <node concept="10QFUN" id="6MYr6JwyM8B" role="33vP2m">
              <node concept="3uibUv" id="6MYr6JwyM8$" role="10QFUM">
                <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
                <node concept="16syzq" id="6MYr6JwyM8_" role="11_B2D">
                  <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
                </node>
              </node>
              <node concept="37vLTw" id="6MYr6JwyQxt" role="10QFUP">
                <ref role="3cqZAo" node="6MYr6JwyOfn" resolve="from" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6MYr6JwyK52" role="3cqZAp" />
        <node concept="3cpWs8" id="7K4Mb_JzdTU" role="3cqZAp">
          <node concept="3cpWsn" id="7K4Mb_JzdTV" role="3cpWs9">
            <property role="TrG5h" value="fromHObs" />
            <node concept="3uibUv" id="7K4Mb_JzdTW" role="1tU5fm">
              <ref role="3uigEE" to="9js4:~RehashableKeySet" resolve="RehashableKeySet" />
            </node>
            <node concept="2OqwBi" id="7K4Mb_JzdTX" role="33vP2m">
              <node concept="37vLTw" id="7K4Mb_JzdTY" role="2Oq$k0">
                <ref role="3cqZAo" node="6MYr6JwyLvw" resolve="mergeFrom" />
              </node>
              <node concept="liA8E" id="7K4Mb_JzdTZ" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmD3ex" resolve="hashObservers" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7K4Mb_JzdU0" role="3cqZAp">
          <node concept="3clFbS" id="7K4Mb_JzdU1" role="3clFbx">
            <node concept="3clFbF" id="7K4Mb_JzdU2" role="3cqZAp">
              <node concept="2OqwBi" id="7K4Mb_JzdU3" role="3clFbG">
                <node concept="37vLTw" id="7K4Mb_JzdU4" role="2Oq$k0">
                  <ref role="3cqZAo" node="6MYr6JwyLvw" resolve="mergeFrom" />
                </node>
                <node concept="liA8E" id="7K4Mb_JzdU5" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmD3eC" resolve="clearHashObservers" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7K4Mb_JzdU6" role="3cqZAp">
              <node concept="2OqwBi" id="7K4Mb_JzdU7" role="3clFbG">
                <node concept="Xjq3P" id="6MYr6Jwy8sQ" role="2Oq$k0" />
                <node concept="liA8E" id="7K4Mb_JzdU9" role="2OqNvi">
                  <ref role="37wK5l" to="eifs:~Logical.mergeHashObservers(runtime.hash.RehashableKeySet):void" resolve="mergeHashObservers" />
                  <node concept="37vLTw" id="7K4Mb_JzdUa" role="37wK5m">
                    <ref role="3cqZAo" node="7K4Mb_JzdTV" resolve="fromHObs" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7K4Mb_JzdUb" role="3clFbw">
            <node concept="10Nm6u" id="7K4Mb_JzdUc" role="3uHU7w" />
            <node concept="37vLTw" id="7K4Mb_JzdUd" role="3uHU7B">
              <ref role="3cqZAo" node="7K4Mb_JzdTV" resolve="fromHObs" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7K4Mb_JzdUe" role="3cqZAp" />
        <node concept="3cpWs8" id="7K4Mb_JzdUf" role="3cqZAp">
          <node concept="3cpWsn" id="7K4Mb_JzdUg" role="3cpWs9">
            <property role="TrG5h" value="fromVObs" />
            <node concept="3uibUv" id="7K4Mb_JzdUh" role="1tU5fm">
              <ref role="3uigEE" to="eifs:~DoublyLinkedConstraintList" resolve="DoublyLinkedConstraintList" />
              <node concept="3uibUv" id="7K4Mb_JzdUi" role="11_B2D">
                <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
              </node>
            </node>
            <node concept="2OqwBi" id="7K4Mb_JzdUj" role="33vP2m">
              <node concept="37vLTw" id="7K4Mb_JzdUk" role="2Oq$k0">
                <ref role="3cqZAo" node="6MYr6JwyLvw" resolve="mergeFrom" />
              </node>
              <node concept="liA8E" id="7K4Mb_JzdUl" role="2OqNvi">
                <ref role="37wK5l" node="3HJTsBmD3eN" resolve="variableObservers" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7K4Mb_JzdUm" role="3cqZAp">
          <node concept="3clFbS" id="7K4Mb_JzdUn" role="3clFbx">
            <node concept="3clFbF" id="7K4Mb_JzdUo" role="3cqZAp">
              <node concept="2OqwBi" id="7K4Mb_JzdUp" role="3clFbG">
                <node concept="37vLTw" id="7K4Mb_JzdUq" role="2Oq$k0">
                  <ref role="3cqZAo" node="6MYr6JwyLvw" resolve="mergeFrom" />
                </node>
                <node concept="liA8E" id="7K4Mb_JzdUr" role="2OqNvi">
                  <ref role="37wK5l" node="3HJTsBmD3f9" resolve="clearVariableObservers" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7K4Mb_JzdUs" role="3cqZAp">
              <node concept="3cpWsn" id="7K4Mb_JzdUt" role="3cpWs9">
                <property role="TrG5h" value="intoVObs" />
                <node concept="3uibUv" id="7K4Mb_JzdUu" role="1tU5fm">
                  <ref role="3uigEE" to="eifs:~DoublyLinkedConstraintList" resolve="DoublyLinkedConstraintList" />
                  <node concept="3uibUv" id="7K4Mb_JzdUv" role="11_B2D">
                    <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7K4Mb_JzdUw" role="33vP2m">
                  <node concept="Xjq3P" id="6MYr6Jwy8xE" role="2Oq$k0" />
                  <node concept="liA8E" id="7K4Mb_JzdUy" role="2OqNvi">
                    <ref role="37wK5l" node="3HJTsBmD3eN" resolve="variableObservers" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7K4Mb_JzdUz" role="3cqZAp">
              <node concept="3clFbS" id="7K4Mb_JzdU$" role="3clFbx">
                <node concept="3SKdUt" id="7K4Mb_JzdU_" role="3cqZAp">
                  <node concept="3SKdUq" id="7K4Mb_JzdUA" role="3SKWNk">
                    <property role="3SKdUp" value="first get an iterator over the current container" />
                  </node>
                </node>
                <node concept="3cpWs8" id="7K4Mb_JzdUB" role="3cqZAp">
                  <node concept="3cpWsn" id="7K4Mb_JzdUC" role="3cpWs9">
                    <property role="TrG5h" value="intoIt" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="7K4Mb_JzdUD" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
                      <node concept="3uibUv" id="7K4Mb_JzdUE" role="11_B2D">
                        <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7K4Mb_JzdUF" role="33vP2m">
                      <node concept="37vLTw" id="7K4Mb_JzdUG" role="2Oq$k0">
                        <ref role="3cqZAo" node="7K4Mb_JzdUt" resolve="intoVObs" />
                      </node>
                      <node concept="liA8E" id="7K4Mb_JzdUH" role="2OqNvi">
                        <ref role="37wK5l" to="eifs:~DoublyLinkedConstraintList.iterator():java.util.Iterator" resolve="iterator" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="7K4Mb_JzdUI" role="3cqZAp">
                  <node concept="3SKdUq" id="7K4Mb_JzdUJ" role="3SKWNk">
                    <property role="3SKdUp" value="then do merge" />
                  </node>
                </node>
                <node concept="3clFbF" id="7K4Mb_JzdUK" role="3cqZAp">
                  <node concept="2OqwBi" id="7K4Mb_JzdUL" role="3clFbG">
                    <node concept="37vLTw" id="7K4Mb_JzdUM" role="2Oq$k0">
                      <ref role="3cqZAo" node="7K4Mb_JzdUt" resolve="intoVObs" />
                    </node>
                    <node concept="liA8E" id="7K4Mb_JzdUN" role="2OqNvi">
                      <ref role="37wK5l" to="eifs:~DoublyLinkedConstraintList.mergeWith(runtime.DoublyLinkedConstraintList):void" resolve="mergeWith" />
                      <node concept="37vLTw" id="7K4Mb_JzdUO" role="37wK5m">
                        <ref role="3cqZAo" node="7K4Mb_JzdUg" resolve="fromVObs" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="7K4Mb_JzdUP" role="3cqZAp">
                  <node concept="3SKdUq" id="7K4Mb_JzdUQ" role="3SKWNk">
                    <property role="3SKdUp" value="finally notify" />
                  </node>
                </node>
                <node concept="2$JKZl" id="7K4Mb_JzdUR" role="3cqZAp">
                  <node concept="3clFbS" id="7K4Mb_JzdUS" role="2LFqv$">
                    <node concept="3clFbF" id="7K4Mb_JzdUT" role="3cqZAp">
                      <node concept="2OqwBi" id="7K4Mb_JzdUU" role="3clFbG">
                        <node concept="2OqwBi" id="7K4Mb_JzdUV" role="2Oq$k0">
                          <node concept="37vLTw" id="7K4Mb_JzdUW" role="2Oq$k0">
                            <ref role="3cqZAo" node="7K4Mb_JzdUC" resolve="intoIt" />
                          </node>
                          <node concept="liA8E" id="7K4Mb_JzdUX" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7K4Mb_JzdUY" role="2OqNvi">
                          <ref role="37wK5l" to="eifs:~Constraint.reactivate():void" resolve="reactivate" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7K4Mb_JzdUZ" role="2$JKZa">
                    <node concept="37vLTw" id="7K4Mb_JzdV0" role="2Oq$k0">
                      <ref role="3cqZAo" node="7K4Mb_JzdUC" resolve="intoIt" />
                    </node>
                    <node concept="liA8E" id="7K4Mb_JzdV1" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="7K4Mb_JzdV2" role="3clFbw">
                <node concept="10Nm6u" id="7K4Mb_JzdV3" role="3uHU7w" />
                <node concept="37vLTw" id="7K4Mb_JzdV4" role="3uHU7B">
                  <ref role="3cqZAo" node="7K4Mb_JzdUt" resolve="intoVObs" />
                </node>
              </node>
              <node concept="9aQIb" id="7K4Mb_JzdV5" role="9aQIa">
                <node concept="3clFbS" id="7K4Mb_JzdV6" role="9aQI4">
                  <node concept="3clFbF" id="7K4Mb_JzdV7" role="3cqZAp">
                    <node concept="2OqwBi" id="7K4Mb_JzdV8" role="3clFbG">
                      <node concept="Xjq3P" id="6MYr6Jwy8ET" role="2Oq$k0" />
                      <node concept="liA8E" id="7K4Mb_JzdVa" role="2OqNvi">
                        <ref role="37wK5l" node="3HJTsBmD3eV" resolve="setVariableObservers" />
                        <node concept="37vLTw" id="7K4Mb_JzdVb" role="37wK5m">
                          <ref role="3cqZAo" node="7K4Mb_JzdUg" resolve="fromVObs" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7K4Mb_JzdVc" role="3clFbw">
            <node concept="10Nm6u" id="7K4Mb_JzdVd" role="3uHU7w" />
            <node concept="37vLTw" id="7K4Mb_JzdVe" role="3uHU7B">
              <ref role="3cqZAo" node="7K4Mb_JzdUg" resolve="fromVObs" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6JwyOfn" role="3clF46">
        <property role="TrG5h" value="from" />
        <node concept="3uibUv" id="6MYr6JwyOfm" role="1tU5fm">
          <ref role="3uigEE" to="45ys:6MYr6JwxYwB" resolve="SolverLogical" />
          <node concept="16syzq" id="6MYr6JwyPEp" role="11_B2D">
            <ref role="16sUi3" node="3HJTsBmBSUN" resolve="T" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="20WMLipxixT" role="jymVt" />
    <node concept="3clFb_" id="20WMLipxgdj" role="jymVt">
      <property role="TrG5h" value="notifyObservers" />
      <node concept="3Tm6S6" id="20WMLipxgdk" role="1B3o_S" />
      <node concept="3cqZAl" id="20WMLipxgdl" role="3clF45" />
      <node concept="3clFbS" id="20WMLipxgdb" role="3clF47">
        <node concept="3clFbF" id="20WMLipxgdc" role="3cqZAp">
          <node concept="1rXfSq" id="20WMLipxgdd" role="3clFbG">
            <ref role="37wK5l" to="eifs:~Logical.rehashAllAndDispose():void" resolve="rehashAllAndDispose" />
          </node>
        </node>
        <node concept="3clFbH" id="20WMLipxgde" role="3cqZAp" />
        <node concept="3clFbF" id="20WMLipxgdf" role="3cqZAp">
          <node concept="1rXfSq" id="20WMLipxgdg" role="3clFbG">
            <ref role="37wK5l" node="3HJTsBmDhnk" resolve="reactivateAndClearObservers" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7K4Mb_Jz4rF" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmD3ex" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hashObservers" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3HJTsBmD3ey" role="3clF47">
        <node concept="3clFbF" id="3HJTsBmD3ez" role="3cqZAp">
          <node concept="37vLTw" id="3HJTsBmD3e$" role="3clFbG">
            <ref role="3cqZAo" to="eifs:~Logical.hashObservers" resolve="hashObservers" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6MYr6JwxVZz" role="1B3o_S" />
      <node concept="3uibUv" id="3HJTsBmD3eA" role="3clF45">
        <ref role="3uigEE" to="9js4:~RehashableKeySet" resolve="RehashableKeySet" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBmD3eB" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmD3eC" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="clearHashObservers" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3HJTsBmD3eD" role="3clF47">
        <node concept="3clFbF" id="3HJTsBmD3eE" role="3cqZAp">
          <node concept="37vLTI" id="3HJTsBmD3eF" role="3clFbG">
            <node concept="10Nm6u" id="3HJTsBmD3eG" role="37vLTx" />
            <node concept="2OqwBi" id="3HJTsBmD3eH" role="37vLTJ">
              <node concept="Xjq3P" id="3HJTsBmD3eI" role="2Oq$k0" />
              <node concept="2OwXpG" id="3HJTsBmD3eJ" role="2OqNvi">
                <ref role="2Oxat5" to="eifs:~Logical.hashObservers" resolve="hashObservers" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6MYr6JwxVhC" role="1B3o_S" />
      <node concept="3cqZAl" id="3HJTsBmD3eL" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3HJTsBmD3eM" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmD3eN" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="variableObservers" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3HJTsBmD3eO" role="3clF47">
        <node concept="3clFbF" id="3HJTsBmD3eP" role="3cqZAp">
          <node concept="37vLTw" id="3HJTsBmD3eQ" role="3clFbG">
            <ref role="3cqZAo" to="eifs:~Logical.variableObservers" resolve="variableObservers" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6MYr6JwxUz7" role="1B3o_S" />
      <node concept="3uibUv" id="3HJTsBmD3eS" role="3clF45">
        <ref role="3uigEE" to="eifs:~DoublyLinkedConstraintList" resolve="DoublyLinkedConstraintList" />
        <node concept="3uibUv" id="3HJTsBmD3eT" role="11_B2D">
          <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBmD3eU" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmD3eV" role="jymVt">
      <property role="TrG5h" value="setVariableObservers" />
      <node concept="37vLTG" id="3HJTsBmD3eW" role="3clF46">
        <property role="TrG5h" value="vobs" />
        <node concept="3uibUv" id="3HJTsBmD3eX" role="1tU5fm">
          <ref role="3uigEE" to="eifs:~DoublyLinkedConstraintList" resolve="DoublyLinkedConstraintList" />
          <node concept="3uibUv" id="3HJTsBmD3eY" role="11_B2D">
            <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3HJTsBmD3eZ" role="3clF45" />
      <node concept="3Tm6S6" id="6MYr6JwxTQj" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBmD3f1" role="3clF47">
        <node concept="3clFbF" id="3HJTsBmD3f2" role="3cqZAp">
          <node concept="37vLTI" id="3HJTsBmD3f3" role="3clFbG">
            <node concept="37vLTw" id="3HJTsBmD3f4" role="37vLTx">
              <ref role="3cqZAo" node="3HJTsBmD3eW" resolve="vobs" />
            </node>
            <node concept="2OqwBi" id="3HJTsBmD3f5" role="37vLTJ">
              <node concept="Xjq3P" id="3HJTsBmD3f6" role="2Oq$k0" />
              <node concept="2OwXpG" id="3HJTsBmD3f7" role="2OqNvi">
                <ref role="2Oxat5" to="eifs:~Logical.variableObservers" resolve="variableObservers" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBmD3f8" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmD3f9" role="jymVt">
      <property role="TrG5h" value="clearVariableObservers" />
      <node concept="3cqZAl" id="3HJTsBmD3fa" role="3clF45" />
      <node concept="3Tm6S6" id="6MYr6JwxT7$" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBmD3fc" role="3clF47">
        <node concept="3clFbF" id="3HJTsBmD3fd" role="3cqZAp">
          <node concept="37vLTI" id="3HJTsBmD3fe" role="3clFbG">
            <node concept="10Nm6u" id="3HJTsBmD3ff" role="37vLTx" />
            <node concept="2OqwBi" id="3HJTsBmD3fg" role="37vLTJ">
              <node concept="Xjq3P" id="3HJTsBmD3fh" role="2Oq$k0" />
              <node concept="2OwXpG" id="3HJTsBmD3fi" role="2OqNvi">
                <ref role="2Oxat5" to="eifs:~Logical.variableObservers" resolve="variableObservers" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBmD3fj" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBmDhnk" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="reactivateAndClearObservers" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3HJTsBmDhnl" role="3clF47">
        <node concept="3cpWs8" id="3HJTsBmDhnm" role="3cqZAp">
          <node concept="3cpWsn" id="3HJTsBmDhnn" role="3cpWs9">
            <property role="TrG5h" value="vobs" />
            <node concept="3uibUv" id="3HJTsBmDhno" role="1tU5fm">
              <ref role="3uigEE" to="eifs:~DoublyLinkedConstraintList" resolve="DoublyLinkedConstraintList" />
              <node concept="3uibUv" id="3HJTsBmDhnp" role="11_B2D">
                <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
              </node>
            </node>
            <node concept="1rXfSq" id="3HJTsBmDhnq" role="33vP2m">
              <ref role="37wK5l" node="3HJTsBmD3eN" resolve="variableObservers" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3HJTsBmDhnr" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBmDhns" role="3clFbx">
            <node concept="3clFbF" id="3HJTsBmDhnt" role="3cqZAp">
              <node concept="1rXfSq" id="3HJTsBmDhnu" role="3clFbG">
                <ref role="37wK5l" node="3HJTsBmD3f9" resolve="clearVariableObservers" />
              </node>
            </node>
            <node concept="3cpWs8" id="3HJTsBmDhnv" role="3cqZAp">
              <node concept="3cpWsn" id="3HJTsBmDhnw" role="3cpWs9">
                <property role="TrG5h" value="vobsIt" />
                <node concept="3uibUv" id="3HJTsBmDhnx" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
                  <node concept="3uibUv" id="3HJTsBmDhny" role="11_B2D">
                    <ref role="3uigEE" to="eifs:~Constraint" resolve="Constraint" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3HJTsBmDhnz" role="33vP2m">
                  <node concept="37vLTw" id="3HJTsBmDhn$" role="2Oq$k0">
                    <ref role="3cqZAo" node="3HJTsBmDhnn" resolve="vobs" />
                  </node>
                  <node concept="liA8E" id="3HJTsBmDhn_" role="2OqNvi">
                    <ref role="37wK5l" to="eifs:~DoublyLinkedConstraintList.iterator():java.util.Iterator" resolve="iterator" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2$JKZl" id="3HJTsBmDhnA" role="3cqZAp">
              <node concept="3clFbS" id="3HJTsBmDhnB" role="2LFqv$">
                <node concept="3clFbF" id="3HJTsBmDhnC" role="3cqZAp">
                  <node concept="2OqwBi" id="3HJTsBmDhnD" role="3clFbG">
                    <node concept="2OqwBi" id="3HJTsBmDhnE" role="2Oq$k0">
                      <node concept="37vLTw" id="3HJTsBmDhnF" role="2Oq$k0">
                        <ref role="3cqZAo" node="3HJTsBmDhnw" resolve="vobsIt" />
                      </node>
                      <node concept="liA8E" id="3HJTsBmDhnG" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3HJTsBmDhnH" role="2OqNvi">
                      <ref role="37wK5l" to="eifs:~Constraint.reactivate():void" resolve="reactivate" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3HJTsBmDhnI" role="2$JKZa">
                <node concept="37vLTw" id="3HJTsBmDhnJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBmDhnw" resolve="vobsIt" />
                </node>
                <node concept="liA8E" id="3HJTsBmDhnK" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Iterator.hasNext():boolean" resolve="hasNext" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3HJTsBmDhnL" role="3clFbw">
            <node concept="10Nm6u" id="3HJTsBmDhnM" role="3uHU7w" />
            <node concept="37vLTw" id="3HJTsBmDhnN" role="3uHU7B">
              <ref role="3cqZAo" node="3HJTsBmDhnn" resolve="vobs" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6MYr6JwxSnX" role="1B3o_S" />
      <node concept="3cqZAl" id="3HJTsBmDhnP" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5zfvpQ7aN5o" role="jymVt" />
    <node concept="312cEg" id="2DKqMqOi$it" role="jymVt">
      <property role="TrG5h" value="wildcard" />
      <node concept="3Tm6S6" id="2DKqMqOi$iu" role="1B3o_S" />
      <node concept="10P_77" id="2DKqMqOi$iv" role="1tU5fm" />
      <node concept="3clFbT" id="2DKqMqOi$iw" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7ISVfSIxNO">
    <property role="2bfB8j" value="false" />
    <property role="TrG5h" value="JchrSessionSolver" />
    <node concept="3uibUv" id="2tcGHBEec09" role="1zkMxy">
      <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="SessionSolver" />
    </node>
    <node concept="2tJIrI" id="1ggxSI7xhTW" role="jymVt" />
    <node concept="3clFbW" id="1ggxSI7xi4I" role="jymVt">
      <node concept="3cqZAl" id="1ggxSI7xi4K" role="3clF45" />
      <node concept="3Tm1VV" id="1ggxSI7xi4L" role="1B3o_S" />
      <node concept="3clFbS" id="1ggxSI7xi4M" role="3clF47">
        <node concept="3clFbF" id="6MYr6JwosqE" role="3cqZAp">
          <node concept="37vLTI" id="6MYr6JwosqG" role="3clFbG">
            <node concept="2OqwBi" id="6MYr6JwosqK" role="37vLTJ">
              <node concept="Xjq3P" id="6MYr6JwosqN" role="2Oq$k0" />
              <node concept="2OwXpG" id="6MYr6JwosqJ" role="2OqNvi">
                <ref role="2Oxat5" node="6MYr6JwosqA" resolve="constraintSystem" />
              </node>
            </node>
            <node concept="2YIFZM" id="6MYr6Jwp6w5" role="37vLTx">
              <ref role="37wK5l" to="eifs:~ConstraintSystem.get():runtime.ConstraintSystem" resolve="get" />
              <ref role="1Pybhc" to="eifs:~ConstraintSystem" resolve="ConstraintSystem" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6Jwp6g7" role="jymVt" />
    <node concept="3clFbW" id="6MYr6Jwp62r" role="jymVt">
      <node concept="3cqZAl" id="6MYr6Jwp62s" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6Jwp62t" role="1B3o_S" />
      <node concept="3clFbS" id="6MYr6Jwp62u" role="3clF47">
        <node concept="3clFbF" id="6MYr6Jwp62v" role="3cqZAp">
          <node concept="37vLTI" id="6MYr6Jwp62w" role="3clFbG">
            <node concept="2OqwBi" id="6MYr6Jwp62x" role="37vLTJ">
              <node concept="Xjq3P" id="6MYr6Jwp62y" role="2Oq$k0" />
              <node concept="2OwXpG" id="6MYr6Jwp62z" role="2OqNvi">
                <ref role="2Oxat5" node="6MYr6JwosqA" resolve="constraintSystem" />
              </node>
            </node>
            <node concept="37vLTw" id="6MYr6Jwp62$" role="37vLTx">
              <ref role="3cqZAo" node="6MYr6Jwp62_" resolve="constraintSystem" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6Jwp62_" role="3clF46">
        <property role="TrG5h" value="constraintSystem" />
        <node concept="3uibUv" id="6MYr6Jwp62A" role="1tU5fm">
          <ref role="3uigEE" to="eifs:~ConstraintSystem" resolve="ConstraintSystem" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ggxSI7xMKS" role="jymVt" />
    <node concept="3clFbW" id="1ggxSI7xM_O" role="jymVt">
      <node concept="3cqZAl" id="1ggxSI7xM_P" role="3clF45" />
      <node concept="3Tm1VV" id="1ggxSI7xM_Q" role="1B3o_S" />
      <node concept="3clFbS" id="1ggxSI7xM_R" role="3clF47">
        <node concept="3clFbF" id="1ggxSI7xM_S" role="3cqZAp">
          <node concept="37vLTI" id="1ggxSI7xM_T" role="3clFbG">
            <node concept="2OqwBi" id="1ggxSI7xM_U" role="37vLTJ">
              <node concept="Xjq3P" id="1ggxSI7xM_V" role="2Oq$k0" />
              <node concept="2OwXpG" id="1ggxSI7xM_W" role="2OqNvi">
                <ref role="2Oxat5" node="1ggxSI7xiwv" resolve="javaExpressionSolver" />
              </node>
            </node>
            <node concept="37vLTw" id="1ggxSI7xM_X" role="37vLTx">
              <ref role="3cqZAo" node="1ggxSI7xM_Y" resolve="javaExpressionSolver" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6MYr6JwosMX" role="3cqZAp">
          <node concept="37vLTI" id="6MYr6JwosTD" role="3clFbG">
            <node concept="2YIFZM" id="6MYr6Jwp7MN" role="37vLTx">
              <ref role="37wK5l" to="eifs:~ConstraintSystem.get():runtime.ConstraintSystem" resolve="get" />
              <ref role="1Pybhc" to="eifs:~ConstraintSystem" resolve="ConstraintSystem" />
            </node>
            <node concept="2OqwBi" id="6MYr6JwosO0" role="37vLTJ">
              <node concept="Xjq3P" id="6MYr6JwosMV" role="2Oq$k0" />
              <node concept="2OwXpG" id="6MYr6JwosQH" role="2OqNvi">
                <ref role="2Oxat5" node="6MYr6JwosqA" resolve="constraintSystem" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1ggxSI7xM_Y" role="3clF46">
        <property role="TrG5h" value="javaExpressionSolver" />
        <node concept="3uibUv" id="1ggxSI7xM_Z" role="1tU5fm">
          <ref role="3uigEE" to="qrld:6Kcfpq7AYBh" resolve="Queryable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwormI" role="jymVt" />
    <node concept="3clFbW" id="6MYr6Jwp7cE" role="jymVt">
      <node concept="3cqZAl" id="6MYr6Jwp7cF" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6Jwp7cG" role="1B3o_S" />
      <node concept="3clFbS" id="6MYr6Jwp7cH" role="3clF47">
        <node concept="3clFbF" id="6MYr6Jwp7cI" role="3cqZAp">
          <node concept="37vLTI" id="6MYr6Jwp7cJ" role="3clFbG">
            <node concept="2OqwBi" id="6MYr6Jwp7cK" role="37vLTJ">
              <node concept="Xjq3P" id="6MYr6Jwp7cL" role="2Oq$k0" />
              <node concept="2OwXpG" id="6MYr6Jwp7cM" role="2OqNvi">
                <ref role="2Oxat5" node="1ggxSI7xiwv" resolve="javaExpressionSolver" />
              </node>
            </node>
            <node concept="37vLTw" id="6MYr6Jwp7cN" role="37vLTx">
              <ref role="3cqZAo" node="6MYr6Jwp7cU" resolve="javaExpressionSolver" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6MYr6Jwp7cO" role="3cqZAp">
          <node concept="37vLTI" id="6MYr6Jwp7cP" role="3clFbG">
            <node concept="37vLTw" id="6MYr6Jwp7cQ" role="37vLTx">
              <ref role="3cqZAo" node="6MYr6Jwp7cW" resolve="constraintSystem" />
            </node>
            <node concept="2OqwBi" id="6MYr6Jwp7cR" role="37vLTJ">
              <node concept="Xjq3P" id="6MYr6Jwp7cS" role="2Oq$k0" />
              <node concept="2OwXpG" id="6MYr6Jwp7cT" role="2OqNvi">
                <ref role="2Oxat5" node="6MYr6JwosqA" resolve="constraintSystem" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6Jwp7cU" role="3clF46">
        <property role="TrG5h" value="javaExpressionSolver" />
        <node concept="3uibUv" id="6MYr6Jwp7cV" role="1tU5fm">
          <ref role="3uigEE" to="qrld:6Kcfpq7AYBh" resolve="Queryable" />
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6Jwp7cW" role="3clF46">
        <property role="TrG5h" value="constraintSystem" />
        <node concept="3uibUv" id="6MYr6Jwp7cX" role="1tU5fm">
          <ref role="3uigEE" to="eifs:~ConstraintSystem" resolve="ConstraintSystem" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6Jwp7cD" role="jymVt" />
    <node concept="3clFb_" id="6MYr6Jwor$n" role="jymVt">
      <property role="TrG5h" value="queueIfBusy" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="6MYr6Jwor$o" role="3clF46">
        <property role="TrG5h" value="function" />
        <node concept="3uibUv" id="6MYr6Jwor$p" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="10P_77" id="6MYr6Jwor$q" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6Jwor$r" role="1B3o_S" />
      <node concept="3clFbS" id="6MYr6Jwor$t" role="3clF47">
        <node concept="3clFbJ" id="6MYr6Jwotrp" role="3cqZAp">
          <node concept="3clFbS" id="6MYr6Jwotrq" role="3clFbx">
            <node concept="3clFbF" id="6MYr6Jwotrr" role="3cqZAp">
              <node concept="2YIFZM" id="6MYr6Jwotrs" role="3clFbG">
                <ref role="1Pybhc" to="eift:~ConstraintSystemUtil" resolve="ConstraintSystemUtil" />
                <ref role="37wK5l" to="eift:~ConstraintSystemUtil.queue(ConstraintSystem,Runnable)" resolve="queue" />
                <node concept="37vLTw" id="6MYr6Jwotrt" role="37wK5m">
                  <ref role="3cqZAo" node="6MYr6JwosqA" resolve="constraintSystem" />
                </node>
                <node concept="37vLTw" id="6MYr6Jwotru" role="37wK5m">
                  <ref role="3cqZAo" node="6MYr6Jwor$o" resolve="function" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6MYr6Jwotrv" role="3cqZAp">
              <node concept="3clFbT" id="6MYr6Jwotrw" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6MYr6Jwotrx" role="3clFbw">
            <node concept="37vLTw" id="6MYr6Jwotry" role="2Oq$k0">
              <ref role="3cqZAo" node="6MYr6JwosqA" resolve="constraintSystem" />
            </node>
            <node concept="liA8E" id="6MYr6Jwotrz" role="2OqNvi">
              <ref role="37wK5l" to="eifs:~ConstraintSystem.isQueuing():boolean" resolve="isQueuing" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6MYr6Jwotr$" role="3cqZAp">
          <node concept="3clFbT" id="6MYr6Jwotr_" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3eLgHzX3NBu" role="jymVt" />
    <node concept="3clFb_" id="3eLgHzX3NPd" role="jymVt">
      <property role="TrG5h" value="fail" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="3eLgHzX3NPe" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="3eLgHzX3NPf" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="3eLgHzX3NPg" role="3clF45" />
      <node concept="3Tm1VV" id="3eLgHzX3NPh" role="1B3o_S" />
      <node concept="3clFbS" id="3eLgHzX3NPj" role="3clF47">
        <node concept="YS8fn" id="3eLgHzX3On1" role="3cqZAp">
          <node concept="2ShNRf" id="3eLgHzX3OnK" role="YScLw">
            <node concept="1pGfFk" id="3eLgHzX3PBQ" role="2ShVmc">
              <ref role="37wK5l" to="eifs:~FailureException.&lt;init&gt;(java.lang.String)" resolve="FailureException" />
              <node concept="37vLTw" id="3eLgHzX3PF4" role="37wK5m">
                <ref role="3cqZAo" node="3eLgHzX3NPe" resolve="message" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6Jworqg" role="jymVt" />
    <node concept="3clFb_" id="7ISVfSIy6a" role="jymVt">
      <property role="TrG5h" value="registerSymbol" />
      <node concept="2AHcQZ" id="2tcGHBEej41" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="7ISVfSIJee" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="2tcGHBEei$8" role="1tU5fm">
          <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="2tcGHBEisRf" role="3clF46">
        <property role="TrG5h" value="computingTracer" />
        <node concept="3uibUv" id="2tcGHBEisZb" role="1tU5fm">
          <ref role="3uigEE" to="qrld:24Vro6cQnrj" resolve="EvaluationTrace" />
        </node>
      </node>
      <node concept="3cqZAl" id="7ISVfSIy6c" role="3clF45" />
      <node concept="3Tmbuc" id="5mr7UHchdZc" role="1B3o_S" />
      <node concept="3clFbS" id="7ISVfSIy6e" role="3clF47">
        <node concept="3clFbH" id="7ISVfSIYKv" role="3cqZAp" />
        <node concept="3clFbJ" id="7ISVfSIIXN" role="3cqZAp">
          <node concept="3clFbS" id="7ISVfSIIXO" role="3clFbx">
            <node concept="3clFbF" id="7ISVfSIVrg" role="3cqZAp">
              <node concept="2OqwBi" id="7ISVfSIVrQ" role="3clFbG">
                <node concept="Xjq3P" id="2tcGHBEecgK" role="2Oq$k0" />
                <node concept="liA8E" id="7ISVfSIVsU" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:6Kcfpq7B2LV" resolve="registerSolver" />
                  <node concept="10QFUN" id="7ISVfSIYFl" role="37wK5m">
                    <node concept="3uibUv" id="7ISVfSIYFj" role="10QFUM">
                      <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
                    </node>
                    <node concept="37vLTw" id="7ISVfSIYFk" role="10QFUP">
                      <ref role="3cqZAo" node="7ISVfSIJee" resolve="symbol" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="7ISVfSIVIp" role="37wK5m">
                    <node concept="1pGfFk" id="7ISVfSIWk9" role="2ShVmc">
                      <ref role="37wK5l" node="6MYr6JwUN9q" resolve="JchrUnificationSolverImpl" />
                      <node concept="Xjq3P" id="2tcGHBEecLr" role="37wK5m" />
                      <node concept="37vLTw" id="5mr7UHchcsc" role="37wK5m">
                        <ref role="3cqZAo" node="2tcGHBEisRf" resolve="computingTracer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7ISVfSIYJ8" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="7ISVfSIJwN" role="3clFbw">
            <node concept="10M0yZ" id="7ISVfSIJ9U" role="2Oq$k0">
              <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
              <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
            </node>
            <node concept="liA8E" id="7ISVfSIJyd" role="2OqNvi">
              <ref role="37wK5l" to="rchb:54i3Fxd17bK" resolve="equals" />
              <node concept="37vLTw" id="7ISVfSIJzc" role="37wK5m">
                <ref role="3cqZAo" node="7ISVfSIJee" resolve="symbol" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7ISVfSIJml" role="3eNLev">
            <node concept="2OqwBi" id="7ISVfSIJ_2" role="3eO9$A">
              <node concept="10M0yZ" id="7ISVfSIJrd" role="2Oq$k0">
                <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
                <ref role="3cqZAo" to="cxk7:5uFPQ7C23RV" resolve="EQ_SYM" />
              </node>
              <node concept="liA8E" id="7ISVfSIJAs" role="2OqNvi">
                <ref role="37wK5l" to="rchb:54i3Fxd17bK" resolve="equals" />
                <node concept="37vLTw" id="7ISVfSIJBV" role="37wK5m">
                  <ref role="3cqZAo" node="7ISVfSIJee" resolve="symbol" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7ISVfSIJmn" role="3eOfB_">
              <node concept="3clFbF" id="7ISVfSIYOv" role="3cqZAp">
                <node concept="2OqwBi" id="7ISVfSIYOw" role="3clFbG">
                  <node concept="Xjq3P" id="2tcGHBEecj3" role="2Oq$k0" />
                  <node concept="liA8E" id="7ISVfSIYOy" role="2OqNvi">
                    <ref role="37wK5l" to="qrld:6Kcfpq7B2LV" resolve="registerSolver" />
                    <node concept="10QFUN" id="7ISVfSIYOz" role="37wK5m">
                      <node concept="3uibUv" id="7ISVfSIYO$" role="10QFUM">
                        <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
                      </node>
                      <node concept="37vLTw" id="7ISVfSIYO_" role="10QFUP">
                        <ref role="3cqZAo" node="7ISVfSIJee" resolve="symbol" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="7ISVfSIYOA" role="37wK5m">
                      <node concept="1pGfFk" id="7ISVfSIYOB" role="2ShVmc">
                        <ref role="37wK5l" node="6MYr6JwUnSg" resolve="JchrEqualsSolverImpl" />
                        <node concept="Xjq3P" id="2tcGHBEecMU" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7ISVfSIYSU" role="3cqZAp" />
            </node>
          </node>
          <node concept="3eNFk2" id="7ISVfSIJuG" role="3eNLev">
            <node concept="2OqwBi" id="7ISVfSIJGK" role="3eO9$A">
              <node concept="10M0yZ" id="7ISVfSIJCI" role="2Oq$k0">
                <ref role="1PxDUh" to="cxk7:6infEALAfer" resolve="AssertPredicate" />
                <ref role="3cqZAo" to="cxk7:5uFPQ7BZnLB" resolve="ASSERT_SYM" />
              </node>
              <node concept="liA8E" id="7ISVfSIJIa" role="2OqNvi">
                <ref role="37wK5l" to="rchb:54i3Fxd17bK" resolve="equals" />
                <node concept="37vLTw" id="7ISVfSIJJb" role="37wK5m">
                  <ref role="3cqZAo" node="7ISVfSIJee" resolve="symbol" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7ISVfSIJuI" role="3eOfB_">
              <node concept="3clFbF" id="7ISVfSIZhm" role="3cqZAp">
                <node concept="2OqwBi" id="7ISVfSIZhn" role="3clFbG">
                  <node concept="Xjq3P" id="2tcGHBEeclc" role="2Oq$k0" />
                  <node concept="liA8E" id="7ISVfSIZhp" role="2OqNvi">
                    <ref role="37wK5l" to="qrld:6Kcfpq7B2LV" resolve="registerSolver" />
                    <node concept="10QFUN" id="7ISVfSIZhq" role="37wK5m">
                      <node concept="3uibUv" id="7ISVfSIZhr" role="10QFUM">
                        <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
                      </node>
                      <node concept="37vLTw" id="7ISVfSIZhs" role="10QFUP">
                        <ref role="3cqZAo" node="7ISVfSIJee" resolve="symbol" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="7ISVfSIZht" role="37wK5m">
                      <node concept="1pGfFk" id="6MYr6Jx04tk" role="2ShVmc">
                        <ref role="37wK5l" node="6MYr6Jx03xQ" resolve="JchrAssertSolverImpl" />
                        <node concept="Xjq3P" id="6MYr6Jx04uA" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7ISVfSIZlS" role="3cqZAp" />
            </node>
          </node>
          <node concept="3eNFk2" id="7ISVfSIJJE" role="3eNLev">
            <node concept="2OqwBi" id="7ISVfSIJJF" role="3eO9$A">
              <node concept="10M0yZ" id="7ISVfSIK8M" role="2Oq$k0">
                <ref role="3cqZAo" to="cxk7:5uFPQ7C26$b" resolve="BOUND_SYM" />
                <ref role="1PxDUh" to="cxk7:5$WbtTOYoMb" resolve="LogicalPredicate" />
              </node>
              <node concept="liA8E" id="7ISVfSIJJH" role="2OqNvi">
                <ref role="37wK5l" to="rchb:54i3Fxd17bK" resolve="equals" />
                <node concept="37vLTw" id="7ISVfSIJJI" role="37wK5m">
                  <ref role="3cqZAo" node="7ISVfSIJee" resolve="symbol" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7ISVfSIJJJ" role="3eOfB_">
              <node concept="3clFbF" id="7ISVfSJ2P6" role="3cqZAp">
                <node concept="2OqwBi" id="7ISVfSJ2P7" role="3clFbG">
                  <node concept="Xjq3P" id="2tcGHBEecmS" role="2Oq$k0" />
                  <node concept="liA8E" id="7ISVfSJ2P9" role="2OqNvi">
                    <ref role="37wK5l" to="qrld:6Kcfpq7B2LV" resolve="registerSolver" />
                    <node concept="10QFUN" id="7ISVfSJ2Pa" role="37wK5m">
                      <node concept="3uibUv" id="7ISVfSJ2Pb" role="10QFUM">
                        <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
                      </node>
                      <node concept="37vLTw" id="7ISVfSJ2Pc" role="10QFUP">
                        <ref role="3cqZAo" node="7ISVfSIJee" resolve="symbol" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="7ISVfSJ2Pd" role="37wK5m">
                      <node concept="HV5vD" id="6MYr6Jx1Hls" role="2ShVmc">
                        <ref role="HV5vE" node="6MYr6Jx1DYk" resolve="JchrLogicalSolverImpl.Bound" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7ISVfSJ2Np" role="3cqZAp" />
            </node>
          </node>
          <node concept="3eNFk2" id="7ISVfSJ2Gd" role="3eNLev">
            <node concept="2OqwBi" id="7ISVfSJ2Ge" role="3eO9$A">
              <node concept="10M0yZ" id="7ISVfSJ2Gf" role="2Oq$k0">
                <ref role="3cqZAo" to="cxk7:5uFPQ7C279$" resolve="FREE_SYM" />
                <ref role="1PxDUh" to="cxk7:5$WbtTOYoMb" resolve="LogicalPredicate" />
              </node>
              <node concept="liA8E" id="7ISVfSJ2Gg" role="2OqNvi">
                <ref role="37wK5l" to="rchb:54i3Fxd17bK" resolve="equals" />
                <node concept="37vLTw" id="7ISVfSJ2Gh" role="37wK5m">
                  <ref role="3cqZAo" node="7ISVfSIJee" resolve="symbol" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7ISVfSJ2Gi" role="3eOfB_">
              <node concept="3clFbF" id="7ISVfSJ30n" role="3cqZAp">
                <node concept="2OqwBi" id="7ISVfSJ30o" role="3clFbG">
                  <node concept="Xjq3P" id="2tcGHBEecoN" role="2Oq$k0" />
                  <node concept="liA8E" id="7ISVfSJ30q" role="2OqNvi">
                    <ref role="37wK5l" to="qrld:6Kcfpq7B2LV" resolve="registerSolver" />
                    <node concept="10QFUN" id="7ISVfSJ30r" role="37wK5m">
                      <node concept="3uibUv" id="7ISVfSJ30s" role="10QFUM">
                        <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
                      </node>
                      <node concept="37vLTw" id="7ISVfSJ30t" role="10QFUP">
                        <ref role="3cqZAo" node="7ISVfSIJee" resolve="symbol" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="7ISVfSJ30u" role="37wK5m">
                      <node concept="HV5vD" id="6MYr6Jx1HAP" role="2ShVmc">
                        <ref role="HV5vE" node="6MYr6Jx1Gfw" resolve="JchrLogicalSolverImpl.Free" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7ISVfSJ2Nu" role="3cqZAp" />
            </node>
          </node>
          <node concept="3eNFk2" id="1ggxSI7qGPJ" role="3eNLev">
            <node concept="3clFbS" id="1ggxSI7qGPO" role="3eOfB_">
              <node concept="3clFbJ" id="1ggxSI7xGoB" role="3cqZAp">
                <node concept="3clFbS" id="1ggxSI7xGoD" role="3clFbx">
                  <node concept="YS8fn" id="1ggxSI7xGvh" role="3cqZAp">
                    <node concept="2ShNRf" id="1ggxSI7xGwU" role="YScLw">
                      <node concept="1pGfFk" id="1ggxSI7xGLe" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                        <node concept="Xl_RD" id="1ggxSI7xGM3" role="37wK5m">
                          <property role="Xl_RC" value="no java expression solver" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="1ggxSI7xGsE" role="3clFbw">
                  <node concept="10Nm6u" id="1ggxSI7xGtI" role="3uHU7w" />
                  <node concept="37vLTw" id="1ggxSI7xGr7" role="3uHU7B">
                    <ref role="3cqZAo" node="1ggxSI7xiwv" resolve="javaExpressionSolver" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1ggxSI7xGPS" role="3cqZAp" />
              <node concept="3clFbF" id="1ggxSI7qGPP" role="3cqZAp">
                <node concept="2OqwBi" id="1ggxSI7qGPQ" role="3clFbG">
                  <node concept="Xjq3P" id="1ggxSI7qGPR" role="2Oq$k0" />
                  <node concept="liA8E" id="1ggxSI7qGPS" role="2OqNvi">
                    <ref role="37wK5l" to="qrld:6Kcfpq7B2LV" resolve="registerSolver" />
                    <node concept="10QFUN" id="1ggxSI7qGPT" role="37wK5m">
                      <node concept="3uibUv" id="1ggxSI7qGPU" role="10QFUM">
                        <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
                      </node>
                      <node concept="37vLTw" id="1ggxSI7qGPV" role="10QFUP">
                        <ref role="3cqZAo" node="7ISVfSIJee" resolve="symbol" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="1ggxSI7qGPW" role="37wK5m">
                      <node concept="1pGfFk" id="1ggxSI7xcbQ" role="2ShVmc">
                        <ref role="37wK5l" node="1ggxSI7x65v" resolve="JchrExpressionSolverImpl" />
                        <node concept="37vLTw" id="1ggxSI7xiFg" role="37wK5m">
                          <ref role="3cqZAo" node="1ggxSI7xiwv" resolve="javaExpressionSolver" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1ggxSI7qGPY" role="3cqZAp" />
            </node>
            <node concept="2ZW3vV" id="1ggxSI7qHdm" role="3eO9$A">
              <node concept="3uibUv" id="1ggxSI7qHiX" role="2ZW6by">
                <ref role="3uigEE" to="rchb:5uFPQ7BMJeJ" resolve="JavaPredicateSymbol" />
              </node>
              <node concept="37vLTw" id="1ggxSI7qH82" role="2ZW6bz">
                <ref role="3cqZAo" node="7ISVfSIJee" resolve="symbol" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5mr7UHchgcy" role="9aQIa">
            <node concept="3clFbS" id="5mr7UHchgcz" role="9aQI4">
              <node concept="YS8fn" id="5mr7UHchgjZ" role="3cqZAp">
                <node concept="2ShNRf" id="5mr7UHchgme" role="YScLw">
                  <node concept="1pGfFk" id="5mr7UHchgDA" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="3cpWs3" id="5mr7UHchgIt" role="37wK5m">
                      <node concept="37vLTw" id="5mr7UHchgKN" role="3uHU7w">
                        <ref role="3cqZAo" node="7ISVfSIJee" resolve="symbol" />
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
        <node concept="3clFbH" id="5mr7UHcbFmH" role="3cqZAp" />
      </node>
    </node>
    <node concept="2tJIrI" id="2tcGHBEvc5Q" role="jymVt" />
    <node concept="3clFb_" id="2tcGHBEvbMG" role="jymVt">
      <property role="TrG5h" value="solverClass" />
      <node concept="37vLTG" id="2tcGHBEvbMH" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="2tcGHBEvbMI" role="1tU5fm">
          <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="3uibUv" id="2tcGHBEvcMg" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="3qUE_q" id="2tcGHBEvcY3" role="11_B2D">
          <node concept="3uibUv" id="2tcGHBEvcZz" role="3qUE_r">
            <ref role="3uigEE" to="qrld:6Kcfpq7AYBh" resolve="Queryable" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2tcGHBEvj$1" role="1B3o_S" />
      <node concept="3clFbS" id="2tcGHBEvbMN" role="3clF47">
        <node concept="3clFbH" id="2tcGHBEvbMO" role="3cqZAp" />
        <node concept="3clFbJ" id="2tcGHBEvbMP" role="3cqZAp">
          <node concept="3clFbS" id="2tcGHBEvbMQ" role="3clFbx">
            <node concept="3cpWs6" id="2tcGHBEvfUa" role="3cqZAp">
              <node concept="3VsKOn" id="2tcGHBEvgfM" role="3cqZAk">
                <ref role="3VsUkX" node="6njqcfQVO0n" resolve="JchrUnificationSolver" />
              </node>
            </node>
            <node concept="3clFbH" id="2tcGHBEvgqn" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="2tcGHBEvbN3" role="3clFbw">
            <node concept="10M0yZ" id="2tcGHBEvbN4" role="2Oq$k0">
              <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
              <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
            </node>
            <node concept="liA8E" id="2tcGHBEvbN5" role="2OqNvi">
              <ref role="37wK5l" to="rchb:54i3Fxd17bK" resolve="equals" />
              <node concept="37vLTw" id="2tcGHBEvbN6" role="37wK5m">
                <ref role="3cqZAo" node="2tcGHBEvbMH" resolve="symbol" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2tcGHBEvbN7" role="3eNLev">
            <node concept="2OqwBi" id="2tcGHBEvbN8" role="3eO9$A">
              <node concept="10M0yZ" id="2tcGHBEvbN9" role="2Oq$k0">
                <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
                <ref role="3cqZAo" to="cxk7:5uFPQ7C23RV" resolve="EQ_SYM" />
              </node>
              <node concept="liA8E" id="2tcGHBEvbNa" role="2OqNvi">
                <ref role="37wK5l" to="rchb:54i3Fxd17bK" resolve="equals" />
                <node concept="37vLTw" id="2tcGHBEvbNb" role="37wK5m">
                  <ref role="3cqZAo" node="2tcGHBEvbMH" resolve="symbol" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2tcGHBEvbNc" role="3eOfB_">
              <node concept="3cpWs6" id="2tcGHBEvgBd" role="3cqZAp">
                <node concept="3VsKOn" id="2tcGHBEvh5M" role="3cqZAk">
                  <ref role="3VsUkX" node="3HJTsBn4mEA" resolve="JchrEqualsSolver" />
                </node>
              </node>
              <node concept="3clFbH" id="2tcGHBEvbNn" role="3cqZAp" />
            </node>
          </node>
          <node concept="3eNFk2" id="2tcGHBEvbNo" role="3eNLev">
            <node concept="2OqwBi" id="2tcGHBEvbNp" role="3eO9$A">
              <node concept="10M0yZ" id="2tcGHBEvbNq" role="2Oq$k0">
                <ref role="1PxDUh" to="cxk7:6infEALAfer" resolve="AssertPredicate" />
                <ref role="3cqZAo" to="cxk7:5uFPQ7BZnLB" resolve="ASSERT_SYM" />
              </node>
              <node concept="liA8E" id="2tcGHBEvbNr" role="2OqNvi">
                <ref role="37wK5l" to="rchb:54i3Fxd17bK" resolve="equals" />
                <node concept="37vLTw" id="2tcGHBEvbNs" role="37wK5m">
                  <ref role="3cqZAo" node="2tcGHBEvbMH" resolve="symbol" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2tcGHBEvbNt" role="3eOfB_">
              <node concept="3cpWs6" id="2tcGHBEvhtS" role="3cqZAp">
                <node concept="3VsKOn" id="2tcGHBEvhLT" role="3cqZAk">
                  <ref role="3VsUkX" node="6infEALA98Q" resolve="JchrAssertSolver" />
                </node>
              </node>
              <node concept="3clFbH" id="2tcGHBEvbNB" role="3cqZAp" />
            </node>
          </node>
          <node concept="3eNFk2" id="2tcGHBEvbNC" role="3eNLev">
            <node concept="2OqwBi" id="2tcGHBEvbND" role="3eO9$A">
              <node concept="10M0yZ" id="2tcGHBEvbNE" role="2Oq$k0">
                <ref role="1PxDUh" to="cxk7:5$WbtTOYoMb" resolve="LogicalPredicate" />
                <ref role="3cqZAo" to="cxk7:5uFPQ7C26$b" resolve="BOUND_SYM" />
              </node>
              <node concept="liA8E" id="2tcGHBEvbNF" role="2OqNvi">
                <ref role="37wK5l" to="rchb:54i3Fxd17bK" resolve="equals" />
                <node concept="37vLTw" id="2tcGHBEvbNG" role="37wK5m">
                  <ref role="3cqZAo" node="2tcGHBEvbMH" resolve="symbol" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2tcGHBEvbNH" role="3eOfB_">
              <node concept="3cpWs6" id="2tcGHBEviab" role="3cqZAp">
                <node concept="3VsKOn" id="2tcGHBEviCP" role="3cqZAk">
                  <ref role="3VsUkX" node="60B5zVEZP8W" resolve="JchrLogicalSolver" />
                </node>
              </node>
              <node concept="3clFbH" id="2tcGHBEvbNR" role="3cqZAp" />
            </node>
          </node>
          <node concept="3eNFk2" id="2tcGHBEvbNS" role="3eNLev">
            <node concept="2OqwBi" id="2tcGHBEvbNT" role="3eO9$A">
              <node concept="10M0yZ" id="2tcGHBEvbNU" role="2Oq$k0">
                <ref role="1PxDUh" to="cxk7:5$WbtTOYoMb" resolve="LogicalPredicate" />
                <ref role="3cqZAo" to="cxk7:5uFPQ7C279$" resolve="FREE_SYM" />
              </node>
              <node concept="liA8E" id="2tcGHBEvbNV" role="2OqNvi">
                <ref role="37wK5l" to="rchb:54i3Fxd17bK" resolve="equals" />
                <node concept="37vLTw" id="2tcGHBEvbNW" role="37wK5m">
                  <ref role="3cqZAo" node="2tcGHBEvbMH" resolve="symbol" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2tcGHBEvbNX" role="3eOfB_">
              <node concept="3cpWs6" id="2tcGHBEviXX" role="3cqZAp">
                <node concept="3VsKOn" id="2tcGHBEviXY" role="3cqZAk">
                  <ref role="3VsUkX" node="60B5zVEZP8W" resolve="JchrLogicalSolver" />
                </node>
              </node>
              <node concept="3clFbH" id="2tcGHBEvbO7" role="3cqZAp" />
            </node>
          </node>
          <node concept="3eNFk2" id="2tcGHBEBfnQ" role="3eNLev">
            <node concept="2ZW3vV" id="1ggxSI7oiK8" role="3eO9$A">
              <node concept="3uibUv" id="1ggxSI7oiW9" role="2ZW6by">
                <ref role="3uigEE" to="rchb:5uFPQ7BMJeJ" resolve="JavaPredicateSymbol" />
              </node>
              <node concept="37vLTw" id="1ggxSI7oifj" role="2ZW6bz">
                <ref role="3cqZAo" node="2tcGHBEvbMH" resolve="symbol" />
              </node>
            </node>
            <node concept="3clFbS" id="2tcGHBEBfnS" role="3eOfB_">
              <node concept="3cpWs6" id="2tcGHBEBhbq" role="3cqZAp">
                <node concept="3VsKOn" id="1ggxSI7ojmR" role="3cqZAk">
                  <ref role="3VsUkX" node="2KSgAgVhoMB" resolve="JchrExpressionSolver" />
                </node>
              </node>
              <node concept="3clFbH" id="2tcGHBEBhHz" role="3cqZAp" />
            </node>
          </node>
          <node concept="9aQIb" id="2tcGHBEvbO8" role="9aQIa">
            <node concept="3clFbS" id="2tcGHBEvbO9" role="9aQI4">
              <node concept="YS8fn" id="2tcGHBEvbOa" role="3cqZAp">
                <node concept="2ShNRf" id="2tcGHBEvbOb" role="YScLw">
                  <node concept="1pGfFk" id="2tcGHBEvbOc" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="3cpWs3" id="2tcGHBEvbOd" role="37wK5m">
                      <node concept="37vLTw" id="2tcGHBEvbOe" role="3uHU7w">
                        <ref role="3cqZAo" node="2tcGHBEvbMH" resolve="symbol" />
                      </node>
                      <node concept="Xl_RD" id="2tcGHBEvbOf" role="3uHU7B">
                        <property role="Xl_RC" value="unknown symbol: " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2tcGHBEvbOg" role="3cqZAp" />
      </node>
      <node concept="2AHcQZ" id="2tcGHBEvbOh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5jPBdK_$TM" role="1B3o_S" />
    <node concept="2tJIrI" id="5mr7UHchpFD" role="jymVt" />
    <node concept="312cEg" id="1ggxSI7xiwv" role="jymVt">
      <property role="TrG5h" value="javaExpressionSolver" />
      <node concept="3Tm6S6" id="1ggxSI7xiww" role="1B3o_S" />
      <node concept="3uibUv" id="1ggxSI7xiwy" role="1tU5fm">
        <ref role="3uigEE" to="qrld:6Kcfpq7AYBh" resolve="Queryable" />
      </node>
    </node>
    <node concept="312cEg" id="6MYr6JwosqA" role="jymVt">
      <property role="TrG5h" value="constraintSystem" />
      <node concept="3Tm6S6" id="6MYr6JwosqB" role="1B3o_S" />
      <node concept="3uibUv" id="6MYr6JwosqD" role="1tU5fm">
        <ref role="3uigEE" to="eifs:~ConstraintSystem" resolve="ConstraintSystem" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1ggxSI7qonr">
    <property role="TrG5h" value="JchrExpressionSolverImpl" />
    <node concept="2tJIrI" id="1ggxSI7qrcd" role="jymVt" />
    <node concept="3clFbW" id="1ggxSI7x65v" role="jymVt">
      <node concept="37vLTG" id="1ggxSI7x6Ge" role="3clF46">
        <property role="TrG5h" value="solver" />
        <node concept="3uibUv" id="1ggxSI7x6Qe" role="1tU5fm">
          <ref role="3uigEE" to="qrld:6Kcfpq7AYBh" resolve="Queryable" />
        </node>
      </node>
      <node concept="3cqZAl" id="1ggxSI7x65x" role="3clF45" />
      <node concept="3Tm1VV" id="1ggxSI7x65y" role="1B3o_S" />
      <node concept="3clFbS" id="1ggxSI7x65z" role="3clF47">
        <node concept="XkiVB" id="6MYr6Jx1dHM" role="3cqZAp">
          <ref role="37wK5l" to="omn0:6MYr6Jx1c2W" resolve="ExpressionSolver" />
          <node concept="37vLTw" id="6MYr6Jx1dSf" role="37wK5m">
            <ref role="3cqZAo" node="1ggxSI7x6Ge" resolve="solver" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ggxSI7x5JF" role="jymVt" />
    <node concept="3clFb_" id="1ggxSI7qrex" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellExpression0" />
      <node concept="37vLTG" id="1ggxSI7qrey" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="1ggxSI7qrez" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1ggxSI7qre$" role="3clF45" />
      <node concept="3Tm1VV" id="1ggxSI7qre_" role="1B3o_S" />
      <node concept="2AHcQZ" id="1ggxSI7qreB" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="1ggxSI7qreC" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="Xl_RD" id="1ggxSI7qreD" role="2B70Vg">
            <property role="Xl_RC" value="expression0" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="1ggxSI7qreE" role="3clF47">
        <node concept="3clFbF" id="1ggxSI7qrKY" role="3cqZAp">
          <node concept="1rXfSq" id="1ggxSI7qrKX" role="3clFbG">
            <ref role="37wK5l" to="omn0:6MYr6Jx1bRj" resolve="tell" />
            <node concept="2ShNRf" id="1ggxSI7qsG8" role="37wK5m">
              <node concept="1pGfFk" id="1ggxSI7qt3P" role="2ShVmc">
                <ref role="37wK5l" to="rchb:5uFPQ7BMJfy" resolve="JavaPredicateSymbol" />
                <node concept="3cmrfG" id="1ggxSI7qtht" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1ggxSI7qt5L" role="37wK5m">
              <ref role="3cqZAo" node="1ggxSI7qrey" resolve="id" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ggxSI7qrxF" role="jymVt" />
    <node concept="3clFb_" id="1ggxSI7qvQV" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askExpression0" />
      <node concept="37vLTG" id="1ggxSI7qvQW" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="1ggxSI7qvQX" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="1ggxSI7qvQY" role="3clF45" />
      <node concept="3Tm1VV" id="1ggxSI7qvQZ" role="1B3o_S" />
      <node concept="2AHcQZ" id="1ggxSI7qvR1" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="1ggxSI7qvR2" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="Xl_RD" id="1ggxSI7qvR3" role="2B70Vg">
            <property role="Xl_RC" value="expression0" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="1ggxSI7qvR4" role="3clF47">
        <node concept="3clFbF" id="1ggxSI7qwkb" role="3cqZAp">
          <node concept="1rXfSq" id="1ggxSI7qwkc" role="3clFbG">
            <ref role="37wK5l" to="omn0:6MYr6Jx1bRz" resolve="ask" />
            <node concept="2ShNRf" id="1ggxSI7qwkd" role="37wK5m">
              <node concept="1pGfFk" id="1ggxSI7qwke" role="2ShVmc">
                <ref role="37wK5l" to="rchb:5uFPQ7BMJfy" resolve="JavaPredicateSymbol" />
                <node concept="3cmrfG" id="1ggxSI7qwkg" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1ggxSI7qwkf" role="37wK5m">
              <ref role="3cqZAo" node="1ggxSI7qvQW" resolve="id" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ggxSI7qw7e" role="jymVt" />
    <node concept="3clFb_" id="1ggxSI7qreR" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellExpression1" />
      <node concept="37vLTG" id="1ggxSI7qreS" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="1ggxSI7qreT" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1ggxSI7qreU" role="3clF46">
        <property role="TrG5h" value="arg1" />
        <node concept="3uibUv" id="1ggxSI7qreV" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="1ggxSI7qreW" role="3clF45" />
      <node concept="3Tm1VV" id="1ggxSI7qreX" role="1B3o_S" />
      <node concept="2AHcQZ" id="1ggxSI7qreZ" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="1ggxSI7qrf0" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="Xl_RD" id="1ggxSI7qrf1" role="2B70Vg">
            <property role="Xl_RC" value="expression1" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="1ggxSI7qrf2" role="3clF47">
        <node concept="3clFbF" id="1ggxSI7qtit" role="3cqZAp">
          <node concept="1rXfSq" id="1ggxSI7qtiu" role="3clFbG">
            <ref role="37wK5l" to="omn0:6MYr6Jx1bRj" resolve="tell" />
            <node concept="2ShNRf" id="1ggxSI7qtiv" role="37wK5m">
              <node concept="1pGfFk" id="1ggxSI7qtiw" role="2ShVmc">
                <ref role="37wK5l" to="rchb:5uFPQ7BMJfy" resolve="JavaPredicateSymbol" />
                <node concept="3cmrfG" id="1ggxSI7qtiy" role="37wK5m">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1ggxSI7qtix" role="37wK5m">
              <ref role="3cqZAo" node="1ggxSI7qreS" resolve="id" />
            </node>
            <node concept="37vLTw" id="1ggxSI7qtyb" role="37wK5m">
              <ref role="3cqZAo" node="1ggxSI7qreU" resolve="arg1" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ggxSI7qtEc" role="jymVt" />
    <node concept="3clFb_" id="1ggxSI7qrf3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askExpression1" />
      <node concept="37vLTG" id="1ggxSI7qrf4" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="1ggxSI7qrf5" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1ggxSI7qrf6" role="3clF46">
        <property role="TrG5h" value="arg1" />
        <node concept="3uibUv" id="1ggxSI7qrf7" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="1ggxSI7qrf8" role="3clF45" />
      <node concept="3Tm1VV" id="1ggxSI7qrf9" role="1B3o_S" />
      <node concept="2AHcQZ" id="1ggxSI7qrfb" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="1ggxSI7qrfc" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="Xl_RD" id="1ggxSI7qrfd" role="2B70Vg">
            <property role="Xl_RC" value="expression1" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="1ggxSI7qrfe" role="3clF47">
        <node concept="3clFbF" id="1ggxSI7qx0r" role="3cqZAp">
          <node concept="1rXfSq" id="1ggxSI7qx0s" role="3clFbG">
            <ref role="37wK5l" to="omn0:6MYr6Jx1bRz" resolve="ask" />
            <node concept="2ShNRf" id="1ggxSI7qx0t" role="37wK5m">
              <node concept="1pGfFk" id="1ggxSI7qx0u" role="2ShVmc">
                <ref role="37wK5l" to="rchb:5uFPQ7BMJfy" resolve="JavaPredicateSymbol" />
                <node concept="3cmrfG" id="1ggxSI7qx0w" role="37wK5m">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1ggxSI7qx0v" role="37wK5m">
              <ref role="3cqZAo" node="1ggxSI7qrf4" resolve="id" />
            </node>
            <node concept="37vLTw" id="1ggxSI7qx0x" role="37wK5m">
              <ref role="3cqZAo" node="1ggxSI7qrf6" resolve="arg1" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ggxSI7qxNT" role="jymVt" />
    <node concept="3clFb_" id="1ggxSI7qrfh" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellExpression2" />
      <node concept="37vLTG" id="1ggxSI7qrfi" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="1ggxSI7qrfj" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1ggxSI7qrfk" role="3clF46">
        <property role="TrG5h" value="arg1" />
        <node concept="3uibUv" id="1ggxSI7qrfl" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="1ggxSI7qrfm" role="3clF46">
        <property role="TrG5h" value="arg2" />
        <node concept="3uibUv" id="1ggxSI7qrfn" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="1ggxSI7qrfo" role="3clF45" />
      <node concept="3Tm1VV" id="1ggxSI7qrfp" role="1B3o_S" />
      <node concept="2AHcQZ" id="1ggxSI7qrfr" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="1ggxSI7qrfs" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="Xl_RD" id="1ggxSI7qrft" role="2B70Vg">
            <property role="Xl_RC" value="expression2" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="1ggxSI7qrfu" role="3clF47">
        <node concept="3clFbF" id="1ggxSI7qy4j" role="3cqZAp">
          <node concept="1rXfSq" id="1ggxSI7qy4k" role="3clFbG">
            <ref role="37wK5l" to="omn0:6MYr6Jx1bRj" resolve="tell" />
            <node concept="2ShNRf" id="1ggxSI7qy4l" role="37wK5m">
              <node concept="1pGfFk" id="1ggxSI7qy4m" role="2ShVmc">
                <ref role="37wK5l" to="rchb:5uFPQ7BMJfy" resolve="JavaPredicateSymbol" />
                <node concept="3cmrfG" id="1ggxSI7qy4o" role="37wK5m">
                  <property role="3cmrfH" value="3" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1ggxSI7qy4n" role="37wK5m">
              <ref role="3cqZAo" node="1ggxSI7qrfi" resolve="id" />
            </node>
            <node concept="37vLTw" id="1ggxSI7qykR" role="37wK5m">
              <ref role="3cqZAo" node="1ggxSI7qrfk" resolve="arg1" />
            </node>
            <node concept="37vLTw" id="1ggxSI7qyR8" role="37wK5m">
              <ref role="3cqZAo" node="1ggxSI7qrfm" resolve="arg2" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ggxSI7qynT" role="jymVt" />
    <node concept="3clFb_" id="1ggxSI7qrfv" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askExpression2" />
      <node concept="37vLTG" id="1ggxSI7qrfw" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="1ggxSI7qrfx" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1ggxSI7qrfy" role="3clF46">
        <property role="TrG5h" value="arg1" />
        <node concept="3uibUv" id="1ggxSI7qrfz" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="1ggxSI7qrf$" role="3clF46">
        <property role="TrG5h" value="arg2" />
        <node concept="3uibUv" id="1ggxSI7qrf_" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="1ggxSI7qrfA" role="3clF45" />
      <node concept="3Tm1VV" id="1ggxSI7qrfB" role="1B3o_S" />
      <node concept="2AHcQZ" id="1ggxSI7qrfD" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="1ggxSI7qrfE" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="Xl_RD" id="1ggxSI7qrfF" role="2B70Vg">
            <property role="Xl_RC" value="expression2" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="1ggxSI7qrfG" role="3clF47">
        <node concept="3clFbF" id="1ggxSI7qz18" role="3cqZAp">
          <node concept="1rXfSq" id="1ggxSI7qz19" role="3clFbG">
            <ref role="37wK5l" to="omn0:6MYr6Jx1bRz" resolve="ask" />
            <node concept="2ShNRf" id="1ggxSI7qz1a" role="37wK5m">
              <node concept="1pGfFk" id="1ggxSI7qz1b" role="2ShVmc">
                <ref role="37wK5l" to="rchb:5uFPQ7BMJfy" resolve="JavaPredicateSymbol" />
                <node concept="3cmrfG" id="1ggxSI7qz1d" role="37wK5m">
                  <property role="3cmrfH" value="3" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1ggxSI7qz1c" role="37wK5m">
              <ref role="3cqZAo" node="1ggxSI7qrfw" resolve="id" />
            </node>
            <node concept="37vLTw" id="1ggxSI7qz1e" role="37wK5m">
              <ref role="3cqZAo" node="1ggxSI7qrfy" resolve="arg1" />
            </node>
            <node concept="37vLTw" id="1ggxSI7qz1f" role="37wK5m">
              <ref role="3cqZAo" node="1ggxSI7qrf$" resolve="arg2" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ggxSI7qzJQ" role="jymVt" />
    <node concept="3clFb_" id="1ggxSI7qrfJ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellExpression3" />
      <node concept="37vLTG" id="1ggxSI7qrfK" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="1ggxSI7qrfL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1ggxSI7qrfM" role="3clF46">
        <property role="TrG5h" value="arg1" />
        <node concept="3uibUv" id="1ggxSI7qrfN" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="1ggxSI7qrfO" role="3clF46">
        <property role="TrG5h" value="arg2" />
        <node concept="3uibUv" id="1ggxSI7qrfP" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="1ggxSI7qrfQ" role="3clF46">
        <property role="TrG5h" value="arg3" />
        <node concept="3uibUv" id="1ggxSI7qrfR" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="1ggxSI7qrfS" role="3clF45" />
      <node concept="3Tm1VV" id="1ggxSI7qrfT" role="1B3o_S" />
      <node concept="2AHcQZ" id="1ggxSI7qrfV" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="1ggxSI7qrfW" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="Xl_RD" id="1ggxSI7qrfX" role="2B70Vg">
            <property role="Xl_RC" value="expression3" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="1ggxSI7qrfY" role="3clF47">
        <node concept="3clFbF" id="1ggxSI7q$4S" role="3cqZAp">
          <node concept="1rXfSq" id="1ggxSI7q$4T" role="3clFbG">
            <ref role="37wK5l" to="omn0:6MYr6Jx1bRj" resolve="tell" />
            <node concept="2ShNRf" id="1ggxSI7q$4U" role="37wK5m">
              <node concept="1pGfFk" id="1ggxSI7q$4V" role="2ShVmc">
                <ref role="37wK5l" to="rchb:5uFPQ7BMJfy" resolve="JavaPredicateSymbol" />
                <node concept="3cmrfG" id="1ggxSI7q$4X" role="37wK5m">
                  <property role="3cmrfH" value="4" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1ggxSI7q$4W" role="37wK5m">
              <ref role="3cqZAo" node="1ggxSI7qrfK" resolve="id" />
            </node>
            <node concept="37vLTw" id="1ggxSI7q$4Y" role="37wK5m">
              <ref role="3cqZAo" node="1ggxSI7qrfM" resolve="arg1" />
            </node>
            <node concept="37vLTw" id="1ggxSI7q$4Z" role="37wK5m">
              <ref role="3cqZAo" node="1ggxSI7qrfO" resolve="arg2" />
            </node>
            <node concept="37vLTw" id="1ggxSI7q$R6" role="37wK5m">
              <ref role="3cqZAo" node="1ggxSI7qrfQ" resolve="arg3" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ggxSI7q_4s" role="jymVt" />
    <node concept="3clFb_" id="1ggxSI7qrfZ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askExpression3" />
      <node concept="37vLTG" id="1ggxSI7qrg0" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="1ggxSI7qrg1" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1ggxSI7qrg2" role="3clF46">
        <property role="TrG5h" value="arg1" />
        <node concept="3uibUv" id="1ggxSI7qrg3" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="1ggxSI7qrg4" role="3clF46">
        <property role="TrG5h" value="arg2" />
        <node concept="3uibUv" id="1ggxSI7qrg5" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="1ggxSI7qrg6" role="3clF46">
        <property role="TrG5h" value="arg3" />
        <node concept="3uibUv" id="1ggxSI7qrg7" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="1ggxSI7qrg8" role="3clF45" />
      <node concept="3Tm1VV" id="1ggxSI7qrg9" role="1B3o_S" />
      <node concept="2AHcQZ" id="1ggxSI7qrgb" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="1ggxSI7qrgc" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="Xl_RD" id="1ggxSI7qrgd" role="2B70Vg">
            <property role="Xl_RC" value="expression3" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="1ggxSI7qrge" role="3clF47">
        <node concept="3clFbF" id="1ggxSI7q_qg" role="3cqZAp">
          <node concept="1rXfSq" id="1ggxSI7q_qh" role="3clFbG">
            <ref role="37wK5l" to="omn0:6MYr6Jx1bRz" resolve="ask" />
            <node concept="2ShNRf" id="1ggxSI7q_qi" role="37wK5m">
              <node concept="1pGfFk" id="1ggxSI7q_qj" role="2ShVmc">
                <ref role="37wK5l" to="rchb:5uFPQ7BMJfy" resolve="JavaPredicateSymbol" />
                <node concept="3cmrfG" id="1ggxSI7q_ql" role="37wK5m">
                  <property role="3cmrfH" value="4" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1ggxSI7q_qk" role="37wK5m">
              <ref role="3cqZAo" node="1ggxSI7qrg0" resolve="id" />
            </node>
            <node concept="37vLTw" id="1ggxSI7q_qm" role="37wK5m">
              <ref role="3cqZAo" node="1ggxSI7qrg2" resolve="arg1" />
            </node>
            <node concept="37vLTw" id="1ggxSI7q_qn" role="37wK5m">
              <ref role="3cqZAo" node="1ggxSI7qrg4" resolve="arg2" />
            </node>
            <node concept="37vLTw" id="1ggxSI7q_qo" role="37wK5m">
              <ref role="3cqZAo" node="1ggxSI7qrg6" resolve="arg3" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6Jx1ezI" role="jymVt" />
    <node concept="3Tm1VV" id="1ggxSI7qons" role="1B3o_S" />
    <node concept="3uibUv" id="1ggxSI7qrbV" role="EKbjA">
      <ref role="3uigEE" node="2KSgAgVhoMB" resolve="JchrExpressionSolver" />
    </node>
    <node concept="3uibUv" id="6MYr6Jx1daE" role="1zkMxy">
      <ref role="3uigEE" to="omn0:6MYr6Jx1bvI" resolve="ExpressionSolver" />
    </node>
  </node>
  <node concept="3HP615" id="2KSgAgVhoMB">
    <property role="TrG5h" value="JchrExpressionSolver" />
    <node concept="2tJIrI" id="2KSgAgVhoTu" role="jymVt" />
    <node concept="3clFb_" id="2KSgAgVhoX4" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellExpression0" />
      <node concept="37vLTG" id="2KSgAgVhoX5" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="2KSgAgVhp4X" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="2KSgAgVhoX7" role="3clF45" />
      <node concept="3Tm1VV" id="2KSgAgVhoX8" role="1B3o_S" />
      <node concept="3clFbS" id="2KSgAgVhoX9" role="3clF47" />
      <node concept="2AHcQZ" id="2KSgAgVhoXa" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="2KSgAgVhoXb" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="Xl_RD" id="2KSgAgVhp62" role="2B70Vg">
            <property role="Xl_RC" value="expression0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2KSgAgVhp2H" role="jymVt" />
    <node concept="3clFb_" id="2KSgAgVhp1_" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askExpression0" />
      <node concept="37vLTG" id="2KSgAgVhp93" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="2KSgAgVhp9C" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="2KSgAgVhp1C" role="3clF45" />
      <node concept="3Tm1VV" id="2KSgAgVhp1D" role="1B3o_S" />
      <node concept="3clFbS" id="2KSgAgVhp1E" role="3clF47" />
      <node concept="2AHcQZ" id="2KSgAgVhp1F" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="2KSgAgVhp1G" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="Xl_RD" id="2KSgAgVhp7H" role="2B70Vg">
            <property role="Xl_RC" value="expression0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ggxSI7lTHZ" role="jymVt" />
    <node concept="3clFb_" id="1ggxSI7lTHN" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellExpression1" />
      <node concept="37vLTG" id="1ggxSI7lTHO" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="1ggxSI7lTHP" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1ggxSI7lTHQ" role="3clF46">
        <property role="TrG5h" value="arg1" />
        <node concept="3uibUv" id="1ggxSI7lTHS" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="1ggxSI7lTHT" role="3clF45" />
      <node concept="3Tm1VV" id="1ggxSI7lTHU" role="1B3o_S" />
      <node concept="3clFbS" id="1ggxSI7lTHV" role="3clF47" />
      <node concept="2AHcQZ" id="1ggxSI7lTHW" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="1ggxSI7lTHX" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="Xl_RD" id="1ggxSI7lTHY" role="2B70Vg">
            <property role="Xl_RC" value="expression1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ggxSI7lTHM" role="jymVt" />
    <node concept="3clFb_" id="1ggxSI7lTHA" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askExpression1" />
      <node concept="37vLTG" id="1ggxSI7lTHB" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="1ggxSI7lTHC" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1ggxSI7lTHD" role="3clF46">
        <property role="TrG5h" value="arg1" />
        <node concept="3uibUv" id="1ggxSI7lTHF" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="1ggxSI7lTHG" role="3clF45" />
      <node concept="3Tm1VV" id="1ggxSI7lTHH" role="1B3o_S" />
      <node concept="3clFbS" id="1ggxSI7lTHI" role="3clF47" />
      <node concept="2AHcQZ" id="1ggxSI7lTHJ" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="1ggxSI7lTHK" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="Xl_RD" id="1ggxSI7lTHL" role="2B70Vg">
            <property role="Xl_RC" value="expression1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ggxSI7lUER" role="jymVt" />
    <node concept="3clFb_" id="1ggxSI7lUEG" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellExpression2" />
      <node concept="37vLTG" id="1ggxSI7lUEH" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="1ggxSI7lUEI" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1ggxSI7lUEJ" role="3clF46">
        <property role="TrG5h" value="arg1" />
        <node concept="3uibUv" id="1ggxSI7lUEK" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="1ggxSI7lULW" role="3clF46">
        <property role="TrG5h" value="arg2" />
        <node concept="3uibUv" id="1ggxSI7lULX" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="1ggxSI7lUEL" role="3clF45" />
      <node concept="3Tm1VV" id="1ggxSI7lUEM" role="1B3o_S" />
      <node concept="3clFbS" id="1ggxSI7lUEN" role="3clF47" />
      <node concept="2AHcQZ" id="1ggxSI7lUEO" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="1ggxSI7lUEP" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="Xl_RD" id="1ggxSI7lUEQ" role="2B70Vg">
            <property role="Xl_RC" value="expression2" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ggxSI7lUEF" role="jymVt" />
    <node concept="3clFb_" id="1ggxSI7lUEw" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askExpression2" />
      <node concept="37vLTG" id="1ggxSI7lUEx" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="1ggxSI7lUEy" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1ggxSI7lUEz" role="3clF46">
        <property role="TrG5h" value="arg1" />
        <node concept="3uibUv" id="1ggxSI7lUE$" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="1ggxSI7lUOw" role="3clF46">
        <property role="TrG5h" value="arg2" />
        <node concept="3uibUv" id="1ggxSI7lUOx" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="1ggxSI7lUE_" role="3clF45" />
      <node concept="3Tm1VV" id="1ggxSI7lUEA" role="1B3o_S" />
      <node concept="3clFbS" id="1ggxSI7lUEB" role="3clF47" />
      <node concept="2AHcQZ" id="1ggxSI7lUEC" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="1ggxSI7lUED" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="Xl_RD" id="1ggxSI7lUEE" role="2B70Vg">
            <property role="Xl_RC" value="expression2" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2KSgAgVhoTx" role="jymVt" />
    <node concept="3clFb_" id="1ggxSI7lUR7" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellExpression3" />
      <node concept="37vLTG" id="1ggxSI7lUR8" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="1ggxSI7lUR9" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1ggxSI7lURa" role="3clF46">
        <property role="TrG5h" value="arg1" />
        <node concept="3uibUv" id="1ggxSI7lURb" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="1ggxSI7lURc" role="3clF46">
        <property role="TrG5h" value="arg2" />
        <node concept="3uibUv" id="1ggxSI7lURd" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="1ggxSI7lUYs" role="3clF46">
        <property role="TrG5h" value="arg3" />
        <node concept="3uibUv" id="1ggxSI7lUYt" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="1ggxSI7lURe" role="3clF45" />
      <node concept="3Tm1VV" id="1ggxSI7lURf" role="1B3o_S" />
      <node concept="3clFbS" id="1ggxSI7lURg" role="3clF47" />
      <node concept="2AHcQZ" id="1ggxSI7lURh" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="1ggxSI7lURi" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="Xl_RD" id="1ggxSI7lURj" role="2B70Vg">
            <property role="Xl_RC" value="expression3" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ggxSI7lUR6" role="jymVt" />
    <node concept="3clFb_" id="1ggxSI7lUQT" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askExpression3" />
      <node concept="37vLTG" id="1ggxSI7lUQU" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="1ggxSI7lUQV" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1ggxSI7lUQW" role="3clF46">
        <property role="TrG5h" value="arg1" />
        <node concept="3uibUv" id="1ggxSI7lUQX" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="1ggxSI7lUQY" role="3clF46">
        <property role="TrG5h" value="arg2" />
        <node concept="3uibUv" id="1ggxSI7lUQZ" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="1ggxSI7lV3X" role="3clF46">
        <property role="TrG5h" value="arg3" />
        <node concept="3uibUv" id="1ggxSI7lV3Y" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="1ggxSI7lUR0" role="3clF45" />
      <node concept="3Tm1VV" id="1ggxSI7lUR1" role="1B3o_S" />
      <node concept="3clFbS" id="1ggxSI7lUR2" role="3clF47" />
      <node concept="2AHcQZ" id="1ggxSI7lUR3" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="1ggxSI7lUR4" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="Xl_RD" id="1ggxSI7lUR5" role="2B70Vg">
            <property role="Xl_RC" value="expression3" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ggxSI7lUQS" role="jymVt" />
    <node concept="3Tm1VV" id="2KSgAgVhoMC" role="1B3o_S" />
    <node concept="2AHcQZ" id="2KSgAgVhoNZ" role="2AJF6D">
      <ref role="2AI5Lk" to="f8dg:~JCHR_Constraints" resolve="JCHR_Constraints" />
      <node concept="2B6LJw" id="2KSgAgVhoO0" role="2B76xF">
        <ref role="2B6OnR" to="f8dg:~JCHR_Constraints.value()" resolve="value" />
        <node concept="2BsdOp" id="2KSgAgVhoO1" role="2B70Vg">
          <node concept="2AHcQZ" id="2KSgAgVhoO2" role="2BsfMF">
            <ref role="2AI5Lk" to="f8dg:~JCHR_Constraint" resolve="JCHR_Constraint" />
            <node concept="2B6LJw" id="2KSgAgVhoO3" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.identifier()" resolve="identifier" />
              <node concept="Xl_RD" id="2KSgAgVhoSv" role="2B70Vg">
                <property role="Xl_RC" value="expression0" />
              </node>
            </node>
            <node concept="2B6LJw" id="2KSgAgVhoO5" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.arity()" resolve="arity" />
              <node concept="3cmrfG" id="2KSgAgVhoO6" role="2B70Vg">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="1ggxSI7kZrp" role="2BsfMF">
            <ref role="2AI5Lk" to="f8dg:~JCHR_Constraint" resolve="JCHR_Constraint" />
            <node concept="2B6LJw" id="1ggxSI7kZrq" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.identifier()" resolve="identifier" />
              <node concept="Xl_RD" id="1ggxSI7kZrr" role="2B70Vg">
                <property role="Xl_RC" value="expression1" />
              </node>
            </node>
            <node concept="2B6LJw" id="1ggxSI7kZrs" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.arity()" resolve="arity" />
              <node concept="3cmrfG" id="1ggxSI7kZrt" role="2B70Vg">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="1ggxSI7kZsD" role="2BsfMF">
            <ref role="2AI5Lk" to="f8dg:~JCHR_Constraint" resolve="JCHR_Constraint" />
            <node concept="2B6LJw" id="1ggxSI7kZsE" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.identifier()" resolve="identifier" />
              <node concept="Xl_RD" id="1ggxSI7kZsF" role="2B70Vg">
                <property role="Xl_RC" value="expression2" />
              </node>
            </node>
            <node concept="2B6LJw" id="1ggxSI7kZsG" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.arity()" resolve="arity" />
              <node concept="3cmrfG" id="1ggxSI7kZsH" role="2B70Vg">
                <property role="3cmrfH" value="3" />
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="1ggxSI7kZu4" role="2BsfMF">
            <ref role="2AI5Lk" to="f8dg:~JCHR_Constraint" resolve="JCHR_Constraint" />
            <node concept="2B6LJw" id="1ggxSI7kZu5" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.identifier()" resolve="identifier" />
              <node concept="Xl_RD" id="1ggxSI7kZu6" role="2B70Vg">
                <property role="Xl_RC" value="expression3" />
              </node>
            </node>
            <node concept="2B6LJw" id="1ggxSI7kZu7" role="2B76xF">
              <ref role="2B6OnR" to="f8dg:~JCHR_Constraint.arity()" resolve="arity" />
              <node concept="3cmrfG" id="1ggxSI7kZu8" role="2B70Vg">
                <property role="3cmrfH" value="4" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="1ggxSI7ojA_" role="3HQHJm">
      <ref role="3uigEE" to="qrld:6Kcfpq7AXVG" resolve="Instructible" />
    </node>
    <node concept="3uibUv" id="1ggxSI7ojCD" role="3HQHJm">
      <ref role="3uigEE" to="qrld:6Kcfpq7AYBh" resolve="Queryable" />
    </node>
  </node>
  <node concept="312cEu" id="6MYr6JwUmKJ">
    <property role="TrG5h" value="JchrEqualsSolverImpl" />
    <node concept="2tJIrI" id="6MYr6JwUn0e" role="jymVt" />
    <node concept="3clFbW" id="6MYr6JwUnSg" role="jymVt">
      <node concept="3cqZAl" id="6MYr6JwUnSi" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwUnSj" role="1B3o_S" />
      <node concept="3clFbS" id="6MYr6JwUnSk" role="3clF47">
        <node concept="XkiVB" id="6MYr6JwUo1W" role="3cqZAp">
          <ref role="37wK5l" to="omn0:5p8T3QHE69j" resolve="EqualsSolver" />
          <node concept="37vLTw" id="6MYr6JwUo3P" role="37wK5m">
            <ref role="3cqZAo" node="6MYr6JwUnUh" resolve="sessionSolver" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6JwUnUh" role="3clF46">
        <property role="TrG5h" value="sessionSolver" />
        <node concept="3uibUv" id="6MYr6JwUnUg" role="1tU5fm">
          <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="SessionSolver" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzoRRK" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JwQTfe" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellEq" />
      <node concept="37vLTG" id="6MYr6JwQTff" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="6MYr6JwQTfg" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6JwQTfh" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="6MYr6JwQTfi" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="6MYr6JwQTfj" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwQTfk" role="1B3o_S" />
      <node concept="2AHcQZ" id="6MYr6JwQTfm" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="6MYr6JwQTfn" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="6MYr6JwQTfo" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
            <ref role="3cqZAo" to="cxk7:3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6MYr6JwQTfp" role="3clF47">
        <node concept="3clFbF" id="6MYr6JwQUYF" role="3cqZAp">
          <node concept="1rXfSq" id="6MYr6JwQUYE" role="3clFbG">
            <ref role="37wK5l" to="omn0:3HJTsBn4V_a" resolve="_tellEq_val_val" />
            <node concept="37vLTw" id="6MYr6JwQV86" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwQTff" resolve="left" />
            </node>
            <node concept="37vLTw" id="6MYr6JwQViM" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwQTfh" resolve="right" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6MYr6JwQUoq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwQVsA" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JwQTfq" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellEq" />
      <node concept="37vLTG" id="6MYr6JwQTfr" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="6MYr6JwQTfs" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6JwQTft" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="6MYr6JwRt$h" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
        </node>
      </node>
      <node concept="3cqZAl" id="6MYr6JwQTfv" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwQTfw" role="1B3o_S" />
      <node concept="2AHcQZ" id="6MYr6JwQTfy" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="6MYr6JwQTfz" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="6MYr6JwQTf$" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
            <ref role="3cqZAo" to="cxk7:3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6MYr6JwQTf_" role="3clF47">
        <node concept="3clFbF" id="6MYr6JwQXva" role="3cqZAp">
          <node concept="1rXfSq" id="6MYr6JwQXv9" role="3clFbG">
            <ref role="37wK5l" to="omn0:3HJTsBn4V_o" resolve="_tellEq_val_var" />
            <node concept="37vLTw" id="6MYr6JwQXCW" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwQTfr" resolve="left" />
            </node>
            <node concept="10QFUN" id="6MYr6JxF0Tl" role="37wK5m">
              <node concept="3uibUv" id="6MYr6JxF0Ti" role="10QFUM">
                <ref role="3uigEE" to="45ys:6MYr6JwxYwB" resolve="SolverLogical" />
                <node concept="3uibUv" id="6MYr6JxF1vb" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="37vLTw" id="6MYr6JxF0Tk" role="10QFUP">
                <ref role="3cqZAo" node="6MYr6JwQTft" resolve="right" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6MYr6JwQWaW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwQWIl" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JwQTfA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellEq" />
      <node concept="37vLTG" id="6MYr6JwQTfB" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="6MYr6JwRutW" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6JwQTfD" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="6MYr6JwQTfE" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="6MYr6JwQTfF" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwQTfG" role="1B3o_S" />
      <node concept="2AHcQZ" id="6MYr6JwQTfI" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="6MYr6JwQTfJ" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="6MYr6JwQTfK" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
            <ref role="3cqZAo" to="cxk7:3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6MYr6JwQTfL" role="3clF47">
        <node concept="3clFbF" id="6MYr6JwQZlN" role="3cqZAp">
          <node concept="1rXfSq" id="6MYr6JwQZlM" role="3clFbG">
            <ref role="37wK5l" to="omn0:3HJTsBn4V_B" resolve="_tellEq_var_val" />
            <node concept="10QFUN" id="6MYr6JxF49e" role="37wK5m">
              <node concept="3uibUv" id="6MYr6JxF49b" role="10QFUM">
                <ref role="3uigEE" to="45ys:6MYr6JwxYwB" resolve="SolverLogical" />
                <node concept="3uibUv" id="6MYr6JxF4rn" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="37vLTw" id="6MYr6JxF49d" role="10QFUP">
                <ref role="3cqZAo" node="6MYr6JwQTfB" resolve="left" />
              </node>
            </node>
            <node concept="37vLTw" id="6MYr6JwQZz_" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwQTfD" resolve="right" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6MYr6JwQXZJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwQYzZ" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JwQTfM" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellEq" />
      <node concept="37vLTG" id="6MYr6JwQTfN" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="6MYr6JwRvmO" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6JwQTfP" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="6MYr6JwRwg$" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
        </node>
      </node>
      <node concept="3cqZAl" id="6MYr6JwQTfR" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwQTfS" role="1B3o_S" />
      <node concept="2AHcQZ" id="6MYr6JwQTfU" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="6MYr6JwQTfV" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="6MYr6JwQTfW" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
            <ref role="3cqZAo" to="cxk7:3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6MYr6JwQTfX" role="3clF47">
        <node concept="3clFbF" id="6MYr6JwR17q" role="3cqZAp">
          <node concept="1rXfSq" id="6MYr6JwR17p" role="3clFbG">
            <ref role="37wK5l" to="omn0:3HJTsBn4V_Q" resolve="_tellEq_var_var" />
            <node concept="10QFUN" id="6MYr6JxCnib" role="37wK5m">
              <node concept="3uibUv" id="6MYr6JxCni8" role="10QFUM">
                <ref role="3uigEE" to="45ys:6MYr6JwxYwB" resolve="SolverLogical" />
                <node concept="3uibUv" id="6MYr6JxF7jo" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="37vLTw" id="6MYr6JxCnia" role="10QFUP">
                <ref role="3cqZAo" node="6MYr6JwQTfN" resolve="left" />
              </node>
            </node>
            <node concept="10QFUN" id="6MYr6JxCnZ0" role="37wK5m">
              <node concept="3uibUv" id="6MYr6JxCnYX" role="10QFUM">
                <ref role="3uigEE" to="45ys:6MYr6JwxYwB" resolve="SolverLogical" />
                <node concept="3uibUv" id="6MYr6JxF7H0" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="37vLTw" id="6MYr6JxCnYZ" role="10QFUP">
                <ref role="3cqZAo" node="6MYr6JwQTfP" resolve="right" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6MYr6JwQZKG" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwUo43" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JwR2tW" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askEq" />
      <node concept="37vLTG" id="6MYr6JwR2tX" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="6MYr6JwR2tY" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6JwR2tZ" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="6MYr6JwR2u0" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="6MYr6JwR2u1" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwR2u2" role="1B3o_S" />
      <node concept="2AHcQZ" id="6MYr6JwR2u4" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="6MYr6JwR2u5" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="6MYr6JwR2u6" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
            <ref role="3cqZAo" to="cxk7:3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6MYr6JwR2u7" role="3clF47">
        <node concept="3clFbF" id="6MYr6JwR4zG" role="3cqZAp">
          <node concept="1rXfSq" id="6MYr6JwR4zF" role="3clFbG">
            <ref role="37wK5l" to="omn0:3HJTsBn4VA6" resolve="_askEq_val_val" />
            <node concept="37vLTw" id="6MYr6JwR4_8" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwR2tX" resolve="left" />
            </node>
            <node concept="37vLTw" id="6MYr6JwR4Pq" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwR2tZ" resolve="right" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6MYr6JwR3Ol" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwR54E" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JwR2ua" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askEq" />
      <node concept="37vLTG" id="6MYr6JwR2ub" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="6MYr6JwR2uc" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6JwR2ud" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="6MYr6JwRxaR" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
        </node>
      </node>
      <node concept="10P_77" id="6MYr6JwR2uf" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwR2ug" role="1B3o_S" />
      <node concept="2AHcQZ" id="6MYr6JwR2ui" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="6MYr6JwR2uj" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="6MYr6JwR2uk" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
            <ref role="3cqZAo" to="cxk7:3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6MYr6JwR2ul" role="3clF47">
        <node concept="3clFbF" id="6MYr6JwR6H1" role="3cqZAp">
          <node concept="1rXfSq" id="6MYr6JwR6H0" role="3clFbG">
            <ref role="37wK5l" to="omn0:3HJTsBn4VAm" resolve="_askEq_val_var" />
            <node concept="37vLTw" id="6MYr6JwR6It" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwR2ub" resolve="left" />
            </node>
            <node concept="10QFUN" id="6MYr6JxF8Gw" role="37wK5m">
              <node concept="3uibUv" id="6MYr6JxF8Gt" role="10QFUM">
                <ref role="3uigEE" to="45ys:6MYr6JwxYwB" resolve="SolverLogical" />
                <node concept="3uibUv" id="6MYr6JxF8Xf" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="37vLTw" id="6MYr6JxF8Gv" role="10QFUP">
                <ref role="3cqZAo" node="6MYr6JwR2ud" resolve="right" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6MYr6JwR5Xn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwR7vx" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JwR2uo" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askEq" />
      <node concept="37vLTG" id="6MYr6JwR2up" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="6MYr6JwRxR7" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6JwR2ur" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="6MYr6JwR2us" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="6MYr6JwR2ut" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwR2uu" role="1B3o_S" />
      <node concept="2AHcQZ" id="6MYr6JwR2uw" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="6MYr6JwR2ux" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="6MYr6JwR2uy" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
            <ref role="3cqZAo" to="cxk7:3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6MYr6JwR2uz" role="3clF47">
        <node concept="3clFbF" id="6MYr6JwRat4" role="3cqZAp">
          <node concept="1rXfSq" id="6MYr6JwRat3" role="3clFbG">
            <ref role="37wK5l" to="omn0:3HJTsBn4VAB" resolve="_askEq_var_val" />
            <node concept="10QFUN" id="6MYr6JxFaCU" role="37wK5m">
              <node concept="3uibUv" id="6MYr6JxFaCR" role="10QFUM">
                <ref role="3uigEE" to="45ys:6MYr6JwxYwB" resolve="SolverLogical" />
                <node concept="3uibUv" id="6MYr6JxFaVd" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="37vLTw" id="6MYr6JxFaCT" role="10QFUP">
                <ref role="3cqZAo" node="6MYr6JwR2up" resolve="left" />
              </node>
            </node>
            <node concept="37vLTw" id="6MYr6JwRaYq" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwR2ur" resolve="right" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6MYr6JwR8p7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwR9xl" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JwR2uA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askEq" />
      <node concept="37vLTG" id="6MYr6JwR2uB" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="6MYr6JwRyyT" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6JwR2uD" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="6MYr6JwRzfz" role="1tU5fm">
          <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
        </node>
      </node>
      <node concept="10P_77" id="6MYr6JwR2uF" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwR2uG" role="1B3o_S" />
      <node concept="2AHcQZ" id="6MYr6JwR2uI" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="6MYr6JwR2uJ" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="6MYr6JwR2uK" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
            <ref role="3cqZAo" to="cxk7:3HJTsBn4kQi" resolve="EQ" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6MYr6JwR2uL" role="3clF47">
        <node concept="3clFbF" id="6MYr6JwRc1n" role="3cqZAp">
          <node concept="1rXfSq" id="6MYr6JwRc1m" role="3clFbG">
            <ref role="37wK5l" to="omn0:3HJTsBn4VAS" resolve="_askEq_var_var" />
            <node concept="10QFUN" id="6MYr6JxCoP8" role="37wK5m">
              <node concept="3uibUv" id="6MYr6JxCoP5" role="10QFUM">
                <ref role="3uigEE" to="45ys:6MYr6JwxYwB" resolve="SolverLogical" />
                <node concept="3uibUv" id="6MYr6JxFcZK" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="37vLTw" id="6MYr6JxCoP7" role="10QFUP">
                <ref role="3cqZAo" node="6MYr6JwR2uB" resolve="left" />
              </node>
            </node>
            <node concept="10QFUN" id="6MYr6JxCpyA" role="37wK5m">
              <node concept="3uibUv" id="6MYr6JxCpyz" role="10QFUM">
                <ref role="3uigEE" to="45ys:6MYr6JwxYwB" resolve="SolverLogical" />
                <node concept="3uibUv" id="6MYr6JxFdpM" role="11_B2D">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="37vLTw" id="6MYr6JxCpy_" role="10QFUP">
                <ref role="3cqZAo" node="6MYr6JwR2uD" resolve="right" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6MYr6JwRbgX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwR1If" role="jymVt" />
    <node concept="2tJIrI" id="6MYr6JwUo4f" role="jymVt" />
    <node concept="2tJIrI" id="6MYr6JwUn0g" role="jymVt" />
    <node concept="3Tm1VV" id="6MYr6JwUmKK" role="1B3o_S" />
    <node concept="3uibUv" id="6MYr6JwUmUq" role="1zkMxy">
      <ref role="3uigEE" to="omn0:3HJTsBn4ogZ" resolve="EqualsSolver" />
    </node>
    <node concept="3uibUv" id="6MYr6JwUzEL" role="EKbjA">
      <ref role="3uigEE" node="3HJTsBn4mEA" resolve="JchrEqualsSolver" />
    </node>
  </node>
  <node concept="312cEu" id="6MYr6JwULDK">
    <property role="TrG5h" value="JchrUnificationSolverImpl" />
    <node concept="2tJIrI" id="6MYr6JwULQo" role="jymVt" />
    <node concept="3clFbW" id="6MYr6JwUN9q" role="jymVt">
      <node concept="37vLTG" id="6MYr6JwUNaP" role="3clF46">
        <property role="TrG5h" value="sessionSolver" />
        <node concept="3uibUv" id="6MYr6JwUNg6" role="1tU5fm">
          <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="SessionSolver" />
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6JwUNln" role="3clF46">
        <property role="TrG5h" value="trace" />
        <node concept="3uibUv" id="6MYr6JwUNqE" role="1tU5fm">
          <ref role="3uigEE" to="qrld:24Vro6cQnrj" resolve="EvaluationTrace" />
        </node>
      </node>
      <node concept="3cqZAl" id="6MYr6JwUN9s" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwUN9t" role="1B3o_S" />
      <node concept="3clFbS" id="6MYr6JwUN9u" role="3clF47">
        <node concept="XkiVB" id="6MYr6JwUNyc" role="3cqZAp">
          <ref role="37wK5l" to="omn0:5p8T3QHGKJ7" resolve="UnificationSolver" />
          <node concept="2ShNRf" id="6MYr6JwBJ5i" role="37wK5m">
            <node concept="HV5vD" id="3FIATxbQj1_" role="2ShVmc">
              <ref role="HV5vE" node="3FIATxbQg8C" resolve="JchrLogicalUnification" />
            </node>
          </node>
          <node concept="37vLTw" id="6MYr6JwUNLn" role="37wK5m">
            <ref role="3cqZAo" node="6MYr6JwUNaP" resolve="sessionSolver" />
          </node>
          <node concept="37vLTw" id="6MYr6JwUNMD" role="37wK5m">
            <ref role="3cqZAo" node="6MYr6JwUNln" resolve="trace" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwUUtb" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JwItZK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellUni" />
      <node concept="37vLTG" id="6MYr6JwItZL" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="6MYr6JwItZM" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6JwItZN" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="6MYr6JwItZO" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3cqZAl" id="6MYr6JwItZP" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwItZQ" role="1B3o_S" />
      <node concept="2AHcQZ" id="6MYr6JwItZS" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="6MYr6JwItZT" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="6MYr6JwItZU" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
            <ref role="3cqZAo" to="cxk7:2GO7tyJVob2" resolve="UNI" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6MYr6JwItZV" role="3clF47">
        <node concept="3clFbF" id="6MYr6JwIztO" role="3cqZAp">
          <node concept="1rXfSq" id="6MYr6JwIztN" role="3clFbG">
            <ref role="37wK5l" to="omn0:6GYQG_SpvAG" resolve="_tellUni" />
            <node concept="37vLTw" id="6MYr6JwIzH0" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwItZL" resolve="left" />
            </node>
            <node concept="37vLTw" id="6MYr6JwIzYd" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwItZN" resolve="right" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6MYr6JwIw1P" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwIxxp" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JwItZW" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellUni" />
      <node concept="37vLTG" id="6MYr6JwItZX" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="6MYr6JwItZY" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6JwItZZ" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="6MYr6JwIu00" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="3cqZAl" id="6MYr6JwIu01" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwIu02" role="1B3o_S" />
      <node concept="2AHcQZ" id="6MYr6JwIu04" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="6MYr6JwIu05" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="6MYr6JwIu06" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
            <ref role="3cqZAo" to="cxk7:2GO7tyJVob2" resolve="UNI" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6MYr6JwIu07" role="3clF47">
        <node concept="3clFbF" id="6MYr6JwI_zk" role="3cqZAp">
          <node concept="1rXfSq" id="6MYr6JwI_zj" role="3clFbG">
            <ref role="37wK5l" to="omn0:4U_yxogBZsK" resolve="_tellUni" />
            <node concept="37vLTw" id="6MYr6JwI_Nn" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwItZX" resolve="left" />
            </node>
            <node concept="37vLTw" id="6MYr6JwIA4S" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwItZZ" resolve="right" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6MYr6JwI$f5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwIAJY" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JwIu08" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellUni" />
      <node concept="37vLTG" id="6MYr6JwIu09" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="6MYr6JwIu0a" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6JwIu0b" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="6MYr6JwIu0c" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="3cqZAl" id="6MYr6JwIu0d" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwIu0e" role="1B3o_S" />
      <node concept="2AHcQZ" id="6MYr6JwIu0g" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="6MYr6JwIu0h" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="6MYr6JwIu0i" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
            <ref role="3cqZAo" to="cxk7:2GO7tyJVob2" resolve="UNI" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6MYr6JwIu0j" role="3clF47">
        <node concept="3clFbF" id="6MYr6JwIE7S" role="3cqZAp">
          <node concept="1rXfSq" id="6MYr6JwIE7R" role="3clFbG">
            <ref role="37wK5l" to="omn0:4U_yxogBZLB" resolve="_tellUni" />
            <node concept="37vLTw" id="6MYr6JwIEnl" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwIu09" resolve="left" />
            </node>
            <node concept="37vLTw" id="6MYr6JwIEvR" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwIu0b" resolve="right" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6MYr6JwICJc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwIFkj" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JwIu0k" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellUni" />
      <node concept="37vLTG" id="6MYr6JwIu0l" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="6MYr6JwIu0m" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6JwIu0n" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="6MYr6JwIu0o" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="3cqZAl" id="6MYr6JwIu0p" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwIu0q" role="1B3o_S" />
      <node concept="2AHcQZ" id="6MYr6JwIu0s" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="6MYr6JwIu0t" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="6MYr6JwIu0u" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
            <ref role="3cqZAo" to="cxk7:2GO7tyJVob2" resolve="UNI" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6MYr6JwIu0v" role="3clF47">
        <node concept="3clFbF" id="6MYr6JwIHnL" role="3cqZAp">
          <node concept="1rXfSq" id="6MYr6JwIHnK" role="3clFbG">
            <ref role="37wK5l" to="omn0:4U_yxogC05I" resolve="_tellUni" />
            <node concept="37vLTw" id="6MYr6JwIHBO" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwIu0l" resolve="left" />
            </node>
            <node concept="37vLTw" id="6MYr6JwIHJF" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwIu0n" resolve="right" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6MYr6JwIIcf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwUNMY" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JwUNOc" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askUni" />
      <node concept="37vLTG" id="6MYr6JwUNOd" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="6MYr6JwUNOe" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6JwUNOf" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="6MYr6JwUNOg" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="10P_77" id="6MYr6JwUNOh" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwUNOi" role="1B3o_S" />
      <node concept="2AHcQZ" id="6MYr6JwUNOj" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="6MYr6JwUNOk" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="6MYr6JwUNOl" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
            <ref role="3cqZAo" to="cxk7:2GO7tyJVob2" resolve="UNI" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6MYr6JwUNOm" role="3clF47">
        <node concept="3clFbF" id="6MYr6JwUNOn" role="3cqZAp">
          <node concept="1rXfSq" id="6MYr6JwUNOo" role="3clFbG">
            <ref role="37wK5l" to="omn0:6GYQG_SpvAS" resolve="_askUni" />
            <node concept="37vLTw" id="6MYr6JwUNOp" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwUNOd" resolve="left" />
            </node>
            <node concept="37vLTw" id="6MYr6JwUNOq" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwUNOf" resolve="right" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6MYr6JwUNOr" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwUNOA" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JwUNOB" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askUni" />
      <node concept="37vLTG" id="6MYr6JwUNOC" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="6MYr6JwUNOD" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6JwUNOE" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="6MYr6JwUNOF" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="10P_77" id="6MYr6JwUNOG" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwUNOH" role="1B3o_S" />
      <node concept="2AHcQZ" id="6MYr6JwUNOI" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="6MYr6JwUNOJ" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="6MYr6JwUNOK" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
            <ref role="3cqZAo" to="cxk7:2GO7tyJVob2" resolve="UNI" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6MYr6JwUNOL" role="3clF47">
        <node concept="3clFbF" id="6MYr6JwUNOM" role="3cqZAp">
          <node concept="1rXfSq" id="6MYr6JwUNON" role="3clFbG">
            <ref role="37wK5l" to="omn0:4U_yxogC1eF" resolve="_askUni" />
            <node concept="37vLTw" id="6MYr6JwUNOO" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwUNOC" resolve="left" />
            </node>
            <node concept="37vLTw" id="6MYr6JwUNOP" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwUNOE" resolve="right" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6MYr6JwUNOQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwUNP1" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JwUNP2" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askUni" />
      <node concept="37vLTG" id="6MYr6JwUNP3" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="6MYr6JwUNP4" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6JwUNP5" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="6MYr6JwUNP6" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
        </node>
      </node>
      <node concept="10P_77" id="6MYr6JwUNP7" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwUNP8" role="1B3o_S" />
      <node concept="2AHcQZ" id="6MYr6JwUNP9" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="6MYr6JwUNPa" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="6MYr6JwUNPb" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
            <ref role="3cqZAo" to="cxk7:2GO7tyJVob2" resolve="UNI" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6MYr6JwUNPc" role="3clF47">
        <node concept="3clFbF" id="6MYr6JwUNPd" role="3cqZAp">
          <node concept="1rXfSq" id="6MYr6JwUNPe" role="3clFbG">
            <ref role="37wK5l" to="omn0:4U_yxogC1Eh" resolve="_askUni" />
            <node concept="37vLTw" id="6MYr6JwUNPf" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwUNP3" resolve="left" />
            </node>
            <node concept="37vLTw" id="6MYr6JwUNPg" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwUNP5" resolve="right" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6MYr6JwUNPh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwUNPs" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JwUNPt" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askUni" />
      <node concept="37vLTG" id="6MYr6JwUNPu" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="6MYr6JwUNPv" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6JwUNPw" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="6MYr6JwUNPx" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
        </node>
      </node>
      <node concept="10P_77" id="6MYr6JwUNPy" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwUNPz" role="1B3o_S" />
      <node concept="2AHcQZ" id="6MYr6JwUNP$" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="6MYr6JwUNP_" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="6MYr6JwUNPA" role="2B70Vg">
            <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
            <ref role="3cqZAo" to="cxk7:2GO7tyJVob2" resolve="UNI" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6MYr6JwUNPB" role="3clF47">
        <node concept="3clFbF" id="6MYr6JwUNPC" role="3cqZAp">
          <node concept="1rXfSq" id="6MYr6JwUNPD" role="3clFbG">
            <ref role="37wK5l" to="omn0:4U_yxogC2zx" resolve="_askUni" />
            <node concept="37vLTw" id="6MYr6JwUNPE" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwUNPu" resolve="left" />
            </node>
            <node concept="37vLTw" id="6MYr6JwUNPF" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwUNPw" resolve="right" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6MYr6JwUNPG" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwUNN$" role="jymVt" />
    <node concept="3Tm1VV" id="6MYr6JwULDL" role="1B3o_S" />
    <node concept="3uibUv" id="6MYr6JwULLC" role="1zkMxy">
      <ref role="3uigEE" to="omn0:6GYQG_Spvw5" resolve="UnificationSolver" />
    </node>
    <node concept="3uibUv" id="6MYr6JwVl9g" role="EKbjA">
      <ref role="3uigEE" node="6njqcfQVO0n" resolve="JchrUnificationSolver" />
    </node>
  </node>
  <node concept="312cEu" id="6MYr6JwZVJI">
    <property role="TrG5h" value="JchrAssertSolverImpl" />
    <node concept="2tJIrI" id="6MYr6JwZVTr" role="jymVt" />
    <node concept="3clFbW" id="6MYr6Jx03xQ" role="jymVt">
      <node concept="3cqZAl" id="6MYr6Jx03xS" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6Jx03xT" role="1B3o_S" />
      <node concept="3clFbS" id="6MYr6Jx03xU" role="3clF47">
        <node concept="XkiVB" id="6MYr6Jx03Ka" role="3cqZAp">
          <ref role="37wK5l" to="omn0:6infEALANZc" resolve="AssertSolver" />
          <node concept="37vLTw" id="6MYr6Jx03PF" role="37wK5m">
            <ref role="3cqZAo" node="6MYr6Jx03Dl" resolve="sessionSolver" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6Jx03Dl" role="3clF46">
        <property role="TrG5h" value="sessionSolver" />
        <node concept="3uibUv" id="6MYr6Jx03Dk" role="1tU5fm">
          <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="SessionSolver" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6Jx03qU" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JwZYHf" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellAssert" />
      <node concept="37vLTG" id="6MYr6JwZYHg" role="3clF46">
        <property role="TrG5h" value="val" />
        <node concept="3uibUv" id="6MYr6JwZYHh" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="3cqZAl" id="6MYr6JwZYHi" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwZYHj" role="1B3o_S" />
      <node concept="2AHcQZ" id="6MYr6JwZYHl" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="6MYr6JwZYHm" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="6MYr6JwZYHn" role="2B70Vg">
            <ref role="3cqZAo" to="cxk7:6infEALAgS7" resolve="ASSERT" />
            <ref role="1PxDUh" to="cxk7:6infEALAfer" resolve="AssertPredicate" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6MYr6JwZYHp" role="3clF47">
        <node concept="3clFbF" id="6MYr6JwZYVu" role="3cqZAp">
          <node concept="1rXfSq" id="6MYr6JwZYVt" role="3clFbG">
            <ref role="37wK5l" to="omn0:6infEALAKQz" resolve="_tellAssert" />
            <node concept="37vLTw" id="6MYr6JwZYWf" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwZYHg" resolve="val" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwZZ0h" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JwZYHq" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellAssert" />
      <node concept="37vLTG" id="6MYr6JwZYHr" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="6MYr6JwZYHs" role="1tU5fm">
          <ref role="3uigEE" to="45ys:6MYr6JwxYwB" resolve="SolverLogical" />
          <node concept="3uibUv" id="6MYr6JwZYHt" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6MYr6JwZYHu" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwZYHv" role="1B3o_S" />
      <node concept="2AHcQZ" id="6MYr6JwZYHx" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="6MYr6JwZYHy" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="6MYr6JwZYHz" role="2B70Vg">
            <ref role="3cqZAo" to="cxk7:6infEALAgS7" resolve="ASSERT" />
            <ref role="1PxDUh" to="cxk7:6infEALAfer" resolve="AssertPredicate" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6MYr6JwZYH_" role="3clF47">
        <node concept="3clFbF" id="6MYr6JwZZag" role="3cqZAp">
          <node concept="1rXfSq" id="6MYr6JwZZaf" role="3clFbG">
            <ref role="37wK5l" to="omn0:6infEALAKQH" resolve="_tellAssert" />
            <node concept="37vLTw" id="6MYr6JwZZfK" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwZYHr" resolve="logical" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwZZml" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JwZYHA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askAssert" />
      <node concept="37vLTG" id="6MYr6JwZYHB" role="3clF46">
        <property role="TrG5h" value="val" />
        <node concept="3uibUv" id="6MYr6JwZYHC" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="10P_77" id="6MYr6JwZYHD" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwZYHE" role="1B3o_S" />
      <node concept="2AHcQZ" id="6MYr6JwZYHG" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="6MYr6JwZYHH" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="6MYr6JwZYHI" role="2B70Vg">
            <ref role="3cqZAo" to="cxk7:6infEALAgS7" resolve="ASSERT" />
            <ref role="1PxDUh" to="cxk7:6infEALAfer" resolve="AssertPredicate" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6MYr6JwZYHK" role="3clF47">
        <node concept="3clFbF" id="6MYr6JwZZve" role="3cqZAp">
          <node concept="1rXfSq" id="6MYr6JwZZvd" role="3clFbG">
            <ref role="37wK5l" to="omn0:6infEALAKQS" resolve="_askAssert" />
            <node concept="37vLTw" id="6MYr6JwZZ$z" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwZYHB" resolve="val" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwZZCB" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JwZYHN" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askAssert" />
      <node concept="37vLTG" id="6MYr6JwZYHO" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="6MYr6JwZYHP" role="1tU5fm">
          <ref role="3uigEE" to="45ys:6MYr6JwxYwB" resolve="SolverLogical" />
          <node concept="3uibUv" id="6MYr6JwZYHQ" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="6MYr6JwZYHR" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwZYHS" role="1B3o_S" />
      <node concept="2AHcQZ" id="6MYr6JwZYHU" role="2AJF6D">
        <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="6MYr6JwZYHV" role="2B76xF">
          <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="6MYr6JwZYHW" role="2B70Vg">
            <ref role="3cqZAo" to="cxk7:6infEALAgS7" resolve="ASSERT" />
            <ref role="1PxDUh" to="cxk7:6infEALAfer" resolve="AssertPredicate" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6MYr6JwZYHY" role="3clF47">
        <node concept="3clFbF" id="6MYr6JwZZM1" role="3cqZAp">
          <node concept="1rXfSq" id="6MYr6JwZZLZ" role="3clFbG">
            <ref role="37wK5l" to="omn0:6infEALAKR2" resolve="_askAssert" />
            <node concept="37vLTw" id="6MYr6JwZZN4" role="37wK5m">
              <ref role="3cqZAo" node="6MYr6JwZYHO" resolve="logical" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwZVTt" role="jymVt" />
    <node concept="3Tm1VV" id="6MYr6JwZVJJ" role="1B3o_S" />
    <node concept="3uibUv" id="6MYr6JwZVMF" role="EKbjA">
      <ref role="3uigEE" node="6infEALA98Q" resolve="JchrAssertSolver" />
    </node>
    <node concept="3uibUv" id="6MYr6JwZVVq" role="1zkMxy">
      <ref role="3uigEE" to="omn0:6infEALAKBG" resolve="AssertSolver" />
    </node>
  </node>
  <node concept="312cEu" id="6MYr6Jx1C5w">
    <property role="TrG5h" value="JchrLogicalSolverImpl" />
    <node concept="2tJIrI" id="6MYr6Jx1DXE" role="jymVt" />
    <node concept="312cEu" id="6MYr6Jx1DYk" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Bound" />
      <node concept="2tJIrI" id="6MYr6Jx1E8d" role="jymVt" />
      <node concept="3clFb_" id="6MYr6Jx1E8q" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="ask" />
        <node concept="37vLTG" id="6MYr6Jx1E8r" role="3clF46">
          <property role="TrG5h" value="logical" />
          <node concept="3uibUv" id="3eLgHzX3XXf" role="1tU5fm">
            <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
          </node>
        </node>
        <node concept="10P_77" id="6MYr6Jx1E8u" role="3clF45" />
        <node concept="3Tm1VV" id="6MYr6Jx1E8v" role="1B3o_S" />
        <node concept="2AHcQZ" id="6MYr6Jx1E8x" role="2AJF6D">
          <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
          <node concept="2B6LJw" id="6MYr6Jx1E8y" role="2B76xF">
            <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
            <node concept="37vLTw" id="6MYr6Jx1E8z" role="2B70Vg">
              <ref role="3cqZAo" node="5i7izgNdCcB" resolve="LOGICAL" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="6MYr6Jx1E8_" role="3clF47">
          <node concept="3clFbF" id="6MYr6Jx1Gbf" role="3cqZAp">
            <node concept="1rXfSq" id="6MYr6Jx1Gbe" role="3clFbG">
              <ref role="37wK5l" to="omn0:7ISVfSJ19r" resolve="_ask" />
              <node concept="10QFUN" id="3eLgHzX3Y22" role="37wK5m">
                <node concept="3uibUv" id="3eLgHzX3Y1Z" role="10QFUM">
                  <ref role="3uigEE" to="45ys:6MYr6JwxYwB" resolve="SolverLogical" />
                  <node concept="3qTvmN" id="3eLgHzX3Y20" role="11_B2D" />
                </node>
                <node concept="37vLTw" id="3eLgHzX3Y21" role="10QFUP">
                  <ref role="3cqZAo" node="6MYr6Jx1E8r" resolve="logical" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6MYr6Jx1DYl" role="1B3o_S" />
      <node concept="3uibUv" id="6MYr6Jx1G3V" role="1zkMxy">
        <ref role="3uigEE" to="omn0:7ISVfSJ0DF" resolve="LogicalSolver.Bound" />
      </node>
      <node concept="3uibUv" id="6MYr6Jx1E33" role="EKbjA">
        <ref role="3uigEE" node="60B5zVEZP8W" resolve="JchrLogicalSolver" />
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6Jx1Gof" role="jymVt" />
    <node concept="312cEu" id="6MYr6Jx1Gfw" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Free" />
      <node concept="2tJIrI" id="6MYr6Jx1Gfx" role="jymVt" />
      <node concept="3clFb_" id="6MYr6Jx1Gfy" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="ask" />
        <node concept="37vLTG" id="6MYr6Jx1Gfz" role="3clF46">
          <property role="TrG5h" value="logical" />
          <node concept="3uibUv" id="3eLgHzX3Y6R" role="1tU5fm">
            <ref role="3uigEE" node="3HJTsBmBSJa" resolve="JchrLogical" />
          </node>
        </node>
        <node concept="10P_77" id="6MYr6Jx1GfA" role="3clF45" />
        <node concept="3Tm1VV" id="6MYr6Jx1GfB" role="1B3o_S" />
        <node concept="2AHcQZ" id="6MYr6Jx1GfC" role="2AJF6D">
          <ref role="2AI5Lk" to="f8dg:~JCHR_Asks" resolve="JCHR_Asks" />
          <node concept="2B6LJw" id="6MYr6Jx1GfD" role="2B76xF">
            <ref role="2B6OnR" to="f8dg:~JCHR_Asks.value()" resolve="value" />
            <node concept="37vLTw" id="6MYr6Jx1GfE" role="2B70Vg">
              <ref role="3cqZAo" node="5i7izgNdCcB" resolve="LOGICAL" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="6MYr6Jx1GfF" role="3clF47">
          <node concept="3clFbF" id="6MYr6Jx1GfG" role="3cqZAp">
            <node concept="1rXfSq" id="6MYr6Jx1GfH" role="3clFbG">
              <ref role="37wK5l" to="omn0:7ISVfSJ1ok" resolve="_ask" />
              <node concept="10QFUN" id="3eLgHzX3Yeu" role="37wK5m">
                <node concept="3uibUv" id="3eLgHzX3Yer" role="10QFUM">
                  <ref role="3uigEE" to="45ys:6MYr6JwxYwB" resolve="SolverLogical" />
                  <node concept="3qTvmN" id="3eLgHzX3Yes" role="11_B2D" />
                </node>
                <node concept="37vLTw" id="3eLgHzX3Yet" role="10QFUP">
                  <ref role="3cqZAo" node="6MYr6Jx1Gfz" resolve="logical" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6MYr6Jx1GfJ" role="1B3o_S" />
      <node concept="3uibUv" id="6MYr6Jx1Gss" role="1zkMxy">
        <ref role="3uigEE" to="omn0:7ISVfSJ1oi" resolve="LogicalSolver.Free" />
      </node>
      <node concept="3uibUv" id="6MYr6Jx1GfL" role="EKbjA">
        <ref role="3uigEE" node="60B5zVEZP8W" resolve="JchrLogicalSolver" />
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6Jx1DXJ" role="jymVt" />
    <node concept="3Tm1VV" id="6MYr6Jx1C5x" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3FIATxbQg8C">
    <property role="TrG5h" value="JchrLogicalUnification" />
    <node concept="2tJIrI" id="3FIATxbQgKW" role="jymVt" />
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
      <node concept="3Tm1VV" id="3FIATxbQg$_" role="1B3o_S" />
      <node concept="16euLQ" id="3FIATxbQg$A" role="16eVyc">
        <property role="TrG5h" value="TERM" />
        <node concept="3uibUv" id="3FIATxbQg$B" role="3ztrMU">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
      <node concept="3clFbS" id="3FIATxbQg$C" role="3clF47">
        <node concept="3clFbF" id="3FIATxbQg$D" role="3cqZAp">
          <node concept="10QFUN" id="3FIATxbQg$E" role="3clFbG">
            <node concept="2OqwBi" id="3FIATxbQg$F" role="10QFUP">
              <node concept="1eOMI4" id="3FIATxbQg$G" role="2Oq$k0">
                <node concept="10QFUN" id="3FIATxbQg$H" role="1eOMHV">
                  <node concept="37vLTw" id="3FIATxbQg$I" role="10QFUP">
                    <ref role="3cqZAo" node="3FIATxbQg$y" resolve="term" />
                  </node>
                  <node concept="3uibUv" id="3FIATxbQg$J" role="10QFUM">
                    <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3FIATxbQg$K" role="2OqNvi">
                <ref role="37wK5l" to="ie8e:2QE4RCGndD7" resolve="asRoot" />
              </node>
            </node>
            <node concept="16syzq" id="3FIATxbQg$L" role="10QFUM">
              <ref role="16sUi3" node="3FIATxbQg$A" resolve="TERM" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3FIATxbQg$M" role="jymVt" />
    <node concept="3clFb_" id="3FIATxbQg$N" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="logical" />
      <node concept="37vLTG" id="3FIATxbQg$O" role="3clF46">
        <property role="TrG5h" value="var" />
        <node concept="16syzq" id="3FIATxbQg$P" role="1tU5fm">
          <ref role="16sUi3" node="3FIATxbQg$T" resolve="TERM" />
        </node>
      </node>
      <node concept="3uibUv" id="3FIATxbQg$Q" role="3clF45">
        <ref role="3uigEE" to="45ys:6MYr6JwxYwB" resolve="SolverLogical" />
        <node concept="16syzq" id="3FIATxbQg$R" role="11_B2D">
          <ref role="16sUi3" node="3FIATxbQg$T" resolve="TERM" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3FIATxbQg$S" role="1B3o_S" />
      <node concept="16euLQ" id="3FIATxbQg$T" role="16eVyc">
        <property role="TrG5h" value="TERM" />
        <node concept="3uibUv" id="3FIATxbQg$U" role="3ztrMU">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
      <node concept="3clFbS" id="3FIATxbQg$V" role="3clF47">
        <node concept="3clFbF" id="3FIATxbQg$W" role="3cqZAp">
          <node concept="10QFUN" id="3FIATxbQg$X" role="3clFbG">
            <node concept="2OqwBi" id="3FIATxbQg$Y" role="10QFUP">
              <node concept="1eOMI4" id="3FIATxbQg$Z" role="2Oq$k0">
                <node concept="10QFUN" id="3FIATxbQg_0" role="1eOMHV">
                  <node concept="37vLTw" id="3FIATxbQg_1" role="10QFUP">
                    <ref role="3cqZAo" node="3FIATxbQg$O" resolve="var" />
                  </node>
                  <node concept="3uibUv" id="3FIATxbQg_2" role="10QFUM">
                    <ref role="3uigEE" to="yg8f:46l0wJhtOD_" resolve="ILogicalVar" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3FIATxbQg_3" role="2OqNvi">
                <ref role="37wK5l" to="yg8f:46l0wJhtXlr" resolve="logical" />
              </node>
            </node>
            <node concept="3uibUv" id="3FIATxbQg_4" role="10QFUM">
              <ref role="3uigEE" to="45ys:6MYr6JwxYwB" resolve="SolverLogical" />
              <node concept="16syzq" id="3FIATxbQg_5" role="11_B2D">
                <ref role="16sUi3" node="3FIATxbQg$T" resolve="TERM" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3FIATxbQg_6" role="jymVt" />
    <node concept="3clFb_" id="3FIATxbQg_7" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isLogical" />
      <node concept="37vLTG" id="3FIATxbQg_8" role="3clF46">
        <property role="TrG5h" value="term" />
        <node concept="3uibUv" id="3FIATxbQg_9" role="1tU5fm">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
      <node concept="10P_77" id="3FIATxbQg_a" role="3clF45" />
      <node concept="3Tm1VV" id="3FIATxbQg_b" role="1B3o_S" />
      <node concept="3clFbS" id="3FIATxbQg_c" role="3clF47">
        <node concept="3clFbF" id="3FIATxbQg_d" role="3cqZAp">
          <node concept="2ZW3vV" id="3FIATxbQg_e" role="3clFbG">
            <node concept="3uibUv" id="3FIATxbQg_f" role="2ZW6by">
              <ref role="3uigEE" to="yg8f:46l0wJhtOD_" resolve="ILogicalVar" />
            </node>
            <node concept="37vLTw" id="3FIATxbQg_g" role="2ZW6bz">
              <ref role="3cqZAo" node="3FIATxbQg_8" resolve="term" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3FIATxbQg$v" role="jymVt" />
    <node concept="3Tm1VV" id="3FIATxbQg8D" role="1B3o_S" />
    <node concept="3uibUv" id="3FIATxbQg97" role="EKbjA">
      <ref role="3uigEE" to="45ys:6MYr6JwANOa" resolve="LogicalUnification" />
    </node>
  </node>
</model>

