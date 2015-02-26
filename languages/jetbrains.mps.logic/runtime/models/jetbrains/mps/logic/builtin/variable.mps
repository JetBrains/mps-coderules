<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:729bada4-05fa-458f-8bf8-28b9cb978726(jetbrains.mps.logic.builtin.variable)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="-1" />
  </languages>
  <imports>
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.unification.tree)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="w2rx" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/f:java_stub#b984ee52-f34d-4b6d-8812-866c1d3eae31#runtime(jetbrains.mps.jchr.runtime/runtime@java_stub)" />
    <import index="jfki" ref="7526e0cf-1ce7-46f8-a555-9eca1e06c23b/f:java_stub#7526e0cf-1ce7-46f8-a555-9eca1e06c23b#jetbrains.mps.unification(jetbrains.mps.unification.tree/jetbrains.mps.unification@java_stub)" />
    <import index="e2lb" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
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
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
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
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3HP615" id="60B5zVEZP8W">
    <property role="TrG5h" value="LogicalSolver" />
    <node concept="2tJIrI" id="60B5zVEZPqu" role="jymVt" />
    <node concept="3clFb_" id="60B5zVEZPu5" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="ask" />
      <node concept="37vLTG" id="60B5zVEZPI_" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="60B5zVF0xHu" role="1tU5fm">
          <ref role="3uigEE" to="w2rx:~Logical" resolve="Logical" />
          <node concept="3qTvmN" id="60B5zVF0$iI" role="11_B2D" />
        </node>
      </node>
      <node concept="10P_77" id="60B5zVEZP_w" role="3clF45" />
      <node concept="3Tm1VV" id="60B5zVEZPu8" role="1B3o_S" />
      <node concept="3clFbS" id="60B5zVEZPu9" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="60B5zVEZPqz" role="jymVt" />
    <node concept="3Tm1VV" id="60B5zVEZP8X" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5$WbtTOYoMb">
    <property role="TrG5h" value="LogicalConstraint" />
    <property role="1sVAO0" value="false" />
    <node concept="2tJIrI" id="5$WbtTOYpQU" role="jymVt" />
    <node concept="Wx3nA" id="5$WbtTOYJJi" role="jymVt">
      <property role="TrG5h" value="BOUND" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="5$WbtTOYVEi" role="1B3o_S" />
      <node concept="3uibUv" id="5$WbtTOYK9H" role="1tU5fm">
        <ref role="3uigEE" node="5$WbtTOYoMb" resolve="LogicalConstraint" />
      </node>
      <node concept="2ShNRf" id="5$WbtTOYKyw" role="33vP2m">
        <node concept="1pGfFk" id="5$WbtTOYRgm" role="2ShVmc">
          <ref role="37wK5l" node="5$WbtTOYsLU" resolve="LogicalConstraint" />
          <node concept="Xl_RD" id="5$WbtTOYRAf" role="37wK5m">
            <property role="Xl_RC" value="bound" />
          </node>
          <node concept="2ShNRf" id="5$WbtTOYRX7" role="37wK5m">
            <node concept="YeOm9" id="5$WbtTOYSAi" role="2ShVmc">
              <node concept="1Y3b0j" id="5$WbtTOYSAl" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" node="60B5zVEZP8W" resolve="LogicalSolver" />
                <ref role="37wK5l" to="e2lb:~Object.&lt;init&gt;()" resolve="Object" />
                <node concept="3Tm1VV" id="5$WbtTOYSAm" role="1B3o_S" />
                <node concept="2tJIrI" id="5$WbtTOYTPO" role="jymVt" />
                <node concept="3clFb_" id="5$WbtTOYBh1" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="ask" />
                  <node concept="37vLTG" id="5$WbtTOYBh2" role="3clF46">
                    <property role="TrG5h" value="logical" />
                    <node concept="3uibUv" id="5$WbtTOYBh3" role="1tU5fm">
                      <ref role="3uigEE" to="w2rx:~Logical" resolve="Logical" />
                      <node concept="3qTvmN" id="5$WbtTOYBh4" role="11_B2D" />
                    </node>
                  </node>
                  <node concept="10P_77" id="5$WbtTOYBh5" role="3clF45" />
                  <node concept="3Tm1VV" id="5$WbtTOYBh6" role="1B3o_S" />
                  <node concept="3clFbS" id="5$WbtTOYBh8" role="3clF47">
                    <node concept="3clFbF" id="5$WbtTOYepA" role="3cqZAp">
                      <node concept="2OqwBi" id="5$WbtTOYeuq" role="3clFbG">
                        <node concept="37vLTw" id="5$WbtTOYep_" role="2Oq$k0">
                          <ref role="3cqZAo" node="5$WbtTOYBh2" resolve="logical" />
                        </node>
                        <node concept="liA8E" id="5$WbtTOYeNE" role="2OqNvi">
                          <ref role="37wK5l" to="w2rx:~Logical.isNonVar():boolean" resolve="isNonVar" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="5$WbtTOYUm2" role="2AJF6D">
                    <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="5$WbtTOYU8g" role="jymVt" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5$WbtTOYWqw" role="jymVt" />
    <node concept="Wx3nA" id="5$WbtTOYVUg" role="jymVt">
      <property role="TrG5h" value="FREE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="5$WbtTOYVUh" role="1B3o_S" />
      <node concept="3uibUv" id="5$WbtTOYVUi" role="1tU5fm">
        <ref role="3uigEE" node="5$WbtTOYoMb" resolve="LogicalConstraint" />
      </node>
      <node concept="2ShNRf" id="5$WbtTOYVUj" role="33vP2m">
        <node concept="1pGfFk" id="5$WbtTOYVUk" role="2ShVmc">
          <ref role="37wK5l" node="5$WbtTOYsLU" resolve="LogicalConstraint" />
          <node concept="Xl_RD" id="5$WbtTOYVUl" role="37wK5m">
            <property role="Xl_RC" value="bound" />
          </node>
          <node concept="2ShNRf" id="5$WbtTOYVUm" role="37wK5m">
            <node concept="YeOm9" id="5$WbtTOYVUn" role="2ShVmc">
              <node concept="1Y3b0j" id="5$WbtTOYVUo" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" node="60B5zVEZP8W" resolve="LogicalSolver" />
                <ref role="37wK5l" to="e2lb:~Object.&lt;init&gt;()" resolve="Object" />
                <node concept="3Tm1VV" id="5$WbtTOYVUp" role="1B3o_S" />
                <node concept="2tJIrI" id="5$WbtTOYVUq" role="jymVt" />
                <node concept="3clFb_" id="5$WbtTOYVUr" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="ask" />
                  <node concept="37vLTG" id="5$WbtTOYVUs" role="3clF46">
                    <property role="TrG5h" value="logical" />
                    <node concept="3uibUv" id="5$WbtTOYVUt" role="1tU5fm">
                      <ref role="3uigEE" to="w2rx:~Logical" resolve="Logical" />
                      <node concept="3qTvmN" id="5$WbtTOYVUu" role="11_B2D" />
                    </node>
                  </node>
                  <node concept="10P_77" id="5$WbtTOYVUv" role="3clF45" />
                  <node concept="3Tm1VV" id="5$WbtTOYVUw" role="1B3o_S" />
                  <node concept="3clFbS" id="5$WbtTOYVUx" role="3clF47">
                    <node concept="3clFbF" id="5$WbtTOYVUy" role="3cqZAp">
                      <node concept="2OqwBi" id="5$WbtTOYVUz" role="3clFbG">
                        <node concept="37vLTw" id="5$WbtTOYVU$" role="2Oq$k0">
                          <ref role="3cqZAo" node="5$WbtTOYVUs" resolve="logical" />
                        </node>
                        <node concept="liA8E" id="5$WbtTOYVU_" role="2OqNvi">
                          <ref role="37wK5l" to="w2rx:~Logical.isVar():boolean" resolve="isVar" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="5$WbtTOYVUA" role="2AJF6D">
                    <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="5$WbtTOYVUB" role="jymVt" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5$WbtTOYH4$" role="jymVt" />
    <node concept="3clFbW" id="5$WbtTOYsLU" role="jymVt">
      <node concept="37vLTG" id="5$WbtTOYtPL" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="17QB3L" id="5$WbtTOYtUN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5$WbtTOYsN0" role="3clF46">
        <property role="TrG5h" value="solver" />
        <node concept="3uibUv" id="5$WbtTOYsQC" role="1tU5fm">
          <ref role="3uigEE" node="60B5zVEZP8W" resolve="LogicalSolver" />
        </node>
      </node>
      <node concept="3cqZAl" id="5$WbtTOYsLW" role="3clF45" />
      <node concept="3Tm6S6" id="5$WbtTOYGJA" role="1B3o_S" />
      <node concept="3clFbS" id="5$WbtTOYsLY" role="3clF47">
        <node concept="3clFbF" id="5$WbtTOYt9m" role="3cqZAp">
          <node concept="37vLTI" id="5$WbtTOYt9o" role="3clFbG">
            <node concept="2OqwBi" id="5$WbtTOYt9s" role="37vLTJ">
              <node concept="Xjq3P" id="5$WbtTOYt9v" role="2Oq$k0" />
              <node concept="2OwXpG" id="5$WbtTOYt9r" role="2OqNvi">
                <ref role="2Oxat5" node="5$WbtTOYt9i" resolve="solver" />
              </node>
            </node>
            <node concept="37vLTw" id="5$WbtTOYt9w" role="37vLTx">
              <ref role="3cqZAo" node="5$WbtTOYsN0" resolve="solver" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5$WbtTOYtZw" role="3cqZAp">
          <node concept="37vLTI" id="5$WbtTOYtZy" role="3clFbG">
            <node concept="2OqwBi" id="5$WbtTOYtZA" role="37vLTJ">
              <node concept="Xjq3P" id="5$WbtTOYtZD" role="2Oq$k0" />
              <node concept="2OwXpG" id="5$WbtTOYtZ_" role="2OqNvi">
                <ref role="2Oxat5" node="5$WbtTOYtZs" resolve="symbol" />
              </node>
            </node>
            <node concept="37vLTw" id="5$WbtTOYtZE" role="37vLTx">
              <ref role="3cqZAo" node="5$WbtTOYtPL" resolve="symbol" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5$WbtTOYoTe" role="jymVt" />
    <node concept="3clFb_" id="5$WbtTOYuFo" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <node concept="17QB3L" id="5$WbtTOYuFp" role="3clF45" />
      <node concept="3Tm1VV" id="5$WbtTOYuFq" role="1B3o_S" />
      <node concept="3clFbS" id="5$WbtTOYuFr" role="3clF47">
        <node concept="3clFbF" id="5$WbtTOYuFs" role="3cqZAp">
          <node concept="37vLTw" id="5$WbtTOYvbJ" role="3clFbG">
            <ref role="3cqZAo" node="5$WbtTOYtZs" resolve="symbol" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5$WbtTOYuFu" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5$WbtTOYuFv" role="jymVt" />
    <node concept="3clFb_" id="5$WbtTOYuFw" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createSolver" />
      <node concept="37vLTG" id="5$WbtTOYuFx" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="3uibUv" id="5$WbtTOYuFy" role="1tU5fm">
          <ref role="3uigEE" to="yg8f:2GO7tyJS2HQ" resolve="SolverFarm" />
        </node>
      </node>
      <node concept="3uibUv" id="5$WbtTOYuFz" role="3clF45">
        <ref role="3uigEE" node="60B5zVEZP8W" resolve="LogicalSolver" />
      </node>
      <node concept="3Tm1VV" id="5$WbtTOYuF$" role="1B3o_S" />
      <node concept="3clFbS" id="5$WbtTOYuF_" role="3clF47">
        <node concept="3clFbF" id="5$WbtTOYuFA" role="3cqZAp">
          <node concept="37vLTw" id="5$WbtTOYvkn" role="3clFbG">
            <ref role="3cqZAo" node="5$WbtTOYt9i" resolve="solver" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5$WbtTOYuFC" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5$WbtTOYuFD" role="jymVt" />
    <node concept="3clFb_" id="5$WbtTOYuFE" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="solverInterface" />
      <node concept="3uibUv" id="5$WbtTOYuFF" role="3clF45">
        <ref role="3uigEE" to="e2lb:~Class" resolve="Class" />
        <node concept="3uibUv" id="5$WbtTOYuFG" role="11_B2D">
          <ref role="3uigEE" node="60B5zVEZP8W" resolve="LogicalSolver" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5$WbtTOYuFH" role="1B3o_S" />
      <node concept="3clFbS" id="5$WbtTOYuFI" role="3clF47">
        <node concept="3clFbF" id="54i3Fxd4mun" role="3cqZAp">
          <node concept="10Nm6u" id="54i3Fxd4mum" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5$WbtTOYuFL" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5$WbtTOYtp1" role="jymVt" />
    <node concept="3clFb_" id="5$WbtTOYxOm" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="ask" />
      <node concept="37vLTG" id="5$WbtTOYxOn" role="3clF46">
        <property role="TrG5h" value="solver" />
        <node concept="3uibUv" id="5$WbtTOYxOo" role="1tU5fm">
          <ref role="3uigEE" node="60B5zVEZP8W" resolve="LogicalSolver" />
        </node>
      </node>
      <node concept="37vLTG" id="5$WbtTOYxOp" role="3clF46">
        <property role="TrG5h" value="arg" />
        <node concept="8X2XB" id="5$WbtTOYxOq" role="1tU5fm">
          <node concept="3uibUv" id="5$WbtTOYxOr" role="8Xvag">
            <ref role="3uigEE" to="w2rx:~Logical" resolve="Logical" />
            <node concept="3qTvmN" id="5$WbtTOYxOs" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="5$WbtTOYxOt" role="3clF45" />
      <node concept="3Tm1VV" id="5$WbtTOYxOu" role="1B3o_S" />
      <node concept="3clFbS" id="5$WbtTOYxOv" role="3clF47">
        <node concept="3clFbJ" id="5$WbtTOYxOw" role="3cqZAp">
          <node concept="3clFbS" id="5$WbtTOYxOx" role="3clFbx">
            <node concept="YS8fn" id="5$WbtTOYxOy" role="3cqZAp">
              <node concept="2ShNRf" id="5$WbtTOYxOz" role="YScLw">
                <node concept="1pGfFk" id="5$WbtTOYxO$" role="2ShVmc">
                  <ref role="37wK5l" to="e2lb:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                  <node concept="Xl_RD" id="5$WbtTOYxO_" role="37wK5m">
                    <property role="Xl_RC" value="single argument expected" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="5$WbtTOYxOA" role="3clFbw">
            <node concept="3cmrfG" id="5$WbtTOYxOB" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="5$WbtTOYxOC" role="3uHU7B">
              <node concept="37vLTw" id="5$WbtTOYxOD" role="2Oq$k0">
                <ref role="3cqZAo" node="5$WbtTOYxOp" resolve="arg" />
              </node>
              <node concept="1Rwk04" id="5$WbtTOYxOE" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5$WbtTOYyQP" role="3cqZAp">
          <node concept="2OqwBi" id="5$WbtTOYyWq" role="3clFbG">
            <node concept="37vLTw" id="5$WbtTOYyQN" role="2Oq$k0">
              <ref role="3cqZAo" node="5$WbtTOYxOn" resolve="solver" />
            </node>
            <node concept="liA8E" id="5$WbtTOYzbM" role="2OqNvi">
              <ref role="37wK5l" node="60B5zVEZPu5" resolve="ask" />
              <node concept="AH0OO" id="5$WbtTOYzEn" role="37wK5m">
                <node concept="3cmrfG" id="5$WbtTOYzHu" role="AHEQo">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="5$WbtTOYzqS" role="AHHXb">
                  <ref role="3cqZAo" node="5$WbtTOYxOp" resolve="arg" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5$WbtTOYxOI" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5$WbtTOYxOJ" role="jymVt" />
    <node concept="3clFb_" id="5$WbtTOYxOK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tell" />
      <node concept="3cqZAl" id="5$WbtTOYxOL" role="3clF45" />
      <node concept="3Tm1VV" id="5$WbtTOYxOM" role="1B3o_S" />
      <node concept="37vLTG" id="5$WbtTOYxON" role="3clF46">
        <property role="TrG5h" value="solver" />
        <node concept="3uibUv" id="5$WbtTOYxOO" role="1tU5fm">
          <ref role="3uigEE" node="60B5zVEZP8W" resolve="LogicalSolver" />
        </node>
      </node>
      <node concept="37vLTG" id="5$WbtTOYxOP" role="3clF46">
        <property role="TrG5h" value="arg" />
        <node concept="8X2XB" id="5$WbtTOYxOQ" role="1tU5fm">
          <node concept="3uibUv" id="5$WbtTOYxOR" role="8Xvag">
            <ref role="3uigEE" to="w2rx:~Logical" resolve="Logical" />
            <node concept="3qTvmN" id="5$WbtTOYxOS" role="11_B2D" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5$WbtTOYxOT" role="3clF47">
        <node concept="YS8fn" id="5$WbtTOYxOU" role="3cqZAp">
          <node concept="2ShNRf" id="5$WbtTOYxOV" role="YScLw">
            <node concept="1pGfFk" id="5$WbtTOYxOW" role="2ShVmc">
              <ref role="37wK5l" to="e2lb:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5$WbtTOYxOX" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5$WbtTOYxH4" role="jymVt" />
    <node concept="3Tm1VV" id="5$WbtTOYoMc" role="1B3o_S" />
    <node concept="3uibUv" id="5$WbtTOYoXP" role="EKbjA">
      <ref role="3uigEE" to="yg8f:2GO7tyJLLNE" resolve="SolverProxy" />
      <node concept="3uibUv" id="5$WbtTOYpJI" role="11_B2D">
        <ref role="3uigEE" node="60B5zVEZP8W" resolve="LogicalSolver" />
      </node>
      <node concept="3uibUv" id="5$WbtTOYpN0" role="11_B2D">
        <ref role="3uigEE" to="w2rx:~Logical" resolve="Logical" />
        <node concept="3qTvmN" id="5$WbtTOYpO1" role="11_B2D" />
      </node>
    </node>
    <node concept="312cEg" id="5$WbtTOYt9i" role="jymVt">
      <property role="TrG5h" value="solver" />
      <node concept="3Tm6S6" id="5$WbtTOYt9j" role="1B3o_S" />
      <node concept="3uibUv" id="5$WbtTOYt9l" role="1tU5fm">
        <ref role="3uigEE" node="60B5zVEZP8W" resolve="LogicalSolver" />
      </node>
    </node>
    <node concept="312cEg" id="5$WbtTOYtZs" role="jymVt">
      <property role="TrG5h" value="symbol" />
      <node concept="3Tm6S6" id="5$WbtTOYtZt" role="1B3o_S" />
      <node concept="17QB3L" id="5$WbtTOYtZv" role="1tU5fm" />
    </node>
  </node>
  <node concept="312cEu" id="7E86$tKu5$t">
    <property role="TrG5h" value="IndexedVar" />
    <node concept="2tJIrI" id="7E86$tKujIh" role="jymVt" />
    <node concept="2YIFZL" id="5k_shARN93B" role="jymVt">
      <property role="TrG5h" value="withName" />
      <node concept="37vLTG" id="5k_shARN99m" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="5k_shARN9ao" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7E86$tKul$6" role="3clF45">
        <ref role="3uigEE" node="7E86$tKu5$t" resolve="IndexedVar" />
      </node>
      <node concept="3Tm1VV" id="5k_shARN93E" role="1B3o_S" />
      <node concept="3clFbS" id="5k_shARN93F" role="3clF47">
        <node concept="3clFbJ" id="5k_shARO2Lw" role="3cqZAp">
          <node concept="3clFbS" id="5k_shARO2Lx" role="3clFbx">
            <node concept="YS8fn" id="5k_shARO2Xr" role="3cqZAp">
              <node concept="2ShNRf" id="5k_shARO2ZW" role="YScLw">
                <node concept="1pGfFk" id="5k_shAROcb3" role="2ShVmc">
                  <ref role="37wK5l" to="e2lb:~NullPointerException.&lt;init&gt;()" resolve="NullPointerException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5k_shARO2Vo" role="3clFbw">
            <node concept="10Nm6u" id="5k_shARO2VU" role="3uHU7w" />
            <node concept="37vLTw" id="5k_shARO2MJ" role="3uHU7B">
              <ref role="3cqZAo" node="5k_shARN99m" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5k_shAROch4" role="3cqZAp">
          <node concept="2ShNRf" id="5k_shAROcjf" role="3cqZAk">
            <node concept="1pGfFk" id="5k_shAROcje" role="2ShVmc">
              <ref role="37wK5l" node="5k_shARNZ68" resolve="IndexedVar" />
              <node concept="37vLTw" id="5k_shAROclP" role="37wK5m">
                <ref role="3cqZAo" node="5k_shARN99m" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5k_shARNY8w" role="jymVt" />
    <node concept="2YIFZL" id="5k_shARNYdh" role="jymVt">
      <property role="TrG5h" value="withNameAndIndex" />
      <node concept="37vLTG" id="5k_shARNYf$" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="5k_shARNYgy" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5k_shARNYtF" role="3clF46">
        <property role="TrG5h" value="idx" />
        <node concept="10Oyi0" id="5k_shARNYuJ" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7E86$tKulDN" role="3clF45">
        <ref role="3uigEE" node="7E86$tKu5$t" resolve="IndexedVar" />
      </node>
      <node concept="3Tm1VV" id="5k_shARNYdk" role="1B3o_S" />
      <node concept="3clFbS" id="5k_shARNYdl" role="3clF47">
        <node concept="3clFbJ" id="5k_shAROdjJ" role="3cqZAp">
          <node concept="3clFbS" id="5k_shAROdjK" role="3clFbx">
            <node concept="YS8fn" id="5k_shAROdww" role="3cqZAp">
              <node concept="2ShNRf" id="5k_shAROdxH" role="YScLw">
                <node concept="1pGfFk" id="5k_shAROdLN" role="2ShVmc">
                  <ref role="37wK5l" to="e2lb:~NullPointerException.&lt;init&gt;()" resolve="NullPointerException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5k_shAROdsL" role="3clFbw">
            <node concept="10Nm6u" id="5k_shAROdtj" role="3uHU7w" />
            <node concept="37vLTw" id="5k_shAROdk8" role="3uHU7B">
              <ref role="3cqZAo" node="5k_shARNYf$" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5k_shAROe6H" role="3cqZAp">
          <node concept="3clFbS" id="5k_shAROe6K" role="3clFbx">
            <node concept="YS8fn" id="5k_shAROeGr" role="3cqZAp">
              <node concept="2ShNRf" id="5k_shAROeHC" role="YScLw">
                <node concept="1pGfFk" id="5k_shAROeZ2" role="2ShVmc">
                  <ref role="37wK5l" to="e2lb:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="5k_shAROeAI" role="3clFbw">
            <node concept="37vLTw" id="5k_shAROeAL" role="3uHU7B">
              <ref role="3cqZAo" node="5k_shARNYtF" resolve="idx" />
            </node>
            <node concept="3cmrfG" id="5k_shAROeAK" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5k_shAROffB" role="3cqZAp">
          <node concept="2ShNRf" id="5k_shAROfkg" role="3cqZAk">
            <node concept="1pGfFk" id="5k_shAROfjp" role="2ShVmc">
              <ref role="37wK5l" node="5k_shARNZar" resolve="IndexedVar" />
              <node concept="37vLTw" id="5k_shAROfoP" role="37wK5m">
                <ref role="3cqZAo" node="5k_shARNYf$" resolve="name" />
              </node>
              <node concept="37vLTw" id="5k_shAROfvZ" role="37wK5m">
                <ref role="3cqZAo" node="5k_shARNYtF" resolve="idx" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5k_shARNZ4q" role="jymVt" />
    <node concept="3clFbW" id="5k_shARNZ68" role="jymVt">
      <node concept="37vLTG" id="5k_shARNZ7A" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="5k_shARNZ7I" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="5k_shARNZ6a" role="3clF45" />
      <node concept="3Tm1VV" id="5k_shARNZ6b" role="1B3o_S" />
      <node concept="3clFbS" id="5k_shARNZ6c" role="3clF47">
        <node concept="XkiVB" id="104EUzFJTsl" role="3cqZAp">
          <ref role="37wK5l" to="ie8e:uNmovXiEVu" resolve="Variable" />
          <node concept="37vLTw" id="104EUzFJU4w" role="37wK5m">
            <ref role="3cqZAo" node="5k_shARNZ7A" resolve="name" />
          </node>
        </node>
        <node concept="3clFbF" id="5k_shAROgOv" role="3cqZAp">
          <node concept="37vLTI" id="5k_shAROh_S" role="3clFbG">
            <node concept="3cmrfG" id="5k_shAROhCn" role="37vLTx">
              <property role="3cmrfH" value="-1" />
            </node>
            <node concept="2OqwBi" id="5k_shAROhj0" role="37vLTJ">
              <node concept="Xjq3P" id="5k_shAROgOt" role="2Oq$k0" />
              <node concept="2OwXpG" id="5k_shAROhl4" role="2OqNvi">
                <ref role="2Oxat5" node="5k_shARO0vR" resolve="idx" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5k_shARNZcd" role="jymVt" />
    <node concept="3clFbW" id="5k_shARNZar" role="jymVt">
      <node concept="37vLTG" id="5k_shARNZas" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="5k_shARNZat" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5k_shARNZd$" role="3clF46">
        <property role="TrG5h" value="idx" />
        <node concept="10Oyi0" id="5k_shARNZeJ" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="5k_shARNZau" role="3clF45" />
      <node concept="3Tm1VV" id="5k_shARNZav" role="1B3o_S" />
      <node concept="3clFbS" id="5k_shARNZaw" role="3clF47">
        <node concept="XkiVB" id="104EUzFJVh8" role="3cqZAp">
          <ref role="37wK5l" to="ie8e:uNmovXiEVu" resolve="Variable" />
          <node concept="37vLTw" id="104EUzFJVRA" role="37wK5m">
            <ref role="3cqZAo" node="5k_shARNZas" resolve="name" />
          </node>
        </node>
        <node concept="3clFbF" id="5k_shARO0vV" role="3cqZAp">
          <node concept="37vLTI" id="5k_shARO0vX" role="3clFbG">
            <node concept="2OqwBi" id="5k_shARO0w1" role="37vLTJ">
              <node concept="Xjq3P" id="5k_shARO0w4" role="2Oq$k0" />
              <node concept="2OwXpG" id="5k_shARO0w0" role="2OqNvi">
                <ref role="2Oxat5" node="5k_shARO0vR" resolve="idx" />
              </node>
            </node>
            <node concept="37vLTw" id="5k_shARO0w5" role="37vLTx">
              <ref role="3cqZAo" node="5k_shARNZd$" resolve="idx" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6w6CYIReErb" role="jymVt" />
    <node concept="3clFb_" id="6w6CYIReEWt" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="name" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="6w6CYIReEWu" role="1B3o_S" />
      <node concept="17QB3L" id="2pvEdqukxHS" role="3clF45" />
      <node concept="3clFbS" id="6w6CYIReEWx" role="3clF47">
        <node concept="3clFbF" id="7d9KVSzUTiQ" role="3cqZAp">
          <node concept="1rXfSq" id="7d9KVSzUTiP" role="3clFbG">
            <ref role="37wK5l" node="7d9KVSzUO6L" resolve="nameWithIndex" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6w6CYIReT2K" role="jymVt" />
    <node concept="3clFb_" id="5k_shARO1gZ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="5k_shARO1h0" role="1B3o_S" />
      <node concept="17QB3L" id="2pvEdqukxHT" role="3clF45" />
      <node concept="3clFbS" id="5k_shARO1h3" role="3clF47">
        <node concept="3cpWs6" id="7d9KVSzUO6P" role="3cqZAp">
          <node concept="1rXfSq" id="7d9KVSzUO6O" role="3cqZAk">
            <ref role="37wK5l" node="7d9KVSzUO6L" resolve="nameWithIndex" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5k_shARO1h4" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7d9KVSzUPIj" role="jymVt" />
    <node concept="3clFb_" id="7d9KVSzUO6L" role="jymVt">
      <property role="TrG5h" value="nameWithIndex" />
      <node concept="3Tm6S6" id="7d9KVSzUO6M" role="1B3o_S" />
      <node concept="17QB3L" id="7d9KVSzUO6N" role="3clF45" />
      <node concept="3clFbS" id="7d9KVSzUO6x" role="3clF47">
        <node concept="3clFbJ" id="7d9KVSzUO6y" role="3cqZAp">
          <node concept="3clFbS" id="7d9KVSzUO6z" role="3clFbx">
            <node concept="3cpWs6" id="7d9KVSzUO6$" role="3cqZAp">
              <node concept="3cpWs3" id="7d9KVSzUO6_" role="3cqZAk">
                <node concept="37vLTw" id="7d9KVSzUO6A" role="3uHU7w">
                  <ref role="3cqZAo" node="5k_shARO0vR" resolve="idx" />
                </node>
                <node concept="3cpWs3" id="7d9KVSzUO6B" role="3uHU7B">
                  <node concept="37vLTw" id="7d9KVSzUO6C" role="3uHU7B">
                    <ref role="3cqZAo" to="ie8e:uNmovXiF5Z" resolve="name" />
                  </node>
                  <node concept="Xl_RD" id="7d9KVSzUO6D" role="3uHU7w">
                    <property role="Xl_RC" value="_" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2d3UOw" id="7d9KVSzUO6E" role="3clFbw">
            <node concept="3cmrfG" id="7d9KVSzUO6F" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="7d9KVSzUO6G" role="3uHU7B">
              <ref role="3cqZAo" node="5k_shARO0vR" resolve="idx" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7d9KVSzUO6H" role="3cqZAp">
          <node concept="37vLTw" id="7d9KVSzUO6I" role="3cqZAk">
            <ref role="3cqZAo" to="ie8e:uNmovXiF5Z" resolve="name" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="104EUzFJWVQ" role="jymVt" />
    <node concept="312cEg" id="5k_shARO0vR" role="jymVt">
      <property role="TrG5h" value="idx" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5k_shARO0vS" role="1B3o_S" />
      <node concept="10Oyi0" id="5k_shARO0vU" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="7E86$tKujIj" role="jymVt" />
    <node concept="3Tm1VV" id="7E86$tKu5$u" role="1B3o_S" />
    <node concept="3uibUv" id="7E86$tKu5YS" role="1zkMxy">
      <ref role="3uigEE" to="ie8e:uNmovXiEd4" resolve="Variable" />
    </node>
  </node>
</model>

