<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:999d4d33-c34a-4228-9fea-c5d1d293923a(jetbrains.mps.lang.typesystem2.samplechecker.runner)">
  <persistence version="9" />
  <languages>
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal" version="0" />
  </languages>
  <imports>
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.logic.atom)" />
    <import index="eifs" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:runtime(jetbrains.mps.jchr.runtime/)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="stuq" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:runtime.debug.graphical(jetbrains.mps.jchr.runtime/)" />
    <import index="iawt" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:runtime.debug(jetbrains.mps.jchr.runtime/)" />
    <import index="q7tw" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.apache.log4j(MPS.Core/)" />
    <import index="45ys" ref="r:7365f7fe-12e6-4229-8901-f6dc6d5df03f(jetbrains.mps.logic.reactor.logical)" />
    <import index="qrld" ref="r:2a79c8aa-e372-4c00-8d71-5d7f3db517e4(jetbrains.mps.logic.reactor.evaluation)" />
    <import index="rchb" ref="r:f43ee4a0-488a-425a-87a0-594ab3b0d15f(jetbrains.mps.logic.reactor.program)" />
    <import index="95zw" ref="r:f3ff7852-b9dd-4760-b213-a8a031c77d0e(jetbrains.mps.logic.jchr.predicate)" />
    <import index="stgg" ref="r:fcdb37a4-4602-4a05-8d91-e439430734b8(jetbrains.mps.logic.jchr.program)" />
    <import index="7ub6" ref="r:b533b427-da69-49d8-9c93-4ea32433b66e(jetbrains.mps.lang.typesystem2.runtime)" />
    <import index="poio" ref="r:023e4571-f779-4131-9ae1-88b3dd330e93(jetbrains.mps.lang.typesystem2.samplechecker.util)" />
    <import index="cxk7" ref="r:daa544a7-0a5c-49c0-a54c-4c2a5b4868aa(jetbrains.mps.logic.builtin.predicate)" />
    <import index="omn0" ref="r:4e44cb56-a834-45de-a0c4-c49a5c86e78e(jetbrains.mps.logic.builtin.solver)" />
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
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
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
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
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
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
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
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
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
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1173996401517" name="jetbrains.mps.baseLanguageInternal.structure.InternalNewExpression" flags="nn" index="1nCR9W">
        <property id="1173996588177" name="fqClassName" index="1nD$Q0" />
        <child id="1179332974947" name="type" index="2lIhxL" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="3Qp4N06bZn0">
    <property role="TrG5h" value="TestHandlerRunner" />
    <node concept="2tJIrI" id="5mr7UHcdsSH" role="jymVt" />
    <node concept="Wx3nA" id="5mr7UHcbnci" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="PREDICATE_SYMBOLS" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="5mr7UHcbl_B" role="1B3o_S" />
      <node concept="10Q1$e" id="5mr7UHcbnc4" role="1tU5fm">
        <node concept="3uibUv" id="5mr7UHcbq0Z" role="10Q1$1">
          <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="2ShNRf" id="5mr7UHcbowK" role="33vP2m">
        <node concept="3g6Rrh" id="5mr7UHcboy8" role="2ShVmc">
          <node concept="10M0yZ" id="5mr7UHcboyR" role="3g7hyw">
            <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
            <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
          </node>
          <node concept="10M0yZ" id="5mr7UHcboyX" role="3g7hyw">
            <ref role="3cqZAo" to="cxk7:5uFPQ7C23RV" resolve="EQ_SYM" />
            <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
          </node>
          <node concept="10M0yZ" id="5mr7UHcboz3" role="3g7hyw">
            <ref role="1PxDUh" to="cxk7:6infEALAfer" resolve="AssertPredicate" />
            <ref role="3cqZAo" to="cxk7:5uFPQ7BZnLB" resolve="ASSERT_SYM" />
          </node>
          <node concept="10M0yZ" id="5mr7UHcboz9" role="3g7hyw">
            <ref role="1PxDUh" to="cxk7:5$WbtTOYoMb" resolve="LogicalPredicate" />
            <ref role="3cqZAo" to="cxk7:5uFPQ7C26$b" resolve="BOUND_SYM" />
          </node>
          <node concept="10M0yZ" id="5mr7UHcbozf" role="3g7hyw">
            <ref role="1PxDUh" to="cxk7:5$WbtTOYoMb" resolve="LogicalPredicate" />
            <ref role="3cqZAo" to="cxk7:5uFPQ7C279$" resolve="FREE_SYM" />
          </node>
          <node concept="10M0yZ" id="1ggxSI7vXEc" role="3g7hyw">
            <ref role="3cqZAo" to="rchb:1ggxSI7vUYU" resolve="EXPRESSION0" />
            <ref role="1PxDUh" to="rchb:5uFPQ7BMJeJ" resolve="JavaPredicateSymbol" />
          </node>
          <node concept="10M0yZ" id="1ggxSI7vXSW" role="3g7hyw">
            <ref role="3cqZAo" to="rchb:1ggxSI7vV1O" resolve="EXPRESSION1" />
            <ref role="1PxDUh" to="rchb:5uFPQ7BMJeJ" resolve="JavaPredicateSymbol" />
          </node>
          <node concept="10M0yZ" id="1ggxSI7vY7W" role="3g7hyw">
            <ref role="3cqZAo" to="rchb:1ggxSI7vV3x" resolve="EXPRESSION2" />
            <ref role="1PxDUh" to="rchb:5uFPQ7BMJeJ" resolve="JavaPredicateSymbol" />
          </node>
          <node concept="10M0yZ" id="1ggxSI7vYn6" role="3g7hyw">
            <ref role="3cqZAo" to="rchb:1ggxSI7vV5$" resolve="EXPRESSION3" />
            <ref role="1PxDUh" to="rchb:5uFPQ7BMJeJ" resolve="JavaPredicateSymbol" />
          </node>
          <node concept="3uibUv" id="5mr7UHcbqo2" role="3g7fb8">
            <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3Qp4N06bZn1" role="jymVt" />
    <node concept="2YIFZL" id="3Qp4N06bZn2" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="37vLTG" id="3Qp4N06bZn3" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="3Qp4N06bZn4" role="1tU5fm">
          <node concept="17QB3L" id="3Qp4N06bZn5" role="10Q1$1" />
        </node>
      </node>
      <node concept="3cqZAl" id="3Qp4N06bZn6" role="3clF45" />
      <node concept="3Tm1VV" id="3Qp4N06bZn7" role="1B3o_S" />
      <node concept="3clFbS" id="3Qp4N06bZn8" role="3clF47">
        <node concept="3clFbJ" id="1_iD3HAe1Wa" role="3cqZAp">
          <node concept="3clFbS" id="1_iD3HAe1Wc" role="3clFbx">
            <node concept="3clFbF" id="1_iD3HAe2KE" role="3cqZAp">
              <node concept="2OqwBi" id="1_iD3HAe2KB" role="3clFbG">
                <node concept="10M0yZ" id="1_iD3HAe2KC" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                </node>
                <node concept="liA8E" id="1_iD3HAe2KD" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                  <node concept="Xl_RD" id="1_iD3HAe2LV" role="37wK5m">
                    <property role="Xl_RC" value="Usage: &lt;program&gt; &lt;sample name&gt;" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1_iD3HAe3av" role="3cqZAp">
              <node concept="2YIFZM" id="1_iD3HAe3bQ" role="3clFbG">
                <ref role="37wK5l" to="wyt6:~System.exit(int):void" resolve="exit" />
                <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                <node concept="3cmrfG" id="1_iD3HAe3cl" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1_iD3HAe2Fc" role="3clFbw">
            <node concept="3cmrfG" id="1_iD3HAe2I4" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="1_iD3HAe2bI" role="3uHU7B">
              <node concept="37vLTw" id="1_iD3HAe26$" role="2Oq$k0">
                <ref role="3cqZAo" node="3Qp4N06bZn3" resolve="args" />
              </node>
              <node concept="1Rwk04" id="1_iD3HAe2u1" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1_iD3HAe1Lm" role="3cqZAp" />
        <node concept="3cpWs8" id="1_iD3HAe0rT" role="3cqZAp">
          <node concept="3cpWsn" id="1_iD3HAe0rU" role="3cpWs9">
            <property role="TrG5h" value="sampleName" />
            <node concept="17QB3L" id="1_iD3HAe0rS" role="1tU5fm" />
            <node concept="AH0OO" id="1_iD3HAe3kt" role="33vP2m">
              <node concept="3cmrfG" id="1_iD3HAe3t9" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="1_iD3HAe3du" role="AHHXb">
                <ref role="3cqZAo" node="3Qp4N06bZn3" resolve="args" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1_iD3HAe1_S" role="3cqZAp" />
        <node concept="3clFbF" id="41ox5VneP74" role="3cqZAp">
          <node concept="2YIFZM" id="41ox5VneRsZ" role="3clFbG">
            <ref role="37wK5l" to="q7tw:~BasicConfigurator.configure():void" resolve="configure" />
            <ref role="1Pybhc" to="q7tw:~BasicConfigurator" resolve="BasicConfigurator" />
          </node>
        </node>
        <node concept="3clFbH" id="4peSo3CNiVm" role="3cqZAp" />
        <node concept="3clFbF" id="6r6omRld8pH" role="3cqZAp">
          <node concept="2YIFZM" id="6r6omRld8Db" role="3clFbG">
            <ref role="37wK5l" to="ie8e:4peSo3CM2Ms" resolve="pushDelegate" />
            <ref role="1Pybhc" to="ie8e:4peSo3CLajR" resolve="PrintDelegate" />
            <node concept="2ShNRf" id="6r6omRld8Ll" role="37wK5m">
              <node concept="YeOm9" id="6r6omRld9Ah" role="2ShVmc">
                <node concept="1Y3b0j" id="6r6omRld9Ak" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="ie8e:4peSo3CLajR" resolve="PrintDelegate" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="6r6omRld9Al" role="1B3o_S" />
                  <node concept="3clFb_" id="6r6omRld9Am" role="jymVt">
                    <property role="TrG5h" value="doPrint" />
                    <property role="1EzhhJ" value="false" />
                    <node concept="37vLTG" id="6r6omRld9An" role="3clF46">
                      <property role="TrG5h" value="atom" />
                      <node concept="3uibUv" id="6r6omRld9Ao" role="1tU5fm">
                        <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                      </node>
                    </node>
                    <node concept="17QB3L" id="6r6omRld9Ap" role="3clF45" />
                    <node concept="3Tm1VV" id="6r6omRld9Aq" role="1B3o_S" />
                    <node concept="3clFbS" id="6r6omRld9As" role="3clF47">
                      <node concept="3clFbF" id="6r6omRld9JQ" role="3cqZAp">
                        <node concept="3cpWs3" id="6r6omRld9JR" role="3clFbG">
                          <node concept="3cpWs3" id="6r6omRld9JS" role="3uHU7B">
                            <node concept="Xl_RD" id="6r6omRld9JT" role="3uHU7B">
                              <property role="Xl_RC" value="{" />
                            </node>
                            <node concept="2YIFZM" id="6r6omRld9JU" role="3uHU7w">
                              <ref role="37wK5l" to="poio:4peSo3CHBfF" resolve="print" />
                              <ref role="1Pybhc" to="poio:4peSo3CHy8D" resolve="NodePrinter" />
                              <node concept="37vLTw" id="6r6omRld9Qi" role="37wK5m">
                                <ref role="3cqZAo" node="6r6omRld9An" resolve="atom" />
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="6r6omRld9JW" role="3uHU7w">
                            <property role="Xl_RC" value="}" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="6r6omRld9ZC" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="41ox5VneLw6" role="3cqZAp" />
        <node concept="3cpWs8" id="41ox5VnfMip" role="3cqZAp">
          <node concept="3cpWsn" id="41ox5VnfMiq" role="3cpWs9">
            <property role="TrG5h" value="handlerCls" />
            <node concept="3uibUv" id="41ox5VnfMir" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
              <node concept="3uibUv" id="41ox5VnfMis" role="11_B2D">
                <ref role="3uigEE" to="eifs:~Handler" resolve="Handler" />
              </node>
            </node>
            <node concept="1rXfSq" id="41ox5VnfMit" role="33vP2m">
              <ref role="37wK5l" node="41ox5VnfyZt" resolve="getHandlerClass" />
              <node concept="37vLTw" id="1_iD3HAe0rX" role="37wK5m">
                <ref role="3cqZAo" node="1_iD3HAe0rU" resolve="sampleName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="41ox5VnfMiu" role="3cqZAp">
          <node concept="3clFbS" id="41ox5VnfMiv" role="3clFbx">
            <node concept="3cpWs6" id="41ox5VnfMiw" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="41ox5VnfMix" role="3clFbw">
            <node concept="10Nm6u" id="41ox5VnfMiy" role="3uHU7w" />
            <node concept="37vLTw" id="41ox5VnfMiz" role="3uHU7B">
              <ref role="3cqZAo" node="41ox5VnfMiq" resolve="handlerCls" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="41ox5VneBkr" role="3cqZAp" />
        <node concept="3clFbF" id="5jPBdKCiIT" role="3cqZAp">
          <node concept="2YIFZM" id="5jPBdKCktT" role="3clFbG">
            <ref role="1Pybhc" to="stgg:7ISVfSIedQ" resolve="JchrEvaluationSession" />
            <ref role="37wK5l" to="stgg:7ISVfSIf0j" resolve="init" />
          </node>
        </node>
        <node concept="3clFbH" id="7FFmDVAHS2f" role="3cqZAp" />
        <node concept="3cpWs8" id="7FFmDVAIsS5" role="3cqZAp">
          <node concept="3cpWsn" id="7FFmDVAIsS6" role="3cpWs9">
            <property role="TrG5h" value="sessionSolver" />
            <node concept="3uibUv" id="7FFmDVAIt1W" role="1tU5fm">
              <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="SessionSolver" />
            </node>
            <node concept="2ShNRf" id="7FFmDVAIsS7" role="33vP2m">
              <node concept="1pGfFk" id="7FFmDVAIsS8" role="2ShVmc">
                <ref role="37wK5l" to="95zw:6MYr6Jwp7cE" resolve="JchrSessionSolver" />
                <node concept="1nCR9W" id="7FFmDVAIwUu" role="37wK5m">
                  <property role="1nD$Q0" value="jetbrains.mps.lang.typesystem2.samplechecker.template.ExpressionSolver" />
                  <node concept="3uibUv" id="7FFmDVAIxfB" role="2lIhxL">
                    <ref role="3uigEE" to="95zw:2KSgAgVhoMB" resolve="JchrExpressionSolver" />
                  </node>
                </node>
                <node concept="2YIFZM" id="6MYr6Jwoy_g" role="37wK5m">
                  <ref role="37wK5l" to="eifs:~ConstraintSystem.get():runtime.ConstraintSystem" resolve="get" />
                  <ref role="1Pybhc" to="eifs:~ConstraintSystem" resolve="ConstraintSystem" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5mr7UHcbsDR" role="3cqZAp">
          <node concept="3cpWsn" id="5mr7UHcbsDS" role="3cpWs9">
            <property role="TrG5h" value="evaluationSession" />
            <node concept="3uibUv" id="5mr7UHcbsDe" role="1tU5fm">
              <ref role="3uigEE" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
            </node>
            <node concept="2OqwBi" id="5mr7UHcbsDT" role="33vP2m">
              <node concept="2OqwBi" id="5mr7UHcbsDV" role="2Oq$k0">
                <node concept="2OqwBi" id="5mr7UHcbsDW" role="2Oq$k0">
                  <node concept="2YIFZM" id="5mr7UHcbsDX" role="2Oq$k0">
                    <ref role="37wK5l" to="qrld:7ISVfSIwfH" resolve="newSession" />
                    <ref role="1Pybhc" to="qrld:5uFPQ7BvN_d" resolve="EvaluationSession" />
                    <node concept="2ShNRf" id="7FFmDVAI9Ky" role="37wK5m">
                      <node concept="1pGfFk" id="7FFmDVAIa8C" role="2ShVmc">
                        <ref role="37wK5l" node="7FFmDVAI8Mx" resolve="MockProgram" />
                        <node concept="37vLTw" id="7FFmDVAIsS9" role="37wK5m">
                          <ref role="3cqZAo" node="7FFmDVAIsS6" resolve="sessionSolver" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="5mr7UHcbsDY" role="2OqNvi">
                    <ref role="37wK5l" to="qrld:5mr7UHcbbR2" resolve="withParam" />
                    <node concept="Xl_RD" id="5mr7UHcbsDZ" role="37wK5m">
                      <property role="Xl_RC" value="jchr.handler.class" />
                    </node>
                    <node concept="37vLTw" id="5mr7UHcbsE0" role="37wK5m">
                      <ref role="3cqZAo" node="41ox5VnfMiq" resolve="handlerCls" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5mr7UHcbsE1" role="2OqNvi">
                  <ref role="37wK5l" to="qrld:5uFPQ7Bwu9Q" resolve="withPredicates" />
                  <node concept="37vLTw" id="5mr7UHcdeDp" role="37wK5m">
                    <ref role="3cqZAo" node="5mr7UHcbnci" resolve="PREDICATE_SYMBOLS" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5mr7UHcbsE5" role="2OqNvi">
                <ref role="37wK5l" to="qrld:7ISVfSIuSh" resolve="start" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5mr7UHcddlb" role="3cqZAp" />
        <node concept="1DcWWT" id="5mr7UHcdjPL" role="3cqZAp">
          <node concept="3clFbS" id="5mr7UHcdjPN" role="2LFqv$">
            <node concept="3clFbF" id="3Qp4N06bZo4" role="3cqZAp">
              <node concept="2OqwBi" id="3Qp4N06bZo5" role="3clFbG">
                <node concept="10M0yZ" id="3Qp4N06bZo6" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                </node>
                <node concept="liA8E" id="3Qp4N06bZo7" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                  <node concept="2YIFZM" id="1H8E3iB4$z4" role="37wK5m">
                    <ref role="1Pybhc" node="3Qp4N06bZn0" resolve="TestHandlerRunner" />
                    <ref role="37wK5l" node="1H8E3iB4zRw" resolve="toText" />
                    <node concept="37vLTw" id="5mr7UHcdlET" role="37wK5m">
                      <ref role="3cqZAo" node="5mr7UHcdjPO" resolve="co" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5mr7UHcdjPO" role="1Duv9x">
            <property role="TrG5h" value="co" />
            <node concept="3uibUv" id="5mr7UHcdk5B" role="1tU5fm">
              <ref role="3uigEE" to="qrld:5uFPQ7BZac$" resolve="ConstraintOccurrence" />
            </node>
          </node>
          <node concept="2OqwBi" id="5mr7UHcdkj8" role="1DdaDG">
            <node concept="37vLTw" id="5mr7UHcdkd5" role="2Oq$k0">
              <ref role="3cqZAo" node="5mr7UHcbsDS" resolve="evaluationSession" />
            </node>
            <node concept="liA8E" id="5mr7UHcdksH" role="2OqNvi">
              <ref role="37wK5l" to="qrld:5uFPQ7BvQxv" resolve="constraintOccurrences" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="41ox5VnjVis" role="jymVt" />
    <node concept="2YIFZL" id="41ox5VnfyZt" role="jymVt">
      <property role="TrG5h" value="getHandlerClass" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="1_iD3HAdZ_0" role="3clF46">
        <property role="TrG5h" value="sampleName" />
        <node concept="17QB3L" id="1_iD3HAdZMI" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="41ox5Vnft1C" role="3clF47">
        <node concept="SfApY" id="41ox5VnfvP6" role="3cqZAp">
          <node concept="3clFbS" id="41ox5VnfvP7" role="SfCbr">
            <node concept="3cpWs8" id="41ox5VnfxtZ" role="3cqZAp">
              <node concept="3cpWsn" id="41ox5Vnfxu0" role="3cpWs9">
                <property role="TrG5h" value="cls" />
                <node concept="3uibUv" id="41ox5VnfxtU" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                  <node concept="3uibUv" id="41ox5VnfxtX" role="11_B2D">
                    <ref role="3uigEE" to="eifs:~Handler" resolve="Handler" />
                  </node>
                </node>
                <node concept="10QFUN" id="41ox5Vnfxu1" role="33vP2m">
                  <node concept="3uibUv" id="41ox5Vnfxu2" role="10QFUM">
                    <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                    <node concept="3uibUv" id="41ox5Vnfxu3" role="11_B2D">
                      <ref role="3uigEE" to="eifs:~Handler" resolve="Handler" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="41ox5Vnfxu4" role="10QFUP">
                    <ref role="37wK5l" to="wyt6:~Class.forName(java.lang.String):java.lang.Class" resolve="forName" />
                    <ref role="1Pybhc" to="wyt6:~Class" resolve="Class" />
                    <node concept="3cpWs3" id="1_iD3HAecEx" role="37wK5m">
                      <node concept="Xl_RD" id="1_iD3HAecF1" role="3uHU7w">
                        <property role="Xl_RC" value="Handler" />
                      </node>
                      <node concept="3cpWs3" id="1_iD3HAdVsy" role="3uHU7B">
                        <node concept="Xl_RD" id="41ox5Vnfxu5" role="3uHU7B">
                          <property role="Xl_RC" value="jetbrains.mps.lang.typesystem2.samplechecker.chr.Typechecking" />
                        </node>
                        <node concept="37vLTw" id="1_iD3HAe06P" role="3uHU7w">
                          <ref role="3cqZAo" node="1_iD3HAdZ_0" resolve="sampleName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="41ox5VnfyfU" role="3cqZAp">
              <node concept="37vLTw" id="41ox5Vnfxu6" role="3cqZAk">
                <ref role="3cqZAo" node="41ox5Vnfxu0" resolve="cls" />
              </node>
            </node>
            <node concept="3clFbH" id="41ox5VnfywO" role="3cqZAp" />
          </node>
          <node concept="TDmWw" id="41ox5VnfvP2" role="TEbGg">
            <node concept="3clFbS" id="41ox5VnfvP3" role="TDEfX">
              <node concept="34ab3g" id="41ox5Vnfw_y" role="3cqZAp">
                <property role="35gtTG" value="error" />
                <property role="34fQS0" value="true" />
                <node concept="Xl_RD" id="41ox5Vnfw_z" role="34bqiv">
                  <property role="Xl_RC" value="handler not found" />
                </node>
                <node concept="37vLTw" id="41ox5Vnfw_$" role="34bMjA">
                  <ref role="3cqZAo" node="41ox5VnfvP4" resolve="e" />
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="41ox5VnfvP4" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="41ox5VnfvP5" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~ClassNotFoundException" resolve="ClassNotFoundException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="41ox5Vnfw__" role="3cqZAp">
          <node concept="10Nm6u" id="41ox5VnfwYG" role="3cqZAk" />
        </node>
      </node>
      <node concept="3uibUv" id="41ox5Vnfurd" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="3uibUv" id="41ox5VnfuEM" role="11_B2D">
          <ref role="3uigEE" to="eifs:~Handler" resolve="Handler" />
        </node>
      </node>
      <node concept="3Tm6S6" id="41ox5VnftL9" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1H8E3iB4Co3" role="jymVt" />
    <node concept="2YIFZL" id="41ox5VnjQJx" role="jymVt">
      <property role="TrG5h" value="attachTracerTo" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="3XExYyWVIUA" role="3clF47">
        <node concept="3cpWs8" id="3XExYyWVIUB" role="3cqZAp">
          <node concept="3cpWsn" id="3XExYyWVIUC" role="3cpWs9">
            <property role="TrG5h" value="tracer" />
            <node concept="3uibUv" id="3XExYyWVIUD" role="1tU5fm">
              <ref role="3uigEE" node="3XExYyWVj2K" resolve="TestHandlerRunner.MyGraphicalTracer" />
            </node>
            <node concept="2ShNRf" id="3XExYyWVIUE" role="33vP2m">
              <node concept="1pGfFk" id="3XExYyWVIUF" role="2ShVmc">
                <ref role="37wK5l" node="3XExYyWVjVp" resolve="TestHandlerRunner.MyGraphicalTracer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3XExYyWVIUG" role="3cqZAp">
          <node concept="2OqwBi" id="3XExYyWVIUH" role="3clFbG">
            <node concept="37vLTw" id="3XExYyWVIV3" role="2Oq$k0">
              <ref role="3cqZAo" node="3XExYyWVIV0" resolve="handler" />
            </node>
            <node concept="liA8E" id="3XExYyWVIUM" role="2OqNvi">
              <ref role="37wK5l" to="eifs:~Handler.setTracer(runtime.debug.Tracer):void" resolve="setTracer" />
              <node concept="2ShNRf" id="3XExYyWVIUN" role="37wK5m">
                <node concept="1pGfFk" id="3XExYyWVIUO" role="2ShVmc">
                  <ref role="37wK5l" to="iawt:~InterruptableTracer.&lt;init&gt;(runtime.debug.InterruptableTracer$InterruptingTracer)" resolve="InterruptableTracer" />
                  <node concept="37vLTw" id="3XExYyWVIUP" role="37wK5m">
                    <ref role="3cqZAo" node="3XExYyWVIUC" resolve="tracer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3XExYyWVIUQ" role="3cqZAp">
          <node concept="2OqwBi" id="3XExYyWVIUR" role="3clFbG">
            <node concept="37vLTw" id="3XExYyWVIUS" role="2Oq$k0">
              <ref role="3cqZAo" node="3XExYyWVIUC" resolve="tracer" />
            </node>
            <node concept="liA8E" id="3XExYyWVIUT" role="2OqNvi">
              <ref role="37wK5l" node="3XExYyWVk5h" resolve="init" />
              <node concept="2OqwBi" id="3XExYyWVIUU" role="37wK5m">
                <node concept="37vLTw" id="3XExYyWVIV2" role="2Oq$k0">
                  <ref role="3cqZAo" node="3XExYyWVIV0" resolve="handler" />
                </node>
                <node concept="liA8E" id="3XExYyWVIUZ" role="2OqNvi">
                  <ref role="37wK5l" to="eifs:~Handler.getTracerView():runtime.Handler" resolve="getTracerView" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3XExYyWVIV0" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3uibUv" id="41ox5VndBBf" role="1tU5fm">
          <ref role="3uigEE" to="eifs:~Handler" resolve="Handler" />
        </node>
      </node>
      <node concept="3cqZAl" id="3XExYyWVIV8" role="3clF45" />
      <node concept="3Tm6S6" id="3XExYyWVIV7" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1H8E3iB4Cr8" role="jymVt" />
    <node concept="2YIFZL" id="1H8E3iB4zRw" role="jymVt">
      <property role="TrG5h" value="toText" />
      <node concept="3Tm6S6" id="1H8E3iB4zRx" role="1B3o_S" />
      <node concept="17QB3L" id="1H8E3iB4zRy" role="3clF45" />
      <node concept="37vLTG" id="1H8E3iB4zRr" role="3clF46">
        <property role="TrG5h" value="cocc" />
        <node concept="3uibUv" id="5mr7UHcdeYc" role="1tU5fm">
          <ref role="3uigEE" to="qrld:5uFPQ7BZac$" resolve="ConstraintOccurrence" />
        </node>
      </node>
      <node concept="3clFbS" id="1H8E3iB4zQI" role="3clF47">
        <node concept="3cpWs8" id="104EUzFgB$7" role="3cqZAp">
          <node concept="3cpWsn" id="104EUzFgB$8" role="3cpWs9">
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="104EUzFgB$9" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="104EUzFgC5y" role="33vP2m">
              <node concept="1pGfFk" id="104EUzFgC4F" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="104EUzFgD9q" role="3cqZAp">
          <node concept="2OqwBi" id="104EUzFgFGb" role="3clFbG">
            <node concept="2OqwBi" id="104EUzFgDqd" role="2Oq$k0">
              <node concept="37vLTw" id="104EUzFgD9o" role="2Oq$k0">
                <ref role="3cqZAo" node="104EUzFgB$8" resolve="sb" />
              </node>
              <node concept="liA8E" id="104EUzFgDNZ" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.Object):java.lang.StringBuilder" resolve="append" />
                <node concept="2OqwBi" id="5mr7UHcdf$K" role="37wK5m">
                  <node concept="2OqwBi" id="104EUzFgG$Q" role="2Oq$k0">
                    <node concept="37vLTw" id="104EUzFgG$R" role="2Oq$k0">
                      <ref role="3cqZAo" node="1H8E3iB4zRr" resolve="cocc" />
                    </node>
                    <node concept="liA8E" id="5mr7UHcdfz7" role="2OqNvi">
                      <ref role="37wK5l" to="qrld:5uFPQ7BZacZ" resolve="constraint" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5mr7UHcdfCa" role="2OqNvi">
                    <ref role="37wK5l" to="rchb:5uFPQ7B_aTC" resolve="symbol" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="104EUzFgG7G" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
              <node concept="Xl_RD" id="104EUzFgGaL" role="37wK5m">
                <property role="Xl_RC" value="(" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="104EUzFgAyR" role="3cqZAp" />
        <node concept="3cpWs8" id="5mr7UHcdg1H" role="3cqZAp">
          <node concept="3cpWsn" id="5mr7UHcdg1I" role="3cpWs9">
            <property role="TrG5h" value="args" />
            <node concept="3uibUv" id="7HUwyZaD7k7" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
              <node concept="3qTvmN" id="7HUwyZaD7w6" role="11_B2D" />
            </node>
            <node concept="2OqwBi" id="5mr7UHcdg1J" role="33vP2m">
              <node concept="37vLTw" id="5mr7UHcdg1K" role="2Oq$k0">
                <ref role="3cqZAo" node="1H8E3iB4zRr" resolve="cocc" />
              </node>
              <node concept="liA8E" id="5mr7UHcdg1L" role="2OqNvi">
                <ref role="37wK5l" to="qrld:5uFPQ7BZafw" resolve="arguments" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="104EUzFgZ7k" role="3cqZAp">
          <node concept="3cpWsn" id="104EUzFgZ7n" role="3cpWs9">
            <property role="TrG5h" value="sep" />
            <node concept="10Q1$e" id="104EUzFh01I" role="1tU5fm">
              <node concept="17QB3L" id="104EUzFgZ7i" role="10Q1$1" />
            </node>
            <node concept="2BsdOp" id="104EUzFh0bP" role="33vP2m">
              <node concept="Xl_RD" id="104EUzFh0fp" role="2BsfMF">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="Xl_RD" id="104EUzFh0lY" role="2BsfMF">
                <property role="Xl_RC" value=", " />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7HUwyZaD83A" role="3cqZAp">
          <node concept="3cpWsn" id="7HUwyZaD83G" role="3cpWs9">
            <property role="TrG5h" value="argsIt" />
            <node concept="3uibUv" id="7HUwyZaD83I" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Iterator" resolve="Iterator" />
              <node concept="3qTvmN" id="7HUwyZaD8lO" role="11_B2D" />
            </node>
            <node concept="2OqwBi" id="7HUwyZaD8rT" role="33vP2m">
              <node concept="37vLTw" id="7HUwyZaD8qC" role="2Oq$k0">
                <ref role="3cqZAo" node="5mr7UHcdg1I" resolve="args" />
              </node>
              <node concept="liA8E" id="7HUwyZaD8xQ" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Collection.iterator():java.util.Iterator" resolve="iterator" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="104EUzFgKl3" role="3cqZAp">
          <node concept="3clFbS" id="104EUzFgKl6" role="2LFqv$">
            <node concept="3cpWs8" id="4ef1vBgAG$p" role="3cqZAp">
              <node concept="3cpWsn" id="4ef1vBgAG$q" role="3cpWs9">
                <property role="TrG5h" value="arg" />
                <node concept="3uibUv" id="4ef1vBgAG$f" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="2OqwBi" id="5mr7UHcdhkF" role="33vP2m">
                  <node concept="37vLTw" id="7HUwyZaD8$N" role="2Oq$k0">
                    <ref role="3cqZAo" node="7HUwyZaD83G" resolve="argsIt" />
                  </node>
                  <node concept="liA8E" id="7HUwyZaD8S6" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4ef1vBgB8oc" role="3cqZAp">
              <node concept="3cpWsn" id="4ef1vBgB8od" role="3cpWs9">
                <property role="TrG5h" value="value" />
                <node concept="3uibUv" id="4ef1vBgB8oe" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="37vLTw" id="4ef1vBgBbjx" role="33vP2m">
                  <ref role="3cqZAo" node="4ef1vBgAG$q" resolve="arg" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4ef1vBgB5bu" role="3cqZAp">
              <node concept="3cpWsn" id="4ef1vBgB5bx" role="3cpWs9">
                <property role="TrG5h" value="name" />
                <node concept="17QB3L" id="4ef1vBgB5bs" role="1tU5fm" />
                <node concept="10Nm6u" id="4ef1vBgB5$C" role="33vP2m" />
              </node>
            </node>
            <node concept="3clFbH" id="4ef1vBgBaRv" role="3cqZAp" />
            <node concept="3clFbJ" id="4ef1vBgAHfL" role="3cqZAp">
              <node concept="3clFbS" id="4ef1vBgAHfN" role="3clFbx">
                <node concept="3clFbF" id="4ef1vBgB5Cn" role="3cqZAp">
                  <node concept="37vLTI" id="4ef1vBgB5Gl" role="3clFbG">
                    <node concept="2OqwBi" id="4ef1vBgB5Ox" role="37vLTx">
                      <node concept="1eOMI4" id="4ef1vBgB5In" role="2Oq$k0">
                        <node concept="10QFUN" id="4ef1vBgB5Ik" role="1eOMHV">
                          <node concept="3uibUv" id="4ef1vBgB5JC" role="10QFUM">
                            <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
                          </node>
                          <node concept="37vLTw" id="4ef1vBgB5L8" role="10QFUP">
                            <ref role="3cqZAo" node="4ef1vBgAG$q" resolve="arg" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="4ef1vBgB5Uu" role="2OqNvi">
                        <ref role="37wK5l" to="45ys:677NV56hh2k" resolve="name" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4ef1vBgB5MV" role="37vLTJ">
                      <ref role="3cqZAo" node="4ef1vBgB5bx" resolve="name" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4ef1vBgAHCS" role="3cqZAp">
                  <node concept="37vLTI" id="4ef1vBgAHEv" role="3clFbG">
                    <node concept="2OqwBi" id="4ef1vBgB1xh" role="37vLTx">
                      <node concept="2OqwBi" id="4ef1vBgAHIc" role="2Oq$k0">
                        <node concept="1eOMI4" id="4ef1vBgAHGw" role="2Oq$k0">
                          <node concept="10QFUN" id="4ef1vBgAHGt" role="1eOMHV">
                            <node concept="3uibUv" id="4ef1vBgAHGy" role="10QFUM">
                              <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
                            </node>
                            <node concept="37vLTw" id="4ef1vBgAHGz" role="10QFUP">
                              <ref role="3cqZAo" node="4ef1vBgAG$q" resolve="arg" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="4ef1vBgAQ$R" role="2OqNvi">
                          <ref role="37wK5l" to="45ys:dfChU1eNVy" resolve="findRoot" />
                        </node>
                      </node>
                      <node concept="liA8E" id="4ef1vBgB1UB" role="2OqNvi">
                        <ref role="37wK5l" to="45ys:1mP5b6jQPMI" resolve="value" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4ef1vBgB8Nk" role="37vLTJ">
                      <ref role="3cqZAo" node="4ef1vBgB8od" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="4ef1vBgAH_X" role="3clFbw">
                <node concept="3uibUv" id="2s5CcPapNE_" role="2ZW6by">
                  <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
                </node>
                <node concept="37vLTw" id="4ef1vBgAHxE" role="2ZW6bz">
                  <ref role="3cqZAo" node="4ef1vBgAG$q" resolve="arg" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4ef1vBgB738" role="3cqZAp" />
            <node concept="3clFbJ" id="4ef1vBgB24W" role="3cqZAp">
              <node concept="3clFbS" id="4ef1vBgB24Y" role="3clFbx">
                <node concept="3cpWs8" id="1jo82tq1d7r" role="3cqZAp">
                  <node concept="3cpWsn" id="1jo82tq1d7s" role="3cpWs9">
                    <property role="TrG5h" value="prettyPrint" />
                    <node concept="17QB3L" id="1jo82tq1d7t" role="1tU5fm" />
                    <node concept="3K4zz7" id="1jo82tq1d7u" role="33vP2m">
                      <node concept="37vLTw" id="1jo82tq1d7v" role="3K4GZi">
                        <ref role="3cqZAo" node="4ef1vBgB5bx" resolve="name" />
                      </node>
                      <node concept="3y3z36" id="1jo82tq1d7w" role="3K4Cdx">
                        <node concept="10Nm6u" id="1jo82tq1d7x" role="3uHU7w" />
                        <node concept="37vLTw" id="1jo82tq1d7y" role="3uHU7B">
                          <ref role="3cqZAo" node="4ef1vBgB8od" resolve="value" />
                        </node>
                      </node>
                      <node concept="2YIFZM" id="1jo82tq2Chl" role="3K4E3e">
                        <ref role="1Pybhc" to="poio:4peSo3CHy8D" resolve="NodePrinter" />
                        <ref role="37wK5l" to="poio:4peSo3D04j7" resolve="print" />
                        <node concept="2YIFZM" id="1jo82tq2Chm" role="37wK5m">
                          <ref role="37wK5l" to="ie8e:6HT7BWBOXr$" resolve="ground" />
                          <ref role="1Pybhc" to="ie8e:6HT7BWBOXme" resolve="AtomUtil" />
                          <node concept="10QFUN" id="1jo82tq2Chn" role="37wK5m">
                            <node concept="37vLTw" id="1jo82tq2Cho" role="10QFUP">
                              <ref role="3cqZAo" node="4ef1vBgB8od" resolve="value" />
                            </node>
                            <node concept="3uibUv" id="1jo82tq2Chp" role="10QFUM">
                              <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                            </node>
                          </node>
                        </node>
                        <node concept="2ShNRf" id="1jo82tq2Chq" role="37wK5m">
                          <node concept="HV5vD" id="1jo82tq2Chr" role="2ShVmc">
                            <ref role="HV5vE" node="3gJBs5s_5u0" resolve="TestHandlerRunner.TypeVarSymbol" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4ef1vBgBbTf" role="3cqZAp">
                  <node concept="2OqwBi" id="4ef1vBgBbTh" role="3clFbG">
                    <node concept="2OqwBi" id="4ef1vBgBbTj" role="2Oq$k0">
                      <node concept="37vLTw" id="4ef1vBgBbTk" role="2Oq$k0">
                        <ref role="3cqZAo" node="104EUzFgB$8" resolve="sb" />
                      </node>
                      <node concept="liA8E" id="4ef1vBgBbTl" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                        <node concept="AH0OO" id="4ef1vBgBbTm" role="37wK5m">
                          <node concept="1rXfSq" id="4ef1vBgBbTn" role="AHEQo">
                            <ref role="37wK5l" node="104EUzFheOH" resolve="sgn" />
                            <node concept="37vLTw" id="4ef1vBgBbTo" role="37wK5m">
                              <ref role="3cqZAo" node="104EUzFgKl9" resolve="i" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="4ef1vBgBbTp" role="AHHXb">
                            <ref role="3cqZAo" node="104EUzFgZ7n" resolve="sep" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="4ef1vBgBbTs" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                      <node concept="37vLTw" id="4ef1vBgBbTt" role="37wK5m">
                        <ref role="3cqZAo" node="1jo82tq1d7s" resolve="prettyPrint" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4ef1vBgBaOj" role="3cqZAp" />
              </node>
              <node concept="22lmx$" id="4ef1vBgB9ih" role="3clFbw">
                <node concept="2ZW3vV" id="4ef1vBgB9oR" role="3uHU7w">
                  <node concept="3uibUv" id="7ISVfSMtuv" role="2ZW6by">
                    <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="AtomLogical" />
                  </node>
                  <node concept="37vLTw" id="4ef1vBgB9nh" role="2ZW6bz">
                    <ref role="3cqZAo" node="4ef1vBgAG$q" resolve="arg" />
                  </node>
                </node>
                <node concept="2ZW3vV" id="4ef1vBgB2pz" role="3uHU7B">
                  <node concept="3uibUv" id="4ef1vBgB2qV" role="2ZW6by">
                    <ref role="3uigEE" to="ie8e:1bm7a6EXvsP" resolve="Atom" />
                  </node>
                  <node concept="37vLTw" id="4ef1vBgB8VE" role="2ZW6bz">
                    <ref role="3cqZAo" node="4ef1vBgB8od" resolve="value" />
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="4ef1vBgB2sx" role="3eNLev">
                <node concept="2ZW3vV" id="4ef1vBgB2x1" role="3eO9$A">
                  <node concept="3uibUv" id="4ef1vBgB4kD" role="2ZW6by">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                  <node concept="37vLTw" id="4ef1vBgBbuj" role="2ZW6bz">
                    <ref role="3cqZAo" node="4ef1vBgB8od" resolve="value" />
                  </node>
                </node>
                <node concept="3clFbS" id="4ef1vBgB2sz" role="3eOfB_">
                  <node concept="3clFbF" id="4ef1vBgBcgZ" role="3cqZAp">
                    <node concept="2OqwBi" id="1jo82tq1ih4" role="3clFbG">
                      <node concept="2OqwBi" id="4ef1vBgBch0" role="2Oq$k0">
                        <node concept="2OqwBi" id="4ef1vBgBch1" role="2Oq$k0">
                          <node concept="2OqwBi" id="4ef1vBgBch2" role="2Oq$k0">
                            <node concept="37vLTw" id="4ef1vBgBch3" role="2Oq$k0">
                              <ref role="3cqZAo" node="104EUzFgB$8" resolve="sb" />
                            </node>
                            <node concept="liA8E" id="4ef1vBgBch4" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                              <node concept="AH0OO" id="4ef1vBgBch5" role="37wK5m">
                                <node concept="1rXfSq" id="4ef1vBgBch6" role="AHEQo">
                                  <ref role="37wK5l" node="104EUzFheOH" resolve="sgn" />
                                  <node concept="37vLTw" id="4ef1vBgBch7" role="37wK5m">
                                    <ref role="3cqZAo" node="104EUzFgKl9" resolve="i" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="4ef1vBgBch8" role="AHHXb">
                                  <ref role="3cqZAo" node="104EUzFgZ7n" resolve="sep" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="4ef1vBgBch9" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                            <node concept="Xl_RD" id="4ef1vBgBcha" role="37wK5m">
                              <property role="Xl_RC" value="\&quot;" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="4ef1vBgBchb" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.Object):java.lang.StringBuilder" resolve="append" />
                          <node concept="3K4zz7" id="4ef1vBgBdXc" role="37wK5m">
                            <node concept="37vLTw" id="4ef1vBgBdXd" role="3K4GZi">
                              <ref role="3cqZAo" node="4ef1vBgB5bx" resolve="name" />
                            </node>
                            <node concept="3y3z36" id="4ef1vBgBdXe" role="3K4Cdx">
                              <node concept="10Nm6u" id="4ef1vBgBdXf" role="3uHU7w" />
                              <node concept="37vLTw" id="4ef1vBgBdXg" role="3uHU7B">
                                <ref role="3cqZAo" node="4ef1vBgB8od" resolve="value" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="4ef1vBgBdXh" role="3K4E3e">
                              <ref role="3cqZAo" node="4ef1vBgB8od" resolve="value" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="1jo82tq1i_x" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                        <node concept="Xl_RD" id="1jo82tq1iCx" role="37wK5m">
                          <property role="Xl_RC" value="\&quot;" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="4ef1vBgBbQ5" role="3cqZAp" />
                </node>
              </node>
              <node concept="9aQIb" id="4ef1vBgB4rE" role="9aQIa">
                <node concept="3clFbS" id="4ef1vBgB4rF" role="9aQI4">
                  <node concept="3clFbF" id="4ef1vBgBeHc" role="3cqZAp">
                    <node concept="2OqwBi" id="4ef1vBgBk7D" role="3clFbG">
                      <node concept="2OqwBi" id="4ef1vBgBj3b" role="2Oq$k0">
                        <node concept="2OqwBi" id="4ef1vBgBhYr" role="2Oq$k0">
                          <node concept="2OqwBi" id="4ef1vBgBfV0" role="2Oq$k0">
                            <node concept="2OqwBi" id="4ef1vBgBf1S" role="2Oq$k0">
                              <node concept="2OqwBi" id="4ef1vBgBeJn" role="2Oq$k0">
                                <node concept="37vLTw" id="4ef1vBgBeHa" role="2Oq$k0">
                                  <ref role="3cqZAo" node="104EUzFgB$8" resolve="sb" />
                                </node>
                                <node concept="liA8E" id="4ef1vBgBeQk" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                                  <node concept="AH0OO" id="4ef1vBgBeRR" role="37wK5m">
                                    <node concept="1rXfSq" id="4ef1vBgBeRS" role="AHEQo">
                                      <ref role="37wK5l" node="104EUzFheOH" resolve="sgn" />
                                      <node concept="37vLTw" id="4ef1vBgBeRT" role="37wK5m">
                                        <ref role="3cqZAo" node="104EUzFgKl9" resolve="i" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="4ef1vBgBeRU" role="AHHXb">
                                      <ref role="3cqZAo" node="104EUzFgZ7n" resolve="sep" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="4ef1vBgBfvO" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                                <node concept="Xl_RD" id="4ef1vBgBfzh" role="37wK5m">
                                  <property role="Xl_RC" value="?" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="4ef1vBgBgtz" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                              <node concept="37vLTw" id="4ef1vBgBgAm" role="37wK5m">
                                <ref role="3cqZAo" node="4ef1vBgB5bx" resolve="name" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="4ef1vBgBiBX" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                            <node concept="Xl_RD" id="4ef1vBgBiKh" role="37wK5m">
                              <property role="Xl_RC" value="=" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="4ef1vBgBjMQ" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.Object):java.lang.StringBuilder" resolve="append" />
                          <node concept="37vLTw" id="4ef1vBgBjXl" role="37wK5m">
                            <ref role="3cqZAo" node="4ef1vBgB8od" resolve="value" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="4ef1vBgBl5t" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                        <node concept="Xl_RD" id="4ef1vBgBlgD" role="37wK5m">
                          <property role="Xl_RC" value="?" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="4ef1vBgBeFT" role="3cqZAp" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="104EUzFgKl9" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="104EUzFgKOz" role="1tU5fm" />
            <node concept="3cmrfG" id="104EUzFgKT1" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="104EUzFgLnU" role="1Dwp0S">
            <node concept="2OqwBi" id="104EUzFgLBt" role="3uHU7w">
              <node concept="37vLTw" id="5mr7UHcdgNh" role="2Oq$k0">
                <ref role="3cqZAo" node="5mr7UHcdg1I" resolve="args" />
              </node>
              <node concept="liA8E" id="5mr7UHcdgTD" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Collection.size():int" resolve="size" />
              </node>
            </node>
            <node concept="37vLTw" id="104EUzFgKWl" role="3uHU7B">
              <ref role="3cqZAo" node="104EUzFgKl9" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="104EUzFgMcY" role="1Dwrff">
            <node concept="37vLTw" id="104EUzFgMd0" role="2$L3a6">
              <ref role="3cqZAo" node="104EUzFgKl9" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="104EUzFgMnh" role="3cqZAp" />
        <node concept="3clFbF" id="104EUzFgR9I" role="3cqZAp">
          <node concept="2OqwBi" id="104EUzFgRu7" role="3clFbG">
            <node concept="2OqwBi" id="1jo82tq1fhD" role="2Oq$k0">
              <node concept="37vLTw" id="104EUzFgR9G" role="2Oq$k0">
                <ref role="3cqZAo" node="104EUzFgB$8" resolve="sb" />
              </node>
              <node concept="liA8E" id="1jo82tq1fuD" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="Xl_RD" id="1jo82tq1fAb" role="37wK5m">
                  <property role="Xl_RC" value=")" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="104EUzFgRTt" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="104EUzFh8R8" role="jymVt" />
    <node concept="2YIFZL" id="104EUzFheOH" role="jymVt">
      <property role="TrG5h" value="sgn" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="104EUzFh9dQ" role="3clF47">
        <node concept="3clFbF" id="104EUzFha67" role="3cqZAp">
          <node concept="3K4zz7" id="104EUzFhaAl" role="3clFbG">
            <node concept="1eOMI4" id="104EUzFhaIh" role="3K4GZi">
              <node concept="3K4zz7" id="104EUzFhdv$" role="1eOMHV">
                <node concept="3cmrfG" id="104EUzFhdDj" role="3K4GZi">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="3cmrfG" id="104EUzFhd$U" role="3K4E3e">
                  <property role="3cmrfH" value="-1" />
                </node>
                <node concept="3eOVzh" id="104EUzFhaWa" role="3K4Cdx">
                  <node concept="3cmrfG" id="104EUzFhaWr" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="104EUzFhaJE" role="3uHU7B">
                    <ref role="3cqZAo" node="104EUzFh9Vu" resolve="i" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cmrfG" id="104EUzFhaC$" role="3K4E3e">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="3clFbC" id="104EUzFhah_" role="3K4Cdx">
              <node concept="3cmrfG" id="104EUzFhapc" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="104EUzFha66" role="3uHU7B">
                <ref role="3cqZAo" node="104EUzFh9Vu" resolve="i" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="104EUzFh9Vu" role="3clF46">
        <property role="TrG5h" value="i" />
        <node concept="10Oyi0" id="104EUzFh9Vt" role="1tU5fm" />
      </node>
      <node concept="10Oyi0" id="104EUzFh9wB" role="3clF45" />
      <node concept="3Tm6S6" id="104EUzFhekD" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3XExYyWVilq" role="jymVt" />
    <node concept="312cEu" id="3XExYyWVj2K" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="MyGraphicalTracer" />
      <node concept="2tJIrI" id="3XExYyWVkuM" role="jymVt" />
      <node concept="3clFbW" id="3XExYyWVjVp" role="jymVt">
        <node concept="3cqZAl" id="3XExYyWVjVr" role="3clF45" />
        <node concept="3Tm1VV" id="3XExYyWVjVs" role="1B3o_S" />
        <node concept="3clFbS" id="3XExYyWVjVt" role="3clF47">
          <node concept="XkiVB" id="3XExYyWVk22" role="3cqZAp">
            <ref role="37wK5l" to="stuq:~GraphicalTracer.&lt;init&gt;(java.lang.Class...)" resolve="GraphicalTracer" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3XExYyWVk3$" role="jymVt" />
      <node concept="3clFb_" id="3XExYyWVk5h" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="init" />
        <property role="DiZV1" value="false" />
        <property role="IEkAT" value="false" />
        <node concept="3Tm1VV" id="3XExYyWVkk9" role="1B3o_S" />
        <node concept="3cqZAl" id="3XExYyWVk5k" role="3clF45" />
        <node concept="37vLTG" id="3XExYyWVk5l" role="3clF46">
          <property role="TrG5h" value="handler" />
          <node concept="3uibUv" id="3XExYyWVk5m" role="1tU5fm">
            <ref role="3uigEE" to="eifs:~Handler" resolve="Handler" />
          </node>
        </node>
        <node concept="3clFbS" id="3XExYyWVk5n" role="3clF47">
          <node concept="3clFbF" id="3XExYyWVk5r" role="3cqZAp">
            <node concept="3nyPlj" id="3XExYyWVk5q" role="3clFbG">
              <ref role="37wK5l" to="stuq:~GraphicalTracer.init(runtime.Handler):void" resolve="init" />
              <node concept="37vLTw" id="3XExYyWVk5p" role="37wK5m">
                <ref role="3cqZAo" node="3XExYyWVk5l" resolve="handler" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3XExYyWVk5o" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3XExYyWVkme" role="jymVt" />
      <node concept="3Tm1VV" id="3XExYyWVj2L" role="1B3o_S" />
      <node concept="3uibUv" id="3XExYyWVjQ4" role="1zkMxy">
        <ref role="3uigEE" to="stuq:~GraphicalTracer" resolve="GraphicalTracer" />
      </node>
    </node>
    <node concept="2tJIrI" id="1jo82tq2n7I" role="jymVt" />
    <node concept="312cEu" id="3gJBs5s_5u0" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="TypeVarSymbol" />
      <node concept="2tJIrI" id="3gJBs5s_6yN" role="jymVt" />
      <node concept="3clFb_" id="3gJBs5s_6yZ" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="variableSymbol" />
        <node concept="37vLTG" id="3gJBs5s_6z0" role="3clF46">
          <property role="TrG5h" value="variable" />
          <node concept="3uibUv" id="3gJBs5s_6z1" role="1tU5fm">
            <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
          </node>
        </node>
        <node concept="17QB3L" id="4peSo3D1hha" role="3clF45" />
        <node concept="3Tm1VV" id="3gJBs5s_6z3" role="1B3o_S" />
        <node concept="3clFbS" id="3gJBs5s_6z9" role="3clF47">
          <node concept="3clFbJ" id="3gJBs5s_6EV" role="3cqZAp">
            <node concept="3clFbS" id="3gJBs5s_6EW" role="3clFbx">
              <node concept="3cpWs8" id="3gJBs5s_7Ie" role="3cqZAp">
                <node concept="3cpWsn" id="3gJBs5s_7If" role="3cpWs9">
                  <property role="TrG5h" value="logical" />
                  <node concept="3uibUv" id="3gJBs5s_7I4" role="1tU5fm">
                    <ref role="3uigEE" to="45ys:1mP5b6jQP$C" resolve="Logical" />
                    <node concept="3qTvmN" id="3gJBs5s_7I7" role="11_B2D" />
                  </node>
                  <node concept="2OqwBi" id="5kEUewdDk6_" role="33vP2m">
                    <node concept="2OqwBi" id="3gJBs5s_7Ig" role="2Oq$k0">
                      <node concept="1eOMI4" id="3gJBs5s_7Ih" role="2Oq$k0">
                        <node concept="10QFUN" id="3gJBs5s_7Ii" role="1eOMHV">
                          <node concept="3uibUv" id="3gJBs5s_7Ij" role="10QFUM">
                            <ref role="3uigEE" to="yg8f:46l0wJhtOD_" resolve="ILogicalVar" />
                          </node>
                          <node concept="37vLTw" id="3gJBs5s_7Ik" role="10QFUP">
                            <ref role="3cqZAo" node="3gJBs5s_6z0" resolve="variable" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="3gJBs5s_7Il" role="2OqNvi">
                        <ref role="37wK5l" to="yg8f:46l0wJhtXlr" resolve="logical" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5kEUewdDkka" role="2OqNvi">
                      <ref role="37wK5l" to="45ys:dfChU1eNVy" resolve="findRoot" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3gJBs5s_ngZ" role="3cqZAp" />
              <node concept="3cpWs8" id="3gJBs5s_fIH" role="3cqZAp">
                <node concept="3cpWsn" id="3gJBs5s_fII" role="3cpWs9">
                  <property role="TrG5h" value="prettyVar" />
                  <node concept="3uibUv" id="3gJBs5s_fIJ" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                  </node>
                  <node concept="2ShNRf" id="3gJBs5s_fIK" role="33vP2m">
                    <node concept="1pGfFk" id="3gJBs5s_fIL" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;(java.lang.String)" resolve="StringBuilder" />
                      <node concept="2YIFZM" id="5kEUewdD__8" role="37wK5m">
                        <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                        <ref role="37wK5l" to="wyt6:~String.valueOf(char[]):java.lang.String" resolve="valueOf" />
                        <node concept="2OqwBi" id="5kEUewdDo5I" role="37wK5m">
                          <node concept="37vLTw" id="3gJBs5s_fIM" role="2Oq$k0">
                            <ref role="3cqZAo" node="3gJBs5s_7If" resolve="logical" />
                          </node>
                          <node concept="liA8E" id="5kEUewdDoh_" role="2OqNvi">
                            <ref role="37wK5l" to="45ys:1mP5b6jQPMI" resolve="value" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3gJBs5s_loM" role="3cqZAp">
                <node concept="2OqwBi" id="3gJBs5s_lTD" role="3cqZAk">
                  <node concept="37vLTw" id="3gJBs5s_lJ9" role="2Oq$k0">
                    <ref role="3cqZAo" node="3gJBs5s_fII" resolve="prettyVar" />
                  </node>
                  <node concept="liA8E" id="3gJBs5s_mK7" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3gJBs5s_nxx" role="3cqZAp" />
            </node>
            <node concept="2ZW3vV" id="3gJBs5s_6UT" role="3clFbw">
              <node concept="3uibUv" id="3gJBs5s_78A" role="2ZW6by">
                <ref role="3uigEE" to="yg8f:46l0wJhtOD_" resolve="ILogicalVar" />
              </node>
              <node concept="37vLTw" id="3gJBs5s_6FT" role="2ZW6bz">
                <ref role="3cqZAo" node="3gJBs5s_6z0" resolve="variable" />
              </node>
            </node>
            <node concept="9aQIb" id="3gJBs5s_7KK" role="9aQIa">
              <node concept="3clFbS" id="3gJBs5s_7KL" role="9aQI4">
                <node concept="3cpWs6" id="3gJBs5s_7Qc" role="3cqZAp">
                  <node concept="2YIFZM" id="4peSo3D1kYQ" role="3cqZAk">
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                    <node concept="2OqwBi" id="4peSo3D0$Pp" role="37wK5m">
                      <node concept="37vLTw" id="4peSo3D0$zo" role="2Oq$k0">
                        <ref role="3cqZAo" node="3gJBs5s_6z0" resolve="variable" />
                      </node>
                      <node concept="liA8E" id="4peSo3D0AYC" role="2OqNvi">
                        <ref role="37wK5l" to="ie8e:56MMu0Ark7d" resolve="symbol" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3gJBs5s_6za" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5kEUewdD8xu" role="1B3o_S" />
      <node concept="3uibUv" id="4peSo3D1gxU" role="1zkMxy">
        <ref role="3uigEE" to="poio:3gJBs5s$bxr" resolve="NodePrinter.DefaultVariableSymbol" />
      </node>
    </node>
    <node concept="2tJIrI" id="1jo82tq2nKr" role="jymVt" />
    <node concept="2tJIrI" id="3Qp4N06bZor" role="jymVt" />
    <node concept="3Tm1VV" id="3Qp4N06bZos" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7FFmDVAI5js">
    <property role="TrG5h" value="MockProgram" />
    <node concept="3Tm1VV" id="7FFmDVAI5jt" role="1B3o_S" />
    <node concept="3uibUv" id="7FFmDVAI5rF" role="1zkMxy">
      <ref role="3uigEE" to="rchb:5uFPQ7BvNzE" resolve="Program" />
    </node>
    <node concept="2tJIrI" id="7FFmDVAI8rr" role="jymVt" />
    <node concept="3clFbW" id="7FFmDVAI8Mx" role="jymVt">
      <node concept="3cqZAl" id="7FFmDVAI8Mz" role="3clF45" />
      <node concept="3Tm1VV" id="7FFmDVAI8M$" role="1B3o_S" />
      <node concept="3clFbS" id="7FFmDVAI8M_" role="3clF47">
        <node concept="3clFbF" id="7FFmDVAI926" role="3cqZAp">
          <node concept="37vLTI" id="7FFmDVAI928" role="3clFbG">
            <node concept="2OqwBi" id="7FFmDVAI92c" role="37vLTJ">
              <node concept="Xjq3P" id="7FFmDVAI92f" role="2Oq$k0" />
              <node concept="2OwXpG" id="7FFmDVAI92b" role="2OqNvi">
                <ref role="2Oxat5" node="7FFmDVAI922" resolve="sessionSolver" />
              </node>
            </node>
            <node concept="37vLTw" id="7FFmDVAI92g" role="37vLTx">
              <ref role="3cqZAo" node="7FFmDVAI8TK" resolve="sessionSolver" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7FFmDVAI8TK" role="3clF46">
        <property role="TrG5h" value="sessionSolver" />
        <node concept="3uibUv" id="7FFmDVAI8TJ" role="1tU5fm">
          <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="SessionSolver" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7FFmDVAI8Es" role="jymVt" />
    <node concept="2tJIrI" id="7FFmDVAI8F_" role="jymVt" />
    <node concept="3clFb_" id="7FFmDVAI5v$" role="jymVt">
      <property role="TrG5h" value="name" />
      <property role="1EzhhJ" value="false" />
      <node concept="17QB3L" id="7FFmDVAI5v_" role="3clF45" />
      <node concept="3Tm1VV" id="7FFmDVAI5vA" role="1B3o_S" />
      <node concept="3clFbS" id="7FFmDVAI5vC" role="3clF47">
        <node concept="3clFbF" id="7FFmDVAI8yJ" role="3cqZAp">
          <node concept="10Nm6u" id="7FFmDVAI8yI" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7FFmDVAI5vD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="sessionSolver" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3Tm1VV" id="7FFmDVAI5vF" role="1B3o_S" />
      <node concept="3uibUv" id="7FFmDVAI5vG" role="3clF45">
        <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="SessionSolver" />
      </node>
      <node concept="3clFbS" id="7FFmDVAI5vH" role="3clF47">
        <node concept="3clFbF" id="7FFmDVAI9ba" role="3cqZAp">
          <node concept="37vLTw" id="7FFmDVAI9b9" role="3clFbG">
            <ref role="3cqZAo" node="7FFmDVAI922" resolve="sessionSolver" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7FFmDVAI5vK" role="jymVt">
      <property role="TrG5h" value="constraintSymbols" />
      <property role="1EzhhJ" value="false" />
      <node concept="3uibUv" id="7FFmDVAI5vL" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="7FFmDVAI5vM" role="11_B2D">
          <ref role="3uigEE" to="rchb:54i3FxcZHHF" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7FFmDVAI5vN" role="1B3o_S" />
      <node concept="3clFbS" id="7FFmDVAI5vP" role="3clF47">
        <node concept="3clFbF" id="7FFmDVAI5vR" role="3cqZAp">
          <node concept="10Nm6u" id="7FFmDVAI5vQ" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7FFmDVAI5vS" role="jymVt">
      <property role="TrG5h" value="constraintArgumentTypes" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="7FFmDVAI5vT" role="3clF46">
        <property role="TrG5h" value="constraintSymbol" />
        <node concept="3uibUv" id="7FFmDVAI5vU" role="1tU5fm">
          <ref role="3uigEE" to="rchb:54i3FxcZHHF" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="3uibUv" id="7FFmDVAI5vV" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7FFmDVAI5vW" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="7FFmDVAI5vX" role="11_B2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7FFmDVAI5vY" role="1B3o_S" />
      <node concept="3clFbS" id="7FFmDVAI5w0" role="3clF47">
        <node concept="3clFbF" id="7FFmDVAI5w2" role="3cqZAp">
          <node concept="10Nm6u" id="7FFmDVAI5w1" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7FFmDVAI5w3" role="jymVt">
      <property role="TrG5h" value="predicateSymbols" />
      <property role="1EzhhJ" value="false" />
      <node concept="3uibUv" id="7FFmDVAI5w4" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="7FFmDVAI5w5" role="11_B2D">
          <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7FFmDVAI5w6" role="1B3o_S" />
      <node concept="3clFbS" id="7FFmDVAI5w8" role="3clF47">
        <node concept="3clFbF" id="7FFmDVAI5wa" role="3cqZAp">
          <node concept="10Nm6u" id="7FFmDVAI5w9" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7FFmDVAI5wm" role="jymVt">
      <property role="TrG5h" value="rules" />
      <property role="1EzhhJ" value="false" />
      <node concept="3uibUv" id="7FFmDVAI5wn" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="7FFmDVAI5wo" role="11_B2D">
          <ref role="3uigEE" to="rchb:7eGEHDlc$9y" resolve="Rule" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7FFmDVAI5wp" role="1B3o_S" />
      <node concept="3clFbS" id="7FFmDVAI5wr" role="3clF47">
        <node concept="3clFbF" id="7FFmDVAI5wt" role="3cqZAp">
          <node concept="10Nm6u" id="7FFmDVAI5ws" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7FFmDVAI5wu" role="jymVt">
      <property role="TrG5h" value="addRule" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="7FFmDVAI5wv" role="3clF46">
        <property role="TrG5h" value="rule" />
        <node concept="3uibUv" id="7FFmDVAI5ww" role="1tU5fm">
          <ref role="3uigEE" to="rchb:7eGEHDlc$9y" resolve="Rule" />
        </node>
      </node>
      <node concept="3cqZAl" id="7FFmDVAI5wx" role="3clF45" />
      <node concept="3Tm1VV" id="7FFmDVAI5wy" role="1B3o_S" />
      <node concept="3uibUv" id="7FFmDVAI5w$" role="Sfmx6">
        <ref role="3uigEE" to="rchb:7Oc59RS$wKP" resolve="InvalidRuleException" />
      </node>
      <node concept="3clFbS" id="7FFmDVAI5w_" role="3clF47" />
    </node>
    <node concept="312cEg" id="7FFmDVAI922" role="jymVt">
      <property role="TrG5h" value="sessionSolver" />
      <node concept="3Tm6S6" id="7FFmDVAI923" role="1B3o_S" />
      <node concept="3uibUv" id="7FFmDVAI925" role="1tU5fm">
        <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="SessionSolver" />
      </node>
    </node>
  </node>
</model>

