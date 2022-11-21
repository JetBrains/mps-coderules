<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4fd33103-fc30-42f4-a8cf-d1e858f21988(jetbrains.mps.lang.coderules.program.analysis)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="av0y" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.program(jetbrains.mps.logic.reactor/)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.coderules.template)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
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
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
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
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="312cEu" id="1H_6AUT30JE">
    <property role="TrG5h" value="IncrProgramSpecBuilder" />
    <node concept="2tJIrI" id="5tAk4yVVVak" role="jymVt" />
    <node concept="3clFb_" id="5tAk4yVVVcI" role="jymVt">
      <property role="TrG5h" value="principalConstraints" />
      <node concept="37vLTG" id="5tAk4yVVVdp" role="3clF46">
        <property role="TrG5h" value="pCtrs" />
        <node concept="A3Dl8" id="6zber0MLera" role="1tU5fm">
          <node concept="3uibUv" id="6zber0MLerc" role="A3Ik2">
            <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5tAk4yVVVcL" role="3clF47">
        <node concept="3clFbF" id="6zber0ML4fL" role="3cqZAp">
          <node concept="2OqwBi" id="6zber0ML4X8" role="3clFbG">
            <node concept="37vLTw" id="6zber0ML4fJ" role="2Oq$k0">
              <ref role="3cqZAo" node="5tAk4yVVVm9" resolve="principalConstraints" />
            </node>
            <node concept="X8dFx" id="6zber0ML5Iu" role="2OqNvi">
              <node concept="37vLTw" id="6zber0ML6Mx" role="25WWJ7">
                <ref role="3cqZAo" node="5tAk4yVVVdp" resolve="pCtrs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5tAk4yVVVtP" role="3cqZAp">
          <node concept="Xjq3P" id="5tAk4yVVVtO" role="3clFbG" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5tAk4yVVVaR" role="1B3o_S" />
      <node concept="3uibUv" id="5tAk4yVVVbc" role="3clF45">
        <ref role="3uigEE" node="1H_6AUT30JE" resolve="IncrProgramSpecBuilder" />
      </node>
    </node>
    <node concept="2tJIrI" id="5tAk4yVVWGO" role="jymVt" />
    <node concept="3clFb_" id="5tAk4yVVWHT" role="jymVt">
      <property role="TrG5h" value="principalRules" />
      <node concept="37vLTG" id="5tAk4yVVWHU" role="3clF46">
        <property role="TrG5h" value="pRules" />
        <node concept="A3Dl8" id="6zber0MLgvM" role="1tU5fm">
          <node concept="3uibUv" id="6zber0MLgvO" role="A3Ik2">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5tAk4yVVWHX" role="3clF47">
        <node concept="3clFbF" id="6zber0ML90r" role="3cqZAp">
          <node concept="2OqwBi" id="6zber0ML9H8" role="3clFbG">
            <node concept="37vLTw" id="6zber0ML90p" role="2Oq$k0">
              <ref role="3cqZAo" node="5tAk4yVVVmg" resolve="principalRulesTags" />
            </node>
            <node concept="X8dFx" id="6zber0MLat9" role="2OqNvi">
              <node concept="37vLTw" id="6zber0MLbxn" role="25WWJ7">
                <ref role="3cqZAo" node="5tAk4yVVWHU" resolve="pRules" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5tAk4yVVWI4" role="3cqZAp">
          <node concept="Xjq3P" id="5tAk4yVVWI5" role="3clFbG" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5tAk4yVVWI6" role="1B3o_S" />
      <node concept="3uibUv" id="5tAk4yVVWI7" role="3clF45">
        <ref role="3uigEE" node="1H_6AUT30JE" resolve="IncrProgramSpecBuilder" />
      </node>
    </node>
    <node concept="2tJIrI" id="5tAk4yVVWHm" role="jymVt" />
    <node concept="3clFb_" id="5tAk4yVVXiF" role="jymVt">
      <property role="TrG5h" value="assertingContracts" />
      <node concept="3clFbS" id="5tAk4yVVXiJ" role="3clF47">
        <node concept="3clFbJ" id="5tAk4yW1tVZ" role="3cqZAp">
          <node concept="3clFbS" id="5tAk4yW1tW1" role="3clFbx">
            <node concept="3clFbF" id="5tAk4yVVXiK" role="3cqZAp">
              <node concept="37vLTI" id="5tAk4yVVXiL" role="3clFbG">
                <node concept="2OqwBi" id="5tAk4yVVXiN" role="37vLTJ">
                  <node concept="Xjq3P" id="5tAk4yVVXiO" role="2Oq$k0" />
                  <node concept="2OwXpG" id="5tAk4yVVZvq" role="2OqNvi">
                    <ref role="2Oxat5" node="5tAk4yVVXPf" resolve="assertLevel" />
                  </node>
                </node>
                <node concept="Rm8GO" id="5tAk4yW1sav" role="37vLTx">
                  <ref role="1Px2BO" to="av0y:~IncrementalSpec$AssertLevel" resolve="IncrementalSpec.AssertLevel" />
                  <ref role="Rm8GQ" to="av0y:~IncrementalSpec$AssertLevel.AssertContracts" resolve="AssertContracts" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="5tAk4yW1u5Z" role="3clFbw">
            <ref role="3cqZAo" node="5tAk4yVVZ5$" resolve="isAsserting" />
          </node>
        </node>
        <node concept="3clFbF" id="5tAk4yVVXiQ" role="3cqZAp">
          <node concept="Xjq3P" id="5tAk4yVVXiR" role="3clFbG" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5tAk4yVVXiS" role="1B3o_S" />
      <node concept="3uibUv" id="5tAk4yVVXiT" role="3clF45">
        <ref role="3uigEE" node="1H_6AUT30JE" resolve="IncrProgramSpecBuilder" />
      </node>
      <node concept="37vLTG" id="5tAk4yVVZ5$" role="3clF46">
        <property role="TrG5h" value="isAsserting" />
        <node concept="10P_77" id="5tAk4yVVZ5z" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="57Rdq$NuGTN" role="jymVt" />
    <node concept="3clFb_" id="57Rdq$NuMzc" role="jymVt">
      <property role="TrG5h" value="setLevel" />
      <node concept="3clFbS" id="57Rdq$NuMzf" role="3clF47">
        <node concept="3clFbF" id="57Rdq$NuQxx" role="3cqZAp">
          <node concept="37vLTI" id="57Rdq$NuRkX" role="3clFbG">
            <node concept="37vLTw" id="57Rdq$NuRta" role="37vLTx">
              <ref role="3cqZAo" node="57Rdq$NuNW$" resolve="incrLevel" />
            </node>
            <node concept="2OqwBi" id="57Rdq$NuQEU" role="37vLTJ">
              <node concept="Xjq3P" id="57Rdq$NuQxw" role="2Oq$k0" />
              <node concept="2OwXpG" id="57Rdq$NuQPB" role="2OqNvi">
                <ref role="2Oxat5" node="57Rdq$NuEja" resolve="incrLevel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="57Rdq$NuRF6" role="3cqZAp">
          <node concept="Xjq3P" id="57Rdq$NuRF4" role="3clFbG" />
        </node>
      </node>
      <node concept="3Tm1VV" id="57Rdq$NuJKy" role="1B3o_S" />
      <node concept="3uibUv" id="57Rdq$NuMuS" role="3clF45">
        <ref role="3uigEE" node="1H_6AUT30JE" resolve="IncrProgramSpecBuilder" />
      </node>
      <node concept="37vLTG" id="57Rdq$NuNW$" role="3clF46">
        <property role="TrG5h" value="incrLevel" />
        <node concept="3uibUv" id="57Rdq$NuNWz" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~IncrementalSpec$IncrLevel" resolve="IncrementalSpec.IncrLevel" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5tAk4yW1et6" role="jymVt" />
    <node concept="3clFb_" id="5tAk4yW1cEZ" role="jymVt">
      <property role="TrG5h" value="enable" />
      <node concept="37vLTG" id="5tAk4yW293_" role="3clF46">
        <property role="TrG5h" value="ability" />
        <node concept="3uibUv" id="5tAk4yW29XR" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~IncrementalSpec$Enabled" resolve="IncrementalSpec.Enabled" />
        </node>
      </node>
      <node concept="3clFbS" id="5tAk4yW1cF0" role="3clF47">
        <node concept="3clFbF" id="5tAk4yW1cF1" role="3cqZAp">
          <node concept="37vLTI" id="5tAk4yW1cF2" role="3clFbG">
            <node concept="37vLTw" id="5tAk4yW2aeL" role="37vLTx">
              <ref role="3cqZAo" node="5tAk4yW293_" resolve="ability" />
            </node>
            <node concept="2OqwBi" id="5tAk4yW1cF4" role="37vLTJ">
              <node concept="Xjq3P" id="5tAk4yW1cF5" role="2Oq$k0" />
              <node concept="2OwXpG" id="5tAk4yW270t" role="2OqNvi">
                <ref role="2Oxat5" node="5tAk4yW1EFq" resolve="ability" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5tAk4yW1cF7" role="3cqZAp">
          <node concept="Xjq3P" id="5tAk4yW1cF8" role="3clFbG" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5tAk4yW1cF9" role="1B3o_S" />
      <node concept="3uibUv" id="5tAk4yW1cFa" role="3clF45">
        <ref role="3uigEE" node="1H_6AUT30JE" resolve="IncrProgramSpecBuilder" />
      </node>
    </node>
    <node concept="2tJIrI" id="5tAk4yVXjKI" role="jymVt" />
    <node concept="2YIFZL" id="5tAk4yVXmrH" role="jymVt">
      <property role="TrG5h" value="defaults" />
      <node concept="3clFbS" id="5tAk4yVXmrK" role="3clF47">
        <node concept="3clFbF" id="5tAk4yVXnVH" role="3cqZAp">
          <node concept="2ShNRf" id="5tAk4yVXnVF" role="3clFbG">
            <node concept="1pGfFk" id="5tAk4yVXEQ_" role="2ShVmc">
              <ref role="37wK5l" node="5tAk4yVXD3g" resolve="IncrProgramSpecBuilder" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5tAk4yVXlJv" role="1B3o_S" />
      <node concept="3uibUv" id="5tAk4yVXmnG" role="3clF45">
        <ref role="3uigEE" node="1H_6AUT30JE" resolve="IncrProgramSpecBuilder" />
      </node>
    </node>
    <node concept="2tJIrI" id="5tAk4yVXqX1" role="jymVt" />
    <node concept="3clFbW" id="5tAk4yVXD3g" role="jymVt">
      <node concept="3cqZAl" id="5tAk4yVXD3i" role="3clF45" />
      <node concept="3Tm6S6" id="5tAk4yVXEUX" role="1B3o_S" />
      <node concept="3clFbS" id="5tAk4yVXD3k" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5tAk4yVXCFc" role="jymVt" />
    <node concept="3clFb_" id="5tAk4yVVZZP" role="jymVt">
      <property role="TrG5h" value="toSpec" />
      <node concept="3Tm1VV" id="5tAk4yVVZZR" role="1B3o_S" />
      <node concept="3uibUv" id="5tAk4yW1H66" role="3clF45">
        <ref role="3uigEE" to="av0y:~IncrementalSpec" resolve="IncrementalSpec" />
      </node>
      <node concept="3clFbS" id="5tAk4yVVZZT" role="3clF47">
        <node concept="3clFbF" id="5tAk4yVW0Ai" role="3cqZAp">
          <node concept="2ShNRf" id="5tAk4yVW0Ag" role="3clFbG">
            <node concept="1pGfFk" id="5tAk4yVW1Nz" role="2ShVmc">
              <ref role="37wK5l" node="1H_6AUT3r6M" resolve="SimpleSpec" />
              <node concept="37vLTw" id="5tAk4yW2au6" role="37wK5m">
                <ref role="3cqZAo" node="5tAk4yW1EFq" resolve="ability" />
              </node>
              <node concept="37vLTw" id="57Rdq$NuGuI" role="37wK5m">
                <ref role="3cqZAo" node="57Rdq$NuEja" resolve="incrLevel" />
              </node>
              <node concept="37vLTw" id="5tAk4yW2bCB" role="37wK5m">
                <ref role="3cqZAo" node="5tAk4yVVXPf" resolve="assertLevel" />
              </node>
              <node concept="37vLTw" id="5tAk4yVW1QN" role="37wK5m">
                <ref role="3cqZAo" node="5tAk4yVVVm9" resolve="principalConstraints" />
              </node>
              <node concept="37vLTw" id="5tAk4yVW24B" role="37wK5m">
                <ref role="3cqZAo" node="5tAk4yVVVmg" resolve="principalRulesTags" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5tAk4yVVZZU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5tAk4yVWV$H" role="jymVt" />
    <node concept="3clFb_" id="5tAk4yVWVQQ" role="jymVt">
      <property role="TrG5h" value="merge" />
      <node concept="37vLTG" id="5tAk4yVWWba" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3uibUv" id="5tAk4yVWWhJ" role="1tU5fm">
          <ref role="3uigEE" to="i348:5tAk4yVWROK" resolve="ProgramSpecBuilder" />
        </node>
      </node>
      <node concept="3clFbS" id="5tAk4yVWVQT" role="3clF47">
        <node concept="3clFbJ" id="5tAk4yVWWQp" role="3cqZAp">
          <node concept="3fqX7Q" id="5tAk4yVWWQq" role="3clFbw">
            <node concept="2ZW3vV" id="5tAk4yVWWQr" role="3fr31v">
              <node concept="3uibUv" id="5tAk4yVX4gs" role="2ZW6by">
                <ref role="3uigEE" node="1H_6AUT30JE" resolve="IncrProgramSpecBuilder" />
              </node>
              <node concept="37vLTw" id="5tAk4yVWWQt" role="2ZW6bz">
                <ref role="3cqZAo" node="5tAk4yVWWba" resolve="other" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5tAk4yVWWQu" role="3clFbx">
            <node concept="YS8fn" id="5tAk4yVWWQv" role="3cqZAp">
              <node concept="2ShNRf" id="5tAk4yVWWQw" role="YScLw">
                <node concept="1pGfFk" id="5tAk4yVWWQx" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5tAk4yVWWQy" role="3cqZAp">
          <node concept="3cpWsn" id="5tAk4yVWWQz" role="3cpWs9">
            <property role="TrG5h" value="otherBuilder" />
            <node concept="3uibUv" id="5tAk4yVX7v7" role="1tU5fm">
              <ref role="3uigEE" node="1H_6AUT30JE" resolve="IncrProgramSpecBuilder" />
            </node>
            <node concept="10QFUN" id="5tAk4yVWWQ_" role="33vP2m">
              <node concept="3uibUv" id="5tAk4yVX8Om" role="10QFUM">
                <ref role="3uigEE" node="1H_6AUT30JE" resolve="IncrProgramSpecBuilder" />
              </node>
              <node concept="37vLTw" id="5tAk4yVWWQB" role="10QFUP">
                <ref role="3cqZAo" node="5tAk4yVWWba" resolve="other" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5tAk4yVWWQC" role="3cqZAp" />
        <node concept="3clFbF" id="5tAk4yVWWQD" role="3cqZAp">
          <node concept="2OqwBi" id="5tAk4yVWWQE" role="3clFbG">
            <node concept="37vLTw" id="5tAk4yVWWQF" role="2Oq$k0">
              <ref role="3cqZAo" node="5tAk4yVVVm9" resolve="principalConstraints" />
            </node>
            <node concept="X8dFx" id="5tAk4yVWWQG" role="2OqNvi">
              <node concept="2OqwBi" id="5tAk4yVWWQH" role="25WWJ7">
                <node concept="37vLTw" id="5tAk4yVWWQI" role="2Oq$k0">
                  <ref role="3cqZAo" node="5tAk4yVWWQz" resolve="otherBuilder" />
                </node>
                <node concept="2OwXpG" id="5tAk4yVXolV" role="2OqNvi">
                  <ref role="2Oxat5" node="5tAk4yVVVm9" resolve="principalConstraints" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5tAk4yVWWQK" role="3cqZAp">
          <node concept="2OqwBi" id="5tAk4yVWWQL" role="3clFbG">
            <node concept="37vLTw" id="5tAk4yVWWQM" role="2Oq$k0">
              <ref role="3cqZAo" node="5tAk4yVVVmg" resolve="principalRulesTags" />
            </node>
            <node concept="X8dFx" id="5tAk4yVWWQN" role="2OqNvi">
              <node concept="2OqwBi" id="5tAk4yVWWQO" role="25WWJ7">
                <node concept="37vLTw" id="5tAk4yVWWQP" role="2Oq$k0">
                  <ref role="3cqZAo" node="5tAk4yVWWQz" resolve="otherBuilder" />
                </node>
                <node concept="2OwXpG" id="5tAk4yVXpz0" role="2OqNvi">
                  <ref role="2Oxat5" node="5tAk4yVVVmg" resolve="principalRulesTags" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5tAk4yW1OdG" role="3cqZAp" />
        <node concept="3clFbF" id="5tAk4yW1SpN" role="3cqZAp">
          <node concept="37vLTI" id="5tAk4yW1SpO" role="3clFbG">
            <node concept="37vLTw" id="5tAk4yW1Wt$" role="37vLTJ">
              <ref role="3cqZAo" node="5tAk4yW1EFq" resolve="ability" />
            </node>
            <node concept="2OqwBi" id="5RMo22OHxuD" role="37vLTx">
              <node concept="37vLTw" id="5RMo22OHv92" role="2Oq$k0">
                <ref role="3cqZAo" node="5tAk4yW1EFq" resolve="ability" />
              </node>
              <node concept="liA8E" id="5RMo22OHxYR" role="2OqNvi">
                <ref role="37wK5l" to="av0y:~IncrementalSpec$Enabled.min(jetbrains.mps.logic.reactor.program.IncrementalSpec$Enabled)" resolve="min" />
                <node concept="2OqwBi" id="5RMo22OHyfX" role="37wK5m">
                  <node concept="37vLTw" id="5RMo22OHy2B" role="2Oq$k0">
                    <ref role="3cqZAo" node="5tAk4yVWWQz" resolve="otherBuilder" />
                  </node>
                  <node concept="2OwXpG" id="5RMo22OHyuj" role="2OqNvi">
                    <ref role="2Oxat5" node="5tAk4yW1EFq" resolve="ability" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="57Rdq$Nv5RQ" role="3cqZAp">
          <node concept="37vLTI" id="57Rdq$Nv7Pi" role="3clFbG">
            <node concept="2OqwBi" id="57Rdq$Nv8nO" role="37vLTx">
              <node concept="37vLTw" id="57Rdq$Nv7Y3" role="2Oq$k0">
                <ref role="3cqZAo" node="57Rdq$NuEja" resolve="incrLevel" />
              </node>
              <node concept="liA8E" id="57Rdq$Nv8Rx" role="2OqNvi">
                <ref role="37wK5l" to="av0y:~IncrementalSpec$IncrLevel.min(jetbrains.mps.logic.reactor.program.IncrementalSpec$IncrLevel)" resolve="min" />
                <node concept="2OqwBi" id="57Rdq$Nv95v" role="37wK5m">
                  <node concept="37vLTw" id="57Rdq$Nv8Ui" role="2Oq$k0">
                    <ref role="3cqZAo" node="5tAk4yVWWQz" resolve="otherBuilder" />
                  </node>
                  <node concept="2OwXpG" id="57Rdq$Nv9lD" role="2OqNvi">
                    <ref role="2Oxat5" node="57Rdq$NuEja" resolve="incrLevel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="57Rdq$Nv5RO" role="37vLTJ">
              <ref role="3cqZAo" node="57Rdq$NuEja" resolve="incrLevel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5tAk4yVXaLg" role="3cqZAp">
          <node concept="37vLTI" id="5tAk4yW1JLR" role="3clFbG">
            <node concept="37vLTw" id="5tAk4yW1JLW" role="37vLTJ">
              <ref role="3cqZAo" node="5tAk4yVVXPf" resolve="assertLevel" />
            </node>
            <node concept="2OqwBi" id="5RMo22OH_lf" role="37vLTx">
              <node concept="37vLTw" id="5RMo22OH$Lv" role="2Oq$k0">
                <ref role="3cqZAo" node="5tAk4yVVXPf" resolve="assertLevel" />
              </node>
              <node concept="liA8E" id="5RMo22OH_Km" role="2OqNvi">
                <ref role="37wK5l" to="av0y:~IncrementalSpec$AssertLevel.max(jetbrains.mps.logic.reactor.program.IncrementalSpec$AssertLevel)" resolve="max" />
                <node concept="2OqwBi" id="5RMo22OHA5u" role="37wK5m">
                  <node concept="37vLTw" id="5RMo22OH_Uh" role="2Oq$k0">
                    <ref role="3cqZAo" node="5tAk4yVWWQz" resolve="otherBuilder" />
                  </node>
                  <node concept="2OwXpG" id="5RMo22OHAmS" role="2OqNvi">
                    <ref role="2Oxat5" node="5tAk4yVVXPf" resolve="assertLevel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5tAk4yVWWQR" role="3cqZAp" />
        <node concept="3cpWs6" id="5tAk4yVWWQS" role="3cqZAp">
          <node concept="Xjq3P" id="5tAk4yVWWQT" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5tAk4yVWVHa" role="1B3o_S" />
      <node concept="3uibUv" id="5tAk4yVWVOq" role="3clF45">
        <ref role="3uigEE" node="1H_6AUT30JE" resolve="IncrProgramSpecBuilder" />
      </node>
      <node concept="2AHcQZ" id="5tAk4yVWWx5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5tAk4yVVVjN" role="jymVt" />
    <node concept="312cEg" id="5tAk4yVVVm9" role="jymVt">
      <property role="TrG5h" value="principalConstraints" />
      <node concept="3Tm6S6" id="5tAk4yVVVr1" role="1B3o_S" />
      <node concept="2hMVRd" id="5tAk4yVVVmb" role="1tU5fm">
        <node concept="3uibUv" id="5tAk4yVVVmc" role="2hN53Y">
          <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="2ShNRf" id="5tAk4yVVVmd" role="33vP2m">
        <node concept="2i4dXS" id="5tAk4yVVVme" role="2ShVmc">
          <node concept="3uibUv" id="5tAk4yVVVmf" role="HW$YZ">
            <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5tAk4yVVVmg" role="jymVt">
      <property role="TrG5h" value="principalRulesTags" />
      <node concept="3Tm6S6" id="5tAk4yVVVs7" role="1B3o_S" />
      <node concept="2hMVRd" id="5tAk4yVVVmi" role="1tU5fm">
        <node concept="3uibUv" id="5tAk4yVVVmj" role="2hN53Y">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2ShNRf" id="5tAk4yVVVmk" role="33vP2m">
        <node concept="2i4dXS" id="5tAk4yVVVml" role="2ShVmc">
          <node concept="3uibUv" id="5tAk4yVVVmm" role="HW$YZ">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5tAk4yW1EFq" role="jymVt">
      <property role="TrG5h" value="ability" />
      <node concept="3Tm6S6" id="5tAk4yW1DXT" role="1B3o_S" />
      <node concept="3uibUv" id="5tAk4yW1EAf" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~IncrementalSpec$Enabled" resolve="IncrementalSpec.Enabled" />
      </node>
      <node concept="Rm8GO" id="5tAk4yW1H1g" role="33vP2m">
        <ref role="Rm8GQ" to="av0y:~IncrementalSpec$Enabled.No" resolve="No" />
        <ref role="1Px2BO" to="av0y:~IncrementalSpec$Enabled" resolve="IncrementalSpec.Enabled" />
      </node>
    </node>
    <node concept="312cEg" id="57Rdq$NuEja" role="jymVt">
      <property role="TrG5h" value="incrLevel" />
      <node concept="3Tm6S6" id="57Rdq$NuCFz" role="1B3o_S" />
      <node concept="3uibUv" id="57Rdq$NuEfr" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~IncrementalSpec$IncrLevel" resolve="IncrementalSpec.IncrLevel" />
      </node>
      <node concept="Rm8GO" id="57Rdq$NuFId" role="33vP2m">
        <ref role="Rm8GQ" to="av0y:~IncrementalSpec$IncrLevel.Full" resolve="Full" />
        <ref role="1Px2BO" to="av0y:~IncrementalSpec$IncrLevel" resolve="IncrementalSpec.IncrLevel" />
      </node>
    </node>
    <node concept="312cEg" id="5tAk4yVVXPf" role="jymVt">
      <property role="TrG5h" value="assertLevel" />
      <node concept="3Tm6S6" id="5tAk4yVVX$N" role="1B3o_S" />
      <node concept="3uibUv" id="5tAk4yW1skz" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~IncrementalSpec$AssertLevel" resolve="IncrementalSpec.AssertLevel" />
      </node>
      <node concept="Rm8GO" id="5tAk4yW1tjD" role="33vP2m">
        <ref role="Rm8GQ" to="av0y:~IncrementalSpec$AssertLevel.Normal" resolve="Normal" />
        <ref role="1Px2BO" to="av0y:~IncrementalSpec$AssertLevel" resolve="IncrementalSpec.AssertLevel" />
      </node>
    </node>
    <node concept="3uibUv" id="5tAk4yVWVgt" role="EKbjA">
      <ref role="3uigEE" to="i348:5tAk4yVWROK" resolve="ProgramSpecBuilder" />
    </node>
    <node concept="3Tm1VV" id="5tAk4yVVZI$" role="1B3o_S" />
    <node concept="2AHcQZ" id="6AZXE2vtyQu" role="2AJF6D">
      <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      <node concept="2B6LJw" id="6AZXE2vt_K4" role="2B76xF">
        <ref role="2B6OnR" to="wyt6:~Deprecated.forRemoval()" resolve="forRemoval" />
        <node concept="3clFbT" id="6AZXE2vt_NE" role="2B70Vg">
          <property role="3clFbU" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1H_6AUT3qmv">
    <property role="TrG5h" value="SimpleSpec" />
    <node concept="3clFbW" id="1H_6AUT3r6M" role="jymVt">
      <node concept="37vLTG" id="5tAk4yW0ZYx" role="3clF46">
        <property role="TrG5h" value="enabled" />
        <node concept="3uibUv" id="5tAk4yW10mE" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~IncrementalSpec$Enabled" resolve="IncrementalSpec.Enabled" />
        </node>
      </node>
      <node concept="37vLTG" id="57Rdq$Nuy3T" role="3clF46">
        <property role="TrG5h" value="incrLevel" />
        <node concept="3uibUv" id="57Rdq$Nuyvy" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~IncrementalSpec$IncrLevel" resolve="IncrementalSpec.IncrLevel" />
        </node>
      </node>
      <node concept="37vLTG" id="5tAk4yW10y3" role="3clF46">
        <property role="TrG5h" value="assertLevel" />
        <node concept="3uibUv" id="5tAk4yW10Ue" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~IncrementalSpec$AssertLevel" resolve="IncrementalSpec.AssertLevel" />
        </node>
      </node>
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
        <node concept="3clFbF" id="5tAk4yW16Sy" role="3cqZAp">
          <node concept="37vLTI" id="5tAk4yW17Xy" role="3clFbG">
            <node concept="37vLTw" id="5tAk4yW180y" role="37vLTx">
              <ref role="3cqZAo" node="5tAk4yW0ZYx" resolve="enabled" />
            </node>
            <node concept="2OqwBi" id="5tAk4yW17gk" role="37vLTJ">
              <node concept="Xjq3P" id="5tAk4yW16Sw" role="2Oq$k0" />
              <node concept="2OwXpG" id="5tAk4yW17pv" role="2OqNvi">
                <ref role="2Oxat5" node="5tAk4yW0Zt3" resolve="enabled" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="57Rdq$NuyMW" role="3cqZAp">
          <node concept="37vLTI" id="57Rdq$NuzU6" role="3clFbG">
            <node concept="37vLTw" id="57Rdq$Nu$3B" role="37vLTx">
              <ref role="3cqZAo" node="57Rdq$Nuy3T" resolve="incrLevel" />
            </node>
            <node concept="2OqwBi" id="57Rdq$NuzbM" role="37vLTJ">
              <node concept="Xjq3P" id="57Rdq$NuyMU" role="2Oq$k0" />
              <node concept="2OwXpG" id="57Rdq$Nuzq_" role="2OqNvi">
                <ref role="2Oxat5" node="57Rdq$NuvYt" resolve="incrLevel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5tAk4yVWgfn" role="3cqZAp">
          <node concept="37vLTI" id="5tAk4yVWqKG" role="3clFbG">
            <node concept="2OqwBi" id="5tAk4yVWg$t" role="37vLTJ">
              <node concept="Xjq3P" id="5tAk4yVWgfl" role="2Oq$k0" />
              <node concept="2OwXpG" id="5tAk4yW11fn" role="2OqNvi">
                <ref role="2Oxat5" node="5tAk4yW0YB3" resolve="assertLevel" />
              </node>
            </node>
            <node concept="37vLTw" id="5tAk4yW11uV" role="37vLTx">
              <ref role="3cqZAo" node="5tAk4yW10y3" resolve="assertLevel" />
            </node>
          </node>
        </node>
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
    <node concept="3uibUv" id="5tAk4yW0NCM" role="EKbjA">
      <ref role="3uigEE" to="av0y:~IncrementalSpec" resolve="IncrementalSpec" />
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
        <node concept="3cpWs6" id="e$ws1zVcL2" role="3cqZAp">
          <node concept="2OqwBi" id="e$ws1zVcL3" role="3cqZAk">
            <node concept="37vLTw" id="e$ws1zVcL4" role="2Oq$k0">
              <ref role="3cqZAo" node="1H_6AUT3r3E" resolve="principalRules" />
            </node>
            <node concept="3JPx81" id="e$ws1zVcL5" role="2OqNvi">
              <node concept="2OqwBi" id="e$ws1zVcL6" role="25WWJ7">
                <node concept="2OqwBi" id="e$ws1zVcL7" role="2Oq$k0">
                  <node concept="37vLTw" id="e$ws1zVcL8" role="2Oq$k0">
                    <ref role="3cqZAo" node="1H_6AUT3qxg" resolve="rule" />
                  </node>
                  <node concept="liA8E" id="e$ws1zVcL9" role="2OqNvi">
                    <ref role="37wK5l" to="av0y:~Rule.uniqueTag()" resolve="uniqueTag" />
                  </node>
                </node>
                <node concept="liA8E" id="e$ws1zVcLa" role="2OqNvi">
                  <ref role="37wK5l" to="av0y:~Rule$Tag.groupName()" resolve="groupName" />
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
    <node concept="3clFb_" id="5R9R5HilSbP" role="jymVt">
      <property role="TrG5h" value="isWeakPrincipal" />
      <node concept="3Tm1VV" id="5R9R5HilSbQ" role="1B3o_S" />
      <node concept="10P_77" id="5R9R5HilSbR" role="3clF45" />
      <node concept="37vLTG" id="5R9R5HilSbS" role="3clF46">
        <property role="TrG5h" value="rule" />
        <node concept="3uibUv" id="5R9R5HilSbT" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Rule" resolve="Rule" />
        </node>
      </node>
      <node concept="3clFbS" id="5R9R5HilSbU" role="3clF47">
        <node concept="3cpWs6" id="5R9R5HilSbV" role="3cqZAp">
          <node concept="1Wc70l" id="5R9R5HilSbW" role="3cqZAk">
            <node concept="1Wc70l" id="5R9R5HilXrI" role="3uHU7B">
              <node concept="2ZW3vV" id="5R9R5HilSbX" role="3uHU7B">
                <node concept="3uibUv" id="5R9R5HilSbY" role="2ZW6by">
                  <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                </node>
                <node concept="37vLTw" id="5R9R5HilSbZ" role="2ZW6bz">
                  <ref role="3cqZAo" node="5R9R5HilSbS" resolve="rule" />
                </node>
              </node>
              <node concept="3y3z36" id="5R9R5HilW6k" role="3uHU7w">
                <node concept="10Nm6u" id="5R9R5HilWws" role="3uHU7w" />
                <node concept="2OqwBi" id="5R9R5HilVyZ" role="3uHU7B">
                  <node concept="1eOMI4" id="5R9R5HilURZ" role="2Oq$k0">
                    <node concept="10QFUN" id="5R9R5HilURW" role="1eOMHV">
                      <node concept="3uibUv" id="5R9R5HilVfa" role="10QFUM">
                        <ref role="3uigEE" to="i348:7nPD14OaO1O" resolve="RuleEx" />
                      </node>
                      <node concept="37vLTw" id="5R9R5HilUGS" role="10QFUP">
                        <ref role="3cqZAo" node="5R9R5HilSbS" resolve="rule" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3Pxu0s8jTB4" role="2OqNvi">
                    <ref role="37wK5l" to="i348:3Pxu0s8egWa" resolve="origin" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="5R9R5HilTvo" role="3uHU7w">
              <node concept="1rXfSq" id="5R9R5HilTOA" role="3fr31v">
                <ref role="37wK5l" node="1H_6AUT3qxc" resolve="isPrincipal" />
                <node concept="37vLTw" id="5R9R5HilU79" role="37wK5m">
                  <ref role="3cqZAo" node="5R9R5HilSbS" resolve="rule" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5R9R5HilSc9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5tAk4yW13Jh" role="jymVt" />
    <node concept="3clFb_" id="5tAk4yW14pq" role="jymVt">
      <property role="TrG5h" value="ability" />
      <node concept="3Tm1VV" id="5tAk4yW14pr" role="1B3o_S" />
      <node concept="3uibUv" id="5tAk4yW15cf" role="3clF45">
        <ref role="3uigEE" to="av0y:~IncrementalSpec$Enabled" resolve="IncrementalSpec.Enabled" />
      </node>
      <node concept="3clFbS" id="5tAk4yW14pt" role="3clF47">
        <node concept="3clFbF" id="5tAk4yW14pu" role="3cqZAp">
          <node concept="37vLTw" id="5tAk4yW166l" role="3clFbG">
            <ref role="3cqZAo" node="5tAk4yW0Zt3" resolve="enabled" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5tAk4yW14pw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="57Rdq$NuwKy" role="jymVt">
      <property role="TrG5h" value="incrLevel" />
      <node concept="3Tm1VV" id="57Rdq$NuwKz" role="1B3o_S" />
      <node concept="3uibUv" id="57Rdq$NuwKA" role="3clF45">
        <ref role="3uigEE" to="av0y:~IncrementalSpec$IncrLevel" resolve="IncrementalSpec.IncrLevel" />
      </node>
      <node concept="3clFbS" id="57Rdq$NuwKB" role="3clF47">
        <node concept="3clFbF" id="57Rdq$NuxPY" role="3cqZAp">
          <node concept="37vLTw" id="57Rdq$NuxPX" role="3clFbG">
            <ref role="3cqZAo" node="57Rdq$NuvYt" resolve="incrLevel" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="57Rdq$NuwKC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1JkMMuhf_MF" role="jymVt">
      <property role="TrG5h" value="assertLevel" />
      <node concept="3Tm1VV" id="1JkMMuhf_MG" role="1B3o_S" />
      <node concept="3uibUv" id="5tAk4yW1367" role="3clF45">
        <ref role="3uigEE" to="av0y:~IncrementalSpec$AssertLevel" resolve="IncrementalSpec.AssertLevel" />
      </node>
      <node concept="3clFbS" id="1JkMMuhf_MJ" role="3clF47">
        <node concept="3clFbF" id="1JkMMuhf_MM" role="3cqZAp">
          <node concept="37vLTw" id="5tAk4yW13_l" role="3clFbG">
            <ref role="3cqZAo" node="5tAk4yW0YB3" resolve="assertLevel" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1JkMMuhf_MK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5tAk4yW1aQ0" role="jymVt" />
    <node concept="312cEg" id="5tAk4yW0Zt3" role="jymVt">
      <property role="TrG5h" value="enabled" />
      <node concept="3Tm6S6" id="5tAk4yW0Zt4" role="1B3o_S" />
      <node concept="3uibUv" id="5tAk4yW0ZEe" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~IncrementalSpec$Enabled" resolve="IncrementalSpec.Enabled" />
      </node>
    </node>
    <node concept="312cEg" id="57Rdq$NuvYt" role="jymVt">
      <property role="TrG5h" value="incrLevel" />
      <node concept="3Tm6S6" id="57Rdq$NuvDw" role="1B3o_S" />
      <node concept="3uibUv" id="57Rdq$NuvTj" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~IncrementalSpec$IncrLevel" resolve="IncrementalSpec.IncrLevel" />
      </node>
    </node>
    <node concept="312cEg" id="5tAk4yW0YB3" role="jymVt">
      <property role="TrG5h" value="assertLevel" />
      <node concept="3Tm6S6" id="5tAk4yW0Yaj" role="1B3o_S" />
      <node concept="3uibUv" id="5tAk4yW0YzD" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~IncrementalSpec$AssertLevel" resolve="IncrementalSpec.AssertLevel" />
      </node>
    </node>
    <node concept="2tJIrI" id="1JkMMuhfAEj" role="jymVt" />
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
    <node concept="2AHcQZ" id="6AZXE2vtDU5" role="2AJF6D">
      <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      <node concept="2B6LJw" id="6AZXE2vtEd4" role="2B76xF">
        <ref role="2B6OnR" to="wyt6:~Deprecated.forRemoval()" resolve="forRemoval" />
        <node concept="3clFbT" id="6AZXE2vtEgv" role="2B70Vg">
          <property role="3clFbU" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6b4eZz$Pl6e">
    <property role="1sVAO0" value="true" />
    <property role="TrG5h" value="PrincipalsAnalysis" />
    <node concept="2tJIrI" id="5ka_cIaj6kt" role="jymVt" />
    <node concept="3clFb_" id="6b4eZz$PC$s" role="jymVt">
      <property role="TrG5h" value="specBuilder" />
      <node concept="3clFbS" id="6b4eZz$PC$t" role="3clF47">
        <node concept="3cpWs6" id="6b4eZz$PC$u" role="3cqZAp">
          <node concept="2OqwBi" id="5tAk4yVXHZd" role="3cqZAk">
            <node concept="2OqwBi" id="5tAk4yVXH0_" role="2Oq$k0">
              <node concept="2OqwBi" id="6zber0MLoDZ" role="2Oq$k0">
                <node concept="2OqwBi" id="5tAk4yVXG2K" role="2Oq$k0">
                  <node concept="2OqwBi" id="5tAk4yW2v9Z" role="2Oq$k0">
                    <node concept="2YIFZM" id="5tAk4yVXFJz" role="2Oq$k0">
                      <ref role="37wK5l" node="5tAk4yVXmrH" resolve="defaults" />
                      <ref role="1Pybhc" node="1H_6AUT30JE" resolve="IncrProgramSpecBuilder" />
                    </node>
                    <node concept="liA8E" id="5tAk4yW2vjh" role="2OqNvi">
                      <ref role="37wK5l" node="5tAk4yW1cEZ" resolve="enable" />
                      <node concept="37vLTw" id="5tAk4yW3S34" role="37wK5m">
                        <ref role="3cqZAo" node="5tAk4yW3RdU" resolve="ability" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="5tAk4yVXGmw" role="2OqNvi">
                    <ref role="37wK5l" node="5tAk4yVVVcI" resolve="principalConstraints" />
                    <node concept="37vLTw" id="5tAk4yVXGz1" role="37wK5m">
                      <ref role="3cqZAo" node="6b4eZz$Q4E3" resolve="principalCtrs" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6zber0MLpfj" role="2OqNvi">
                  <ref role="37wK5l" node="5tAk4yVVVcI" resolve="principalConstraints" />
                  <node concept="2ShNRf" id="6zber0MLppS" role="37wK5m">
                    <node concept="2HTt$P" id="6zber0MLqSw" role="2ShVmc">
                      <node concept="3uibUv" id="6zber0MLqTI" role="2HTBi0">
                        <ref role="3uigEE" to="av0y:~ConstraintSymbol" resolve="ConstraintSymbol" />
                      </node>
                      <node concept="2ShNRf" id="6zber0MLqZf" role="2HTEbv">
                        <node concept="1pGfFk" id="6zber0MLrdq" role="2ShVmc">
                          <ref role="37wK5l" to="av0y:~ConstraintSymbol.&lt;init&gt;(java.lang.String,int)" resolve="ConstraintSymbol" />
                          <node concept="Xl_RD" id="6zber0MLriV" role="37wK5m">
                            <property role="Xl_RC" value="main" />
                          </node>
                          <node concept="3cmrfG" id="6zber0MLrzt" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5tAk4yVXHAl" role="2OqNvi">
                <ref role="37wK5l" node="5tAk4yVVWHT" resolve="principalRules" />
                <node concept="37vLTw" id="5tAk4yVXLEL" role="37wK5m">
                  <ref role="3cqZAo" node="6b4eZz$Q4Ea" resolve="principalRulesTags" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="5tAk4yVXIEN" role="2OqNvi">
              <ref role="37wK5l" node="5tAk4yVVXiF" resolve="assertingContracts" />
              <node concept="3clFbT" id="5tAk4yVXJ6D" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6b4eZz$PC$B" role="1B3o_S" />
      <node concept="3uibUv" id="5tAk4yVXdV$" role="3clF45">
        <ref role="3uigEE" to="i348:5tAk4yVWROK" resolve="ProgramSpecBuilder" />
      </node>
      <node concept="2AHcQZ" id="3L0F0kb7zGc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
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
    <node concept="312cEg" id="5tAk4yW3RdU" role="jymVt">
      <property role="TrG5h" value="ability" />
      <node concept="3Tmbuc" id="5tAk4yW3R5b" role="1B3o_S" />
      <node concept="3uibUv" id="5tAk4yW3RaR" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~IncrementalSpec$Enabled" resolve="IncrementalSpec.Enabled" />
      </node>
      <node concept="Rm8GO" id="5tAk4yW3RLB" role="33vP2m">
        <ref role="Rm8GQ" to="av0y:~IncrementalSpec$Enabled.No" resolve="No" />
        <ref role="1Px2BO" to="av0y:~IncrementalSpec$Enabled" resolve="IncrementalSpec.Enabled" />
      </node>
    </node>
    <node concept="2tJIrI" id="6b4eZz$PQ4u" role="jymVt" />
    <node concept="3Tm1VV" id="6b4eZz$Pl6f" role="1B3o_S" />
    <node concept="3uibUv" id="6b4eZz$PmDz" role="EKbjA">
      <ref role="3uigEE" to="i348:2WtKs4u1ogK" resolve="ProgramSpecProvider" />
    </node>
    <node concept="3uibUv" id="5tAk4yVY8nR" role="1zkMxy">
      <ref role="3uigEE" to="i348:1H_6AUSXnyk" resolve="ProgramAnalysis" />
    </node>
    <node concept="2AHcQZ" id="6AZXE2vtCHg" role="2AJF6D">
      <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      <node concept="2B6LJw" id="6AZXE2vtCV4" role="2B76xF">
        <ref role="2B6OnR" to="wyt6:~Deprecated.forRemoval()" resolve="forRemoval" />
        <node concept="3clFbT" id="6AZXE2vtCWG" role="2B70Vg">
          <property role="3clFbU" value="true" />
        </node>
      </node>
    </node>
  </node>
</model>

