<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:daa544a7-0a5c-49c0-a54c-4c2a5b4868aa(jetbrains.mps.logic.builtin.predicate)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
  </languages>
  <imports>
    <import index="av0y" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.program(jetbrains.mps.logic.reactor/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="w7la" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.evaluation(jetbrains.mps.logic.reactor/)" />
    <import index="omn0" ref="r:4e44cb56-a834-45de-a0c4-c49a5c86e78e(jetbrains.mps.logic.builtin.solver)" />
    <import index="bj13" ref="bbf5c548-7111-4a53-a117-cdefc664cf34/java:jetbrains.mps.logic.reactor.logical(jetbrains.mps.logic.reactor/)" />
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
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
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
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
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
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
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="6Kcfpq7B0Wu">
    <property role="TrG5h" value="AbstractPredicate" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="6Kcfpq7B16q" role="jymVt" />
    <node concept="3clFbW" id="6Kcfpq7B1f7" role="jymVt">
      <node concept="37vLTG" id="6Kcfpq7BmCY" role="3clF46">
        <property role="TrG5h" value="arguments" />
        <node concept="8X2XB" id="5uFPQ7BZ$7f" role="1tU5fm">
          <node concept="3uibUv" id="5uFPQ7BZzTo" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6Kcfpq7B1f9" role="3clF45" />
      <node concept="3Tm1VV" id="6Kcfpq7B1fa" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7B1fb" role="3clF47">
        <node concept="3clFbF" id="5uFPQ7BZe1a" role="3cqZAp">
          <node concept="37vLTI" id="5uFPQ7BZe1c" role="3clFbG">
            <node concept="2OqwBi" id="5uFPQ7BZe1g" role="37vLTJ">
              <node concept="Xjq3P" id="5uFPQ7BZe1j" role="2Oq$k0" />
              <node concept="2OwXpG" id="5uFPQ7BZe1f" role="2OqNvi">
                <ref role="2Oxat5" node="5uFPQ7BZe15" resolve="arguments" />
              </node>
            </node>
            <node concept="37vLTw" id="5uFPQ7BZe1k" role="37vLTx">
              <ref role="3cqZAo" node="6Kcfpq7BmCY" resolve="arguments" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7B1eT" role="jymVt" />
    <node concept="3Tm1VV" id="6Kcfpq7B0Wv" role="1B3o_S" />
    <node concept="3clFb_" id="5uFPQ7BZhBG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="arguments" />
      <node concept="3Tm1VV" id="5uFPQ7BZhBJ" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7BZhBL" role="3clF47">
        <node concept="3clFbF" id="5uFPQ7BZjve" role="3cqZAp">
          <node concept="2YIFZM" id="5uFPQ7BZjxZ" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="2YIFZM" id="5uFPQ7BZjDb" role="37wK5m">
              <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
              <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
              <node concept="37vLTw" id="5uFPQ7BZjFA" role="37wK5m">
                <ref role="3cqZAo" node="5uFPQ7BZe15" resolve="arguments" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5uFPQ7BZl4Y" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3uibUv" id="7rf49NglMG9" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3qTvmN" id="7rf49NglNci" role="11_B2D" />
      </node>
    </node>
    <node concept="2tJIrI" id="4TCblo5MfR_" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7B8WD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="6Kcfpq7B8WE" role="1B3o_S" />
      <node concept="17QB3L" id="5jCHAT2VZ5B" role="3clF45" />
      <node concept="3clFbS" id="6Kcfpq7B8WH" role="3clF47">
        <node concept="3clFbF" id="6Kcfpq7B99k" role="3cqZAp">
          <node concept="2OqwBi" id="5uFPQ7BZfDt" role="3clFbG">
            <node concept="1rXfSq" id="7ISVfSJnHs" role="2Oq$k0">
              <ref role="37wK5l" to="av0y:~AndItem.symbol():jetbrains.mps.logic.reactor.program.Symbol" resolve="symbol" />
            </node>
            <node concept="liA8E" id="5uFPQ7BZfHQ" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6Kcfpq7B8WI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7BBoK" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7B2W5" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="6Kcfpq7B2W6" role="3clF45" />
      <node concept="3Tm1VV" id="6Kcfpq7B2W7" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7B2W8" role="3clF47">
        <node concept="3clFbJ" id="6Kcfpq7B2W9" role="3cqZAp">
          <node concept="3clFbS" id="6Kcfpq7B2Wa" role="3clFbx">
            <node concept="3cpWs6" id="6Kcfpq7B2Wb" role="3cqZAp">
              <node concept="3clFbT" id="6Kcfpq7B2Wc" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6Kcfpq7B2Wd" role="3clFbw">
            <node concept="Xjq3P" id="6Kcfpq7B2W4" role="3uHU7B" />
            <node concept="37vLTw" id="6Kcfpq7B2We" role="3uHU7w">
              <ref role="3cqZAo" node="6Kcfpq7B2W_" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6Kcfpq7B2Wf" role="3cqZAp">
          <node concept="3clFbS" id="6Kcfpq7B2Wg" role="3clFbx">
            <node concept="3cpWs6" id="6Kcfpq7B2Wh" role="3cqZAp">
              <node concept="3clFbT" id="6Kcfpq7B2Wi" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="6Kcfpq7B2Wj" role="3clFbw">
            <node concept="3clFbC" id="6Kcfpq7B2Wk" role="3uHU7B">
              <node concept="37vLTw" id="6Kcfpq7B2Wl" role="3uHU7B">
                <ref role="3cqZAo" node="6Kcfpq7B2W_" resolve="o" />
              </node>
              <node concept="10Nm6u" id="6Kcfpq7B2Wm" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="6Kcfpq7B2Wn" role="3uHU7w">
              <node concept="2OqwBi" id="6Kcfpq7B2Wo" role="3uHU7B">
                <node concept="Xjq3P" id="6Kcfpq7B2Wp" role="2Oq$k0" />
                <node concept="liA8E" id="6Kcfpq7B2Wq" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                </node>
              </node>
              <node concept="2OqwBi" id="6Kcfpq7B2Wr" role="3uHU7w">
                <node concept="37vLTw" id="6Kcfpq7B2Ws" role="2Oq$k0">
                  <ref role="3cqZAo" node="6Kcfpq7B2W_" resolve="o" />
                </node>
                <node concept="liA8E" id="6Kcfpq7B2Wt" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6Kcfpq7B2Wu" role="3cqZAp" />
        <node concept="3cpWs8" id="6Kcfpq7B2Wv" role="3cqZAp">
          <node concept="3cpWsn" id="6Kcfpq7B2Ww" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="6Kcfpq7B2Wx" role="1tU5fm">
              <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
            </node>
            <node concept="10QFUN" id="6Kcfpq7B2Wy" role="33vP2m">
              <node concept="3uibUv" id="6Kcfpq7B2Wz" role="10QFUM">
                <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
              </node>
              <node concept="37vLTw" id="6Kcfpq7B2W$" role="10QFUP">
                <ref role="3cqZAo" node="6Kcfpq7B2W_" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6Kcfpq7B2WJ" role="3cqZAp">
          <node concept="3clFbS" id="6Kcfpq7B2WK" role="3clFbx">
            <node concept="3cpWs6" id="6Kcfpq7B2WL" role="3cqZAp">
              <node concept="3clFbT" id="6Kcfpq7B2WM" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3K4zz7" id="6Kcfpq7B2WN" role="3clFbw">
            <node concept="3fqX7Q" id="6Kcfpq7B2WO" role="3K4E3e">
              <node concept="2OqwBi" id="6Kcfpq7B2WP" role="3fr31v">
                <node concept="liA8E" id="6Kcfpq7B2WQ" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="2OqwBi" id="6Kcfpq7B2WR" role="37wK5m">
                    <node concept="37vLTw" id="6Kcfpq7B2WC" role="2Oq$k0">
                      <ref role="3cqZAo" node="6Kcfpq7B2Ww" resolve="that" />
                    </node>
                    <node concept="liA8E" id="7ISVfSJor9" role="2OqNvi">
                      <ref role="37wK5l" to="av0y:~AndItem.symbol():jetbrains.mps.logic.reactor.program.Symbol" resolve="symbol" />
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="6Kcfpq7B2WS" role="2Oq$k0">
                  <node concept="10QFUN" id="6Kcfpq7B2WT" role="1eOMHV">
                    <node concept="3uibUv" id="6Kcfpq7B2WU" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="1rXfSq" id="7ISVfSJomP" role="10QFUP">
                      <ref role="37wK5l" to="av0y:~AndItem.symbol():jetbrains.mps.logic.reactor.program.Symbol" resolve="symbol" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="6Kcfpq7B2WV" role="3K4Cdx">
              <node concept="10Nm6u" id="6Kcfpq7B2WW" role="3uHU7w" />
              <node concept="1rXfSq" id="7ISVfSJojN" role="3uHU7B">
                <ref role="37wK5l" to="av0y:~AndItem.symbol():jetbrains.mps.logic.reactor.program.Symbol" resolve="symbol" />
              </node>
            </node>
            <node concept="3y3z36" id="6Kcfpq7B2WX" role="3K4GZi">
              <node concept="10Nm6u" id="6Kcfpq7B2WY" role="3uHU7w" />
              <node concept="2OqwBi" id="6Kcfpq7B2WZ" role="3uHU7B">
                <node concept="37vLTw" id="6Kcfpq7B2X0" role="2Oq$k0">
                  <ref role="3cqZAo" node="6Kcfpq7B2Ww" resolve="that" />
                </node>
                <node concept="liA8E" id="7ISVfSJots" role="2OqNvi">
                  <ref role="37wK5l" to="av0y:~AndItem.symbol():jetbrains.mps.logic.reactor.program.Symbol" resolve="symbol" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6Kcfpq7B2X1" role="3cqZAp" />
        <node concept="3clFbF" id="6Kcfpq7B2X2" role="3cqZAp">
          <node concept="3clFbT" id="6Kcfpq7B2X3" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6Kcfpq7B2W_" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="6Kcfpq7B2WA" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="6Kcfpq7B2WB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7B3h2" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7B2X4" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="6Kcfpq7B2X5" role="3clF45" />
      <node concept="3Tm1VV" id="6Kcfpq7B2X6" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7B2X7" role="3clF47">
        <node concept="3cpWs8" id="6Kcfpq7B2X9" role="3cqZAp">
          <node concept="3cpWsn" id="6Kcfpq7B2Xa" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Oyi0" id="6Kcfpq7B2Xb" role="1tU5fm" />
            <node concept="3cmrfG" id="6Kcfpq7B2Xc" role="33vP2m">
              <property role="3cmrfH" value="17" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6Kcfpq7B2Xm" role="3cqZAp">
          <node concept="37vLTI" id="6Kcfpq7B2Xn" role="3clFbG">
            <node concept="37vLTw" id="6Kcfpq7B2Xo" role="37vLTJ">
              <ref role="3cqZAo" node="6Kcfpq7B2Xa" resolve="result" />
            </node>
            <node concept="3cpWs3" id="6Kcfpq7B2Xp" role="37vLTx">
              <node concept="17qRlL" id="6Kcfpq7B2Xi" role="3uHU7B">
                <node concept="3cmrfG" id="6Kcfpq7B2Xj" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="6Kcfpq7B2Xd" role="3uHU7w">
                  <ref role="3cqZAo" node="6Kcfpq7B2Xa" resolve="result" />
                </node>
              </node>
              <node concept="1eOMI4" id="6Kcfpq7B2Xq" role="3uHU7w">
                <node concept="3K4zz7" id="6Kcfpq7B2Xr" role="1eOMHV">
                  <node concept="3cmrfG" id="6Kcfpq7B2Xs" role="3K4GZi">
                    <property role="3cmrfH" value="37" />
                  </node>
                  <node concept="3y3z36" id="6Kcfpq7B2Xt" role="3K4Cdx">
                    <node concept="10Nm6u" id="6Kcfpq7B2Xu" role="3uHU7w" />
                    <node concept="1rXfSq" id="7ISVfSJoxI" role="3uHU7B">
                      <ref role="37wK5l" to="av0y:~AndItem.symbol():jetbrains.mps.logic.reactor.program.Symbol" resolve="symbol" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6Kcfpq7B2Xv" role="3K4E3e">
                    <node concept="2YIFZM" id="6Kcfpq7B2Xw" role="2Oq$k0">
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                      <node concept="1rXfSq" id="7ISVfSJoy$" role="37wK5m">
                        <ref role="37wK5l" to="av0y:~AndItem.symbol():jetbrains.mps.logic.reactor.program.Symbol" resolve="symbol" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6Kcfpq7B2Xx" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.hashCode():int" resolve="hashCode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6Kcfpq7B2Xy" role="3cqZAp">
          <node concept="37vLTw" id="6Kcfpq7B2Xz" role="3clFbG">
            <ref role="3cqZAo" node="6Kcfpq7B2Xa" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6Kcfpq7B2X8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7B3IY" role="jymVt" />
    <node concept="3uibUv" id="5uFPQ7BZiil" role="EKbjA">
      <ref role="3uigEE" to="av0y:~Predicate" resolve="Predicate" />
    </node>
    <node concept="312cEg" id="5uFPQ7BZe15" role="jymVt">
      <property role="TrG5h" value="arguments" />
      <node concept="3Tm6S6" id="5uFPQ7BZe16" role="1B3o_S" />
      <node concept="10Q1$e" id="5uFPQ7BZDfP" role="1tU5fm">
        <node concept="3uibUv" id="5uFPQ7BZ$Ap" role="10Q1$1">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="4TCblo5ZwCk" role="1zkMxy">
      <ref role="3uigEE" to="yg8f:4TCblo5ZkfI" resolve="AbstractAndItem" />
    </node>
  </node>
  <node concept="312cEu" id="2GO7tyJVmP4">
    <property role="TrG5h" value="UnificationPredicate" />
    <node concept="2tJIrI" id="5uFPQ7C29se" role="jymVt" />
    <node concept="3Tm1VV" id="2GO7tyJVmP5" role="1B3o_S" />
    <node concept="2YIFZL" id="5jCHAT29qgV" role="jymVt">
      <property role="TrG5h" value="unifies" />
      <node concept="37vLTG" id="5jCHAT29qMq" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="5jCHAT29qMr" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="5jCHAT29qMs" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="5jCHAT29qMt" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3uibUv" id="5jCHAT29qnP" role="3clF45">
        <ref role="3uigEE" node="2GO7tyJVmP4" resolve="UnificationPredicate" />
      </node>
      <node concept="3Tm1VV" id="5jCHAT29qgY" role="1B3o_S" />
      <node concept="3clFbS" id="5jCHAT29qgZ" role="3clF47">
        <node concept="3clFbF" id="5jCHAT29qU2" role="3cqZAp">
          <node concept="2ShNRf" id="5jCHAT29qU0" role="3clFbG">
            <node concept="1pGfFk" id="5jCHAT29r5d" role="2ShVmc">
              <ref role="37wK5l" node="4xBopTzmopz" resolve="UnificationPredicate" />
              <node concept="37vLTw" id="5jCHAT29rbn" role="37wK5m">
                <ref role="3cqZAo" node="5jCHAT29qMq" resolve="left" />
              </node>
              <node concept="37vLTw" id="5jCHAT29rcn" role="37wK5m">
                <ref role="3cqZAo" node="5jCHAT29qMs" resolve="right" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jCHAT29rrQ" role="jymVt" />
    <node concept="3clFbW" id="4xBopTzmopz" role="jymVt">
      <node concept="37vLTG" id="5uFPQ7C29xx" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="5uFPQ7C29_R" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="5uFPQ7C29DX" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="5uFPQ7C29G3" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="4xBopTzmop_" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzmopA" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzmopB" role="3clF47">
        <node concept="XkiVB" id="4xBopTzmoNB" role="3cqZAp">
          <ref role="37wK5l" node="6Kcfpq7B1f7" resolve="AbstractPredicate" />
          <node concept="37vLTw" id="5uFPQ7C29Rp" role="37wK5m">
            <ref role="3cqZAo" node="5uFPQ7C29xx" resolve="left" />
          </node>
          <node concept="37vLTw" id="5uFPQ7C29TI" role="37wK5m">
            <ref role="3cqZAo" node="5uFPQ7C29DX" resolve="right" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzmo93" role="jymVt" />
    <node concept="3clFb_" id="7ISVfSJpsU" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <node concept="3uibUv" id="7ISVfSJpsV" role="3clF45">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="3Tm1VV" id="7ISVfSJpsW" role="1B3o_S" />
      <node concept="3clFbS" id="7ISVfSJpsZ" role="3clF47">
        <node concept="3clFbF" id="7ISVfSJpt1" role="3cqZAp">
          <node concept="37vLTw" id="7ISVfSJpym" role="3clFbG">
            <ref role="3cqZAo" node="5uFPQ7C29mw" resolve="UNI_SYM" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="49L2l3Fhvjr" role="jymVt" />
    <node concept="3uibUv" id="4xBopTzmmAx" role="1zkMxy">
      <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
    </node>
    <node concept="Wx3nA" id="2GO7tyJVob2" role="jymVt">
      <property role="TrG5h" value="UNI" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2GO7tyJVob3" role="1B3o_S" />
      <node concept="17QB3L" id="2GO7tyJVob4" role="1tU5fm" />
      <node concept="Xl_RD" id="2GO7tyJVob5" role="33vP2m">
        <property role="Xl_RC" value="uni" />
      </node>
    </node>
    <node concept="Wx3nA" id="2GO7tyJVob6" role="jymVt">
      <property role="TrG5h" value="INFIX_UNI" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2GO7tyJVob7" role="1B3o_S" />
      <node concept="17QB3L" id="2GO7tyJVob8" role="1tU5fm" />
      <node concept="Xl_RD" id="2GO7tyJVob9" role="33vP2m">
        <property role="Xl_RC" value="===" />
      </node>
    </node>
    <node concept="Wx3nA" id="5uFPQ7C29mw" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="UNI_SYM" />
      <node concept="3Tm1VV" id="5uFPQ7C29mq" role="1B3o_S" />
      <node concept="3uibUv" id="5uFPQ7C29mr" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="2ShNRf" id="5uFPQ7C29ms" role="33vP2m">
        <node concept="1pGfFk" id="5uFPQ7C29mt" role="2ShVmc">
          <ref role="37wK5l" to="av0y:~PredicateSymbol.&lt;init&gt;(java.lang.String,int)" resolve="PredicateSymbol" />
          <node concept="37vLTw" id="5uFPQ7C29mu" role="37wK5m">
            <ref role="3cqZAo" node="2GO7tyJVob2" resolve="UNI" />
          </node>
          <node concept="3cmrfG" id="5uFPQ7C29mv" role="37wK5m">
            <property role="3cmrfH" value="2" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6infEALAfer">
    <property role="TrG5h" value="AssertPredicate" />
    <node concept="2tJIrI" id="6infEALAgQp" role="jymVt" />
    <node concept="3clFbW" id="4xBopTzrPWl" role="jymVt">
      <node concept="37vLTG" id="5uFPQ7C251x" role="3clF46">
        <property role="TrG5h" value="expression" />
        <node concept="3uibUv" id="5uFPQ7C256l" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="4xBopTzrPWn" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzrPWo" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzrPWp" role="3clF47">
        <node concept="XkiVB" id="4xBopTzrQgb" role="3cqZAp">
          <ref role="37wK5l" node="6Kcfpq7B1f7" resolve="AbstractPredicate" />
          <node concept="37vLTw" id="5uFPQ7C25fP" role="37wK5m">
            <ref role="3cqZAo" node="5uFPQ7C251x" resolve="expression" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzrQOJ" role="jymVt" />
    <node concept="3clFb_" id="7ISVfSJpfI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <node concept="3uibUv" id="7ISVfSJpfJ" role="3clF45">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="3Tm1VV" id="7ISVfSJpfK" role="1B3o_S" />
      <node concept="3clFbS" id="7ISVfSJpfN" role="3clF47">
        <node concept="3clFbF" id="7ISVfSJpfP" role="3cqZAp">
          <node concept="37vLTw" id="7ISVfSJpnd" role="3clFbG">
            <ref role="3cqZAo" node="5uFPQ7BZnLB" resolve="ASSERT_SYM" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="506k$zeLgrQ" role="jymVt" />
    <node concept="3Tm1VV" id="6infEALAfes" role="1B3o_S" />
    <node concept="3uibUv" id="4xBopTzrP0O" role="1zkMxy">
      <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
    </node>
    <node concept="Wx3nA" id="6infEALAgS7" role="jymVt">
      <property role="TrG5h" value="ASSERT" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="6infEALAgT4" role="1B3o_S" />
      <node concept="17QB3L" id="6infEALAgTf" role="1tU5fm" />
      <node concept="Xl_RD" id="6infEALAgUt" role="33vP2m">
        <property role="Xl_RC" value="assertThat" />
      </node>
    </node>
    <node concept="Wx3nA" id="5uFPQ7BZnLB" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ASSERT_SYM" />
      <node concept="3Tm1VV" id="5uFPQ7BZnLx" role="1B3o_S" />
      <node concept="3uibUv" id="5uFPQ7BZnLy" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="2ShNRf" id="5uFPQ7BZnLz" role="33vP2m">
        <node concept="1pGfFk" id="5uFPQ7BZnL$" role="2ShVmc">
          <ref role="37wK5l" to="av0y:~PredicateSymbol.&lt;init&gt;(java.lang.String,int)" resolve="PredicateSymbol" />
          <node concept="37vLTw" id="5uFPQ7BZnL_" role="37wK5m">
            <ref role="3cqZAo" node="6infEALAgS7" resolve="ASSERT" />
          </node>
          <node concept="3cmrfG" id="5uFPQ7BZnLA" role="37wK5m">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3HJTsBn4kk_">
    <property role="TrG5h" value="EqualsPredicate" />
    <node concept="2tJIrI" id="3HJTsBn4kQm" role="jymVt" />
    <node concept="2YIFZL" id="5jCHAT2iqus" role="jymVt">
      <property role="TrG5h" value="eq" />
      <node concept="37vLTG" id="5jCHAT2ir1t" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="5jCHAT2ircQ" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="5jCHAT2iror" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="5jCHAT2irzS" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3uibUv" id="5jCHAT2iqEZ" role="3clF45">
        <ref role="3uigEE" node="3HJTsBn4kk_" resolve="EqualsPredicate" />
      </node>
      <node concept="3Tm1VV" id="5jCHAT2iquv" role="1B3o_S" />
      <node concept="3clFbS" id="5jCHAT2iquw" role="3clF47">
        <node concept="3clFbF" id="5jCHAT2irKd" role="3cqZAp">
          <node concept="2ShNRf" id="5jCHAT2irKb" role="3clFbG">
            <node concept="1pGfFk" id="5jCHAT2irVw" role="2ShVmc">
              <ref role="37wK5l" node="4xBopTzo_Q1" resolve="EqualsPredicate" />
              <node concept="37vLTw" id="5jCHAT2is1N" role="37wK5m">
                <ref role="3cqZAo" node="5jCHAT2ir1t" resolve="left" />
              </node>
              <node concept="37vLTw" id="5jCHAT2is2W" role="37wK5m">
                <ref role="3cqZAo" node="5jCHAT2iror" resolve="right" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2UGjFq4gG5y" role="jymVt" />
    <node concept="3clFbW" id="4xBopTzo_Q1" role="jymVt">
      <node concept="37vLTG" id="5uFPQ7C24iY" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="5uFPQ7C24qL" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="5uFPQ7C24vP" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="5uFPQ7C24$_" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="4xBopTzo_Q3" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzo_Q4" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzo_Q5" role="3clF47">
        <node concept="XkiVB" id="4xBopTzoAs2" role="3cqZAp">
          <ref role="37wK5l" node="6Kcfpq7B1f7" resolve="AbstractPredicate" />
          <node concept="37vLTw" id="5uFPQ7C24EQ" role="37wK5m">
            <ref role="3cqZAo" node="5uFPQ7C24iY" resolve="left" />
          </node>
          <node concept="37vLTw" id="5uFPQ7C24Gx" role="37wK5m">
            <ref role="3cqZAo" node="5uFPQ7C24vP" resolve="right" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzo_yK" role="jymVt" />
    <node concept="3clFb_" id="5uFPQ7BZaxa" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <node concept="3uibUv" id="5uFPQ7BZaJx" role="3clF45">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="3Tm1VV" id="5uFPQ7BZaxc" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7BZaxh" role="3clF47">
        <node concept="3clFbF" id="7ISVfSJoMD" role="3cqZAp">
          <node concept="37vLTw" id="7ISVfSJoMC" role="3clFbG">
            <ref role="3cqZAo" node="5uFPQ7C23RV" resolve="EQ_SYM" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzop_B" role="jymVt" />
    <node concept="3Tm1VV" id="3HJTsBn4kkA" role="1B3o_S" />
    <node concept="3uibUv" id="4xBopTzozPs" role="1zkMxy">
      <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
    </node>
    <node concept="Wx3nA" id="3HJTsBn4kQi" role="jymVt">
      <property role="TrG5h" value="EQ" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3HJTsBn4kQj" role="1B3o_S" />
      <node concept="17QB3L" id="3HJTsBn4kQk" role="1tU5fm" />
      <node concept="Xl_RD" id="3HJTsBn4kQl" role="33vP2m">
        <property role="Xl_RC" value="eq" />
      </node>
    </node>
    <node concept="Wx3nA" id="3HJTsBn4kQn" role="jymVt">
      <property role="TrG5h" value="INFIX_EQ" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3HJTsBn4kQo" role="1B3o_S" />
      <node concept="17QB3L" id="3HJTsBn4kQp" role="1tU5fm" />
      <node concept="Xl_RD" id="3HJTsBn4kQq" role="33vP2m">
        <property role="Xl_RC" value="==" />
      </node>
    </node>
    <node concept="Wx3nA" id="5uFPQ7C23RV" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="EQ_SYM" />
      <node concept="3Tm1VV" id="5uFPQ7C23RP" role="1B3o_S" />
      <node concept="3uibUv" id="5uFPQ7C23RQ" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="2ShNRf" id="5uFPQ7C23RR" role="33vP2m">
        <node concept="1pGfFk" id="5uFPQ7C23RS" role="2ShVmc">
          <ref role="37wK5l" to="av0y:~PredicateSymbol.&lt;init&gt;(java.lang.String,int)" resolve="PredicateSymbol" />
          <node concept="37vLTw" id="5uFPQ7C23RT" role="37wK5m">
            <ref role="3cqZAo" node="3HJTsBn4kQi" resolve="EQ" />
          </node>
          <node concept="3cmrfG" id="5uFPQ7C23RU" role="37wK5m">
            <property role="3cmrfH" value="2" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5$WbtTOYoMb">
    <property role="TrG5h" value="LogicalPredicate" />
    <property role="1sVAO0" value="false" />
    <node concept="2tJIrI" id="5$WbtTOYpQU" role="jymVt" />
    <node concept="Wx3nA" id="5uFPQ7C26$b" role="jymVt">
      <property role="TrG5h" value="BOUND_SYM" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="5uFPQ7C26Lh" role="1B3o_S" />
      <node concept="3uibUv" id="5uFPQ7C26Oo" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="2ShNRf" id="5uFPQ7C26Zo" role="33vP2m">
        <node concept="1pGfFk" id="5uFPQ7C26X5" role="2ShVmc">
          <ref role="37wK5l" to="av0y:~PredicateSymbol.&lt;init&gt;(java.lang.String,int)" resolve="PredicateSymbol" />
          <node concept="Xl_RD" id="5uFPQ7C272B" role="37wK5m">
            <property role="Xl_RC" value="isNonVar" />
          </node>
          <node concept="3cmrfG" id="5uFPQ7C276T" role="37wK5m">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7C27mP" role="jymVt" />
    <node concept="Wx3nA" id="5uFPQ7C279$" role="jymVt">
      <property role="TrG5h" value="FREE_SYM" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="5uFPQ7C279_" role="1B3o_S" />
      <node concept="3uibUv" id="5uFPQ7C279A" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="2ShNRf" id="5uFPQ7C279B" role="33vP2m">
        <node concept="1pGfFk" id="5uFPQ7C279C" role="2ShVmc">
          <ref role="37wK5l" to="av0y:~PredicateSymbol.&lt;init&gt;(java.lang.String,int)" resolve="PredicateSymbol" />
          <node concept="Xl_RD" id="5uFPQ7C279D" role="37wK5m">
            <property role="Xl_RC" value="isVar" />
          </node>
          <node concept="3cmrfG" id="5uFPQ7C279E" role="37wK5m">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7C26l9" role="jymVt" />
    <node concept="2YIFZL" id="5uFPQ7CiPYx" role="jymVt">
      <property role="TrG5h" value="BOUND" />
      <node concept="37vLTG" id="5uFPQ7CiQiV" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="5uFPQ7CiQmW" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3uibUv" id="5uFPQ7CiQa_" role="3clF45">
        <ref role="3uigEE" node="5$WbtTOYoMb" resolve="LogicalPredicate" />
      </node>
      <node concept="3Tm1VV" id="5uFPQ7CiPY$" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7CiPY_" role="3clF47">
        <node concept="3clFbF" id="5uFPQ7CiQsb" role="3cqZAp">
          <node concept="2ShNRf" id="5uFPQ7CiQsd" role="3clFbG">
            <node concept="1pGfFk" id="5uFPQ7CiQse" role="2ShVmc">
              <ref role="37wK5l" node="5$WbtTOYsLU" resolve="LogicalPredicate" />
              <node concept="37vLTw" id="5uFPQ7CiQsz" role="37wK5m">
                <ref role="3cqZAo" node="5uFPQ7C26$b" resolve="BOUND_SYM" />
              </node>
              <node concept="2ShNRf" id="7ISVfSJ1Y4" role="37wK5m">
                <node concept="HV5vD" id="6MYr6Jx1HSb" role="2ShVmc">
                  <ref role="HV5vE" to="omn0:7ISVfSJ0DF" resolve="LogicalSolver.Bound" />
                </node>
              </node>
              <node concept="37vLTw" id="5uFPQ7CiQC4" role="37wK5m">
                <ref role="3cqZAo" node="5uFPQ7CiQiV" resolve="logical" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7CiQVB" role="jymVt" />
    <node concept="2YIFZL" id="5uFPQ7CiQEd" role="jymVt">
      <property role="TrG5h" value="FREE" />
      <node concept="37vLTG" id="5uFPQ7CiQEe" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="5uFPQ7CiQEf" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3uibUv" id="5uFPQ7CiQEg" role="3clF45">
        <ref role="3uigEE" node="5$WbtTOYoMb" resolve="LogicalPredicate" />
      </node>
      <node concept="3Tm1VV" id="5uFPQ7CiQEh" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7CiQEi" role="3clF47">
        <node concept="3clFbF" id="5uFPQ7CiQEj" role="3cqZAp">
          <node concept="2ShNRf" id="5uFPQ7CiQEk" role="3clFbG">
            <node concept="1pGfFk" id="5uFPQ7CiQEl" role="2ShVmc">
              <ref role="37wK5l" node="5$WbtTOYsLU" resolve="LogicalPredicate" />
              <node concept="37vLTw" id="5uFPQ7CiRlW" role="37wK5m">
                <ref role="3cqZAo" node="5uFPQ7C279$" resolve="FREE_SYM" />
              </node>
              <node concept="2ShNRf" id="7ISVfSJ2gX" role="37wK5m">
                <node concept="HV5vD" id="7ISVfSJ2u2" role="2ShVmc">
                  <ref role="HV5vE" to="omn0:7ISVfSJ1oi" resolve="LogicalSolver.Free" />
                </node>
              </node>
              <node concept="37vLTw" id="5uFPQ7CiQED" role="37wK5m">
                <ref role="3cqZAo" node="5uFPQ7CiQEe" resolve="logical" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7CiPMP" role="jymVt" />
    <node concept="3clFbW" id="5$WbtTOYsLU" role="jymVt">
      <node concept="37vLTG" id="5$WbtTOYtPL" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="5uFPQ7C2821" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="5$WbtTOYsN0" role="3clF46">
        <property role="TrG5h" value="solver" />
        <node concept="3uibUv" id="6MYr6Jx1HSZ" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~Queryable" resolve="Queryable" />
        </node>
      </node>
      <node concept="37vLTG" id="5uFPQ7C28iX" role="3clF46">
        <property role="TrG5h" value="logical" />
        <node concept="3uibUv" id="5uFPQ7C28u4" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="5$WbtTOYsLW" role="3clF45" />
      <node concept="3Tm6S6" id="5$WbtTOYGJA" role="1B3o_S" />
      <node concept="3clFbS" id="5$WbtTOYsLY" role="3clF47">
        <node concept="XkiVB" id="4xBopTzr9fT" role="3cqZAp">
          <ref role="37wK5l" node="6Kcfpq7B1f7" resolve="AbstractPredicate" />
          <node concept="37vLTw" id="5uFPQ7C28G6" role="37wK5m">
            <ref role="3cqZAo" node="5uFPQ7C28iX" resolve="logical" />
          </node>
        </node>
        <node concept="3SKdUt" id="6MYr6Jx1IMd" role="3cqZAp">
          <node concept="3SKdUq" id="6MYr6Jx1IMf" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: WTF solver???" />
          </node>
        </node>
        <node concept="3clFbF" id="7ISVfSJpBS" role="3cqZAp">
          <node concept="37vLTI" id="7ISVfSJpBT" role="3clFbG">
            <node concept="2OqwBi" id="7ISVfSJpBU" role="37vLTJ">
              <node concept="Xjq3P" id="7ISVfSJpBV" role="2Oq$k0" />
              <node concept="2OwXpG" id="7ISVfSJpBW" role="2OqNvi">
                <ref role="2Oxat5" node="7ISVfSJpBL" resolve="symbol" />
              </node>
            </node>
            <node concept="37vLTw" id="7ISVfSJpBX" role="37vLTx">
              <ref role="3cqZAo" node="5$WbtTOYtPL" resolve="symbol" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5$WbtTOYoTe" role="jymVt" />
    <node concept="3clFb_" id="7ISVfSJpIT" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <node concept="3uibUv" id="7ISVfSJpIU" role="3clF45">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="3Tm1VV" id="7ISVfSJpIV" role="1B3o_S" />
      <node concept="3clFbS" id="7ISVfSJpIY" role="3clF47">
        <node concept="3clFbF" id="7ISVfSJpQv" role="3cqZAp">
          <node concept="37vLTw" id="7ISVfSJpQt" role="3clFbG">
            <ref role="3cqZAo" node="7ISVfSJpBL" resolve="symbol" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ISVfSOZ4g" role="jymVt" />
    <node concept="312cEg" id="7ISVfSJpBL" role="jymVt">
      <property role="TrG5h" value="symbol" />
      <node concept="3Tm6S6" id="7ISVfSJpBJ" role="1B3o_S" />
      <node concept="3uibUv" id="7ISVfSJpBK" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5$WbtTOYoMc" role="1B3o_S" />
    <node concept="3uibUv" id="4xBopTzr8gp" role="1zkMxy">
      <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
    </node>
  </node>
  <node concept="312cEu" id="3F6vMxqo13Y">
    <property role="TrG5h" value="DefaultSessionSolver" />
    <node concept="2tJIrI" id="3F6vMxqo1bG" role="jymVt" />
    <node concept="3clFbW" id="3F6vMxqo1c$" role="jymVt">
      <node concept="37vLTG" id="3F6vMxqo1cY" role="3clF46">
        <property role="TrG5h" value="javaExpressionSolver" />
        <node concept="3uibUv" id="5jCHAT2qKEp" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~AbstractSolver" resolve="AbstractSolver" />
        </node>
      </node>
      <node concept="3cqZAl" id="3F6vMxqo1cA" role="3clF45" />
      <node concept="3Tm1VV" id="3F6vMxqo1cB" role="1B3o_S" />
      <node concept="3clFbS" id="3F6vMxqo1cC" role="3clF47" />
      <node concept="2AHcQZ" id="23c4kVtauK5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="2tJIrI" id="23c4kVtauXp" role="jymVt" />
    <node concept="3clFbW" id="23c4kVtavpK" role="jymVt">
      <node concept="3cqZAl" id="23c4kVtavpM" role="3clF45" />
      <node concept="3Tm1VV" id="23c4kVtavpN" role="1B3o_S" />
      <node concept="3clFbS" id="23c4kVtavpO" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="3F6vMxqo23u" role="jymVt" />
    <node concept="3clFb_" id="3F6vMxqo28Q" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="registerSymbol" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3Tmbuc" id="3F6vMxqo28S" role="1B3o_S" />
      <node concept="3cqZAl" id="3F6vMxqo28T" role="3clF45" />
      <node concept="37vLTG" id="3F6vMxqo28U" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="3F6vMxqo28V" role="1tU5fm">
          <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="3F6vMxqo28W" role="3clF46">
        <property role="TrG5h" value="computingTracer" />
        <node concept="3uibUv" id="3F6vMxqo28X" role="1tU5fm">
          <ref role="3uigEE" to="w7la:~EvaluationTrace" resolve="EvaluationTrace" />
        </node>
      </node>
      <node concept="3clFbS" id="3F6vMxqo28Y" role="3clF47">
        <node concept="3SKdUt" id="5WBVN_M2BrC" role="3cqZAp">
          <node concept="3SKdUq" id="5WBVN_M2BrE" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: hardcoded predicate symbols" />
          </node>
        </node>
        <node concept="3clFbJ" id="7ISVfSIIXN" role="3cqZAp">
          <node concept="3clFbS" id="7ISVfSIIXO" role="3clFbx">
            <node concept="3clFbF" id="7ISVfSIVrg" role="3cqZAp">
              <node concept="2OqwBi" id="7ISVfSIVrQ" role="3clFbG">
                <node concept="Xjq3P" id="2tcGHBEecgK" role="2Oq$k0" />
                <node concept="liA8E" id="7ISVfSIVsU" role="2OqNvi">
                  <ref role="37wK5l" to="w7la:~SessionSolver.registerSolver(jetbrains.mps.logic.reactor.program.PredicateSymbol,jetbrains.mps.logic.reactor.evaluation.AbstractSolver):void" resolve="registerSolver" />
                  <node concept="10QFUN" id="7ISVfSIYFl" role="37wK5m">
                    <node concept="3uibUv" id="7ISVfSIYFj" role="10QFUM">
                      <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
                    </node>
                    <node concept="37vLTw" id="7ISVfSIYFk" role="10QFUP">
                      <ref role="3cqZAo" node="3F6vMxqo28U" resolve="symbol" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="7ISVfSIVIp" role="37wK5m">
                    <node concept="1pGfFk" id="7ISVfSIWk9" role="2ShVmc">
                      <ref role="37wK5l" to="omn0:5p8T3QHGKJ7" resolve="UnificationSolver" />
                      <node concept="2ShNRf" id="3F6vMxqobJ8" role="37wK5m">
                        <node concept="HV5vD" id="4xTpErjR3Gk" role="2ShVmc">
                          <ref role="HV5vE" to="oy3s:4xTpErjR15$" resolve="DefaultLogicalUnification" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7ISVfSIYJ8" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="7ISVfSIJwN" role="3clFbw">
            <node concept="10M0yZ" id="7ISVfSIJ9U" role="2Oq$k0">
              <ref role="1PxDUh" node="2GO7tyJVmP4" resolve="UnificationPredicate" />
              <ref role="3cqZAo" node="5uFPQ7C29mw" resolve="UNI_SYM" />
            </node>
            <node concept="liA8E" id="7ISVfSIJyd" role="2OqNvi">
              <ref role="37wK5l" to="av0y:~Symbol.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="37vLTw" id="7ISVfSIJzc" role="37wK5m">
                <ref role="3cqZAo" node="3F6vMxqo28U" resolve="symbol" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7ISVfSIJml" role="3eNLev">
            <node concept="2OqwBi" id="7ISVfSIJ_2" role="3eO9$A">
              <node concept="10M0yZ" id="7ISVfSIJrd" role="2Oq$k0">
                <ref role="3cqZAo" node="5uFPQ7C23RV" resolve="EQ_SYM" />
                <ref role="1PxDUh" node="3HJTsBn4kk_" resolve="EqualsPredicate" />
              </node>
              <node concept="liA8E" id="7ISVfSIJAs" role="2OqNvi">
                <ref role="37wK5l" to="av0y:~Symbol.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="37vLTw" id="7ISVfSIJBV" role="37wK5m">
                  <ref role="3cqZAo" node="3F6vMxqo28U" resolve="symbol" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7ISVfSIJmn" role="3eOfB_">
              <node concept="3clFbF" id="7ISVfSIYOv" role="3cqZAp">
                <node concept="2OqwBi" id="7ISVfSIYOw" role="3clFbG">
                  <node concept="Xjq3P" id="2tcGHBEecj3" role="2Oq$k0" />
                  <node concept="liA8E" id="7ISVfSIYOy" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~SessionSolver.registerSolver(jetbrains.mps.logic.reactor.program.PredicateSymbol,jetbrains.mps.logic.reactor.evaluation.AbstractSolver):void" resolve="registerSolver" />
                    <node concept="10QFUN" id="7ISVfSIYOz" role="37wK5m">
                      <node concept="3uibUv" id="7ISVfSIYO$" role="10QFUM">
                        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
                      </node>
                      <node concept="37vLTw" id="7ISVfSIYO_" role="10QFUP">
                        <ref role="3cqZAo" node="3F6vMxqo28U" resolve="symbol" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="7ISVfSIYOA" role="37wK5m">
                      <node concept="HV5vD" id="5jCHAT1JnS0" role="2ShVmc">
                        <ref role="HV5vE" to="omn0:3HJTsBn4ogZ" resolve="EqualsSolver" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7ISVfSIYSU" role="3cqZAp" />
            </node>
          </node>
          <node concept="3eNFk2" id="7ISVfSIJuG" role="3eNLev">
            <node concept="2OqwBi" id="7ISVfSIJGK" role="3eO9$A">
              <node concept="10M0yZ" id="7ISVfSIJCI" role="2Oq$k0">
                <ref role="3cqZAo" node="5uFPQ7BZnLB" resolve="ASSERT_SYM" />
                <ref role="1PxDUh" node="6infEALAfer" resolve="AssertPredicate" />
              </node>
              <node concept="liA8E" id="7ISVfSIJIa" role="2OqNvi">
                <ref role="37wK5l" to="av0y:~Symbol.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="37vLTw" id="7ISVfSIJJb" role="37wK5m">
                  <ref role="3cqZAo" node="3F6vMxqo28U" resolve="symbol" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7ISVfSIJuI" role="3eOfB_">
              <node concept="3clFbF" id="7ISVfSIZhm" role="3cqZAp">
                <node concept="2OqwBi" id="7ISVfSIZhn" role="3clFbG">
                  <node concept="Xjq3P" id="2tcGHBEeclc" role="2Oq$k0" />
                  <node concept="liA8E" id="7ISVfSIZhp" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~SessionSolver.registerSolver(jetbrains.mps.logic.reactor.program.PredicateSymbol,jetbrains.mps.logic.reactor.evaluation.AbstractSolver):void" resolve="registerSolver" />
                    <node concept="10QFUN" id="7ISVfSIZhq" role="37wK5m">
                      <node concept="3uibUv" id="7ISVfSIZhr" role="10QFUM">
                        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
                      </node>
                      <node concept="37vLTw" id="7ISVfSIZhs" role="10QFUP">
                        <ref role="3cqZAo" node="3F6vMxqo28U" resolve="symbol" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="7ISVfSIZht" role="37wK5m">
                      <node concept="1pGfFk" id="6MYr6Jx04tk" role="2ShVmc">
                        <ref role="37wK5l" to="omn0:6infEALANZc" resolve="AssertSolver" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7ISVfSIZlS" role="3cqZAp" />
            </node>
          </node>
          <node concept="3eNFk2" id="7ISVfSIJJE" role="3eNLev">
            <node concept="2OqwBi" id="7ISVfSIJJF" role="3eO9$A">
              <node concept="10M0yZ" id="7ISVfSIK8M" role="2Oq$k0">
                <ref role="3cqZAo" node="5uFPQ7C26$b" resolve="BOUND_SYM" />
                <ref role="1PxDUh" node="5$WbtTOYoMb" resolve="LogicalPredicate" />
              </node>
              <node concept="liA8E" id="7ISVfSIJJH" role="2OqNvi">
                <ref role="37wK5l" to="av0y:~Symbol.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="37vLTw" id="7ISVfSIJJI" role="37wK5m">
                  <ref role="3cqZAo" node="3F6vMxqo28U" resolve="symbol" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7ISVfSIJJJ" role="3eOfB_">
              <node concept="3clFbF" id="7ISVfSJ2P6" role="3cqZAp">
                <node concept="2OqwBi" id="7ISVfSJ2P7" role="3clFbG">
                  <node concept="Xjq3P" id="2tcGHBEecmS" role="2Oq$k0" />
                  <node concept="liA8E" id="7ISVfSJ2P9" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~SessionSolver.registerSolver(jetbrains.mps.logic.reactor.program.PredicateSymbol,jetbrains.mps.logic.reactor.evaluation.AbstractSolver):void" resolve="registerSolver" />
                    <node concept="10QFUN" id="7ISVfSJ2Pa" role="37wK5m">
                      <node concept="3uibUv" id="7ISVfSJ2Pb" role="10QFUM">
                        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
                      </node>
                      <node concept="37vLTw" id="7ISVfSJ2Pc" role="10QFUP">
                        <ref role="3cqZAo" node="3F6vMxqo28U" resolve="symbol" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="7ISVfSJ2Pd" role="37wK5m">
                      <node concept="HV5vD" id="3F6vMxqpinf" role="2ShVmc">
                        <ref role="HV5vE" to="omn0:7ISVfSJ0DF" resolve="LogicalSolver.Bound" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7ISVfSJ2Np" role="3cqZAp" />
            </node>
          </node>
          <node concept="3eNFk2" id="7ISVfSJ2Gd" role="3eNLev">
            <node concept="2OqwBi" id="7ISVfSJ2Ge" role="3eO9$A">
              <node concept="10M0yZ" id="7ISVfSJ2Gf" role="2Oq$k0">
                <ref role="1PxDUh" node="5$WbtTOYoMb" resolve="LogicalPredicate" />
                <ref role="3cqZAo" node="5uFPQ7C279$" resolve="FREE_SYM" />
              </node>
              <node concept="liA8E" id="7ISVfSJ2Gg" role="2OqNvi">
                <ref role="37wK5l" to="av0y:~Symbol.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="37vLTw" id="7ISVfSJ2Gh" role="37wK5m">
                  <ref role="3cqZAo" node="3F6vMxqo28U" resolve="symbol" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7ISVfSJ2Gi" role="3eOfB_">
              <node concept="3clFbF" id="7ISVfSJ30n" role="3cqZAp">
                <node concept="2OqwBi" id="7ISVfSJ30o" role="3clFbG">
                  <node concept="Xjq3P" id="2tcGHBEecoN" role="2Oq$k0" />
                  <node concept="liA8E" id="7ISVfSJ30q" role="2OqNvi">
                    <ref role="37wK5l" to="w7la:~SessionSolver.registerSolver(jetbrains.mps.logic.reactor.program.PredicateSymbol,jetbrains.mps.logic.reactor.evaluation.AbstractSolver):void" resolve="registerSolver" />
                    <node concept="10QFUN" id="7ISVfSJ30r" role="37wK5m">
                      <node concept="3uibUv" id="7ISVfSJ30s" role="10QFUM">
                        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
                      </node>
                      <node concept="37vLTw" id="7ISVfSJ30t" role="10QFUP">
                        <ref role="3cqZAo" node="3F6vMxqo28U" resolve="symbol" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="7ISVfSJ30u" role="37wK5m">
                      <node concept="HV5vD" id="3F6vMxqpiPO" role="2ShVmc">
                        <ref role="HV5vE" to="omn0:7ISVfSJ1oi" resolve="LogicalSolver.Free" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7ISVfSJ2Nu" role="3cqZAp" />
            </node>
          </node>
          <node concept="3eNFk2" id="5WBVN_M2BFT" role="3eNLev">
            <node concept="2OqwBi" id="5WBVN_M2D8w" role="3eO9$A">
              <node concept="10M0yZ" id="5WBVN_M2Csc" role="2Oq$k0">
                <ref role="3cqZAo" node="5WBVN_M2qrL" resolve="EVAL_SYM" />
                <ref role="1PxDUh" node="5WBVN_M1SJ9" resolve="EvalExpressionPredicate" />
              </node>
              <node concept="liA8E" id="5WBVN_M2Ddu" role="2OqNvi">
                <ref role="37wK5l" to="av0y:~Symbol.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="37vLTw" id="5WBVN_M2Dmh" role="37wK5m">
                  <ref role="3cqZAo" node="3F6vMxqo28U" resolve="symbol" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5WBVN_M2BFV" role="3eOfB_">
              <node concept="3clFbF" id="5WBVN_M2XFf" role="3cqZAp">
                <node concept="1rXfSq" id="5WBVN_M2YNo" role="3clFbG">
                  <ref role="37wK5l" to="w7la:~SessionSolver.registerSolver(jetbrains.mps.logic.reactor.program.PredicateSymbol,jetbrains.mps.logic.reactor.evaluation.AbstractSolver):void" resolve="registerSolver" />
                  <node concept="37vLTw" id="5WBVN_M2Y2h" role="37wK5m">
                    <ref role="3cqZAo" node="3F6vMxqo28U" resolve="symbol" />
                  </node>
                  <node concept="2ShNRf" id="5WBVN_M2Y63" role="37wK5m">
                    <node concept="HV5vD" id="5WBVN_M2Yj7" role="2ShVmc">
                      <ref role="HV5vE" to="omn0:5WBVN_M2Qf9" resolve="EvalExpressionSolver" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5WBVN_M2Dsg" role="3cqZAp" />
            </node>
          </node>
          <node concept="9aQIb" id="5mr7UHchgcy" role="9aQIa">
            <node concept="3clFbS" id="5mr7UHchgcz" role="9aQI4">
              <node concept="YS8fn" id="5mr7UHchgjZ" role="3cqZAp">
                <node concept="2ShNRf" id="5mr7UHchgme" role="YScLw">
                  <node concept="1pGfFk" id="5mr7UHchgDA" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="3cpWs3" id="5mr7UHchgIt" role="37wK5m">
                      <node concept="37vLTw" id="5mr7UHchgKN" role="3uHU7w">
                        <ref role="3cqZAo" node="3F6vMxqo28U" resolve="symbol" />
                      </node>
                      <node concept="Xl_RD" id="5mr7UHchgEB" role="3uHU7B">
                        <property role="Xl_RC" value="unknown symbol: " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3F6vMxqo28Z" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3F6vMxqo1bP" role="jymVt" />
    <node concept="3Tm1VV" id="3F6vMxqo13Z" role="1B3o_S" />
    <node concept="3uibUv" id="3F6vMxqo15F" role="1zkMxy">
      <ref role="3uigEE" to="w7la:~SessionSolver" resolve="SessionSolver" />
    </node>
  </node>
  <node concept="312cEu" id="5WBVN_M1SJ9">
    <property role="TrG5h" value="EvalExpressionPredicate" />
    <node concept="2tJIrI" id="5WBVN_M1T_3" role="jymVt" />
    <node concept="3clFbW" id="5WBVN_M1T_o" role="jymVt">
      <node concept="37vLTG" id="5WBVN_M1TK8" role="3clF46">
        <property role="TrG5h" value="expression" />
        <node concept="3uibUv" id="5WBVN_M3lXg" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="5WBVN_M1T_q" role="3clF45" />
      <node concept="3Tm1VV" id="5WBVN_M1T_r" role="1B3o_S" />
      <node concept="3clFbS" id="5WBVN_M1T_s" role="3clF47">
        <node concept="XkiVB" id="5WBVN_M1Upn" role="3cqZAp">
          <ref role="37wK5l" node="6Kcfpq7B1f7" resolve="AbstractPredicate" />
          <node concept="37vLTw" id="5WBVN_M1Utw" role="37wK5m">
            <ref role="3cqZAo" node="5WBVN_M1TK8" resolve="expression" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5WBVN_M2QU_" role="jymVt" />
    <node concept="3clFb_" id="5WBVN_M1UHN" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="5WBVN_M1UHO" role="1B3o_S" />
      <node concept="3uibUv" id="5WBVN_M1Vot" role="3clF45">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="3clFbS" id="5WBVN_M1UHV" role="3clF47">
        <node concept="3clFbF" id="5WBVN_M2w3K" role="3cqZAp">
          <node concept="37vLTw" id="5WBVN_M2w3J" role="3clFbG">
            <ref role="3cqZAo" node="5WBVN_M2qrL" resolve="EVAL_SYM" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5WBVN_M1UHW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5WBVN_M2v78" role="jymVt" />
    <node concept="Wx3nA" id="5WBVN_M2tIe" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="EVAL" />
      <node concept="3Tm1VV" id="5WBVN_M2vBr" role="1B3o_S" />
      <node concept="17QB3L" id="5WBVN_M2tIc" role="1tU5fm" />
      <node concept="Xl_RD" id="5WBVN_M2tId" role="33vP2m">
        <property role="Xl_RC" value="eval" />
      </node>
    </node>
    <node concept="Wx3nA" id="5WBVN_M2qrL" role="jymVt">
      <property role="TrG5h" value="EVAL_SYM" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="5WBVN_M1T$L" role="1tU5fm">
        <ref role="3uigEE" to="av0y:~PredicateSymbol" resolve="PredicateSymbol" />
      </node>
      <node concept="3Tm1VV" id="5WBVN_M2vMw" role="1B3o_S" />
      <node concept="2ShNRf" id="5WBVN_M2sgI" role="33vP2m">
        <node concept="1pGfFk" id="5WBVN_M2sgq" role="2ShVmc">
          <ref role="37wK5l" to="av0y:~PredicateSymbol.&lt;init&gt;(java.lang.String,int)" resolve="PredicateSymbol" />
          <node concept="37vLTw" id="5WBVN_M2tIh" role="37wK5m">
            <ref role="3cqZAo" node="5WBVN_M2tIe" resolve="EVAL" />
          </node>
          <node concept="3cmrfG" id="5WBVN_M2sxX" role="37wK5m">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5WBVN_M1SJa" role="1B3o_S" />
    <node concept="3uibUv" id="5WBVN_M1SK4" role="1zkMxy">
      <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
    </node>
  </node>
</model>

