<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f43ee4a0-488a-425a-87a0-594ab3b0d15f(jetbrains.mps.logic.reactor.program)">
  <persistence version="9" />
  <languages>
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
  </languages>
  <imports>
    <import index="qrld" ref="r:2a79c8aa-e372-4c00-8d71-5d7f3db517e4(jetbrains.mps.logic.reactor.constraint)" />
    <import index="i8dg" ref="r:e8529b97-a186-4c32-8f12-771b2a92b55a(jetbrains.mps.logic.reactor.rule)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
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
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
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
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="5uFPQ7BvNzE">
    <property role="TrG5h" value="PlanningSession" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="5uFPQ7BvN_2" role="jymVt" />
    <node concept="2YIFZL" id="78CwJJcPVHP" role="jymVt">
      <property role="TrG5h" value="newSession" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="78CwJJcTF4u" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="78CwJJcTF59" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5uFPQ7BvQKl" role="3clF47">
        <node concept="3clFbJ" id="78CwJJd1N85" role="3cqZAp">
          <node concept="3clFbS" id="78CwJJd1N87" role="3clFbx">
            <node concept="YS8fn" id="78CwJJcPTDI" role="3cqZAp">
              <node concept="2ShNRf" id="78CwJJcPTEe" role="YScLw">
                <node concept="1pGfFk" id="78CwJJcPTNY" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="78CwJJcPTOu" role="37wK5m">
                    <property role="Xl_RC" value="factory not set" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="78CwJJd1Ncj" role="3clFbw">
            <node concept="10Nm6u" id="78CwJJd1NcO" role="3uHU7w" />
            <node concept="37vLTw" id="78CwJJd1N8N" role="3uHU7B">
              <ref role="3cqZAo" node="78CwJJd1Mj3" resolve="ourFactory" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="78CwJJd1Nx_" role="3cqZAp">
          <node concept="2OqwBi" id="78CwJJd1Nyk" role="3clFbG">
            <node concept="37vLTw" id="78CwJJd1Nxz" role="2Oq$k0">
              <ref role="3cqZAo" node="78CwJJd1Mj3" resolve="ourFactory" />
            </node>
            <node concept="liA8E" id="78CwJJd1Nzv" role="2OqNvi">
              <ref role="37wK5l" node="78CwJJd1Ni4" resolve="create" />
              <node concept="37vLTw" id="78CwJJd24bb" role="37wK5m">
                <ref role="3cqZAo" node="78CwJJcTF4u" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="78CwJJcPTCV" role="3clF45">
        <ref role="3uigEE" node="5uFPQ7BvNzE" resolve="PlanningSession" />
      </node>
      <node concept="3Tm1VV" id="5uFPQ7BvQKk" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5uFPQ7BvQJT" role="jymVt" />
    <node concept="3clFb_" id="78CwJJcTOB4" role="jymVt">
      <property role="TrG5h" value="name" />
      <property role="1EzhhJ" value="true" />
      <node concept="17QB3L" id="78CwJJcTPfl" role="3clF45" />
      <node concept="3Tm1VV" id="78CwJJcTOB7" role="1B3o_S" />
      <node concept="3clFbS" id="78CwJJcTOB8" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="78CwJJcTNZo" role="jymVt" />
    <node concept="3clFb_" id="78CwJJcOw2K" role="jymVt">
      <property role="TrG5h" value="constraintSymbols" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="78CwJJcOw3v" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="78CwJJcOw3H" role="11_B2D">
          <ref role="3uigEE" to="qrld:54i3FxcZHHF" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="3Tm1VV" id="78CwJJcOw2N" role="1B3o_S" />
      <node concept="3clFbS" id="78CwJJcOw2O" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="78CwJJcOw4k" role="jymVt" />
    <node concept="3clFb_" id="5uFPQ7BvNRv" role="jymVt">
      <property role="TrG5h" value="constraintArgumentTypes" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="5uFPQ7BvTv5" role="3clF46">
        <property role="TrG5h" value="constraintSymbol" />
        <node concept="3uibUv" id="5uFPQ7BvTvh" role="1tU5fm">
          <ref role="3uigEE" to="qrld:54i3FxcZHHF" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="3uibUv" id="78CwJJcXgYY" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="78CwJJcXh4G" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="78CwJJcXha0" role="11_B2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5uFPQ7BvNRy" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7BvNRz" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="78CwJJcOL7R" role="jymVt" />
    <node concept="3clFb_" id="78CwJJcOKJw" role="jymVt">
      <property role="TrG5h" value="predicateSymbols" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="78CwJJcOL6F" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="78CwJJcOL6L" role="11_B2D">
          <ref role="3uigEE" to="qrld:5uFPQ7B$$3f" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="3Tm1VV" id="78CwJJcOKJz" role="1B3o_S" />
      <node concept="3clFbS" id="78CwJJcOKJ$" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5uFPQ7BvNS6" role="jymVt" />
    <node concept="3clFb_" id="78CwJJcXtfq" role="jymVt">
      <property role="TrG5h" value="solverClass" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="78CwJJcXtfr" role="3clF46">
        <property role="TrG5h" value="predicateSymbol" />
        <node concept="3uibUv" id="78CwJJcXtfs" role="1tU5fm">
          <ref role="3uigEE" to="qrld:5uFPQ7B$$3f" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="3uibUv" id="78CwJJcXuvt" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="3qUE_q" id="78CwJJcXux6" role="11_B2D">
          <node concept="3uibUv" id="78CwJJcXuxe" role="3qUE_r">
            <ref role="3uigEE" to="qrld:6Kcfpq7AYBh" resolve="Queryable" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="78CwJJcXtfu" role="1B3o_S" />
      <node concept="3clFbS" id="78CwJJcXtfv" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5uFPQ7BvNSh" role="jymVt" />
    <node concept="3clFb_" id="78CwJJcTsEO" role="jymVt">
      <property role="TrG5h" value="rules" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="78CwJJcTtiP" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="78CwJJcTtiV" role="11_B2D">
          <ref role="3uigEE" to="i8dg:7eGEHDlc$9y" resolve="Rule" />
        </node>
      </node>
      <node concept="3Tm1VV" id="78CwJJcTsER" role="1B3o_S" />
      <node concept="3clFbS" id="78CwJJcTsES" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="78CwJJcXHyD" role="jymVt" />
    <node concept="3clFb_" id="5uFPQ7BvNSW" role="jymVt">
      <property role="TrG5h" value="addRule" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="5uFPQ7BvTyj" role="3clF46">
        <property role="TrG5h" value="rule" />
        <node concept="3uibUv" id="5uFPQ7BvUxP" role="1tU5fm">
          <ref role="3uigEE" to="i8dg:7eGEHDlc$9y" resolve="Rule" />
        </node>
      </node>
      <node concept="3cqZAl" id="5uFPQ7BvNSY" role="3clF45" />
      <node concept="3Tm1VV" id="5uFPQ7BvNSZ" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7BvNT0" role="3clF47" />
      <node concept="3uibUv" id="78CwJJcTrpb" role="Sfmx6">
        <ref role="3uigEE" to="i8dg:7Oc59RS$wKP" resolve="InvalidRuleException" />
      </node>
    </node>
    <node concept="2tJIrI" id="78CwJJcOot9" role="jymVt" />
    <node concept="2YIFZL" id="78CwJJd1Sv0" role="jymVt">
      <property role="TrG5h" value="setFactory" />
      <node concept="37vLTG" id="78CwJJd1TkU" role="3clF46">
        <property role="TrG5h" value="factory" />
        <node concept="3uibUv" id="78CwJJd1Tp_" role="1tU5fm">
          <ref role="3uigEE" node="78CwJJcOou6" resolve="PlanningSession.Factory" />
        </node>
      </node>
      <node concept="3cqZAl" id="78CwJJd1Sv2" role="3clF45" />
      <node concept="3Tmbuc" id="78CwJJd1T72" role="1B3o_S" />
      <node concept="3clFbS" id="78CwJJd1Sv4" role="3clF47">
        <node concept="3clFbJ" id="78CwJJd1Tuw" role="3cqZAp">
          <node concept="3clFbS" id="78CwJJd1Tux" role="3clFbx">
            <node concept="YS8fn" id="78CwJJd1Tuy" role="3cqZAp">
              <node concept="2ShNRf" id="78CwJJd1Tuz" role="YScLw">
                <node concept="1pGfFk" id="78CwJJd1Tu$" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="78CwJJd1Tu_" role="37wK5m">
                    <property role="Xl_RC" value="factory already set" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="78CwJJd1T$H" role="3clFbw">
            <node concept="37vLTw" id="78CwJJd1TuF" role="3uHU7B">
              <ref role="3cqZAo" node="78CwJJd1Mj3" resolve="ourFactory" />
            </node>
            <node concept="10Nm6u" id="78CwJJd1TuB" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbF" id="78CwJJd1TD5" role="3cqZAp">
          <node concept="37vLTI" id="78CwJJd1TGM" role="3clFbG">
            <node concept="37vLTw" id="78CwJJd1THw" role="37vLTx">
              <ref role="3cqZAo" node="78CwJJd1TkU" resolve="factory" />
            </node>
            <node concept="37vLTw" id="78CwJJd1TD3" role="37vLTJ">
              <ref role="3cqZAo" node="78CwJJd1Mj3" resolve="ourFactory" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="78CwJJd1Uo9" role="jymVt" />
    <node concept="2YIFZL" id="78CwJJd1THT" role="jymVt">
      <property role="TrG5h" value="clearFactory" />
      <node concept="37vLTG" id="78CwJJd1THU" role="3clF46">
        <property role="TrG5h" value="factory" />
        <node concept="3uibUv" id="78CwJJd1THV" role="1tU5fm">
          <ref role="3uigEE" node="78CwJJcOou6" resolve="PlanningSession.Factory" />
        </node>
      </node>
      <node concept="3cqZAl" id="78CwJJd1THW" role="3clF45" />
      <node concept="3Tmbuc" id="78CwJJd1THX" role="1B3o_S" />
      <node concept="3clFbS" id="78CwJJd1THY" role="3clF47">
        <node concept="3clFbJ" id="78CwJJd1THZ" role="3cqZAp">
          <node concept="3clFbS" id="78CwJJd1TI0" role="3clFbx">
            <node concept="YS8fn" id="78CwJJd1TI1" role="3cqZAp">
              <node concept="2ShNRf" id="78CwJJd1TI2" role="YScLw">
                <node concept="1pGfFk" id="78CwJJd1TI3" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="78CwJJd1TI4" role="37wK5m">
                    <property role="Xl_RC" value="illegal access" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="78CwJJd1TI5" role="3clFbw">
            <node concept="37vLTw" id="78CwJJd1TI6" role="3uHU7B">
              <ref role="3cqZAo" node="78CwJJd1Mj3" resolve="ourFactory" />
            </node>
            <node concept="37vLTw" id="78CwJJd1V5F" role="3uHU7w">
              <ref role="3cqZAo" node="78CwJJd1THU" resolve="factory" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="78CwJJd1TI8" role="3cqZAp">
          <node concept="37vLTI" id="78CwJJd1TI9" role="3clFbG">
            <node concept="10Nm6u" id="78CwJJd1V7l" role="37vLTx" />
            <node concept="37vLTw" id="78CwJJd1TIb" role="37vLTJ">
              <ref role="3cqZAo" node="78CwJJd1Mj3" resolve="ourFactory" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="78CwJJd1RRc" role="jymVt" />
    <node concept="3HP615" id="78CwJJcOou6" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Factory" />
      <node concept="2tJIrI" id="78CwJJcOouR" role="jymVt" />
      <node concept="3clFb_" id="78CwJJd1Ni4" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="create" />
        <node concept="37vLTG" id="78CwJJd246e" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="78CwJJd248i" role="1tU5fm" />
        </node>
        <node concept="3uibUv" id="78CwJJd1Nnf" role="3clF45">
          <ref role="3uigEE" node="5uFPQ7BvNzE" resolve="PlanningSession" />
        </node>
        <node concept="3Tm1VV" id="78CwJJd1Ni7" role="1B3o_S" />
        <node concept="3clFbS" id="78CwJJd1Ni8" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="78CwJJcOouT" role="jymVt" />
      <node concept="3Tmbuc" id="78CwJJd1RMg" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="78CwJJd1PT_" role="jymVt" />
    <node concept="Wx3nA" id="78CwJJd1Mj3" role="jymVt">
      <property role="TrG5h" value="ourFactory" />
      <node concept="3Tm6S6" id="78CwJJd1Mj5" role="1B3o_S" />
      <node concept="3uibUv" id="78CwJJd1MXj" role="1tU5fm">
        <ref role="3uigEE" node="78CwJJcOou6" resolve="PlanningSession.Factory" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5uFPQ7BvNzF" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5uFPQ7BvN_d">
    <property role="TrG5h" value="EvaluationSession" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="7ISVfSIt5$" role="jymVt" />
    <node concept="2YIFZL" id="5uFPQ7Bwt5n" role="jymVt">
      <property role="TrG5h" value="current" />
      <node concept="3uibUv" id="5uFPQ7Bwt68" role="3clF45">
        <ref role="3uigEE" node="5uFPQ7BvN_d" resolve="EvaluationSession" />
      </node>
      <node concept="3Tm1VV" id="5uFPQ7Bwt5q" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7Bwt5r" role="3clF47">
        <node concept="3clFbJ" id="5uFPQ7BwtPK" role="3cqZAp">
          <node concept="3clFbS" id="5uFPQ7BwtPL" role="3clFbx">
            <node concept="YS8fn" id="5uFPQ7BwtSk" role="3cqZAp">
              <node concept="2ShNRf" id="5uFPQ7BwtSH" role="YScLw">
                <node concept="1pGfFk" id="5uFPQ7BwtY5" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="5uFPQ7BwtYC" role="37wK5m">
                    <property role="Xl_RC" value="no backend" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5uFPQ7BwtR2" role="3clFbw">
            <node concept="10Nm6u" id="5uFPQ7BwtRz" role="3uHU7w" />
            <node concept="37vLTw" id="5uFPQ7BwtQm" role="3uHU7B">
              <ref role="3cqZAo" node="5uFPQ7BwtFE" resolve="ourBackend" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5uFPQ7Bwu1N" role="3cqZAp">
          <node concept="2OqwBi" id="5uFPQ7Bwu2C" role="3clFbG">
            <node concept="37vLTw" id="5uFPQ7Bwu1L" role="2Oq$k0">
              <ref role="3cqZAo" node="5uFPQ7BwtFE" resolve="ourBackend" />
            </node>
            <node concept="liA8E" id="5uFPQ7Bwu3O" role="2OqNvi">
              <ref role="37wK5l" node="5uFPQ7BwtvO" resolve="current" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7Bwt4d" role="jymVt" />
    <node concept="2YIFZL" id="7ISVfSIwfH" role="jymVt">
      <property role="TrG5h" value="newSession" />
      <node concept="3uibUv" id="7ISVfSIw_G" role="3clF45">
        <ref role="3uigEE" node="5uFPQ7Bwt8Z" resolve="EvaluationSession.Config" />
      </node>
      <node concept="3Tm1VV" id="7ISVfSIwfK" role="1B3o_S" />
      <node concept="3clFbS" id="7ISVfSIwfL" role="3clF47">
        <node concept="3clFbJ" id="5mr7UHcbuz5" role="3cqZAp">
          <node concept="3clFbS" id="5mr7UHcbuz6" role="3clFbx">
            <node concept="YS8fn" id="5mr7UHcbuz7" role="3cqZAp">
              <node concept="2ShNRf" id="5mr7UHcbuz8" role="YScLw">
                <node concept="1pGfFk" id="5mr7UHcbuz9" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="5mr7UHcbuza" role="37wK5m">
                    <property role="Xl_RC" value="no backend" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5mr7UHcbuzb" role="3clFbw">
            <node concept="10Nm6u" id="5mr7UHcbuzc" role="3uHU7w" />
            <node concept="37vLTw" id="5mr7UHcbuzf" role="3uHU7B">
              <ref role="3cqZAo" node="5uFPQ7BwtFE" resolve="ourBackend" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5mr7UHcbuzh" role="3cqZAp">
          <node concept="2OqwBi" id="5mr7UHcbuzi" role="3clFbG">
            <node concept="37vLTw" id="5mr7UHcbuzm" role="2Oq$k0">
              <ref role="3cqZAo" node="5uFPQ7BwtFE" resolve="ourBackend" />
            </node>
            <node concept="liA8E" id="5mr7UHcbuzj" role="2OqNvi">
              <ref role="37wK5l" node="5mr7UHcbuF5" resolve="createConfig" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ISVfSIvYI" role="jymVt" />
    <node concept="312cEu" id="5uFPQ7Bwt8Z" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Config" />
      <property role="1sVAO0" value="true" />
      <node concept="2tJIrI" id="5uFPQ7BwtaY" role="jymVt" />
      <node concept="3clFb_" id="5uFPQ7Bwu9Q" role="jymVt">
        <property role="TrG5h" value="withPredicates" />
        <property role="1EzhhJ" value="true" />
        <node concept="37vLTG" id="5uFPQ7BwufO" role="3clF46">
          <property role="TrG5h" value="predicateSymbols" />
          <node concept="8X2XB" id="5uFPQ7BwuhP" role="1tU5fm">
            <node concept="3uibUv" id="5uFPQ7BZb0v" role="8Xvag">
              <ref role="3uigEE" to="qrld:5uFPQ7B$$3f" resolve="PredicateSymbol" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="5uFPQ7Bwub9" role="3clF45">
          <ref role="3uigEE" node="5uFPQ7Bwt8Z" resolve="EvaluationSession.Config" />
        </node>
        <node concept="3Tm1VV" id="5uFPQ7Bwu9T" role="1B3o_S" />
        <node concept="3clFbS" id="5uFPQ7Bwu9U" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="5uFPQ7Bwvfj" role="jymVt" />
      <node concept="3clFb_" id="5uFPQ7Bwvg_" role="jymVt">
        <property role="TrG5h" value="withTrace" />
        <property role="1EzhhJ" value="true" />
        <node concept="37vLTG" id="5mr7UHcbrGT" role="3clF46">
          <property role="TrG5h" value="computingTracer" />
          <node concept="3uibUv" id="5mr7UHcbrPY" role="1tU5fm">
            <ref role="3uigEE" to="qrld:24Vro6cQnrj" resolve="ComputingTracer" />
          </node>
        </node>
        <node concept="3uibUv" id="5uFPQ7Bwvia" role="3clF45">
          <ref role="3uigEE" node="5uFPQ7Bwt8Z" resolve="EvaluationSession.Config" />
        </node>
        <node concept="3Tm1VV" id="5uFPQ7BwvgC" role="1B3o_S" />
        <node concept="3clFbS" id="5uFPQ7BwvgD" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="5mr7UHcbcbV" role="jymVt" />
      <node concept="3clFb_" id="5mr7UHcbbR2" role="jymVt">
        <property role="TrG5h" value="withParam" />
        <property role="1EzhhJ" value="true" />
        <node concept="37vLTG" id="5mr7UHcbcpj" role="3clF46">
          <property role="TrG5h" value="key" />
          <node concept="17QB3L" id="5mr7UHcbcs$" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="5mr7UHcbctA" role="3clF46">
          <property role="TrG5h" value="param" />
          <node concept="3uibUv" id="5mr7UHcbcxl" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3uibUv" id="5mr7UHcbjuP" role="3clF45">
          <ref role="3uigEE" node="5uFPQ7Bwt8Z" resolve="EvaluationSession.Config" />
        </node>
        <node concept="3Tm1VV" id="5mr7UHcbbR5" role="1B3o_S" />
        <node concept="3clFbS" id="5mr7UHcbbR6" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="5mr7UHcb$Ol" role="jymVt" />
      <node concept="3clFb_" id="7ISVfSIuSh" role="jymVt">
        <property role="TrG5h" value="start" />
        <property role="1EzhhJ" value="true" />
        <node concept="3uibUv" id="7ISVfSIv24" role="3clF45">
          <ref role="3uigEE" node="5uFPQ7BvN_d" resolve="EvaluationSession" />
        </node>
        <node concept="3Tm1VV" id="7ISVfSIuSk" role="1B3o_S" />
        <node concept="3clFbS" id="7ISVfSIuSl" role="3clF47" />
      </node>
      <node concept="3Tm1VV" id="5uFPQ7Bwt90" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5uFPQ7Bwwl1" role="jymVt" />
    <node concept="3clFb_" id="7ISVfSIWX_" role="jymVt">
      <property role="TrG5h" value="computingTracer" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="7ISVfSIXiR" role="3clF45">
        <ref role="3uigEE" to="qrld:24Vro6cQnrj" resolve="ComputingTracer" />
      </node>
      <node concept="3Tm1VV" id="7ISVfSIWXC" role="1B3o_S" />
      <node concept="3clFbS" id="7ISVfSIWXD" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7ISVfSIWE1" role="jymVt" />
    <node concept="3clFb_" id="5uFPQ7ClOzA" role="jymVt">
      <property role="TrG5h" value="computingSession" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="5uFPQ7ClOB7" role="3clF45">
        <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="ComputingSession" />
      </node>
      <node concept="3Tm1VV" id="5uFPQ7ClOzD" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7ClOzE" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5uFPQ7ClOwd" role="jymVt" />
    <node concept="3clFb_" id="5uFPQ7BvQyO" role="jymVt">
      <property role="TrG5h" value="constraintSymbols" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="5uFPQ7BZbFT" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="5uFPQ7BZbHe" role="11_B2D">
          <ref role="3uigEE" to="qrld:54i3FxcZHHF" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5uFPQ7BvQyR" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7BvQyS" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5uFPQ7BvQyt" role="jymVt" />
    <node concept="3clFb_" id="5uFPQ7BvQxv" role="jymVt">
      <property role="TrG5h" value="constraintOccurrences" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="5uFPQ7BZbCW" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="5uFPQ7BZbEd" role="11_B2D">
          <ref role="3uigEE" to="qrld:5uFPQ7BZac$" resolve="ConstraintOccurrence" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5uFPQ7BvQxy" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7BvQxz" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5mr7UHccvSI" role="jymVt" />
    <node concept="3clFb_" id="5mr7UHccvdG" role="jymVt">
      <property role="TrG5h" value="constraintOccurrences" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="5mr7UHccvdH" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="5mr7UHccvdI" role="1tU5fm">
          <ref role="3uigEE" to="qrld:54i3FxcZHHF" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="3uibUv" id="5mr7UHccvdJ" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="5mr7UHccvdK" role="11_B2D">
          <ref role="3uigEE" to="qrld:5uFPQ7BZac$" resolve="ConstraintOccurrence" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5mr7UHccvdL" role="1B3o_S" />
      <node concept="3clFbS" id="5mr7UHccvdM" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5uFPQ7BZbRm" role="jymVt" />
    <node concept="3HP615" id="5uFPQ7BwtoR" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Backend" />
      <node concept="2tJIrI" id="5uFPQ7Bwtqx" role="jymVt" />
      <node concept="3clFb_" id="5uFPQ7BwtvO" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="current" />
        <node concept="3uibUv" id="5uFPQ7BwtwM" role="3clF45">
          <ref role="3uigEE" node="5uFPQ7BvN_d" resolve="EvaluationSession" />
        </node>
        <node concept="3Tm1VV" id="5uFPQ7BwtvR" role="1B3o_S" />
        <node concept="3clFbS" id="5uFPQ7BwtvS" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="5uFPQ7Bwtvq" role="jymVt" />
      <node concept="3clFb_" id="5mr7UHcbuF5" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="createConfig" />
        <node concept="3uibUv" id="5mr7UHcbuIP" role="3clF45">
          <ref role="3uigEE" node="5uFPQ7Bwt8Z" resolve="EvaluationSession.Config" />
        </node>
        <node concept="3Tm1VV" id="5mr7UHcbuF8" role="1B3o_S" />
        <node concept="3clFbS" id="5mr7UHcbuF9" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="5mr7UHcbuCs" role="jymVt" />
      <node concept="3Tmbuc" id="5uFPQ7Bwtsc" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5uFPQ7BvQ$M" role="jymVt" />
    <node concept="2YIFZL" id="5uFPQ7Bwt$y" role="jymVt">
      <property role="TrG5h" value="setBackend" />
      <node concept="37vLTG" id="5uFPQ7BwtBf" role="3clF46">
        <property role="TrG5h" value="backend" />
        <node concept="3uibUv" id="5uFPQ7BwtBM" role="1tU5fm">
          <ref role="3uigEE" node="5uFPQ7BwtoR" resolve="EvaluationSession.Backend" />
        </node>
      </node>
      <node concept="3cqZAl" id="5uFPQ7Bwt$$" role="3clF45" />
      <node concept="3Tmbuc" id="5uFPQ7BwtAi" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7Bwt$A" role="3clF47">
        <node concept="3clFbJ" id="5uFPQ7Bwuvn" role="3cqZAp">
          <node concept="3clFbS" id="5uFPQ7Bwuvp" role="3clFbx">
            <node concept="YS8fn" id="5uFPQ7Bwuyw" role="3cqZAp">
              <node concept="2ShNRf" id="5uFPQ7BwuyT" role="YScLw">
                <node concept="1pGfFk" id="5uFPQ7BwuCf" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="5uFPQ7BwuDj" role="37wK5m">
                    <property role="Xl_RC" value="backend already assigned" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="5uFPQ7BwuwV" role="3clFbw">
            <node concept="10Nm6u" id="5uFPQ7Bwuxs" role="3uHU7w" />
            <node concept="37vLTw" id="5uFPQ7Bwuw7" role="3uHU7B">
              <ref role="3cqZAo" node="5uFPQ7BwtFE" resolve="ourBackend" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5uFPQ7Bwuqp" role="3cqZAp">
          <node concept="37vLTI" id="5uFPQ7Bwur6" role="3clFbG">
            <node concept="37vLTw" id="5uFPQ7BwurY" role="37vLTx">
              <ref role="3cqZAo" node="5uFPQ7BwtBf" resolve="backend" />
            </node>
            <node concept="37vLTw" id="5uFPQ7Bwuqo" role="37vLTJ">
              <ref role="3cqZAo" node="5uFPQ7BwtFE" resolve="ourBackend" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jPBdK_J2T" role="jymVt" />
    <node concept="2YIFZL" id="5jPBdK_JeZ" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="clearBackend" />
      <node concept="37vLTG" id="5jPBdK_JrA" role="3clF46">
        <property role="TrG5h" value="backend" />
        <node concept="3uibUv" id="5jPBdK_JrB" role="1tU5fm">
          <ref role="3uigEE" node="5uFPQ7BwtoR" resolve="EvaluationSession.Backend" />
        </node>
      </node>
      <node concept="3clFbS" id="5jPBdK_J94" role="3clF47">
        <node concept="3clFbJ" id="5jPBdK_JtX" role="3cqZAp">
          <node concept="3clFbS" id="5jPBdK_JtY" role="3clFbx">
            <node concept="YS8fn" id="5jPBdK_JtZ" role="3cqZAp">
              <node concept="2ShNRf" id="5jPBdK_Ju0" role="YScLw">
                <node concept="1pGfFk" id="5jPBdK_Ju1" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="5jPBdK_Ju2" role="37wK5m">
                    <property role="Xl_RC" value="illegal access" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="5jPBdK_Ju3" role="3clFbw">
            <node concept="37vLTw" id="5jPBdK_Jws" role="3uHU7w">
              <ref role="3cqZAo" node="5jPBdK_JrA" resolve="backend" />
            </node>
            <node concept="37vLTw" id="5jPBdK_Ju7" role="3uHU7B">
              <ref role="3cqZAo" node="5uFPQ7BwtFE" resolve="ourBackend" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jPBdK_Ju9" role="3cqZAp">
          <node concept="37vLTI" id="5jPBdK_Jua" role="3clFbG">
            <node concept="10Nm6u" id="5jPBdK_JxG" role="37vLTx" />
            <node concept="37vLTw" id="5jPBdK_Jue" role="37vLTJ">
              <ref role="3cqZAo" node="5uFPQ7BwtFE" resolve="ourBackend" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5jPBdK_J92" role="3clF45" />
      <node concept="3Tmbuc" id="5jPBdK_Je4" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5uFPQ7BwtL0" role="jymVt" />
    <node concept="Wx3nA" id="5uFPQ7BwtFE" role="jymVt">
      <property role="TrG5h" value="ourBackend" />
      <node concept="3Tm6S6" id="5uFPQ7BwtFG" role="1B3o_S" />
      <node concept="3uibUv" id="5uFPQ7BwtMM" role="1tU5fm">
        <ref role="3uigEE" node="5uFPQ7BwtoR" resolve="EvaluationSession.Backend" />
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7BvNR8" role="jymVt" />
    <node concept="3Tm1VV" id="5uFPQ7BvN_e" role="1B3o_S" />
    <node concept="3UR2Jj" id="5uFPQ7BvQLO" role="lGtFl">
      <node concept="TZ5HA" id="5uFPQ7BvQLP" role="TZ5H$">
        <node concept="1dT_AC" id="5uFPQ7BvQLQ" role="1dT_Ay">
          <property role="1dT_AB" value="AKA &quot;Handler&quot;" />
        </node>
      </node>
    </node>
  </node>
</model>

