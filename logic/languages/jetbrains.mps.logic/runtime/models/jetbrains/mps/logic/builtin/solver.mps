<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4e44cb56-a834-45de-a0c4-c49a5c86e78e(jetbrains.mps.logic.builtin.solver)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="av0y" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.program(jetbrains.mps.logic.reactor/)" />
    <import index="bj13" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.logical(jetbrains.mps.logic.reactor/)" />
    <import index="yt73" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.unification(jetbrains.mps.logic.reactor/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="cxk7" ref="r:daa544a7-0a5c-49c0-a54c-4c2a5b4868aa(jetbrains.mps.logic.builtin.predicate)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="3HJTsBn4ogZ">
    <property role="TrG5h" value="EqualsSolver" />
    <node concept="2tJIrI" id="5p8T3QHE7qu" role="jymVt" />
    <node concept="3clFb_" id="2UGjFq4fUbF" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="predicate" />
      <node concept="37vLTG" id="2UGjFq4fUbG" role="3clF46">
        <property role="TrG5h" value="predicateSymbol" />
        <node concept="3uibUv" id="2UGjFq4fUbH" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="2UGjFq4fUbI" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="2UGjFq4fUbJ" role="1tU5fm">
          <node concept="3uibUv" id="2UGjFq4fUbK" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2UGjFq4gVon" role="3clF45">
        <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
      </node>
      <node concept="3Tm1VV" id="2UGjFq4fUbM" role="1B3o_S" />
      <node concept="3clFbS" id="2UGjFq4fUbP" role="3clF47">
        <node concept="3clFbJ" id="2UGjFq4gCHh" role="3cqZAp">
          <node concept="3clFbS" id="2UGjFq4gCHi" role="3clFbx">
            <node concept="YS8fn" id="2UGjFq4gCHj" role="3cqZAp">
              <node concept="2ShNRf" id="2UGjFq4gCHk" role="YScLw">
                <node concept="1pGfFk" id="2UGjFq4gCHl" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="2UGjFq4gCHm" role="3clFbw">
            <node concept="1eOMI4" id="2UGjFq4gCHn" role="3fr31v">
              <node concept="3clFbC" id="2UGjFq4gCHo" role="1eOMHV">
                <node concept="37vLTw" id="2UGjFq4gCHp" role="3uHU7w">
                  <ref role="3cqZAo" node="2UGjFq4fUbG" resolve="predicateSymbol" />
                </node>
                <node concept="10M0yZ" id="2UGjFq4gCHq" role="3uHU7B">
                  <ref role="1PxDUh" to="cxk7:3HJTsBn4kk_" resolve="EqualsPredicate" />
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C23RV" resolve="EQ_SYM" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2UGjFq4gGzn" role="3cqZAp">
          <node concept="3clFbS" id="2UGjFq4gGzp" role="3clFbx">
            <node concept="YS8fn" id="2UGjFq4gGKH" role="3cqZAp">
              <node concept="2ShNRf" id="2UGjFq4gGKI" role="YScLw">
                <node concept="1pGfFk" id="2UGjFq4gGKJ" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2UGjFq4gGId" role="3clFbw">
            <node concept="2OqwBi" id="2UGjFq4gGA0" role="3uHU7B">
              <node concept="37vLTw" id="2UGjFq4gG$_" role="2Oq$k0">
                <ref role="3cqZAo" node="2UGjFq4fUbI" resolve="args" />
              </node>
              <node concept="1Rwk04" id="2UGjFq4gGD3" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="2UGjFq4gGKt" role="3uHU7w">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2UGjFq4gGy9" role="3cqZAp" />
        <node concept="3clFbF" id="2UGjFq4gGf7" role="3cqZAp">
          <node concept="2ShNRf" id="2UGjFq4gGf3" role="3clFbG">
            <node concept="1pGfFk" id="2UGjFq4gGqL" role="2ShVmc">
              <ref role="37wK5l" to="cxk7:4xBopTzo_Q1" resolve="EqualsPredicate" />
              <node concept="AH0OO" id="2UGjFq4gGMM" role="37wK5m">
                <node concept="3cmrfG" id="2UGjFq4gGPb" role="AHEQo">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="2UGjFq4gGLk" role="AHHXb">
                  <ref role="3cqZAo" node="2UGjFq4fUbI" resolve="args" />
                </node>
              </node>
              <node concept="AH0OO" id="2UGjFq4gGVM" role="37wK5m">
                <node concept="3cmrfG" id="2UGjFq4gGWG" role="AHEQo">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="2UGjFq4gGTN" role="AHHXb">
                  <ref role="3cqZAo" node="2UGjFq4fUbI" resolve="args" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2UGjFq4gVHK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2UGjFq4fUQ7" role="jymVt" />
    <node concept="3clFb_" id="2UGjFq4lDR5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="ask" />
      <node concept="37vLTG" id="2UGjFq4lDR6" role="3clF46">
        <property role="TrG5h" value="invocation" />
        <node concept="3uibUv" id="2UGjFq4lDR7" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
        </node>
      </node>
      <node concept="10P_77" id="2UGjFq4lDR8" role="3clF45" />
      <node concept="3Tm1VV" id="2UGjFq4lDR9" role="1B3o_S" />
      <node concept="3clFbS" id="2UGjFq4lDRb" role="3clF47">
        <node concept="3cpWs6" id="2UGjFq4lFo9" role="3cqZAp">
          <node concept="1rXfSq" id="2UGjFq4lFoa" role="3cqZAk">
            <ref role="37wK5l" node="2UGjFq4lB$H" resolve="_ask" />
            <node concept="2OqwBi" id="2UGjFq4lFob" role="37wK5m">
              <node concept="2OqwBi" id="2UGjFq4lFoc" role="2Oq$k0">
                <node concept="37vLTw" id="2UGjFq4lFod" role="2Oq$k0">
                  <ref role="3cqZAo" node="2UGjFq4lDR6" resolve="invocation" />
                </node>
                <node concept="liA8E" id="2UGjFq4lFoe" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                </node>
              </node>
              <node concept="liA8E" id="2UGjFq4lFof" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                <node concept="3cmrfG" id="2UGjFq4lFog" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2UGjFq4lFMb" role="37wK5m">
              <node concept="2OqwBi" id="2UGjFq4lFMc" role="2Oq$k0">
                <node concept="37vLTw" id="2UGjFq4lFMd" role="2Oq$k0">
                  <ref role="3cqZAo" node="2UGjFq4lDR6" resolve="invocation" />
                </node>
                <node concept="liA8E" id="2UGjFq4lFMe" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                </node>
              </node>
              <node concept="liA8E" id="2UGjFq4lFMf" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                <node concept="3cmrfG" id="2UGjFq4lFMg" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2UGjFq4lEmO" role="jymVt" />
    <node concept="3clFb_" id="2UGjFq4lB$H" role="jymVt">
      <property role="TrG5h" value="_ask" />
      <node concept="3Tmbuc" id="2UGjFq4lC_p" role="1B3o_S" />
      <node concept="10P_77" id="2UGjFq4lB$J" role="3clF45" />
      <node concept="37vLTG" id="2UGjFq4lB$n" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2UGjFq4lB$o" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="2UGjFq4lB$p" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2UGjFq4lB$q" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="2UGjFq4lByW" role="3clF47">
        <node concept="3clFbJ" id="2UGjFq4lByX" role="3cqZAp">
          <node concept="3clFbS" id="2UGjFq4lByY" role="3clFbx">
            <node concept="3cpWs6" id="2UGjFq4lByZ" role="3cqZAp">
              <node concept="1rXfSq" id="2UGjFq4lBz0" role="3cqZAk">
                <ref role="37wK5l" node="3HJTsBn4VAS" resolve="_askEq_var_var" />
                <node concept="10QFUN" id="2UGjFq4lBz1" role="37wK5m">
                  <node concept="37vLTw" id="2UGjFq4lB$x" role="10QFUP">
                    <ref role="3cqZAo" node="2UGjFq4lB$n" resolve="left" />
                  </node>
                  <node concept="3uibUv" id="2UGjFq4lBz3" role="10QFUM">
                    <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                    <node concept="16syzq" id="2UGjFq4lBz4" role="11_B2D">
                      <ref role="16sUi3" node="2UGjFq4mCKS" resolve="T" />
                    </node>
                  </node>
                </node>
                <node concept="10QFUN" id="2UGjFq4lBz5" role="37wK5m">
                  <node concept="3uibUv" id="2UGjFq4lBz6" role="10QFUM">
                    <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                    <node concept="16syzq" id="2UGjFq4lBz7" role="11_B2D">
                      <ref role="16sUi3" node="2UGjFq4mCKS" resolve="T" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2UGjFq4lB$t" role="10QFUP">
                    <ref role="3cqZAo" node="2UGjFq4lB$p" resolve="right" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2UGjFq4lBz9" role="3cqZAp" />
          </node>
          <node concept="1Wc70l" id="2UGjFq4lBza" role="3clFbw">
            <node concept="2ZW3vV" id="2UGjFq4lBzb" role="3uHU7w">
              <node concept="3uibUv" id="2UGjFq4lBzc" role="2ZW6by">
                <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
              </node>
              <node concept="37vLTw" id="2UGjFq4lB$E" role="2ZW6bz">
                <ref role="3cqZAo" node="2UGjFq4lB$p" resolve="right" />
              </node>
            </node>
            <node concept="2ZW3vV" id="2UGjFq4lBze" role="3uHU7B">
              <node concept="3uibUv" id="2UGjFq4lBzf" role="2ZW6by">
                <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
              </node>
              <node concept="37vLTw" id="2UGjFq4lB$z" role="2ZW6bz">
                <ref role="3cqZAo" node="2UGjFq4lB$n" resolve="left" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2UGjFq4lBzh" role="3eNLev">
            <node concept="3clFbS" id="2UGjFq4lBzi" role="3eOfB_">
              <node concept="3cpWs6" id="2UGjFq4lBzj" role="3cqZAp">
                <node concept="1rXfSq" id="2UGjFq4lBzk" role="3cqZAk">
                  <ref role="37wK5l" node="3HJTsBn4VAB" resolve="_askEq_var_val" />
                  <node concept="10QFUN" id="2UGjFq4lBzl" role="37wK5m">
                    <node concept="37vLTw" id="2UGjFq4lB$C" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lB$n" resolve="left" />
                    </node>
                    <node concept="3uibUv" id="2UGjFq4lBzn" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                      <node concept="16syzq" id="2UGjFq4lBzo" role="11_B2D">
                        <ref role="16sUi3" node="2UGjFq4mCKS" resolve="T" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="2UGjFq4lBzp" role="37wK5m">
                    <node concept="16syzq" id="2UGjFq4lBzq" role="10QFUM">
                      <ref role="16sUi3" node="2UGjFq4mCKS" resolve="T" />
                    </node>
                    <node concept="37vLTw" id="2UGjFq4lB$B" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lB$p" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2UGjFq4lBzs" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="2UGjFq4lBzt" role="3eO9$A">
              <node concept="3fqX7Q" id="2UGjFq4lBzu" role="3uHU7w">
                <node concept="1eOMI4" id="2UGjFq4lBzv" role="3fr31v">
                  <node concept="2ZW3vV" id="2UGjFq4lBzw" role="1eOMHV">
                    <node concept="3uibUv" id="2UGjFq4lBzx" role="2ZW6by">
                      <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                    </node>
                    <node concept="37vLTw" id="2UGjFq4lB$w" role="2ZW6bz">
                      <ref role="3cqZAo" node="2UGjFq4lB$p" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="2UGjFq4lBzz" role="3uHU7B">
                <node concept="3uibUv" id="2UGjFq4lBz$" role="2ZW6by">
                  <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                </node>
                <node concept="37vLTw" id="2UGjFq4lB$v" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4lB$n" resolve="left" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2UGjFq4lBzA" role="3eNLev">
            <node concept="3clFbS" id="2UGjFq4lBzB" role="3eOfB_">
              <node concept="3cpWs6" id="2UGjFq4lBzC" role="3cqZAp">
                <node concept="1rXfSq" id="2UGjFq4lBzD" role="3cqZAk">
                  <ref role="37wK5l" node="3HJTsBn4VAm" resolve="_askEq_val_var" />
                  <node concept="10QFUN" id="2UGjFq4lBzE" role="37wK5m">
                    <node concept="16syzq" id="2UGjFq4lBzF" role="10QFUM">
                      <ref role="16sUi3" node="2UGjFq4mCKS" resolve="T" />
                    </node>
                    <node concept="37vLTw" id="2UGjFq4lB$$" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lB$n" resolve="left" />
                    </node>
                  </node>
                  <node concept="10QFUN" id="2UGjFq4lBzH" role="37wK5m">
                    <node concept="3uibUv" id="2UGjFq4lBzI" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                      <node concept="16syzq" id="2UGjFq4lBzJ" role="11_B2D">
                        <ref role="16sUi3" node="2UGjFq4mCKS" resolve="T" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2UGjFq4lB$_" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lB$p" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2UGjFq4lBzL" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="2UGjFq4lBzM" role="3eO9$A">
              <node concept="2ZW3vV" id="2UGjFq4lBzN" role="3uHU7w">
                <node concept="3uibUv" id="2UGjFq4lBzO" role="2ZW6by">
                  <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                </node>
                <node concept="37vLTw" id="2UGjFq4lB$u" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4lB$p" resolve="right" />
                </node>
              </node>
              <node concept="3fqX7Q" id="2UGjFq4lBzQ" role="3uHU7B">
                <node concept="1eOMI4" id="2UGjFq4lBzR" role="3fr31v">
                  <node concept="2ZW3vV" id="2UGjFq4lBzS" role="1eOMHV">
                    <node concept="3uibUv" id="2UGjFq4lBzT" role="2ZW6by">
                      <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                    </node>
                    <node concept="37vLTw" id="2UGjFq4lB$D" role="2ZW6bz">
                      <ref role="3cqZAo" node="2UGjFq4lB$n" resolve="left" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2UGjFq4lBzV" role="3eNLev">
            <node concept="3clFbS" id="2UGjFq4lBzW" role="3eOfB_">
              <node concept="3cpWs6" id="2UGjFq4lBzX" role="3cqZAp">
                <node concept="1rXfSq" id="2UGjFq4lBzY" role="3cqZAk">
                  <ref role="37wK5l" node="3HJTsBn4VA6" resolve="_askEq_val_val" />
                  <node concept="10QFUN" id="2UGjFq4lBzZ" role="37wK5m">
                    <node concept="16syzq" id="2UGjFq4lB$0" role="10QFUM">
                      <ref role="16sUi3" node="2UGjFq4mCKS" resolve="T" />
                    </node>
                    <node concept="37vLTw" id="2UGjFq4lB$y" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lB$n" resolve="left" />
                    </node>
                  </node>
                  <node concept="10QFUN" id="2UGjFq4lB$2" role="37wK5m">
                    <node concept="16syzq" id="2UGjFq4lB$3" role="10QFUM">
                      <ref role="16sUi3" node="2UGjFq4mCKS" resolve="T" />
                    </node>
                    <node concept="37vLTw" id="2UGjFq4lB$A" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lB$p" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2UGjFq4lB$5" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="2UGjFq4lB$6" role="3eO9$A">
              <node concept="3fqX7Q" id="2UGjFq4lB$7" role="3uHU7B">
                <node concept="1eOMI4" id="2UGjFq4lB$8" role="3fr31v">
                  <node concept="2ZW3vV" id="2UGjFq4lB$9" role="1eOMHV">
                    <node concept="3uibUv" id="2UGjFq4lB$a" role="2ZW6by">
                      <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                    </node>
                    <node concept="37vLTw" id="2UGjFq4lB$r" role="2ZW6bz">
                      <ref role="3cqZAo" node="2UGjFq4lB$n" resolve="left" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="2UGjFq4lB$c" role="3uHU7w">
                <node concept="1eOMI4" id="2UGjFq4lB$d" role="3fr31v">
                  <node concept="2ZW3vV" id="2UGjFq4lB$e" role="1eOMHV">
                    <node concept="3uibUv" id="2UGjFq4lB$f" role="2ZW6by">
                      <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                    </node>
                    <node concept="37vLTw" id="2UGjFq4lB$s" role="2ZW6bz">
                      <ref role="3cqZAo" node="2UGjFq4lB$p" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="2UGjFq4lB$h" role="9aQIa">
            <node concept="3clFbS" id="2UGjFq4lB$i" role="9aQI4">
              <node concept="YS8fn" id="2UGjFq4lB$j" role="3cqZAp">
                <node concept="2ShNRf" id="2UGjFq4lB$k" role="YScLw">
                  <node concept="1pGfFk" id="2UGjFq4lB$l" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="Xl_RD" id="2UGjFq4lB$m" role="37wK5m">
                      <property role="Xl_RC" value="invalid arguments" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="2UGjFq4mCKS" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwQPY5" role="jymVt" />
    <node concept="3clFb_" id="2UGjFq4lKki" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tell" />
      <node concept="3cqZAl" id="2UGjFq4lKkj" role="3clF45" />
      <node concept="3Tm1VV" id="2UGjFq4lKkk" role="1B3o_S" />
      <node concept="37vLTG" id="2UGjFq4lKkm" role="3clF46">
        <property role="TrG5h" value="invocation" />
        <node concept="3uibUv" id="2UGjFq4lKkn" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
        </node>
      </node>
      <node concept="3clFbS" id="2UGjFq4lKkp" role="3clF47">
        <node concept="3clFbF" id="2UGjFq4lNPr" role="3cqZAp">
          <node concept="1rXfSq" id="2UGjFq4lNPt" role="3clFbG">
            <ref role="37wK5l" node="2UGjFq4lGBW" resolve="_tell" />
            <node concept="2OqwBi" id="2UGjFq4lNPu" role="37wK5m">
              <node concept="2OqwBi" id="2UGjFq4lNPv" role="2Oq$k0">
                <node concept="37vLTw" id="2UGjFq4lNPw" role="2Oq$k0">
                  <ref role="3cqZAo" node="2UGjFq4lKkm" resolve="invocation" />
                </node>
                <node concept="liA8E" id="2UGjFq4lNPx" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                </node>
              </node>
              <node concept="liA8E" id="2UGjFq4lNPy" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                <node concept="3cmrfG" id="2UGjFq4lNPz" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2UGjFq4lNP$" role="37wK5m">
              <node concept="2OqwBi" id="2UGjFq4lNP_" role="2Oq$k0">
                <node concept="37vLTw" id="2UGjFq4lNPA" role="2Oq$k0">
                  <ref role="3cqZAo" node="2UGjFq4lKkm" resolve="invocation" />
                </node>
                <node concept="liA8E" id="2UGjFq4lNPB" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                </node>
              </node>
              <node concept="liA8E" id="2UGjFq4lNPC" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                <node concept="3cmrfG" id="2UGjFq4lNPD" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2UGjFq4lNHF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2UGjFq4lJKz" role="jymVt" />
    <node concept="3clFb_" id="2UGjFq4lGBW" role="jymVt">
      <property role="TrG5h" value="_tell" />
      <node concept="3Tmbuc" id="2UGjFq4lJig" role="1B3o_S" />
      <node concept="3cqZAl" id="2UGjFq4lGBY" role="3clF45" />
      <node concept="37vLTG" id="2UGjFq4lGBA" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2UGjFq4lGBB" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="2UGjFq4lGBC" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2UGjFq4lGBD" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="2UGjFq4lGAa" role="3clF47">
        <node concept="3clFbJ" id="2UGjFq4lGAb" role="3cqZAp">
          <node concept="3clFbS" id="2UGjFq4lGAc" role="3clFbx">
            <node concept="3clFbF" id="2UGjFq4lGAd" role="3cqZAp">
              <node concept="1rXfSq" id="2UGjFq4lGAe" role="3clFbG">
                <ref role="37wK5l" node="3HJTsBn4V_Q" resolve="_tellEq_var_var" />
                <node concept="10QFUN" id="2UGjFq4lGAf" role="37wK5m">
                  <node concept="37vLTw" id="2UGjFq4lGBJ" role="10QFUP">
                    <ref role="3cqZAo" node="2UGjFq4lGBA" resolve="left" />
                  </node>
                  <node concept="3uibUv" id="2UGjFq4lGAh" role="10QFUM">
                    <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                    <node concept="16syzq" id="2UGjFq4lGAi" role="11_B2D">
                      <ref role="16sUi3" node="2UGjFq4lHLA" resolve="T" />
                    </node>
                  </node>
                </node>
                <node concept="10QFUN" id="2UGjFq4lGAj" role="37wK5m">
                  <node concept="3uibUv" id="2UGjFq4lGAk" role="10QFUM">
                    <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                    <node concept="16syzq" id="2UGjFq4lGAl" role="11_B2D">
                      <ref role="16sUi3" node="2UGjFq4lHLA" resolve="T" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2UGjFq4lGBE" role="10QFUP">
                    <ref role="3cqZAo" node="2UGjFq4lGBC" resolve="right" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2UGjFq4lGAn" role="3cqZAp" />
          </node>
          <node concept="1Wc70l" id="2UGjFq4lGAo" role="3clFbw">
            <node concept="2ZW3vV" id="2UGjFq4lGAp" role="3uHU7w">
              <node concept="3uibUv" id="2UGjFq4lGAq" role="2ZW6by">
                <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
              </node>
              <node concept="37vLTw" id="2UGjFq4lGBM" role="2ZW6bz">
                <ref role="3cqZAo" node="2UGjFq4lGBC" resolve="right" />
              </node>
            </node>
            <node concept="2ZW3vV" id="2UGjFq4lGAs" role="3uHU7B">
              <node concept="3uibUv" id="2UGjFq4lGAt" role="2ZW6by">
                <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
              </node>
              <node concept="37vLTw" id="2UGjFq4lGBG" role="2ZW6bz">
                <ref role="3cqZAo" node="2UGjFq4lGBA" resolve="left" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2UGjFq4lGAv" role="3eNLev">
            <node concept="3clFbS" id="2UGjFq4lGAw" role="3eOfB_">
              <node concept="3clFbF" id="2UGjFq4lGAx" role="3cqZAp">
                <node concept="1rXfSq" id="2UGjFq4lGAy" role="3clFbG">
                  <ref role="37wK5l" node="3HJTsBn4V_B" resolve="_tellEq_var_val" />
                  <node concept="10QFUN" id="2UGjFq4lGAz" role="37wK5m">
                    <node concept="37vLTw" id="2UGjFq4lGBR" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lGBA" resolve="left" />
                    </node>
                    <node concept="3uibUv" id="2UGjFq4lGA_" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                      <node concept="16syzq" id="2UGjFq4lGAA" role="11_B2D">
                        <ref role="16sUi3" node="2UGjFq4lHLA" resolve="T" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="2UGjFq4lGAB" role="37wK5m">
                    <node concept="16syzq" id="2UGjFq4lGAC" role="10QFUM">
                      <ref role="16sUi3" node="2UGjFq4lHLA" resolve="T" />
                    </node>
                    <node concept="37vLTw" id="2UGjFq4lGBK" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lGBC" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2UGjFq4lGAE" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="2UGjFq4lGAF" role="3eO9$A">
              <node concept="3fqX7Q" id="2UGjFq4lGAG" role="3uHU7w">
                <node concept="1eOMI4" id="2UGjFq4lGAH" role="3fr31v">
                  <node concept="2ZW3vV" id="2UGjFq4lGAI" role="1eOMHV">
                    <node concept="3uibUv" id="2UGjFq4lGAJ" role="2ZW6by">
                      <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                    </node>
                    <node concept="37vLTw" id="2UGjFq4lGBH" role="2ZW6bz">
                      <ref role="3cqZAo" node="2UGjFq4lGBC" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="2UGjFq4lGAL" role="3uHU7B">
                <node concept="3uibUv" id="2UGjFq4lGAM" role="2ZW6by">
                  <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                </node>
                <node concept="37vLTw" id="2UGjFq4lGBN" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4lGBA" resolve="left" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2UGjFq4lGAO" role="3eNLev">
            <node concept="3clFbS" id="2UGjFq4lGAP" role="3eOfB_">
              <node concept="3clFbF" id="2UGjFq4lGAQ" role="3cqZAp">
                <node concept="1rXfSq" id="2UGjFq4lGAR" role="3clFbG">
                  <ref role="37wK5l" node="3HJTsBn4V_o" resolve="_tellEq_val_var" />
                  <node concept="10QFUN" id="2UGjFq4lGAS" role="37wK5m">
                    <node concept="16syzq" id="2UGjFq4lGAT" role="10QFUM">
                      <ref role="16sUi3" node="2UGjFq4lHLA" resolve="T" />
                    </node>
                    <node concept="37vLTw" id="2UGjFq4lGBS" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lGBA" resolve="left" />
                    </node>
                  </node>
                  <node concept="10QFUN" id="2UGjFq4lGAV" role="37wK5m">
                    <node concept="3uibUv" id="2UGjFq4lGAW" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                      <node concept="16syzq" id="2UGjFq4lGAX" role="11_B2D">
                        <ref role="16sUi3" node="2UGjFq4lHLA" resolve="T" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2UGjFq4lGBO" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lGBC" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2UGjFq4lGAZ" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="2UGjFq4lGB0" role="3eO9$A">
              <node concept="2ZW3vV" id="2UGjFq4lGB1" role="3uHU7w">
                <node concept="3uibUv" id="2UGjFq4lGB2" role="2ZW6by">
                  <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                </node>
                <node concept="37vLTw" id="2UGjFq4lGBP" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4lGBC" resolve="right" />
                </node>
              </node>
              <node concept="3fqX7Q" id="2UGjFq4lGB4" role="3uHU7B">
                <node concept="1eOMI4" id="2UGjFq4lGB5" role="3fr31v">
                  <node concept="2ZW3vV" id="2UGjFq4lGB6" role="1eOMHV">
                    <node concept="3uibUv" id="2UGjFq4lGB7" role="2ZW6by">
                      <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                    </node>
                    <node concept="37vLTw" id="2UGjFq4lGBT" role="2ZW6bz">
                      <ref role="3cqZAo" node="2UGjFq4lGBA" resolve="left" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2UGjFq4lGB9" role="3eNLev">
            <node concept="3clFbS" id="2UGjFq4lGBa" role="3eOfB_">
              <node concept="3SKdUt" id="2UGjFq4lGBb" role="3cqZAp">
                <node concept="3SKdUq" id="2UGjFq4lGBc" role="3SKWNk">
                  <property role="3SKdUp" value="todo: unreachable code" />
                </node>
              </node>
              <node concept="3clFbF" id="2UGjFq4lGBd" role="3cqZAp">
                <node concept="1rXfSq" id="2UGjFq4lGBe" role="3clFbG">
                  <ref role="37wK5l" node="3HJTsBn4V_a" resolve="_tellEq_val_val" />
                  <node concept="10QFUN" id="2UGjFq4lGBf" role="37wK5m">
                    <node concept="16syzq" id="2UGjFq4lGBg" role="10QFUM">
                      <ref role="16sUi3" node="2UGjFq4lHLA" resolve="T" />
                    </node>
                    <node concept="37vLTw" id="2UGjFq4lGBF" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lGBA" resolve="left" />
                    </node>
                  </node>
                  <node concept="10QFUN" id="2UGjFq4lGBi" role="37wK5m">
                    <node concept="16syzq" id="2UGjFq4lGBj" role="10QFUM">
                      <ref role="16sUi3" node="2UGjFq4lHLA" resolve="T" />
                    </node>
                    <node concept="37vLTw" id="2UGjFq4lGBL" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lGBC" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2UGjFq4lGBl" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="2UGjFq4lGBm" role="3eO9$A">
              <node concept="1eOMI4" id="2UGjFq4lGBn" role="3uHU7B">
                <node concept="2ZW3vV" id="2UGjFq4lGBo" role="1eOMHV">
                  <node concept="3uibUv" id="2UGjFq4lGBp" role="2ZW6by">
                    <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                  </node>
                  <node concept="37vLTw" id="2UGjFq4lGBI" role="2ZW6bz">
                    <ref role="3cqZAo" node="2UGjFq4lGBA" resolve="left" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="2UGjFq4lGBr" role="3uHU7w">
                <node concept="1eOMI4" id="2UGjFq4lGBs" role="3fr31v">
                  <node concept="2ZW3vV" id="2UGjFq4lGBt" role="1eOMHV">
                    <node concept="3uibUv" id="2UGjFq4lGBu" role="2ZW6by">
                      <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                    </node>
                    <node concept="37vLTw" id="2UGjFq4lGBQ" role="2ZW6bz">
                      <ref role="3cqZAo" node="2UGjFq4lGBC" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="2UGjFq4lGBw" role="9aQIa">
            <node concept="3clFbS" id="2UGjFq4lGBx" role="9aQI4">
              <node concept="YS8fn" id="2UGjFq4lGBy" role="3cqZAp">
                <node concept="2ShNRf" id="2UGjFq4lGBz" role="YScLw">
                  <node concept="1pGfFk" id="2UGjFq4lGB$" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="Xl_RD" id="2UGjFq4lGB_" role="37wK5m">
                      <property role="Xl_RC" value="invalid arguments" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="2UGjFq4lHLA" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwR0ld" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4V_a" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="_tellEq_val_val" />
      <node concept="37vLTG" id="3HJTsBn4V_b" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="16syzq" id="6MYr6JwQ3A$" role="1tU5fm">
          <ref role="16sUi3" node="6MYr6JwQ38R" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4V_d" role="3clF46">
        <property role="TrG5h" value="rightVal" />
        <node concept="16syzq" id="6MYr6JwQ4jc" role="1tU5fm">
          <ref role="16sUi3" node="6MYr6JwQ38R" resolve="T" />
        </node>
      </node>
      <node concept="3cqZAl" id="3HJTsBn4V_f" role="3clF45" />
      <node concept="3Tmbuc" id="6MYr6JwU_Pm" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn4V_n" role="3clF47">
        <node concept="3clFbJ" id="3HJTsBn7oRW" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn7oRY" role="3clFbx">
            <node concept="3cpWs6" id="3HJTsBn7qLI" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="3HJTsBn7pR4" role="3clFbw">
            <node concept="37vLTw" id="3HJTsBn7qsr" role="3uHU7w">
              <ref role="3cqZAo" node="3HJTsBn4V_d" resolve="rightVal" />
            </node>
            <node concept="37vLTw" id="3HJTsBn7pkA" role="3uHU7B">
              <ref role="3cqZAo" node="3HJTsBn4V_b" resolve="leftVal" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3HJTsBn7rbx" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn7rbz" role="3clFbx">
            <node concept="3cpWs6" id="3HJTsBn7xcC" role="3cqZAp" />
          </node>
          <node concept="1Wc70l" id="3HJTsBn7w0_" role="3clFbw">
            <node concept="3y3z36" id="3HJTsBn7vHz" role="3uHU7B">
              <node concept="37vLTw" id="3HJTsBn7rCt" role="3uHU7B">
                <ref role="3cqZAo" node="3HJTsBn4V_b" resolve="leftVal" />
              </node>
              <node concept="10Nm6u" id="3HJTsBn7sHc" role="3uHU7w" />
            </node>
            <node concept="2OqwBi" id="3HJTsBn7tMQ" role="3uHU7w">
              <node concept="37vLTw" id="3HJTsBn7xH_" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn4V_b" resolve="leftVal" />
              </node>
              <node concept="liA8E" id="3HJTsBn7udV" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="37vLTw" id="3HJTsBn7y6H" role="37wK5m">
                  <ref role="3cqZAo" node="3HJTsBn4V_d" resolve="rightVal" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn7xcH" role="3cqZAp" />
        <node concept="YS8fn" id="5jCHAT1IBp1" role="3cqZAp">
          <node concept="2ShNRf" id="5jCHAT1IBp2" role="YScLw">
            <node concept="1pGfFk" id="5jCHAT1IBp3" role="2ShVmc">
              <ref role="37wK5l" to="w7la:~EvaluationFailureException.&lt;init&gt;(java.lang.String)" resolve="EvaluationFailureException" />
              <node concept="3cpWs3" id="5jCHAT1IBzh" role="37wK5m">
                <node concept="Xl_RD" id="5jCHAT1IBzi" role="3uHU7w">
                  <property role="Xl_RC" value="'" />
                </node>
                <node concept="3cpWs3" id="5jCHAT1IBzj" role="3uHU7B">
                  <node concept="3cpWs3" id="5jCHAT1IBzk" role="3uHU7B">
                    <node concept="3cpWs3" id="5jCHAT1IBzl" role="3uHU7B">
                      <node concept="Xl_RD" id="5jCHAT1IBzm" role="3uHU7B">
                        <property role="Xl_RC" value="cannot make equal '" />
                      </node>
                      <node concept="37vLTw" id="5jCHAT1IBzn" role="3uHU7w">
                        <ref role="3cqZAo" node="3HJTsBn4V_b" resolve="leftVal" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="5jCHAT1IBzo" role="3uHU7w">
                      <property role="Xl_RC" value="' and '" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5jCHAT1IBzp" role="3uHU7w">
                    <ref role="3cqZAo" node="3HJTsBn4V_d" resolve="rightVal" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6MYr6JwQ38R" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4X9i" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4V_o" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="_tellEq_val_var" />
      <node concept="37vLTG" id="3HJTsBn4V_p" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="16syzq" id="6MYr6JwQ64U" role="1tU5fm">
          <ref role="16sUi3" node="6MYr6JwQ5Cq" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4V_r" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="3HJTsBn4V_s" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
          <node concept="16syzq" id="6MYr6JwQ7Bx" role="11_B2D">
            <ref role="16sUi3" node="6MYr6JwQ5Cq" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3HJTsBn4V_u" role="3clF45" />
      <node concept="3Tmbuc" id="6MYr6JwUAbQ" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn4V_A" role="3clF47">
        <node concept="3clFbF" id="3HJTsBn7fYl" role="3cqZAp">
          <node concept="1rXfSq" id="3HJTsBn7fYk" role="3clFbG">
            <ref role="37wK5l" node="3HJTsBn4V_B" resolve="_tellEq_var_val" />
            <node concept="37vLTw" id="3HJTsBn7g__" role="37wK5m">
              <ref role="3cqZAo" node="3HJTsBn4V_r" resolve="right" />
            </node>
            <node concept="37vLTw" id="3HJTsBn7h4K" role="37wK5m">
              <ref role="3cqZAo" node="3HJTsBn4V_p" resolve="leftVal" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6MYr6JwQ5Cq" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4XRl" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4V_B" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="_tellEq_var_val" />
      <node concept="37vLTG" id="3HJTsBn4V_C" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="3HJTsBn4V_D" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
          <node concept="16syzq" id="6MYr6JwQoGG" role="11_B2D">
            <ref role="16sUi3" node="6MYr6JwQnR4" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4V_F" role="3clF46">
        <property role="TrG5h" value="rightVal" />
        <node concept="16syzq" id="6MYr6JwQp7S" role="1tU5fm">
          <ref role="16sUi3" node="6MYr6JwQnR4" resolve="T" />
        </node>
      </node>
      <node concept="3cqZAl" id="3HJTsBn4V_H" role="3clF45" />
      <node concept="3Tmbuc" id="6MYr6JwUAxn" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn4V_P" role="3clF47">
        <node concept="3cpWs8" id="3HJTsBn77YV" role="3cqZAp">
          <node concept="3cpWsn" id="3HJTsBn77YW" role="3cpWs9">
            <property role="TrG5h" value="leftRepr" />
            <node concept="3uibUv" id="3HJTsBn79hD" role="1tU5fm">
              <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
              <node concept="16syzq" id="6MYr6JwQpP1" role="11_B2D">
                <ref role="16sUi3" node="6MYr6JwQnR4" resolve="T" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJTsBn77YY" role="33vP2m">
              <node concept="37vLTw" id="3HJTsBn77YZ" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn4V_C" resolve="left" />
              </node>
              <node concept="liA8E" id="3HJTsBn77Z0" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~SolverLogical.findRoot():jetbrains.mps.logic.reactor.logical.SolverLogical" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn77Z1" role="3cqZAp" />
        <node concept="3cpWs8" id="3HJTsBn77Zi" role="3cqZAp">
          <node concept="3cpWsn" id="3HJTsBn77Zj" role="3cpWs9">
            <property role="TrG5h" value="leftVal" />
            <node concept="3uibUv" id="2c3nq4GStuE" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="2OqwBi" id="3HJTsBn77Zl" role="33vP2m">
              <node concept="37vLTw" id="3HJTsBn77Zm" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn77YW" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="3HJTsBn77Zn" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3HJTsBn77Zo" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn77Zp" role="3clFbx">
            <node concept="3clFbF" id="7K4Mb_JzT$F" role="3cqZAp">
              <node concept="2OqwBi" id="7K4Mb_JzT$G" role="3clFbG">
                <node concept="37vLTw" id="6MYr6JwQrkb" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn77YW" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="7K4Mb_JzT$I" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~SolverLogical.setValue(java.lang.Object):void" resolve="setValue" />
                  <node concept="37vLTw" id="7K4Mb_JzT$N" role="37wK5m">
                    <ref role="3cqZAo" node="3HJTsBn4V_F" resolve="rightVal" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3HJTsBn77ZE" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="3HJTsBn77ZF" role="3clFbw">
            <node concept="10Nm6u" id="3HJTsBn77ZG" role="3uHU7w" />
            <node concept="37vLTw" id="3HJTsBn77ZH" role="3uHU7B">
              <ref role="3cqZAo" node="3HJTsBn77Zj" resolve="leftVal" />
            </node>
          </node>
          <node concept="9aQIb" id="3HJTsBn77ZI" role="9aQIa">
            <node concept="3clFbS" id="3HJTsBn77ZJ" role="9aQI4">
              <node concept="3clFbF" id="3HJTsBn77ZK" role="3cqZAp">
                <node concept="1rXfSq" id="3HJTsBn77ZL" role="3clFbG">
                  <ref role="37wK5l" node="3HJTsBn4V_a" resolve="_tellEq_val_val" />
                  <node concept="37vLTw" id="3HJTsBn77ZM" role="37wK5m">
                    <ref role="3cqZAo" node="3HJTsBn77Zj" resolve="leftVal" />
                  </node>
                  <node concept="37vLTw" id="3HJTsBn77ZN" role="37wK5m">
                    <ref role="3cqZAo" node="3HJTsBn4V_F" resolve="rightVal" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6MYr6JwQnR4" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn5gqM" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4V_Q" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="_tellEq_var_var" />
      <node concept="37vLTG" id="3HJTsBn4V_R" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="3HJTsBn4V_S" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
          <node concept="16syzq" id="6MYr6JwQtLp" role="11_B2D">
            <ref role="16sUi3" node="6MYr6JwQsDp" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4V_U" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="3HJTsBn4V_V" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
          <node concept="16syzq" id="6MYr6JwQuP9" role="11_B2D">
            <ref role="16sUi3" node="6MYr6JwQsDp" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3HJTsBn4V_X" role="3clF45" />
      <node concept="3Tmbuc" id="6MYr6JwUATr" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn4VA5" role="3clF47">
        <node concept="3SKdUt" id="3HJTsBn6TsO" role="3cqZAp">
          <node concept="3SKdUq" id="3HJTsBn6U2z" role="3SKWNk">
            <property role="3SKdUp" value="TODO: avoid code duplication" />
          </node>
        </node>
        <node concept="3clFbJ" id="3HJTsBn6R7p" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn6R7q" role="3clFbx">
            <node concept="3cpWs6" id="3HJTsBn6R7r" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="3HJTsBn6R7s" role="3clFbw">
            <node concept="37vLTw" id="3HJTsBn6R7t" role="3uHU7w">
              <ref role="3cqZAo" node="3HJTsBn4V_U" resolve="right" />
            </node>
            <node concept="37vLTw" id="3HJTsBn6R7u" role="3uHU7B">
              <ref role="3cqZAo" node="3HJTsBn4V_R" resolve="left" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn6R7v" role="3cqZAp" />
        <node concept="3cpWs8" id="3HJTsBn6R7w" role="3cqZAp">
          <node concept="3cpWsn" id="3HJTsBn6R7x" role="3cpWs9">
            <property role="TrG5h" value="leftRepr" />
            <node concept="3uibUv" id="3HJTsBn6UOm" role="1tU5fm">
              <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
              <node concept="16syzq" id="6MYr6JwQvoS" role="11_B2D">
                <ref role="16sUi3" node="6MYr6JwQsDp" resolve="T" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJTsBn6R7z" role="33vP2m">
              <node concept="37vLTw" id="3HJTsBn6R7$" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn4V_R" resolve="left" />
              </node>
              <node concept="liA8E" id="3HJTsBn6R7_" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~SolverLogical.findRoot():jetbrains.mps.logic.reactor.logical.SolverLogical" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3HJTsBn6R7A" role="3cqZAp">
          <node concept="3cpWsn" id="3HJTsBn6R7B" role="3cpWs9">
            <property role="TrG5h" value="rightRepr" />
            <node concept="3uibUv" id="3HJTsBn6WzP" role="1tU5fm">
              <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
              <node concept="16syzq" id="6MYr6JwQvEZ" role="11_B2D">
                <ref role="16sUi3" node="6MYr6JwQsDp" resolve="T" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJTsBn6R7D" role="33vP2m">
              <node concept="37vLTw" id="3HJTsBn6R7E" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn4V_U" resolve="right" />
              </node>
              <node concept="liA8E" id="3HJTsBn6R7F" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~SolverLogical.findRoot():jetbrains.mps.logic.reactor.logical.SolverLogical" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn6R7G" role="3cqZAp" />
        <node concept="3clFbJ" id="3HJTsBn6R7H" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn6R7I" role="3clFbx">
            <node concept="3cpWs6" id="3HJTsBn6R7J" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="3HJTsBn6R7K" role="3clFbw">
            <node concept="37vLTw" id="3HJTsBn6R7L" role="3uHU7w">
              <ref role="3cqZAo" node="3HJTsBn6R7B" resolve="rightRepr" />
            </node>
            <node concept="37vLTw" id="3HJTsBn6R7M" role="3uHU7B">
              <ref role="3cqZAo" node="3HJTsBn6R7x" resolve="leftRepr" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn6R7N" role="3cqZAp" />
        <node concept="3clFbF" id="20WMLipx$Ry" role="3cqZAp">
          <node concept="2OqwBi" id="20WMLipx_D1" role="3clFbG">
            <node concept="37vLTw" id="20WMLipx_uY" role="2Oq$k0">
              <ref role="3cqZAo" node="3HJTsBn6R7x" resolve="leftRepr" />
            </node>
            <node concept="liA8E" id="20WMLipx_Oa" role="2OqNvi">
              <ref role="37wK5l" to="bj13:~SolverLogical.union(jetbrains.mps.logic.reactor.logical.SolverLogical,jetbrains.mps.logic.reactor.logical.SolverLogical$ValueReconciler):void" resolve="union" />
              <node concept="37vLTw" id="20WMLipx_QK" role="37wK5m">
                <ref role="3cqZAo" node="3HJTsBn6R7B" resolve="rightRepr" />
              </node>
              <node concept="1bVj0M" id="20WMLipx_W5" role="37wK5m">
                <node concept="37vLTG" id="20WMLipx_XW" role="1bW2Oz">
                  <property role="TrG5h" value="leftVal" />
                  <node concept="16syzq" id="20WMLipxA3m" role="1tU5fm">
                    <ref role="16sUi3" node="6MYr6JwQsDp" resolve="T" />
                  </node>
                </node>
                <node concept="37vLTG" id="20WMLipxAbB" role="1bW2Oz">
                  <property role="TrG5h" value="rightVal" />
                  <node concept="16syzq" id="20WMLipxAht" role="1tU5fm">
                    <ref role="16sUi3" node="6MYr6JwQsDp" resolve="T" />
                  </node>
                </node>
                <node concept="3clFbS" id="20WMLipx_W7" role="1bW5cS">
                  <node concept="3clFbF" id="20WMLipxAqY" role="3cqZAp">
                    <node concept="1rXfSq" id="20WMLipxAqZ" role="3clFbG">
                      <ref role="37wK5l" node="3HJTsBn4V_a" resolve="_tellEq_val_val" />
                      <node concept="37vLTw" id="20WMLipxAr0" role="37wK5m">
                        <ref role="3cqZAo" node="20WMLipx_XW" resolve="leftVal" />
                      </node>
                      <node concept="37vLTw" id="20WMLipxAr1" role="37wK5m">
                        <ref role="3cqZAo" node="20WMLipxAbB" resolve="rightVal" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6MYr6JwQsDp" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4Yxf" role="jymVt" />
    <node concept="2tJIrI" id="6MYr6JwR1xu" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4VA6" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="_askEq_val_val" />
      <node concept="37vLTG" id="3HJTsBn4VA7" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="16syzq" id="6MYr6JwQALa" role="1tU5fm">
          <ref role="16sUi3" node="6MYr6JwQA1q" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4VA9" role="3clF46">
        <property role="TrG5h" value="rightVal" />
        <node concept="16syzq" id="6MYr6JwQBzT" role="1tU5fm">
          <ref role="16sUi3" node="6MYr6JwQA1q" resolve="T" />
        </node>
      </node>
      <node concept="10P_77" id="3HJTsBn4VAb" role="3clF45" />
      <node concept="3Tmbuc" id="6MYr6JwUBqG" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn4VAj" role="3clF47">
        <node concept="3clFbF" id="3HJTsBn6MDF" role="3cqZAp">
          <node concept="3K4zz7" id="3HJTsBn6Nsx" role="3clFbG">
            <node concept="2OqwBi" id="3HJTsBn6O_B" role="3K4GZi">
              <node concept="37vLTw" id="3HJTsBn6OuR" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn4VA7" resolve="leftVal" />
              </node>
              <node concept="liA8E" id="3HJTsBn6P0A" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="37vLTw" id="3HJTsBn6Pvw" role="37wK5m">
                  <ref role="3cqZAo" node="3HJTsBn4VA9" resolve="rightVal" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="3HJTsBn6O7B" role="3K4E3e">
              <node concept="10Nm6u" id="3HJTsBn6Ob2" role="3uHU7w" />
              <node concept="37vLTw" id="3HJTsBn6NNu" role="3uHU7B">
                <ref role="3cqZAo" node="3HJTsBn4VA9" resolve="rightVal" />
              </node>
            </node>
            <node concept="3clFbC" id="3HJTsBn6N3d" role="3K4Cdx">
              <node concept="10Nm6u" id="3HJTsBn6Npj" role="3uHU7w" />
              <node concept="37vLTw" id="3HJTsBn6MDD" role="3uHU7B">
                <ref role="3cqZAo" node="3HJTsBn4VA7" resolve="leftVal" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6MYr6JwQA1q" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn6LBY" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4VAm" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="_askEq_val_var" />
      <node concept="37vLTG" id="3HJTsBn4VAn" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="16syzq" id="6MYr6JwQE6u" role="1tU5fm">
          <ref role="16sUi3" node="6MYr6JwQDrB" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4VAp" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="3HJTsBn4VAq" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
          <node concept="16syzq" id="6MYr6JwQEWs" role="11_B2D">
            <ref role="16sUi3" node="6MYr6JwQDrB" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="3HJTsBn4VAs" role="3clF45" />
      <node concept="3Tmbuc" id="6MYr6JwUBKB" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn4VA$" role="3clF47">
        <node concept="3clFbF" id="3HJTsBn6Ihr" role="3cqZAp">
          <node concept="1rXfSq" id="3HJTsBn6Ihp" role="3clFbG">
            <ref role="37wK5l" node="3HJTsBn4VAB" resolve="_askEq_var_val" />
            <node concept="37vLTw" id="3HJTsBn6IDu" role="37wK5m">
              <ref role="3cqZAo" node="3HJTsBn4VAp" resolve="right" />
            </node>
            <node concept="37vLTw" id="3HJTsBn6ISy" role="37wK5m">
              <ref role="3cqZAo" node="3HJTsBn4VAn" resolve="leftVal" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6MYr6JwQDrB" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn4ZY2" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4VAB" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="_askEq_var_val" />
      <node concept="37vLTG" id="3HJTsBn4VAC" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="3HJTsBn4VAD" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
          <node concept="16syzq" id="6MYr6JwQHqG" role="11_B2D">
            <ref role="16sUi3" node="6MYr6JwQGB9" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4VAF" role="3clF46">
        <property role="TrG5h" value="rightVal" />
        <node concept="16syzq" id="6MYr6JwQHVX" role="1tU5fm">
          <ref role="16sUi3" node="6MYr6JwQGB9" resolve="T" />
        </node>
      </node>
      <node concept="10P_77" id="3HJTsBn4VAH" role="3clF45" />
      <node concept="3Tmbuc" id="6MYr6JwUC68" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn4VAP" role="3clF47">
        <node concept="3cpWs8" id="3HJTsBn6Ehj" role="3cqZAp">
          <node concept="3cpWsn" id="3HJTsBn6Ehk" role="3cpWs9">
            <property role="TrG5h" value="leftRepr" />
            <node concept="3uibUv" id="3HJTsBn6Fci" role="1tU5fm">
              <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
              <node concept="16syzq" id="6MYr6JwQIFk" role="11_B2D">
                <ref role="16sUi3" node="6MYr6JwQGB9" resolve="T" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJTsBn6Ehm" role="33vP2m">
              <node concept="37vLTw" id="3HJTsBn6Ehn" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn4VAC" resolve="left" />
              </node>
              <node concept="liA8E" id="3HJTsBn6Eho" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~SolverLogical.findRoot():jetbrains.mps.logic.reactor.logical.SolverLogical" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn6Ehp" role="3cqZAp" />
        <node concept="3clFbJ" id="3HJTsBn6Ehq" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn6Ehr" role="3clFbx">
            <node concept="3cpWs6" id="3HJTsBn6Ehs" role="3cqZAp">
              <node concept="3clFbT" id="3HJTsBn6Eht" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3HJTsBn6Ehu" role="3clFbw">
            <node concept="10Nm6u" id="3HJTsBn6Ehv" role="3uHU7w" />
            <node concept="2OqwBi" id="3HJTsBn6Ehw" role="3uHU7B">
              <node concept="37vLTw" id="3HJTsBn6Ehx" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn6Ehk" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="3HJTsBn6Ehy" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn6Hcd" role="3cqZAp" />
        <node concept="3cpWs6" id="6xYPVrpBEPt" role="3cqZAp">
          <node concept="2OqwBi" id="6xYPVrpBHwX" role="3cqZAk">
            <node concept="2OqwBi" id="6xYPVrpBGBZ" role="2Oq$k0">
              <node concept="37vLTw" id="6xYPVrpBGC0" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn6Ehk" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="6xYPVrpBGC1" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
              </node>
            </node>
            <node concept="liA8E" id="6xYPVrpBIo_" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="37vLTw" id="6xYPVrpBK4v" role="37wK5m">
                <ref role="3cqZAo" node="3HJTsBn4VAF" resolve="rightVal" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6MYr6JwQGB9" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="3HJTsBn51oT" role="jymVt" />
    <node concept="3clFb_" id="3HJTsBn4VAS" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="_askEq_var_var" />
      <node concept="37vLTG" id="3HJTsBn4VAT" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="3HJTsBn4VAU" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
          <node concept="16syzq" id="6MYr6JwQLAe" role="11_B2D">
            <ref role="16sUi3" node="6MYr6JwQJMk" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3HJTsBn4VAW" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="3HJTsBn4VAX" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
          <node concept="16syzq" id="6MYr6JwQMz4" role="11_B2D">
            <ref role="16sUi3" node="6MYr6JwQJMk" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="3HJTsBn4VAZ" role="3clF45" />
      <node concept="3Tmbuc" id="6MYr6JwUCud" role="1B3o_S" />
      <node concept="3clFbS" id="3HJTsBn4VB7" role="3clF47">
        <node concept="3clFbJ" id="3HJTsBn61de" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn61df" role="3clFbx">
            <node concept="3cpWs6" id="3HJTsBn61dg" role="3cqZAp">
              <node concept="3clFbT" id="3HJTsBn61dh" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3HJTsBn61di" role="3clFbw">
            <node concept="37vLTw" id="3HJTsBn61dj" role="3uHU7w">
              <ref role="3cqZAo" node="3HJTsBn4VAW" resolve="right" />
            </node>
            <node concept="37vLTw" id="3HJTsBn61dk" role="3uHU7B">
              <ref role="3cqZAo" node="3HJTsBn4VAT" resolve="left" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn61vc" role="3cqZAp" />
        <node concept="3cpWs8" id="3HJTsBn61Rq" role="3cqZAp">
          <node concept="3cpWsn" id="3HJTsBn61Rr" role="3cpWs9">
            <property role="TrG5h" value="leftRepr" />
            <node concept="3uibUv" id="3HJTsBn6y1d" role="1tU5fm">
              <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
              <node concept="16syzq" id="6MYr6JwQN3J" role="11_B2D">
                <ref role="16sUi3" node="6MYr6JwQJMk" resolve="T" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJTsBn61Rt" role="33vP2m">
              <node concept="37vLTw" id="3HJTsBn61Ru" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn4VAT" resolve="left" />
              </node>
              <node concept="liA8E" id="3HJTsBn61Rv" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~SolverLogical.findRoot():jetbrains.mps.logic.reactor.logical.SolverLogical" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3HJTsBn61Rw" role="3cqZAp">
          <node concept="3cpWsn" id="3HJTsBn61Rx" role="3cpWs9">
            <property role="TrG5h" value="rightRepr" />
            <node concept="3uibUv" id="3HJTsBn6yZM" role="1tU5fm">
              <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
              <node concept="16syzq" id="6MYr6JwQNvZ" role="11_B2D">
                <ref role="16sUi3" node="6MYr6JwQJMk" resolve="T" />
              </node>
            </node>
            <node concept="2OqwBi" id="3HJTsBn61Rz" role="33vP2m">
              <node concept="37vLTw" id="3HJTsBn61R$" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn4VAW" resolve="right" />
              </node>
              <node concept="liA8E" id="3HJTsBn61R_" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~SolverLogical.findRoot():jetbrains.mps.logic.reactor.logical.SolverLogical" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn6_OQ" role="3cqZAp" />
        <node concept="3clFbJ" id="3HJTsBn6_pv" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn6_pw" role="3clFbx">
            <node concept="3cpWs6" id="3HJTsBn6_px" role="3cqZAp">
              <node concept="3clFbT" id="3HJTsBn6_py" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3HJTsBn6_pz" role="3clFbw">
            <node concept="37vLTw" id="3HJTsBn6_p$" role="3uHU7w">
              <ref role="3cqZAo" node="3HJTsBn61Rx" resolve="rightRepr" />
            </node>
            <node concept="37vLTw" id="3HJTsBn6_p_" role="3uHU7B">
              <ref role="3cqZAo" node="3HJTsBn61Rr" resolve="leftRepr" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3HJTsBn6AhK" role="3cqZAp">
          <node concept="3clFbS" id="3HJTsBn6AhL" role="3clFbx">
            <node concept="3cpWs6" id="3HJTsBn6AhM" role="3cqZAp">
              <node concept="3clFbT" id="3HJTsBn6AhN" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="3HJTsBn6AhO" role="3clFbw">
            <node concept="3clFbC" id="3HJTsBn6AhP" role="3uHU7w">
              <node concept="10Nm6u" id="3HJTsBn6AhQ" role="3uHU7w" />
              <node concept="2OqwBi" id="6xYPVrpBCt8" role="3uHU7B">
                <node concept="37vLTw" id="6xYPVrpBCt9" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn61Rr" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="6xYPVrpBCta" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="3HJTsBn6AhU" role="3uHU7B">
              <node concept="2OqwBi" id="3HJTsBn6AhV" role="3uHU7B">
                <node concept="37vLTw" id="3HJTsBn6AhW" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn61Rr" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="3HJTsBn6AhX" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                </node>
              </node>
              <node concept="10Nm6u" id="3HJTsBn6AhY" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3HJTsBn6$tM" role="3cqZAp" />
        <node concept="3cpWs6" id="6xYPVrpB$nu" role="3cqZAp">
          <node concept="2OqwBi" id="6xYPVrpBAd_" role="3cqZAk">
            <node concept="2OqwBi" id="6xYPVrpB_nq" role="2Oq$k0">
              <node concept="37vLTw" id="6xYPVrpB_nr" role="2Oq$k0">
                <ref role="3cqZAo" node="3HJTsBn61Rr" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="6xYPVrpB_ns" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
              </node>
            </node>
            <node concept="liA8E" id="6xYPVrpBBqE" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="2OqwBi" id="6xYPVrpBCwT" role="37wK5m">
                <node concept="37vLTw" id="7FuqS$4jAt6" role="2Oq$k0">
                  <ref role="3cqZAo" node="3HJTsBn61Rx" resolve="rightRepr" />
                </node>
                <node concept="liA8E" id="6xYPVrpBCwV" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6MYr6JwQJMk" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3HJTsBn4oh0" role="1B3o_S" />
    <node concept="3uibUv" id="6H279bUP8wy" role="EKbjA">
      <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
    </node>
  </node>
  <node concept="312cEu" id="4xBopTzrd8Y">
    <property role="TrG5h" value="LogicalSolver" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="4xBopTzrdcb" role="jymVt" />
    <node concept="3clFb_" id="2UGjFq4h1E5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="predicate" />
      <node concept="37vLTG" id="2UGjFq4h1E6" role="3clF46">
        <property role="TrG5h" value="predicateSymbol" />
        <node concept="3uibUv" id="2UGjFq4h1E7" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="2UGjFq4h1E8" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="2UGjFq4h1E9" role="1tU5fm">
          <node concept="3uibUv" id="2UGjFq4h1Ea" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2UGjFq4h1Eb" role="3clF45">
        <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
      </node>
      <node concept="3Tm1VV" id="2UGjFq4h1Ec" role="1B3o_S" />
      <node concept="3clFbS" id="2UGjFq4h1Ef" role="3clF47">
        <node concept="3clFbJ" id="2UGjFq4h2OU" role="3cqZAp">
          <node concept="3clFbS" id="2UGjFq4h2OW" role="3clFbx">
            <node concept="YS8fn" id="2UGjFq4h36p" role="3cqZAp">
              <node concept="2ShNRf" id="2UGjFq4h376" role="YScLw">
                <node concept="1pGfFk" id="2UGjFq4h3iD" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2UGjFq4h33T" role="3clFbw">
            <node concept="3cmrfG" id="2UGjFq4h34T" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="2UGjFq4h2SZ" role="3uHU7B">
              <node concept="37vLTw" id="2UGjFq4h2RN" role="2Oq$k0">
                <ref role="3cqZAo" node="2UGjFq4h1E8" resolve="args" />
              </node>
              <node concept="1Rwk04" id="2UGjFq4h2Wb" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2UGjFq4h1Yp" role="3cqZAp">
          <node concept="3clFbS" id="2UGjFq4h1Yq" role="3clFbx">
            <node concept="3cpWs6" id="2UGjFq4h2hh" role="3cqZAp">
              <node concept="2YIFZM" id="2UGjFq4h2Au" role="3cqZAk">
                <ref role="37wK5l" to="cxk7:5uFPQ7CiPYx" resolve="BOUND" />
                <ref role="1Pybhc" to="cxk7:5$WbtTOYoMb" resolve="LogicalPredicate" />
                <node concept="AH0OO" id="2UGjFq4h2H8" role="37wK5m">
                  <node concept="3cmrfG" id="2UGjFq4h2JO" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="2UGjFq4h2Eo" role="AHHXb">
                    <ref role="3cqZAo" node="2UGjFq4h1E8" resolve="args" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2UGjFq4h3tJ" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="2UGjFq4h20Y" role="3clFbw">
            <node concept="37vLTw" id="2UGjFq4h202" role="3uHU7B">
              <ref role="3cqZAo" node="2UGjFq4h1E6" resolve="predicateSymbol" />
            </node>
            <node concept="10M0yZ" id="2UGjFq4h23R" role="3uHU7w">
              <ref role="1PxDUh" to="cxk7:5$WbtTOYoMb" resolve="LogicalPredicate" />
              <ref role="3cqZAo" to="cxk7:5uFPQ7C26$b" resolve="BOUND_SYM" />
            </node>
          </node>
          <node concept="3eNFk2" id="2UGjFq4h3j6" role="3eNLev">
            <node concept="3clFbS" id="2UGjFq4h3j8" role="3eOfB_">
              <node concept="3cpWs6" id="2UGjFq4h3vW" role="3cqZAp">
                <node concept="2YIFZM" id="2UGjFq4h3Dr" role="3cqZAk">
                  <ref role="37wK5l" to="cxk7:5uFPQ7CiQEd" resolve="FREE" />
                  <ref role="1Pybhc" to="cxk7:5$WbtTOYoMb" resolve="LogicalPredicate" />
                  <node concept="AH0OO" id="2UGjFq4h3Ds" role="37wK5m">
                    <node concept="3cmrfG" id="2UGjFq4h3Dt" role="AHEQo">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="37vLTw" id="2UGjFq4h3Du" role="AHHXb">
                      <ref role="3cqZAo" node="2UGjFq4h1E8" resolve="args" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2UGjFq4h3Gn" role="3cqZAp" />
            </node>
            <node concept="3clFbC" id="2UGjFq4h3ro" role="3eO9$A">
              <node concept="37vLTw" id="2UGjFq4h3rp" role="3uHU7B">
                <ref role="3cqZAo" node="2UGjFq4h1E6" resolve="predicateSymbol" />
              </node>
              <node concept="10M0yZ" id="2UGjFq4h3rq" role="3uHU7w">
                <ref role="1PxDUh" to="cxk7:5$WbtTOYoMb" resolve="LogicalPredicate" />
                <ref role="3cqZAo" to="cxk7:5uFPQ7C279$" resolve="FREE_SYM" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="2UGjFq4h3Je" role="9aQIa">
            <node concept="3clFbS" id="2UGjFq4h3Jf" role="9aQI4">
              <node concept="YS8fn" id="2UGjFq4h3Mc" role="3cqZAp">
                <node concept="2ShNRf" id="2UGjFq4h3Md" role="YScLw">
                  <node concept="1pGfFk" id="2UGjFq4h3Me" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2UGjFq4h1N0" role="jymVt" />
    <node concept="3clFb_" id="2UGjFq4lPBI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="ask" />
      <node concept="37vLTG" id="2UGjFq4lPBJ" role="3clF46">
        <property role="TrG5h" value="invocation" />
        <node concept="3uibUv" id="2UGjFq4lPBK" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
        </node>
      </node>
      <node concept="10P_77" id="2UGjFq4lPBL" role="3clF45" />
      <node concept="3Tm1VV" id="2UGjFq4lPBM" role="1B3o_S" />
      <node concept="3clFbS" id="2UGjFq4lPBO" role="3clF47">
        <node concept="3clFbF" id="2UGjFq4lPM_" role="3cqZAp">
          <node concept="1rXfSq" id="2UGjFq4lPMA" role="3clFbG">
            <ref role="37wK5l" node="6MYr6Jx1D_6" resolve="_ask" />
            <node concept="10QFUN" id="2UGjFq4lPMB" role="37wK5m">
              <node concept="3uibUv" id="2UGjFq4lPMC" role="10QFUM">
                <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
                <node concept="3qTvmN" id="2UGjFq4lPMD" role="11_B2D" />
              </node>
              <node concept="2OqwBi" id="2UGjFq4lPXm" role="10QFUP">
                <node concept="2OqwBi" id="2UGjFq4lPTc" role="2Oq$k0">
                  <node concept="37vLTw" id="2UGjFq4lPO9" role="2Oq$k0">
                    <ref role="3cqZAo" node="2UGjFq4lPBJ" resolve="invocation" />
                  </node>
                  <node concept="liA8E" id="2UGjFq4lPV7" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="2UGjFq4lQ3A" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                  <node concept="3cmrfG" id="2UGjFq4lQ6T" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2UGjFq4lQ9z" role="jymVt" />
    <node concept="3clFb_" id="2UGjFq4lQg7" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tell" />
      <node concept="3cqZAl" id="2UGjFq4lQg8" role="3clF45" />
      <node concept="3Tm1VV" id="2UGjFq4lQg9" role="1B3o_S" />
      <node concept="37vLTG" id="2UGjFq4lQgb" role="3clF46">
        <property role="TrG5h" value="invocation" />
        <node concept="3uibUv" id="2UGjFq4lQgc" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
        </node>
      </node>
      <node concept="3clFbS" id="2UGjFq4lQge" role="3clF47">
        <node concept="3clFbJ" id="2UGjFq4lQVz" role="3cqZAp">
          <node concept="3clFbS" id="2UGjFq4lQV$" role="3clFbx">
            <node concept="YS8fn" id="2UGjFq4lQV_" role="3cqZAp">
              <node concept="2ShNRf" id="2UGjFq4lQVA" role="YScLw">
                <node concept="1pGfFk" id="2UGjFq4lQVB" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="2UGjFq4lQVC" role="37wK5m">
                    <property role="Xl_RC" value="logical bound state is inconsistent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2UGjFq4lRmk" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="2UGjFq4lQVD" role="3clFbw">
            <node concept="1rXfSq" id="2UGjFq4lQVE" role="3fr31v">
              <ref role="37wK5l" node="6MYr6Jx1D_6" resolve="_ask" />
              <node concept="10QFUN" id="2UGjFq4lQVF" role="37wK5m">
                <node concept="3uibUv" id="2UGjFq4lQVG" role="10QFUM">
                  <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                  <node concept="3qTvmN" id="2UGjFq4lQVH" role="11_B2D" />
                </node>
                <node concept="2OqwBi" id="2UGjFq4lR8D" role="10QFUP">
                  <node concept="2OqwBi" id="2UGjFq4lR3x" role="2Oq$k0">
                    <node concept="37vLTw" id="2UGjFq4lQYz" role="2Oq$k0">
                      <ref role="3cqZAo" node="2UGjFq4lQgb" resolve="invocation" />
                    </node>
                    <node concept="liA8E" id="2UGjFq4lR5V" role="2OqNvi">
                      <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2UGjFq4lRfo" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                    <node concept="3cmrfG" id="2UGjFq4lRja" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzrdcg" role="jymVt" />
    <node concept="3clFb_" id="6MYr6Jx1D_6" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="_ask" />
      <node concept="37vLTG" id="6MYr6Jx1EGF" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="6MYr6Jx1EGG" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
          <node concept="3qTvmN" id="6MYr6Jx1EGH" role="11_B2D" />
        </node>
      </node>
      <node concept="10P_77" id="6MYr6Jx1FaD" role="3clF45" />
      <node concept="3Tmbuc" id="6MYr6Jx1D_8" role="1B3o_S" />
      <node concept="3clFbS" id="6MYr6Jx1D_a" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6MYr6Jx1Dg4" role="jymVt" />
    <node concept="312cEu" id="7ISVfSJ0DF" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Bound" />
      <node concept="2tJIrI" id="7ISVfSJ16q" role="jymVt" />
      <node concept="3clFb_" id="7ISVfSJ19r" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="_ask" />
        <node concept="37vLTG" id="7ISVfSJ19s" role="3clF46">
          <property role="TrG5h" value="logical" />
          <node concept="3uibUv" id="7ISVfSJ19t" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
            <node concept="3qTvmN" id="7ISVfSJ19u" role="11_B2D" />
          </node>
        </node>
        <node concept="10P_77" id="7ISVfSJ19v" role="3clF45" />
        <node concept="3Tmbuc" id="6MYr6Jx1Fv2" role="1B3o_S" />
        <node concept="3clFbS" id="7ISVfSJ19A" role="3clF47">
          <node concept="3clFbF" id="5uFPQ7CiQsr" role="3cqZAp">
            <node concept="2OqwBi" id="5uFPQ7CiQss" role="3clFbG">
              <node concept="37vLTw" id="5uFPQ7CiQst" role="2Oq$k0">
                <ref role="3cqZAo" node="7ISVfSJ19s" resolve="logical" />
              </node>
              <node concept="liA8E" id="5uFPQ7CiQsu" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6MYr6Jx1F6s" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2tcGHBEqput" role="jymVt" />
      <node concept="3Tm1VV" id="7ISVfSJ0DG" role="1B3o_S" />
      <node concept="3uibUv" id="7ISVfSJ10y" role="1zkMxy">
        <ref role="3uigEE" node="4xBopTzrd8Y" resolve="LogicalSolver" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ISVfSJ1A_" role="jymVt" />
    <node concept="312cEu" id="7ISVfSJ1oi" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Free" />
      <node concept="2tJIrI" id="7ISVfSJ1oj" role="jymVt" />
      <node concept="3clFb_" id="7ISVfSJ1ok" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="_ask" />
        <node concept="37vLTG" id="7ISVfSJ1ol" role="3clF46">
          <property role="TrG5h" value="logical" />
          <node concept="3uibUv" id="7ISVfSJ1om" role="1tU5fm">
            <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
            <node concept="3qTvmN" id="7ISVfSJ1on" role="11_B2D" />
          </node>
        </node>
        <node concept="10P_77" id="7ISVfSJ1oo" role="3clF45" />
        <node concept="3Tmbuc" id="6MYr6Jx1Frs" role="1B3o_S" />
        <node concept="3clFbS" id="7ISVfSJ1ot" role="3clF47">
          <node concept="3clFbF" id="7ISVfSJ1ou" role="3cqZAp">
            <node concept="3fqX7Q" id="3eLgHzX3VwG" role="3clFbG">
              <node concept="2OqwBi" id="3eLgHzX3VwI" role="3fr31v">
                <node concept="37vLTw" id="3eLgHzX3VwJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ISVfSJ1ol" resolve="logical" />
                </node>
                <node concept="liA8E" id="3eLgHzX3VwK" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6MYr6Jx1FnO" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2tcGHBEvoB2" role="jymVt" />
      <node concept="3Tm1VV" id="7ISVfSJ1oz" role="1B3o_S" />
      <node concept="3uibUv" id="7ISVfSJ1o$" role="1zkMxy">
        <ref role="3uigEE" node="4xBopTzrd8Y" resolve="LogicalSolver" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ISVfSIZY1" role="jymVt" />
    <node concept="3Tm1VV" id="4xBopTzrd8Z" role="1B3o_S" />
    <node concept="3uibUv" id="6H279bUPewp" role="EKbjA">
      <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
    </node>
  </node>
  <node concept="312cEu" id="6MYr6Jx1bvI">
    <property role="TrG5h" value="JavaSolver" />
    <property role="1sVAO0" value="false" />
    <node concept="2tJIrI" id="6MYr6Jx1byU" role="jymVt" />
    <node concept="3clFbW" id="6MYr6Jx1c2W" role="jymVt">
      <node concept="3cqZAl" id="6MYr6Jx1c2Y" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6Jx1c2Z" role="1B3o_S" />
      <node concept="3clFbS" id="6MYr6Jx1c30" role="3clF47">
        <node concept="3clFbF" id="6MYr6Jx1cdo" role="3cqZAp">
          <node concept="37vLTI" id="6MYr6Jx1ciQ" role="3clFbG">
            <node concept="37vLTw" id="6MYr6Jx1ckQ" role="37vLTx">
              <ref role="3cqZAo" node="6MYr6Jx1c8r" resolve="delegate" />
            </node>
            <node concept="2OqwBi" id="6MYr6Jx1cdQ" role="37vLTJ">
              <node concept="Xjq3P" id="6MYr6Jx1cdn" role="2Oq$k0" />
              <node concept="2OwXpG" id="6MYr6Jx1cfV" role="2OqNvi">
                <ref role="2Oxat5" node="6MYr6Jx1bRN" resolve="delegateSolver" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6Jx1c8r" role="3clF46">
        <property role="TrG5h" value="delegate" />
        <node concept="3uibUv" id="6H279bUVmZs" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~Queryable" resolve="Queryable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2UGjFq4gMo0" role="jymVt" />
    <node concept="3clFb_" id="2UGjFq4gMzp" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="predicate" />
      <node concept="37vLTG" id="2UGjFq4gMzq" role="3clF46">
        <property role="TrG5h" value="predicateSymbol" />
        <node concept="3uibUv" id="2UGjFq4gMzr" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="2UGjFq4gMzs" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="2UGjFq4gMzt" role="1tU5fm">
          <node concept="3uibUv" id="2UGjFq4gMzu" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2UGjFq4gWiw" role="3clF45">
        <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
      </node>
      <node concept="3Tm1VV" id="2UGjFq4gMzw" role="1B3o_S" />
      <node concept="3clFbS" id="2UGjFq4gMz_" role="3clF47">
        <node concept="3clFbJ" id="2UGjFq4gZzU" role="3cqZAp">
          <node concept="3clFbS" id="2UGjFq4gZzW" role="3clFbx">
            <node concept="YS8fn" id="2UGjFq4gZRu" role="3cqZAp">
              <node concept="2ShNRf" id="2UGjFq4gZRv" role="YScLw">
                <node concept="1pGfFk" id="2UGjFq4gZRw" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="2UGjFq4gZH2" role="3clFbw">
            <node concept="1eOMI4" id="2UGjFq4gZH4" role="3fr31v">
              <node concept="2ZW3vV" id="2UGjFq4gZPt" role="1eOMHV">
                <node concept="3uibUv" id="2UGjFq4gZQX" role="2ZW6by">
                  <ref role="3uigEE" to="av0y:~JavaPredicateSymbol" resolve="JavaPredicateSymbol" />
                </node>
                <node concept="37vLTw" id="2UGjFq4gZNa" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4gMzq" resolve="predicateSymbol" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2UGjFq4gZSe" role="3cqZAp" />
        <node concept="3cpWs6" id="2UGjFq4gWRs" role="3cqZAp">
          <node concept="2ShNRf" id="2UGjFq4gWTb" role="3cqZAk">
            <node concept="1pGfFk" id="2UGjFq4gXfV" role="2ShVmc">
              <ref role="37wK5l" to="cxk7:429xoyqax91" resolve="JavaPredicate" />
              <node concept="10QFUN" id="2UGjFq4h0gg" role="37wK5m">
                <node concept="3uibUv" id="2UGjFq4h0ge" role="10QFUM">
                  <ref role="3uigEE" to="av0y:~JavaPredicateSymbol" resolve="JavaPredicateSymbol" />
                </node>
                <node concept="37vLTw" id="2UGjFq4h0pV" role="10QFUP">
                  <ref role="3cqZAo" node="2UGjFq4gMzq" resolve="predicateSymbol" />
                </node>
              </node>
              <node concept="37vLTw" id="2UGjFq4gYLC" role="37wK5m">
                <ref role="3cqZAo" node="2UGjFq4gMzs" resolve="args" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2UGjFq4gWnr" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6H279bUVlVg" role="jymVt" />
    <node concept="3clFb_" id="2UGjFq4mLqV" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="ask" />
      <node concept="37vLTG" id="2UGjFq4mLqW" role="3clF46">
        <property role="TrG5h" value="invocation" />
        <node concept="3uibUv" id="2UGjFq4mLqX" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
        </node>
      </node>
      <node concept="10P_77" id="2UGjFq4mLqY" role="3clF45" />
      <node concept="3Tm1VV" id="2UGjFq4mLqZ" role="1B3o_S" />
      <node concept="3clFbS" id="2UGjFq4mLr1" role="3clF47">
        <node concept="3clFbF" id="2UGjFq4mLBj" role="3cqZAp">
          <node concept="2OqwBi" id="2UGjFq4mLC9" role="3clFbG">
            <node concept="37vLTw" id="2UGjFq4mLBi" role="2Oq$k0">
              <ref role="3cqZAo" node="6MYr6Jx1bRN" resolve="delegateSolver" />
            </node>
            <node concept="liA8E" id="2UGjFq4mLD8" role="2OqNvi">
              <ref role="37wK5l" to="w7la:~Queryable.ask(jetbrains.mps.logic.reactor.evaluation.PredicateInvocation):boolean" resolve="ask" />
              <node concept="37vLTw" id="2UGjFq4mLLw" role="37wK5m">
                <ref role="3cqZAo" node="2UGjFq4mLqW" resolve="invocation" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2UGjFq4mLz8" role="jymVt" />
    <node concept="3clFb_" id="2UGjFq4mLr4" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tell" />
      <node concept="3cqZAl" id="2UGjFq4mLr5" role="3clF45" />
      <node concept="3Tm1VV" id="2UGjFq4mLr6" role="1B3o_S" />
      <node concept="37vLTG" id="2UGjFq4mLr8" role="3clF46">
        <property role="TrG5h" value="invocation" />
        <node concept="3uibUv" id="2UGjFq4mLr9" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
        </node>
      </node>
      <node concept="3clFbS" id="2UGjFq4mLrb" role="3clF47">
        <node concept="3clFbF" id="2UGjFq4mLSQ" role="3cqZAp">
          <node concept="2OqwBi" id="2UGjFq4mLTA" role="3clFbG">
            <node concept="37vLTw" id="2UGjFq4mLSP" role="2Oq$k0">
              <ref role="3cqZAo" node="6MYr6Jx1bRN" resolve="delegateSolver" />
            </node>
            <node concept="liA8E" id="2UGjFq4mLU_" role="2OqNvi">
              <ref role="37wK5l" to="w7la:~Instructible.tell(jetbrains.mps.logic.reactor.evaluation.PredicateInvocation):void" resolve="tell" />
              <node concept="37vLTw" id="2UGjFq4mLVJ" role="37wK5m">
                <ref role="3cqZAo" node="2UGjFq4mLr8" resolve="invocation" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2UGjFq4mLnj" role="jymVt" />
    <node concept="3clFb_" id="6MYr6Jx1bRj" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tell" />
      <node concept="37vLTG" id="6MYr6Jx1bRk" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="6MYr6Jx1bRl" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Symbol" resolve="Symbol" />
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6Jx1bRm" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="6MYr6Jx1bRn" role="1tU5fm">
          <node concept="3uibUv" id="6MYr6Jx1bRo" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6MYr6Jx1bRp" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6Jx1bRq" role="1B3o_S" />
      <node concept="3clFbS" id="6MYr6Jx1bRr" role="3clF47">
        <node concept="3clFbF" id="6MYr6Jx1bRs" role="3cqZAp">
          <node concept="2OqwBi" id="6MYr6Jx1bRt" role="3clFbG">
            <node concept="37vLTw" id="6MYr6Jx1bRu" role="2Oq$k0">
              <ref role="3cqZAo" node="6MYr6Jx1bRN" resolve="delegateSolver" />
            </node>
            <node concept="liA8E" id="6MYr6Jx1bRv" role="2OqNvi">
              <ref role="37wK5l" to="w7la:~Instructible.tell(jetbrains.mps.logic.reactor.evaluation.PredicateInvocation):void" resolve="tell" />
              <node concept="2ShNRf" id="6H279bUVrUo" role="37wK5m">
                <node concept="1pGfFk" id="6H279bUVrUp" role="2ShVmc">
                  <ref role="37wK5l" node="6H279bUTJFv" resolve="JavaSolver.Invocation" />
                  <node concept="1rXfSq" id="6H279bUVsh_" role="37wK5m">
                    <ref role="37wK5l" node="2UGjFq4gMzp" resolve="predicate" />
                    <node concept="10QFUN" id="6H279bUVshA" role="37wK5m">
                      <node concept="37vLTw" id="6H279bUVshB" role="10QFUP">
                        <ref role="3cqZAo" node="6MYr6Jx1bRk" resolve="symbol" />
                      </node>
                      <node concept="3uibUv" id="6H279bUVshC" role="10QFUM">
                        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="6H279bUVshD" role="37wK5m">
                      <ref role="3cqZAo" node="6MYr6Jx1bRm" resolve="args" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="6H279bUVrUr" role="37wK5m">
                    <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                    <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                    <node concept="37vLTw" id="6H279bUVrUs" role="37wK5m">
                      <ref role="3cqZAo" node="6MYr6Jx1bRm" resolve="args" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6Jx1bRy" role="jymVt" />
    <node concept="3clFb_" id="6MYr6Jx1bRz" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="ask" />
      <node concept="37vLTG" id="6MYr6Jx1bR$" role="3clF46">
        <property role="TrG5h" value="predicateSymbol" />
        <node concept="3uibUv" id="6MYr6Jx1bR_" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="6MYr6Jx1bRA" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="6MYr6Jx1bRB" role="1tU5fm">
          <node concept="3uibUv" id="6MYr6Jx1bRC" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="6MYr6Jx1bRD" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6Jx1bRE" role="1B3o_S" />
      <node concept="3clFbS" id="6MYr6Jx1bRF" role="3clF47">
        <node concept="3clFbF" id="6H279bUVssx" role="3cqZAp">
          <node concept="2OqwBi" id="6H279bUVssy" role="3clFbG">
            <node concept="37vLTw" id="6H279bUVssz" role="2Oq$k0">
              <ref role="3cqZAo" node="6MYr6Jx1bRN" resolve="delegateSolver" />
            </node>
            <node concept="liA8E" id="6H279bUVss$" role="2OqNvi">
              <ref role="37wK5l" to="w7la:~Queryable.ask(jetbrains.mps.logic.reactor.evaluation.PredicateInvocation):boolean" resolve="ask" />
              <node concept="2ShNRf" id="6H279bUVss_" role="37wK5m">
                <node concept="1pGfFk" id="6H279bUVssA" role="2ShVmc">
                  <ref role="37wK5l" node="6H279bUTJFv" resolve="JavaSolver.Invocation" />
                  <node concept="1rXfSq" id="6H279bUVssB" role="37wK5m">
                    <ref role="37wK5l" node="2UGjFq4gMzp" resolve="predicate" />
                    <node concept="37vLTw" id="6H279bUVsM3" role="37wK5m">
                      <ref role="3cqZAo" node="6MYr6Jx1bR$" resolve="predicateSymbol" />
                    </node>
                    <node concept="37vLTw" id="6H279bUVssF" role="37wK5m">
                      <ref role="3cqZAo" node="6MYr6Jx1bRA" resolve="args" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="6H279bUVssG" role="37wK5m">
                    <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                    <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                    <node concept="37vLTw" id="6H279bUVssH" role="37wK5m">
                      <ref role="3cqZAo" node="6MYr6Jx1bRA" resolve="args" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6Jx1bRM" role="jymVt" />
    <node concept="312cEu" id="6H279bUTJ1f" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Invocation" />
      <node concept="2tJIrI" id="6H279bUTJCd" role="jymVt" />
      <node concept="3clFbW" id="6H279bUTJFv" role="jymVt">
        <node concept="37vLTG" id="6H279bUTJIC" role="3clF46">
          <property role="TrG5h" value="predicate" />
          <node concept="3uibUv" id="6H279bUTJKr" role="1tU5fm">
            <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
          </node>
        </node>
        <node concept="37vLTG" id="6H279bUTK2z" role="3clF46">
          <property role="TrG5h" value="args" />
          <node concept="3uibUv" id="6H279bUTK7y" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3qTvmN" id="6H279bUTK8P" role="11_B2D" />
          </node>
        </node>
        <node concept="3cqZAl" id="6H279bUTJFx" role="3clF45" />
        <node concept="3Tm1VV" id="6H279bUTJFy" role="1B3o_S" />
        <node concept="3clFbS" id="6H279bUTJFz" role="3clF47">
          <node concept="3clFbF" id="6H279bUTJMo" role="3cqZAp">
            <node concept="37vLTI" id="6H279bUTJMq" role="3clFbG">
              <node concept="2OqwBi" id="6H279bUTJMu" role="37vLTJ">
                <node concept="Xjq3P" id="6H279bUTJMx" role="2Oq$k0" />
                <node concept="2OwXpG" id="6H279bUTJMt" role="2OqNvi">
                  <ref role="2Oxat5" node="6H279bUTJMk" resolve="predicate" />
                </node>
              </node>
              <node concept="37vLTw" id="6H279bUTJMy" role="37vLTx">
                <ref role="3cqZAo" node="6H279bUTJIC" resolve="predicate" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6H279bUTKaY" role="3cqZAp">
            <node concept="37vLTI" id="6H279bUTKb0" role="3clFbG">
              <node concept="2OqwBi" id="6H279bUTKb4" role="37vLTJ">
                <node concept="Xjq3P" id="6H279bUTKb7" role="2Oq$k0" />
                <node concept="2OwXpG" id="6H279bUTKb3" role="2OqNvi">
                  <ref role="2Oxat5" node="6H279bUTKaT" resolve="args" />
                </node>
              </node>
              <node concept="37vLTw" id="6H279bUTKb8" role="37vLTx">
                <ref role="3cqZAo" node="6H279bUTK2z" resolve="args" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6H279bUTJQm" role="jymVt" />
      <node concept="3Tm6S6" id="6H279bUTKwT" role="1B3o_S" />
      <node concept="3uibUv" id="6H279bUTJuN" role="EKbjA">
        <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
      </node>
      <node concept="3clFb_" id="6H279bUTJzv" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="2aFKle" value="false" />
        <property role="TrG5h" value="predicate" />
        <node concept="3Tm1VV" id="6H279bUTJzx" role="1B3o_S" />
        <node concept="3uibUv" id="6H279bUTJzy" role="3clF45">
          <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
        </node>
        <node concept="3clFbS" id="6H279bUTJzz" role="3clF47">
          <node concept="3clFbF" id="6H279bUTKhV" role="3cqZAp">
            <node concept="37vLTw" id="6H279bUTKhU" role="3clFbG">
              <ref role="3cqZAo" node="6H279bUTJMk" resolve="predicate" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6H279bUTKiN" role="jymVt" />
      <node concept="3clFb_" id="6H279bUTJzA" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="2aFKle" value="false" />
        <property role="TrG5h" value="arguments" />
        <node concept="3Tm1VV" id="6H279bUTJzC" role="1B3o_S" />
        <node concept="3uibUv" id="6H279bUTJzD" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qTvmN" id="6H279bUTJzE" role="11_B2D" />
        </node>
        <node concept="3clFbS" id="6H279bUTJzF" role="3clF47">
          <node concept="3clFbF" id="6H279bUTKuO" role="3cqZAp">
            <node concept="37vLTw" id="6H279bUTKuN" role="3clFbG">
              <ref role="3cqZAo" node="6H279bUTKaT" resolve="args" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6H279bUTKo_" role="jymVt" />
      <node concept="312cEg" id="6H279bUTJMk" role="jymVt">
        <property role="TrG5h" value="predicate" />
        <node concept="3Tm6S6" id="6H279bUTJMl" role="1B3o_S" />
        <node concept="3uibUv" id="6H279bUTJMn" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
        </node>
      </node>
      <node concept="312cEg" id="6H279bUTKaT" role="jymVt">
        <property role="TrG5h" value="args" />
        <node concept="3Tm6S6" id="6H279bUTKaU" role="1B3o_S" />
        <node concept="3uibUv" id="6H279bUTKaW" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qTvmN" id="6H279bUTKaX" role="11_B2D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6H279bUVpBv" role="jymVt" />
    <node concept="312cEg" id="6MYr6Jx1bRN" role="jymVt">
      <property role="TrG5h" value="delegateSolver" />
      <node concept="3Tm6S6" id="6MYr6Jx1bRO" role="1B3o_S" />
      <node concept="3uibUv" id="6H279bUVnbF" role="1tU5fm">
        <ref role="3uigEE" to="w7la:~Queryable" resolve="Queryable" />
      </node>
    </node>
    <node concept="3Tm1VV" id="6MYr6Jx1bvJ" role="1B3o_S" />
    <node concept="3uibUv" id="6H279bUPfZN" role="EKbjA">
      <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
    </node>
  </node>
  <node concept="312cEu" id="6infEALAKBG">
    <property role="TrG5h" value="AssertSolver" />
    <node concept="2tJIrI" id="6infEALANSl" role="jymVt" />
    <node concept="3clFbW" id="6infEALANZc" role="jymVt">
      <node concept="3cqZAl" id="6infEALANZe" role="3clF45" />
      <node concept="3Tm1VV" id="6infEALANZf" role="1B3o_S" />
      <node concept="3clFbS" id="6infEALANZg" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6infEALANTA" role="jymVt" />
    <node concept="3clFb_" id="2UGjFq4gIzb" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="predicate" />
      <node concept="37vLTG" id="2UGjFq4gIzc" role="3clF46">
        <property role="TrG5h" value="predicateSymbol" />
        <node concept="3uibUv" id="2UGjFq4gIzd" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="2UGjFq4gIze" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="2UGjFq4gIzf" role="1tU5fm">
          <node concept="3uibUv" id="2UGjFq4gIzg" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2UGjFq4gV1F" role="3clF45">
        <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
      </node>
      <node concept="3Tm1VV" id="2UGjFq4gIzi" role="1B3o_S" />
      <node concept="3clFbS" id="2UGjFq4gIzl" role="3clF47">
        <node concept="3clFbJ" id="2UGjFq4gINO" role="3cqZAp">
          <node concept="3clFbS" id="2UGjFq4gINQ" role="3clFbx">
            <node concept="YS8fn" id="2UGjFq4gJfn" role="3cqZAp">
              <node concept="2ShNRf" id="2UGjFq4gJfT" role="YScLw">
                <node concept="1pGfFk" id="2UGjFq4gJrj" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="2UGjFq4gJ50" role="3clFbw">
            <node concept="1eOMI4" id="2UGjFq4gJ52" role="3fr31v">
              <node concept="3clFbC" id="2UGjFq4gJ94" role="1eOMHV">
                <node concept="37vLTw" id="2UGjFq4gJbM" role="3uHU7w">
                  <ref role="3cqZAo" node="2UGjFq4gIzc" resolve="predicateSymbol" />
                </node>
                <node concept="10M0yZ" id="2UGjFq4gJ6t" role="3uHU7B">
                  <ref role="1PxDUh" to="cxk7:6infEALAfer" resolve="AssertPredicate" />
                  <ref role="3cqZAo" to="cxk7:5uFPQ7BZnLB" resolve="ASSERT_SYM" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2UGjFq4gIJ0" role="3cqZAp">
          <node concept="3clFbS" id="2UGjFq4gIJ1" role="3clFbx">
            <node concept="YS8fn" id="2UGjFq4gIJ2" role="3cqZAp">
              <node concept="2ShNRf" id="2UGjFq4gIJ3" role="YScLw">
                <node concept="1pGfFk" id="2UGjFq4gIJ4" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                  <node concept="Xl_RD" id="2UGjFq4gIJ5" role="37wK5m">
                    <property role="Xl_RC" value="invalid arguments count" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2UGjFq4gIJ6" role="3clFbw">
            <node concept="3cmrfG" id="2UGjFq4gIJ7" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="2UGjFq4gIJ8" role="3uHU7B">
              <node concept="37vLTw" id="2UGjFq4gJsn" role="2Oq$k0">
                <ref role="3cqZAo" node="2UGjFq4gIze" resolve="args" />
              </node>
              <node concept="1Rwk04" id="2UGjFq4gIJa" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2UGjFq4gIMC" role="3cqZAp" />
        <node concept="3clFbF" id="2UGjFq4gJwr" role="3cqZAp">
          <node concept="2ShNRf" id="2UGjFq4gJwn" role="3clFbG">
            <node concept="1pGfFk" id="2UGjFq4gJGs" role="2ShVmc">
              <ref role="37wK5l" to="cxk7:4xBopTzrPWl" resolve="AssertPredicate" />
              <node concept="AH0OO" id="2UGjFq4gJI2" role="37wK5m">
                <node concept="3cmrfG" id="2UGjFq4gJJ6" role="AHEQo">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="2UGjFq4gJGY" role="AHHXb">
                  <ref role="3cqZAo" node="2UGjFq4gIze" resolve="args" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2UGjFq4gV8R" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2UGjFq4gIew" role="jymVt" />
    <node concept="3clFb_" id="2UGjFq4l$TY" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="ask" />
      <node concept="37vLTG" id="2UGjFq4l$TZ" role="3clF46">
        <property role="TrG5h" value="invocation" />
        <node concept="3uibUv" id="2UGjFq4l$U0" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
        </node>
      </node>
      <node concept="10P_77" id="2UGjFq4l$U1" role="3clF45" />
      <node concept="3Tm1VV" id="2UGjFq4l$U2" role="1B3o_S" />
      <node concept="3clFbS" id="2UGjFq4l$U4" role="3clF47">
        <node concept="3cpWs6" id="2UGjFq4l_qL" role="3cqZAp">
          <node concept="1rXfSq" id="2UGjFq4l_rP" role="3cqZAk">
            <ref role="37wK5l" node="2UGjFq4l$3T" resolve="_ask" />
            <node concept="2OqwBi" id="2UGjFq4l_yY" role="37wK5m">
              <node concept="2OqwBi" id="2UGjFq4l_uy" role="2Oq$k0">
                <node concept="37vLTw" id="2UGjFq4l_tm" role="2Oq$k0">
                  <ref role="3cqZAo" node="2UGjFq4l$TZ" resolve="invocation" />
                </node>
                <node concept="liA8E" id="2UGjFq4l_wR" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                </node>
              </node>
              <node concept="liA8E" id="2UGjFq4l_Rj" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                <node concept="3cmrfG" id="2UGjFq4l_Ux" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2UGjFq4l$ic" role="jymVt" />
    <node concept="3clFb_" id="2UGjFq4l$3T" role="jymVt">
      <property role="TrG5h" value="_ask" />
      <node concept="3Tmbuc" id="2UGjFq4l$tb" role="1B3o_S" />
      <node concept="10P_77" id="2UGjFq4l$3V" role="3clF45" />
      <node concept="37vLTG" id="2UGjFq4l$3L" role="3clF46">
        <property role="TrG5h" value="test" />
        <node concept="3uibUv" id="2UGjFq4l$3M" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="2UGjFq4l$3i" role="3clF47">
        <node concept="3clFbJ" id="2UGjFq4l$3j" role="3cqZAp">
          <node concept="3clFbS" id="2UGjFq4l$3k" role="3clFbx">
            <node concept="3cpWs6" id="2UGjFq4l$3l" role="3cqZAp">
              <node concept="1rXfSq" id="2UGjFq4l$3m" role="3cqZAk">
                <ref role="37wK5l" node="6infEALAKR2" resolve="_askAssert" />
                <node concept="1eOMI4" id="2UGjFq4l$3n" role="37wK5m">
                  <node concept="10QFUN" id="2UGjFq4l$3o" role="1eOMHV">
                    <node concept="3uibUv" id="2UGjFq4l$3p" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                      <node concept="3uibUv" id="2UGjFq4l$3q" role="11_B2D">
                        <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2UGjFq4l$3N" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4l$3L" resolve="test" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2UGjFq4l$3s" role="3cqZAp" />
          </node>
          <node concept="2ZW3vV" id="2UGjFq4l$3t" role="3clFbw">
            <node concept="3uibUv" id="2UGjFq4l$3u" role="2ZW6by">
              <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
            </node>
            <node concept="37vLTw" id="2UGjFq4l$3O" role="2ZW6bz">
              <ref role="3cqZAo" node="2UGjFq4l$3L" resolve="test" />
            </node>
          </node>
          <node concept="3eNFk2" id="2UGjFq4l$3w" role="3eNLev">
            <node concept="2ZW3vV" id="2UGjFq4l$3x" role="3eO9$A">
              <node concept="3uibUv" id="2UGjFq4l$3y" role="2ZW6by">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
              <node concept="37vLTw" id="2UGjFq4l$3Q" role="2ZW6bz">
                <ref role="3cqZAo" node="2UGjFq4l$3L" resolve="test" />
              </node>
            </node>
            <node concept="3clFbS" id="2UGjFq4l$3$" role="3eOfB_">
              <node concept="3cpWs6" id="2UGjFq4l$3_" role="3cqZAp">
                <node concept="1rXfSq" id="2UGjFq4l$3A" role="3cqZAk">
                  <ref role="37wK5l" node="6infEALAKQS" resolve="_askAssert" />
                  <node concept="10QFUN" id="2UGjFq4l$3B" role="37wK5m">
                    <node concept="37vLTw" id="2UGjFq4l$3P" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4l$3L" resolve="test" />
                    </node>
                    <node concept="3uibUv" id="2UGjFq4l$3D" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2UGjFq4l$3E" role="3cqZAp" />
            </node>
          </node>
          <node concept="9aQIb" id="2UGjFq4l$3F" role="9aQIa">
            <node concept="3clFbS" id="2UGjFq4l$3G" role="9aQI4">
              <node concept="YS8fn" id="2UGjFq4l$3H" role="3cqZAp">
                <node concept="2ShNRf" id="2UGjFq4l$3I" role="YScLw">
                  <node concept="1pGfFk" id="2UGjFq4l$3J" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="Xl_RD" id="2UGjFq4l$3K" role="37wK5m">
                      <property role="Xl_RC" value="invalid arguments" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2tcGHBEqirK" role="jymVt" />
    <node concept="3clFb_" id="2UGjFq4kzkJ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tell" />
      <node concept="3cqZAl" id="2UGjFq4kzkK" role="3clF45" />
      <node concept="3Tm1VV" id="2UGjFq4kzkL" role="1B3o_S" />
      <node concept="37vLTG" id="2UGjFq4kzkN" role="3clF46">
        <property role="TrG5h" value="invocation" />
        <node concept="3uibUv" id="2UGjFq4kzkO" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
        </node>
      </node>
      <node concept="3clFbS" id="2UGjFq4kzkQ" role="3clF47">
        <node concept="3clFbF" id="2UGjFq4lzpt" role="3cqZAp">
          <node concept="1rXfSq" id="2UGjFq4lzps" role="3clFbG">
            <ref role="37wK5l" node="2UGjFq4lzce" resolve="_tell" />
            <node concept="2OqwBi" id="2UGjFq4lzR5" role="37wK5m">
              <node concept="2OqwBi" id="2UGjFq4lzR6" role="2Oq$k0">
                <node concept="37vLTw" id="2UGjFq4lzR7" role="2Oq$k0">
                  <ref role="3cqZAo" node="2UGjFq4kzkN" resolve="invocation" />
                </node>
                <node concept="liA8E" id="2UGjFq4lzR8" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                </node>
              </node>
              <node concept="liA8E" id="2UGjFq4lzR9" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                <node concept="3cmrfG" id="2UGjFq4lzRa" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2UGjFq4k$6S" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2UGjFq4lzpU" role="jymVt" />
    <node concept="3clFb_" id="2UGjFq4lzce" role="jymVt">
      <property role="TrG5h" value="_tell" />
      <node concept="3Tmbuc" id="2UGjFq4lzZM" role="1B3o_S" />
      <node concept="3cqZAl" id="2UGjFq4lzcg" role="3clF45" />
      <node concept="37vLTG" id="2UGjFq4lzb1" role="3clF46">
        <property role="TrG5h" value="test" />
        <node concept="3uibUv" id="2UGjFq4lzb2" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="2UGjFq4lzay" role="3clF47">
        <node concept="3clFbJ" id="2UGjFq4lzaz" role="3cqZAp">
          <node concept="3clFbS" id="2UGjFq4lza$" role="3clFbx">
            <node concept="3clFbF" id="2UGjFq4lza_" role="3cqZAp">
              <node concept="1rXfSq" id="2UGjFq4lzaA" role="3clFbG">
                <ref role="37wK5l" node="6infEALAKQH" resolve="_tellAssert" />
                <node concept="1eOMI4" id="2UGjFq4lzaB" role="37wK5m">
                  <node concept="10QFUN" id="2UGjFq4lzaC" role="1eOMHV">
                    <node concept="3uibUv" id="2UGjFq4lzaD" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                      <node concept="3uibUv" id="2UGjFq4lzaE" role="11_B2D">
                        <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2UGjFq4lzc9" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lzb1" resolve="test" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2UGjFq4lzaG" role="3cqZAp" />
          </node>
          <node concept="2ZW3vV" id="2UGjFq4lzaH" role="3clFbw">
            <node concept="3uibUv" id="2UGjFq4lzaI" role="2ZW6by">
              <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
            </node>
            <node concept="37vLTw" id="2UGjFq4lzcb" role="2ZW6bz">
              <ref role="3cqZAo" node="2UGjFq4lzb1" resolve="test" />
            </node>
          </node>
          <node concept="3eNFk2" id="2UGjFq4lzaK" role="3eNLev">
            <node concept="2ZW3vV" id="2UGjFq4lzaL" role="3eO9$A">
              <node concept="3uibUv" id="2UGjFq4lzaM" role="2ZW6by">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
              <node concept="37vLTw" id="2UGjFq4lzc8" role="2ZW6bz">
                <ref role="3cqZAo" node="2UGjFq4lzb1" resolve="test" />
              </node>
            </node>
            <node concept="3clFbS" id="2UGjFq4lzaO" role="3eOfB_">
              <node concept="3clFbF" id="2UGjFq4lzaP" role="3cqZAp">
                <node concept="1rXfSq" id="2UGjFq4lzaQ" role="3clFbG">
                  <ref role="37wK5l" node="6infEALAKQz" resolve="_tellAssert" />
                  <node concept="10QFUN" id="2UGjFq4lzaR" role="37wK5m">
                    <node concept="37vLTw" id="2UGjFq4lzca" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lzb1" resolve="test" />
                    </node>
                    <node concept="3uibUv" id="2UGjFq4lzaT" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2UGjFq4lzaU" role="3cqZAp" />
            </node>
          </node>
          <node concept="9aQIb" id="2UGjFq4lzaV" role="9aQIa">
            <node concept="3clFbS" id="2UGjFq4lzaW" role="9aQI4">
              <node concept="YS8fn" id="2UGjFq4lzaX" role="3cqZAp">
                <node concept="2ShNRf" id="2UGjFq4lzaY" role="YScLw">
                  <node concept="1pGfFk" id="2UGjFq4lzaZ" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="Xl_RD" id="2UGjFq4lzb0" role="37wK5m">
                      <property role="Xl_RC" value="invalid arguments" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzrRzV" role="jymVt" />
    <node concept="3Tm1VV" id="6infEALAKBH" role="1B3o_S" />
    <node concept="3uibUv" id="6H279bUPaLB" role="EKbjA">
      <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
    </node>
    <node concept="3clFb_" id="6infEALAKQz" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="_tellAssert" />
      <node concept="37vLTG" id="6infEALAKQ$" role="3clF46">
        <property role="TrG5h" value="val" />
        <node concept="3uibUv" id="6infEALAKQ_" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="3cqZAl" id="6infEALAKQA" role="3clF45" />
      <node concept="3Tmbuc" id="6MYr6JwZXea" role="1B3o_S" />
      <node concept="3clFbS" id="6infEALAKQG" role="3clF47">
        <node concept="3clFbJ" id="6infEALBkC$" role="3cqZAp">
          <node concept="3clFbS" id="6infEALBkC_" role="3clFbx">
            <node concept="YS8fn" id="3eLgHzX3On1" role="3cqZAp">
              <node concept="2ShNRf" id="3eLgHzX3OnK" role="YScLw">
                <node concept="1pGfFk" id="3eLgHzX3PBQ" role="2ShVmc">
                  <ref role="37wK5l" to="w7la:~EvaluationFailureException.&lt;init&gt;(java.lang.String)" resolve="EvaluationFailureException" />
                  <node concept="Xl_RD" id="5jCHAT1IAg4" role="37wK5m">
                    <property role="Xl_RC" value="cannot assert false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6infEALBkHm" role="3clFbw">
            <node concept="37vLTw" id="6infEALBl5n" role="3fr31v">
              <ref role="3cqZAo" node="6infEALAKQ$" resolve="val" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6infEALAU2t" role="jymVt" />
    <node concept="3clFb_" id="6infEALAKQH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="_tellAssert" />
      <node concept="37vLTG" id="6infEALAKQI" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="6infEALAKQJ" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
          <node concept="3uibUv" id="6infEALAKQK" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6infEALAKQL" role="3clF45" />
      <node concept="3Tmbuc" id="6MYr6JwZXJI" role="1B3o_S" />
      <node concept="3clFbS" id="6infEALAKQR" role="3clF47">
        <node concept="3cpWs8" id="6infEALBclm" role="3cqZAp">
          <node concept="3cpWsn" id="6infEALBcln" role="3cpWs9">
            <property role="TrG5h" value="repr" />
            <node concept="3uibUv" id="6infEALBclo" role="1tU5fm">
              <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
              <node concept="3uibUv" id="6infEALBclp" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
            </node>
            <node concept="2OqwBi" id="6infEALBclq" role="33vP2m">
              <node concept="37vLTw" id="6infEALBclr" role="2Oq$k0">
                <ref role="3cqZAo" node="6infEALAKQI" resolve="logical" />
              </node>
              <node concept="liA8E" id="6infEALBcls" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~SolverLogical.findRoot():jetbrains.mps.logic.reactor.logical.SolverLogical" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6infEALBcOh" role="3cqZAp">
          <node concept="3clFbS" id="6infEALBcOj" role="3clFbx">
            <node concept="YS8fn" id="5jCHAT1IAFu" role="3cqZAp">
              <node concept="2ShNRf" id="5jCHAT1IAFv" role="YScLw">
                <node concept="1pGfFk" id="5jCHAT1IAFw" role="2ShVmc">
                  <ref role="37wK5l" to="w7la:~EvaluationFailureException.&lt;init&gt;(java.lang.String)" resolve="EvaluationFailureException" />
                  <node concept="Xl_RD" id="5jCHAT1IAFx" role="37wK5m">
                    <property role="Xl_RC" value="cannot assert false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="6infEALBeKX" role="3clFbw">
            <node concept="3fqX7Q" id="6infEALBeNq" role="3uHU7w">
              <node concept="2OqwBi" id="6infEALBf3L" role="3fr31v">
                <node concept="37vLTw" id="6infEALBePw" role="2Oq$k0">
                  <ref role="3cqZAo" node="6infEALBcln" resolve="repr" />
                </node>
                <node concept="liA8E" id="6infEALBgCV" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6infEALBd3w" role="3uHU7B">
              <node concept="37vLTw" id="6infEALBcQc" role="2Oq$k0">
                <ref role="3cqZAo" node="6infEALBcln" resolve="repr" />
              </node>
              <node concept="liA8E" id="6infEALBeBH" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6infEALBksI" role="3cqZAp" />
        <node concept="3cpWs8" id="6infEALBscn" role="3cqZAp">
          <node concept="3cpWsn" id="6infEALBsco" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="3uibUv" id="6infEALBsce" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
            </node>
            <node concept="2OqwBi" id="6infEALBscp" role="33vP2m">
              <node concept="37vLTw" id="6infEALBscq" role="2Oq$k0">
                <ref role="3cqZAo" node="6infEALBcln" resolve="repr" />
              </node>
              <node concept="liA8E" id="6infEALBscr" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6infEALBsxX" role="3cqZAp">
          <node concept="3clFbS" id="6infEALBsxZ" role="3clFbx">
            <node concept="3clFbF" id="6infEALBtCI" role="3cqZAp">
              <node concept="2OqwBi" id="6infEALBtMi" role="3clFbG">
                <node concept="37vLTw" id="6infEALBtCG" role="2Oq$k0">
                  <ref role="3cqZAo" node="6infEALBcln" resolve="repr" />
                </node>
                <node concept="liA8E" id="6infEALBvmp" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~SolverLogical.setValue(java.lang.Object):void" resolve="setValue" />
                  <node concept="10M0yZ" id="6infEALBvoZ" role="37wK5m">
                    <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                    <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6infEALBsL1" role="3clFbw">
            <node concept="10Nm6u" id="6infEALBsO_" role="3uHU7w" />
            <node concept="37vLTw" id="6infEALBsCh" role="3uHU7B">
              <ref role="3cqZAo" node="6infEALBsco" resolve="value" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6infEALAUiN" role="jymVt" />
    <node concept="3clFb_" id="6infEALAKQS" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="_askAssert" />
      <node concept="37vLTG" id="6infEALAKQT" role="3clF46">
        <property role="TrG5h" value="val" />
        <node concept="3uibUv" id="6infEALAKQU" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="10P_77" id="6infEALB3_x" role="3clF45" />
      <node concept="3Tmbuc" id="6MYr6JwZYaT" role="1B3o_S" />
      <node concept="3clFbS" id="6infEALAKR1" role="3clF47">
        <node concept="3clFbF" id="6infEALB4$1" role="3cqZAp">
          <node concept="37vLTw" id="6infEALB4$0" role="3clFbG">
            <ref role="3cqZAo" node="6infEALAKQT" resolve="val" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6infEALAUAu" role="jymVt" />
    <node concept="3clFb_" id="6infEALAKR2" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="_askAssert" />
      <node concept="37vLTG" id="6infEALAKR3" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="6infEALAKR4" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
          <node concept="3uibUv" id="6infEALAKR5" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="6infEALB3F8" role="3clF45" />
      <node concept="3Tmbuc" id="6MYr6JwZYrd" role="1B3o_S" />
      <node concept="3clFbS" id="6infEALAKRc" role="3clF47">
        <node concept="3cpWs8" id="6infEALBa$_" role="3cqZAp">
          <node concept="3cpWsn" id="6infEALBa$A" role="3cpWs9">
            <property role="TrG5h" value="repr" />
            <node concept="3uibUv" id="6infEALBa$x" role="1tU5fm">
              <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
              <node concept="3uibUv" id="6infEALBa$$" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
            </node>
            <node concept="2OqwBi" id="6infEALBa$B" role="33vP2m">
              <node concept="37vLTw" id="6infEALBa$C" role="2Oq$k0">
                <ref role="3cqZAo" node="6infEALAKR3" resolve="logical" />
              </node>
              <node concept="liA8E" id="6infEALBa$D" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~SolverLogical.findRoot():jetbrains.mps.logic.reactor.logical.SolverLogical" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6infEALAYLT" role="3cqZAp">
          <node concept="3clFbS" id="6infEALAYLV" role="3clFbx">
            <node concept="3cpWs6" id="6infEALB1yd" role="3cqZAp">
              <node concept="3clFbT" id="6infEALB1$I" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6infEALAYNg" role="3clFbw">
            <node concept="2OqwBi" id="6infEALAZ5t" role="3fr31v">
              <node concept="37vLTw" id="6infEALBbmW" role="2Oq$k0">
                <ref role="3cqZAo" node="6infEALBa$A" resolve="repr" />
              </node>
              <node concept="liA8E" id="6infEALB0GT" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6infEALAYKA" role="3cqZAp" />
        <node concept="3clFbF" id="6infEALAVvu" role="3cqZAp">
          <node concept="2OqwBi" id="6infEALAVD2" role="3clFbG">
            <node concept="37vLTw" id="6infEALBbtf" role="2Oq$k0">
              <ref role="3cqZAo" node="6infEALBa$A" resolve="repr" />
            </node>
            <node concept="liA8E" id="6infEALAXgk" role="2OqNvi">
              <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6infEALAT0A" role="jymVt" />
  </node>
  <node concept="312cEu" id="6GYQG_Spvw5">
    <property role="TrG5h" value="UnificationSolver" />
    <node concept="3Tm1VV" id="6GYQG_Spvw6" role="1B3o_S" />
    <node concept="3uibUv" id="6H279bUP3zp" role="EKbjA">
      <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
    </node>
    <node concept="2tJIrI" id="4U_yxogBZmE" role="jymVt" />
    <node concept="3clFbW" id="5p8T3QHGKJ7" role="jymVt">
      <node concept="3cqZAl" id="5p8T3QHGKJ8" role="3clF45" />
      <node concept="3Tm1VV" id="5uFPQ7Cmkxm" role="1B3o_S" />
      <node concept="3clFbS" id="5p8T3QHGKJa" role="3clF47">
        <node concept="3clFbF" id="3FIATxbQcV7" role="3cqZAp">
          <node concept="37vLTI" id="3FIATxbQd46" role="3clFbG">
            <node concept="37vLTw" id="3FIATxbQd6s" role="37vLTx">
              <ref role="3cqZAo" node="3FIATxbQcKV" resolve="logicalUnification" />
            </node>
            <node concept="2OqwBi" id="3FIATxbQcWw" role="37vLTJ">
              <node concept="Xjq3P" id="3FIATxbQcV5" role="2Oq$k0" />
              <node concept="2OwXpG" id="3FIATxbQcZH" role="2OqNvi">
                <ref role="2Oxat5" node="6MYr6JwATAl" resolve="logicalUnification" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3FIATxbQcKV" role="3clF46">
        <property role="TrG5h" value="logicalUnification" />
        <node concept="3uibUv" id="3FIATxbQcPk" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~LogicalUnification" resolve="LogicalUnification" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6Jw_jvR" role="jymVt" />
    <node concept="3clFb_" id="2UGjFq4h7S4" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="predicate" />
      <node concept="37vLTG" id="2UGjFq4h7S5" role="3clF46">
        <property role="TrG5h" value="predicateSymbol" />
        <node concept="3uibUv" id="2UGjFq4h7S6" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="2UGjFq4h7S7" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="2UGjFq4h7S8" role="1tU5fm">
          <node concept="3uibUv" id="2UGjFq4h7S9" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2UGjFq4h7Sa" role="3clF45">
        <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
      </node>
      <node concept="3Tm1VV" id="2UGjFq4h7Sb" role="1B3o_S" />
      <node concept="3clFbS" id="2UGjFq4h7Se" role="3clF47">
        <node concept="3clFbJ" id="2UGjFq4ha4u" role="3cqZAp">
          <node concept="3clFbS" id="2UGjFq4ha4v" role="3clFbx">
            <node concept="YS8fn" id="2UGjFq4haib" role="3cqZAp">
              <node concept="2ShNRf" id="2UGjFq4hajb" role="YScLw">
                <node concept="1pGfFk" id="2UGjFq4hau_" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="2UGjFq4ha5w" role="3clFbw">
            <node concept="1eOMI4" id="2UGjFq4ha5y" role="3fr31v">
              <node concept="3clFbC" id="2UGjFq4hacB" role="1eOMHV">
                <node concept="10M0yZ" id="2UGjFq4haeG" role="3uHU7w">
                  <ref role="1PxDUh" to="cxk7:2GO7tyJVmP4" resolve="UnificationPredicate" />
                  <ref role="3cqZAo" to="cxk7:5uFPQ7C29mw" resolve="UNI_SYM" />
                </node>
                <node concept="37vLTw" id="2UGjFq4ha8n" role="3uHU7B">
                  <ref role="3cqZAo" node="2UGjFq4h7S5" resolve="predicateSymbol" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2UGjFq4hbEc" role="3cqZAp">
          <node concept="3clFbS" id="2UGjFq4hbEd" role="3clFbx">
            <node concept="YS8fn" id="2UGjFq4hbEe" role="3cqZAp">
              <node concept="2ShNRf" id="2UGjFq4hbEf" role="YScLw">
                <node concept="1pGfFk" id="2UGjFq4hbEg" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2UGjFq4hbEh" role="3clFbw">
            <node concept="2OqwBi" id="2UGjFq4hbEi" role="3uHU7B">
              <node concept="37vLTw" id="2UGjFq4hbEj" role="2Oq$k0">
                <ref role="3cqZAo" node="2UGjFq4h7S7" resolve="args" />
              </node>
              <node concept="1Rwk04" id="2UGjFq4hbEk" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="2UGjFq4hbEl" role="3uHU7w">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2UGjFq4hauR" role="3cqZAp" />
        <node concept="3clFbF" id="2UGjFq4haww" role="3cqZAp">
          <node concept="2ShNRf" id="2UGjFq4haws" role="3clFbG">
            <node concept="1pGfFk" id="2UGjFq4haG0" role="2ShVmc">
              <ref role="37wK5l" to="cxk7:4xBopTzmopz" resolve="UnificationPredicate" />
              <node concept="AH0OO" id="2UGjFq4haIN" role="37wK5m">
                <node concept="3cmrfG" id="2UGjFq4haKu" role="AHEQo">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="2UGjFq4haH8" role="AHHXb">
                  <ref role="3cqZAo" node="2UGjFq4h7S7" resolve="args" />
                </node>
              </node>
              <node concept="AH0OO" id="2UGjFq4haPn" role="37wK5m">
                <node concept="3cmrfG" id="2UGjFq4haQn" role="AHEQo">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="2UGjFq4haN9" role="AHHXb">
                  <ref role="3cqZAo" node="2UGjFq4h7S7" resolve="args" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2UGjFq4h8Y6" role="jymVt" />
    <node concept="3clFb_" id="2UGjFq4m5q0" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="ask" />
      <node concept="37vLTG" id="2UGjFq4m5q1" role="3clF46">
        <property role="TrG5h" value="invocation" />
        <node concept="3uibUv" id="2UGjFq4m5q2" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
        </node>
      </node>
      <node concept="10P_77" id="2UGjFq4m5q3" role="3clF45" />
      <node concept="3Tm1VV" id="2UGjFq4m5q4" role="1B3o_S" />
      <node concept="3clFbS" id="2UGjFq4m5q6" role="3clF47">
        <node concept="3cpWs6" id="2UGjFq4m8A3" role="3cqZAp">
          <node concept="1rXfSq" id="2UGjFq4m8A4" role="3cqZAk">
            <ref role="37wK5l" node="2UGjFq4lTDy" resolve="doAsk" />
            <node concept="2OqwBi" id="2UGjFq4m8A5" role="37wK5m">
              <node concept="2OqwBi" id="2UGjFq4m8A6" role="2Oq$k0">
                <node concept="37vLTw" id="2UGjFq4m8A7" role="2Oq$k0">
                  <ref role="3cqZAo" node="2UGjFq4m5q1" resolve="invocation" />
                </node>
                <node concept="liA8E" id="2UGjFq4m8A8" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                </node>
              </node>
              <node concept="liA8E" id="2UGjFq4m8A9" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                <node concept="3cmrfG" id="2UGjFq4m8Aa" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2UGjFq4m8Ab" role="37wK5m">
              <node concept="2OqwBi" id="2UGjFq4m8Ac" role="2Oq$k0">
                <node concept="37vLTw" id="2UGjFq4m8Ad" role="2Oq$k0">
                  <ref role="3cqZAo" node="2UGjFq4m5q1" resolve="invocation" />
                </node>
                <node concept="liA8E" id="2UGjFq4m8Ae" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                </node>
              </node>
              <node concept="liA8E" id="2UGjFq4m8Af" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                <node concept="3cmrfG" id="2UGjFq4m8Ag" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2UGjFq4lURm" role="jymVt" />
    <node concept="3clFb_" id="2UGjFq4lTDy" role="jymVt">
      <property role="TrG5h" value="doAsk" />
      <node concept="3Tmbuc" id="6yEjedm66M5" role="1B3o_S" />
      <node concept="10P_77" id="2UGjFq4lTD$" role="3clF45" />
      <node concept="37vLTG" id="2UGjFq4lTDc" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2UGjFq4lTDd" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="2UGjFq4lTDe" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2UGjFq4lTDf" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="2UGjFq4lTBT" role="3clF47">
        <node concept="3clFbJ" id="2UGjFq4lTBU" role="3cqZAp">
          <node concept="3clFbS" id="2UGjFq4lTBV" role="3clFbx">
            <node concept="3cpWs6" id="2UGjFq4lTBW" role="3cqZAp">
              <node concept="1rXfSq" id="2UGjFq4lTBX" role="3cqZAk">
                <ref role="37wK5l" node="6GYQG_SpvAS" resolve="_askUni" />
                <node concept="10QFUN" id="2UGjFq4lTBY" role="37wK5m">
                  <node concept="37vLTw" id="2UGjFq4lTDj" role="10QFUP">
                    <ref role="3cqZAo" node="2UGjFq4lTDc" resolve="left" />
                  </node>
                  <node concept="16syzq" id="2UGjFq4lTC0" role="10QFUM">
                    <ref role="16sUi3" node="2UGjFq4lWIN" resolve="TERM" />
                  </node>
                </node>
                <node concept="10QFUN" id="2UGjFq4lTC1" role="37wK5m">
                  <node concept="16syzq" id="2UGjFq4lTC2" role="10QFUM">
                    <ref role="16sUi3" node="2UGjFq4lWIN" resolve="TERM" />
                  </node>
                  <node concept="37vLTw" id="2UGjFq4lTDs" role="10QFUP">
                    <ref role="3cqZAo" node="2UGjFq4lTDe" resolve="right" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2UGjFq4lTC4" role="3cqZAp" />
          </node>
          <node concept="1Wc70l" id="2UGjFq4lTC5" role="3clFbw">
            <node concept="2ZW3vV" id="2UGjFq4lTC6" role="3uHU7w">
              <node concept="3uibUv" id="2UGjFq4lTC7" role="2ZW6by">
                <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
              </node>
              <node concept="37vLTw" id="2UGjFq4lTDq" role="2ZW6bz">
                <ref role="3cqZAo" node="2UGjFq4lTDe" resolve="right" />
              </node>
            </node>
            <node concept="2ZW3vV" id="2UGjFq4lTC9" role="3uHU7B">
              <node concept="3uibUv" id="2UGjFq4lTCa" role="2ZW6by">
                <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
              </node>
              <node concept="37vLTw" id="2UGjFq4lTDh" role="2ZW6bz">
                <ref role="3cqZAo" node="2UGjFq4lTDc" resolve="left" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2UGjFq4lTCc" role="3eNLev">
            <node concept="3clFbS" id="2UGjFq4lTCd" role="3eOfB_">
              <node concept="3cpWs6" id="2UGjFq4lTCe" role="3cqZAp">
                <node concept="1rXfSq" id="2UGjFq4lTCf" role="3cqZAk">
                  <ref role="37wK5l" node="4U_yxogC1eF" resolve="_askUni" />
                  <node concept="10QFUN" id="2UGjFq4lTCg" role="37wK5m">
                    <node concept="37vLTw" id="2UGjFq4lTDm" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lTDc" resolve="left" />
                    </node>
                    <node concept="16syzq" id="2UGjFq4lTCi" role="10QFUM">
                      <ref role="16sUi3" node="2UGjFq4lWIN" resolve="TERM" />
                    </node>
                  </node>
                  <node concept="10QFUN" id="2UGjFq4lTCj" role="37wK5m">
                    <node concept="3uibUv" id="2UGjFq4lTCk" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                      <node concept="16syzq" id="2UGjFq4lTCl" role="11_B2D">
                        <ref role="16sUi3" node="2UGjFq4lWIN" resolve="TERM" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2UGjFq4lTDt" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lTDe" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2UGjFq4lTCn" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="2UGjFq4lTCo" role="3eO9$A">
              <node concept="2ZW3vV" id="2UGjFq4lTCp" role="3uHU7w">
                <node concept="3uibUv" id="2UGjFq4lTCq" role="2ZW6by">
                  <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                </node>
                <node concept="37vLTw" id="2UGjFq4lTDg" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4lTDe" resolve="right" />
                </node>
              </node>
              <node concept="2ZW3vV" id="2UGjFq4lTCs" role="3uHU7B">
                <node concept="3uibUv" id="2UGjFq4lTCt" role="2ZW6by">
                  <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                </node>
                <node concept="37vLTw" id="2UGjFq4lTDk" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4lTDc" resolve="left" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2UGjFq4lTCv" role="3eNLev">
            <node concept="3clFbS" id="2UGjFq4lTCw" role="3eOfB_">
              <node concept="3cpWs6" id="2UGjFq4lTCx" role="3cqZAp">
                <node concept="1rXfSq" id="2UGjFq4lTCy" role="3cqZAk">
                  <ref role="37wK5l" node="4U_yxogC1Eh" resolve="_askUni" />
                  <node concept="10QFUN" id="2UGjFq4lTCz" role="37wK5m">
                    <node concept="37vLTw" id="2UGjFq4lTDu" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lTDc" resolve="left" />
                    </node>
                    <node concept="3uibUv" id="2UGjFq4lTC_" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                      <node concept="16syzq" id="2UGjFq4lTCA" role="11_B2D">
                        <ref role="16sUi3" node="2UGjFq4lWIN" resolve="TERM" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="2UGjFq4lTCB" role="37wK5m">
                    <node concept="16syzq" id="2UGjFq4lTCC" role="10QFUM">
                      <ref role="16sUi3" node="2UGjFq4lWIN" resolve="TERM" />
                    </node>
                    <node concept="37vLTw" id="2UGjFq4lTDv" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lTDe" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2UGjFq4lTCE" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="2UGjFq4lTCF" role="3eO9$A">
              <node concept="2ZW3vV" id="2UGjFq4lTCG" role="3uHU7w">
                <node concept="3uibUv" id="2UGjFq4lTCH" role="2ZW6by">
                  <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                </node>
                <node concept="37vLTw" id="2UGjFq4lTDn" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4lTDe" resolve="right" />
                </node>
              </node>
              <node concept="2ZW3vV" id="2UGjFq4lTCJ" role="3uHU7B">
                <node concept="3uibUv" id="2UGjFq4lTCK" role="2ZW6by">
                  <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                </node>
                <node concept="37vLTw" id="2UGjFq4lTDl" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4lTDc" resolve="left" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2UGjFq4lTCM" role="3eNLev">
            <node concept="3clFbS" id="2UGjFq4lTCN" role="3eOfB_">
              <node concept="3cpWs6" id="2UGjFq4lTCO" role="3cqZAp">
                <node concept="1rXfSq" id="2UGjFq4lTCP" role="3cqZAk">
                  <ref role="37wK5l" node="4U_yxogC2zx" resolve="_askUni" />
                  <node concept="10QFUN" id="2UGjFq4lTCQ" role="37wK5m">
                    <node concept="37vLTw" id="2UGjFq4lTDr" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lTDc" resolve="left" />
                    </node>
                    <node concept="3uibUv" id="2UGjFq4lTCS" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                      <node concept="16syzq" id="2UGjFq4lTCT" role="11_B2D">
                        <ref role="16sUi3" node="2UGjFq4lWIN" resolve="TERM" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="2UGjFq4lTCU" role="37wK5m">
                    <node concept="3uibUv" id="2UGjFq4lTCV" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                      <node concept="16syzq" id="2UGjFq4lTCW" role="11_B2D">
                        <ref role="16sUi3" node="2UGjFq4lWIN" resolve="TERM" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2UGjFq4lTDi" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4lTDe" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2UGjFq4lTCY" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="2UGjFq4lTCZ" role="3eO9$A">
              <node concept="2ZW3vV" id="2UGjFq4lTD0" role="3uHU7w">
                <node concept="3uibUv" id="2UGjFq4lTD1" role="2ZW6by">
                  <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                </node>
                <node concept="37vLTw" id="2UGjFq4lTDp" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4lTDe" resolve="right" />
                </node>
              </node>
              <node concept="2ZW3vV" id="2UGjFq4lTD3" role="3uHU7B">
                <node concept="3uibUv" id="2UGjFq4lTD4" role="2ZW6by">
                  <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                </node>
                <node concept="37vLTw" id="2UGjFq4lTDo" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4lTDc" resolve="left" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="2UGjFq4lTD6" role="9aQIa">
            <node concept="3clFbS" id="2UGjFq4lTD7" role="9aQI4">
              <node concept="YS8fn" id="2UGjFq4lTD8" role="3cqZAp">
                <node concept="2ShNRf" id="2UGjFq4lTD9" role="YScLw">
                  <node concept="1pGfFk" id="2UGjFq4lTDa" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="Xl_RD" id="2UGjFq4lTDb" role="37wK5m">
                      <property role="Xl_RC" value="invalid arguments" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="2UGjFq4lWIN" role="16eVyc">
        <property role="TrG5h" value="TERM" />
        <node concept="3uibUv" id="2UGjFq4lWIO" role="3ztrMU">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2UGjFq4mgxO" role="jymVt" />
    <node concept="3clFb_" id="2UGjFq4mhEN" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tell" />
      <node concept="3cqZAl" id="2UGjFq4mhEO" role="3clF45" />
      <node concept="3Tm1VV" id="2UGjFq4mhEP" role="1B3o_S" />
      <node concept="37vLTG" id="2UGjFq4mhER" role="3clF46">
        <property role="TrG5h" value="invocation" />
        <node concept="3uibUv" id="2UGjFq4mhES" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
        </node>
      </node>
      <node concept="3clFbS" id="2UGjFq4mhEU" role="3clF47">
        <node concept="3clFbF" id="2UGjFq4mjW$" role="3cqZAp">
          <node concept="1rXfSq" id="2UGjFq4mjW_" role="3clFbG">
            <ref role="37wK5l" node="2UGjFq4mbmq" resolve="doTell" />
            <node concept="2OqwBi" id="2UGjFq4mjWA" role="37wK5m">
              <node concept="2OqwBi" id="2UGjFq4mjWB" role="2Oq$k0">
                <node concept="37vLTw" id="2UGjFq4mjWC" role="2Oq$k0">
                  <ref role="3cqZAo" node="2UGjFq4mhER" resolve="invocation" />
                </node>
                <node concept="liA8E" id="2UGjFq4mjWD" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                </node>
              </node>
              <node concept="liA8E" id="2UGjFq4mjWE" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                <node concept="3cmrfG" id="2UGjFq4mjWF" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2UGjFq4mjWG" role="37wK5m">
              <node concept="2OqwBi" id="2UGjFq4mjWH" role="2Oq$k0">
                <node concept="37vLTw" id="2UGjFq4mjWI" role="2Oq$k0">
                  <ref role="3cqZAo" node="2UGjFq4mhER" resolve="invocation" />
                </node>
                <node concept="liA8E" id="2UGjFq4mjWJ" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                </node>
              </node>
              <node concept="liA8E" id="2UGjFq4mjWK" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                <node concept="3cmrfG" id="2UGjFq4mjWL" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2UGjFq4mcDg" role="jymVt" />
    <node concept="3clFb_" id="2UGjFq4mbmq" role="jymVt">
      <property role="TrG5h" value="doTell" />
      <node concept="3Tmbuc" id="6yEjedm67P8" role="1B3o_S" />
      <node concept="3cqZAl" id="2UGjFq4mbms" role="3clF45" />
      <node concept="37vLTG" id="2UGjFq4mbm4" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2UGjFq4mbm5" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="2UGjFq4mbm6" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2UGjFq4mbm7" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="2UGjFq4mbkL" role="3clF47">
        <node concept="3clFbJ" id="2UGjFq4mbkM" role="3cqZAp">
          <node concept="3clFbS" id="2UGjFq4mbkN" role="3clFbx">
            <node concept="3clFbF" id="2UGjFq4mbkO" role="3cqZAp">
              <node concept="1rXfSq" id="2UGjFq4mbkP" role="3clFbG">
                <ref role="37wK5l" node="6GYQG_SpvAG" resolve="_tellUni" />
                <node concept="10QFUN" id="2UGjFq4mbkQ" role="37wK5m">
                  <node concept="37vLTw" id="2UGjFq4mbmm" role="10QFUP">
                    <ref role="3cqZAo" node="2UGjFq4mbm4" resolve="left" />
                  </node>
                  <node concept="16syzq" id="2UGjFq4mbkS" role="10QFUM">
                    <ref role="16sUi3" node="2UGjFq4mdQc" resolve="TERM" />
                  </node>
                </node>
                <node concept="10QFUN" id="2UGjFq4mbkT" role="37wK5m">
                  <node concept="16syzq" id="2UGjFq4mbkU" role="10QFUM">
                    <ref role="16sUi3" node="2UGjFq4mdQc" resolve="TERM" />
                  </node>
                  <node concept="37vLTw" id="2UGjFq4mbmc" role="10QFUP">
                    <ref role="3cqZAo" node="2UGjFq4mbm6" resolve="right" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2UGjFq4mbkW" role="3cqZAp" />
          </node>
          <node concept="1Wc70l" id="2UGjFq4mbkX" role="3clFbw">
            <node concept="2ZW3vV" id="2UGjFq4mbkY" role="3uHU7w">
              <node concept="3uibUv" id="2UGjFq4mbkZ" role="2ZW6by">
                <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
              </node>
              <node concept="37vLTw" id="2UGjFq4mbmn" role="2ZW6bz">
                <ref role="3cqZAo" node="2UGjFq4mbm6" resolve="right" />
              </node>
            </node>
            <node concept="2ZW3vV" id="2UGjFq4mbl1" role="3uHU7B">
              <node concept="3uibUv" id="2UGjFq4mbl2" role="2ZW6by">
                <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
              </node>
              <node concept="37vLTw" id="2UGjFq4mbm9" role="2ZW6bz">
                <ref role="3cqZAo" node="2UGjFq4mbm4" resolve="left" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2UGjFq4mbl4" role="3eNLev">
            <node concept="3clFbS" id="2UGjFq4mbl5" role="3eOfB_">
              <node concept="3clFbF" id="2UGjFq4mbl6" role="3cqZAp">
                <node concept="1rXfSq" id="2UGjFq4mbl7" role="3clFbG">
                  <ref role="37wK5l" node="4U_yxogBZsK" resolve="_tellUni" />
                  <node concept="10QFUN" id="2UGjFq4mbl8" role="37wK5m">
                    <node concept="37vLTw" id="2UGjFq4mbmk" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4mbm4" resolve="left" />
                    </node>
                    <node concept="16syzq" id="2UGjFq4mbla" role="10QFUM">
                      <ref role="16sUi3" node="2UGjFq4mdQc" resolve="TERM" />
                    </node>
                  </node>
                  <node concept="10QFUN" id="2UGjFq4mblb" role="37wK5m">
                    <node concept="3uibUv" id="2UGjFq4mblc" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                      <node concept="16syzq" id="2UGjFq4mbld" role="11_B2D">
                        <ref role="16sUi3" node="2UGjFq4mdQc" resolve="TERM" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2UGjFq4mbmh" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4mbm6" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2UGjFq4mblf" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="2UGjFq4mblg" role="3eO9$A">
              <node concept="2ZW3vV" id="2UGjFq4mblh" role="3uHU7w">
                <node concept="3uibUv" id="2UGjFq4mbli" role="2ZW6by">
                  <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                </node>
                <node concept="37vLTw" id="2UGjFq4mbm8" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4mbm6" resolve="right" />
                </node>
              </node>
              <node concept="2ZW3vV" id="2UGjFq4mblk" role="3uHU7B">
                <node concept="3uibUv" id="2UGjFq4mbll" role="2ZW6by">
                  <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                </node>
                <node concept="37vLTw" id="2UGjFq4mbma" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4mbm4" resolve="left" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2UGjFq4mbln" role="3eNLev">
            <node concept="3clFbS" id="2UGjFq4mblo" role="3eOfB_">
              <node concept="3clFbF" id="2UGjFq4mblp" role="3cqZAp">
                <node concept="1rXfSq" id="2UGjFq4mblq" role="3clFbG">
                  <ref role="37wK5l" node="4U_yxogBZLB" resolve="_tellUni" />
                  <node concept="10QFUN" id="2UGjFq4mblr" role="37wK5m">
                    <node concept="37vLTw" id="2UGjFq4mbml" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4mbm4" resolve="left" />
                    </node>
                    <node concept="3uibUv" id="2UGjFq4mblt" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                      <node concept="16syzq" id="2UGjFq4mblu" role="11_B2D">
                        <ref role="16sUi3" node="2UGjFq4mdQc" resolve="TERM" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="2UGjFq4mblv" role="37wK5m">
                    <node concept="16syzq" id="2UGjFq4mblw" role="10QFUM">
                      <ref role="16sUi3" node="2UGjFq4mdQc" resolve="TERM" />
                    </node>
                    <node concept="37vLTw" id="2UGjFq4mbme" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4mbm6" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2UGjFq4mbly" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="2UGjFq4mblz" role="3eO9$A">
              <node concept="2ZW3vV" id="2UGjFq4mbl$" role="3uHU7w">
                <node concept="3uibUv" id="2UGjFq4mbl_" role="2ZW6by">
                  <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                </node>
                <node concept="37vLTw" id="2UGjFq4mbmf" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4mbm6" resolve="right" />
                </node>
              </node>
              <node concept="2ZW3vV" id="2UGjFq4mblB" role="3uHU7B">
                <node concept="3uibUv" id="2UGjFq4mblC" role="2ZW6by">
                  <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                </node>
                <node concept="37vLTw" id="2UGjFq4mbmb" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4mbm4" resolve="left" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2UGjFq4mblE" role="3eNLev">
            <node concept="3clFbS" id="2UGjFq4mblF" role="3eOfB_">
              <node concept="3clFbF" id="2UGjFq4mblG" role="3cqZAp">
                <node concept="1rXfSq" id="2UGjFq4mblH" role="3clFbG">
                  <ref role="37wK5l" node="4U_yxogC05I" resolve="_tellUni" />
                  <node concept="10QFUN" id="2UGjFq4mblI" role="37wK5m">
                    <node concept="37vLTw" id="2UGjFq4mbmg" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4mbm4" resolve="left" />
                    </node>
                    <node concept="3uibUv" id="2UGjFq4mblK" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                      <node concept="16syzq" id="2UGjFq4mblL" role="11_B2D">
                        <ref role="16sUi3" node="2UGjFq4mdQc" resolve="TERM" />
                      </node>
                    </node>
                  </node>
                  <node concept="10QFUN" id="2UGjFq4mblM" role="37wK5m">
                    <node concept="3uibUv" id="2UGjFq4mblN" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                      <node concept="16syzq" id="2UGjFq4mblO" role="11_B2D">
                        <ref role="16sUi3" node="2UGjFq4mdQc" resolve="TERM" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2UGjFq4mbmi" role="10QFUP">
                      <ref role="3cqZAo" node="2UGjFq4mbm6" resolve="right" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2UGjFq4mblQ" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="2UGjFq4mblR" role="3eO9$A">
              <node concept="2ZW3vV" id="2UGjFq4mblS" role="3uHU7w">
                <node concept="3uibUv" id="2UGjFq4mblT" role="2ZW6by">
                  <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                </node>
                <node concept="37vLTw" id="2UGjFq4mbmj" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4mbm6" resolve="right" />
                </node>
              </node>
              <node concept="2ZW3vV" id="2UGjFq4mblV" role="3uHU7B">
                <node concept="3uibUv" id="2UGjFq4mblW" role="2ZW6by">
                  <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                </node>
                <node concept="37vLTw" id="2UGjFq4mbmd" role="2ZW6bz">
                  <ref role="3cqZAo" node="2UGjFq4mbm4" resolve="left" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="2UGjFq4mblY" role="9aQIa">
            <node concept="3clFbS" id="2UGjFq4mblZ" role="9aQI4">
              <node concept="YS8fn" id="2UGjFq4mbm0" role="3cqZAp">
                <node concept="2ShNRf" id="2UGjFq4mbm1" role="YScLw">
                  <node concept="1pGfFk" id="2UGjFq4mbm2" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="Xl_RD" id="2UGjFq4mbm3" role="37wK5m">
                      <property role="Xl_RC" value="invalid arguments" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="2UGjFq4mdQc" role="16eVyc">
        <property role="TrG5h" value="TERM" />
        <node concept="3uibUv" id="2UGjFq4mdQd" role="3ztrMU">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzmvIq" role="jymVt" />
    <node concept="3clFb_" id="6GYQG_SpvAG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="_tellUni" />
      <node concept="37vLTG" id="6GYQG_SpvAH" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="16syzq" id="6MYr6JwAqQZ" role="1tU5fm">
          <ref role="16sUi3" node="6MYr6JwAoT2" resolve="TERM" />
        </node>
      </node>
      <node concept="37vLTG" id="6GYQG_SpvAJ" role="3clF46">
        <property role="TrG5h" value="rightVal" />
        <node concept="16syzq" id="6MYr6JwAs2I" role="1tU5fm">
          <ref role="16sUi3" node="6MYr6JwAoT2" resolve="TERM" />
        </node>
      </node>
      <node concept="3cqZAl" id="6GYQG_SpvAL" role="3clF45" />
      <node concept="3Tmbuc" id="6MYr6JwV1tW" role="1B3o_S" />
      <node concept="3clFbS" id="6GYQG_SpvAR" role="3clF47">
        <node concept="3cpWs8" id="7K4Mb_J$cIA" role="3cqZAp">
          <node concept="3cpWsn" id="7K4Mb_J$cIB" role="3cpWs9">
            <property role="TrG5h" value="subs" />
            <node concept="3uibUv" id="7K4Mb_J$cIC" role="1tU5fm">
              <ref role="3uigEE" to="yt73:~Substitution" resolve="Substitution" />
            </node>
            <node concept="2YIFZM" id="7K4Mb_J$cID" role="33vP2m">
              <ref role="1Pybhc" to="yt73:~Unification" resolve="Unification" />
              <ref role="37wK5l" to="yt73:~Unification.unify(jetbrains.mps.unification.Term,jetbrains.mps.unification.Term):jetbrains.mps.unification.Substitution" resolve="unify" />
              <node concept="37vLTw" id="7K4Mb_J$cIE" role="37wK5m">
                <ref role="3cqZAo" node="6GYQG_SpvAH" resolve="leftVal" />
              </node>
              <node concept="37vLTw" id="7K4Mb_J$cIF" role="37wK5m">
                <ref role="3cqZAo" node="6GYQG_SpvAJ" resolve="rightVal" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6SkxsMzEdRd" role="3cqZAp">
          <node concept="3clFbS" id="6SkxsMzEdRg" role="3clFbx">
            <node concept="YS8fn" id="5jCHAT1IF0X" role="3cqZAp">
              <node concept="2ShNRf" id="5jCHAT1IF0Y" role="YScLw">
                <node concept="1pGfFk" id="5jCHAT1IF0Z" role="2ShVmc">
                  <ref role="37wK5l" to="w7la:~EvaluationFailureException.&lt;init&gt;(java.lang.String)" resolve="EvaluationFailureException" />
                  <node concept="3cpWs3" id="5jCHAT1IFhN" role="37wK5m">
                    <node concept="3cpWs3" id="5jCHAT1IFhO" role="3uHU7B">
                      <node concept="3cpWs3" id="5jCHAT1IFhP" role="3uHU7B">
                        <node concept="3cpWs3" id="5jCHAT1IFhQ" role="3uHU7B">
                          <node concept="3cpWs3" id="5jCHAT1IFhR" role="3uHU7B">
                            <node concept="Xl_RD" id="5jCHAT1IFhS" role="3uHU7B">
                              <property role="Xl_RC" value="Cannot unify " />
                            </node>
                            <node concept="37vLTw" id="5jCHAT1IFhT" role="3uHU7w">
                              <ref role="3cqZAo" node="6GYQG_SpvAH" resolve="leftVal" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="5jCHAT1IFhU" role="3uHU7w">
                            <property role="Xl_RC" value=" and " />
                          </node>
                        </node>
                        <node concept="37vLTw" id="5jCHAT1IFhV" role="3uHU7w">
                          <ref role="3cqZAo" node="6GYQG_SpvAJ" resolve="rightVal" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="5jCHAT1IFhW" role="3uHU7w">
                        <property role="Xl_RC" value=": " />
                      </node>
                    </node>
                    <node concept="1rXfSq" id="5jCHAT1IFhX" role="3uHU7w">
                      <ref role="37wK5l" node="1MWQR5SpMLA" resolve="formatMessage" />
                      <node concept="37vLTw" id="5jCHAT1IFhY" role="37wK5m">
                        <ref role="3cqZAo" node="7K4Mb_J$cIB" resolve="subs" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6SkxsMzEe76" role="3clFbw">
            <node concept="2OqwBi" id="6SkxsMzEeju" role="3fr31v">
              <node concept="37vLTw" id="6SkxsMzEehu" role="2Oq$k0">
                <ref role="3cqZAo" node="7K4Mb_J$cIB" resolve="subs" />
              </node>
              <node concept="liA8E" id="6SkxsMzEepC" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Substitution.isSuccessful():boolean" resolve="isSuccessful" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6SkxsMzEiLZ" role="3cqZAp" />
        <node concept="1DcWWT" id="6SkxsMzDp24" role="3cqZAp">
          <node concept="3clFbS" id="6SkxsMzDp25" role="2LFqv$">
            <node concept="3cpWs8" id="1Ns6gpY7SoW" role="3cqZAp">
              <node concept="3cpWsn" id="1Ns6gpY7SoX" role="3cpWs9">
                <property role="TrG5h" value="bvar" />
                <node concept="3uibUv" id="6MYr6JwRXQ1" role="1tU5fm">
                  <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                </node>
                <node concept="2OqwBi" id="1Ns6gpY7SoY" role="33vP2m">
                  <node concept="37vLTw" id="1Ns6gpY7SoZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                  </node>
                  <node concept="liA8E" id="1Ns6gpY7Sp0" role="2OqNvi">
                    <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7FFmDVAJHGS" role="3cqZAp">
              <node concept="3clFbS" id="7FFmDVAJHGU" role="3clFbx">
                <node concept="3N13vt" id="7FFmDVAJI1j" role="3cqZAp" />
              </node>
              <node concept="3fqX7Q" id="7FFmDVAJHXM" role="3clFbw">
                <node concept="2OqwBi" id="6MYr6JwRQi2" role="3fr31v">
                  <node concept="37vLTw" id="6MYr6JwRQ2J" role="2Oq$k0">
                    <ref role="3cqZAo" node="6MYr6JwATAl" resolve="logicalUnification" />
                  </node>
                  <node concept="liA8E" id="6MYr6JwRQjW" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~LogicalUnification.isLogical(jetbrains.mps.unification.Term):boolean" resolve="isLogical" />
                    <node concept="37vLTw" id="6MYr6JwRQlP" role="37wK5m">
                      <ref role="3cqZAo" node="1Ns6gpY7SoX" resolve="bvar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6SkxsMzDT2t" role="3cqZAp" />
            <node concept="3cpWs8" id="6MYr6JwRS$G" role="3cqZAp">
              <node concept="3cpWsn" id="6MYr6JwRS$H" role="3cpWs9">
                <property role="TrG5h" value="bvarLogical" />
                <node concept="3uibUv" id="6MYr6JwRS$v" role="1tU5fm">
                  <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                  <node concept="3uibUv" id="6MYr6JwSaxS" role="11_B2D">
                    <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6MYr6JwRS$I" role="33vP2m">
                  <node concept="37vLTw" id="6MYr6JwRS$J" role="2Oq$k0">
                    <ref role="3cqZAo" node="6MYr6JwATAl" resolve="logicalUnification" />
                  </node>
                  <node concept="liA8E" id="6MYr6JwRS$K" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~LogicalUnification.logical(jetbrains.mps.unification.Term):jetbrains.mps.logic.reactor.logical.SolverLogical" resolve="logical" />
                    <node concept="37vLTw" id="6MYr6JwRS$L" role="37wK5m">
                      <ref role="3cqZAo" node="1Ns6gpY7SoX" resolve="bvar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6MYr6JwSY_r" role="3cqZAp" />
            <node concept="3clFbJ" id="6SkxsMzEpRs" role="3cqZAp">
              <node concept="3clFbS" id="6SkxsMzEpRv" role="3clFbx">
                <node concept="3clFbF" id="6SkxsMzEti1" role="3cqZAp">
                  <node concept="1rXfSq" id="6SkxsMzEti0" role="3clFbG">
                    <ref role="37wK5l" node="4U_yxogBZLB" resolve="_tellUni" />
                    <node concept="37vLTw" id="46l0wJhwl3q" role="37wK5m">
                      <ref role="3cqZAo" node="6MYr6JwRS$H" resolve="bvarLogical" />
                    </node>
                    <node concept="2OqwBi" id="6MYr6JwS1$k" role="37wK5m">
                      <node concept="37vLTw" id="6MYr6JwS1$l" role="2Oq$k0">
                        <ref role="3cqZAo" node="6MYr6JwATAl" resolve="logicalUnification" />
                      </node>
                      <node concept="liA8E" id="6MYr6JwS1$m" role="2OqNvi">
                        <ref role="37wK5l" to="bj13:~LogicalUnification.asRoot(jetbrains.mps.unification.Term):jetbrains.mps.unification.Term" resolve="asRoot" />
                        <node concept="2OqwBi" id="6MYr6JwS1$n" role="37wK5m">
                          <node concept="37vLTw" id="6MYr6JwS1$o" role="2Oq$k0">
                            <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                          </node>
                          <node concept="liA8E" id="6MYr6JwS1$p" role="2OqNvi">
                            <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6SkxsMzF270" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="6SkxsMzEpXG" role="3clFbw">
                <node concept="2OqwBi" id="6SkxsMzFMgW" role="2Oq$k0">
                  <node concept="37vLTw" id="6SkxsMzFMgX" role="2Oq$k0">
                    <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                  </node>
                  <node concept="liA8E" id="6SkxsMzFMgY" role="2OqNvi">
                    <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                  </node>
                </node>
                <node concept="liA8E" id="56MMu0Ap5n2" role="2OqNvi">
                  <ref role="37wK5l" to="yt73:~Term.is(jetbrains.mps.unification.Term$Kind):boolean" resolve="is" />
                  <node concept="Rm8GO" id="573vQv1oO8g" role="37wK5m">
                    <ref role="Rm8GQ" to="yt73:~Term$Kind.FUN" resolve="FUN" />
                    <ref role="1Px2BO" to="yt73:~Term$Kind" resolve="Term.Kind" />
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="6SkxsMzEv3z" role="3eNLev">
                <node concept="2OqwBi" id="6SkxsMzEv9Q" role="3eO9$A">
                  <node concept="2OqwBi" id="6SkxsMzFMD6" role="2Oq$k0">
                    <node concept="37vLTw" id="6SkxsMzFMD7" role="2Oq$k0">
                      <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                    </node>
                    <node concept="liA8E" id="6SkxsMzFMD8" role="2OqNvi">
                      <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                    </node>
                  </node>
                  <node concept="liA8E" id="56MMu0ApUkU" role="2OqNvi">
                    <ref role="37wK5l" to="yt73:~Term.is(jetbrains.mps.unification.Term$Kind):boolean" resolve="is" />
                    <node concept="Rm8GO" id="56MMu0ApUkV" role="37wK5m">
                      <ref role="1Px2BO" to="yt73:~Term$Kind" resolve="Term.Kind" />
                      <ref role="Rm8GQ" to="yt73:~Term$Kind.VAR" resolve="VAR" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="6SkxsMzEv3_" role="3eOfB_">
                  <node concept="3clFbF" id="6SkxsMzF0u3" role="3cqZAp">
                    <node concept="1rXfSq" id="6SkxsMzF0u2" role="3clFbG">
                      <ref role="37wK5l" node="4U_yxogC05I" resolve="_tellUni" />
                      <node concept="37vLTw" id="46l0wJhwllA" role="37wK5m">
                        <ref role="3cqZAo" node="6MYr6JwRS$H" resolve="bvarLogical" />
                      </node>
                      <node concept="2OqwBi" id="6MYr6JwRG9q" role="37wK5m">
                        <node concept="37vLTw" id="6MYr6JwRG9r" role="2Oq$k0">
                          <ref role="3cqZAo" node="6MYr6JwATAl" resolve="logicalUnification" />
                        </node>
                        <node concept="liA8E" id="6MYr6JwRG9s" role="2OqNvi">
                          <ref role="37wK5l" to="bj13:~LogicalUnification.logical(jetbrains.mps.unification.Term):jetbrains.mps.logic.reactor.logical.SolverLogical" resolve="logical" />
                          <node concept="2OqwBi" id="6MYr6JwSbtb" role="37wK5m">
                            <node concept="37vLTw" id="6MYr6JwSbtc" role="2Oq$k0">
                              <ref role="3cqZAo" node="6SkxsMzDp28" resolve="bnd" />
                            </node>
                            <node concept="liA8E" id="6MYr6JwSbtd" role="2OqNvi">
                              <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
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
          <node concept="3cpWsn" id="6SkxsMzDp28" role="1Duv9x">
            <property role="TrG5h" value="bnd" />
            <node concept="3uibUv" id="6SkxsMzDp2c" role="1tU5fm">
              <ref role="3uigEE" to="yt73:~Substitution$Binding" resolve="Substitution.Binding" />
            </node>
          </node>
          <node concept="2OqwBi" id="6SkxsMzDp2d" role="1DdaDG">
            <node concept="37vLTw" id="6SkxsMzDp2e" role="2Oq$k0">
              <ref role="3cqZAo" node="7K4Mb_J$cIB" resolve="subs" />
            </node>
            <node concept="liA8E" id="6SkxsMzDp2f" role="2OqNvi">
              <ref role="37wK5l" to="yt73:~Substitution.bindings():java.util.Collection" resolve="bindings" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6SkxsMzEz46" role="3cqZAp" />
        <node concept="3SKdUt" id="6SkxsMzE_KM" role="3cqZAp">
          <node concept="3SKdUq" id="6SkxsMzEA5A" role="3SKWNk">
            <property role="3SKdUp" value="unification succeeded and all the bindings have been processed" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6MYr6JwAoT2" role="16eVyc">
        <property role="TrG5h" value="TERM" />
        <node concept="3uibUv" id="6MYr6JwAqlE" role="3ztrMU">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogBZ9l" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogBZsK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="_tellUni" />
      <node concept="37vLTG" id="4U_yxogBZsL" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="16syzq" id="6MYr6Jw$tXX" role="1tU5fm">
          <ref role="16sUi3" node="6MYr6Jw$si$" resolve="TERM" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogBZsN" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="6MYr6Jwz28e" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
          <node concept="16syzq" id="6MYr6Jw$v4o" role="11_B2D">
            <ref role="16sUi3" node="6MYr6Jw$si$" resolve="TERM" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4U_yxogBZsP" role="3clF45" />
      <node concept="3Tmbuc" id="6MYr6JwV3E0" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogBZsU" role="3clF47">
        <node concept="3clFbF" id="1bm7a6EV6Wo" role="3cqZAp">
          <node concept="1rXfSq" id="1bm7a6EV6Wn" role="3clFbG">
            <ref role="37wK5l" node="4U_yxogBZLB" resolve="_tellUni" />
            <node concept="37vLTw" id="1bm7a6EV7k2" role="37wK5m">
              <ref role="3cqZAo" node="4U_yxogBZsN" resolve="right" />
            </node>
            <node concept="37vLTw" id="1bm7a6EV7BE" role="37wK5m">
              <ref role="3cqZAo" node="4U_yxogBZsL" resolve="leftVal" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6MYr6Jw$si$" role="16eVyc">
        <property role="TrG5h" value="TERM" />
        <node concept="3uibUv" id="6MYr6Jw$tw5" role="3ztrMU">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogBZsJ" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogBZLB" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="_tellUni" />
      <node concept="37vLTG" id="4U_yxogBZLE" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="6MYr6Jwz28h" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
          <node concept="16syzq" id="6MYr6Jw$$48" role="11_B2D">
            <ref role="16sUi3" node="6MYr6Jw$xTR" resolve="TERM" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogBZLC" role="3clF46">
        <property role="TrG5h" value="rightVal" />
        <node concept="16syzq" id="6MYr6Jw$_FT" role="1tU5fm">
          <ref role="16sUi3" node="6MYr6Jw$xTR" resolve="TERM" />
        </node>
      </node>
      <node concept="3cqZAl" id="4U_yxogBZLG" role="3clF45" />
      <node concept="3Tmbuc" id="6MYr6JwV5NL" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogBZLL" role="3clF47">
        <node concept="3cpWs8" id="7d$oK1$qfYc" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$qfYd" role="3cpWs9">
            <property role="TrG5h" value="leftRepr" />
            <node concept="3uibUv" id="6MYr6Jwz28k" role="1tU5fm">
              <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
              <node concept="16syzq" id="6MYr6JwA0OY" role="11_B2D">
                <ref role="16sUi3" node="6MYr6Jw$xTR" resolve="TERM" />
              </node>
            </node>
            <node concept="2OqwBi" id="7d$oK1$qfYf" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$qfYg" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogBZLE" resolve="left" />
              </node>
              <node concept="liA8E" id="7d$oK1$qfYh" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~SolverLogical.findRoot():jetbrains.mps.logic.reactor.logical.SolverLogical" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1bm7a6EV0yc" role="3cqZAp" />
        <node concept="3cpWs8" id="1bm7a6EUZWd" role="3cqZAp">
          <node concept="3cpWsn" id="1bm7a6EUZWe" role="3cpWs9">
            <property role="TrG5h" value="leftVal" />
            <node concept="3uibUv" id="6MYr6JwzAEt" role="1tU5fm">
              <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
            </node>
            <node concept="2OqwBi" id="1bm7a6EUZWf" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$qgWW" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$qfYd" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="1bm7a6EUZWh" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1bm7a6EV2Np" role="3cqZAp">
          <node concept="3clFbS" id="1bm7a6EV2Ns" role="3clFbx">
            <node concept="3clFbF" id="1bm7a6EV48H" role="3cqZAp">
              <node concept="2OqwBi" id="1bm7a6EV4cC" role="3clFbG">
                <node concept="37vLTw" id="7d$oK1$qhnK" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$qfYd" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="1bm7a6EV5ci" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~SolverLogical.setValue(java.lang.Object):void" resolve="setValue" />
                  <node concept="37vLTw" id="1bm7a6EV5e0" role="37wK5m">
                    <ref role="3cqZAo" node="4U_yxogBZLC" resolve="rightVal" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1bm7a6EV5AJ" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="1bm7a6EV3c0" role="3clFbw">
            <node concept="10Nm6u" id="1bm7a6EV3fP" role="3uHU7w" />
            <node concept="37vLTw" id="1bm7a6EV2Ww" role="3uHU7B">
              <ref role="3cqZAo" node="1bm7a6EUZWe" resolve="leftVal" />
            </node>
          </node>
          <node concept="9aQIb" id="1bm7a6EV3hd" role="9aQIa">
            <node concept="3clFbS" id="1bm7a6EV3he" role="9aQI4">
              <node concept="3clFbF" id="6SkxsMzEU$Q" role="3cqZAp">
                <node concept="1rXfSq" id="6SkxsMzEU$P" role="3clFbG">
                  <ref role="37wK5l" node="6GYQG_SpvAG" resolve="_tellUni" />
                  <node concept="37vLTw" id="6SkxsMzEUWY" role="37wK5m">
                    <ref role="3cqZAo" node="1bm7a6EUZWe" resolve="leftVal" />
                  </node>
                  <node concept="37vLTw" id="6SkxsMzEV29" role="37wK5m">
                    <ref role="3cqZAo" node="4U_yxogBZLC" resolve="rightVal" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6MYr6Jw$xTR" role="16eVyc">
        <property role="TrG5h" value="TERM" />
        <node concept="3uibUv" id="6MYr6Jw$zyw" role="3ztrMU">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogBZLA" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogC05I" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="_tellUni" />
      <node concept="37vLTG" id="4U_yxogC05J" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="6MYr6Jwz28n" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
          <node concept="16syzq" id="6MYr6Jw$E6F" role="11_B2D">
            <ref role="16sUi3" node="6MYr6Jw$BQ2" resolve="TERM" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogC0jU" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="6MYr6Jwz28q" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
          <node concept="16syzq" id="6MYr6Jw$GmS" role="11_B2D">
            <ref role="16sUi3" node="6MYr6Jw$BQ2" resolve="TERM" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4U_yxogC05N" role="3clF45" />
      <node concept="3Tmbuc" id="6MYr6JwV8aT" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogC05S" role="3clF47">
        <node concept="3clFbJ" id="4U_yxogDsYF" role="3cqZAp">
          <node concept="3clFbS" id="4U_yxogDsYG" role="3clFbx">
            <node concept="3cpWs6" id="4U_yxogDtRP" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="4U_yxogDt6$" role="3clFbw">
            <node concept="37vLTw" id="4U_yxogDtvd" role="3uHU7w">
              <ref role="3cqZAo" node="4U_yxogC0jU" resolve="right" />
            </node>
            <node concept="37vLTw" id="4U_yxogDsZV" role="3uHU7B">
              <ref role="3cqZAo" node="4U_yxogC05J" resolve="left" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4U_yxogDtSL" role="3cqZAp" />
        <node concept="3cpWs8" id="7d$oK1$rAnD" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$rAnE" role="3cpWs9">
            <property role="TrG5h" value="leftRepr" />
            <node concept="3uibUv" id="6MYr6Jwz28t" role="1tU5fm">
              <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
              <node concept="16syzq" id="6MYr6JwA2yy" role="11_B2D">
                <ref role="16sUi3" node="6MYr6Jw$BQ2" resolve="TERM" />
              </node>
            </node>
            <node concept="2OqwBi" id="7d$oK1$rAnG" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$rAnH" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogC05J" resolve="left" />
              </node>
              <node concept="liA8E" id="7d$oK1$rAnI" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~SolverLogical.findRoot():jetbrains.mps.logic.reactor.logical.SolverLogical" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7d$oK1$rAnJ" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$rAnK" role="3cpWs9">
            <property role="TrG5h" value="rightRepr" />
            <node concept="3uibUv" id="6MYr6Jwz28w" role="1tU5fm">
              <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
              <node concept="16syzq" id="6MYr6JwA3hl" role="11_B2D">
                <ref role="16sUi3" node="6MYr6Jw$BQ2" resolve="TERM" />
              </node>
            </node>
            <node concept="2OqwBi" id="7d$oK1$rAnM" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$rAnN" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogC0jU" resolve="right" />
              </node>
              <node concept="liA8E" id="7d$oK1$rAnO" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~SolverLogical.findRoot():jetbrains.mps.logic.reactor.logical.SolverLogical" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4U_yxogDxtv" role="3cqZAp" />
        <node concept="3clFbJ" id="4U_yxogDxEc" role="3cqZAp">
          <node concept="3clFbS" id="4U_yxogDxEf" role="3clFbx">
            <node concept="3cpWs6" id="4U_yxogDybj" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="4U_yxogDy8i" role="3clFbw">
            <node concept="37vLTw" id="7d$oK1$rBSI" role="3uHU7w">
              <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
            </node>
            <node concept="37vLTw" id="7d$oK1$rBvZ" role="3uHU7B">
              <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4U_yxogDycf" role="3cqZAp" />
        <node concept="3clFbF" id="20WMLipxvPc" role="3cqZAp">
          <node concept="2OqwBi" id="20WMLipxw8c" role="3clFbG">
            <node concept="37vLTw" id="20WMLipxvPa" role="2Oq$k0">
              <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
            </node>
            <node concept="liA8E" id="20WMLipxwje" role="2OqNvi">
              <ref role="37wK5l" to="bj13:~SolverLogical.union(jetbrains.mps.logic.reactor.logical.SolverLogical,jetbrains.mps.logic.reactor.logical.SolverLogical$ValueReconciler):void" resolve="union" />
              <node concept="37vLTw" id="20WMLipxwMt" role="37wK5m">
                <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
              </node>
              <node concept="1bVj0M" id="20WMLipxxlF" role="37wK5m">
                <node concept="37vLTG" id="20WMLipxxnG" role="1bW2Oz">
                  <property role="TrG5h" value="leftVal" />
                  <node concept="16syzq" id="20WMLipxxxg" role="1tU5fm">
                    <ref role="16sUi3" node="6MYr6Jw$BQ2" resolve="TERM" />
                  </node>
                </node>
                <node concept="37vLTG" id="20WMLipxxG3" role="1bW2Oz">
                  <property role="TrG5h" value="rightVal" />
                  <node concept="16syzq" id="20WMLipxxQi" role="1tU5fm">
                    <ref role="16sUi3" node="6MYr6Jw$BQ2" resolve="TERM" />
                  </node>
                </node>
                <node concept="3clFbS" id="20WMLipxxlH" role="1bW5cS">
                  <node concept="3clFbF" id="20WMLipxybK" role="3cqZAp">
                    <node concept="1rXfSq" id="20WMLipxybL" role="3clFbG">
                      <ref role="37wK5l" node="6GYQG_SpvAG" resolve="_tellUni" />
                      <node concept="37vLTw" id="20WMLipxybM" role="37wK5m">
                        <ref role="3cqZAo" node="20WMLipxxnG" resolve="leftVal" />
                      </node>
                      <node concept="37vLTw" id="20WMLipxybN" role="37wK5m">
                        <ref role="3cqZAo" node="20WMLipxxG3" resolve="rightVal" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6MYr6Jw$BQ2" role="16eVyc">
        <property role="TrG5h" value="TERM" />
        <node concept="3uibUv" id="6MYr6Jw$Dzp" role="3ztrMU">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7K4Mb_JvMKB" role="jymVt" />
    <node concept="3clFb_" id="6GYQG_SpvAS" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="_askUni" />
      <node concept="37vLTG" id="6GYQG_SpvAT" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="16syzq" id="6MYr6JwA_zT" role="1tU5fm">
          <ref role="16sUi3" node="6MYr6JwAwZd" resolve="TERM" />
        </node>
      </node>
      <node concept="37vLTG" id="6GYQG_SpvAV" role="3clF46">
        <property role="TrG5h" value="rightVal" />
        <node concept="16syzq" id="6MYr6JwABl_" role="1tU5fm">
          <ref role="16sUi3" node="6MYr6JwAwZd" resolve="TERM" />
        </node>
      </node>
      <node concept="10P_77" id="4U_yxogC8WW" role="3clF45" />
      <node concept="3Tmbuc" id="6MYr6JwVawF" role="1B3o_S" />
      <node concept="3clFbS" id="6GYQG_SpvB3" role="3clF47">
        <node concept="3cpWs8" id="7K4Mb_J$cIU" role="3cqZAp">
          <node concept="3cpWsn" id="7K4Mb_J$cIV" role="3cpWs9">
            <property role="TrG5h" value="subs" />
            <node concept="3uibUv" id="7K4Mb_J$cIW" role="1tU5fm">
              <ref role="3uigEE" to="yt73:~Substitution" resolve="Substitution" />
            </node>
            <node concept="2YIFZM" id="7K4Mb_J$cIX" role="33vP2m">
              <ref role="1Pybhc" to="yt73:~Unification" resolve="Unification" />
              <ref role="37wK5l" to="yt73:~Unification.unify(jetbrains.mps.unification.Term,jetbrains.mps.unification.Term):jetbrains.mps.unification.Substitution" resolve="unify" />
              <node concept="37vLTw" id="7K4Mb_J$cIY" role="37wK5m">
                <ref role="3cqZAo" node="6GYQG_SpvAT" resolve="leftVal" />
              </node>
              <node concept="37vLTw" id="7K4Mb_J$cIZ" role="37wK5m">
                <ref role="3cqZAo" node="6GYQG_SpvAV" resolve="rightVal" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6xYPVrp_rZu" role="3cqZAp">
          <node concept="3clFbS" id="6xYPVrp_rZv" role="3clFbx">
            <node concept="3cpWs6" id="6xYPVrp_rZw" role="3cqZAp">
              <node concept="3clFbT" id="6xYPVrp_rZx" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6xYPVrp_rZy" role="3clFbw">
            <node concept="2OqwBi" id="6xYPVrp_rZz" role="3fr31v">
              <node concept="37vLTw" id="6xYPVrp_vQg" role="2Oq$k0">
                <ref role="3cqZAo" node="7K4Mb_J$cIV" resolve="subs" />
              </node>
              <node concept="liA8E" id="6xYPVrp_rZ_" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Substitution.isSuccessful():boolean" resolve="isSuccessful" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6xYPVrp_rZA" role="3cqZAp" />
        <node concept="1DcWWT" id="6xYPVrp_rZB" role="3cqZAp">
          <node concept="3clFbS" id="6xYPVrp_rZC" role="2LFqv$">
            <node concept="3clFbJ" id="7FFmDVAMcl6" role="3cqZAp">
              <node concept="3clFbS" id="7FFmDVAMcl8" role="3clFbx">
                <node concept="3clFbJ" id="6xYPVrp_rZM" role="3cqZAp">
                  <node concept="3clFbS" id="6xYPVrp_rZN" role="3clFbx">
                    <node concept="3cpWs6" id="6xYPVrp_rZO" role="3cqZAp">
                      <node concept="3clFbT" id="6xYPVrp_rZP" role="3cqZAk">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="6xYPVrp_rZQ" role="3clFbw">
                    <node concept="1rXfSq" id="6xYPVrp_rZR" role="3fr31v">
                      <ref role="37wK5l" node="6xYPVrp$baS" resolve="askLogicalUni" />
                      <node concept="2OqwBi" id="6MYr6JwBr3Q" role="37wK5m">
                        <node concept="37vLTw" id="6MYr6JwBr0K" role="2Oq$k0">
                          <ref role="3cqZAo" node="6MYr6JwATAl" resolve="logicalUnification" />
                        </node>
                        <node concept="liA8E" id="6MYr6JwBrpD" role="2OqNvi">
                          <ref role="37wK5l" to="bj13:~LogicalUnification.logical(jetbrains.mps.unification.Term):jetbrains.mps.logic.reactor.logical.SolverLogical" resolve="logical" />
                          <node concept="2OqwBi" id="6xYPVrp_rZW" role="37wK5m">
                            <node concept="37vLTw" id="6xYPVrp_rZX" role="2Oq$k0">
                              <ref role="3cqZAo" node="6xYPVrp_s03" resolve="bnd" />
                            </node>
                            <node concept="liA8E" id="6xYPVrp_rZY" role="2OqNvi">
                              <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6xYPVrp_s00" role="37wK5m">
                        <node concept="37vLTw" id="6xYPVrp_s01" role="2Oq$k0">
                          <ref role="3cqZAo" node="6xYPVrp_s03" resolve="bnd" />
                        </node>
                        <node concept="liA8E" id="6xYPVrp_s02" role="2OqNvi">
                          <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6MYr6JwSiJ2" role="3clFbw">
                <node concept="37vLTw" id="6MYr6JwShod" role="2Oq$k0">
                  <ref role="3cqZAo" node="6MYr6JwATAl" resolve="logicalUnification" />
                </node>
                <node concept="liA8E" id="6MYr6JwSk3X" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~LogicalUnification.isLogical(jetbrains.mps.unification.Term):boolean" resolve="isLogical" />
                  <node concept="2OqwBi" id="7FFmDVAMd61" role="37wK5m">
                    <node concept="37vLTw" id="7FFmDVAMd62" role="2Oq$k0">
                      <ref role="3cqZAo" node="6xYPVrp_s03" resolve="bnd" />
                    </node>
                    <node concept="liA8E" id="7FFmDVAMd63" role="2OqNvi">
                      <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6xYPVrp_s03" role="1Duv9x">
            <property role="TrG5h" value="bnd" />
            <node concept="3uibUv" id="6xYPVrp_s04" role="1tU5fm">
              <ref role="3uigEE" to="yt73:~Substitution$Binding" resolve="Substitution.Binding" />
            </node>
          </node>
          <node concept="2OqwBi" id="6xYPVrp_s05" role="1DdaDG">
            <node concept="37vLTw" id="6xYPVrp_s06" role="2Oq$k0">
              <ref role="3cqZAo" node="7K4Mb_J$cIV" resolve="subs" />
            </node>
            <node concept="liA8E" id="6xYPVrp_s07" role="2OqNvi">
              <ref role="37wK5l" to="yt73:~Substitution.bindings():java.util.Collection" resolve="bindings" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="24Vro6cSeKn" role="3cqZAp" />
        <node concept="3cpWs6" id="6xYPVrp_s09" role="3cqZAp">
          <node concept="3clFbT" id="6xYPVrp_s0a" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6MYr6JwAwZd" role="16eVyc">
        <property role="TrG5h" value="TERM" />
        <node concept="3uibUv" id="6MYr6JwA$iz" role="3ztrMU">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogC15$" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogC1eF" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="_askUni" />
      <node concept="37vLTG" id="4U_yxogC1eG" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="16syzq" id="6MYr6Jw$Nv3" role="1tU5fm">
          <ref role="16sUi3" node="6MYr6Jw$JBX" resolve="TERM" />
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogC1eI" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="6MYr6Jwz28z" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
          <node concept="16syzq" id="6MYr6Jw$Q2y" role="11_B2D">
            <ref role="16sUi3" node="6MYr6Jw$JBX" resolve="TERM" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="4U_yxogC8Kd" role="3clF45" />
      <node concept="3Tmbuc" id="6MYr6JwVcEQ" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogC1eP" role="3clF47">
        <node concept="3clFbF" id="1bm7a6EVoQx" role="3cqZAp">
          <node concept="1rXfSq" id="1bm7a6EVoQw" role="3clFbG">
            <ref role="37wK5l" node="4U_yxogC1Eh" resolve="_askUni" />
            <node concept="37vLTw" id="1bm7a6EVpBI" role="37wK5m">
              <ref role="3cqZAo" node="4U_yxogC1eI" resolve="right" />
            </node>
            <node concept="37vLTw" id="1bm7a6EVqdf" role="37wK5m">
              <ref role="3cqZAo" node="4U_yxogC1eG" resolve="leftVal" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6MYr6Jw$JBX" role="16eVyc">
        <property role="TrG5h" value="TERM" />
        <node concept="3uibUv" id="6MYr6Jw$Mbr" role="3ztrMU">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogC1eE" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogC1Eh" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="_askUni" />
      <node concept="37vLTG" id="4U_yxogC1Ek" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="6MYr6Jwz28A" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
          <node concept="16syzq" id="6MYr6Jw$YTR" role="11_B2D">
            <ref role="16sUi3" node="6MYr6Jw$T5v" resolve="TERM" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogC1Ei" role="3clF46">
        <property role="TrG5h" value="rightVal" />
        <node concept="16syzq" id="6MYr6Jw_0Jd" role="1tU5fm">
          <ref role="16sUi3" node="6MYr6Jw$T5v" resolve="TERM" />
        </node>
      </node>
      <node concept="10P_77" id="4U_yxogC8y$" role="3clF45" />
      <node concept="3Tmbuc" id="6MYr6JwVeTp" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogC1Er" role="3clF47">
        <node concept="3cpWs8" id="4U_yxogDnOi" role="3cqZAp">
          <node concept="3cpWsn" id="4U_yxogDnOj" role="3cpWs9">
            <property role="TrG5h" value="leftRepr" />
            <node concept="3uibUv" id="6MYr6Jwz28D" role="1tU5fm">
              <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
              <node concept="3qUE_q" id="6MYr6Jwz28E" role="11_B2D">
                <node concept="3uibUv" id="6MYr6Jwz28F" role="3qUE_r">
                  <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4U_yxogDnOl" role="33vP2m">
              <node concept="37vLTw" id="4U_yxogDock" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogC1Ek" resolve="left" />
              </node>
              <node concept="liA8E" id="4U_yxogDnOn" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~SolverLogical.findRoot():jetbrains.mps.logic.reactor.logical.SolverLogical" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4U_yxogDnOp" role="3cqZAp">
          <node concept="3clFbS" id="4U_yxogDnOq" role="3clFbx">
            <node concept="3cpWs6" id="4U_yxogDnOr" role="3cqZAp">
              <node concept="3clFbT" id="5oZZzbriPgw" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4U_yxogDnOt" role="3clFbw">
            <node concept="10Nm6u" id="4U_yxogDnOu" role="3uHU7w" />
            <node concept="2OqwBi" id="4U_yxogDnOv" role="3uHU7B">
              <node concept="37vLTw" id="4U_yxogDnOw" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogDnOj" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="4U_yxogDnOx" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6SkxsMzGbYZ" role="3cqZAp" />
        <node concept="3cpWs8" id="7K4Mb_J$cJJ" role="3cqZAp">
          <node concept="3cpWsn" id="7K4Mb_J$cJD" role="3cpWs9">
            <property role="TrG5h" value="left1" />
            <node concept="3uibUv" id="6MYr6JwzQtB" role="1tU5fm">
              <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
            </node>
            <node concept="2OqwBi" id="6SkxsMzGc5z" role="33vP2m">
              <node concept="37vLTw" id="3K_0akStpXO" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogDnOj" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="6SkxsMzGc5_" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7K4Mb_J$cJU" role="3cqZAp">
          <node concept="3cpWsn" id="7K4Mb_J$cJV" role="3cpWs9">
            <property role="TrG5h" value="subs" />
            <node concept="3uibUv" id="7K4Mb_J$cJW" role="1tU5fm">
              <ref role="3uigEE" to="yt73:~Substitution" resolve="Substitution" />
            </node>
            <node concept="2YIFZM" id="7K4Mb_J$cJX" role="33vP2m">
              <ref role="1Pybhc" to="yt73:~Unification" resolve="Unification" />
              <ref role="37wK5l" to="yt73:~Unification.unify(jetbrains.mps.unification.Term,jetbrains.mps.unification.Term):jetbrains.mps.unification.Substitution" resolve="unify" />
              <node concept="37vLTw" id="7K4Mb_J$cJY" role="37wK5m">
                <ref role="3cqZAo" node="7K4Mb_J$cJD" resolve="left1" />
              </node>
              <node concept="37vLTw" id="7K4Mb_J$cJZ" role="37wK5m">
                <ref role="3cqZAo" node="4U_yxogC1Ei" resolve="rightVal" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6xYPVrp_lGU" role="3cqZAp">
          <node concept="3clFbS" id="6xYPVrp_lGV" role="3clFbx">
            <node concept="3cpWs6" id="6xYPVrp_lGW" role="3cqZAp">
              <node concept="3clFbT" id="6xYPVrp_lGX" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6xYPVrp_lGY" role="3clFbw">
            <node concept="2OqwBi" id="6xYPVrp_lGZ" role="3fr31v">
              <node concept="37vLTw" id="6xYPVrp_lH0" role="2Oq$k0">
                <ref role="3cqZAo" node="7K4Mb_J$cJV" resolve="subs" />
              </node>
              <node concept="liA8E" id="6xYPVrp_lH1" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Substitution.isSuccessful():boolean" resolve="isSuccessful" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6xYPVrp_lH2" role="3cqZAp" />
        <node concept="1DcWWT" id="6xYPVrp_lH3" role="3cqZAp">
          <node concept="3clFbS" id="6xYPVrp_lH4" role="2LFqv$">
            <node concept="3clFbJ" id="6xYPVrp_lH5" role="3cqZAp">
              <node concept="3clFbS" id="6xYPVrp_lH6" role="3clFbx">
                <node concept="3N13vt" id="6xYPVrp_lH7" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="6xYPVrp_lHe" role="3clFbw">
                <node concept="2OqwBi" id="6xYPVrp_lHf" role="3uHU7B">
                  <node concept="37vLTw" id="6xYPVrp_lHg" role="2Oq$k0">
                    <ref role="3cqZAo" node="6xYPVrp_lH_" resolve="bnd" />
                  </node>
                  <node concept="liA8E" id="6xYPVrp_lHh" role="2OqNvi">
                    <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
                  </node>
                </node>
                <node concept="37vLTw" id="6xYPVrp_lHi" role="3uHU7w">
                  <ref role="3cqZAo" node="4U_yxogDnOj" resolve="leftRepr" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6xYPVrp_lHj" role="3cqZAp" />
            <node concept="3clFbJ" id="7FFmDVAJzUP" role="3cqZAp">
              <node concept="3clFbS" id="7FFmDVAJzUR" role="3clFbx">
                <node concept="3clFbJ" id="6xYPVrp_lHk" role="3cqZAp">
                  <node concept="3clFbS" id="6xYPVrp_lHl" role="3clFbx">
                    <node concept="3cpWs6" id="6xYPVrp_lHm" role="3cqZAp">
                      <node concept="3clFbT" id="6xYPVrp_lHn" role="3cqZAk">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="6xYPVrp_lHo" role="3clFbw">
                    <node concept="1rXfSq" id="6xYPVrp_lHp" role="3fr31v">
                      <ref role="37wK5l" node="6xYPVrp$baS" resolve="askLogicalUni" />
                      <node concept="2OqwBi" id="6MYr6JwBrCz" role="37wK5m">
                        <node concept="37vLTw" id="6MYr6JwBr_r" role="2Oq$k0">
                          <ref role="3cqZAo" node="6MYr6JwATAl" resolve="logicalUnification" />
                        </node>
                        <node concept="liA8E" id="6MYr6JwBrFD" role="2OqNvi">
                          <ref role="37wK5l" to="bj13:~LogicalUnification.logical(jetbrains.mps.unification.Term):jetbrains.mps.logic.reactor.logical.SolverLogical" resolve="logical" />
                          <node concept="2OqwBi" id="6xYPVrp_lHu" role="37wK5m">
                            <node concept="37vLTw" id="6xYPVrp_lHv" role="2Oq$k0">
                              <ref role="3cqZAo" node="6xYPVrp_lH_" resolve="bnd" />
                            </node>
                            <node concept="liA8E" id="6xYPVrp_lHw" role="2OqNvi">
                              <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6xYPVrp_lHy" role="37wK5m">
                        <node concept="37vLTw" id="6xYPVrp_lHz" role="2Oq$k0">
                          <ref role="3cqZAo" node="6xYPVrp_lH_" resolve="bnd" />
                        </node>
                        <node concept="liA8E" id="6xYPVrp_lH$" role="2OqNvi">
                          <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6MYr6JwSs0w" role="3clFbw">
                <node concept="37vLTw" id="6MYr6JwSq_O" role="2Oq$k0">
                  <ref role="3cqZAo" node="6MYr6JwATAl" resolve="logicalUnification" />
                </node>
                <node concept="liA8E" id="6MYr6JwStqX" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~LogicalUnification.isLogical(jetbrains.mps.unification.Term):boolean" resolve="isLogical" />
                  <node concept="2OqwBi" id="7FFmDVAJ$YW" role="37wK5m">
                    <node concept="37vLTw" id="7FFmDVAJ$YX" role="2Oq$k0">
                      <ref role="3cqZAo" node="6xYPVrp_lH_" resolve="bnd" />
                    </node>
                    <node concept="liA8E" id="7FFmDVAJ$YY" role="2OqNvi">
                      <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6xYPVrp_lH_" role="1Duv9x">
            <property role="TrG5h" value="bnd" />
            <node concept="3uibUv" id="6xYPVrp_lHA" role="1tU5fm">
              <ref role="3uigEE" to="yt73:~Substitution$Binding" resolve="Substitution.Binding" />
            </node>
          </node>
          <node concept="2OqwBi" id="6xYPVrp_lHB" role="1DdaDG">
            <node concept="37vLTw" id="6xYPVrp_lHC" role="2Oq$k0">
              <ref role="3cqZAo" node="7K4Mb_J$cJV" resolve="subs" />
            </node>
            <node concept="liA8E" id="6xYPVrp_lHD" role="2OqNvi">
              <ref role="37wK5l" to="yt73:~Substitution.bindings():java.util.Collection" resolve="bindings" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6xYPVrp_lHE" role="3cqZAp" />
        <node concept="3cpWs6" id="6xYPVrp_lHF" role="3cqZAp">
          <node concept="3clFbT" id="6xYPVrp_lHG" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6MYr6Jw$T5v" role="16eVyc">
        <property role="TrG5h" value="TERM" />
        <node concept="3uibUv" id="6MYr6Jw$XyJ" role="3ztrMU">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7txc83pee6D" role="jymVt" />
    <node concept="3clFb_" id="4U_yxogC2zx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="_askUni" />
      <node concept="37vLTG" id="4U_yxogC2zy" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="6MYr6Jwz28G" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
          <node concept="16syzq" id="6MYr6Jw_7Kb" role="11_B2D">
            <ref role="16sUi3" node="6MYr6Jw_3D$" resolve="TERM" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4U_yxogC2z$" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="6MYr6Jwz28J" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
          <node concept="16syzq" id="6MYr6Jw_9Ww" role="11_B2D">
            <ref role="16sUi3" node="6MYr6Jw_3D$" resolve="TERM" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="4U_yxogC8eN" role="3clF45" />
      <node concept="3Tmbuc" id="6MYr6JwVhky" role="1B3o_S" />
      <node concept="3clFbS" id="4U_yxogC2zF" role="3clF47">
        <node concept="3clFbJ" id="4U_yxogC7xg" role="3cqZAp">
          <node concept="3clFbS" id="4U_yxogC7xh" role="3clFbx">
            <node concept="3cpWs6" id="4U_yxogC7Zq" role="3cqZAp">
              <node concept="3clFbT" id="4U_yxogC80f" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4U_yxogC7D9" role="3clFbw">
            <node concept="37vLTw" id="4U_yxogC7P8" role="3uHU7w">
              <ref role="3cqZAo" node="4U_yxogC2z$" resolve="right" />
            </node>
            <node concept="37vLTw" id="4U_yxogC7yw" role="3uHU7B">
              <ref role="3cqZAo" node="4U_yxogC2zy" resolve="left" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4U_yxogCjFq" role="3cqZAp" />
        <node concept="3cpWs8" id="7d$oK1$nL7E" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$nL7F" role="3cpWs9">
            <property role="TrG5h" value="leftRepr" />
            <node concept="3uibUv" id="6MYr6Jwz28M" role="1tU5fm">
              <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
              <node concept="3qUE_q" id="6MYr6Jwz28N" role="11_B2D">
                <node concept="3uibUv" id="6MYr6Jwz28O" role="3qUE_r">
                  <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7d$oK1$nL7H" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$nL7I" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogC2zy" resolve="left" />
              </node>
              <node concept="liA8E" id="7d$oK1$nL7J" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~SolverLogical.findRoot():jetbrains.mps.logic.reactor.logical.SolverLogical" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7d$oK1$nLDM" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$nLDN" role="3cpWs9">
            <property role="TrG5h" value="rightRepr" />
            <node concept="3uibUv" id="6MYr6Jwz28P" role="1tU5fm">
              <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
              <node concept="3qUE_q" id="6MYr6Jwz28Q" role="11_B2D">
                <node concept="3uibUv" id="6MYr6Jwz28R" role="3qUE_r">
                  <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7d$oK1$nLDP" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$nLDQ" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogC2z$" resolve="right" />
              </node>
              <node concept="liA8E" id="7d$oK1$nLDR" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~SolverLogical.findRoot():jetbrains.mps.logic.reactor.logical.SolverLogical" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4U_yxogCA7q" role="3cqZAp">
          <node concept="3clFbS" id="4U_yxogCA7t" role="3clFbx">
            <node concept="3cpWs6" id="4U_yxogCANm" role="3cqZAp">
              <node concept="3clFbT" id="4U_yxogCAQD" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4U_yxogCAKd" role="3clFbw">
            <node concept="37vLTw" id="7d$oK1$oi_v" role="3uHU7w">
              <ref role="3cqZAo" node="7d$oK1$nLDN" resolve="rightRepr" />
            </node>
            <node concept="37vLTw" id="7d$oK1$oicb" role="3uHU7B">
              <ref role="3cqZAo" node="7d$oK1$nL7F" resolve="leftRepr" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5oZZzbrizbG" role="3cqZAp">
          <node concept="3clFbS" id="5oZZzbrizbH" role="3clFbx">
            <node concept="3cpWs6" id="5oZZzbrizbI" role="3cqZAp">
              <node concept="3clFbT" id="7d9KVSzW7Za" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="5oZZzbrizbK" role="3clFbw">
            <node concept="3clFbC" id="5oZZzbrizbL" role="3uHU7w">
              <node concept="10Nm6u" id="5oZZzbrizbM" role="3uHU7w" />
              <node concept="2OqwBi" id="5oZZzbrizbN" role="3uHU7B">
                <node concept="37vLTw" id="7d$oK1$ojqV" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$nLDN" resolve="rightRepr" />
                </node>
                <node concept="liA8E" id="5oZZzbrizbP" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="5oZZzbrizbQ" role="3uHU7B">
              <node concept="2OqwBi" id="5oZZzbrizbR" role="3uHU7B">
                <node concept="37vLTw" id="7d$oK1$oiZM" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$nL7F" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="5oZZzbrizbT" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
                </node>
              </node>
              <node concept="10Nm6u" id="5oZZzbrizbU" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4U_yxogDeXH" role="3cqZAp" />
        <node concept="3cpWs8" id="7K4Mb_J$cJb" role="3cqZAp">
          <node concept="3cpWsn" id="7K4Mb_J$cJ5" role="3cpWs9">
            <property role="TrG5h" value="left1" />
            <node concept="3uibUv" id="6MYr6JwzQtC" role="1tU5fm">
              <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
            </node>
            <node concept="2OqwBi" id="1bm7a6EWb4t" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$okp6" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$nL7F" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="1bm7a6EWb4v" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7K4Mb_J$cJj" role="3cqZAp">
          <node concept="3cpWsn" id="7K4Mb_J$cJd" role="3cpWs9">
            <property role="TrG5h" value="right1" />
            <node concept="3uibUv" id="6MYr6JwzQtD" role="1tU5fm">
              <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
            </node>
            <node concept="2OqwBi" id="1bm7a6EWb4w" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$okSZ" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$nLDN" resolve="rightRepr" />
              </node>
              <node concept="liA8E" id="1bm7a6EWb4y" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.value():java.lang.Object" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7K4Mb_J$cJu" role="3cqZAp">
          <node concept="3cpWsn" id="7K4Mb_J$cJv" role="3cpWs9">
            <property role="TrG5h" value="subs" />
            <node concept="3uibUv" id="7K4Mb_J$cJw" role="1tU5fm">
              <ref role="3uigEE" to="yt73:~Substitution" resolve="Substitution" />
            </node>
            <node concept="2YIFZM" id="7K4Mb_J$cJx" role="33vP2m">
              <ref role="1Pybhc" to="yt73:~Unification" resolve="Unification" />
              <ref role="37wK5l" to="yt73:~Unification.unify(jetbrains.mps.unification.Term,jetbrains.mps.unification.Term):jetbrains.mps.unification.Substitution" resolve="unify" />
              <node concept="37vLTw" id="7K4Mb_J$cJy" role="37wK5m">
                <ref role="3cqZAo" node="7K4Mb_J$cJ5" resolve="left1" />
              </node>
              <node concept="37vLTw" id="7K4Mb_J$cJz" role="37wK5m">
                <ref role="3cqZAo" node="7K4Mb_J$cJd" resolve="right1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6xYPVrp$4Ed" role="3cqZAp">
          <node concept="3clFbS" id="6xYPVrp$4Ef" role="3clFbx">
            <node concept="3cpWs6" id="6xYPVrp$6uI" role="3cqZAp">
              <node concept="3clFbT" id="6xYPVrp$78l" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6xYPVrp$5Oo" role="3clFbw">
            <node concept="2OqwBi" id="6xYPVrp$5Oq" role="3fr31v">
              <node concept="37vLTw" id="6xYPVrp$5Or" role="2Oq$k0">
                <ref role="3cqZAo" node="7K4Mb_J$cJv" resolve="subs" />
              </node>
              <node concept="liA8E" id="6xYPVrp$5Os" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Substitution.isSuccessful():boolean" resolve="isSuccessful" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6xYPVrp$7Mc" role="3cqZAp" />
        <node concept="1DcWWT" id="6xYPVrp_5wu" role="3cqZAp">
          <node concept="3clFbS" id="6xYPVrp_5ww" role="2LFqv$">
            <node concept="3clFbJ" id="6xYPVrp_6jE" role="3cqZAp">
              <node concept="3clFbS" id="6xYPVrp_6jF" role="3clFbx">
                <node concept="3N13vt" id="6xYPVrp_7sh" role="3cqZAp" />
              </node>
              <node concept="22lmx$" id="6xYPVrp_6M3" role="3clFbw">
                <node concept="3clFbC" id="6xYPVrp_7oR" role="3uHU7w">
                  <node concept="37vLTw" id="6xYPVrp_7qM" role="3uHU7w">
                    <ref role="3cqZAo" node="7d$oK1$nLDN" resolve="rightRepr" />
                  </node>
                  <node concept="2OqwBi" id="6xYPVrp_77g" role="3uHU7B">
                    <node concept="37vLTw" id="6xYPVrp_6NA" role="2Oq$k0">
                      <ref role="3cqZAo" node="6xYPVrp_5wy" resolve="bnd" />
                    </node>
                    <node concept="liA8E" id="6xYPVrp_7dq" role="2OqNvi">
                      <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="6xYPVrp_6_Q" role="3uHU7B">
                  <node concept="2OqwBi" id="6xYPVrp_6ld" role="3uHU7B">
                    <node concept="37vLTw" id="6xYPVrp_6kh" role="2Oq$k0">
                      <ref role="3cqZAo" node="6xYPVrp_5wy" resolve="bnd" />
                    </node>
                    <node concept="liA8E" id="6xYPVrp_6qV" role="2OqNvi">
                      <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="6xYPVrp_6Bj" role="3uHU7w">
                    <ref role="3cqZAo" node="7d$oK1$nL7F" resolve="leftRepr" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6xYPVrp_7st" role="3cqZAp" />
            <node concept="3clFbJ" id="7FFmDVAJC2w" role="3cqZAp">
              <node concept="3clFbS" id="7FFmDVAJC2y" role="3clFbx">
                <node concept="3clFbJ" id="6xYPVrp_7w8" role="3cqZAp">
                  <node concept="3clFbS" id="6xYPVrp_7wa" role="3clFbx">
                    <node concept="3cpWs6" id="6xYPVrp_8fn" role="3cqZAp">
                      <node concept="3clFbT" id="6xYPVrp_8LE" role="3cqZAk">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="6xYPVrp_7yc" role="3clFbw">
                    <node concept="1rXfSq" id="6xYPVrp_7z8" role="3fr31v">
                      <ref role="37wK5l" node="6xYPVrp$baS" resolve="askLogicalUni" />
                      <node concept="2OqwBi" id="6MYr6JwBrS8" role="37wK5m">
                        <node concept="37vLTw" id="6MYr6JwBrOW" role="2Oq$k0">
                          <ref role="3cqZAo" node="6MYr6JwATAl" resolve="logicalUnification" />
                        </node>
                        <node concept="liA8E" id="6MYr6JwBscD" role="2OqNvi">
                          <ref role="37wK5l" to="bj13:~LogicalUnification.logical(jetbrains.mps.unification.Term):jetbrains.mps.logic.reactor.logical.SolverLogical" resolve="logical" />
                          <node concept="2OqwBi" id="6xYPVrp_7R2" role="37wK5m">
                            <node concept="37vLTw" id="6xYPVrp_7R3" role="2Oq$k0">
                              <ref role="3cqZAo" node="6xYPVrp_5wy" resolve="bnd" />
                            </node>
                            <node concept="liA8E" id="6xYPVrp_7R4" role="2OqNvi">
                              <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6xYPVrp_83v" role="37wK5m">
                        <node concept="37vLTw" id="6xYPVrp_81m" role="2Oq$k0">
                          <ref role="3cqZAo" node="6xYPVrp_5wy" resolve="bnd" />
                        </node>
                        <node concept="liA8E" id="6xYPVrp_8db" role="2OqNvi">
                          <ref role="37wK5l" to="yt73:~Substitution$Binding.term():jetbrains.mps.unification.Term" resolve="term" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6MYr6JwSnkd" role="3clFbw">
                <node concept="37vLTw" id="6MYr6JwSlNa" role="2Oq$k0">
                  <ref role="3cqZAo" node="6MYr6JwATAl" resolve="logicalUnification" />
                </node>
                <node concept="liA8E" id="6MYr6JwSoNk" role="2OqNvi">
                  <ref role="37wK5l" to="bj13:~LogicalUnification.isLogical(jetbrains.mps.unification.Term):boolean" resolve="isLogical" />
                  <node concept="2OqwBi" id="7FFmDVAJE92" role="37wK5m">
                    <node concept="37vLTw" id="7FFmDVAJE93" role="2Oq$k0">
                      <ref role="3cqZAo" node="6xYPVrp_5wy" resolve="bnd" />
                    </node>
                    <node concept="liA8E" id="7FFmDVAJE94" role="2OqNvi">
                      <ref role="37wK5l" to="yt73:~Substitution$Binding.var():jetbrains.mps.unification.Term" resolve="var" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6xYPVrp_5wy" role="1Duv9x">
            <property role="TrG5h" value="bnd" />
            <node concept="3uibUv" id="6xYPVrp_5wA" role="1tU5fm">
              <ref role="3uigEE" to="yt73:~Substitution$Binding" resolve="Substitution.Binding" />
            </node>
          </node>
          <node concept="2OqwBi" id="6xYPVrp_5wB" role="1DdaDG">
            <node concept="37vLTw" id="6xYPVrp_5wC" role="2Oq$k0">
              <ref role="3cqZAo" node="7K4Mb_J$cJv" resolve="subs" />
            </node>
            <node concept="liA8E" id="6xYPVrp_5wD" role="2OqNvi">
              <ref role="37wK5l" to="yt73:~Substitution.bindings():java.util.Collection" resolve="bindings" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="24Vro6cSyV3" role="3cqZAp" />
        <node concept="3cpWs6" id="3HJTsBn3F6H" role="3cqZAp">
          <node concept="3clFbT" id="6xYPVrp_bB3" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6MYr6Jw_3D$" role="16eVyc">
        <property role="TrG5h" value="TERM" />
        <node concept="3uibUv" id="6MYr6Jw_6rP" role="3ztrMU">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6xYPVrp$ahc" role="jymVt" />
    <node concept="3clFb_" id="6xYPVrp$baS" role="jymVt">
      <property role="TrG5h" value="askLogicalUni" />
      <node concept="37vLTG" id="6xYPVrp_1P$" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="6xYPVrp_2ET" role="1tU5fm">
          <ref role="3uigEE" to="bj13:~Logical" resolve="Logical" />
          <node concept="3qTvmN" id="6xYPVrp_31s" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="6xYPVrp_37O" role="3clF46">
        <property role="TrG5h" value="bound" />
        <node concept="16syzq" id="6MYr6JwM2_H" role="1tU5fm">
          <ref role="16sUi3" node="6MYr6JwM1_T" resolve="TERM" />
        </node>
      </node>
      <node concept="10P_77" id="6xYPVrp$cck" role="3clF45" />
      <node concept="3Tm6S6" id="6xYPVrp$spZ" role="1B3o_S" />
      <node concept="3clFbS" id="6xYPVrp$baW" role="3clF47">
        <node concept="3clFbJ" id="6MYr6Jy8zYq" role="3cqZAp">
          <node concept="3clFbS" id="6MYr6Jy8zYs" role="3clFbx">
            <node concept="3cpWs6" id="6MYr6Jy8_fg" role="3cqZAp">
              <node concept="3clFbT" id="6MYr6Jy8AkY" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6MYr6Jy8_4n" role="3clFbw">
            <node concept="2OqwBi" id="6MYr6Jy8_aP" role="3fr31v">
              <node concept="37vLTw" id="6MYr6Jy8_8Y" role="2Oq$k0">
                <ref role="3cqZAo" node="6xYPVrp_1P$" resolve="logical" />
              </node>
              <node concept="liA8E" id="6MYr6Jy8_cI" role="2OqNvi">
                <ref role="37wK5l" to="bj13:~Logical.isBound():boolean" resolve="isBound" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2T1p0CFz5tY" role="3cqZAp" />
        <node concept="3clFbJ" id="2T1p0CFz6an" role="3cqZAp">
          <node concept="3clFbS" id="2T1p0CFz6ao" role="3clFbx">
            <node concept="3cpWs6" id="2T1p0CFz6ap" role="3cqZAp">
              <node concept="1rXfSq" id="2T1p0CFz6aq" role="3cqZAk">
                <ref role="37wK5l" node="4U_yxogC1Eh" resolve="_askUni" />
                <node concept="10QFUN" id="2T1p0CFz6ar" role="37wK5m">
                  <node concept="3uibUv" id="2T1p0CFz6as" role="10QFUM">
                    <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                    <node concept="16syzq" id="2T1p0CFz6at" role="11_B2D">
                      <ref role="16sUi3" node="6MYr6JwM1_T" resolve="TERM" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2T1p0CFz6au" role="10QFUP">
                    <ref role="3cqZAo" node="6xYPVrp_1P$" resolve="logical" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2T1p0CFz6av" role="37wK5m">
                  <node concept="37vLTw" id="2T1p0CFz6aw" role="2Oq$k0">
                    <ref role="3cqZAo" node="6MYr6JwATAl" resolve="logicalUnification" />
                  </node>
                  <node concept="liA8E" id="2T1p0CFz6ax" role="2OqNvi">
                    <ref role="37wK5l" to="bj13:~LogicalUnification.asRoot(jetbrains.mps.unification.Term):jetbrains.mps.unification.Term" resolve="asRoot" />
                    <node concept="37vLTw" id="2T1p0CFz6ay" role="37wK5m">
                      <ref role="3cqZAo" node="6xYPVrp_37O" resolve="bound" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2T1p0CFz6az" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="2T1p0CFz6a$" role="3clFbw">
            <node concept="37vLTw" id="2T1p0CFz6a_" role="2Oq$k0">
              <ref role="3cqZAo" node="6xYPVrp_37O" resolve="bound" />
            </node>
            <node concept="liA8E" id="2T1p0CFz6aA" role="2OqNvi">
              <ref role="37wK5l" to="yt73:~Term.is(jetbrains.mps.unification.Term$Kind):boolean" resolve="is" />
              <node concept="Rm8GO" id="2T1p0CFz6aB" role="37wK5m">
                <ref role="1Px2BO" to="yt73:~Term$Kind" resolve="Term.Kind" />
                <ref role="Rm8GQ" to="yt73:~Term$Kind.FUN" resolve="FUN" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2T1p0CFz6aC" role="3eNLev">
            <node concept="3clFbS" id="2T1p0CFz6aD" role="3eOfB_">
              <node concept="3cpWs6" id="2T1p0CFz6aE" role="3cqZAp">
                <node concept="1rXfSq" id="2T1p0CFz6aF" role="3cqZAk">
                  <ref role="37wK5l" node="4U_yxogC2zx" resolve="_askUni" />
                  <node concept="10QFUN" id="2T1p0CFz6aG" role="37wK5m">
                    <node concept="3uibUv" id="2T1p0CFz6aH" role="10QFUM">
                      <ref role="3uigEE" to="bj13:~SolverLogical" resolve="SolverLogical" />
                      <node concept="16syzq" id="2T1p0CFz6aI" role="11_B2D">
                        <ref role="16sUi3" node="6MYr6JwM1_T" resolve="TERM" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2T1p0CFz6aJ" role="10QFUP">
                      <ref role="3cqZAo" node="6xYPVrp_1P$" resolve="logical" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2T1p0CFz6aK" role="37wK5m">
                    <node concept="37vLTw" id="2T1p0CFz6aL" role="2Oq$k0">
                      <ref role="3cqZAo" node="6MYr6JwATAl" resolve="logicalUnification" />
                    </node>
                    <node concept="liA8E" id="2T1p0CFz6aM" role="2OqNvi">
                      <ref role="37wK5l" to="bj13:~LogicalUnification.logical(jetbrains.mps.unification.Term):jetbrains.mps.logic.reactor.logical.SolverLogical" resolve="logical" />
                      <node concept="37vLTw" id="2T1p0CFz6aN" role="37wK5m">
                        <ref role="3cqZAo" node="6xYPVrp_37O" resolve="bound" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2T1p0CFz6aO" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="2T1p0CFz6aP" role="3eO9$A">
              <node concept="37vLTw" id="2T1p0CFz6aQ" role="2Oq$k0">
                <ref role="3cqZAo" node="6xYPVrp_37O" resolve="bound" />
              </node>
              <node concept="liA8E" id="2T1p0CFz6aR" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Term.is(jetbrains.mps.unification.Term$Kind):boolean" resolve="is" />
                <node concept="Rm8GO" id="2T1p0CFz6aS" role="37wK5m">
                  <ref role="1Px2BO" to="yt73:~Term$Kind" resolve="Term.Kind" />
                  <ref role="Rm8GQ" to="yt73:~Term$Kind.VAR" resolve="VAR" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="2T1p0CFz6aT" role="9aQIa">
            <node concept="3clFbS" id="2T1p0CFz6aU" role="9aQI4">
              <node concept="YS8fn" id="2T1p0CFz6aV" role="3cqZAp">
                <node concept="2ShNRf" id="2T1p0CFz6aW" role="YScLw">
                  <node concept="1pGfFk" id="2T1p0CFz6aX" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                    <node concept="3cpWs3" id="2T1p0CFz6aY" role="37wK5m">
                      <node concept="Xl_RD" id="2T1p0CFz6aZ" role="3uHU7w">
                        <property role="Xl_RC" value="'" />
                      </node>
                      <node concept="3cpWs3" id="2T1p0CFz6b0" role="3uHU7B">
                        <node concept="Xl_RD" id="2T1p0CFz6b1" role="3uHU7B">
                          <property role="Xl_RC" value="node is neither a term nor a var: '" />
                        </node>
                        <node concept="37vLTw" id="2T1p0CFz6b2" role="3uHU7w">
                          <ref role="3cqZAo" node="6xYPVrp_37O" resolve="bound" />
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
      <node concept="16euLQ" id="6MYr6JwM1_T" role="16eVyc">
        <property role="TrG5h" value="TERM" />
        <node concept="3uibUv" id="6MYr6JwM2t7" role="3ztrMU">
          <ref role="3uigEE" to="yt73:~Term" resolve="Term" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4U_yxogC2zw" role="jymVt" />
    <node concept="3clFb_" id="1MWQR5SpMLA" role="jymVt">
      <property role="TrG5h" value="formatMessage" />
      <node concept="3Tm6S6" id="1MWQR5SpMLB" role="1B3o_S" />
      <node concept="17QB3L" id="1MWQR5SpMLC" role="3clF45" />
      <node concept="37vLTG" id="1MWQR5SpMLu" role="3clF46">
        <property role="TrG5h" value="subs" />
        <node concept="3uibUv" id="1MWQR5SpMLv" role="1tU5fm">
          <ref role="3uigEE" to="yt73:~Substitution" resolve="Substitution" />
        </node>
      </node>
      <node concept="3clFbS" id="1MWQR5SpMKW" role="3clF47">
        <node concept="3cpWs8" id="1MWQR5SpMKZ" role="3cqZAp">
          <node concept="3cpWsn" id="1MWQR5SpML0" role="3cpWs9">
            <property role="TrG5h" value="msg" />
            <node concept="17QB3L" id="1MWQR5SpML1" role="1tU5fm" />
            <node concept="2OqwBi" id="1MWQR5SpML2" role="33vP2m">
              <node concept="2OqwBi" id="1MWQR5SpML3" role="2Oq$k0">
                <node concept="37vLTw" id="1MWQR5SpMLw" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MWQR5SpMLu" resolve="subs" />
                </node>
                <node concept="liA8E" id="1MWQR5SpML5" role="2OqNvi">
                  <ref role="37wK5l" to="yt73:~Substitution.failureCause():jetbrains.mps.unification.Substitution$FailureCause" resolve="failureCause" />
                </node>
              </node>
              <node concept="liA8E" id="1MWQR5SpML6" role="2OqNvi">
                <ref role="37wK5l" to="yt73:~Substitution$FailureCause.toString():java.lang.String" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1MWQR5SpML7" role="3cqZAp">
          <node concept="3clFbS" id="1MWQR5SpML8" role="3clFbx">
            <node concept="3clFbF" id="1MWQR5SpML9" role="3cqZAp">
              <node concept="37vLTI" id="1MWQR5SpMLa" role="3clFbG">
                <node concept="2YIFZM" id="1MWQR5SpMLb" role="37vLTx">
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                  <node concept="Xl_RD" id="1MWQR5SpMLc" role="37wK5m">
                    <property role="Xl_RC" value="'%s' != '%s'" />
                  </node>
                  <node concept="2OqwBi" id="1MWQR5SpMLd" role="37wK5m">
                    <node concept="37vLTw" id="1MWQR5SpMLy" role="2Oq$k0">
                      <ref role="3cqZAo" node="1MWQR5SpMLu" resolve="subs" />
                    </node>
                    <node concept="liA8E" id="1MWQR5SpMLf" role="2OqNvi">
                      <ref role="37wK5l" to="yt73:~Substitution.failureDetails():java.lang.Object[]" resolve="failureDetails" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1MWQR5SpMLg" role="37vLTJ">
                  <ref role="3cqZAo" node="1MWQR5SpML0" resolve="msg" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="1MWQR5SpMLh" role="3clFbw">
            <node concept="3clFbC" id="1MWQR5SpMLi" role="3uHU7B">
              <node concept="Rm8GO" id="1MWQR5SpMLj" role="3uHU7w">
                <ref role="1Px2BO" to="yt73:~Substitution$FailureCause" resolve="Substitution.FailureCause" />
                <ref role="Rm8GQ" to="yt73:~Substitution$FailureCause.SYMBOL_CLASH" resolve="SYMBOL_CLASH" />
              </node>
              <node concept="2OqwBi" id="1MWQR5SpMLk" role="3uHU7B">
                <node concept="37vLTw" id="1MWQR5SpMLx" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MWQR5SpMLu" resolve="subs" />
                </node>
                <node concept="liA8E" id="1MWQR5SpMLm" role="2OqNvi">
                  <ref role="37wK5l" to="yt73:~Substitution.failureCause():jetbrains.mps.unification.Substitution$FailureCause" resolve="failureCause" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="1MWQR5SpMLn" role="3uHU7w">
              <node concept="10Nm6u" id="1MWQR5SpMLo" role="3uHU7w" />
              <node concept="2OqwBi" id="1MWQR5SpMLp" role="3uHU7B">
                <node concept="37vLTw" id="1MWQR5SpMLz" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MWQR5SpMLu" resolve="subs" />
                </node>
                <node concept="liA8E" id="1MWQR5SpMLr" role="2OqNvi">
                  <ref role="37wK5l" to="yt73:~Substitution.failureDetails():java.lang.Object[]" resolve="failureDetails" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1MWQR5SpMLs" role="3cqZAp">
          <node concept="37vLTw" id="1MWQR5SpMLt" role="3cqZAk">
            <ref role="3cqZAo" node="1MWQR5SpML0" resolve="msg" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1bm7a6EU93j" role="jymVt" />
    <node concept="312cEg" id="6MYr6JwATAl" role="jymVt">
      <property role="TrG5h" value="logicalUnification" />
      <node concept="3Tm6S6" id="6MYr6JwATAm" role="1B3o_S" />
      <node concept="3uibUv" id="6MYr6JwAVkG" role="1tU5fm">
        <ref role="3uigEE" to="bj13:~LogicalUnification" resolve="LogicalUnification" />
      </node>
    </node>
    <node concept="2tJIrI" id="6MYr6JwBO6F" role="jymVt" />
  </node>
  <node concept="312cEu" id="4psy6tqstt4">
    <property role="TrG5h" value="NoSolver" />
    <node concept="2tJIrI" id="4psy6tqstCz" role="jymVt" />
    <node concept="3clFb_" id="4psy6tqstCO" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="ask" />
      <node concept="37vLTG" id="4psy6tqstCP" role="3clF46">
        <property role="TrG5h" value="invocation" />
        <node concept="3uibUv" id="4psy6tqstCQ" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
        </node>
      </node>
      <node concept="10P_77" id="4psy6tqstCR" role="3clF45" />
      <node concept="3Tm1VV" id="4psy6tqstCS" role="1B3o_S" />
      <node concept="3clFbS" id="4psy6tqstCW" role="3clF47">
        <node concept="YS8fn" id="4psy6tqsvx0" role="3cqZAp">
          <node concept="2ShNRf" id="4psy6tqsvy2" role="YScLw">
            <node concept="1pGfFk" id="4psy6tqswHd" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4psy6tqstCX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4psy6tqsvc2" role="jymVt" />
    <node concept="3clFb_" id="4psy6tqstDg" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tell" />
      <node concept="3cqZAl" id="4psy6tqstDh" role="3clF45" />
      <node concept="3Tm1VV" id="4psy6tqstDi" role="1B3o_S" />
      <node concept="37vLTG" id="4psy6tqstDk" role="3clF46">
        <property role="TrG5h" value="invocation" />
        <node concept="3uibUv" id="4psy6tqstDl" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
        </node>
      </node>
      <node concept="3clFbS" id="4psy6tqstDp" role="3clF47">
        <node concept="YS8fn" id="4psy6tqswKP" role="3cqZAp">
          <node concept="2ShNRf" id="4psy6tqswKQ" role="YScLw">
            <node concept="1pGfFk" id="4psy6tqswKR" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4psy6tqstDq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4psy6tqsuX1" role="jymVt" />
    <node concept="3clFb_" id="4psy6tqstD0" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="predicate" />
      <node concept="37vLTG" id="4psy6tqstD1" role="3clF46">
        <property role="TrG5h" value="predicateSymbol" />
        <node concept="3uibUv" id="4psy6tqstD2" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="4psy6tqstD3" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="4psy6tqstD4" role="1tU5fm">
          <node concept="3uibUv" id="4psy6tqstD5" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4psy6tqstD6" role="3clF45">
        <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
      </node>
      <node concept="3Tm1VV" id="4psy6tqstD7" role="1B3o_S" />
      <node concept="3clFbS" id="4psy6tqstDc" role="3clF47">
        <node concept="YS8fn" id="4psy6tqswOD" role="3cqZAp">
          <node concept="2ShNRf" id="4psy6tqswOE" role="YScLw">
            <node concept="1pGfFk" id="4psy6tqswOF" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4psy6tqstDd" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4psy6tqstt5" role="1B3o_S" />
    <node concept="3uibUv" id="4psy6tqstwo" role="EKbjA">
      <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
    </node>
  </node>
  <node concept="312cEu" id="7rf49Nglh1q">
    <property role="TrG5h" value="NotSolver" />
    <node concept="2tJIrI" id="7rf49NgligE" role="jymVt" />
    <node concept="3clFbW" id="7rf49Nglkbs" role="jymVt">
      <node concept="37vLTG" id="7rf49Nglkc0" role="3clF46">
        <property role="TrG5h" value="sessionQueryable" />
        <node concept="3uibUv" id="5jCHAT1J4T_" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~Queryable" resolve="Queryable" />
        </node>
      </node>
      <node concept="3cqZAl" id="7rf49Nglkbu" role="3clF45" />
      <node concept="3Tm1VV" id="7rf49Nglkbv" role="1B3o_S" />
      <node concept="3clFbS" id="7rf49Nglkbw" role="3clF47">
        <node concept="3clFbF" id="7rf49Nglke8" role="3cqZAp">
          <node concept="37vLTI" id="7rf49Nglkea" role="3clFbG">
            <node concept="2OqwBi" id="7rf49Nglkk7" role="37vLTJ">
              <node concept="Xjq3P" id="7rf49NglkkE" role="2Oq$k0" />
              <node concept="2OwXpG" id="7rf49Nglkka" role="2OqNvi">
                <ref role="2Oxat5" node="7rf49Nglke4" resolve="sessionQueryable" />
              </node>
            </node>
            <node concept="37vLTw" id="7rf49Nglkee" role="37vLTx">
              <ref role="3cqZAo" node="7rf49Nglkc0" resolve="sessionQueryable" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7rf49NgligJ" role="jymVt" />
    <node concept="3clFb_" id="7rf49Nglkzf" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="predicate" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="7rf49Nglkzg" role="1B3o_S" />
      <node concept="3uibUv" id="7rf49Nglkzi" role="3clF45">
        <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
      </node>
      <node concept="37vLTG" id="7rf49Nglkzj" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="7rf49Nglkzk" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="7rf49Nglkzl" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="7rf49Nglkzm" role="1tU5fm">
          <node concept="3uibUv" id="7rf49Nglkzn" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7rf49Nglkzr" role="3clF47">
        <node concept="3clFbJ" id="7rf49NgllrT" role="3cqZAp">
          <node concept="3clFbS" id="7rf49NgllrV" role="3clFbx">
            <node concept="YS8fn" id="7rf49NgllKg" role="3cqZAp">
              <node concept="2ShNRf" id="7rf49NgllLk" role="YScLw">
                <node concept="1pGfFk" id="7rf49NgllXi" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="7rf49NgllsX" role="3clFbw">
            <node concept="1eOMI4" id="7rf49NgllsZ" role="3fr31v">
              <node concept="3clFbC" id="7rf49Ngll_u" role="1eOMHV">
                <node concept="37vLTw" id="7rf49NgllBl" role="3uHU7w">
                  <ref role="3cqZAo" node="7rf49Nglkzj" resolve="symbol" />
                </node>
                <node concept="10M0yZ" id="7rf49NglluE" role="3uHU7B">
                  <ref role="1PxDUh" to="cxk7:7rf49NgkbDQ" resolve="NotPredicate" />
                  <ref role="3cqZAo" to="cxk7:7rf49Ngke3n" resolve="NOT_SYM" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7rf49Nglm1J" role="3cqZAp">
          <node concept="3clFbS" id="7rf49Nglm1L" role="3clFbx">
            <node concept="YS8fn" id="7rf49NgloeO" role="3cqZAp">
              <node concept="2ShNRf" id="7rf49NglofS" role="YScLw">
                <node concept="1pGfFk" id="7rf49NglorQ" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7rf49Nglo3G" role="3clFbw">
            <node concept="2OqwBi" id="7rf49NglnbY" role="3uHU7B">
              <node concept="37vLTw" id="7rf49NglmYG" role="2Oq$k0">
                <ref role="3cqZAo" node="7rf49Nglkzl" resolve="args" />
              </node>
              <node concept="1Rwk04" id="7rf49NglnyE" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="7rf49Nglod1" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7rf49Nglp4b" role="3cqZAp" />
        <node concept="3clFbF" id="7rf49Nglq3J" role="3cqZAp">
          <node concept="2ShNRf" id="7rf49Nglq3F" role="3clFbG">
            <node concept="1pGfFk" id="7rf49Nglqhj" role="2ShVmc">
              <ref role="37wK5l" to="cxk7:7rf49NgkbFA" resolve="NotPredicate" />
              <node concept="10QFUN" id="7rf49Ngls61" role="37wK5m">
                <node concept="3uibUv" id="7rf49Ngls5X" role="10QFUM">
                  <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
                </node>
                <node concept="AH0OO" id="7rf49Ngls5Y" role="10QFUP">
                  <node concept="3cmrfG" id="7rf49Ngls5Z" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="7rf49Ngls60" role="AHHXb">
                    <ref role="3cqZAo" node="7rf49Nglkzl" resolve="args" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7rf49Nglkzs" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7rf49NglklY" role="jymVt" />
    <node concept="3clFb_" id="7rf49Nglkz3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="ask" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="7rf49Nglkz4" role="1B3o_S" />
      <node concept="10P_77" id="7rf49Nglkz6" role="3clF45" />
      <node concept="37vLTG" id="7rf49Nglkz7" role="3clF46">
        <property role="TrG5h" value="invocation" />
        <node concept="3uibUv" id="7rf49Nglkz8" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
        </node>
      </node>
      <node concept="3clFbS" id="7rf49Nglkzb" role="3clF47">
        <node concept="3cpWs8" id="7rf49Nglx97" role="3cqZAp">
          <node concept="3cpWsn" id="7rf49Nglx98" role="3cpWs9">
            <property role="TrG5h" value="predInv" />
            <node concept="3uibUv" id="7rf49Nglxwi" role="1tU5fm">
              <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
            </node>
            <node concept="10QFUN" id="7rf49NglxSd" role="33vP2m">
              <node concept="3uibUv" id="7rf49NglxS6" role="10QFUM">
                <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
              </node>
              <node concept="2OqwBi" id="7rf49NglxS7" role="10QFUP">
                <node concept="2OqwBi" id="7rf49NglxS8" role="2Oq$k0">
                  <node concept="37vLTw" id="7rf49NglxS9" role="2Oq$k0">
                    <ref role="3cqZAo" node="7rf49Nglkz7" resolve="invocation" />
                  </node>
                  <node concept="liA8E" id="7rf49NglxSa" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~PredicateInvocation.arguments():java.util.List" resolve="arguments" />
                  </node>
                </node>
                <node concept="liA8E" id="7rf49NglxSb" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                  <node concept="3cmrfG" id="7rf49NglxSc" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7rf49Nglw7m" role="3cqZAp" />
        <node concept="3cpWs6" id="7rf49NglySu" role="3cqZAp">
          <node concept="3fqX7Q" id="7rf49Nglzku" role="3cqZAk">
            <node concept="1eOMI4" id="7rf49Nglzkw" role="3fr31v">
              <node concept="2OqwBi" id="7rf49Nglzkx" role="1eOMHV">
                <node concept="37vLTw" id="7rf49Nglzky" role="2Oq$k0">
                  <ref role="3cqZAo" node="7rf49Nglke4" resolve="sessionQueryable" />
                </node>
                <node concept="liA8E" id="7rf49Nglzkz" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~Queryable.ask(jetbrains.mps.logic.reactor.evaluation.PredicateInvocation):boolean" resolve="ask" />
                  <node concept="37vLTw" id="7rf49Nglzk$" role="37wK5m">
                    <ref role="3cqZAo" node="7rf49Nglx98" resolve="predInv" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7rf49Nglkzc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7rf49Nglp7C" role="jymVt" />
    <node concept="3clFb_" id="7rf49Nglkzv" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tell" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="7rf49Nglkzw" role="1B3o_S" />
      <node concept="3cqZAl" id="7rf49Nglkzy" role="3clF45" />
      <node concept="37vLTG" id="7rf49Nglkzz" role="3clF46">
        <property role="TrG5h" value="invocation" />
        <node concept="3uibUv" id="7rf49Nglkz$" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~PredicateInvocation" resolve="PredicateInvocation" />
        </node>
      </node>
      <node concept="3clFbS" id="7rf49NglkzC" role="3clF47">
        <node concept="YS8fn" id="7rf49NgqJYc" role="3cqZAp">
          <node concept="2ShNRf" id="7rf49NgqJZ4" role="YScLw">
            <node concept="1pGfFk" id="7rf49NgqKaS" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7rf49NglkzD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7rf49Nglkmj" role="jymVt" />
    <node concept="3Tm1VV" id="7rf49Nglh1r" role="1B3o_S" />
    <node concept="312cEg" id="7rf49Nglke4" role="jymVt">
      <property role="TrG5h" value="sessionQueryable" />
      <node concept="3Tm6S6" id="7rf49Nglke5" role="1B3o_S" />
      <node concept="3uibUv" id="5jCHAT1J5mQ" role="1tU5fm">
        <ref role="3uigEE" to="w7la:~Queryable" resolve="Queryable" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jCHAT1JF$c" role="jymVt" />
    <node concept="3uibUv" id="7rf49Nglkq3" role="EKbjA">
      <ref role="3uigEE" to="w7la:~Solver" resolve="Solver" />
    </node>
  </node>
</model>

