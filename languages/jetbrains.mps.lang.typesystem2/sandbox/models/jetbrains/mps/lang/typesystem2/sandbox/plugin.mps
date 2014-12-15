<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8055a67d-9ec8-44d4-8eb0-5495d04cad6d(jetbrains.mps.lang.typesystem2.sandbox.plugin)">
  <persistence version="9" />
  <languages>
    <use id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal" version="-1" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="-1" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="-1" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="-1" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="138j" ref="r:d390cf6e-3a05-4c9d-8eb3-bcdfbfd3bf8f(jetbrains.mps.typechecking.rule.collection)" />
    <import index="tpg2" ref="r:fce0252c-0765-4ee2-a00c-80dfd47d2d03(jetbrains.mps.lang.typesystem2.sandbox.template)" />
    <import index="qiww" ref="r:7e0616dc-e55e-4c35-beca-da14b0c8f8bd(jetbrains.mps.lang.typesystem2.runtime.template)" />
    <import index="fvp9" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.ui.ex(MPS.IDEA/com.intellij.openapi.ui.ex@java_stub)" />
    <import index="810" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.ui(MPS.IDEA/com.intellij.openapi.ui@java_stub)" />
    <import index="bdf1" ref="r:22d5f1f3-a483-4725-abc3-c5e9c2c56292(jetbrains.mps.typechecking.rule.generator)" />
    <import index="msyo" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.util(MPS.Core/jetbrains.mps.util@java_stub)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="nc4n" ref="r:2a1eb048-898c-47a3-863b-36b04c4b9f7c(jetbrains.mps.lang.typesystem2.runtime.rule)" />
    <import index="4t1t" ref="r:703839e2-c38f-4b71-8602-72ccb87dd74e(jetbrains.mps.lang.typesystem2.runtime.util)" />
    <import index="9kr0" ref="r:0f58be42-48ea-45ab-99f8-158393a0f526(jetbrains.mps.typechecking.handler.producer)" />
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
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
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
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
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
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
  <node concept="312cEu" id="6fdr4Ugdk4H">
    <property role="TrG5h" value="CollectRuleTemplates" />
    <node concept="2tJIrI" id="6fdr4Ugdk54" role="jymVt" />
    <node concept="2YIFZL" id="6fdr4Ugdk5g" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="37vLTG" id="6fdr4Ugdk5h" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="12yN8DyKwkB" role="1tU5fm">
          <node concept="17QB3L" id="6fdr4Ugdk5j" role="8Xvag" />
        </node>
      </node>
      <node concept="3cqZAl" id="6fdr4Ugdk5k" role="3clF45" />
      <node concept="3Tm1VV" id="6fdr4Ugdk5l" role="1B3o_S" />
      <node concept="3clFbS" id="6fdr4Ugdk5m" role="3clF47">
        <node concept="3clFbH" id="6fdr4Ugdk6A" role="3cqZAp" />
        <node concept="3cpWs8" id="5ntLU8Gk4fg" role="3cqZAp">
          <node concept="3cpWsn" id="5ntLU8Gk4fh" role="3cpWs9">
            <property role="TrG5h" value="templatesModel" />
            <node concept="H_c77" id="5ntLU8Gk4f7" role="1tU5fm" />
            <node concept="BaHAS" id="5ntLU8Gk4fi" role="33vP2m">
              <property role="BaHAW" value="jetbrains.mps.lang.typesystem2.sandbox.template" />
              <property role="BaGAP" value="" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5ntLU8GlgWt" role="3cqZAp">
          <node concept="3cpWsn" id="5ntLU8GlgWu" role="3cpWs9">
            <property role="TrG5h" value="manifest" />
            <node concept="3uibUv" id="5ntLU8GlgWe" role="1tU5fm">
              <ref role="3uigEE" to="qiww:6w6CYIRh9BG" resolve="AbstractRuleTemplateManifest" />
            </node>
            <node concept="2YIFZM" id="5ntLU8Glo52" role="33vP2m">
              <ref role="1Pybhc" node="6fdr4Ugdk4H" resolve="CollectRuleTemplates" />
              <ref role="37wK5l" node="5ntLU8Glo4D" resolve="getRuleManifest" />
              <node concept="37vLTw" id="5ntLU8Glo51" role="37wK5m">
                <ref role="3cqZAo" node="5ntLU8Gk4fh" resolve="templatesModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="12yN8DyMaxw" role="3cqZAp" />
        <node concept="3cpWs8" id="12yN8DyFIel" role="3cqZAp">
          <node concept="3cpWsn" id="12yN8DyFIem" role="3cpWs9">
            <property role="TrG5h" value="rtc" />
            <node concept="3uibUv" id="12yN8DyFIek" role="1tU5fm">
              <ref role="3uigEE" to="138j:6fdr4UgftiG" resolve="RuleTemplateCollection" />
            </node>
            <node concept="2ShNRf" id="12yN8DyFIen" role="33vP2m">
              <node concept="1pGfFk" id="12yN8DyFIeo" role="2ShVmc">
                <ref role="37wK5l" to="138j:6fdr4UgfyCL" resolve="RuleTemplateCollection" />
                <node concept="Xl_RD" id="12yN8DyLoon" role="37wK5m">
                  <property role="Xl_RC" value="test" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="12yN8DyFAIr" role="3cqZAp">
          <node concept="2OqwBi" id="12yN8DyFIh8" role="3clFbG">
            <node concept="37vLTw" id="12yN8DyFIep" role="2Oq$k0">
              <ref role="3cqZAo" node="12yN8DyFIem" resolve="rtc" />
            </node>
            <node concept="liA8E" id="12yN8DyFIt3" role="2OqNvi">
              <ref role="37wK5l" to="138j:12yN8Dyvyy6" resolve="collectTemplates" />
              <node concept="37vLTw" id="5ntLU8GlgWy" role="37wK5m">
                <ref role="3cqZAo" node="5ntLU8GlgWu" resolve="manifest" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5ntLU8GliZH" role="3cqZAp" />
        <node concept="34ab3g" id="12yN8DyLp87" role="3cqZAp">
          <property role="35gtTG" value="info" />
          <node concept="3cpWs3" id="12yN8DyLpui" role="34bqiv">
            <node concept="37vLTw" id="12yN8DyLpwy" role="3uHU7w">
              <ref role="3cqZAo" node="12yN8DyFIem" resolve="rtc" />
            </node>
            <node concept="Xl_RD" id="12yN8DyLp89" role="3uHU7B">
              <property role="Xl_RC" value="rtc&gt; " />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7Oc59RSzHu6" role="3cqZAp" />
        <node concept="3cpWs8" id="7Oc59RSzXTz" role="3cqZAp">
          <node concept="3cpWsn" id="7Oc59RSzXT$" role="3cpWs9">
            <property role="TrG5h" value="generator" />
            <node concept="3uibUv" id="7Oc59RSzXTt" role="1tU5fm">
              <ref role="3uigEE" to="bdf1:12yN8DyF_E1" resolve="TypecheckingRuleGenerator" />
            </node>
            <node concept="2ShNRf" id="7Oc59RSzXT_" role="33vP2m">
              <node concept="1pGfFk" id="7Oc59RSzXTA" role="2ShVmc">
                <ref role="37wK5l" to="bdf1:7Oc59RSy_Op" resolve="TypecheckingRuleGenerator" />
                <node concept="37vLTw" id="7Oc59RSzXTB" role="37wK5m">
                  <ref role="3cqZAo" node="12yN8DyFIem" resolve="rtc" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7Oc59RSzHvJ" role="3cqZAp" />
        <node concept="3cpWs8" id="7Oc59RS$2pf" role="3cqZAp">
          <node concept="3cpWsn" id="7Oc59RS$2pg" role="3cpWs9">
            <property role="TrG5h" value="handler" />
            <node concept="3uibUv" id="7Oc59RS$2pe" role="1tU5fm">
              <ref role="3uigEE" to="nc4n:7eGEHDlcEJ0" resolve="ConstraintRulesHandler" />
            </node>
            <node concept="2ShNRf" id="7Oc59RS$2ph" role="33vP2m">
              <node concept="1pGfFk" id="7Oc59RS$2pi" role="2ShVmc">
                <ref role="37wK5l" to="nc4n:7eGEHDlcF69" resolve="ConstraintRulesHandler" />
                <node concept="Xl_RD" id="7Oc59RSEenw" role="37wK5m">
                  <property role="Xl_RC" value="testHandler" />
                </node>
                <node concept="2ShNRf" id="2pvEdquq24J" role="37wK5m">
                  <node concept="YeOm9" id="2pvEdquqbQe" role="2ShVmc">
                    <node concept="1Y3b0j" id="2pvEdquqbQh" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="nc4n:7eGEHDldgwf" resolve="ConstraintRegistry" />
                      <ref role="37wK5l" to="e2lb:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3Tm1VV" id="2pvEdquqbQi" role="1B3o_S" />
                      <node concept="3clFb_" id="2pvEdquqbQj" role="jymVt">
                        <property role="TrG5h" value="findSolver" />
                        <property role="1EzhhJ" value="false" />
                        <node concept="37vLTG" id="2pvEdquqbQk" role="3clF46">
                          <property role="TrG5h" value="symbol" />
                          <node concept="3uibUv" id="2pvEdquqbQl" role="1tU5fm">
                            <ref role="3uigEE" to="nc4n:2fk6$tOpINk" resolve="BuiltinConstraintSymbol" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="2pvEdquqbQm" role="3clF45">
                          <ref role="3uigEE" to="yg8f:2GO7tyJLLNE" resolve="SolverProxy" />
                          <node concept="3qTvmN" id="2pvEdquqbQn" role="11_B2D" />
                        </node>
                        <node concept="3Tm1VV" id="2pvEdquqbQo" role="1B3o_S" />
                        <node concept="3clFbS" id="2pvEdquqbQq" role="3clF47">
                          <node concept="3SKdUt" id="2pvEdquqeyh" role="3cqZAp">
                            <node concept="3SKdUq" id="2pvEdquqeyM" role="3SKWNk">
                              <property role="3SKdUp" value="TODO: implement me" />
                            </node>
                          </node>
                          <node concept="3KaCP$" id="2pvEdquvJI9" role="3cqZAp">
                            <node concept="37vLTw" id="2pvEdquvJJp" role="3KbGdf">
                              <ref role="3cqZAo" node="2pvEdquqbQk" resolve="symbol" />
                            </node>
                            <node concept="3clFbS" id="2pvEdquvJId" role="3Kb1Dw">
                              <node concept="YS8fn" id="2pvEdquvLIQ" role="3cqZAp">
                                <node concept="2ShNRf" id="2pvEdquvLLW" role="YScLw">
                                  <node concept="1pGfFk" id="2pvEdquvM3f" role="2ShVmc">
                                    <ref role="37wK5l" to="e2lb:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                                    <node concept="3cpWs3" id="2pvEdquvNqI" role="37wK5m">
                                      <node concept="Xl_RD" id="2pvEdquvNr2" role="3uHU7w">
                                        <property role="Xl_RC" value="'" />
                                      </node>
                                      <node concept="3cpWs3" id="2pvEdquvMRz" role="3uHU7B">
                                        <node concept="Xl_RD" id="2pvEdquvM8F" role="3uHU7B">
                                          <property role="Xl_RC" value="uknown builtint constraint '" />
                                        </node>
                                        <node concept="37vLTw" id="2pvEdquvMVt" role="3uHU7w">
                                          <ref role="3cqZAo" node="2pvEdquqbQk" resolve="symbol" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3KbdKl" id="2pvEdquvJLp" role="3KbHQx">
                              <node concept="Rm8GO" id="2pvEdquvJRb" role="3Kbmr1">
                                <ref role="Rm8GQ" to="nc4n:2fk6$tOpINP" resolve="EQUALS" />
                                <ref role="1Px2BO" to="nc4n:2fk6$tOpINk" resolve="BuiltinConstraintSymbol" />
                              </node>
                              <node concept="3clFbS" id="2pvEdquvJLr" role="3Kbo56">
                                <node concept="3cpWs6" id="2pvEdquvJXk" role="3cqZAp">
                                  <node concept="10M0yZ" id="2pvEdquvKwp" role="3cqZAk">
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
        <node concept="3clFbH" id="5dz6b543Sxu" role="3cqZAp" />
        <node concept="3cpWs8" id="5dz6b543TbP" role="3cqZAp">
          <node concept="3cpWsn" id="5dz6b543TbQ" role="3cpWs9">
            <property role="TrG5h" value="sampleModel" />
            <node concept="H_c77" id="5dz6b543TbR" role="1tU5fm" />
            <node concept="BaHAS" id="5dz6b543TbS" role="33vP2m">
              <property role="BaHAW" value="jetbrains.mps.lang.typesystem2.sandbox.sample" />
              <property role="BaGAP" value="" />
              <property role="BaBD8" value="jetbrains.mps.lang.typesystem2.sandbox.satemplate" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5dz6b543SR7" role="3cqZAp" />
        <node concept="3clFbH" id="7Oc59RS$2wd" role="3cqZAp" />
        <node concept="1DcWWT" id="5ntLU8Gk7rn" role="3cqZAp">
          <node concept="3clFbS" id="5ntLU8Gk7ro" role="2LFqv$">
            <node concept="3cpWs8" id="7Oc59RSJloo" role="3cqZAp">
              <node concept="3cpWsn" id="7Oc59RSJlop" role="3cpWs9">
                <property role="TrG5h" value="result" />
                <node concept="3uibUv" id="7Oc59RSJlo9" role="1tU5fm">
                  <ref role="3uigEE" to="4t1t:7Oc59RSEjdb" resolve="Result" />
                </node>
                <node concept="2OqwBi" id="7Oc59RSJloq" role="33vP2m">
                  <node concept="37vLTw" id="7Oc59RSJlor" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Oc59RSzXT$" resolve="generator" />
                  </node>
                  <node concept="liA8E" id="7Oc59RSJlos" role="2OqNvi">
                    <ref role="37wK5l" to="bdf1:12yN8DyNqcj" resolve="generate" />
                    <node concept="37vLTw" id="7Oc59RSJlot" role="37wK5m">
                      <ref role="3cqZAo" node="5ntLU8Gk7rr" resolve="root" />
                    </node>
                    <node concept="37vLTw" id="7Oc59RSJlou" role="37wK5m">
                      <ref role="3cqZAo" node="7Oc59RS$2pg" resolve="handler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="34ab3g" id="7Oc59RSJlAm" role="3cqZAp">
              <property role="35gtTG" value="info" />
              <node concept="3cpWs3" id="7Oc59RSJmw6" role="34bqiv">
                <node concept="3cpWs3" id="7Oc59RSJm0R" role="3uHU7B">
                  <node concept="3cpWs3" id="7Oc59RSJlPU" role="3uHU7B">
                    <node concept="Xl_RD" id="7Oc59RSJlAo" role="3uHU7B">
                      <property role="Xl_RC" value="result&gt; " />
                    </node>
                    <node concept="37vLTw" id="7Oc59RSJlR6" role="3uHU7w">
                      <ref role="3cqZAo" node="7Oc59RSJlop" resolve="result" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="7Oc59RSJm7m" role="3uHU7w">
                    <property role="Xl_RC" value=" @" />
                  </node>
                </node>
                <node concept="37vLTw" id="7Oc59RSJmB1" role="3uHU7w">
                  <ref role="3cqZAo" node="5ntLU8Gk7rr" resolve="root" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7Oc59RSJ$jM" role="3cqZAp">
              <node concept="3clFbS" id="7Oc59RSJ$jP" role="3clFbx">
                <node concept="3clFbF" id="7Oc59RSJ$KV" role="3cqZAp">
                  <node concept="2OqwBi" id="7Oc59RSJAtm" role="3clFbG">
                    <node concept="2OqwBi" id="7Oc59RSJ_2F" role="2Oq$k0">
                      <node concept="2OqwBi" id="7Oc59RSJ$LD" role="2Oq$k0">
                        <node concept="37vLTw" id="7Oc59RSJ$KU" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Oc59RSJlop" resolve="result" />
                        </node>
                        <node concept="liA8E" id="7Oc59RSJ_0u" role="2OqNvi">
                          <ref role="37wK5l" to="4t1t:7Oc59RSEnG3" resolve="errors" />
                        </node>
                      </node>
                      <node concept="39bAoz" id="7Oc59RSJ_TF" role="2OqNvi" />
                    </node>
                    <node concept="2es0OD" id="7Oc59RSJBuQ" role="2OqNvi">
                      <node concept="1bVj0M" id="7Oc59RSJBuS" role="23t8la">
                        <node concept="3clFbS" id="7Oc59RSJBuT" role="1bW5cS">
                          <node concept="34ab3g" id="7Oc59RSJBEW" role="3cqZAp">
                            <property role="35gtTG" value="warn" />
                            <property role="34fQS0" value="true" />
                            <node concept="3cpWs3" id="7Oc59RSJC7r" role="34bqiv">
                              <node concept="37vLTw" id="7Oc59RSJC7A" role="3uHU7w">
                                <ref role="3cqZAo" node="7Oc59RSJBuU" resolve="e" />
                              </node>
                              <node concept="Xl_RD" id="7Oc59RSJBEY" role="3uHU7B">
                                <property role="Xl_RC" value="error&gt; " />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="7Oc59RSJLrW" role="34bMjA">
                              <node concept="37vLTw" id="7Oc59RSJLmt" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Oc59RSJBuU" resolve="e" />
                              </node>
                              <node concept="liA8E" id="7Oc59RSJMux" role="2OqNvi">
                                <ref role="37wK5l" to="4t1t:7Oc59RSJGG8" resolve="exception" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="7Oc59RSJBuU" role="1bW2Oz">
                          <property role="TrG5h" value="e" />
                          <node concept="2jxLKc" id="7Oc59RSJBuV" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="7Oc59RSJ$s5" role="3clFbw">
                <node concept="2OqwBi" id="7Oc59RSJ$ut" role="3fr31v">
                  <node concept="37vLTw" id="7Oc59RSJ$ti" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Oc59RSJlop" resolve="result" />
                  </node>
                  <node concept="liA8E" id="7Oc59RSJ$AR" role="2OqNvi">
                    <ref role="37wK5l" to="4t1t:7Oc59RS_hsj" resolve="isSuccessful" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5ntLU8Gk7rr" role="1Duv9x">
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="5ntLU8Gk84O" role="1tU5fm" />
          </node>
          <node concept="2OqwBi" id="5ntLU8Gk7rw" role="1DdaDG">
            <node concept="37vLTw" id="5dz6b543Vym" role="2Oq$k0">
              <ref role="3cqZAo" node="5dz6b543TbQ" resolve="sampleModel" />
            </node>
            <node concept="2RRcyG" id="5ntLU8Gk7ry" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="5ntLU8GjOS5" role="3cqZAp" />
        <node concept="34ab3g" id="7Oc59RSE0gG" role="3cqZAp">
          <property role="35gtTG" value="info" />
          <node concept="3cpWs3" id="7Oc59RSE0u1" role="34bqiv">
            <node concept="37vLTw" id="7Oc59RSE0wr" role="3uHU7w">
              <ref role="3cqZAo" node="7Oc59RS$2pg" resolve="handler" />
            </node>
            <node concept="Xl_RD" id="7Oc59RSE0gI" role="3uHU7B">
              <property role="Xl_RC" value="handler&gt; " />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4sVJFklVKr2" role="3cqZAp" />
        <node concept="3clFbH" id="12yN8DyLogb" role="3cqZAp" />
        <node concept="1QHqEM" id="4sVJFklVIty" role="3cqZAp">
          <node concept="1QHqEC" id="4sVJFklVIt$" role="1QHqEI">
            <node concept="3clFbS" id="4sVJFklVItA" role="1bW5cS">
              <node concept="3cpWs8" id="4sVJFklW2F0" role="3cqZAp">
                <node concept="3cpWsn" id="4sVJFklW2F1" role="3cpWs9">
                  <property role="TrG5h" value="jchrModel" />
                  <node concept="H_c77" id="4sVJFklW2EZ" role="1tU5fm" />
                  <node concept="BaHAS" id="4sVJFklW2F2" role="33vP2m">
                    <property role="BaBD8" value="sand.jchr" />
                    <property role="BaHAW" value="jetbrains.mps.lang.typesystem2.sandbox.jchr" />
                    <property role="BaGAP" value="" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4sVJFklVMOu" role="3cqZAp">
                <node concept="2OqwBi" id="4sVJFklW2mD" role="3clFbG">
                  <node concept="2ShNRf" id="4sVJFklVMOs" role="2Oq$k0">
                    <node concept="1pGfFk" id="4sVJFklW1Xc" role="2ShVmc">
                      <ref role="37wK5l" to="9kr0:ZqZbw4Qjv7" resolve="ChrHandlerProducer" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4sVJFklW2vp" role="2OqNvi">
                    <ref role="37wK5l" to="9kr0:ZqZbw4Qjwa" resolve="produce" />
                    <node concept="37vLTw" id="4sVJFklW2F3" role="37wK5m">
                      <ref role="3cqZAo" node="4sVJFklW2F1" resolve="jchrModel" />
                    </node>
                    <node concept="37vLTw" id="4sVJFklW2VL" role="37wK5m">
                      <ref role="3cqZAo" node="7Oc59RS$2pg" resolve="handler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7Oc59RSE08X" role="3cqZAp" />
      </node>
    </node>
    <node concept="2tJIrI" id="5ntLU8Glpvh" role="jymVt" />
    <node concept="2YIFZL" id="5ntLU8Glo4D" role="jymVt">
      <property role="TrG5h" value="getRuleManifest" />
      <node concept="3Tm6S6" id="5ntLU8Glo4E" role="1B3o_S" />
      <node concept="3uibUv" id="5ntLU8Glo4F" role="3clF45">
        <ref role="3uigEE" to="qiww:6w6CYIRh9BG" resolve="AbstractRuleTemplateManifest" />
      </node>
      <node concept="37vLTG" id="5ntLU8Glo4$" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="5ntLU8Glo4_" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5ntLU8Glo3Y" role="3clF47">
        <node concept="3cpWs8" id="5ntLU8Glo41" role="3cqZAp">
          <node concept="3cpWsn" id="5ntLU8Glo42" role="3cpWs9">
            <property role="TrG5h" value="fqClassName" />
            <node concept="17QB3L" id="2pvEdqukxHY" role="1tU5fm" />
            <node concept="2YIFZM" id="5ntLU8Glo44" role="33vP2m">
              <ref role="37wK5l" to="msyo:~JavaNameUtil.fqClassName(org.jetbrains.mps.openapi.model.SModel,java.lang.String):java.lang.String" resolve="fqClassName" />
              <ref role="1Pybhc" to="msyo:~JavaNameUtil" resolve="JavaNameUtil" />
              <node concept="37vLTw" id="5ntLU8Glo4A" role="37wK5m">
                <ref role="3cqZAo" node="5ntLU8Glo4$" resolve="model" />
              </node>
              <node concept="Xl_RD" id="5ntLU8Glo46" role="37wK5m">
                <property role="Xl_RC" value="RuleTemplateManifest" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5ntLU8Glo47" role="3cqZAp">
          <node concept="3cpWsn" id="5ntLU8Glo48" role="3cpWs9">
            <property role="TrG5h" value="manifest" />
            <node concept="3uibUv" id="5ntLU8Glo49" role="1tU5fm">
              <ref role="3uigEE" to="qiww:6w6CYIRh9BG" resolve="AbstractRuleTemplateManifest" />
            </node>
            <node concept="10Nm6u" id="5ntLU8GlpbQ" role="33vP2m" />
          </node>
        </node>
        <node concept="SfApY" id="5ntLU8Glo4a" role="3cqZAp">
          <node concept="3clFbS" id="5ntLU8Glo4b" role="SfCbr">
            <node concept="3cpWs8" id="5ntLU8Glo4c" role="3cqZAp">
              <node concept="3cpWsn" id="5ntLU8Glo4d" role="3cpWs9">
                <property role="TrG5h" value="clazz" />
                <node concept="3uibUv" id="5ntLU8Glo4e" role="1tU5fm">
                  <ref role="3uigEE" to="e2lb:~Class" resolve="Class" />
                  <node concept="3uibUv" id="5ntLU8Glo4f" role="11_B2D">
                    <ref role="3uigEE" to="qiww:6w6CYIRh9BG" resolve="AbstractRuleTemplateManifest" />
                  </node>
                </node>
                <node concept="10QFUN" id="5ntLU8Glo4g" role="33vP2m">
                  <node concept="3uibUv" id="5ntLU8Glo4h" role="10QFUM">
                    <ref role="3uigEE" to="e2lb:~Class" resolve="Class" />
                    <node concept="3uibUv" id="5ntLU8Glo4i" role="11_B2D">
                      <ref role="3uigEE" to="qiww:6w6CYIRh9BG" resolve="AbstractRuleTemplateManifest" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="5ntLU8Glo4j" role="10QFUP">
                    <ref role="37wK5l" to="e2lb:~Class.forName(java.lang.String):java.lang.Class" resolve="forName" />
                    <ref role="1Pybhc" to="e2lb:~Class" resolve="Class" />
                    <node concept="37vLTw" id="5ntLU8Glo4k" role="37wK5m">
                      <ref role="3cqZAo" node="5ntLU8Glo42" resolve="fqClassName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5ntLU8Glo4l" role="3cqZAp">
              <node concept="37vLTI" id="5ntLU8Glo4m" role="3clFbG">
                <node concept="2OqwBi" id="5ntLU8Glo4n" role="37vLTx">
                  <node concept="37vLTw" id="5ntLU8Glo4o" role="2Oq$k0">
                    <ref role="3cqZAo" node="5ntLU8Glo4d" resolve="clazz" />
                  </node>
                  <node concept="liA8E" id="5ntLU8Glo4p" role="2OqNvi">
                    <ref role="37wK5l" to="e2lb:~Class.newInstance():java.lang.Object" resolve="newInstance" />
                  </node>
                </node>
                <node concept="37vLTw" id="5ntLU8Glo4q" role="37vLTJ">
                  <ref role="3cqZAo" node="5ntLU8Glo48" resolve="manifest" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="5ntLU8Glo4r" role="TEbGg">
            <node concept="3clFbS" id="5ntLU8Glo4s" role="TDEfX">
              <node concept="34ab3g" id="5ntLU8Glo4t" role="3cqZAp">
                <property role="35gtTG" value="error" />
                <property role="34fQS0" value="true" />
                <node concept="Xl_RD" id="5ntLU8Glo4u" role="34bqiv">
                  <property role="Xl_RC" value="WTF" />
                </node>
                <node concept="37vLTw" id="5ntLU8Glo4v" role="34bMjA">
                  <ref role="3cqZAo" node="5ntLU8Glo4w" resolve="e" />
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="5ntLU8Glo4w" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="5ntLU8Glo4x" role="1tU5fm">
                <ref role="3uigEE" to="e2lb:~Exception" resolve="Exception" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5ntLU8Glo4y" role="3cqZAp">
          <node concept="37vLTw" id="5ntLU8Glo4z" role="3cqZAk">
            <ref role="3cqZAo" node="5ntLU8Glo48" resolve="manifest" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5ntLU8Gltjh" role="jymVt" />
    <node concept="3Tm1VV" id="6fdr4Ugdk4I" role="1B3o_S" />
  </node>
  <node concept="2DaZZR" id="12yN8DyG2e0" />
  <node concept="sE7Ow" id="12yN8DyG2eO">
    <property role="TrG5h" value="TestRuleTemplate" />
    <property role="2uzpH1" value="Test Rule Template" />
    <node concept="tnohg" id="12yN8DyG2in" role="tncku">
      <node concept="3clFbS" id="12yN8DyG2io" role="2VODD2">
        <node concept="3clFbH" id="12yN8DyKo1T" role="3cqZAp" />
        <node concept="3clFbF" id="12yN8DyKvYO" role="3cqZAp">
          <node concept="2YIFZM" id="12yN8DyKw0P" role="3clFbG">
            <ref role="37wK5l" node="6fdr4Ugdk5g" resolve="main" />
            <ref role="1Pybhc" node="6fdr4Ugdk4H" resolve="CollectRuleTemplates" />
            <node concept="Xl_RD" id="12yN8DyKw21" role="37wK5m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="12yN8DyKo2a" role="3cqZAp" />
        <node concept="3clFbF" id="12yN8DyG4dG" role="3cqZAp">
          <node concept="2YIFZM" id="12yN8DyGbJH" role="3clFbG">
            <ref role="37wK5l" to="810:~Messages.showInfoMessage(java.lang.String,java.lang.String):void" resolve="showInfoMessage" />
            <ref role="1Pybhc" to="810:~Messages" resolve="Messages" />
            <node concept="Xl_RD" id="12yN8DyGbKd" role="37wK5m">
              <property role="Xl_RC" value="Foo" />
            </node>
            <node concept="Xl_RD" id="12yN8DyGbMO" role="37wK5m">
              <property role="Xl_RC" value="bar" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="12yN8DyLogC" role="3cqZAp" />
      </node>
    </node>
  </node>
</model>

