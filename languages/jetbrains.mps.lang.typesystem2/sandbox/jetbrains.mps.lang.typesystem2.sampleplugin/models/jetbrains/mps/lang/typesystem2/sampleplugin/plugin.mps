<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1514c681-0724-461e-a435-315a6af4b3b4(jetbrains.mps.lang.typesystem2.sampleplugin.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="0" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
  </languages>
  <imports>
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="bdf1" ref="r:22d5f1f3-a483-4725-abc3-c5e9c2c56292(jetbrains.mps.typechecking.rule.generator)" />
    <import index="nc4n" ref="r:2a1eb048-898c-47a3-863b-36b04c4b9f7c(jetbrains.mps.lang.typesystem2.runtime.rule)" />
    <import index="e2lb" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="qiww" ref="r:7e0616dc-e55e-4c35-beca-da14b0c8f8bd(jetbrains.mps.lang.typesystem2.runtime.template)" />
    <import index="4t1t" ref="r:703839e2-c38f-4b71-8602-72ccb87dd74e(jetbrains.mps.lang.typesystem2.runtime.util)" />
    <import index="810" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.ui(MPS.IDEA/com.intellij.openapi.ui@java_stub)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="msyo" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.util(MPS.Core/jetbrains.mps.util@java_stub)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="138j" ref="r:d390cf6e-3a05-4c9d-8eb3-bcdfbfd3bf8f(jetbrains.mps.typechecking.rule.collection)" />
    <import index="9kr0" ref="r:0f58be42-48ea-45ab-99f8-158393a0f526(jetbrains.mps.typechecking.handler.producer)" />
    <import index="yuoi" ref="r:da4ad9c6-d9f4-46fe-9e8f-894315bef3a9(jetbrains.mps.lang.typesystem2.samplechecker.sample)" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
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
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
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
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
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
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348183" name="jetbrains.mps.lang.access.structure.ExecuteWriteActionStatement" flags="nn" index="1QHqEM" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
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
      <concept id="559557797393017698" name="jetbrains.mps.lang.smodel.structure.ModelReferenceExpression" flags="nn" index="BaHAS">
        <property id="559557797393041554" name="fqName" index="BaBD8" />
        <property id="559557797393021807" name="stereotype" index="BaGAP" />
        <property id="559557797393017702" name="name" index="BaHAW" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <reference id="1171315804605" name="concept" index="2RRcyH" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
    </language>
  </registry>
  <node concept="312cEu" id="3Qp4N06byjn">
    <property role="TrG5h" value="CollectRuleTemplates" />
    <node concept="2tJIrI" id="3Qp4N06byjo" role="jymVt" />
    <node concept="2YIFZL" id="3Qp4N06byjp" role="jymVt">
      <property role="TrG5h" value="collect" />
      <node concept="10Oyi0" id="3xj1Uscu7dI" role="3clF45" />
      <node concept="3Tm1VV" id="3Qp4N06byju" role="1B3o_S" />
      <node concept="3clFbS" id="3Qp4N06byjv" role="3clF47">
        <node concept="3clFbH" id="3Qp4N06byjw" role="3cqZAp" />
        <node concept="3cpWs8" id="3Qp4N06byjx" role="3cqZAp">
          <node concept="3cpWsn" id="3Qp4N06byjy" role="3cpWs9">
            <property role="TrG5h" value="templatesModel" />
            <node concept="H_c77" id="3Qp4N06byjz" role="1tU5fm" />
            <node concept="BaHAS" id="3Qp4N06byj$" role="33vP2m">
              <property role="BaHAW" value="jetbrains.mps.lang.typesystem2.samplechecker.template" />
              <property role="BaGAP" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3Qp4N06byj_" role="3cqZAp">
          <node concept="3cpWsn" id="3Qp4N06byjA" role="3cpWs9">
            <property role="TrG5h" value="manifest" />
            <node concept="3uibUv" id="3Qp4N06byjB" role="1tU5fm">
              <ref role="3uigEE" to="qiww:6w6CYIRh9BG" resolve="AbstractRuleTemplateManifest" />
            </node>
            <node concept="2YIFZM" id="3Qp4N06byjC" role="33vP2m">
              <ref role="1Pybhc" node="3Qp4N06byjn" resolve="CollectRuleTemplates" />
              <ref role="37wK5l" node="3Qp4N06bynQ" resolve="getRuleManifest" />
              <node concept="37vLTw" id="3Qp4N06byjD" role="37wK5m">
                <ref role="3cqZAo" node="3Qp4N06byjy" resolve="templatesModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3Qp4N06byjE" role="3cqZAp" />
        <node concept="3cpWs8" id="3Qp4N06byjF" role="3cqZAp">
          <node concept="3cpWsn" id="3Qp4N06byjG" role="3cpWs9">
            <property role="TrG5h" value="rtc" />
            <node concept="3uibUv" id="3Qp4N06byjH" role="1tU5fm">
              <ref role="3uigEE" to="138j:6fdr4UgftiG" resolve="RuleTemplateCollection" />
            </node>
            <node concept="2ShNRf" id="3Qp4N06byjI" role="33vP2m">
              <node concept="1pGfFk" id="3Qp4N06byjJ" role="2ShVmc">
                <ref role="37wK5l" to="138j:6fdr4UgfyCL" resolve="RuleTemplateCollection" />
                <node concept="Xl_RD" id="3Qp4N06byjK" role="37wK5m">
                  <property role="Xl_RC" value="test" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Qp4N06byjL" role="3cqZAp">
          <node concept="2OqwBi" id="3Qp4N06byjM" role="3clFbG">
            <node concept="37vLTw" id="3Qp4N06byjN" role="2Oq$k0">
              <ref role="3cqZAo" node="3Qp4N06byjG" resolve="rtc" />
            </node>
            <node concept="liA8E" id="3Qp4N06byjO" role="2OqNvi">
              <ref role="37wK5l" to="138j:12yN8Dyvyy6" resolve="collectTemplates" />
              <node concept="37vLTw" id="3Qp4N06byjP" role="37wK5m">
                <ref role="3cqZAo" node="3Qp4N06byjA" resolve="manifest" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3Qp4N06byjQ" role="3cqZAp" />
        <node concept="3cpWs8" id="3Qp4N06byk3" role="3cqZAp">
          <node concept="3cpWsn" id="3Qp4N06byk4" role="3cpWs9">
            <property role="TrG5h" value="handler" />
            <node concept="3uibUv" id="3Qp4N06byk5" role="1tU5fm">
              <ref role="3uigEE" to="nc4n:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
            </node>
            <node concept="2ShNRf" id="3Qp4N06byk6" role="33vP2m">
              <node concept="1pGfFk" id="3Qp4N06byk7" role="2ShVmc">
                <ref role="37wK5l" to="nc4n:7eGEHDlcF69" resolve="ConstraintRulesHandler" />
                <node concept="Xl_RD" id="3Qp4N06byk8" role="37wK5m">
                  <property role="Xl_RC" value="testHandler" />
                </node>
                <node concept="2ShNRf" id="3Qp4N06byk9" role="37wK5m">
                  <node concept="YeOm9" id="3Qp4N06byka" role="2ShVmc">
                    <node concept="1Y3b0j" id="3Qp4N06bykb" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="nc4n:7eGEHDldgwf" resolve="ConstraintRegistry" />
                      <ref role="37wK5l" to="e2lb:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3Tm1VV" id="3Qp4N06bykc" role="1B3o_S" />
                      <node concept="3clFb_" id="3Qp4N06bykd" role="jymVt">
                        <property role="TrG5h" value="findSolver" />
                        <property role="1EzhhJ" value="false" />
                        <node concept="37vLTG" id="3Qp4N06byke" role="3clF46">
                          <property role="TrG5h" value="symbol" />
                          <node concept="3uibUv" id="3Qp4N06bykf" role="1tU5fm">
                            <ref role="3uigEE" to="nc4n:2fk6$tOpINk" resolve="BuiltinConstraintSymbol" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="3Qp4N06bykg" role="3clF45">
                          <ref role="3uigEE" to="yg8f:2GO7tyJLLNE" resolve="SolverProxy" />
                          <node concept="3qTvmN" id="3Qp4N06bykh" role="11_B2D" />
                        </node>
                        <node concept="3Tm1VV" id="3Qp4N06byki" role="1B3o_S" />
                        <node concept="3clFbS" id="3Qp4N06bykj" role="3clF47">
                          <node concept="3SKdUt" id="3Qp4N06bykk" role="3cqZAp">
                            <node concept="3SKdUq" id="3Qp4N06bykl" role="3SKWNk">
                              <property role="3SKdUp" value="TODO: implement me" />
                            </node>
                          </node>
                          <node concept="3KaCP$" id="3Qp4N06bykm" role="3cqZAp">
                            <node concept="37vLTw" id="3Qp4N06bykn" role="3KbGdf">
                              <ref role="3cqZAo" node="3Qp4N06byke" resolve="symbol" />
                            </node>
                            <node concept="3clFbS" id="3Qp4N06byko" role="3Kb1Dw">
                              <node concept="YS8fn" id="3Qp4N06bykp" role="3cqZAp">
                                <node concept="2ShNRf" id="3Qp4N06bykq" role="YScLw">
                                  <node concept="1pGfFk" id="3Qp4N06bykr" role="2ShVmc">
                                    <ref role="37wK5l" to="e2lb:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                                    <node concept="3cpWs3" id="3Qp4N06byks" role="37wK5m">
                                      <node concept="Xl_RD" id="3Qp4N06bykt" role="3uHU7w">
                                        <property role="Xl_RC" value="'" />
                                      </node>
                                      <node concept="3cpWs3" id="3Qp4N06byku" role="3uHU7B">
                                        <node concept="Xl_RD" id="3Qp4N06bykv" role="3uHU7B">
                                          <property role="Xl_RC" value="uknown builtint constraint '" />
                                        </node>
                                        <node concept="37vLTw" id="3Qp4N06bykw" role="3uHU7w">
                                          <ref role="3cqZAo" node="3Qp4N06byke" resolve="symbol" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3KbdKl" id="3Qp4N06bykx" role="3KbHQx">
                              <node concept="Rm8GO" id="3Qp4N06byky" role="3Kbmr1">
                                <ref role="Rm8GQ" to="nc4n:2fk6$tOpINP" resolve="EQUALS" />
                                <ref role="1Px2BO" to="nc4n:2fk6$tOpINk" resolve="BuiltinConstraintSymbol" />
                              </node>
                              <node concept="3clFbS" id="3Qp4N06bykz" role="3Kbo56">
                                <node concept="3cpWs6" id="3Qp4N06byk$" role="3cqZAp">
                                  <node concept="10M0yZ" id="3Qp4N06byk_" role="3cqZAk">
                                    <ref role="1PxDUh" to="oy3s:2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                                    <ref role="3cqZAo" to="oy3s:2GO7tyJY8Rr" resolve="INSTANCE" />
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
        </node>
        <node concept="3clFbH" id="3xj1Uscty2E" role="3cqZAp" />
        <node concept="3cpWs6" id="3xj1Uscu5Gi" role="3cqZAp">
          <node concept="2YIFZM" id="3xj1UscsvAf" role="3cqZAk">
            <ref role="1Pybhc" node="3Qp4N06byjn" resolve="CollectRuleTemplates" />
            <ref role="37wK5l" node="3xj1UscsvAa" resolve="generateRules" />
            <node concept="37vLTw" id="3xj1UscsvAd" role="37wK5m">
              <ref role="3cqZAo" node="3Qp4N06byjG" resolve="rtc" />
            </node>
            <node concept="37vLTw" id="3xj1UscsvAe" role="37wK5m">
              <ref role="3cqZAo" node="3Qp4N06byk4" resolve="handler" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3xj1UscsxoY" role="jymVt" />
    <node concept="2YIFZL" id="3xj1UscsvAa" role="jymVt">
      <property role="TrG5h" value="generateRules" />
      <node concept="3Tm1VV" id="3xj1UscsAEg" role="1B3o_S" />
      <node concept="10Oyi0" id="3xj1Uscu4XG" role="3clF45" />
      <node concept="37vLTG" id="3xj1Uscsv_Y" role="3clF46">
        <property role="TrG5h" value="rtc" />
        <node concept="3uibUv" id="3xj1Uscsv_Z" role="1tU5fm">
          <ref role="3uigEE" to="138j:6fdr4UgftiG" resolve="RuleTemplateCollection" />
        </node>
      </node>
      <node concept="37vLTG" id="3xj1UscsvA0" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3uibUv" id="3xj1UscsvA1" role="1tU5fm">
          <ref role="3uigEE" to="nc4n:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
        </node>
      </node>
      <node concept="3clFbS" id="3xj1UscsvyC" role="3clF47">
        <node concept="3clFbH" id="3xj1UscsvyD" role="3cqZAp" />
        <node concept="3cpWs8" id="3xj1UscsvyK" role="3cqZAp">
          <node concept="3cpWsn" id="3xj1UscsvyL" role="3cpWs9">
            <property role="TrG5h" value="sampleModel" />
            <node concept="H_c77" id="3xj1UscsvyM" role="1tU5fm" />
            <node concept="BaHAS" id="3xj1UscsvyN" role="33vP2m">
              <property role="BaHAW" value="jetbrains.mps.lang.typesystem2.samplechecker.sample" />
              <property role="BaGAP" value="" />
              <property role="BaBD8" value="jetbrains.mps.lang.typesystem2.sandbox.satemplate" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3xj1UscsvyO" role="3cqZAp">
          <node concept="3cpWsn" id="3xj1UscsvyP" role="3cpWs9">
            <property role="TrG5h" value="javaLangModel" />
            <node concept="H_c77" id="3xj1UscsvyQ" role="1tU5fm" />
            <node concept="BaHAS" id="3xj1UscsvyR" role="33vP2m">
              <property role="BaHAW" value="java.lang" />
              <property role="BaGAP" value="java_stub" />
              <property role="BaBD8" value="jetbrains.mps.lang.typesystem2.sandbox.satemplate" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3xj1UscsvyS" role="3cqZAp">
          <node concept="3cpWsn" id="3xj1UscsvyT" role="3cpWs9">
            <property role="TrG5h" value="javaIoModel" />
            <node concept="H_c77" id="3xj1UscsvyU" role="1tU5fm" />
            <node concept="BaHAS" id="3xj1UscsvyV" role="33vP2m">
              <property role="BaHAW" value="java.io" />
              <property role="BaGAP" value="java_stub" />
              <property role="BaBD8" value="jetbrains.mps.lang.typesystem2.sandbox.satemplate" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2KVRGowUt8z" role="3cqZAp">
          <node concept="3cpWsn" id="2KVRGowUt8$" role="3cpWs9">
            <property role="TrG5h" value="javaUtilModel" />
            <node concept="H_c77" id="2KVRGowUt8_" role="1tU5fm" />
            <node concept="BaHAS" id="2KVRGowUt8A" role="33vP2m">
              <property role="BaHAW" value="java.util" />
              <property role="BaGAP" value="java_stub" />
              <property role="BaBD8" value="jetbrains.mps.lang.typesystem2.sandbox.satemplate" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3xj1UscsvyW" role="3cqZAp" />
        <node concept="3cpWs8" id="3xj1UscsvyE" role="3cqZAp">
          <node concept="3cpWsn" id="3xj1UscsvyF" role="3cpWs9">
            <property role="TrG5h" value="generator" />
            <node concept="3uibUv" id="3xj1UscsvyG" role="1tU5fm">
              <ref role="3uigEE" to="bdf1:12yN8DyF_E1" resolve="TypecheckingRuleGenerator" />
            </node>
            <node concept="2ShNRf" id="3xj1UscsvyH" role="33vP2m">
              <node concept="1pGfFk" id="3xj1UscsvyI" role="2ShVmc">
                <ref role="37wK5l" to="bdf1:7Oc59RSy_Op" resolve="TypecheckingRuleGenerator" />
                <node concept="37vLTw" id="3xj1UscsvA6" role="37wK5m">
                  <ref role="3cqZAo" node="3xj1Uscsv_Y" resolve="rtc" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3xj1UscsvyX" role="3cqZAp" />
        <node concept="3cpWs8" id="3xj1UsctHLj" role="3cqZAp">
          <node concept="3cpWsn" id="3xj1UsctHLm" role="3cpWs9">
            <property role="TrG5h" value="errors" />
            <node concept="10Oyi0" id="3xj1UsctHLh" role="1tU5fm" />
            <node concept="3cmrfG" id="3xj1UsctHWs" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3xj1UsctHWG" role="3cqZAp" />
        <node concept="3clFbF" id="5NuEpF1r8KC" role="3cqZAp">
          <node concept="d57v9" id="5NuEpF1ra3T" role="3clFbG">
            <node concept="2YIFZM" id="5NuEpF1rq1d" role="37vLTx">
              <ref role="1Pybhc" node="3Qp4N06byjn" resolve="CollectRuleTemplates" />
              <ref role="37wK5l" node="5NuEpF1pEFm" resolve="generateRulesWithNoInput" />
              <node concept="37vLTw" id="5NuEpF1roHd" role="37wK5m">
                <ref role="3cqZAo" node="3xj1UscsvyF" resolve="generator" />
              </node>
              <node concept="37vLTw" id="5NuEpF1rpvb" role="37wK5m">
                <ref role="3cqZAo" node="3xj1UscsvA0" resolve="handler" />
              </node>
            </node>
            <node concept="37vLTw" id="5NuEpF1r8KA" role="37vLTJ">
              <ref role="3cqZAo" node="3xj1UsctHLm" resolve="errors" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5NuEpF1r6$3" role="3cqZAp" />
        <node concept="1DcWWT" id="3xj1UscsvyY" role="3cqZAp">
          <node concept="3clFbS" id="3xj1UscsvyZ" role="2LFqv$">
            <node concept="3clFbF" id="3xj1UscsVnA" role="3cqZAp">
              <node concept="d57v9" id="3xj1UsctIbg" role="3clFbG">
                <node concept="37vLTw" id="3xj1UsctIwZ" role="37vLTJ">
                  <ref role="3cqZAo" node="3xj1UsctHLm" resolve="errors" />
                </node>
                <node concept="2YIFZM" id="3xj1UscsVn_" role="37vLTx">
                  <ref role="1Pybhc" node="3Qp4N06byjn" resolve="CollectRuleTemplates" />
                  <ref role="37wK5l" node="3xj1UscsVnv" resolve="generateRulesInRoot" />
                  <node concept="37vLTw" id="3xj1UscsVny" role="37wK5m">
                    <ref role="3cqZAo" node="3xj1UscsvyF" resolve="generator" />
                  </node>
                  <node concept="37vLTw" id="3xj1UscsVnz" role="37wK5m">
                    <ref role="3cqZAo" node="3xj1UscsvzD" resolve="root" />
                  </node>
                  <node concept="37vLTw" id="3xj1UscsVn$" role="37wK5m">
                    <ref role="3cqZAo" node="3xj1UscsvA0" resolve="handler" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3xj1UscsvzD" role="1Duv9x">
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="3xj1UscsvzE" role="1tU5fm" />
          </node>
          <node concept="2OqwBi" id="3xj1UscsvzF" role="1DdaDG">
            <node concept="37vLTw" id="3xj1UscsvzG" role="2Oq$k0">
              <ref role="3cqZAo" node="3xj1UscsvyL" resolve="sampleModel" />
            </node>
            <node concept="2RRcyG" id="3xj1UscsvzH" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="3xj1UscsvzJ" role="3cqZAp" />
        <node concept="1DcWWT" id="3xj1UscsvzK" role="3cqZAp">
          <node concept="3clFbS" id="3xj1UscsvzL" role="2LFqv$">
            <node concept="3clFbF" id="3xj1UsctIVX" role="3cqZAp">
              <node concept="d57v9" id="3xj1UsctIVY" role="3clFbG">
                <node concept="37vLTw" id="3xj1UsctIVZ" role="37vLTJ">
                  <ref role="3cqZAo" node="3xj1UsctHLm" resolve="errors" />
                </node>
                <node concept="2YIFZM" id="3xj1UsctIW0" role="37vLTx">
                  <ref role="1Pybhc" node="3Qp4N06byjn" resolve="CollectRuleTemplates" />
                  <ref role="37wK5l" node="3xj1UscsVnv" resolve="generateRulesInRoot" />
                  <node concept="37vLTw" id="3xj1UsctIW1" role="37wK5m">
                    <ref role="3cqZAo" node="3xj1UscsvyF" resolve="generator" />
                  </node>
                  <node concept="37vLTw" id="3xj1UsctIW2" role="37wK5m">
                    <ref role="3cqZAo" node="3xj1Uscsv$r" resolve="root" />
                  </node>
                  <node concept="37vLTw" id="3xj1UsctIW3" role="37wK5m">
                    <ref role="3cqZAo" node="3xj1UscsvA0" resolve="handler" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3xj1Uscsv$r" role="1Duv9x">
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="3xj1Uscsv$s" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
            </node>
          </node>
          <node concept="2OqwBi" id="3xj1Uscsv$u" role="1DdaDG">
            <node concept="37vLTw" id="3xj1Uscsv$v" role="2Oq$k0">
              <ref role="3cqZAo" node="3xj1UscsvyP" resolve="javaLangModel" />
            </node>
            <node concept="2RRcyG" id="3xj1Uscsv$w" role="2OqNvi">
              <ref role="2RRcyH" to="tpee:fz12cDA" resolve="ClassConcept" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3xj1Usct4p1" role="3cqZAp" />
        <node concept="1DcWWT" id="3xj1Uscsv$H" role="3cqZAp">
          <node concept="3clFbS" id="3xj1Uscsv$I" role="2LFqv$">
            <node concept="3clFbF" id="3xj1UsctOog" role="3cqZAp">
              <node concept="d57v9" id="3xj1UsctOoh" role="3clFbG">
                <node concept="37vLTw" id="3xj1UsctOoi" role="37vLTJ">
                  <ref role="3cqZAo" node="3xj1UsctHLm" resolve="errors" />
                </node>
                <node concept="2YIFZM" id="3xj1UsctOoj" role="37vLTx">
                  <ref role="1Pybhc" node="3Qp4N06byjn" resolve="CollectRuleTemplates" />
                  <ref role="37wK5l" node="3xj1UscsVnv" resolve="generateRulesInRoot" />
                  <node concept="37vLTw" id="3xj1UsctOok" role="37wK5m">
                    <ref role="3cqZAo" node="3xj1UscsvyF" resolve="generator" />
                  </node>
                  <node concept="37vLTw" id="3xj1UsctOol" role="37wK5m">
                    <ref role="3cqZAo" node="3xj1Uscsv_o" resolve="root" />
                  </node>
                  <node concept="37vLTw" id="3xj1UsctOom" role="37wK5m">
                    <ref role="3cqZAo" node="3xj1UscsvA0" resolve="handler" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3xj1Uscsv_o" role="1Duv9x">
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="3xj1Uscsv_p" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
            </node>
          </node>
          <node concept="2OqwBi" id="3xj1Uscsv_r" role="1DdaDG">
            <node concept="37vLTw" id="3xj1Uscsv_s" role="2Oq$k0">
              <ref role="3cqZAo" node="3xj1UscsvyT" resolve="javaIoModel" />
            </node>
            <node concept="2RRcyG" id="3xj1Uscsv_t" role="2OqNvi">
              <ref role="2RRcyH" to="tpee:fz12cDA" resolve="ClassConcept" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5NuEpF1rQrT" role="3cqZAp" />
        <node concept="1DcWWT" id="2KVRGowUxKR" role="3cqZAp">
          <node concept="3clFbS" id="2KVRGowUxKS" role="2LFqv$">
            <node concept="3clFbF" id="2KVRGowUxKT" role="3cqZAp">
              <node concept="d57v9" id="2KVRGowUxKU" role="3clFbG">
                <node concept="37vLTw" id="2KVRGowUxKV" role="37vLTJ">
                  <ref role="3cqZAo" node="3xj1UsctHLm" resolve="errors" />
                </node>
                <node concept="2YIFZM" id="2KVRGowUxKW" role="37vLTx">
                  <ref role="1Pybhc" node="3Qp4N06byjn" resolve="CollectRuleTemplates" />
                  <ref role="37wK5l" node="3xj1UscsVnv" resolve="generateRulesInRoot" />
                  <node concept="37vLTw" id="2KVRGowUxKX" role="37wK5m">
                    <ref role="3cqZAo" node="3xj1UscsvyF" resolve="generator" />
                  </node>
                  <node concept="37vLTw" id="2KVRGowUxKY" role="37wK5m">
                    <ref role="3cqZAo" node="2KVRGowUxL0" resolve="root" />
                  </node>
                  <node concept="37vLTw" id="2KVRGowUxKZ" role="37wK5m">
                    <ref role="3cqZAo" node="3xj1UscsvA0" resolve="handler" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2KVRGowUxL0" role="1Duv9x">
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="2KVRGowUxL1" role="1tU5fm">
              <ref role="ehGHo" to="tpee:g7pOWCK" resolve="Classifier" />
            </node>
          </node>
          <node concept="2OqwBi" id="2KVRGowUxL3" role="1DdaDG">
            <node concept="37vLTw" id="2KVRGowU$ge" role="2Oq$k0">
              <ref role="3cqZAo" node="2KVRGowUt8$" resolve="javaUtilModel" />
            </node>
            <node concept="2RRcyG" id="2KVRGowUxL5" role="2OqNvi">
              <ref role="2RRcyH" to="tpee:g7HP654" resolve="Interface" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3xj1Uscsv_E" role="3cqZAp" />
        <node concept="34ab3g" id="3xj1Uscsv_F" role="3cqZAp">
          <property role="35gtTG" value="info" />
          <node concept="3cpWs3" id="3xj1Uscsv_G" role="34bqiv">
            <node concept="37vLTw" id="3xj1UscsvA5" role="3uHU7w">
              <ref role="3cqZAo" node="3xj1UscsvA0" resolve="handler" />
            </node>
            <node concept="Xl_RD" id="3xj1Uscsv_I" role="3uHU7B">
              <property role="Xl_RC" value="handler&gt; " />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3xj1Uscsv_J" role="3cqZAp" />
        <node concept="3clFbF" id="3xj1Usct36R" role="3cqZAp">
          <node concept="2YIFZM" id="3xj1Usct36Q" role="3clFbG">
            <ref role="1Pybhc" node="3Qp4N06byjn" resolve="CollectRuleTemplates" />
            <ref role="37wK5l" node="3xj1Usct36M" resolve="produceRules" />
            <node concept="37vLTw" id="3xj1Usct36P" role="37wK5m">
              <ref role="3cqZAo" node="3xj1UscsvA0" resolve="handler" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3xj1Uscu48s" role="3cqZAp" />
        <node concept="3cpWs6" id="3xj1Uscu4fR" role="3cqZAp">
          <node concept="37vLTw" id="3xj1Uscu4hU" role="3cqZAk">
            <ref role="3cqZAo" node="3xj1UsctHLm" resolve="errors" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3xj1Usct3GN" role="jymVt" />
    <node concept="2YIFZL" id="3xj1Usct36M" role="jymVt">
      <property role="TrG5h" value="produceRules" />
      <node concept="3Tm6S6" id="3xj1Usct36N" role="1B3o_S" />
      <node concept="3cqZAl" id="3xj1Usct36O" role="3clF45" />
      <node concept="37vLTG" id="3xj1Usct36H" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3uibUv" id="3xj1Usct36I" role="1tU5fm">
          <ref role="3uigEE" to="nc4n:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
        </node>
      </node>
      <node concept="3clFbS" id="3xj1Usct36u" role="3clF47">
        <node concept="3cpWs8" id="3xj1Usct36y" role="3cqZAp">
          <node concept="3cpWsn" id="3xj1Usct36z" role="3cpWs9">
            <property role="TrG5h" value="chrModel" />
            <node concept="H_c77" id="3xj1Usct36$" role="1tU5fm" />
            <node concept="BaHAS" id="3xj1Usct36_" role="33vP2m">
              <property role="BaBD8" value="sand.jchr" />
              <property role="BaHAW" value="jetbrains.mps.lang.typesystem2.samplechecker.chr" />
              <property role="BaGAP" value="" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3xj1Usct43r" role="3cqZAp" />
        <node concept="1QHqEM" id="3xj1Usct36v" role="3cqZAp">
          <node concept="1QHqEC" id="3xj1Usct36w" role="1QHqEI">
            <node concept="3clFbS" id="3xj1Usct36x" role="1bW5cS">
              <node concept="3clFbF" id="3xj1Usct36A" role="3cqZAp">
                <node concept="2OqwBi" id="3xj1Usct36B" role="3clFbG">
                  <node concept="2ShNRf" id="3xj1Usct36C" role="2Oq$k0">
                    <node concept="1pGfFk" id="3xj1Usct36D" role="2ShVmc">
                      <ref role="37wK5l" to="9kr0:ZqZbw4Qjv7" resolve="ChrHandlerProducer" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3xj1Usct36E" role="2OqNvi">
                    <ref role="37wK5l" to="9kr0:ZqZbw4Qjwa" resolve="produce" />
                    <node concept="37vLTw" id="3xj1Usct36F" role="37wK5m">
                      <ref role="3cqZAo" node="3xj1Usct36z" resolve="chrModel" />
                    </node>
                    <node concept="37vLTw" id="3xj1Usct36J" role="37wK5m">
                      <ref role="3cqZAo" node="3xj1Usct36H" resolve="handler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3xj1UscsVXP" role="jymVt" />
    <node concept="2YIFZL" id="3xj1UscsVnv" role="jymVt">
      <property role="TrG5h" value="generateRulesInRoot" />
      <node concept="3Tm6S6" id="3xj1UscsVnw" role="1B3o_S" />
      <node concept="10Oyi0" id="3xj1UsctHbY" role="3clF45" />
      <node concept="37vLTG" id="3xj1UscsVnj" role="3clF46">
        <property role="TrG5h" value="generator" />
        <node concept="3uibUv" id="3xj1UscsVnk" role="1tU5fm">
          <ref role="3uigEE" to="bdf1:12yN8DyF_E1" resolve="TypecheckingRuleGenerator" />
        </node>
      </node>
      <node concept="37vLTG" id="3xj1UscsVnl" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="3xj1UscsVnm" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3xj1UscsVnn" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3uibUv" id="3xj1UscsVno" role="1tU5fm">
          <ref role="3uigEE" to="nc4n:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
        </node>
      </node>
      <node concept="3clFbS" id="3xj1UscsVmD" role="3clF47">
        <node concept="3cpWs8" id="3xj1UscsVmE" role="3cqZAp">
          <node concept="3cpWsn" id="3xj1UscsVmF" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="3xj1UscsVmG" role="1tU5fm">
              <ref role="3uigEE" to="4t1t:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2OqwBi" id="3xj1UscsVmH" role="33vP2m">
              <node concept="37vLTw" id="3xj1UscsVns" role="2Oq$k0">
                <ref role="3cqZAo" node="3xj1UscsVnj" resolve="generator" />
              </node>
              <node concept="liA8E" id="3xj1UscsVmJ" role="2OqNvi">
                <ref role="37wK5l" to="bdf1:12yN8DyNqcj" resolve="generateAll" />
                <node concept="37vLTw" id="3xj1UscsVnr" role="37wK5m">
                  <ref role="3cqZAo" node="3xj1UscsVnl" resolve="root" />
                </node>
                <node concept="37vLTw" id="3xj1UscsVnq" role="37wK5m">
                  <ref role="3cqZAo" node="3xj1UscsVnn" resolve="handler" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3xj1UscsVmU" role="3cqZAp">
          <node concept="2OqwBi" id="3xj1UscsVng" role="3clFbw">
            <node concept="37vLTw" id="3xj1UscsVnh" role="2Oq$k0">
              <ref role="3cqZAo" node="3xj1UscsVmF" resolve="result" />
            </node>
            <node concept="liA8E" id="3xj1UscsVni" role="2OqNvi">
              <ref role="37wK5l" to="4t1t:7Oc59RS_hsj" resolve="isSuccessful" />
            </node>
          </node>
          <node concept="3clFbS" id="3xj1Usct_75" role="3clFbx">
            <node concept="34ab3g" id="3xj1UscsVmM" role="3cqZAp">
              <property role="35gtTG" value="info" />
              <node concept="3cpWs3" id="3xj1UscsVmN" role="34bqiv">
                <node concept="3cpWs3" id="3xj1UscsVmO" role="3uHU7B">
                  <node concept="3cpWs3" id="3xj1UscsVmP" role="3uHU7B">
                    <node concept="Xl_RD" id="3xj1UscsVmQ" role="3uHU7B">
                      <property role="Xl_RC" value="result&gt; " />
                    </node>
                    <node concept="37vLTw" id="3xj1UscsVmR" role="3uHU7w">
                      <ref role="3cqZAo" node="3xj1UscsVmF" resolve="result" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3xj1UscsVmS" role="3uHU7w">
                    <property role="Xl_RC" value=" @" />
                  </node>
                </node>
                <node concept="37vLTw" id="3xj1UscsVnp" role="3uHU7w">
                  <ref role="3cqZAo" node="3xj1UscsVnl" resolve="root" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3xj1UsctAdR" role="3cqZAp">
              <node concept="3cmrfG" id="3xj1UsctAu7" role="3cqZAk">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3clFbH" id="5NuEpF1r5pl" role="3cqZAp" />
          </node>
          <node concept="9aQIb" id="3xj1Usct_Dk" role="9aQIa">
            <node concept="3clFbS" id="3xj1UscsVmV" role="9aQI4">
              <node concept="3clFbF" id="3xj1UscsVmW" role="3cqZAp">
                <node concept="2OqwBi" id="3xj1UscsVmX" role="3clFbG">
                  <node concept="2OqwBi" id="3xj1UscsVmY" role="2Oq$k0">
                    <node concept="2OqwBi" id="3xj1UscsVmZ" role="2Oq$k0">
                      <node concept="37vLTw" id="3xj1UscsVn0" role="2Oq$k0">
                        <ref role="3cqZAo" node="3xj1UscsVmF" resolve="result" />
                      </node>
                      <node concept="liA8E" id="3xj1UscsVn1" role="2OqNvi">
                        <ref role="37wK5l" to="4t1t:7Oc59RSEnG3" resolve="errors" />
                      </node>
                    </node>
                    <node concept="39bAoz" id="3xj1UscsVn2" role="2OqNvi" />
                  </node>
                  <node concept="2es0OD" id="3xj1UscsVn3" role="2OqNvi">
                    <node concept="1bVj0M" id="3xj1UscsVn4" role="23t8la">
                      <node concept="3clFbS" id="3xj1UscsVn5" role="1bW5cS">
                        <node concept="34ab3g" id="3xj1UscsVn6" role="3cqZAp">
                          <property role="35gtTG" value="warn" />
                          <property role="34fQS0" value="true" />
                          <node concept="3cpWs3" id="3xj1UscsVn7" role="34bqiv">
                            <node concept="37vLTw" id="3xj1UscsVn8" role="3uHU7w">
                              <ref role="3cqZAo" node="3xj1UscsVnd" resolve="e" />
                            </node>
                            <node concept="Xl_RD" id="3xj1UscsVn9" role="3uHU7B">
                              <property role="Xl_RC" value="error&gt; " />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="3xj1UscsVna" role="34bMjA">
                            <node concept="37vLTw" id="3xj1UscsVnb" role="2Oq$k0">
                              <ref role="3cqZAo" node="3xj1UscsVnd" resolve="e" />
                            </node>
                            <node concept="liA8E" id="3xj1UscsVnc" role="2OqNvi">
                              <ref role="37wK5l" to="4t1t:7Oc59RSJGG8" resolve="exception" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3xj1UscsVnd" role="1bW2Oz">
                        <property role="TrG5h" value="e" />
                        <node concept="2jxLKc" id="3xj1UscsVne" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3xj1UsctAWM" role="3cqZAp">
                <node concept="2OqwBi" id="3xj1UsctFJ3" role="3cqZAk">
                  <node concept="2OqwBi" id="3xj1UsctEXP" role="2Oq$k0">
                    <node concept="37vLTw" id="3xj1UsctEqJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="3xj1UscsVmF" resolve="result" />
                    </node>
                    <node concept="liA8E" id="3xj1UsctFsL" role="2OqNvi">
                      <ref role="37wK5l" to="4t1t:7Oc59RSEnG3" resolve="errors" />
                    </node>
                  </node>
                  <node concept="1Rwk04" id="3xj1UsctGGJ" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5NuEpF1pFrp" role="jymVt" />
    <node concept="2YIFZL" id="5NuEpF1pEFm" role="jymVt">
      <property role="TrG5h" value="generateRulesWithNoInput" />
      <node concept="3Tm6S6" id="5NuEpF1pEFn" role="1B3o_S" />
      <node concept="10Oyi0" id="5NuEpF1pEFo" role="3clF45" />
      <node concept="37vLTG" id="5NuEpF1pEFp" role="3clF46">
        <property role="TrG5h" value="generator" />
        <node concept="3uibUv" id="5NuEpF1pEFq" role="1tU5fm">
          <ref role="3uigEE" to="bdf1:12yN8DyF_E1" resolve="TypecheckingRuleGenerator" />
        </node>
      </node>
      <node concept="37vLTG" id="5NuEpF1pEFt" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3uibUv" id="5NuEpF1pEFu" role="1tU5fm">
          <ref role="3uigEE" to="nc4n:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
        </node>
      </node>
      <node concept="3clFbS" id="5NuEpF1pEFv" role="3clF47">
        <node concept="3cpWs8" id="5NuEpF1pEFw" role="3cqZAp">
          <node concept="3cpWsn" id="5NuEpF1pEFx" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="5NuEpF1pEFy" role="1tU5fm">
              <ref role="3uigEE" to="4t1t:7Oc59RSEjdb" resolve="Result" />
            </node>
            <node concept="2OqwBi" id="5NuEpF1pEFz" role="33vP2m">
              <node concept="37vLTw" id="5NuEpF1pEF$" role="2Oq$k0">
                <ref role="3cqZAo" node="5NuEpF1pEFp" resolve="generator" />
              </node>
              <node concept="liA8E" id="5NuEpF1pEF_" role="2OqNvi">
                <ref role="37wK5l" to="bdf1:5NuEpF1pL7f" resolve="generateAllWithNoInput" />
                <node concept="37vLTw" id="5NuEpF1pEFB" role="37wK5m">
                  <ref role="3cqZAo" node="5NuEpF1pEFt" resolve="handler" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5NuEpF1pEFC" role="3cqZAp">
          <node concept="2OqwBi" id="5NuEpF1pEFD" role="3clFbw">
            <node concept="37vLTw" id="5NuEpF1pEFE" role="2Oq$k0">
              <ref role="3cqZAo" node="5NuEpF1pEFx" resolve="result" />
            </node>
            <node concept="liA8E" id="5NuEpF1pEFF" role="2OqNvi">
              <ref role="37wK5l" to="4t1t:7Oc59RS_hsj" resolve="isSuccessful" />
            </node>
          </node>
          <node concept="3clFbS" id="5NuEpF1pEFG" role="3clFbx">
            <node concept="34ab3g" id="5NuEpF1pEFH" role="3cqZAp">
              <property role="35gtTG" value="info" />
              <node concept="3cpWs3" id="5NuEpF1pEFK" role="34bqiv">
                <node concept="Xl_RD" id="5NuEpF1pEFL" role="3uHU7B">
                  <property role="Xl_RC" value="result&gt; " />
                </node>
                <node concept="37vLTw" id="5NuEpF1pEFM" role="3uHU7w">
                  <ref role="3cqZAo" node="5NuEpF1pEFx" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5NuEpF1pEFP" role="3cqZAp">
              <node concept="3cmrfG" id="5NuEpF1pEFQ" role="3cqZAk">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
            <node concept="3clFbH" id="5NuEpF1r5bj" role="3cqZAp" />
          </node>
          <node concept="9aQIb" id="5NuEpF1pEFR" role="9aQIa">
            <node concept="3clFbS" id="5NuEpF1pEFS" role="9aQI4">
              <node concept="3clFbF" id="5NuEpF1pEFT" role="3cqZAp">
                <node concept="2OqwBi" id="5NuEpF1pEFU" role="3clFbG">
                  <node concept="2OqwBi" id="5NuEpF1pEFV" role="2Oq$k0">
                    <node concept="2OqwBi" id="5NuEpF1pEFW" role="2Oq$k0">
                      <node concept="37vLTw" id="5NuEpF1pEFX" role="2Oq$k0">
                        <ref role="3cqZAo" node="5NuEpF1pEFx" resolve="result" />
                      </node>
                      <node concept="liA8E" id="5NuEpF1pEFY" role="2OqNvi">
                        <ref role="37wK5l" to="4t1t:7Oc59RSEnG3" resolve="errors" />
                      </node>
                    </node>
                    <node concept="39bAoz" id="5NuEpF1pEFZ" role="2OqNvi" />
                  </node>
                  <node concept="2es0OD" id="5NuEpF1pEG0" role="2OqNvi">
                    <node concept="1bVj0M" id="5NuEpF1pEG1" role="23t8la">
                      <node concept="3clFbS" id="5NuEpF1pEG2" role="1bW5cS">
                        <node concept="34ab3g" id="5NuEpF1pEG3" role="3cqZAp">
                          <property role="35gtTG" value="warn" />
                          <property role="34fQS0" value="true" />
                          <node concept="3cpWs3" id="5NuEpF1pEG4" role="34bqiv">
                            <node concept="37vLTw" id="5NuEpF1pEG5" role="3uHU7w">
                              <ref role="3cqZAo" node="5NuEpF1pEGa" resolve="e" />
                            </node>
                            <node concept="Xl_RD" id="5NuEpF1pEG6" role="3uHU7B">
                              <property role="Xl_RC" value="error&gt; " />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="5NuEpF1pEG7" role="34bMjA">
                            <node concept="37vLTw" id="5NuEpF1pEG8" role="2Oq$k0">
                              <ref role="3cqZAo" node="5NuEpF1pEGa" resolve="e" />
                            </node>
                            <node concept="liA8E" id="5NuEpF1pEG9" role="2OqNvi">
                              <ref role="37wK5l" to="4t1t:7Oc59RSJGG8" resolve="exception" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="5NuEpF1pEGa" role="1bW2Oz">
                        <property role="TrG5h" value="e" />
                        <node concept="2jxLKc" id="5NuEpF1pEGb" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5NuEpF1pEGc" role="3cqZAp">
                <node concept="2OqwBi" id="5NuEpF1pEGd" role="3cqZAk">
                  <node concept="2OqwBi" id="5NuEpF1pEGe" role="2Oq$k0">
                    <node concept="37vLTw" id="5NuEpF1pEGf" role="2Oq$k0">
                      <ref role="3cqZAo" node="5NuEpF1pEFx" resolve="result" />
                    </node>
                    <node concept="liA8E" id="5NuEpF1pEGg" role="2OqNvi">
                      <ref role="37wK5l" to="4t1t:7Oc59RSEnG3" resolve="errors" />
                    </node>
                  </node>
                  <node concept="1Rwk04" id="5NuEpF1pEGh" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3Qp4N06bynP" role="jymVt" />
    <node concept="2YIFZL" id="3Qp4N06bynQ" role="jymVt">
      <property role="TrG5h" value="getRuleManifest" />
      <node concept="3Tm6S6" id="3Qp4N06bynR" role="1B3o_S" />
      <node concept="3uibUv" id="3Qp4N06bynS" role="3clF45">
        <ref role="3uigEE" to="qiww:6w6CYIRh9BG" resolve="AbstractRuleTemplateManifest" />
      </node>
      <node concept="37vLTG" id="3Qp4N06bynT" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="3Qp4N06bynU" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3Qp4N06bynV" role="3clF47">
        <node concept="3cpWs8" id="3Qp4N06bynW" role="3cqZAp">
          <node concept="3cpWsn" id="3Qp4N06bynX" role="3cpWs9">
            <property role="TrG5h" value="fqClassName" />
            <node concept="17QB3L" id="3Qp4N06bynY" role="1tU5fm" />
            <node concept="2YIFZM" id="3Qp4N06bynZ" role="33vP2m">
              <ref role="37wK5l" to="msyo:~JavaNameUtil.fqClassName(org.jetbrains.mps.openapi.model.SModel,java.lang.String):java.lang.String" resolve="fqClassName" />
              <ref role="1Pybhc" to="msyo:~JavaNameUtil" resolve="JavaNameUtil" />
              <node concept="37vLTw" id="3Qp4N06byo0" role="37wK5m">
                <ref role="3cqZAo" node="3Qp4N06bynT" resolve="model" />
              </node>
              <node concept="Xl_RD" id="3Qp4N06byo1" role="37wK5m">
                <property role="Xl_RC" value="RuleTemplateManifest" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3Qp4N06byo2" role="3cqZAp">
          <node concept="3cpWsn" id="3Qp4N06byo3" role="3cpWs9">
            <property role="TrG5h" value="manifest" />
            <node concept="3uibUv" id="3Qp4N06byo4" role="1tU5fm">
              <ref role="3uigEE" to="qiww:6w6CYIRh9BG" resolve="AbstractRuleTemplateManifest" />
            </node>
            <node concept="10Nm6u" id="3Qp4N06byo5" role="33vP2m" />
          </node>
        </node>
        <node concept="SfApY" id="3Qp4N06byo6" role="3cqZAp">
          <node concept="3clFbS" id="3Qp4N06byo7" role="SfCbr">
            <node concept="3cpWs8" id="3Qp4N06byo8" role="3cqZAp">
              <node concept="3cpWsn" id="3Qp4N06byo9" role="3cpWs9">
                <property role="TrG5h" value="clazz" />
                <node concept="3uibUv" id="3Qp4N06byoa" role="1tU5fm">
                  <ref role="3uigEE" to="e2lb:~Class" resolve="Class" />
                  <node concept="3uibUv" id="3Qp4N06byob" role="11_B2D">
                    <ref role="3uigEE" to="qiww:6w6CYIRh9BG" resolve="AbstractRuleTemplateManifest" />
                  </node>
                </node>
                <node concept="10QFUN" id="3Qp4N06byoc" role="33vP2m">
                  <node concept="3uibUv" id="3Qp4N06byod" role="10QFUM">
                    <ref role="3uigEE" to="e2lb:~Class" resolve="Class" />
                    <node concept="3uibUv" id="3Qp4N06byoe" role="11_B2D">
                      <ref role="3uigEE" to="qiww:6w6CYIRh9BG" resolve="AbstractRuleTemplateManifest" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="3Qp4N06byof" role="10QFUP">
                    <ref role="37wK5l" to="e2lb:~Class.forName(java.lang.String):java.lang.Class" resolve="forName" />
                    <ref role="1Pybhc" to="e2lb:~Class" resolve="Class" />
                    <node concept="37vLTw" id="3Qp4N06byog" role="37wK5m">
                      <ref role="3cqZAo" node="3Qp4N06bynX" resolve="fqClassName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3Qp4N06byoh" role="3cqZAp">
              <node concept="37vLTI" id="3Qp4N06byoi" role="3clFbG">
                <node concept="2OqwBi" id="3Qp4N06byoj" role="37vLTx">
                  <node concept="37vLTw" id="3Qp4N06byok" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Qp4N06byo9" resolve="clazz" />
                  </node>
                  <node concept="liA8E" id="3Qp4N06byol" role="2OqNvi">
                    <ref role="37wK5l" to="e2lb:~Class.newInstance():java.lang.Object" resolve="newInstance" />
                  </node>
                </node>
                <node concept="37vLTw" id="3Qp4N06byom" role="37vLTJ">
                  <ref role="3cqZAo" node="3Qp4N06byo3" resolve="manifest" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="3Qp4N06byon" role="TEbGg">
            <node concept="3clFbS" id="3Qp4N06byoo" role="TDEfX">
              <node concept="34ab3g" id="3Qp4N06byop" role="3cqZAp">
                <property role="35gtTG" value="error" />
                <property role="34fQS0" value="true" />
                <node concept="Xl_RD" id="3Qp4N06byoq" role="34bqiv">
                  <property role="Xl_RC" value="WTF" />
                </node>
                <node concept="37vLTw" id="3Qp4N06byor" role="34bMjA">
                  <ref role="3cqZAo" node="3Qp4N06byos" resolve="e" />
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="3Qp4N06byos" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="3Qp4N06byot" role="1tU5fm">
                <ref role="3uigEE" to="e2lb:~Exception" resolve="Exception" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3Qp4N06byou" role="3cqZAp">
          <node concept="37vLTw" id="3Qp4N06byov" role="3cqZAk">
            <ref role="3cqZAo" node="3Qp4N06byo3" resolve="manifest" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3Qp4N06byow" role="jymVt" />
    <node concept="3Tm1VV" id="3Qp4N06byox" role="1B3o_S" />
  </node>
  <node concept="2DaZZR" id="3Qp4N06byoy" />
  <node concept="sE7Ow" id="3Qp4N06byoz">
    <property role="TrG5h" value="TestRuleTemplate" />
    <property role="2uzpH1" value="Collect Rules" />
    <node concept="tnohg" id="3Qp4N06byo$" role="tncku">
      <node concept="3clFbS" id="3Qp4N06byo_" role="2VODD2">
        <node concept="3clFbH" id="3Qp4N06byoA" role="3cqZAp" />
        <node concept="3cpWs8" id="3xj1Uscu8ue" role="3cqZAp">
          <node concept="3cpWsn" id="3xj1Uscu8uf" role="3cpWs9">
            <property role="TrG5h" value="errors" />
            <node concept="10Oyi0" id="3xj1Uscu8ud" role="1tU5fm" />
            <node concept="2YIFZM" id="3xj1Uscu8ug" role="33vP2m">
              <ref role="37wK5l" node="3Qp4N06byjp" resolve="collect" />
              <ref role="1Pybhc" node="3Qp4N06byjn" resolve="CollectRuleTemplates" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3xj1Uscub37" role="3cqZAp" />
        <node concept="3clFbJ" id="3xj1Uscudi7" role="3cqZAp">
          <node concept="3clFbS" id="3xj1Uscudia" role="3clFbx">
            <node concept="3clFbF" id="3Qp4N06byoF" role="3cqZAp">
              <node concept="2YIFZM" id="3Qp4N06byoG" role="3clFbG">
                <ref role="37wK5l" to="810:~Messages.showInfoMessage(java.lang.String,java.lang.String):void" resolve="showInfoMessage" />
                <ref role="1Pybhc" to="810:~Messages" resolve="Messages" />
                <node concept="Xl_RD" id="3Qp4N06byoI" role="37wK5m">
                  <property role="Xl_RC" value="Finished without errors" />
                </node>
                <node concept="Xl_RD" id="3Qp4N06byoH" role="37wK5m">
                  <property role="Xl_RC" value="Collect Rules" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3xj1UscudL9" role="3clFbw">
            <node concept="3cmrfG" id="3xj1UscudMk" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="3xj1UscudkJ" role="3uHU7B">
              <ref role="3cqZAo" node="3xj1Uscu8uf" resolve="errors" />
            </node>
          </node>
          <node concept="9aQIb" id="3xj1UscufHE" role="9aQIa">
            <node concept="3clFbS" id="3xj1UscufHF" role="9aQI4">
              <node concept="3clFbF" id="3xj1UscufJT" role="3cqZAp">
                <node concept="2YIFZM" id="3xj1UscufPG" role="3clFbG">
                  <ref role="37wK5l" to="810:~Messages.showWarningDialog(java.lang.String,java.lang.String):void" resolve="showWarningDialog" />
                  <ref role="1Pybhc" to="810:~Messages" resolve="Messages" />
                  <node concept="3cpWs3" id="3xj1Uscug0G" role="37wK5m">
                    <node concept="3cpWs3" id="3xj1UscuhcK" role="3uHU7B">
                      <node concept="Xl_RD" id="3xj1UscuheI" role="3uHU7B">
                        <property role="Xl_RC" value="Encountered " />
                      </node>
                      <node concept="37vLTw" id="3xj1Uscug2J" role="3uHU7w">
                        <ref role="3cqZAo" node="3xj1Uscu8uf" resolve="errors" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="3xj1UscufPI" role="3uHU7w">
                      <property role="Xl_RC" value=" errors" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3xj1UscufPH" role="37wK5m">
                    <property role="Xl_RC" value="Collect Rules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3Qp4N06byoJ" role="3cqZAp" />
      </node>
    </node>
  </node>
</model>

