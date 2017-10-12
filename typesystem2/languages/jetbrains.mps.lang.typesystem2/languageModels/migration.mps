<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:51eac161-f155-4ff3-9f01-b4596f103664(jetbrains.mps.lang.typesystem2.migration)">
  <persistence version="9" />
  <languages>
    <use id="90746344-04fd-4286-97d5-b46ae6a81709" name="jetbrains.mps.lang.migration" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="2" />
    <use id="d4615e3b-d671-4ba9-af01-2b78369b0ba7" name="jetbrains.mps.lang.pattern" version="1" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="tpci" ref="r:00000000-0000-4000-0000-011c8959028e(jetbrains.mps.lang.structure.findUsages)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="mte5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.ide.findusages.model.scopes(MPS.Core/)" />
    <import index="mk8z" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.progress(MPS.Core/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="slm6" ref="90746344-04fd-4286-97d5-b46ae6a81709/r:52a3d974-bd4f-4651-ba6e-a2de5e336d95(jetbrains.mps.lang.migration/jetbrains.mps.lang.migration.methods)" implicit="true" />
    <import index="5j4j" ref="r:c8fb1c5e-8204-4904-a38f-678899d447c1(jetbrains.mps.logic.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
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
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
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
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="c7d5b9dd-a05f-4be2-bc73-f2e16994cc67" name="jetbrains.mps.baseLanguage.lightweightdsl">
      <concept id="8880393040217246788" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.MethodParameterInstance" flags="ig" index="ffn8J">
        <reference id="8880393040217294897" name="decl" index="ffrpq" />
      </concept>
      <concept id="3751132065236767083" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.DependentTypeInstance" flags="ig" index="q3mfm">
        <reference id="3751132065236767084" name="decl" index="q3mfh" />
        <reference id="9097849371505568270" name="point" index="1QQUv3" />
      </concept>
      <concept id="3751132065236767060" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.MethodInstance" flags="ig" index="q3mfD">
        <reference id="19209059688387895" name="decl" index="2VtyIY" />
      </concept>
      <concept id="6478870542308708689" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.PropertyInstance" flags="ig" index="3tT0cZ">
        <reference id="8585153554445465961" name="decl" index="25KYV2" />
      </concept>
      <concept id="6478870542308703666" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.MemberPlaceholder" flags="ng" index="3tTeZs">
        <property id="6478870542308703667" name="caption" index="3tTeZt" />
        <reference id="6478870542308703669" name="decl" index="3tTeZr" />
      </concept>
      <concept id="6478870542308871875" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.BooleanPropertyInstance" flags="ig" index="3tYpMH">
        <property id="6478870542308871876" name="value" index="3tYpME" />
      </concept>
      <concept id="6478870542308871428" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.StringPropertyInstance" flags="ig" index="3tYpXE">
        <property id="6478870542308871429" name="value" index="3tYpXF" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
      </concept>
      <concept id="5455284157993911097" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitPart" flags="ng" index="2pJxcK">
        <child id="5455284157993911094" name="expression" index="2pJxcZ" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="90746344-04fd-4286-97d5-b46ae6a81709" name="jetbrains.mps.lang.migration">
      <concept id="8352104482584315555" name="jetbrains.mps.lang.migration.structure.MigrationScript" flags="ig" index="3SyAh_">
        <property id="5820409521797704727" name="fromVersion" index="qMTe8" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
    </language>
  </registry>
  <node concept="3SyAh_" id="7smgEqgGBKb">
    <property role="qMTe8" value="0" />
    <property role="TrG5h" value="Introduce_NodeAnchor" />
    <node concept="3Tm1VV" id="7smgEqgGBKc" role="1B3o_S" />
    <node concept="3tTeZs" id="7smgEqgGBKd" role="jymVt">
      <property role="3tTeZt" value="&lt;no execute after&gt;" />
      <ref role="3tTeZr" to="slm6:7ay_HjIMt1a" resolve="execute after" />
    </node>
    <node concept="3tTeZs" id="7smgEqgGCvT" role="jymVt">
      <property role="3tTeZt" value="&lt;no required data&gt;" />
      <ref role="3tTeZr" to="slm6:3A3gNhf1WPI" resolve="requires data" />
    </node>
    <node concept="3tTeZs" id="7smgEqgGCwF" role="jymVt">
      <property role="3tTeZt" value="&lt;no produced data&gt;" />
      <ref role="3tTeZr" to="slm6:536fTXa4WHO" resolve="produces data" />
    </node>
    <node concept="2tJIrI" id="7smgEqgGBKg" role="jymVt" />
    <node concept="3tYpMH" id="7smgEqgHcXX" role="jymVt">
      <property role="TrG5h" value="isRerunnable" />
      <property role="3tYpME" value="true" />
      <ref role="25KYV2" to="slm6:1JWcQ2VeWIs" resolve="isRerunnable" />
      <node concept="3Tm1VV" id="7smgEqgHcXZ" role="1B3o_S" />
      <node concept="10P_77" id="7smgEqgHcY0" role="1tU5fm" />
    </node>
    <node concept="3tYpXE" id="7smgEqgGJJU" role="jymVt">
      <property role="TrG5h" value="description" />
      <property role="3tYpXF" value="Replace instances of LogicalValue in 'anchor' role of TypeOfConstraint with NodeAnchor" />
      <ref role="25KYV2" to="slm6:1_lSsE3RFpE" resolve="description" />
      <node concept="3Tm1VV" id="7smgEqgGJJW" role="1B3o_S" />
      <node concept="17QB3L" id="7smgEqgGJJX" role="1tU5fm" />
    </node>
    <node concept="q3mfD" id="7smgEqgGBKj" role="jymVt">
      <property role="TrG5h" value="execute" />
      <ref role="2VtyIY" to="slm6:4ubqdNOF9cA" resolve="execute" />
      <node concept="3Tm1VV" id="7smgEqgGBKl" role="1B3o_S" />
      <node concept="3clFbS" id="7smgEqgGBKn" role="3clF47">
        <node concept="3cpWs8" id="hro_lxY" role="3cqZAp">
          <node concept="3cpWsn" id="hro_lxZ" role="3cpWs9">
            <property role="TrG5h" value="instances" />
            <node concept="_YKpA" id="5TsiQeGn2HS" role="1tU5fm">
              <node concept="3uibUv" id="5TsiQeGn2Vo" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="hGQYzDJ" role="33vP2m">
              <node concept="Tc6Ow" id="i1A3j2f" role="2ShVmc">
                <node concept="3uibUv" id="5TsiQeGn2xY" role="HW$YZ">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="2OqwBi" id="2f3kUWom5W1" role="I$8f6">
                  <node concept="2YIFZM" id="2f3kUWom5W2" role="2Oq$k0">
                    <ref role="1Pybhc" to="lui2:~FindUsagesFacade" resolve="FindUsagesFacade" />
                    <ref role="37wK5l" to="lui2:~FindUsagesFacade.getInstance():org.jetbrains.mps.openapi.module.FindUsagesFacade" resolve="getInstance" />
                  </node>
                  <node concept="liA8E" id="2f3kUWom5W3" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~FindUsagesFacade.findInstances(org.jetbrains.mps.openapi.module.SearchScope,java.util.Set,boolean,org.jetbrains.mps.openapi.util.ProgressMonitor):java.util.Set" resolve="findInstances" />
                    <node concept="2ShNRf" id="7smgEqgH0fe" role="37wK5m">
                      <node concept="1pGfFk" id="7smgEqgH16V" role="2ShVmc">
                        <ref role="37wK5l" to="mte5:~ModulesScope.&lt;init&gt;(org.jetbrains.mps.openapi.module.SModule...)" resolve="ModulesScope" />
                        <node concept="37vLTw" id="7smgEqgH1a_" role="37wK5m">
                          <ref role="3cqZAo" node="7smgEqgGBKp" resolve="m" />
                        </node>
                      </node>
                    </node>
                    <node concept="2YIFZM" id="2f3kUWom5W4" role="37wK5m">
                      <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object):java.util.Set" resolve="singleton" />
                      <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                      <node concept="35c_gC" id="7smgEqgH1vo" role="37wK5m">
                        <ref role="35c_gD" to="wq2x:2E5lcNn01_F" resolve="TypeofConstraint" />
                      </node>
                    </node>
                    <node concept="3clFbT" id="6Knue6ZwJ_M" role="37wK5m">
                      <property role="3clFbU" value="false" />
                    </node>
                    <node concept="2ShNRf" id="7smgEqgH2PS" role="37wK5m">
                      <node concept="1pGfFk" id="7smgEqgH3D9" role="2ShVmc">
                        <ref role="37wK5l" to="mk8z:~EmptyProgressMonitor.&lt;init&gt;()" resolve="EmptyProgressMonitor" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7smgEqgH4Ax" role="3cqZAp">
          <node concept="3clFbS" id="7smgEqgH4A$" role="2LFqv$">
            <node concept="3cpWs8" id="7smgEqgH7iE" role="3cqZAp">
              <node concept="3cpWsn" id="7smgEqgH7iF" role="3cpWs9">
                <property role="TrG5h" value="anchor" />
                <node concept="3Tqbb2" id="7smgEqgH7i_" role="1tU5fm" />
                <node concept="2OqwBi" id="7smgEqgH7iG" role="33vP2m">
                  <node concept="1eOMI4" id="7smgEqgH7iH" role="2Oq$k0">
                    <node concept="10QFUN" id="7smgEqgH7iI" role="1eOMHV">
                      <node concept="3Tqbb2" id="7smgEqgH7iJ" role="10QFUM">
                        <ref role="ehGHo" to="wq2x:2E5lcNn01_F" resolve="TypeofConstraint" />
                      </node>
                      <node concept="37vLTw" id="7smgEqgH7iK" role="10QFUP">
                        <ref role="3cqZAo" node="7smgEqgH4A_" resolve="inst" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="7smgEqgH7iL" role="2OqNvi">
                    <ref role="3Tt5mk" to="wq2x:2E5lcNn035O" resolve="anchor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7smgEqgHd40" role="3cqZAp">
              <node concept="3clFbS" id="7smgEqgHd42" role="3clFbx">
                <node concept="3cpWs8" id="7smgEqgHbld" role="3cqZAp">
                  <node concept="3cpWsn" id="7smgEqgHble" role="3cpWs9">
                    <property role="TrG5h" value="code" />
                    <node concept="3Tqbb2" id="7smgEqgHbkQ" role="1tU5fm" />
                    <node concept="2OqwBi" id="7smgEqgHblf" role="33vP2m">
                      <node concept="2OqwBi" id="7smgEqgHblg" role="2Oq$k0">
                        <node concept="37vLTw" id="7smgEqgHblh" role="2Oq$k0">
                          <ref role="3cqZAo" node="7smgEqgH7iF" resolve="anchor" />
                        </node>
                        <node concept="32TBzR" id="7smgEqgHbli" role="2OqNvi" />
                      </node>
                      <node concept="1z4cxt" id="7smgEqgHblj" role="2OqNvi">
                        <node concept="1bVj0M" id="7smgEqgHblk" role="23t8la">
                          <node concept="3clFbS" id="7smgEqgHbll" role="1bW5cS">
                            <node concept="3clFbF" id="7smgEqgHblm" role="3cqZAp">
                              <node concept="2OqwBi" id="7smgEqgHbln" role="3clFbG">
                                <node concept="37vLTw" id="7smgEqgHblo" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7smgEqgHblr" resolve="it" />
                                </node>
                                <node concept="1mIQ4w" id="7smgEqgHblp" role="2OqNvi">
                                  <node concept="chp4Y" id="7smgEqgHblq" role="cj9EA">
                                    <ref role="cht4Q" to="tpee:fz3vP1J" resolve="Expression" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="7smgEqgHblr" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="7smgEqgHbls" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6s2wbV0Yu8f" role="3cqZAp">
                  <node concept="2OqwBi" id="6s2wbV0Yufy" role="3clFbG">
                    <node concept="37vLTw" id="6s2wbV0Yu8d" role="2Oq$k0">
                      <ref role="3cqZAo" node="7smgEqgH7iF" resolve="anchor" />
                    </node>
                    <node concept="1P9Npp" id="6s2wbV0Yuyy" role="2OqNvi">
                      <node concept="2pJPEk" id="6s2wbV0Yu$L" role="1P9ThW">
                        <node concept="2pJPED" id="6s2wbV0YuCg" role="2pJPEn">
                          <ref role="2pJxaS" to="wq2x:7smgEqggf12" resolve="NodeAnchor" />
                          <node concept="2pIpSj" id="6s2wbV0YuH7" role="2pJxcM">
                            <ref role="2pIpSl" to="wq2x:7smgEqggf13" resolve="node" />
                            <node concept="36biLy" id="6s2wbV0YuNu" role="2pJxcZ">
                              <node concept="1PxgMI" id="6s2wbV0Yy_D" role="36biLW">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="6s2wbV0YyAq" role="3oSUPX">
                                  <ref role="cht4Q" to="tpee:fz3vP1J" resolve="Expression" />
                                </node>
                                <node concept="37vLTw" id="6s2wbV0YuPO" role="1m5AlR">
                                  <ref role="3cqZAo" node="7smgEqgHble" resolve="code" />
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
              <node concept="3fqX7Q" id="7smgEqgHdIq" role="3clFbw">
                <node concept="2OqwBi" id="7smgEqgHdIs" role="3fr31v">
                  <node concept="37vLTw" id="7smgEqgHdIt" role="2Oq$k0">
                    <ref role="3cqZAo" node="7smgEqgH7iF" resolve="anchor" />
                  </node>
                  <node concept="1mIQ4w" id="7smgEqgHdIu" role="2OqNvi">
                    <node concept="chp4Y" id="7smgEqgHdIv" role="cj9EA">
                      <ref role="cht4Q" to="wq2x:7smgEqggf12" resolve="NodeAnchor" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7smgEqgH4A_" role="1Duv9x">
            <property role="TrG5h" value="inst" />
            <node concept="3uibUv" id="7smgEqgH4AD" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="37vLTw" id="7smgEqgH4AE" role="1DdaDG">
            <ref role="3cqZAo" node="hro_lxZ" resolve="instances" />
          </node>
        </node>
      </node>
      <node concept="ffn8J" id="7smgEqgGBKp" role="3clF46">
        <property role="TrG5h" value="m" />
        <ref role="ffrpq" to="slm6:7fCCGqboj9J" resolve="m" />
        <node concept="3uibUv" id="7smgEqgGBKo" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="q3mfm" id="7smgEqgGBKq" role="3clF45">
        <ref role="q3mfh" to="slm6:4F5w8gPXEEe" />
        <ref role="1QQUv3" node="7smgEqgGBKj" resolve="execute" />
      </node>
    </node>
    <node concept="3tTeZs" id="7smgEqgGBKr" role="jymVt">
      <property role="3tTeZt" value="&lt;no result checking&gt;" />
      <ref role="3tTeZr" to="slm6:1JWcQ2VeXpD" resolve="check" />
    </node>
  </node>
  <node concept="3SyAh_" id="6s2wbV0R$r3">
    <property role="qMTe8" value="1" />
    <property role="TrG5h" value="Replace_LogicalValue" />
    <node concept="3Tm1VV" id="6s2wbV0R$r4" role="1B3o_S" />
    <node concept="3tTeZs" id="6s2wbV0R$r5" role="jymVt">
      <property role="3tTeZt" value="&lt;no execute after&gt;" />
      <ref role="3tTeZr" to="slm6:7ay_HjIMt1a" resolve="execute after" />
    </node>
    <node concept="3tTeZs" id="6s2wbV0R$r6" role="jymVt">
      <property role="3tTeZt" value="&lt;no required data&gt;" />
      <ref role="3tTeZr" to="slm6:3A3gNhf1WPI" resolve="requires data" />
    </node>
    <node concept="3tTeZs" id="6s2wbV0R$r7" role="jymVt">
      <property role="3tTeZt" value="&lt;no produced data&gt;" />
      <ref role="3tTeZr" to="slm6:536fTXa4WHO" resolve="produces data" />
    </node>
    <node concept="2tJIrI" id="6s2wbV0R$r8" role="jymVt" />
    <node concept="3tYpMH" id="6s2wbV0R$La" role="jymVt">
      <property role="TrG5h" value="isRerunnable" />
      <property role="3tYpME" value="true" />
      <ref role="25KYV2" to="slm6:1JWcQ2VeWIs" resolve="isRerunnable" />
      <node concept="3Tm1VV" id="6s2wbV0R$Lc" role="1B3o_S" />
      <node concept="10P_77" id="6s2wbV0R$Ld" role="1tU5fm" />
    </node>
    <node concept="3tYpXE" id="6s2wbV0RBlJ" role="jymVt">
      <property role="TrG5h" value="description" />
      <property role="3tYpXF" value="Replace LogicalValue in pseudo constraints" />
      <ref role="25KYV2" to="slm6:1_lSsE3RFpE" resolve="description" />
      <node concept="3Tm1VV" id="6s2wbV0RBlL" role="1B3o_S" />
      <node concept="17QB3L" id="6s2wbV0RBlM" role="1tU5fm" />
    </node>
    <node concept="q3mfD" id="6s2wbV0R$rb" role="jymVt">
      <property role="TrG5h" value="execute" />
      <ref role="2VtyIY" to="slm6:4ubqdNOF9cA" resolve="execute" />
      <node concept="3Tm1VV" id="6s2wbV0R$rd" role="1B3o_S" />
      <node concept="3clFbS" id="6s2wbV0R$rf" role="3clF47">
        <node concept="3cpWs8" id="6s2wbV0RA7m" role="3cqZAp">
          <node concept="3cpWsn" id="6s2wbV0RA7n" role="3cpWs9">
            <property role="TrG5h" value="instances" />
            <node concept="_YKpA" id="6s2wbV0RA7o" role="1tU5fm">
              <node concept="3uibUv" id="6s2wbV0RA7p" role="_ZDj9">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="6s2wbV0RA7q" role="33vP2m">
              <node concept="Tc6Ow" id="6s2wbV0RA7r" role="2ShVmc">
                <node concept="3uibUv" id="6s2wbV0RA7s" role="HW$YZ">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="2OqwBi" id="6s2wbV0RA7t" role="I$8f6">
                  <node concept="2YIFZM" id="6s2wbV0RA7u" role="2Oq$k0">
                    <ref role="1Pybhc" to="lui2:~FindUsagesFacade" resolve="FindUsagesFacade" />
                    <ref role="37wK5l" to="lui2:~FindUsagesFacade.getInstance():org.jetbrains.mps.openapi.module.FindUsagesFacade" resolve="getInstance" />
                  </node>
                  <node concept="liA8E" id="6s2wbV0RA7v" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~FindUsagesFacade.findInstances(org.jetbrains.mps.openapi.module.SearchScope,java.util.Set,boolean,org.jetbrains.mps.openapi.util.ProgressMonitor):java.util.Set" resolve="findInstances" />
                    <node concept="2ShNRf" id="6s2wbV0RA7w" role="37wK5m">
                      <node concept="1pGfFk" id="6s2wbV0RA7x" role="2ShVmc">
                        <ref role="37wK5l" to="mte5:~ModulesScope.&lt;init&gt;(org.jetbrains.mps.openapi.module.SModule...)" resolve="ModulesScope" />
                        <node concept="37vLTw" id="6s2wbV0RA7y" role="37wK5m">
                          <ref role="3cqZAo" node="6s2wbV0R$rh" resolve="m" />
                        </node>
                      </node>
                    </node>
                    <node concept="2YIFZM" id="6s2wbV0RA7z" role="37wK5m">
                      <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object):java.util.Set" resolve="singleton" />
                      <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                      <node concept="35c_gC" id="6s2wbV0RA7$" role="37wK5m">
                        <ref role="35c_gD" to="5j4j:7E86$tKskWj" resolve="LogicalValue" />
                      </node>
                    </node>
                    <node concept="3clFbT" id="6s2wbV0RA7_" role="37wK5m">
                      <property role="3clFbU" value="false" />
                    </node>
                    <node concept="2ShNRf" id="6s2wbV0RA7A" role="37wK5m">
                      <node concept="1pGfFk" id="6s2wbV0RA7B" role="2ShVmc">
                        <ref role="37wK5l" to="mk8z:~EmptyProgressMonitor.&lt;init&gt;()" resolve="EmptyProgressMonitor" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="6s2wbV0RA7C" role="3cqZAp">
          <node concept="3clFbS" id="6s2wbV0RA7D" role="2LFqv$">
            <node concept="3cpWs8" id="6s2wbV0RA7E" role="3cqZAp">
              <node concept="3cpWsn" id="6s2wbV0RA7F" role="3cpWs9">
                <property role="TrG5h" value="val" />
                <node concept="3Tqbb2" id="6s2wbV0RA7G" role="1tU5fm">
                  <ref role="ehGHo" to="5j4j:7E86$tKskWj" resolve="LogicalValue" />
                </node>
                <node concept="10QFUN" id="6s2wbV0RA7J" role="33vP2m">
                  <node concept="3Tqbb2" id="6s2wbV0RA7K" role="10QFUM">
                    <ref role="ehGHo" to="5j4j:7E86$tKskWj" resolve="LogicalValue" />
                  </node>
                  <node concept="37vLTw" id="6s2wbV0RA7L" role="10QFUP">
                    <ref role="3cqZAo" node="6s2wbV0RA8k" resolve="inst" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6s2wbV0RFDe" role="3cqZAp">
              <node concept="3clFbS" id="6s2wbV0RFDg" role="3clFbx">
                <node concept="3clFbF" id="6s2wbV0RLZK" role="3cqZAp">
                  <node concept="2OqwBi" id="6s2wbV0RMBD" role="3clFbG">
                    <node concept="2OqwBi" id="6s2wbV0RM7C" role="2Oq$k0">
                      <node concept="37vLTw" id="6s2wbV0RLZJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="6s2wbV0RA7F" resolve="val" />
                      </node>
                      <node concept="1mfA1w" id="6s2wbV0RMkB" role="2OqNvi" />
                    </node>
                    <node concept="1P9Npp" id="6s2wbV0RMV1" role="2OqNvi">
                      <node concept="2OqwBi" id="6s2wbV0RN5C" role="1P9ThW">
                        <node concept="37vLTw" id="6s2wbV0RMXd" role="2Oq$k0">
                          <ref role="3cqZAo" node="6s2wbV0RA7F" resolve="val" />
                        </node>
                        <node concept="3TrEf2" id="6s2wbV0RNiW" role="2OqNvi">
                          <ref role="3Tt5mk" to="5j4j:7E86$tKsqnr" resolve="code" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6s2wbV0RNtw" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="6s2wbV0RLuX" role="3clFbw">
                <node concept="2OqwBi" id="6s2wbV0RKUj" role="2Oq$k0">
                  <node concept="2OqwBi" id="6s2wbV0RKbz" role="2Oq$k0">
                    <node concept="37vLTw" id="6s2wbV0RK1J" role="2Oq$k0">
                      <ref role="3cqZAo" node="6s2wbV0RA7F" resolve="val" />
                    </node>
                    <node concept="1mfA1w" id="6s2wbV0RK_s" role="2OqNvi" />
                  </node>
                  <node concept="1mfA1w" id="6s2wbV0RLdG" role="2OqNvi" />
                </node>
                <node concept="1mIQ4w" id="6s2wbV0RLMc" role="2OqNvi">
                  <node concept="chp4Y" id="6s2wbV0RLOq" role="cj9EA">
                    <ref role="cht4Q" to="wq2x:1L74NXEmF9s" resolve="TypeParameterBinding" />
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="6s2wbV0RNtR" role="3eNLev">
                <node concept="3clFbS" id="6s2wbV0RNtS" role="3eOfB_">
                  <node concept="3cpWs8" id="6s2wbV0UGrC" role="3cqZAp">
                    <node concept="3cpWsn" id="6s2wbV0UGrD" role="3cpWs9">
                      <property role="TrG5h" value="parent" />
                      <node concept="3Tqbb2" id="6s2wbV0UGrz" role="1tU5fm">
                        <ref role="ehGHo" to="wq2x:18kNIl0jL2T" resolve="AsTypePseudoConstraint" />
                      </node>
                      <node concept="1PxgMI" id="6s2wbV0UGrE" role="33vP2m">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="6s2wbV0UGrF" role="3oSUPX">
                          <ref role="cht4Q" to="wq2x:18kNIl0jL2T" resolve="AsTypePseudoConstraint" />
                        </node>
                        <node concept="2OqwBi" id="6s2wbV0UGrG" role="1m5AlR">
                          <node concept="37vLTw" id="6s2wbV0UGrH" role="2Oq$k0">
                            <ref role="3cqZAo" node="6s2wbV0RA7F" resolve="val" />
                          </node>
                          <node concept="1mfA1w" id="6s2wbV0UGrI" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6s2wbV0S_9R" role="3cqZAp">
                    <node concept="2OqwBi" id="6s2wbV0S_i1" role="3clFbG">
                      <node concept="37vLTw" id="6s2wbV0S_9P" role="2Oq$k0">
                        <ref role="3cqZAo" node="6s2wbV0RA7F" resolve="val" />
                      </node>
                      <node concept="3YRAZt" id="6s2wbV0S_FS" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="6s2wbV0SpS6" role="3cqZAp">
                    <node concept="2OqwBi" id="6s2wbV0S$Bt" role="3clFbG">
                      <node concept="2OqwBi" id="6s2wbV0SrMF" role="2Oq$k0">
                        <node concept="37vLTw" id="6s2wbV0UGrJ" role="2Oq$k0">
                          <ref role="3cqZAo" node="6s2wbV0UGrD" resolve="parent" />
                        </node>
                        <node concept="3TrEf2" id="6s2wbV0Ss37" role="2OqNvi">
                          <ref role="3Tt5mk" to="wq2x:18kNIl0jL3E" resolve="origin" />
                        </node>
                      </node>
                      <node concept="2oxUTD" id="6s2wbV0S_1z" role="2OqNvi">
                        <node concept="2OqwBi" id="6s2wbV0SA2C" role="2oxUTC">
                          <node concept="2OqwBi" id="6s2wbV0S_Gr" role="2Oq$k0">
                            <node concept="37vLTw" id="6s2wbV0S_Gs" role="2Oq$k0">
                              <ref role="3cqZAo" node="6s2wbV0RA7F" resolve="val" />
                            </node>
                            <node concept="3TrEf2" id="6s2wbV0S_Gt" role="2OqNvi">
                              <ref role="3Tt5mk" to="5j4j:7E86$tKsqnr" resolve="code" />
                            </node>
                          </node>
                          <node concept="3YRAZt" id="6s2wbV0SAjA" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6s2wbV0ROe$" role="3eO9$A">
                  <node concept="2OqwBi" id="6s2wbV0RNGu" role="2Oq$k0">
                    <node concept="37vLTw" id="6s2wbV0RNyR" role="2Oq$k0">
                      <ref role="3cqZAo" node="6s2wbV0RA7F" resolve="val" />
                    </node>
                    <node concept="1mfA1w" id="6s2wbV0RNTH" role="2OqNvi" />
                  </node>
                  <node concept="1mIQ4w" id="6s2wbV0ROxX" role="2OqNvi">
                    <node concept="chp4Y" id="6s2wbV0ROzW" role="cj9EA">
                      <ref role="cht4Q" to="wq2x:18kNIl0jL2T" resolve="AsTypePseudoConstraint" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6s2wbV0RA8k" role="1Duv9x">
            <property role="TrG5h" value="inst" />
            <node concept="3uibUv" id="6s2wbV0RA8l" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="37vLTw" id="6s2wbV0RA8m" role="1DdaDG">
            <ref role="3cqZAo" node="6s2wbV0RA7n" resolve="instances" />
          </node>
        </node>
      </node>
      <node concept="ffn8J" id="6s2wbV0R$rh" role="3clF46">
        <property role="TrG5h" value="m" />
        <ref role="ffrpq" to="slm6:7fCCGqboj9J" resolve="m" />
        <node concept="3uibUv" id="6s2wbV0R$rg" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="q3mfm" id="6s2wbV0R$ri" role="3clF45">
        <ref role="q3mfh" to="slm6:4F5w8gPXEEe" />
        <ref role="1QQUv3" node="6s2wbV0R$rb" resolve="execute" />
      </node>
    </node>
    <node concept="3tTeZs" id="6s2wbV0R$rj" role="jymVt">
      <property role="3tTeZt" value="&lt;no result checking&gt;" />
      <ref role="3tTeZr" to="slm6:1JWcQ2VeXpD" resolve="check" />
    </node>
  </node>
</model>

