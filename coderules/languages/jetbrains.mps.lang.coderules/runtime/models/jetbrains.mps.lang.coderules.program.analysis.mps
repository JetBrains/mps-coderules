<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4fd33103-fc30-42f4-a8cf-d1e858f21988(jetbrains.mps.lang.coderules.program.analysis)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="av0y" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.program(jetbrains.mps.logic.reactor/)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.coderules.template)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
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
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
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
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="2526372162255441536" name="jetbrains.mps.baseLanguage.collections.structure.AsUnmodifiableOperation" flags="nn" index="26Dbio" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1235566831861" name="jetbrains.mps.baseLanguage.collections.structure.AllOperation" flags="nn" index="2HxqBE" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="1H_6AUT30JE">
    <property role="TrG5h" value="IncrementalProgramSpecBuilder" />
    <node concept="3clFbW" id="1H_6AUT3jQn" role="jymVt">
      <node concept="37vLTG" id="1H_6AUT3m5k" role="3clF46">
        <property role="TrG5h" value="pRules" />
        <node concept="3uibUv" id="1TR62lz4a8E" role="1tU5fm">
          <ref role="3uigEE" node="1TR62lz486_" resolve="PrincipalRulesProvider" />
        </node>
      </node>
      <node concept="37vLTG" id="1H_6AUT3jQL" role="3clF46">
        <property role="TrG5h" value="pCtrs" />
        <node concept="3uibUv" id="1H_6AUT3jR6" role="1tU5fm">
          <ref role="3uigEE" node="1H_6AUT33xC" resolve="PrincipalConstraintProvider" />
        </node>
      </node>
      <node concept="37vLTG" id="1H_6AUT3jRu" role="3clF46">
        <property role="TrG5h" value="checkers" />
        <node concept="3vKaQO" id="1H_6AUT3jRP" role="1tU5fm">
          <node concept="3uibUv" id="1H_6AUT3jS7" role="3O5elw">
            <ref role="3uigEE" node="1H_6AUT30Sc" resolve="ProgramChecker" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1H_6AUT3jQp" role="3clF45" />
      <node concept="3Tm1VV" id="1H_6AUT3jQq" role="1B3o_S" />
      <node concept="3clFbS" id="1H_6AUT3jQr" role="3clF47">
        <node concept="3clFbF" id="1H_6AUT3lm3" role="3cqZAp">
          <node concept="37vLTI" id="1H_6AUT3m2x" role="3clFbG">
            <node concept="37vLTw" id="1H_6AUT3mwl" role="37vLTx">
              <ref role="3cqZAo" node="1H_6AUT3m5k" resolve="pRules" />
            </node>
            <node concept="2OqwBi" id="1H_6AUT3lwI" role="37vLTJ">
              <node concept="Xjq3P" id="1H_6AUT3lm1" role="2Oq$k0" />
              <node concept="2OwXpG" id="1H_6AUT3lR1" role="2OqNvi">
                <ref role="2Oxat5" node="1H_6AUT3lJS" resolve="pRules" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1H_6AUT3kNI" role="3cqZAp">
          <node concept="37vLTI" id="1H_6AUT3l7Z" role="3clFbG">
            <node concept="37vLTw" id="1H_6AUT3l8P" role="37vLTx">
              <ref role="3cqZAo" node="1H_6AUT3jQL" resolve="pCtrs" />
            </node>
            <node concept="2OqwBi" id="1H_6AUT3kXp" role="37vLTJ">
              <node concept="Xjq3P" id="1H_6AUT3kNG" role="2Oq$k0" />
              <node concept="2OwXpG" id="1H_6AUT3l2E" role="2OqNvi">
                <ref role="2Oxat5" node="1H_6AUT3kKV" resolve="pCtrs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1H_6AUT3jUC" role="3cqZAp">
          <node concept="37vLTI" id="1H_6AUT3kwx" role="3clFbG">
            <node concept="37vLTw" id="1H_6AUT3kBt" role="37vLTx">
              <ref role="3cqZAo" node="1H_6AUT3jRu" resolve="checkers" />
            </node>
            <node concept="2OqwBi" id="1H_6AUT3jYM" role="37vLTJ">
              <node concept="Xjq3P" id="1H_6AUT3jUB" role="2Oq$k0" />
              <node concept="2OwXpG" id="1H_6AUT3k47" role="2OqNvi">
                <ref role="2Oxat5" node="1H_6AUT3jTO" resolve="checkers" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1H_6AUT4nsI" role="jymVt" />
    <node concept="3clFbW" id="1H_6AUT4mKn" role="jymVt">
      <node concept="37vLTG" id="1TR62lz4b_b" role="3clF46">
        <property role="TrG5h" value="pRules" />
        <node concept="3uibUv" id="1TR62lz4bC9" role="1tU5fm">
          <ref role="3uigEE" node="1TR62lz486_" resolve="PrincipalRulesProvider" />
        </node>
      </node>
      <node concept="37vLTG" id="1H_6AUT4mKq" role="3clF46">
        <property role="TrG5h" value="pCtrs" />
        <node concept="3uibUv" id="1H_6AUT4mKr" role="1tU5fm">
          <ref role="3uigEE" node="1H_6AUT33xC" resolve="PrincipalConstraintProvider" />
        </node>
      </node>
      <node concept="3cqZAl" id="1H_6AUT4mKv" role="3clF45" />
      <node concept="3Tm1VV" id="1H_6AUT4mKw" role="1B3o_S" />
      <node concept="3clFbS" id="1H_6AUT4mKx" role="3clF47">
        <node concept="3clFbF" id="1H_6AUT4mKy" role="3cqZAp">
          <node concept="37vLTI" id="1H_6AUT4mKz" role="3clFbG">
            <node concept="37vLTw" id="1TR62lz4bFc" role="37vLTx">
              <ref role="3cqZAo" node="1TR62lz4b_b" resolve="pRules" />
            </node>
            <node concept="2OqwBi" id="1H_6AUT4mK_" role="37vLTJ">
              <node concept="Xjq3P" id="1H_6AUT4mKA" role="2Oq$k0" />
              <node concept="2OwXpG" id="1H_6AUT4mKB" role="2OqNvi">
                <ref role="2Oxat5" node="1H_6AUT3lJS" resolve="pRules" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1H_6AUT4mKC" role="3cqZAp">
          <node concept="37vLTI" id="1H_6AUT4mKD" role="3clFbG">
            <node concept="37vLTw" id="1H_6AUT4mKE" role="37vLTx">
              <ref role="3cqZAo" node="1H_6AUT4mKq" resolve="pCtrs" />
            </node>
            <node concept="2OqwBi" id="1H_6AUT4mKF" role="37vLTJ">
              <node concept="Xjq3P" id="1H_6AUT4mKG" role="2Oq$k0" />
              <node concept="2OwXpG" id="1H_6AUT4mKH" role="2OqNvi">
                <ref role="2Oxat5" node="1H_6AUT3kKV" resolve="pCtrs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1H_6AUT4mKI" role="3cqZAp">
          <node concept="37vLTI" id="1H_6AUT4mKJ" role="3clFbG">
            <node concept="2OqwBi" id="1H_6AUT4mKL" role="37vLTJ">
              <node concept="Xjq3P" id="1H_6AUT4mKM" role="2Oq$k0" />
              <node concept="2OwXpG" id="1H_6AUT4mKN" role="2OqNvi">
                <ref role="2Oxat5" node="1H_6AUT3jTO" resolve="checkers" />
              </node>
            </node>
            <node concept="2ShNRf" id="1H_6AUT4oKG" role="37vLTx">
              <node concept="Tc6Ow" id="1H_6AUT4oWB" role="2ShVmc">
                <node concept="3uibUv" id="1H_6AUT4plF" role="HW$YZ">
                  <ref role="3uigEE" node="1H_6AUT30Sc" resolve="ProgramChecker" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1H_6AUT3la0" role="jymVt" />
    <node concept="3clFb_" id="1H_6AUT3mkR" role="jymVt">
      <property role="TrG5h" value="getSpec" />
      <node concept="3clFbS" id="1H_6AUT3mkU" role="3clF47">
        <node concept="3clFbJ" id="1H_6AUT3mz0" role="3cqZAp">
          <node concept="2OqwBi" id="1H_6AUT3o4Q" role="3clFbw">
            <node concept="37vLTw" id="1H_6AUT3mzs" role="2Oq$k0">
              <ref role="3cqZAo" node="1H_6AUT3jTO" resolve="checkers" />
            </node>
            <node concept="2HxqBE" id="1H_6AUT3oww" role="2OqNvi">
              <node concept="1bVj0M" id="1H_6AUT3owy" role="23t8la">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="1H_6AUT3owz" role="1bW5cS">
                  <node concept="3clFbF" id="1H_6AUT3CM5" role="3cqZAp">
                    <node concept="2OqwBi" id="1H_6AUT3DdK" role="3clFbG">
                      <node concept="37vLTw" id="1H_6AUT3D38" role="2Oq$k0">
                        <ref role="3cqZAo" node="1H_6AUT3ow$" resolve="it" />
                      </node>
                      <node concept="liA8E" id="1H_6AUT3Dpv" role="2OqNvi">
                        <ref role="37wK5l" to="i348:1H_6AUSXuxC" resolve="run" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1H_6AUT3o_S" role="3cqZAp">
                    <node concept="2OqwBi" id="1H_6AUT3oRK" role="3clFbG">
                      <node concept="37vLTw" id="1H_6AUT3o_R" role="2Oq$k0">
                        <ref role="3cqZAo" node="1H_6AUT3ow$" resolve="it" />
                      </node>
                      <node concept="liA8E" id="1H_6AUT3p2W" role="2OqNvi">
                        <ref role="37wK5l" node="1H_6AUT31fx" resolve="passed" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1H_6AUT3ow$" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1H_6AUT3ow_" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1H_6AUT3mz2" role="3clFbx">
            <node concept="3cpWs6" id="1H_6AUT3_pK" role="3cqZAp">
              <node concept="2ShNRf" id="1H_6AUT3_pX" role="3cqZAk">
                <node concept="1pGfFk" id="1H_6AUT3A1D" role="2ShVmc">
                  <ref role="37wK5l" node="1H_6AUT3r6M" resolve="SimpleSpec" />
                  <node concept="2OqwBi" id="1H_6AUT3ALr" role="37wK5m">
                    <node concept="37vLTw" id="1H_6AUT3AgE" role="2Oq$k0">
                      <ref role="3cqZAo" node="1H_6AUT3kKV" resolve="pCtrs" />
                    </node>
                    <node concept="liA8E" id="1H_6AUT3B5t" role="2OqNvi">
                      <ref role="37wK5l" node="1H_6AUT34Ub" resolve="getPrincipalCtrs" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1TR62lz4cYh" role="37wK5m">
                    <node concept="37vLTw" id="1TR62lz4csE" role="2Oq$k0">
                      <ref role="3cqZAo" node="1H_6AUT3lJS" resolve="pRules" />
                    </node>
                    <node concept="liA8E" id="1TR62lz4dnh" role="2OqNvi">
                      <ref role="37wK5l" node="1TR62lz48kR" resolve="getPrincipalRules" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1H_6AUT3p7m" role="9aQIa">
            <node concept="3clFbS" id="1H_6AUT3p7n" role="9aQI4">
              <node concept="3cpWs6" id="1H_6AUT3pbR" role="3cqZAp">
                <node concept="10M0yZ" id="1H_6AUT3pql" role="3cqZAk">
                  <ref role="3cqZAo" to="av0y:~IncrementalProgramSpec.DefaultSpec" resolve="DefaultSpec" />
                  <ref role="1PxDUh" to="av0y:~IncrementalProgramSpec" resolve="IncrementalProgramSpec" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1H_6AUT3lh4" role="1B3o_S" />
      <node concept="3uibUv" id="1H_6AUT3liW" role="3clF45">
        <ref role="3uigEE" to="av0y:~IncrementalProgramSpec" resolve="IncrementalProgramSpec" />
      </node>
      <node concept="2AHcQZ" id="5Ud1wlIOa9K" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1H_6AUT3jSL" role="jymVt" />
    <node concept="312cEg" id="1H_6AUT3lJS" role="jymVt">
      <property role="TrG5h" value="pRules" />
      <node concept="3Tm6S6" id="1H_6AUT3lHE" role="1B3o_S" />
      <node concept="3uibUv" id="1TR62lz49rR" role="1tU5fm">
        <ref role="3uigEE" node="1TR62lz486_" resolve="PrincipalRulesProvider" />
      </node>
    </node>
    <node concept="312cEg" id="1H_6AUT3kKV" role="jymVt">
      <property role="TrG5h" value="pCtrs" />
      <node concept="3Tm6S6" id="1H_6AUT3kEL" role="1B3o_S" />
      <node concept="3uibUv" id="1H_6AUT3kMl" role="1tU5fm">
        <ref role="3uigEE" node="1H_6AUT33xC" resolve="PrincipalConstraintProvider" />
      </node>
    </node>
    <node concept="312cEg" id="1H_6AUT3jTO" role="jymVt">
      <property role="TrG5h" value="checkers" />
      <node concept="3vKaQO" id="1H_6AUT3jTo" role="1tU5fm">
        <node concept="3uibUv" id="1H_6AUT3jTL" role="3O5elw">
          <ref role="3uigEE" node="1H_6AUT30Sc" resolve="ProgramChecker" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1H_6AUT3jUg" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="1H_6AUT30JF" role="1B3o_S" />
    <node concept="3uibUv" id="5Ud1wlIO9Yw" role="EKbjA">
      <ref role="3uigEE" to="i348:2WtKs4u1ogK" resolve="SpecProvider" />
    </node>
  </node>
  <node concept="312cEu" id="1H_6AUT30Sc">
    <property role="TrG5h" value="ProgramChecker" />
    <property role="1sVAO0" value="true" />
    <node concept="3clFbW" id="1H_6AUT30ZU" role="jymVt">
      <node concept="37vLTG" id="1H_6AUT310j" role="3clF46">
        <property role="TrG5h" value="deps" />
        <node concept="8X2XB" id="1H_6AUT3110" role="1tU5fm">
          <node concept="3uibUv" id="1H_6AUT310C" role="8Xvag">
            <ref role="3uigEE" to="i348:1H_6AUSXnyk" resolve="ProgramAnalysis" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1H_6AUT30ZW" role="3clF45" />
      <node concept="3Tm1VV" id="1H_6AUT30ZX" role="1B3o_S" />
      <node concept="3clFbS" id="1H_6AUT30ZY" role="3clF47">
        <node concept="XkiVB" id="1H_6AUT311O" role="3cqZAp">
          <ref role="37wK5l" to="i348:1H_6AUSXnzy" resolve="ProgramAnalysis" />
          <node concept="37vLTw" id="1H_6AUT312i" role="37wK5m">
            <ref role="3cqZAo" node="1H_6AUT310j" resolve="deps" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1H_6AUT31So" role="jymVt" />
    <node concept="3clFb_" id="1H_6AUT31fx" role="jymVt">
      <property role="TrG5h" value="passed" />
      <node concept="3clFbS" id="1H_6AUT31f$" role="3clF47">
        <node concept="3cpWs6" id="1H_6AUT31ia" role="3cqZAp">
          <node concept="37vLTw" id="1H_6AUT33qn" role="3cqZAk">
            <ref role="3cqZAo" node="1H_6AUT31o0" resolve="passed" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1H_6AUT31ch" role="1B3o_S" />
      <node concept="10P_77" id="1H_6AUT31ey" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1H_6AUT313n" role="jymVt" />
    <node concept="3Tm1VV" id="1H_6AUT30Sd" role="1B3o_S" />
    <node concept="3uibUv" id="1H_6AUT30To" role="1zkMxy">
      <ref role="3uigEE" to="i348:1H_6AUSXnyk" resolve="ProgramAnalysis" />
    </node>
    <node concept="3clFb_" id="1H_6AUT3173" role="jymVt">
      <property role="TrG5h" value="doRun" />
      <property role="DiZV1" value="true" />
      <node concept="3cqZAl" id="1H_6AUT3175" role="3clF45" />
      <node concept="3Tmbuc" id="1H_6AUT3176" role="1B3o_S" />
      <node concept="3clFbS" id="1H_6AUT3177" role="3clF47">
        <node concept="3clFbF" id="1H_6AUT32IV" role="3cqZAp">
          <node concept="37vLTI" id="1H_6AUT32Z8" role="3clFbG">
            <node concept="1rXfSq" id="1H_6AUT3350" role="37vLTx">
              <ref role="37wK5l" node="1H_6AUT32Fe" resolve="doCheck" />
            </node>
            <node concept="37vLTw" id="1H_6AUT32IT" role="37vLTJ">
              <ref role="3cqZAo" node="1H_6AUT31o0" resolve="passed" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1H_6AUT3178" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5VJ3UjCjlJf" role="jymVt" />
    <node concept="3clFb_" id="5VJ3UjCjiO0" role="jymVt">
      <property role="TrG5h" value="doMerge" />
      <node concept="37vLTG" id="5VJ3UjCjiO1" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3uibUv" id="5VJ3UjCjiO2" role="1tU5fm">
          <ref role="3uigEE" to="i348:1H_6AUSXnyk" resolve="ProgramAnalysis" />
        </node>
      </node>
      <node concept="3Tmbuc" id="5VJ3UjCjiO4" role="1B3o_S" />
      <node concept="3uibUv" id="5ka_cIaiY1t" role="3clF45">
        <ref role="3uigEE" to="i348:1H_6AUSXnyk" resolve="ProgramAnalysis" />
      </node>
      <node concept="3clFbS" id="5VJ3UjCjiO6" role="3clF47">
        <node concept="3clFbF" id="5VJ3UjCjiO9" role="3cqZAp">
          <node concept="Xjq3P" id="5ka_cIajkzy" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5VJ3UjCjiO7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1H_6AUT32eO" role="jymVt" />
    <node concept="3clFb_" id="1H_6AUT32Fe" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="doCheck" />
      <node concept="3clFbS" id="1H_6AUT32Fh" role="3clF47" />
      <node concept="3Tmbuc" id="1H_6AUT32Da" role="1B3o_S" />
      <node concept="10P_77" id="1H_6AUT32Ec" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1H_6AUT32ze" role="jymVt" />
    <node concept="312cEg" id="1H_6AUT31o0" role="jymVt">
      <property role="TrG5h" value="passed" />
      <node concept="3Tm6S6" id="1H_6AUT31kE" role="1B3o_S" />
      <node concept="10P_77" id="1H_6AUT31n1" role="1tU5fm" />
      <node concept="3clFbT" id="1H_6AUT31oC" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="1H_6AUT328o" role="jymVt" />
  </node>
  <node concept="3HP615" id="1H_6AUT33xC">
    <property role="TrG5h" value="PrincipalConstraintProvider" />
    <node concept="3clFb_" id="1H_6AUT34Ub" role="jymVt">
      <property role="TrG5h" value="getPrincipalCtrs" />
      <node concept="3clFbS" id="1H_6AUT34Ue" role="3clF47" />
      <node concept="3Tm1VV" id="1H_6AUT34Uf" role="1B3o_S" />
      <node concept="2hMVRd" id="1H_6AUT34LH" role="3clF45">
        <node concept="3uibUv" id="1H_6AUT34UA" role="2hN53Y">
          <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1H_6AUT33xD" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="1TR62lz486_">
    <property role="TrG5h" value="PrincipalRulesProvider" />
    <node concept="3clFb_" id="1TR62lz48kR" role="jymVt">
      <property role="TrG5h" value="getPrincipalRules" />
      <node concept="3clFbS" id="1TR62lz48kU" role="3clF47" />
      <node concept="3Tm1VV" id="1TR62lz48kV" role="1B3o_S" />
      <node concept="2hMVRd" id="1TR62lz488t" role="3clF45">
        <node concept="3uibUv" id="1TR62lz488H" role="2hN53Y">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1TR62lz486A" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1H_6AUT3qmv">
    <property role="TrG5h" value="SimpleSpec" />
    <node concept="3clFbW" id="1H_6AUT3r6M" role="jymVt">
      <node concept="37vLTG" id="1H_6AUT3r9P" role="3clF46">
        <property role="TrG5h" value="principalCtrs" />
        <node concept="2hMVRd" id="1H_6AUT3rcv" role="1tU5fm">
          <node concept="3uibUv" id="1H_6AUT3rd2" role="2hN53Y">
            <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1H_6AUT3re_" role="3clF46">
        <property role="TrG5h" value="principalRules" />
        <node concept="2hMVRd" id="1H_6AUT3rhi" role="1tU5fm">
          <node concept="3uibUv" id="1H_6AUT3rhP" role="2hN53Y">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1H_6AUT3r6O" role="3clF45" />
      <node concept="3Tm1VV" id="1H_6AUT3z9D" role="1B3o_S" />
      <node concept="3clFbS" id="1H_6AUT3r6Q" role="3clF47">
        <node concept="3clFbF" id="1H_6AUT3rlw" role="3cqZAp">
          <node concept="37vLTI" id="1H_6AUT3seb" role="3clFbG">
            <node concept="37vLTw" id="1H_6AUT3sn1" role="37vLTx">
              <ref role="3cqZAo" node="1H_6AUT3r9P" resolve="principalCtrs" />
            </node>
            <node concept="2OqwBi" id="1H_6AUT3rrD" role="37vLTJ">
              <node concept="Xjq3P" id="1H_6AUT3rlv" role="2Oq$k0" />
              <node concept="2OwXpG" id="1H_6AUT3rEU" role="2OqNvi">
                <ref role="2Oxat5" node="1H_6AUT3qQ7" resolve="principalCtrs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1H_6AUT3stk" role="3cqZAp">
          <node concept="37vLTI" id="1H_6AUT3txJ" role="3clFbG">
            <node concept="37vLTw" id="1H_6AUT3tE_" role="37vLTx">
              <ref role="3cqZAo" node="1H_6AUT3re_" resolve="principalRules" />
            </node>
            <node concept="2OqwBi" id="1H_6AUT3sCh" role="37vLTJ">
              <node concept="Xjq3P" id="1H_6AUT3sti" role="2Oq$k0" />
              <node concept="2OwXpG" id="1H_6AUT3sRC" role="2OqNvi">
                <ref role="2Oxat5" node="1H_6AUT3r3E" resolve="principalRules" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1H_6AUT3qFj" role="jymVt" />
    <node concept="3Tm1VV" id="1tFmpKdQv0E" role="1B3o_S" />
    <node concept="3uibUv" id="1H_6AUT3qvZ" role="EKbjA">
      <ref role="3uigEE" to="av0y:~IncrementalProgramSpec" resolve="IncrementalProgramSpec" />
    </node>
    <node concept="3clFb_" id="1H_6AUT3qx2" role="jymVt">
      <property role="TrG5h" value="isPrincipal" />
      <node concept="3Tm1VV" id="1H_6AUT3qx3" role="1B3o_S" />
      <node concept="10P_77" id="1H_6AUT3qx5" role="3clF45" />
      <node concept="37vLTG" id="1H_6AUT3qx6" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="1H_6AUT3qx7" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Constraint" resolve="Constraint" />
        </node>
      </node>
      <node concept="3clFbS" id="1H_6AUT3qx8" role="3clF47">
        <node concept="3cpWs6" id="1H_6AUT3qxb" role="3cqZAp">
          <node concept="2OqwBi" id="1H_6AUT3uxd" role="3cqZAk">
            <node concept="37vLTw" id="1H_6AUT3tL7" role="2Oq$k0">
              <ref role="3cqZAo" node="1H_6AUT3qQ7" resolve="principalCtrs" />
            </node>
            <node concept="3JPx81" id="1H_6AUT3vwJ" role="2OqNvi">
              <node concept="2OqwBi" id="1H_6AUT3vNs" role="25WWJ7">
                <node concept="37vLTw" id="1H_6AUT3vAe" role="2Oq$k0">
                  <ref role="3cqZAo" node="1H_6AUT3qx6" resolve="constraint" />
                </node>
                <node concept="liA8E" id="1H_6AUT3wfj" role="2OqNvi">
                  <ref role="37wK5l" to="av0y:~Constraint.symbol()" resolve="symbol" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1H_6AUT3qx9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1H_6AUT3qxc" role="jymVt">
      <property role="TrG5h" value="isPrincipal" />
      <node concept="3Tm1VV" id="1H_6AUT3qxd" role="1B3o_S" />
      <node concept="10P_77" id="1H_6AUT3qxf" role="3clF45" />
      <node concept="37vLTG" id="1H_6AUT3qxg" role="3clF46">
        <property role="TrG5h" value="rule" />
        <node concept="3uibUv" id="1H_6AUT3qxh" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
      <node concept="3clFbS" id="1H_6AUT3qxi" role="3clF47">
        <node concept="3cpWs6" id="1H_6AUT3qxl" role="3cqZAp">
          <node concept="1Wc70l" id="cmlg9O7Wff" role="3cqZAk">
            <node concept="2ZW3vV" id="cmlg9O7WR1" role="3uHU7B">
              <node concept="3uibUv" id="cmlg9O7X$p" role="2ZW6by">
                <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
              </node>
              <node concept="37vLTw" id="cmlg9O7Ww$" role="2ZW6bz">
                <ref role="3cqZAo" node="1H_6AUT3qxg" resolve="rule" />
              </node>
            </node>
            <node concept="2OqwBi" id="1H_6AUT3xhF" role="3uHU7w">
              <node concept="37vLTw" id="1H_6AUT3wwu" role="2Oq$k0">
                <ref role="3cqZAo" node="1H_6AUT3r3E" resolve="principalRules" />
              </node>
              <node concept="3JPx81" id="1H_6AUT3yjD" role="2OqNvi">
                <node concept="2OqwBi" id="1H_6AUT3yEU" role="25WWJ7">
                  <node concept="1eOMI4" id="cmlg9O7XGo" role="2Oq$k0">
                    <node concept="10QFUN" id="cmlg9O7XGn" role="1eOMHV">
                      <node concept="37vLTw" id="cmlg9O7XGm" role="10QFUP">
                        <ref role="3cqZAo" node="1H_6AUT3qxg" resolve="rule" />
                      </node>
                      <node concept="3uibUv" id="cmlg9O7XV2" role="10QFUM">
                        <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6xVZN2uLgGx" role="2OqNvi">
                    <ref role="37wK5l" to="i348:~Rule.basetag()" resolve="basetag" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1H_6AUT3qxj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1H_6AUT3qHZ" role="jymVt" />
    <node concept="312cEg" id="1H_6AUT3qQ7" role="jymVt">
      <property role="TrG5h" value="principalCtrs" />
      <node concept="3Tm6S6" id="1H_6AUT3qL3" role="1B3o_S" />
      <node concept="2hMVRd" id="1H_6AUT3qNO" role="1tU5fm">
        <node concept="3uibUv" id="1H_6AUT3qQ4" role="2hN53Y">
          <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1H_6AUT3r3E" role="jymVt">
      <property role="TrG5h" value="principalRules" />
      <node concept="3Tm6S6" id="1H_6AUT3qVK" role="1B3o_S" />
      <node concept="2hMVRd" id="1H_6AUT3qY_" role="1tU5fm">
        <node concept="3uibUv" id="1H_6AUT3r0P" role="2hN53Y">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6b4eZz$Pl6e">
    <property role="1sVAO0" value="true" />
    <property role="TrG5h" value="BasicProgramAnalysis" />
    <node concept="2tJIrI" id="6b4eZz$PsSx" role="jymVt" />
    <node concept="3clFb_" id="6b4eZz$PzDy" role="jymVt">
      <property role="TrG5h" value="getPrincipalCtrs" />
      <node concept="3clFbS" id="6b4eZz$PzDz" role="3clF47">
        <node concept="3cpWs6" id="6b4eZz$PzD$" role="3cqZAp">
          <node concept="2OqwBi" id="6b4eZz$PzD_" role="3cqZAk">
            <node concept="37vLTw" id="6b4eZz$Q6Rq" role="2Oq$k0">
              <ref role="3cqZAo" node="6b4eZz$Q4E3" resolve="principalCtrs" />
            </node>
            <node concept="26Dbio" id="6b4eZz$PzDB" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6b4eZz$PzDC" role="1B3o_S" />
      <node concept="2hMVRd" id="6b4eZz$PzDD" role="3clF45">
        <node concept="3uibUv" id="6b4eZz$PzDE" role="2hN53Y">
          <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6b4eZz$PzDG" role="jymVt" />
    <node concept="3clFb_" id="6b4eZz$PzDH" role="jymVt">
      <property role="TrG5h" value="getPrincipalRules" />
      <node concept="3clFbS" id="6b4eZz$PzDI" role="3clF47">
        <node concept="3cpWs6" id="6b4eZz$PzDJ" role="3cqZAp">
          <node concept="2OqwBi" id="6b4eZz$PzDK" role="3cqZAk">
            <node concept="37vLTw" id="6b4eZz$Q74j" role="2Oq$k0">
              <ref role="3cqZAo" node="6b4eZz$Q4Ea" resolve="principalRulesTags" />
            </node>
            <node concept="26Dbio" id="6b4eZz$PzDM" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6b4eZz$PzDN" role="1B3o_S" />
      <node concept="2hMVRd" id="6b4eZz$PzDO" role="3clF45">
        <node concept="3uibUv" id="6b4eZz$PzDP" role="2hN53Y">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5ka_cIaj6kt" role="jymVt" />
    <node concept="3clFb_" id="6b4eZz$PC$s" role="jymVt">
      <property role="TrG5h" value="getSpec" />
      <node concept="3clFbS" id="6b4eZz$PC$t" role="3clF47">
        <node concept="3cpWs6" id="6b4eZz$PC$u" role="3cqZAp">
          <node concept="2ShNRf" id="6b4eZz$PC$v" role="3cqZAk">
            <node concept="1pGfFk" id="6b4eZz$PC$w" role="2ShVmc">
              <ref role="37wK5l" node="1H_6AUT3r6M" resolve="SimpleSpec" />
              <node concept="2OqwBi" id="6b4eZz$PC$x" role="37wK5m">
                <node concept="37vLTw" id="6b4eZz$Q7hX" role="2Oq$k0">
                  <ref role="3cqZAo" node="6b4eZz$Q4E3" resolve="principalCtrs" />
                </node>
                <node concept="26Dbio" id="6b4eZz$PC$z" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="6b4eZz$PC$$" role="37wK5m">
                <node concept="37vLTw" id="6b4eZz$Q7s8" role="2Oq$k0">
                  <ref role="3cqZAo" node="6b4eZz$Q4Ea" resolve="principalRulesTags" />
                </node>
                <node concept="26Dbio" id="6b4eZz$PC$A" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6b4eZz$PC$B" role="1B3o_S" />
      <node concept="3uibUv" id="6b4eZz$PC$C" role="3clF45">
        <ref role="3uigEE" to="av0y:~IncrementalProgramSpec" resolve="IncrementalProgramSpec" />
      </node>
      <node concept="2AHcQZ" id="3L0F0kb7zGc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2WtKs4tZqIq" role="jymVt" />
    <node concept="3clFb_" id="6b4eZz$PR9g" role="jymVt">
      <property role="TrG5h" value="doMerge" />
      <node concept="37vLTG" id="6b4eZz$PR9h" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3uibUv" id="6b4eZz$PR9i" role="1tU5fm">
          <ref role="3uigEE" to="i348:1H_6AUSXnyk" resolve="ProgramAnalysis" />
        </node>
      </node>
      <node concept="3clFbS" id="6b4eZz$PR9j" role="3clF47">
        <node concept="3clFbJ" id="6b4eZz$PR9k" role="3cqZAp">
          <node concept="3fqX7Q" id="6b4eZz$PR9l" role="3clFbw">
            <node concept="2ZW3vV" id="6b4eZz$PR9m" role="3fr31v">
              <node concept="3uibUv" id="6b4eZz$PFAy" role="2ZW6by">
                <ref role="3uigEE" node="6b4eZz$Pl6e" resolve="BasicProgramAnalysis" />
              </node>
              <node concept="37vLTw" id="6b4eZz$PR9n" role="2ZW6bz">
                <ref role="3cqZAo" node="6b4eZz$PR9h" resolve="other" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6b4eZz$PR9o" role="3clFbx">
            <node concept="YS8fn" id="6b4eZz$PR9p" role="3cqZAp">
              <node concept="2ShNRf" id="6b4eZz$PR9q" role="YScLw">
                <node concept="1pGfFk" id="6b4eZz$PR9r" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6b4eZz$PR9s" role="3cqZAp">
          <node concept="3cpWsn" id="6b4eZz$PR9t" role="3cpWs9">
            <property role="TrG5h" value="otherAn" />
            <node concept="3uibUv" id="6b4eZz$PFI4" role="1tU5fm">
              <ref role="3uigEE" node="6b4eZz$Pl6e" resolve="BasicProgramAnalysis" />
            </node>
            <node concept="10QFUN" id="6b4eZz$PR9u" role="33vP2m">
              <node concept="3uibUv" id="6b4eZz$PHlj" role="10QFUM">
                <ref role="3uigEE" node="6b4eZz$Pl6e" resolve="BasicProgramAnalysis" />
              </node>
              <node concept="37vLTw" id="6b4eZz$PR9v" role="10QFUP">
                <ref role="3cqZAo" node="6b4eZz$PR9h" resolve="other" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6b4eZz$PR9w" role="3cqZAp" />
        <node concept="3clFbF" id="6b4eZz$PR9x" role="3cqZAp">
          <node concept="2OqwBi" id="6b4eZz$PR9y" role="3clFbG">
            <node concept="37vLTw" id="6b4eZz$Q7BE" role="2Oq$k0">
              <ref role="3cqZAo" node="6b4eZz$Q4E3" resolve="principalCtrs" />
            </node>
            <node concept="X8dFx" id="6b4eZz$PR9$" role="2OqNvi">
              <node concept="2OqwBi" id="6b4eZz$PR9_" role="25WWJ7">
                <node concept="37vLTw" id="6b4eZz$PR9A" role="2Oq$k0">
                  <ref role="3cqZAo" node="6b4eZz$PR9t" resolve="otherAn" />
                </node>
                <node concept="liA8E" id="6b4eZz$PITb" role="2OqNvi">
                  <ref role="37wK5l" node="6b4eZz$PzDy" resolve="getPrincipalCtrs" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6b4eZz$PR9B" role="3cqZAp">
          <node concept="2OqwBi" id="6b4eZz$PR9C" role="3clFbG">
            <node concept="37vLTw" id="6b4eZz$Q8Pa" role="2Oq$k0">
              <ref role="3cqZAo" node="6b4eZz$Q4Ea" resolve="principalRulesTags" />
            </node>
            <node concept="X8dFx" id="6b4eZz$PR9E" role="2OqNvi">
              <node concept="2OqwBi" id="6b4eZz$PR9F" role="25WWJ7">
                <node concept="37vLTw" id="6b4eZz$PR9G" role="2Oq$k0">
                  <ref role="3cqZAo" node="6b4eZz$PR9t" resolve="otherAn" />
                </node>
                <node concept="liA8E" id="6b4eZz$PNmI" role="2OqNvi">
                  <ref role="37wK5l" node="6b4eZz$PzDH" resolve="getPrincipalRules" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6b4eZz$PR9H" role="3cqZAp" />
        <node concept="3cpWs6" id="6b4eZz$PR9I" role="3cqZAp">
          <node concept="Xjq3P" id="5ka_cIaj52J" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tmbuc" id="6b4eZz$PR9K" role="1B3o_S" />
      <node concept="2AHcQZ" id="6b4eZz$PR9M" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3uibUv" id="5ka_cIaj3iN" role="3clF45">
        <ref role="3uigEE" to="i348:1H_6AUSXnyk" resolve="ProgramAnalysis" />
      </node>
    </node>
    <node concept="2tJIrI" id="7m2UX3UIaRM" role="jymVt" />
    <node concept="312cEg" id="6b4eZz$Q4E3" role="jymVt">
      <property role="TrG5h" value="principalCtrs" />
      <node concept="3Tmbuc" id="6b4eZz$Q57y" role="1B3o_S" />
      <node concept="2hMVRd" id="6b4eZz$Q4E5" role="1tU5fm">
        <node concept="3uibUv" id="6b4eZz$Q4E6" role="2hN53Y">
          <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="2ShNRf" id="6b4eZz$Q4E7" role="33vP2m">
        <node concept="2i4dXS" id="6b4eZz$Q4E8" role="2ShVmc">
          <node concept="3uibUv" id="6b4eZz$Q4E9" role="HW$YZ">
            <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6b4eZz$Q4Ea" role="jymVt">
      <property role="TrG5h" value="principalRulesTags" />
      <node concept="3Tmbuc" id="6b4eZz$Q5fU" role="1B3o_S" />
      <node concept="2hMVRd" id="6b4eZz$Q4Ec" role="1tU5fm">
        <node concept="3uibUv" id="6b4eZz$Q4Ed" role="2hN53Y">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2ShNRf" id="6b4eZz$Q4Ee" role="33vP2m">
        <node concept="2i4dXS" id="6b4eZz$Q4Ef" role="2ShVmc">
          <node concept="3uibUv" id="6b4eZz$Q4Eg" role="HW$YZ">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6b4eZz$PQ4u" role="jymVt" />
    <node concept="3Tm1VV" id="6b4eZz$Pl6f" role="1B3o_S" />
    <node concept="3uibUv" id="6b4eZz$PmDz" role="EKbjA">
      <ref role="3uigEE" to="i348:2WtKs4u1ogK" resolve="SpecProvider" />
    </node>
    <node concept="3uibUv" id="6b4eZz$PlaI" role="1zkMxy">
      <ref role="3uigEE" to="i348:1H_6AUSXnyk" resolve="ProgramAnalysis" />
    </node>
  </node>
</model>

