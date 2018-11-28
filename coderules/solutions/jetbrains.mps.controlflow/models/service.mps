<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5cb7c45c-18d8-4304-8c38-29c80242b908(jetbrains.mps.controlflow.service)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="13" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
  </languages>
  <imports>
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.coderules.template)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="cxk7" ref="r:daa544a7-0a5c-49c0-a54c-4c2a5b4868aa(jetbrains.mps.logic.predicate)" />
    <import index="9x2e" ref="r:0730b0d1-7e2f-4982-aac3-8069c5060a9c(jetbrains.mps.lang.typesystem2.reporting)" />
    <import index="1yqb" ref="r:bd76f794-cfad-45dd-9c1c-e3203d1c5c7a(jetbrains.mps.coderules.service)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="7n8k" ref="r:475a2e92-d7d4-41c3-98e3-172d70b6f018(jetbrains.mps.logic.program)" />
    <import index="unkn" ref="f97d84b2-8bad-4fdd-8ede-da17b3eacf4c/java:io.reactivex(jetbrains.mps.coderules/)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="d6hs" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.item(MPS.Core/)" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1238852151516" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType" flags="in" index="1LlUBW">
        <child id="1238852204892" name="componentType" index="1Lm7xW" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
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
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="7400021826771268254" name="jetbrains.mps.lang.smodel.structure.SNodePointerType" flags="ig" index="2sp9CU" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="4t7Xo7inNgi">
    <property role="TrG5h" value="ControlflowQueryKind" />
    <node concept="2tJIrI" id="4t7Xo7inNkz" role="jymVt" />
    <node concept="Wx3nA" id="4t7Xo7inNvw" role="jymVt">
      <property role="TrG5h" value="CHECK" />
      <node concept="3Tm1VV" id="2Mi2iz0OoCw" role="1B3o_S" />
      <node concept="3uibUv" id="4t7Xo7inN$E" role="1tU5fm">
        <ref role="3uigEE" node="4t7Xo7inNgi" resolve="ControlflowQueryKind" />
      </node>
      <node concept="2ShNRf" id="4t7Xo7inNOo" role="33vP2m">
        <node concept="1pGfFk" id="4t7Xo7inNGW" role="2ShVmc">
          <ref role="37wK5l" node="4t7Xo7inNpI" resolve="ControlflowQueryKind" />
          <node concept="Xl_RD" id="4t7Xo7inOzL" role="37wK5m">
            <property role="Xl_RC" value="check" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="78H58oerGSc" role="jymVt" />
    <node concept="2YIFZL" id="4t7Xo7ivOW6" role="jymVt">
      <property role="TrG5h" value="fromFqName" />
      <node concept="37vLTG" id="4t7Xo7ivP5g" role="3clF46">
        <property role="TrG5h" value="fqName" />
        <node concept="17QB3L" id="4t7Xo7ivP8I" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4t7Xo7ivP13" role="3clF45">
        <ref role="3uigEE" node="4t7Xo7inNgi" resolve="ControlflowQueryKind" />
      </node>
      <node concept="3Tm1VV" id="4t7Xo7ivOW9" role="1B3o_S" />
      <node concept="3clFbS" id="4t7Xo7ivOWa" role="3clF47">
        <node concept="3clFbJ" id="4t7Xo7ivZ7l" role="3cqZAp">
          <node concept="3clFbS" id="4t7Xo7ivZ7n" role="3clFbx">
            <node concept="3cpWs6" id="4t7Xo7iw1dO" role="3cqZAp">
              <node concept="37vLTw" id="78H58oerFJX" role="3cqZAk">
                <ref role="3cqZAo" node="4t7Xo7inNvw" resolve="CHECK" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4t7Xo7iw0ft" role="3clFbw">
            <node concept="2OqwBi" id="4t7Xo7ivZCe" role="2Oq$k0">
              <node concept="37vLTw" id="78H58oerFK2" role="2Oq$k0">
                <ref role="3cqZAo" node="4t7Xo7inNvw" resolve="CHECK" />
              </node>
              <node concept="liA8E" id="4t7Xo7ivZSW" role="2OqNvi">
                <ref role="37wK5l" node="4t7Xo7ivVfN" resolve="fqName" />
              </node>
            </node>
            <node concept="liA8E" id="4t7Xo7iw0Kl" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="37vLTw" id="4t7Xo7iw11c" role="37wK5m">
                <ref role="3cqZAo" node="4t7Xo7ivP5g" resolve="fqName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4t7Xo7iw246" role="3cqZAp">
          <node concept="10Nm6u" id="4t7Xo7iw2eg" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2Mi2iz0Xmmt" role="jymVt" />
    <node concept="3clFb_" id="2Mi2iz0Xxrq" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="2Mi2iz0Xxrr" role="1B3o_S" />
      <node concept="17QB3L" id="2Mi2iz0Yjii" role="3clF45" />
      <node concept="3clFbS" id="2Mi2iz0Xxru" role="3clF47">
        <node concept="3clFbF" id="2Mi2iz0Xz1C" role="3cqZAp">
          <node concept="1rXfSq" id="2Mi2iz0Xz1B" role="3clFbG">
            <ref role="37wK5l" node="4t7Xo7ivVfN" resolve="fqName" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2Mi2iz0Xxrv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2Mi2iz0Xybp" role="jymVt" />
    <node concept="3clFbW" id="4t7Xo7inNpI" role="jymVt">
      <node concept="37vLTG" id="4t7Xo7inNON" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="4t7Xo7inNSH" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="4t7Xo7inNpK" role="3clF45" />
      <node concept="3Tm6S6" id="4t7Xo7inNq7" role="1B3o_S" />
      <node concept="3clFbS" id="4t7Xo7inNpM" role="3clF47">
        <node concept="3clFbF" id="4t7Xo7inNV1" role="3cqZAp">
          <node concept="37vLTI" id="4t7Xo7inNV3" role="3clFbG">
            <node concept="2OqwBi" id="4t7Xo7inO8v" role="37vLTJ">
              <node concept="Xjq3P" id="4t7Xo7inOgp" role="2Oq$k0" />
              <node concept="2OwXpG" id="4t7Xo7inOqV" role="2OqNvi">
                <ref role="2Oxat5" node="4t7Xo7inNUX" resolve="name" />
              </node>
            </node>
            <node concept="37vLTw" id="4t7Xo7inNV7" role="37vLTx">
              <ref role="3cqZAo" node="4t7Xo7inNON" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4t7Xo7inNkJ" role="jymVt" />
    <node concept="3clFb_" id="4t7Xo7ivVfN" role="jymVt">
      <property role="TrG5h" value="fqName" />
      <node concept="17QB3L" id="4t7Xo7ivYJt" role="3clF45" />
      <node concept="3Tm1VV" id="4t7Xo7ivVfQ" role="1B3o_S" />
      <node concept="3clFbS" id="4t7Xo7ivVfR" role="3clF47">
        <node concept="3clFbF" id="4t7Xo7ivWel" role="3cqZAp">
          <node concept="3cpWs3" id="4t7Xo7ivYds" role="3clFbG">
            <node concept="37vLTw" id="4t7Xo7ivYx_" role="3uHU7w">
              <ref role="3cqZAo" node="4t7Xo7inNUX" resolve="name" />
            </node>
            <node concept="3cpWs3" id="4t7Xo7ivXh8" role="3uHU7B">
              <node concept="2OqwBi" id="4t7Xo7ivWyB" role="3uHU7B">
                <node concept="2OqwBi" id="2Mi2iz0Yf4b" role="2Oq$k0">
                  <node concept="1rXfSq" id="4t7Xo7ivWek" role="2Oq$k0">
                    <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                  </node>
                  <node concept="liA8E" id="2Mi2iz0YfRL" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.getPackage():java.lang.Package" resolve="getPackage" />
                  </node>
                </node>
                <node concept="liA8E" id="4t7Xo7ivWVU" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Package.getName():java.lang.String" resolve="getName" />
                </node>
              </node>
              <node concept="Xl_RD" id="4t7Xo7ivXoD" role="3uHU7w">
                <property role="Xl_RC" value="." />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4t7Xo7ivV0z" role="jymVt" />
    <node concept="3Tm1VV" id="4t7Xo7inNgj" role="1B3o_S" />
    <node concept="3uibUv" id="4t7Xo7inNjm" role="EKbjA">
      <ref role="3uigEE" to="i348:4t7Xo7inshN" resolve="QueryKind" />
    </node>
    <node concept="312cEg" id="4t7Xo7inNUX" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="3Tm6S6" id="4t7Xo7inNUY" role="1B3o_S" />
      <node concept="17QB3L" id="4t7Xo7inNV0" role="1tU5fm" />
    </node>
  </node>
  <node concept="312cEu" id="7lt0LtQ_OIS">
    <property role="TrG5h" value="ControlflowSessionSolver" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="oI9Yrbvo_" role="jymVt" />
    <node concept="3clFbW" id="oI9Yrbvrt" role="jymVt">
      <node concept="3cqZAl" id="oI9Yrbvrv" role="3clF45" />
      <node concept="3Tm1VV" id="oI9Yrbvrw" role="1B3o_S" />
      <node concept="3clFbS" id="oI9Yrbvrx" role="3clF47">
        <node concept="XkiVB" id="oI9Yrbvx2" role="3cqZAp">
          <ref role="37wK5l" to="cxk7:23c4kVtavpK" resolve="DefaultSessionSolver" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7lt0LtQ_OLY" role="jymVt" />
    <node concept="3clFb_" id="7lt0LtQ_SZU" role="jymVt">
      <property role="TrG5h" value="assignType" />
      <node concept="37vLTG" id="7lt0LtQ_T0C" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="7lt0LtQ_T26" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7lt0LtQ_T29" role="3clF46">
        <property role="TrG5h" value="nodeType" />
        <node concept="3Tqbb2" id="7lt0LtQ_T3R" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="oI9YrbUH2" role="3clF45" />
      <node concept="3Tm1VV" id="7lt0LtQ_SZX" role="1B3o_S" />
      <node concept="3clFbS" id="7lt0LtQ_SZY" role="3clF47">
        <node concept="3SKdUt" id="78H58oeu59G" role="3cqZAp">
          <node concept="3SKdUq" id="78H58oeu59I" role="3SKWNk">
            <property role="3SKdUp" value="FIXME this doesn't belong here" />
          </node>
        </node>
        <node concept="YS8fn" id="78H58oeu4WY" role="3cqZAp">
          <node concept="2ShNRf" id="78H58oeu4XS" role="YScLw">
            <node concept="1pGfFk" id="78H58oeu55k" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="oI9YrIZQO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1FOQehvIsJr" role="jymVt" />
    <node concept="3Tm1VV" id="7lt0LtQ_OIT" role="1B3o_S" />
    <node concept="3uibUv" id="7lt0LtQ_OLT" role="1zkMxy">
      <ref role="3uigEE" to="cxk7:3F6vMxqo13Y" resolve="DefaultSessionSolver" />
    </node>
    <node concept="3uibUv" id="78H58oeu4oM" role="EKbjA">
      <ref role="3uigEE" to="9x2e:oI9YrIZeS" resolve="Reporting" />
    </node>
  </node>
  <node concept="312cEu" id="78H58oeu6dG">
    <property role="TrG5h" value="ControlflowStep" />
    <node concept="2tJIrI" id="78H58oeu6M4" role="jymVt" />
    <node concept="3clFbW" id="78H58oeu6OE" role="jymVt">
      <node concept="37vLTG" id="78H58oeu6VL" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="78H58oeu71S" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3cqZAl" id="78H58oeu6OG" role="3clF45" />
      <node concept="3Tm1VV" id="78H58oeu6OH" role="1B3o_S" />
      <node concept="3clFbS" id="78H58oeu6OI" role="3clF47">
        <node concept="XkiVB" id="78H58oeu6Un" role="3cqZAp">
          <ref role="37wK5l" to="1yqb:1pPth$lHpLU" resolve="EvaluateRulesStep" />
          <node concept="37vLTw" id="78H58oeu9ti" role="37wK5m">
            <ref role="3cqZAo" node="78H58oeu6VL" resolve="repository" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Yb9hAqJRts" role="jymVt" />
    <node concept="3clFb_" id="6Yb9hAqJSaM" role="jymVt">
      <property role="TrG5h" value="scheduleWithTrace" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="6Yb9hAqJSaN" role="3clF46">
        <property role="TrG5h" value="prevStepWithTrace" />
        <node concept="3uibUv" id="6Yb9hAqJSaO" role="1tU5fm">
          <ref role="3uigEE" to="unkn:~Single" resolve="Single" />
          <node concept="1LlUBW" id="6Yb9hAqJSaP" role="11_B2D">
            <node concept="3uibUv" id="6Yb9hAqJSaQ" role="1Lm7xW">
              <ref role="3uigEE" to="1yqb:1pPth$lAwc0" resolve="ApplyTemplatesStep" />
            </node>
            <node concept="3uibUv" id="6Yb9hAqJSaR" role="1Lm7xW">
              <ref role="3uigEE" to="7n8k:qubcdtxBiR" resolve="EvaluationTraceExt" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6Yb9hAqJSaS" role="3clF46">
        <property role="TrG5h" value="subscribeScheduler" />
        <node concept="3uibUv" id="6Yb9hAqJSaT" role="1tU5fm">
          <ref role="3uigEE" to="unkn:~Scheduler" resolve="Scheduler" />
        </node>
      </node>
      <node concept="3uibUv" id="6Yb9hAqJSaU" role="3clF45">
        <ref role="3uigEE" to="unkn:~Single" resolve="Single" />
        <node concept="3uibUv" id="6Yb9hAqJSaV" role="11_B2D">
          <ref role="3uigEE" to="1yqb:1pPth$lBNWG" resolve="EvaluateRulesStep" />
        </node>
      </node>
      <node concept="3Tmbuc" id="6Yb9hAqJSaW" role="1B3o_S" />
      <node concept="3clFbS" id="6Yb9hAqJSf8" role="3clF47">
        <node concept="3clFbF" id="6Yb9hAqJSfd" role="3cqZAp">
          <node concept="2OqwBi" id="6Yb9hAqJTeO" role="3clFbG">
            <node concept="3nyPlj" id="6Yb9hAqJSfc" role="2Oq$k0">
              <ref role="37wK5l" to="1yqb:55Q$YFtHM07" resolve="scheduleWithTrace" />
              <node concept="37vLTw" id="6Yb9hAqJSfa" role="37wK5m">
                <ref role="3cqZAo" node="6Yb9hAqJSaN" resolve="prevStepWithTrace" />
              </node>
              <node concept="37vLTw" id="6Yb9hAqJSfb" role="37wK5m">
                <ref role="3cqZAo" node="6Yb9hAqJSaS" resolve="subscribeScheduler" />
              </node>
            </node>
            <node concept="liA8E" id="6Yb9hAqJTJO" role="2OqNvi">
              <ref role="37wK5l" to="unkn:~Single.map(io.reactivex.functions.Function):io.reactivex.Single" resolve="map" />
              <node concept="1bVj0M" id="6Yb9hAqJUtw" role="37wK5m">
                <node concept="37vLTG" id="6Yb9hAqJUBz" role="1bW2Oz">
                  <property role="TrG5h" value="step" />
                  <node concept="3uibUv" id="6Yb9hAqJUJy" role="1tU5fm">
                    <ref role="3uigEE" to="1yqb:1pPth$lBNWG" resolve="EvaluateRulesStep" />
                  </node>
                </node>
                <node concept="3clFbS" id="6Yb9hAqJUtx" role="1bW5cS">
                  <node concept="3clFbH" id="6Yb9hAqJV$G" role="3cqZAp" />
                  <node concept="3SKdUt" id="6Yb9hAqKbak" role="3cqZAp">
                    <node concept="3SKdUq" id="6Yb9hAqKbam" role="3SKWNk">
                      <property role="3SKdUp" value="NOP" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="6Yb9hAqJV$L" role="3cqZAp" />
                  <node concept="3clFbF" id="6Yb9hAqJVMD" role="3cqZAp">
                    <node concept="37vLTw" id="6Yb9hAqJVMB" role="3clFbG">
                      <ref role="3cqZAo" node="6Yb9hAqJUBz" resolve="step" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6Yb9hAqJSf9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6Yb9hAqJRuL" role="jymVt" />
    <node concept="3clFb_" id="78H58oeu6MG" role="jymVt">
      <property role="TrG5h" value="createSessionSolver" />
      <property role="1EzhhJ" value="false" />
      <node concept="3uibUv" id="78H58oeu9FS" role="3clF45">
        <ref role="3uigEE" to="w7la:~SessionSolver" resolve="SessionSolver" />
      </node>
      <node concept="3Tmbuc" id="78H58oeu6MI" role="1B3o_S" />
      <node concept="3clFbS" id="78H58oeu6MK" role="3clF47">
        <node concept="3clFbF" id="78H58oeu9J9" role="3cqZAp">
          <node concept="2ShNRf" id="78H58oeu9J7" role="3clFbG">
            <node concept="YeOm9" id="78H58oeuadh" role="2ShVmc">
              <node concept="1Y3b0j" id="78H58oeuadk" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" node="7lt0LtQ_OIS" resolve="ControlflowSessionSolver" />
                <ref role="37wK5l" node="oI9Yrbvrt" resolve="ControlflowSessionSolver" />
                <node concept="3Tm1VV" id="78H58oeuadl" role="1B3o_S" />
                <node concept="3clFb_" id="78H58oeuats" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="report" />
                  <node concept="37vLTG" id="78H58oeuatv" role="3clF46">
                    <property role="TrG5h" value="kind" />
                    <node concept="3uibUv" id="1FOQehwpupN" role="1tU5fm">
                      <ref role="3uigEE" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="78H58oeuatt" role="3clF46">
                    <property role="TrG5h" value="target" />
                    <node concept="2sp9CU" id="1FOQehwMiYP" role="1tU5fm" />
                  </node>
                  <node concept="37vLTG" id="78H58oeuatx" role="3clF46">
                    <property role="TrG5h" value="text" />
                    <node concept="17QB3L" id="78H58oeuaty" role="1tU5fm" />
                  </node>
                  <node concept="10P_77" id="78H58oeuatz" role="3clF45" />
                  <node concept="3Tm1VV" id="78H58oeuat$" role="1B3o_S" />
                  <node concept="2AHcQZ" id="78H58oeuatC" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                  <node concept="3clFbS" id="78H58oeuatE" role="3clF47">
                    <node concept="3clFbF" id="1FOQehx4EW8" role="3cqZAp">
                      <node concept="2OqwBi" id="1FOQehx4Gp2" role="3clFbG">
                        <node concept="37vLTw" id="1FOQehx4EW6" role="2Oq$k0">
                          <ref role="3cqZAo" node="1FOQehx4tIV" resolve="reportItems" />
                        </node>
                        <node concept="TSZUe" id="1FOQehx4HQH" role="2OqNvi">
                          <node concept="2ShNRf" id="1FOQehx4If8" role="25WWJ7">
                            <node concept="1pGfFk" id="1FOQehx4Jls" role="2ShVmc">
                              <ref role="37wK5l" node="1FOQehwow5Q" resolve="ControlflowReportItem" />
                              <node concept="37vLTw" id="1FOQehx47KN" role="37wK5m">
                                <ref role="3cqZAo" node="78H58oeuatv" resolve="kind" />
                              </node>
                              <node concept="37vLTw" id="1FOQehx47KO" role="37wK5m">
                                <ref role="3cqZAo" node="78H58oeuatt" resolve="target" />
                              </node>
                              <node concept="37vLTw" id="1FOQehx47KP" role="37wK5m">
                                <ref role="3cqZAo" node="78H58oeuatx" resolve="text" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="oI9Ysby3S" role="3cqZAp">
                      <node concept="3clFbT" id="1FOQehxPxp2" role="3cqZAk">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2tJIrI" id="72RDgIN3jWs" role="jymVt" />
                <node concept="3clFb_" id="72RDgIN3k5M" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="contextRepository" />
                  <node concept="3uibUv" id="72RDgIN3k5N" role="3clF45">
                    <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                  </node>
                  <node concept="3Tm1VV" id="72RDgIN3k5O" role="1B3o_S" />
                  <node concept="3clFbS" id="72RDgIN3k5U" role="3clF47">
                    <node concept="3clFbF" id="72RDgIN3pjg" role="3cqZAp">
                      <node concept="1rXfSq" id="72RDgIN3pjf" role="3clFbG">
                        <ref role="37wK5l" to="1yqb:443LGHBSOXq" resolve="getRepository" />
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="72RDgIN3k5V" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="78H58oeu6ML" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="78H58oeubmD" role="jymVt" />
    <node concept="3clFb_" id="1FOQehx4yMT" role="jymVt">
      <property role="TrG5h" value="getReportItems" />
      <node concept="3Tm1VV" id="1FOQehx4yMX" role="1B3o_S" />
      <node concept="3clFbS" id="1FOQehx4yMY" role="3clF47">
        <node concept="3clFbF" id="1FOQehx4BDl" role="3cqZAp">
          <node concept="37vLTw" id="1FOQehx4BDk" role="3clFbG">
            <ref role="3cqZAo" node="1FOQehx4tIV" resolve="reportItems" />
          </node>
        </node>
      </node>
      <node concept="3vKaQO" id="1FOQehx4$tY" role="3clF45">
        <node concept="3uibUv" id="1FOQehx4_l3" role="3O5elw">
          <ref role="3uigEE" to="d6hs:~ReportItem" resolve="ReportItem" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1FOQehx4yMS" role="jymVt" />
    <node concept="3clFb_" id="6kREIVl0T6j" role="jymVt">
      <property role="TrG5h" value="getTraceTabComponents" />
      <node concept="_YKpA" id="6kREIVl0T6k" role="3clF45">
        <node concept="3uibUv" id="6IQb_RxROcP" role="_ZDj9">
          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6kREIVl0T6m" role="1B3o_S" />
      <node concept="3clFbS" id="6kREIVl0T6n" role="3clF47">
        <node concept="3clFbF" id="6kREIVl0T6o" role="3cqZAp">
          <node concept="37vLTw" id="6IQb_Rx$Mfp" role="3clFbG">
            <ref role="3cqZAo" node="6IQb_RxsBvb" resolve="traceTabComponents" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="78H58oeuecU" role="jymVt" />
    <node concept="312cEg" id="6IQb_RxsBvb" role="jymVt">
      <property role="TrG5h" value="traceTabComponents" />
      <node concept="3Tmbuc" id="78H58of7l2T" role="1B3o_S" />
      <node concept="_YKpA" id="6IQb_RxsBvd" role="1tU5fm">
        <node concept="3uibUv" id="6IQb_RxRQS7" role="_ZDj9">
          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
        </node>
      </node>
      <node concept="2ShNRf" id="6IQb_RxsBvf" role="33vP2m">
        <node concept="Tc6Ow" id="6IQb_RxsBvg" role="2ShVmc">
          <node concept="3uibUv" id="6IQb_RxRP6h" role="HW$YZ">
            <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1FOQehx4tIV" role="jymVt">
      <property role="TrG5h" value="reportItems" />
      <node concept="3Tm6S6" id="1FOQehx4tIW" role="1B3o_S" />
      <node concept="_YKpA" id="1FOQehx4wLX" role="1tU5fm">
        <node concept="3uibUv" id="1FOQehx4x9c" role="_ZDj9">
          <ref role="3uigEE" to="d6hs:~ReportItem" resolve="ReportItem" />
        </node>
      </node>
      <node concept="2ShNRf" id="1FOQehx4yzm" role="33vP2m">
        <node concept="Tc6Ow" id="1FOQehx4yv6" role="2ShVmc">
          <node concept="3uibUv" id="1FOQehx4yv7" role="HW$YZ">
            <ref role="3uigEE" to="d6hs:~ReportItem" resolve="ReportItem" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="78H58oeu6dH" role="1B3o_S" />
    <node concept="3uibUv" id="78H58oeu6eG" role="1zkMxy">
      <ref role="3uigEE" to="1yqb:1pPth$lBNWG" resolve="EvaluateRulesStep" />
    </node>
  </node>
  <node concept="312cEu" id="1FOQehwovmW">
    <property role="TrG5h" value="ControlflowReportItem" />
    <node concept="2tJIrI" id="1FOQehwov_X" role="jymVt" />
    <node concept="3clFbW" id="1FOQehwow5Q" role="jymVt">
      <node concept="37vLTG" id="1FOQehwownE" role="3clF46">
        <property role="TrG5h" value="stat" />
        <node concept="3uibUv" id="1FOQehwozrM" role="1tU5fm">
          <ref role="3uigEE" to="2gg1:~MessageStatus" resolve="MessageStatus" />
        </node>
      </node>
      <node concept="37vLTG" id="1FOQehwozse" role="3clF46">
        <property role="TrG5h" value="nodeRef" />
        <node concept="3uibUv" id="1FOQehwozyA" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="37vLTG" id="1FOQehwozzD" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="1FOQehwozKs" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1FOQehwow5S" role="3clF45" />
      <node concept="3Tm1VV" id="1FOQehwow5T" role="1B3o_S" />
      <node concept="3clFbS" id="1FOQehwow5U" role="3clF47">
        <node concept="XkiVB" id="1FOQehwozvf" role="3cqZAp">
          <ref role="37wK5l" to="d6hs:~NodeReportItemBase.&lt;init&gt;(jetbrains.mps.errors.MessageStatus,org.jetbrains.mps.openapi.model.SNodeReference,java.lang.String)" resolve="NodeReportItemBase" />
          <node concept="37vLTw" id="1FOQehwozDB" role="37wK5m">
            <ref role="3cqZAo" node="1FOQehwownE" resolve="stat" />
          </node>
          <node concept="37vLTw" id="1FOQehwozGd" role="37wK5m">
            <ref role="3cqZAo" node="1FOQehwozse" resolve="nodeRef" />
          </node>
          <node concept="37vLTw" id="1FOQehwozJ1" role="37wK5m">
            <ref role="3cqZAo" node="1FOQehwozzD" resolve="message" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1FOQehwowbp" role="jymVt" />
    <node concept="3Tm1VV" id="1FOQehwovmX" role="1B3o_S" />
    <node concept="3uibUv" id="1FOQehwovnW" role="1zkMxy">
      <ref role="3uigEE" to="d6hs:~NodeReportItemBase" resolve="NodeReportItemBase" />
    </node>
    <node concept="3clFb_" id="1FOQehwovo1" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getIssueKind" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="1FOQehwovo2" role="1B3o_S" />
      <node concept="3uibUv" id="5t4mtEg02Hk" role="3clF45">
        <ref role="3uigEE" to="d6hs:~IssueKindReportItem$ItemKind" resolve="IssueKindReportItem.ItemKind" />
      </node>
      <node concept="3clFbS" id="1FOQehwovoe" role="3clF47">
        <node concept="3clFbF" id="5t4mtEg03ir" role="3cqZAp">
          <node concept="2OqwBi" id="5t4mtEg03x0" role="3clFbG">
            <node concept="37vLTw" id="5t4mtEg03ip" role="2Oq$k0">
              <ref role="3cqZAo" to="d6hs:~IssueKindReportItem.TYPESYSTEM" resolve="TYPESYSTEM" />
            </node>
            <node concept="liA8E" id="5t4mtEg03Sb" role="2OqNvi">
              <ref role="37wK5l" to="d6hs:~IssueKindReportItem$CheckerCategory.deriveItemKind(java.lang.String):jetbrains.mps.errors.item.IssueKindReportItem$ItemKind" resolve="deriveItemKind" />
              <node concept="Xl_RD" id="5t4mtEg03Se" role="37wK5m">
                <property role="Xl_RC" value="control flow" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1FOQehwovof" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1FOQehwovCw" role="jymVt" />
  </node>
</model>

