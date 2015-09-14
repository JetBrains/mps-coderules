<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b094f86e-558c-4295-8b38-f6a26ad07b4f(jetbrains.mps.logic.constraint)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="2" />
  </languages>
  <imports>
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="eifs" ref="b984ee52-f34d-4b6d-8812-866c1d3eae31/java:runtime(jetbrains.mps.jchr.runtime/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
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
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
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
  <node concept="3HP615" id="6Kcfpq7AXVG">
    <property role="TrG5h" value="Instructible" />
    <node concept="2tJIrI" id="6Kcfpq7AY2O" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7AY2Z" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tell" />
      <node concept="37vLTG" id="4xBopTzntCY" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="4xBopTzntFo" role="1tU5fm">
          <ref role="3uigEE" node="6Kcfpq7BfEn" resolve="Constraint" />
        </node>
      </node>
      <node concept="37vLTG" id="6Kcfpq7AYhp" role="3clF46">
        <property role="TrG5h" value="arg" />
        <node concept="8X2XB" id="6Kcfpq7AYvU" role="1tU5fm">
          <node concept="3uibUv" id="6Kcfpq7AYox" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6Kcfpq7AY31" role="3clF45" />
      <node concept="3Tm1VV" id="6Kcfpq7AY32" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7AY33" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6Kcfpq7AY2T" role="jymVt" />
    <node concept="3Tm1VV" id="6Kcfpq7AXVH" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="6Kcfpq7AYBh">
    <property role="TrG5h" value="Queryable" />
    <node concept="2tJIrI" id="6Kcfpq7AYIp" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7AYIw" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="ask" />
      <node concept="37vLTG" id="4xBopTznyfZ" role="3clF46">
        <property role="TrG5h" value="autoConstraint" />
        <node concept="3uibUv" id="4xBopTznygs" role="1tU5fm">
          <ref role="3uigEE" node="6Kcfpq7Bj7q" resolve="AutoConstraint" />
        </node>
      </node>
      <node concept="37vLTG" id="6Kcfpq7AYXx" role="3clF46">
        <property role="TrG5h" value="arg" />
        <node concept="8X2XB" id="6Kcfpq7AZc0" role="1tU5fm">
          <node concept="3uibUv" id="6Kcfpq7AZ4J" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="6Kcfpq7AYQk" role="3clF45" />
      <node concept="3Tm1VV" id="6Kcfpq7AYIz" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7AYI$" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6Kcfpq7AYPU" role="jymVt" />
    <node concept="3Tm1VV" id="6Kcfpq7AYBi" role="1B3o_S" />
    <node concept="3uibUv" id="6Kcfpq7AZqN" role="3HQHJm">
      <ref role="3uigEE" node="6Kcfpq7AXVG" resolve="Instructible" />
    </node>
  </node>
  <node concept="312cEu" id="6Kcfpq7B0b0">
    <property role="TrG5h" value="ComputingSession" />
    <node concept="2tJIrI" id="6Kcfpq7B0Qi" role="jymVt" />
    <node concept="2YIFZL" id="4xBopTzo4e1" role="jymVt">
      <property role="TrG5h" value="getDefault" />
      <node concept="3uibUv" id="4xBopTzo4ZZ" role="3clF45">
        <ref role="3uigEE" node="6Kcfpq7B0b0" resolve="ComputingSession" />
      </node>
      <node concept="3Tm1VV" id="4xBopTzo4e4" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzo4e5" role="3clF47">
        <node concept="3cpWs6" id="4xBopTzo5oQ" role="3cqZAp">
          <node concept="2OqwBi" id="4xBopTzqLwm" role="3cqZAk">
            <node concept="1rXfSq" id="4xBopTzo5pu" role="2Oq$k0">
              <ref role="37wK5l" node="6Kcfpq7BWKD" resolve="with" />
              <node concept="10M0yZ" id="4xBopTzqK2f" role="37wK5m">
                <ref role="1PxDUh" to="oy3s:3HJTsBn4kk_" resolve="EqualsBuiltinConstraint" />
                <ref role="3cqZAo" to="oy3s:3HJTsBn4kQs" resolve="INSTANCE" />
              </node>
              <node concept="10M0yZ" id="4xBopTzqK8e" role="37wK5m">
                <ref role="1PxDUh" to="oy3s:2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                <ref role="3cqZAo" to="oy3s:2GO7tyJY8Rr" resolve="INSTANCE" />
              </node>
            </node>
            <node concept="liA8E" id="4xBopTzqLGP" role="2OqNvi">
              <ref role="37wK5l" node="6Kcfpq7Cgrc" resolve="newSession" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzo3sb" role="jymVt" />
    <node concept="2YIFZL" id="6Kcfpq7BWKD" role="jymVt">
      <property role="TrG5h" value="with" />
      <node concept="37vLTG" id="6Kcfpq7BX5n" role="3clF46">
        <property role="TrG5h" value="cst" />
        <node concept="8X2XB" id="6Kcfpq7BX92" role="1tU5fm">
          <node concept="3uibUv" id="6Kcfpq7Cmx8" role="8Xvag">
            <ref role="3uigEE" node="6Kcfpq7CkpJ" resolve="ComputingItem" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6Kcfpq7BWZe" role="3clF45">
        <ref role="3uigEE" node="6Kcfpq7BTQb" resolve="ComputingSession.Builder" />
      </node>
      <node concept="3Tm1VV" id="6Kcfpq7BWKG" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7BWKH" role="3clF47">
        <node concept="3clFbF" id="6Kcfpq7BYpl" role="3cqZAp">
          <node concept="2ShNRf" id="6Kcfpq7BYpj" role="3clFbG">
            <node concept="1pGfFk" id="6Kcfpq7BZmp" role="2ShVmc">
              <ref role="37wK5l" node="6Kcfpq7BWZz" resolve="ComputingSession.Builder" />
              <node concept="37vLTw" id="6Kcfpq7BZmK" role="37wK5m">
                <ref role="3cqZAo" node="6Kcfpq7BX5n" resolve="cst" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7BY0I" role="jymVt" />
    <node concept="3clFbW" id="6Kcfpq7BJaF" role="jymVt">
      <node concept="37vLTG" id="24Vro6cQB61" role="3clF46">
        <property role="TrG5h" value="tracer" />
        <node concept="3uibUv" id="24Vro6cQBin" role="1tU5fm">
          <ref role="3uigEE" node="24Vro6cQnrj" resolve="ComputingTracer" />
        </node>
      </node>
      <node concept="3cqZAl" id="6Kcfpq7BJaH" role="3clF45" />
      <node concept="3Tm6S6" id="6Kcfpq7CfrR" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7BJaJ" role="3clF47">
        <node concept="3clFbF" id="24Vro6cQBEg" role="3cqZAp">
          <node concept="37vLTI" id="24Vro6cQBHr" role="3clFbG">
            <node concept="37vLTw" id="24Vro6cQBIm" role="37vLTx">
              <ref role="3cqZAo" node="24Vro6cQB61" resolve="tracer" />
            </node>
            <node concept="2OqwBi" id="24Vro6cQBEw" role="37vLTJ">
              <node concept="Xjq3P" id="24Vro6cQBEf" role="2Oq$k0" />
              <node concept="2OwXpG" id="24Vro6cQBGy" role="2OqNvi">
                <ref role="2Oxat5" node="24Vro6cQyK4" resolve="tracer" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7Bmmj" role="jymVt" />
    <node concept="312cEu" id="6Kcfpq7BTQb" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <property role="TrG5h" value="Builder" />
      <node concept="2tJIrI" id="6Kcfpq7BU6k" role="jymVt" />
      <node concept="3clFbW" id="6Kcfpq7BWZz" role="jymVt">
        <node concept="37vLTG" id="6Kcfpq7BXbe" role="3clF46">
          <property role="TrG5h" value="item" />
          <node concept="8X2XB" id="6Kcfpq7BXeT" role="1tU5fm">
            <node concept="3uibUv" id="6Kcfpq7CmD7" role="8Xvag">
              <ref role="3uigEE" node="6Kcfpq7CkpJ" resolve="ComputingItem" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="6Kcfpq7BWZ_" role="3clF45" />
        <node concept="3clFbS" id="6Kcfpq7BWZA" role="3clF47">
          <node concept="3clFbF" id="6Kcfpq7C1Tp" role="3cqZAp">
            <node concept="2OqwBi" id="6Kcfpq7C24z" role="3clFbG">
              <node concept="37vLTw" id="6Kcfpq7C1To" role="2Oq$k0">
                <ref role="3cqZAo" node="6Kcfpq7C1nA" resolve="items" />
              </node>
              <node concept="liA8E" id="6Kcfpq7C2kY" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection):boolean" resolve="addAll" />
                <node concept="2YIFZM" id="6Kcfpq7C3Zw" role="37wK5m">
                  <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                  <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                  <node concept="37vLTw" id="6Kcfpq7C440" role="37wK5m">
                    <ref role="3cqZAo" node="6Kcfpq7BXbe" resolve="item" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="6Kcfpq7BWZN" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="6Kcfpq7BU6m" role="jymVt" />
      <node concept="3clFb_" id="24Vro6cQjzH" role="jymVt">
        <property role="TrG5h" value="withTracer" />
        <node concept="37vLTG" id="24Vro6cQl7h" role="3clF46">
          <property role="TrG5h" value="tracer" />
          <node concept="3uibUv" id="24Vro6cQoAS" role="1tU5fm">
            <ref role="3uigEE" node="24Vro6cQnrj" resolve="ComputingTracer" />
          </node>
        </node>
        <node concept="3uibUv" id="24Vro6cQk4j" role="3clF45">
          <ref role="3uigEE" node="6Kcfpq7BTQb" resolve="ComputingSession.Builder" />
        </node>
        <node concept="3Tm1VV" id="24Vro6cQjzK" role="1B3o_S" />
        <node concept="3clFbS" id="24Vro6cQjzL" role="3clF47">
          <node concept="3clFbF" id="24Vro6cQoBu" role="3cqZAp">
            <node concept="37vLTI" id="24Vro6cQoBw" role="3clFbG">
              <node concept="2OqwBi" id="24Vro6cQoB$" role="37vLTJ">
                <node concept="Xjq3P" id="24Vro6cQoBB" role="2Oq$k0" />
                <node concept="2OwXpG" id="24Vro6cQoBz" role="2OqNvi">
                  <ref role="2Oxat5" node="24Vro6cQoBq" resolve="tracer" />
                </node>
              </node>
              <node concept="37vLTw" id="24Vro6cQoBC" role="37vLTx">
                <ref role="3cqZAo" node="24Vro6cQl7h" resolve="tracer" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="24Vro6cQpEB" role="3cqZAp">
            <node concept="Xjq3P" id="24Vro6cQpE_" role="3clFbG" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="24Vro6cQj3q" role="jymVt" />
      <node concept="3clFb_" id="6Kcfpq7Cgrc" role="jymVt">
        <property role="TrG5h" value="newSession" />
        <node concept="3uibUv" id="6Kcfpq7CgVs" role="3clF45">
          <ref role="3uigEE" node="6Kcfpq7B0b0" resolve="ComputingSession" />
        </node>
        <node concept="3clFbS" id="6Kcfpq7Cgrf" role="3clF47">
          <node concept="3cpWs8" id="6Kcfpq7Ci9o" role="3cqZAp">
            <node concept="3cpWsn" id="6Kcfpq7Ci9p" role="3cpWs9">
              <property role="TrG5h" value="session" />
              <node concept="3uibUv" id="6Kcfpq7Ci9n" role="1tU5fm">
                <ref role="3uigEE" node="6Kcfpq7B0b0" resolve="ComputingSession" />
              </node>
              <node concept="2ShNRf" id="6Kcfpq7Ci9q" role="33vP2m">
                <node concept="1pGfFk" id="6Kcfpq7Ci9r" role="2ShVmc">
                  <ref role="37wK5l" node="6Kcfpq7BJaF" resolve="ComputingSession" />
                  <node concept="37vLTw" id="24Vro6cQBJH" role="37wK5m">
                    <ref role="3cqZAo" node="24Vro6cQoBq" resolve="tracer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="6Kcfpq7CifV" role="3cqZAp">
            <node concept="3clFbS" id="6Kcfpq7CifX" role="2LFqv$">
              <node concept="3clFbF" id="6Kcfpq7Craj" role="3cqZAp">
                <node concept="2OqwBi" id="6Kcfpq7CraQ" role="3clFbG">
                  <node concept="37vLTw" id="6Kcfpq7Crai" role="2Oq$k0">
                    <ref role="3cqZAo" node="6Kcfpq7CifZ" resolve="ci" />
                  </node>
                  <node concept="liA8E" id="6Kcfpq7Crca" role="2OqNvi">
                    <ref role="37wK5l" node="6Kcfpq7CkPa" resolve="init" />
                    <node concept="37vLTw" id="6Kcfpq7CrcZ" role="37wK5m">
                      <ref role="3cqZAo" node="6Kcfpq7Ci9p" resolve="session" />
                    </node>
                    <node concept="37vLTw" id="24Vro6cRGxU" role="37wK5m">
                      <ref role="3cqZAo" node="24Vro6cQoBq" resolve="tracer" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="6Kcfpq7CifZ" role="1Duv9x">
              <property role="TrG5h" value="ci" />
              <node concept="3uibUv" id="6Kcfpq7CpJ8" role="1tU5fm">
                <ref role="3uigEE" node="6Kcfpq7CkpJ" resolve="ComputingItem" />
              </node>
            </node>
            <node concept="37vLTw" id="6Kcfpq7Cig4" role="1DdaDG">
              <ref role="3cqZAo" node="6Kcfpq7C1nA" resolve="items" />
            </node>
          </node>
          <node concept="3cpWs6" id="6Kcfpq7Crdz" role="3cqZAp">
            <node concept="37vLTw" id="6Kcfpq7Ci9s" role="3cqZAk">
              <ref role="3cqZAo" node="6Kcfpq7Ci9p" resolve="session" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="6Kcfpq7CgII" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="6Kcfpq7Cg9v" role="jymVt" />
      <node concept="312cEg" id="6Kcfpq7C1nA" role="jymVt">
        <property role="TrG5h" value="items" />
        <node concept="3Tm6S6" id="6Kcfpq7C1nB" role="1B3o_S" />
        <node concept="3uibUv" id="6Kcfpq7C1q$" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="6Kcfpq7CmUd" role="11_B2D">
            <ref role="3uigEE" node="6Kcfpq7CkpJ" resolve="ComputingItem" />
          </node>
        </node>
        <node concept="2ShNRf" id="6Kcfpq7C1rR" role="33vP2m">
          <node concept="1pGfFk" id="6Kcfpq7C1wG" role="2ShVmc">
            <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
            <node concept="3uibUv" id="6Kcfpq7Cn4o" role="1pMfVU">
              <ref role="3uigEE" node="6Kcfpq7CkpJ" resolve="ComputingItem" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xBopTzuEuZ" role="1B3o_S" />
      <node concept="312cEg" id="24Vro6cQoBq" role="jymVt">
        <property role="TrG5h" value="tracer" />
        <node concept="3Tm6S6" id="24Vro6cQoBr" role="1B3o_S" />
        <node concept="3uibUv" id="24Vro6cQoBt" role="1tU5fm">
          <ref role="3uigEE" node="24Vro6cQnrj" resolve="ComputingTracer" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7BSVl" role="jymVt" />
    <node concept="2tJIrI" id="24Vro6cQmg2" role="jymVt" />
    <node concept="3clFb_" id="4xBopTznHV5" role="jymVt">
      <property role="TrG5h" value="ask" />
      <node concept="37vLTG" id="4xBopTznJFk" role="3clF46">
        <property role="TrG5h" value="autoConstraint" />
        <node concept="3uibUv" id="4xBopTznJYg" role="1tU5fm">
          <ref role="3uigEE" node="6Kcfpq7Bj7q" resolve="AutoConstraint" />
        </node>
      </node>
      <node concept="37vLTG" id="4xBopTznK09" role="3clF46">
        <property role="TrG5h" value="arg" />
        <node concept="8X2XB" id="4xBopTznKlF" role="1tU5fm">
          <node concept="3uibUv" id="4xBopTznKj7" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="4xBopTznJ7k" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTznHV8" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTznHV9" role="3clF47">
        <node concept="3cpWs8" id="4xBopTznKPC" role="3cqZAp">
          <node concept="3cpWsn" id="4xBopTznKPD" role="3cpWs9">
            <property role="TrG5h" value="solver" />
            <node concept="3uibUv" id="4xBopTznKP_" role="1tU5fm">
              <ref role="3uigEE" node="6Kcfpq7AYBh" resolve="Queryable" />
            </node>
            <node concept="1rXfSq" id="4xBopTznKPE" role="33vP2m">
              <ref role="37wK5l" node="6Kcfpq7B10O" resolve="solver" />
              <node concept="37vLTw" id="4xBopTznKPF" role="37wK5m">
                <ref role="3cqZAo" node="4xBopTznJFk" resolve="autoConstraint" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4xBopTznKRc" role="3cqZAp">
          <node concept="3clFbS" id="4xBopTznKRe" role="3clFbx">
            <node concept="YS8fn" id="2GO7tyJTJIH" role="3cqZAp">
              <node concept="2ShNRf" id="2GO7tyJTJJ5" role="YScLw">
                <node concept="1pGfFk" id="2GO7tyJTJXR" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="3cpWs3" id="2GO7tyJTLcI" role="37wK5m">
                    <node concept="Xl_RD" id="2GO7tyJTLcT" role="3uHU7w">
                      <property role="Xl_RC" value="'" />
                    </node>
                    <node concept="3cpWs3" id="2GO7tyJTK_t" role="3uHU7B">
                      <node concept="Xl_RD" id="2GO7tyJTJZp" role="3uHU7B">
                        <property role="Xl_RC" value="no solver for '" />
                      </node>
                      <node concept="2OqwBi" id="2GO7tyJTKKV" role="3uHU7w">
                        <node concept="37vLTw" id="4xBopTznLdt" role="2Oq$k0">
                          <ref role="3cqZAo" node="4xBopTznJFk" resolve="autoConstraint" />
                        </node>
                        <node concept="liA8E" id="2GO7tyJTKXA" role="2OqNvi">
                          <ref role="37wK5l" node="6Kcfpq7Bjgi" resolve="symbol" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4xBopTznL4F" role="3clFbw">
            <node concept="10Nm6u" id="4xBopTznL58" role="3uHU7w" />
            <node concept="37vLTw" id="4xBopTznKYd" role="3uHU7B">
              <ref role="3cqZAo" node="4xBopTznKPD" resolve="solver" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4xBopTznM87" role="3cqZAp" />
        <node concept="3cpWs6" id="4xBopTznMkq" role="3cqZAp">
          <node concept="2OqwBi" id="4xBopTznNyu" role="3cqZAk">
            <node concept="37vLTw" id="4xBopTznN7k" role="2Oq$k0">
              <ref role="3cqZAo" node="4xBopTznKPD" resolve="solver" />
            </node>
            <node concept="liA8E" id="4xBopTznNUP" role="2OqNvi">
              <ref role="37wK5l" node="6Kcfpq7AYIw" resolve="ask" />
              <node concept="37vLTw" id="4xBopTznOgs" role="37wK5m">
                <ref role="3cqZAo" node="4xBopTznJFk" resolve="autoConstraint" />
              </node>
              <node concept="37vLTw" id="4xBopTznOSL" role="37wK5m">
                <ref role="3cqZAo" node="4xBopTznK09" resolve="arg" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTznHuj" role="jymVt" />
    <node concept="3clFb_" id="4xBopTznPKO" role="jymVt">
      <property role="TrG5h" value="tell" />
      <node concept="3cqZAl" id="4xBopTznPKQ" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTznPKR" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTznPKS" role="3clF47">
        <node concept="3cpWs8" id="4xBopTznRC7" role="3cqZAp">
          <node concept="3cpWsn" id="4xBopTznRC8" role="3cpWs9">
            <property role="TrG5h" value="handler" />
            <node concept="3uibUv" id="4xBopTznRC6" role="1tU5fm">
              <ref role="3uigEE" node="6Kcfpq7AXVG" resolve="Instructible" />
            </node>
            <node concept="1rXfSq" id="4xBopTznRC9" role="33vP2m">
              <ref role="37wK5l" node="6Kcfpq7B0QC" resolve="handler" />
              <node concept="37vLTw" id="4xBopTznRCa" role="37wK5m">
                <ref role="3cqZAo" node="4xBopTznQGo" resolve="constraint" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4xBopTznRD$" role="3cqZAp">
          <node concept="3clFbS" id="4xBopTznRDA" role="3clFbx">
            <node concept="YS8fn" id="4xBopTznRO3" role="3cqZAp">
              <node concept="2ShNRf" id="4xBopTznRO4" role="YScLw">
                <node concept="1pGfFk" id="4xBopTznRO5" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="3cpWs3" id="4xBopTznRO6" role="37wK5m">
                    <node concept="Xl_RD" id="4xBopTznRO7" role="3uHU7w">
                      <property role="Xl_RC" value="'" />
                    </node>
                    <node concept="3cpWs3" id="4xBopTznRO8" role="3uHU7B">
                      <node concept="Xl_RD" id="4xBopTznRO9" role="3uHU7B">
                        <property role="Xl_RC" value="no handler for '" />
                      </node>
                      <node concept="2OqwBi" id="4xBopTznROa" role="3uHU7w">
                        <node concept="37vLTw" id="4xBopTznRVo" role="2Oq$k0">
                          <ref role="3cqZAo" node="4xBopTznQGo" resolve="constraint" />
                        </node>
                        <node concept="liA8E" id="4xBopTznROc" role="2OqNvi">
                          <ref role="37wK5l" node="6Kcfpq7BgtC" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4xBopTznRNl" role="3clFbw">
            <node concept="10Nm6u" id="4xBopTznRNK" role="3uHU7w" />
            <node concept="37vLTw" id="4xBopTznRKo" role="3uHU7B">
              <ref role="3cqZAo" node="4xBopTznRC8" resolve="handler" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4xBopTznS8w" role="3cqZAp" />
        <node concept="3clFbF" id="4xBopTznSgM" role="3cqZAp">
          <node concept="2OqwBi" id="4xBopTznSmj" role="3clFbG">
            <node concept="37vLTw" id="4xBopTznSgK" role="2Oq$k0">
              <ref role="3cqZAo" node="4xBopTznRC8" resolve="handler" />
            </node>
            <node concept="liA8E" id="4xBopTznSrf" role="2OqNvi">
              <ref role="37wK5l" node="6Kcfpq7AY2Z" resolve="tell" />
              <node concept="37vLTw" id="4xBopTznSrS" role="37wK5m">
                <ref role="3cqZAo" node="4xBopTznQGo" resolve="constraint" />
              </node>
              <node concept="37vLTw" id="4xBopTznSsW" role="37wK5m">
                <ref role="3cqZAo" node="4xBopTznR4D" resolve="arg" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4xBopTznQGo" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="4xBopTznQGn" role="1tU5fm">
          <ref role="3uigEE" node="6Kcfpq7BfEn" resolve="Constraint" />
        </node>
      </node>
      <node concept="37vLTG" id="4xBopTznR4D" role="3clF46">
        <property role="TrG5h" value="arg" />
        <node concept="8X2XB" id="4xBopTznRwA" role="1tU5fm">
          <node concept="3uibUv" id="4xBopTznRsM" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTznH1y" role="jymVt" />
    <node concept="3clFb_" id="4xBopTzssWB" role="jymVt">
      <property role="TrG5h" value="lookupConstraint" />
      <node concept="37vLTG" id="4xBopTzsx3E" role="3clF46">
        <property role="TrG5h" value="clazz" />
        <node concept="3uibUv" id="4xBopTzsxtj" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="4xBopTzuGaJ" role="11_B2D" />
        </node>
      </node>
      <node concept="3uibUv" id="4xBopTzsv87" role="3clF45">
        <ref role="3uigEE" node="6Kcfpq7BfEn" resolve="Constraint" />
      </node>
      <node concept="3Tm1VV" id="4xBopTzssWE" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzssWF" role="3clF47">
        <node concept="1DcWWT" id="4xBopTzsFsr" role="3cqZAp">
          <node concept="3clFbS" id="4xBopTzsFss" role="2LFqv$">
            <node concept="3clFbJ" id="4xBopTzsFst" role="3cqZAp">
              <node concept="3clFbS" id="4xBopTzsFsu" role="3clFbx">
                <node concept="3cpWs6" id="4xBopTzsFsv" role="3cqZAp">
                  <node concept="2OqwBi" id="4xBopTzsFsw" role="3cqZAk">
                    <node concept="37vLTw" id="4xBopTzsFsx" role="2Oq$k0">
                      <ref role="3cqZAo" node="4xBopTzsFsF" resolve="e" />
                    </node>
                    <node concept="liA8E" id="4xBopTzsFsy" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map$Entry.getKey():java.lang.Object" resolve="getKey" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4xBopTzsFsz" role="3clFbw">
                <node concept="37vLTw" id="4xBopTzsFs$" role="2Oq$k0">
                  <ref role="3cqZAo" node="4xBopTzsx3E" resolve="clazz" />
                </node>
                <node concept="liA8E" id="4xBopTzsFs_" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Class.isAssignableFrom(java.lang.Class):boolean" resolve="isAssignableFrom" />
                  <node concept="2OqwBi" id="4xBopTzsFsA" role="37wK5m">
                    <node concept="2OqwBi" id="4xBopTzsFsB" role="2Oq$k0">
                      <node concept="37vLTw" id="4xBopTzsFsC" role="2Oq$k0">
                        <ref role="3cqZAo" node="4xBopTzsFsF" resolve="e" />
                      </node>
                      <node concept="liA8E" id="4xBopTzsFsD" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map$Entry.getKey():java.lang.Object" resolve="getKey" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4xBopTzsFsE" role="2OqNvi">
                      <ref role="37wK5l" node="4xBopTzlOq0" resolve="handlerClass" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4xBopTzsFsF" role="1Duv9x">
            <property role="TrG5h" value="e" />
            <node concept="3uibUv" id="4xBopTzsFsG" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map$Entry" resolve="Map.Entry" />
              <node concept="3uibUv" id="4xBopTzsFGt" role="11_B2D">
                <ref role="3uigEE" node="6Kcfpq7BfEn" resolve="Constraint" />
              </node>
              <node concept="3uibUv" id="4xBopTzsGEw" role="11_B2D">
                <ref role="3uigEE" node="6Kcfpq7AXVG" resolve="Instructible" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4xBopTzsFsJ" role="1DdaDG">
            <node concept="37vLTw" id="4xBopTzsIRy" role="2Oq$k0">
              <ref role="3cqZAo" node="2GO7tyJTzV1" resolve="handlers" />
            </node>
            <node concept="liA8E" id="4xBopTzsFsL" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.entrySet():java.util.Set" resolve="entrySet" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4xBopTzsFsM" role="3cqZAp">
          <node concept="10Nm6u" id="4xBopTzsFsN" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzsya7" role="jymVt" />
    <node concept="3clFb_" id="4xBopTzsxxs" role="jymVt">
      <property role="TrG5h" value="lookupAutoConstraint" />
      <node concept="37vLTG" id="4xBopTzsxxt" role="3clF46">
        <property role="TrG5h" value="clazz" />
        <node concept="3uibUv" id="4xBopTzsxxu" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="4xBopTzuGiG" role="11_B2D" />
        </node>
      </node>
      <node concept="3uibUv" id="4xBopTzsyKh" role="3clF45">
        <ref role="3uigEE" node="6Kcfpq7Bj7q" resolve="AutoConstraint" />
      </node>
      <node concept="3Tm1VV" id="4xBopTzsxxy" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzsxxz" role="3clF47">
        <node concept="1DcWWT" id="4xBopTzs_7_" role="3cqZAp">
          <node concept="3clFbS" id="4xBopTzs_7B" role="2LFqv$">
            <node concept="3clFbJ" id="4xBopTzs_ns" role="3cqZAp">
              <node concept="3clFbS" id="4xBopTzs_nt" role="3clFbx">
                <node concept="3cpWs6" id="4xBopTzsAE7" role="3cqZAp">
                  <node concept="2OqwBi" id="4xBopTzsBMW" role="3cqZAk">
                    <node concept="37vLTw" id="4xBopTzsBen" role="2Oq$k0">
                      <ref role="3cqZAo" node="4xBopTzs_7D" resolve="e" />
                    </node>
                    <node concept="liA8E" id="4xBopTzsCqM" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map$Entry.getKey():java.lang.Object" resolve="getKey" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4xBopTzs_sf" role="3clFbw">
                <node concept="37vLTw" id="4xBopTzs_nM" role="2Oq$k0">
                  <ref role="3cqZAo" node="4xBopTzsxxt" resolve="clazz" />
                </node>
                <node concept="liA8E" id="4xBopTzs_AV" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Class.isAssignableFrom(java.lang.Class):boolean" resolve="isAssignableFrom" />
                  <node concept="2OqwBi" id="4xBopTzs_JA" role="37wK5m">
                    <node concept="2OqwBi" id="4xBopTzs_Ed" role="2Oq$k0">
                      <node concept="37vLTw" id="4xBopTzs_CO" role="2Oq$k0">
                        <ref role="3cqZAo" node="4xBopTzs_7D" resolve="e" />
                      </node>
                      <node concept="liA8E" id="4xBopTzs_GQ" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map$Entry.getKey():java.lang.Object" resolve="getKey" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4xBopTzsA_A" role="2OqNvi">
                      <ref role="37wK5l" node="4xBopTzlOsG" resolve="solverClass" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4xBopTzs_7D" role="1Duv9x">
            <property role="TrG5h" value="e" />
            <node concept="3uibUv" id="4xBopTzs_7H" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map$Entry" resolve="Map.Entry" />
              <node concept="3uibUv" id="4xBopTzsAtJ" role="11_B2D">
                <ref role="3uigEE" node="6Kcfpq7Bj7q" resolve="AutoConstraint" />
              </node>
              <node concept="3uibUv" id="4xBopTzs_7J" role="11_B2D">
                <ref role="3uigEE" node="6Kcfpq7AYBh" resolve="Queryable" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4xBopTzs_7K" role="1DdaDG">
            <node concept="37vLTw" id="4xBopTzs_7L" role="2Oq$k0">
              <ref role="3cqZAo" node="6Kcfpq7B51L" resolve="solvers" />
            </node>
            <node concept="liA8E" id="4xBopTzs_7M" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.entrySet():java.util.Set" resolve="entrySet" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4xBopTzsDEr" role="3cqZAp">
          <node concept="10Nm6u" id="4xBopTzsEPg" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzsrrI" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7B0QC" role="jymVt">
      <property role="TrG5h" value="handler" />
      <node concept="37vLTG" id="6Kcfpq7B0U_" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="6Kcfpq7CuEG" role="1tU5fm">
          <ref role="3uigEE" node="6Kcfpq7BfEn" resolve="Constraint" />
        </node>
      </node>
      <node concept="3uibUv" id="6Kcfpq7B0SD" role="3clF45">
        <ref role="3uigEE" node="6Kcfpq7AXVG" resolve="Instructible" />
      </node>
      <node concept="3Tmbuc" id="6Kcfpq7Bmcu" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7B0QG" role="3clF47">
        <node concept="3clFbJ" id="6Kcfpq7B7yk" role="3cqZAp">
          <node concept="3clFbS" id="6Kcfpq7B7yl" role="3clFbx">
            <node concept="YS8fn" id="6Kcfpq7B83r" role="3cqZAp">
              <node concept="2ShNRf" id="6Kcfpq7B83J" role="YScLw">
                <node concept="1pGfFk" id="6Kcfpq7B8cz" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="3cpWs3" id="6Kcfpq7B8lK" role="37wK5m">
                    <node concept="37vLTw" id="6Kcfpq7B8n0" role="3uHU7w">
                      <ref role="3cqZAo" node="6Kcfpq7B0U_" resolve="constraint" />
                    </node>
                    <node concept="Xl_RD" id="6Kcfpq7B8cZ" role="3uHU7B">
                      <property role="Xl_RC" value="no handler: " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6Kcfpq7B7yE" role="3clFbw">
            <node concept="2OqwBi" id="6Kcfpq7B7GQ" role="3fr31v">
              <node concept="37vLTw" id="6Kcfpq7B7$Z" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyJTzV1" resolve="handlers" />
              </node>
              <node concept="liA8E" id="6Kcfpq7B7VP" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                <node concept="37vLTw" id="6Kcfpq7B7Z$" role="37wK5m">
                  <ref role="3cqZAo" node="6Kcfpq7B0U_" resolve="constraint" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6Kcfpq7B9Fo" role="3cqZAp">
          <node concept="2OqwBi" id="6Kcfpq7B9Me" role="3clFbG">
            <node concept="37vLTw" id="6Kcfpq7B9Fm" role="2Oq$k0">
              <ref role="3cqZAo" node="2GO7tyJTzV1" resolve="handlers" />
            </node>
            <node concept="liA8E" id="6Kcfpq7Ba26" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
              <node concept="37vLTw" id="6Kcfpq7Ba5I" role="37wK5m">
                <ref role="3cqZAo" node="6Kcfpq7B0U_" resolve="constraint" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7B13i" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7B10O" role="jymVt">
      <property role="TrG5h" value="solver" />
      <node concept="37vLTG" id="6Kcfpq7B10P" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="6Kcfpq7CuLC" role="1tU5fm">
          <ref role="3uigEE" node="6Kcfpq7Bj7q" resolve="AutoConstraint" />
        </node>
      </node>
      <node concept="3uibUv" id="6Kcfpq7B13G" role="3clF45">
        <ref role="3uigEE" node="6Kcfpq7AYBh" resolve="Queryable" />
      </node>
      <node concept="3Tmbuc" id="6Kcfpq7Bm4i" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7B10T" role="3clF47">
        <node concept="3clFbJ" id="6Kcfpq7BaRr" role="3cqZAp">
          <node concept="3clFbS" id="6Kcfpq7BaRs" role="3clFbx">
            <node concept="YS8fn" id="6Kcfpq7BaRt" role="3cqZAp">
              <node concept="2ShNRf" id="6Kcfpq7BaRu" role="YScLw">
                <node concept="1pGfFk" id="6Kcfpq7BaRv" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="3cpWs3" id="6Kcfpq7BaRw" role="37wK5m">
                    <node concept="37vLTw" id="6Kcfpq7BaRx" role="3uHU7w">
                      <ref role="3cqZAo" node="6Kcfpq7B10P" resolve="constraint" />
                    </node>
                    <node concept="Xl_RD" id="6Kcfpq7BaRy" role="3uHU7B">
                      <property role="Xl_RC" value="no handler: " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6Kcfpq7BaRz" role="3clFbw">
            <node concept="2OqwBi" id="6Kcfpq7BaR$" role="3fr31v">
              <node concept="37vLTw" id="6Kcfpq7Bb2U" role="2Oq$k0">
                <ref role="3cqZAo" node="6Kcfpq7B51L" resolve="solvers" />
              </node>
              <node concept="liA8E" id="6Kcfpq7BaRA" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                <node concept="37vLTw" id="6Kcfpq7BaRB" role="37wK5m">
                  <ref role="3cqZAo" node="6Kcfpq7B10P" resolve="constraint" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6Kcfpq7BaRC" role="3cqZAp">
          <node concept="2OqwBi" id="6Kcfpq7BaRD" role="3clFbG">
            <node concept="37vLTw" id="6Kcfpq7Bb9h" role="2Oq$k0">
              <ref role="3cqZAo" node="6Kcfpq7B51L" resolve="solvers" />
            </node>
            <node concept="liA8E" id="6Kcfpq7BaRF" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
              <node concept="37vLTw" id="6Kcfpq7BaRG" role="37wK5m">
                <ref role="3cqZAo" node="6Kcfpq7B10P" resolve="constraint" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7B2xY" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7B2yH" role="jymVt">
      <property role="TrG5h" value="registerHandler" />
      <node concept="3cqZAl" id="6Kcfpq7B2yJ" role="3clF45" />
      <node concept="3Tmbuc" id="6Kcfpq7BlpV" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7B2yL" role="3clF47">
        <node concept="3clFbF" id="6Kcfpq7Bc9w" role="3cqZAp">
          <node concept="2OqwBi" id="6Kcfpq7BceQ" role="3clFbG">
            <node concept="37vLTw" id="6Kcfpq7Bc9v" role="2Oq$k0">
              <ref role="3cqZAo" node="2GO7tyJTzV1" resolve="handlers" />
            </node>
            <node concept="liA8E" id="6Kcfpq7BcnH" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
              <node concept="37vLTw" id="6Kcfpq7Bcu$" role="37wK5m">
                <ref role="3cqZAo" node="6Kcfpq7B2G3" resolve="constraint" />
              </node>
              <node concept="37vLTw" id="6Kcfpq7BcBF" role="37wK5m">
                <ref role="3cqZAo" node="6Kcfpq7B2I6" resolve="instructible" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6Kcfpq7B2G3" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="6Kcfpq7CuSy" role="1tU5fm">
          <ref role="3uigEE" node="6Kcfpq7BfEn" resolve="Constraint" />
        </node>
      </node>
      <node concept="37vLTG" id="6Kcfpq7B2I6" role="3clF46">
        <property role="TrG5h" value="instructible" />
        <node concept="3uibUv" id="6Kcfpq7B2K1" role="1tU5fm">
          <ref role="3uigEE" node="6Kcfpq7AXVG" resolve="Instructible" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7BlwP" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7B2LV" role="jymVt">
      <property role="TrG5h" value="registerSolver" />
      <node concept="3cqZAl" id="6Kcfpq7B2LW" role="3clF45" />
      <node concept="3Tmbuc" id="6Kcfpq7BlXd" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7B2LY" role="3clF47">
        <node concept="3clFbF" id="6Kcfpq7BcIe" role="3cqZAp">
          <node concept="2OqwBi" id="6Kcfpq7BcN$" role="3clFbG">
            <node concept="37vLTw" id="6Kcfpq7BcId" role="2Oq$k0">
              <ref role="3cqZAo" node="6Kcfpq7B51L" resolve="solvers" />
            </node>
            <node concept="liA8E" id="6Kcfpq7BcWr" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
              <node concept="37vLTw" id="6Kcfpq7Bd4J" role="37wK5m">
                <ref role="3cqZAo" node="6Kcfpq7B2LZ" resolve="constraint" />
              </node>
              <node concept="37vLTw" id="6Kcfpq7Bdi0" role="37wK5m">
                <ref role="3cqZAo" node="6Kcfpq7B2M1" resolve="queryable" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6Kcfpq7B2LZ" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="6Kcfpq7CuVB" role="1tU5fm">
          <ref role="3uigEE" node="6Kcfpq7Bj7q" resolve="AutoConstraint" />
        </node>
      </node>
      <node concept="37vLTG" id="6Kcfpq7B2M1" role="3clF46">
        <property role="TrG5h" value="queryable" />
        <node concept="3uibUv" id="6Kcfpq7B2R9" role="1tU5fm">
          <ref role="3uigEE" node="6Kcfpq7AYBh" resolve="Queryable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7B5YO" role="jymVt" />
    <node concept="312cEg" id="2GO7tyJTzV1" role="jymVt">
      <property role="TrG5h" value="handlers" />
      <node concept="3Tm6S6" id="2GO7tyJTzV2" role="1B3o_S" />
      <node concept="3uibUv" id="2GO7tyJT$59" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="4xBopTzs_Ou" role="11_B2D">
          <ref role="3uigEE" node="6Kcfpq7BfEn" resolve="Constraint" />
        </node>
        <node concept="3uibUv" id="6Kcfpq7B59z" role="11_B2D">
          <ref role="3uigEE" node="6Kcfpq7AXVG" resolve="Instructible" />
        </node>
      </node>
      <node concept="2ShNRf" id="2GO7tyJTFoC" role="33vP2m">
        <node concept="1pGfFk" id="2GO7tyJTFM0" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="4xBopTzs_UT" role="1pMfVU">
            <ref role="3uigEE" node="6Kcfpq7BfEn" resolve="Constraint" />
          </node>
          <node concept="3uibUv" id="6Kcfpq7B5is" role="1pMfVU">
            <ref role="3uigEE" node="6Kcfpq7AXVG" resolve="Instructible" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7B5zv" role="jymVt" />
    <node concept="312cEg" id="6Kcfpq7B51L" role="jymVt">
      <property role="TrG5h" value="solvers" />
      <node concept="3Tm6S6" id="6Kcfpq7B51M" role="1B3o_S" />
      <node concept="3uibUv" id="6Kcfpq7B51N" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="4xBopTzsAf6" role="11_B2D">
          <ref role="3uigEE" node="6Kcfpq7Bj7q" resolve="AutoConstraint" />
        </node>
        <node concept="3uibUv" id="6Kcfpq7B5nl" role="11_B2D">
          <ref role="3uigEE" node="6Kcfpq7AYBh" resolve="Queryable" />
        </node>
      </node>
      <node concept="2ShNRf" id="6Kcfpq7B51Q" role="33vP2m">
        <node concept="1pGfFk" id="6Kcfpq7B51R" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="4xBopTzsA13" role="1pMfVU">
            <ref role="3uigEE" node="6Kcfpq7Bj7q" resolve="AutoConstraint" />
          </node>
          <node concept="3uibUv" id="6Kcfpq7B5x3" role="1pMfVU">
            <ref role="3uigEE" node="6Kcfpq7AYBh" resolve="Queryable" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7B4NQ" role="jymVt" />
    <node concept="3Tm1VV" id="6Kcfpq7B0b1" role="1B3o_S" />
    <node concept="3UR2Jj" id="6Kcfpq7CBOa" role="lGtFl">
      <node concept="TZ5HA" id="6Kcfpq7CBOb" role="TZ5H$">
        <node concept="1dT_AC" id="6Kcfpq7CBOc" role="1dT_Ay">
          <property role="1dT_AB" value="Computing session is used to provide an interface for handlers and solvers working together in a single session." />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="24Vro6cQyK4" role="jymVt">
      <property role="TrG5h" value="tracer" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="24Vro6cQyK5" role="1B3o_S" />
      <node concept="3uibUv" id="24Vro6cQyK7" role="1tU5fm">
        <ref role="3uigEE" node="24Vro6cQnrj" resolve="ComputingTracer" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6Kcfpq7B0Wu">
    <property role="TrG5h" value="AbstractConstraint" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="6Kcfpq7B16q" role="jymVt" />
    <node concept="3clFbW" id="6Kcfpq7B1f7" role="jymVt">
      <node concept="37vLTG" id="6Kcfpq7B1fC" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="17QB3L" id="6Kcfpq7B1ht" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6Kcfpq7BmCY" role="3clF46">
        <property role="TrG5h" value="arity" />
        <node concept="10Oyi0" id="6Kcfpq7BmFw" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="6Kcfpq7B1f9" role="3clF45" />
      <node concept="3Tm1VV" id="6Kcfpq7B1fa" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7B1fb" role="3clF47">
        <node concept="3clFbF" id="6Kcfpq7BHKT" role="3cqZAp">
          <node concept="37vLTI" id="6Kcfpq7BI21" role="3clFbG">
            <node concept="37vLTw" id="6Kcfpq7BI6c" role="37vLTx">
              <ref role="3cqZAo" node="6Kcfpq7B1fC" resolve="symbol" />
            </node>
            <node concept="2OqwBi" id="6Kcfpq7BHMH" role="37vLTJ">
              <node concept="Xjq3P" id="6Kcfpq7BHKR" role="2Oq$k0" />
              <node concept="2OwXpG" id="6Kcfpq7BHO0" role="2OqNvi">
                <ref role="2Oxat5" node="6Kcfpq7B1jt" resolve="symbol" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6Kcfpq7BmHE" role="3cqZAp">
          <node concept="37vLTI" id="6Kcfpq7BmHG" role="3clFbG">
            <node concept="2OqwBi" id="6Kcfpq7BmHK" role="37vLTJ">
              <node concept="Xjq3P" id="6Kcfpq7BmHN" role="2Oq$k0" />
              <node concept="2OwXpG" id="6Kcfpq7BmHJ" role="2OqNvi">
                <ref role="2Oxat5" node="6Kcfpq7BmHA" resolve="arity" />
              </node>
            </node>
            <node concept="37vLTw" id="6Kcfpq7BmHO" role="37vLTx">
              <ref role="3cqZAo" node="6Kcfpq7BmCY" resolve="arity" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7B1eT" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7B16Y" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="6Kcfpq7B1aL" role="3clF45" />
      <node concept="3Tm1VV" id="6Kcfpq7B171" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7B172" role="3clF47">
        <node concept="3clFbF" id="6Kcfpq7B1kZ" role="3cqZAp">
          <node concept="37vLTw" id="6Kcfpq7B1kY" role="3clFbG">
            <ref role="3cqZAo" node="6Kcfpq7B1jt" resolve="symbol" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzt3bA" role="jymVt" />
    <node concept="3clFb_" id="4xBopTzt2X_" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <node concept="17QB3L" id="4xBopTzt2XA" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTzt2XB" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzt2XC" role="3clF47">
        <node concept="3clFbF" id="4xBopTzt2XD" role="3cqZAp">
          <node concept="37vLTw" id="4xBopTzt2XE" role="3clFbG">
            <ref role="3cqZAo" node="6Kcfpq7B1jt" resolve="symbol" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7BmS3" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7Bn4f" role="jymVt">
      <property role="TrG5h" value="arity" />
      <node concept="10Oyi0" id="6Kcfpq7Bngp" role="3clF45" />
      <node concept="3Tm1VV" id="6Kcfpq7Bn4i" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7Bn4j" role="3clF47">
        <node concept="3clFbF" id="6Kcfpq7BnyR" role="3cqZAp">
          <node concept="37vLTw" id="6Kcfpq7BnyQ" role="3clFbG">
            <ref role="3cqZAo" node="6Kcfpq7BmHA" resolve="arity" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6Kcfpq7B0Wv" role="1B3o_S" />
    <node concept="2tJIrI" id="6Kcfpq7BqfQ" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7Bx2u" role="jymVt">
      <property role="TrG5h" value="handler" />
      <node concept="37vLTG" id="6Kcfpq7BxYR" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="6Kcfpq7BPpt" role="1tU5fm">
          <ref role="3uigEE" node="6Kcfpq7B0b0" resolve="ComputingSession" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6Kcfpq7BxF7" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7Bx2y" role="3clF47">
        <node concept="3clFbF" id="6Kcfpq7Byca" role="3cqZAp">
          <node concept="2OqwBi" id="6Kcfpq7BycB" role="3clFbG">
            <node concept="37vLTw" id="6Kcfpq7BMAJ" role="2Oq$k0">
              <ref role="3cqZAo" node="6Kcfpq7BxYR" resolve="session" />
            </node>
            <node concept="liA8E" id="6Kcfpq7Bydh" role="2OqNvi">
              <ref role="37wK5l" node="6Kcfpq7B0QC" resolve="handler" />
              <node concept="1rXfSq" id="6Kcfpq7CzUZ" role="37wK5m">
                <ref role="37wK5l" node="6Kcfpq7CwVz" resolve="asConstraint" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6Kcfpq7Bxy9" role="3clF45">
        <ref role="3uigEE" node="6Kcfpq7AXVG" resolve="Instructible" />
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7Bytl" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7Bye8" role="jymVt">
      <property role="TrG5h" value="solver" />
      <node concept="37vLTG" id="6Kcfpq7Bye9" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="6Kcfpq7BPMy" role="1tU5fm">
          <ref role="3uigEE" node="6Kcfpq7B0b0" resolve="ComputingSession" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6Kcfpq7Byeb" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7Byec" role="3clF47">
        <node concept="3clFbF" id="6Kcfpq7Byed" role="3cqZAp">
          <node concept="2OqwBi" id="6Kcfpq7Byee" role="3clFbG">
            <node concept="37vLTw" id="6Kcfpq7BPQ5" role="2Oq$k0">
              <ref role="3cqZAo" node="6Kcfpq7Bye9" resolve="session" />
            </node>
            <node concept="liA8E" id="6Kcfpq7Byeg" role="2OqNvi">
              <ref role="37wK5l" node="6Kcfpq7B10O" resolve="solver" />
              <node concept="1rXfSq" id="6Kcfpq7CzWJ" role="37wK5m">
                <ref role="37wK5l" node="6Kcfpq7Cyk4" resolve="asAutoConstraint" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4xBopTzlNsF" role="3clF45">
        <ref role="3uigEE" node="6Kcfpq7AYBh" resolve="Queryable" />
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7Bqi6" role="jymVt" />
    <node concept="3clFb_" id="4xBopTzt6NO" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="solverClass" />
      <node concept="3uibUv" id="4xBopTzt6NP" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="3qUE_q" id="4xBopTzt6NQ" role="11_B2D">
          <node concept="3uibUv" id="4xBopTzt6NR" role="3qUE_r">
            <ref role="3uigEE" node="6Kcfpq7AYBh" resolve="Queryable" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xBopTzt6NS" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzt6NT" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4xBopTzt6uF" role="jymVt" />
    <node concept="3clFb_" id="4xBopTzs1yn" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="handlerClass" />
      <node concept="3uibUv" id="4xBopTzs1yo" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="3qUE_q" id="4xBopTzs1yp" role="11_B2D">
          <node concept="3uibUv" id="4xBopTzs1yq" role="3qUE_r">
            <ref role="3uigEE" node="6Kcfpq7AXVG" resolve="Instructible" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xBopTzs1yr" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzs1yv" role="3clF47">
        <node concept="3clFbF" id="4xBopTzs3Bw" role="3cqZAp">
          <node concept="1rXfSq" id="4xBopTzs3Bv" role="3clFbG">
            <ref role="37wK5l" node="4xBopTzt6NO" resolve="solverClass" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzt4z7" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7B8WD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="6Kcfpq7B8WE" role="1B3o_S" />
      <node concept="3uibUv" id="6Kcfpq7B8WG" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="6Kcfpq7B8WH" role="3clF47">
        <node concept="3clFbF" id="6Kcfpq7B99k" role="3cqZAp">
          <node concept="37vLTw" id="6Kcfpq7B99j" role="3clFbG">
            <ref role="3cqZAo" node="6Kcfpq7B1jt" resolve="symbol" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6Kcfpq7B8WI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7BBoK" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7CwVz" role="jymVt">
      <property role="TrG5h" value="asConstraint" />
      <node concept="3uibUv" id="6Kcfpq7CxMy" role="3clF45">
        <ref role="3uigEE" node="6Kcfpq7BfEn" resolve="Constraint" />
      </node>
      <node concept="3Tm1VV" id="6Kcfpq7CwVA" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7CwVB" role="3clF47">
        <node concept="3clFbF" id="6Kcfpq7Cyjl" role="3cqZAp">
          <node concept="10QFUN" id="6Kcfpq7Cyji" role="3clFbG">
            <node concept="Xjq3P" id="6Kcfpq7CyjR" role="10QFUP" />
            <node concept="3uibUv" id="6Kcfpq7Cyjx" role="10QFUM">
              <ref role="3uigEE" node="6Kcfpq7BfEn" resolve="Constraint" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7Cz1I" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7Cyk4" role="jymVt">
      <property role="TrG5h" value="asAutoConstraint" />
      <node concept="3uibUv" id="6Kcfpq7CzeZ" role="3clF45">
        <ref role="3uigEE" node="6Kcfpq7Bj7q" resolve="AutoConstraint" />
      </node>
      <node concept="3Tm1VV" id="6Kcfpq7Cyk6" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7Cyk7" role="3clF47">
        <node concept="3clFbF" id="6Kcfpq7Cyk8" role="3cqZAp">
          <node concept="10QFUN" id="6Kcfpq7Cyk9" role="3clFbG">
            <node concept="Xjq3P" id="6Kcfpq7Cyka" role="10QFUP" />
            <node concept="3uibUv" id="6Kcfpq7CzUo" role="10QFUM">
              <ref role="3uigEE" node="6Kcfpq7Bj7q" resolve="AutoConstraint" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7Cvdp" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7Bs88" role="jymVt">
      <property role="TrG5h" value="registerHandler" />
      <node concept="37vLTG" id="6Kcfpq7BtCA" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="6Kcfpq7BtMO" role="1tU5fm">
          <ref role="3uigEE" node="6Kcfpq7B0b0" resolve="ComputingSession" />
        </node>
      </node>
      <node concept="37vLTG" id="6Kcfpq7BtOW" role="3clF46">
        <property role="TrG5h" value="instructible" />
        <node concept="3uibUv" id="6Kcfpq7BtZc" role="1tU5fm">
          <ref role="3uigEE" node="6Kcfpq7AXVG" resolve="Instructible" />
        </node>
      </node>
      <node concept="3cqZAl" id="6Kcfpq7Bs8a" role="3clF45" />
      <node concept="3Tmbuc" id="6Kcfpq7BskN" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7Bs8c" role="3clF47">
        <node concept="3clFbF" id="6Kcfpq7Bu1B" role="3cqZAp">
          <node concept="2OqwBi" id="6Kcfpq7Bu22" role="3clFbG">
            <node concept="37vLTw" id="6Kcfpq7Bu1A" role="2Oq$k0">
              <ref role="3cqZAo" node="6Kcfpq7BtCA" resolve="session" />
            </node>
            <node concept="liA8E" id="6Kcfpq7Bu2G" role="2OqNvi">
              <ref role="37wK5l" node="6Kcfpq7B2yH" resolve="registerHandler" />
              <node concept="1rXfSq" id="6Kcfpq7C$AM" role="37wK5m">
                <ref role="37wK5l" node="6Kcfpq7CwVz" resolve="asConstraint" />
              </node>
              <node concept="37vLTw" id="6Kcfpq7Bu3W" role="37wK5m">
                <ref role="3cqZAo" node="6Kcfpq7BtOW" resolve="instructible" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7BuLv" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7Buzk" role="jymVt">
      <property role="TrG5h" value="registerSolver" />
      <node concept="37vLTG" id="6Kcfpq7Buzl" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="6Kcfpq7Buzm" role="1tU5fm">
          <ref role="3uigEE" node="6Kcfpq7B0b0" resolve="ComputingSession" />
        </node>
      </node>
      <node concept="37vLTG" id="6Kcfpq7Buzn" role="3clF46">
        <property role="TrG5h" value="queryable" />
        <node concept="3uibUv" id="6Kcfpq7Bw2C" role="1tU5fm">
          <ref role="3uigEE" node="6Kcfpq7AYBh" resolve="Queryable" />
        </node>
      </node>
      <node concept="3cqZAl" id="6Kcfpq7Buzp" role="3clF45" />
      <node concept="3Tmbuc" id="6Kcfpq7Buzq" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7Buzr" role="3clF47">
        <node concept="3clFbF" id="6Kcfpq7Buzs" role="3cqZAp">
          <node concept="2OqwBi" id="6Kcfpq7Buzt" role="3clFbG">
            <node concept="37vLTw" id="6Kcfpq7Buzu" role="2Oq$k0">
              <ref role="3cqZAo" node="6Kcfpq7Buzl" resolve="session" />
            </node>
            <node concept="liA8E" id="6Kcfpq7Buzv" role="2OqNvi">
              <ref role="37wK5l" node="6Kcfpq7B2LV" resolve="registerSolver" />
              <node concept="1rXfSq" id="6Kcfpq7C$CD" role="37wK5m">
                <ref role="37wK5l" node="6Kcfpq7Cyk4" resolve="asAutoConstraint" />
              </node>
              <node concept="37vLTw" id="6Kcfpq7Buzx" role="37wK5m">
                <ref role="3cqZAo" node="6Kcfpq7Buzn" resolve="queryable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4xBopTzylBh" role="3cqZAp">
          <node concept="2OqwBi" id="4xBopTzylBi" role="3clFbG">
            <node concept="37vLTw" id="4xBopTzylBj" role="2Oq$k0">
              <ref role="3cqZAo" node="6Kcfpq7Buzl" resolve="session" />
            </node>
            <node concept="liA8E" id="4xBopTzylBk" role="2OqNvi">
              <ref role="37wK5l" node="6Kcfpq7B2yH" resolve="registerHandler" />
              <node concept="1rXfSq" id="4xBopTzylBl" role="37wK5m">
                <ref role="37wK5l" node="6Kcfpq7CwVz" resolve="asConstraint" />
              </node>
              <node concept="37vLTw" id="4xBopTzylH0" role="37wK5m">
                <ref role="3cqZAo" node="6Kcfpq7Buzn" resolve="queryable" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7B8Or" role="jymVt" />
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
              <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractConstraint" />
            </node>
            <node concept="10QFUN" id="6Kcfpq7B2Wy" role="33vP2m">
              <node concept="3uibUv" id="6Kcfpq7B2Wz" role="10QFUM">
                <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractConstraint" />
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
                    <node concept="2OwXpG" id="6Kcfpq7BIrr" role="2OqNvi">
                      <ref role="2Oxat5" node="6Kcfpq7B1jt" resolve="symbol" />
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="6Kcfpq7B2WS" role="2Oq$k0">
                  <node concept="10QFUN" id="6Kcfpq7B2WT" role="1eOMHV">
                    <node concept="3uibUv" id="6Kcfpq7B2WU" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="37vLTw" id="6Kcfpq7B2WG" role="10QFUP">
                      <ref role="3cqZAo" node="6Kcfpq7B1jt" resolve="symbol" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="6Kcfpq7B2WV" role="3K4Cdx">
              <node concept="10Nm6u" id="6Kcfpq7B2WW" role="3uHU7w" />
              <node concept="37vLTw" id="6Kcfpq7B2WH" role="3uHU7B">
                <ref role="3cqZAo" node="6Kcfpq7B1jt" resolve="symbol" />
              </node>
            </node>
            <node concept="3y3z36" id="6Kcfpq7B2WX" role="3K4GZi">
              <node concept="10Nm6u" id="6Kcfpq7B2WY" role="3uHU7w" />
              <node concept="2OqwBi" id="6Kcfpq7B2WZ" role="3uHU7B">
                <node concept="37vLTw" id="6Kcfpq7B2X0" role="2Oq$k0">
                  <ref role="3cqZAo" node="6Kcfpq7B2Ww" resolve="that" />
                </node>
                <node concept="2OwXpG" id="6Kcfpq7BIkN" role="2OqNvi">
                  <ref role="2Oxat5" node="6Kcfpq7B1jt" resolve="symbol" />
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
                    <node concept="37vLTw" id="6Kcfpq7B2Xk" role="3uHU7B">
                      <ref role="3cqZAo" node="6Kcfpq7B1jt" resolve="symbol" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6Kcfpq7B2Xv" role="3K4E3e">
                    <node concept="2YIFZM" id="6Kcfpq7B2Xw" role="2Oq$k0">
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                      <node concept="37vLTw" id="6Kcfpq7B2Xl" role="37wK5m">
                        <ref role="3cqZAo" node="6Kcfpq7B1jt" resolve="symbol" />
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
    <node concept="312cEg" id="6Kcfpq7B1jt" role="jymVt">
      <property role="TrG5h" value="symbol" />
      <node concept="3Tm6S6" id="6Kcfpq7B1ju" role="1B3o_S" />
      <node concept="17QB3L" id="6Kcfpq7B1jw" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="6Kcfpq7BmHA" role="jymVt">
      <property role="TrG5h" value="arity" />
      <node concept="3Tm6S6" id="6Kcfpq7BmHB" role="1B3o_S" />
      <node concept="10Oyi0" id="6Kcfpq7BmHD" role="1tU5fm" />
    </node>
    <node concept="3uibUv" id="6Kcfpq7C$Ql" role="EKbjA">
      <ref role="3uigEE" node="6Kcfpq7CkpJ" resolve="ComputingItem" />
    </node>
    <node concept="3UR2Jj" id="6Kcfpq7CA0_" role="lGtFl">
      <node concept="TZ5HA" id="6Kcfpq7CA0A" role="TZ5H$">
        <node concept="1dT_AC" id="6Kcfpq7CA0B" role="1dT_Ay">
          <property role="1dT_AB" value="Abstract superclass for use in implementations of Constraint and AutoConstraint." />
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="6Kcfpq7BfEn">
    <property role="TrG5h" value="Constraint" />
    <node concept="2tJIrI" id="6Kcfpq7BfGc" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7Bg6m" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="handler" />
      <node concept="37vLTG" id="6Kcfpq7BgaC" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="6Kcfpq7BPkF" role="1tU5fm">
          <ref role="3uigEE" node="6Kcfpq7B0b0" resolve="ComputingSession" />
        </node>
      </node>
      <node concept="3uibUv" id="6Kcfpq7Bg8G" role="3clF45">
        <ref role="3uigEE" node="6Kcfpq7AXVG" resolve="Instructible" />
      </node>
      <node concept="3Tm1VV" id="6Kcfpq7Bg6p" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7Bg6q" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6Kcfpq7Bg6c" role="jymVt" />
    <node concept="3clFb_" id="4xBopTzlOq0" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="handlerClass" />
      <node concept="3uibUv" id="4xBopTzlOqK" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="3qUE_q" id="4xBopTzlOqU" role="11_B2D">
          <node concept="3uibUv" id="4xBopTzlOr0" role="3qUE_r">
            <ref role="3uigEE" node="6Kcfpq7AXVG" resolve="Instructible" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xBopTzlOq3" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzlOq4" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4xBopTzlOps" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7BgtC" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="name" />
      <node concept="17QB3L" id="6Kcfpq7BgvY" role="3clF45" />
      <node concept="3Tm1VV" id="6Kcfpq7BgtF" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7BgtG" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6Kcfpq7BgzV" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7Bgh0" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="arity" />
      <node concept="10Oyi0" id="6Kcfpq7Bgje" role="3clF45" />
      <node concept="3Tm1VV" id="6Kcfpq7Bgh3" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7Bgh4" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6Kcfpq7Bj44" role="jymVt" />
    <node concept="3Tm1VV" id="6Kcfpq7BfEo" role="1B3o_S" />
    <node concept="3uibUv" id="6Kcfpq7Cl5B" role="3HQHJm">
      <ref role="3uigEE" node="6Kcfpq7CkpJ" resolve="ComputingItem" />
    </node>
    <node concept="3UR2Jj" id="6Kcfpq7C_QP" role="lGtFl">
      <node concept="TZ5HA" id="6Kcfpq7C_QQ" role="TZ5H$">
        <node concept="1dT_AC" id="6Kcfpq7C_QR" role="1dT_Ay">
          <property role="1dT_AB" value="A constraint provided by a handler. Can only be told." />
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="6Kcfpq7Bj7q">
    <property role="TrG5h" value="AutoConstraint" />
    <node concept="2tJIrI" id="6Kcfpq7Bj9f" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7Bj9q" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="solver" />
      <node concept="37vLTG" id="6Kcfpq7BLAA" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="6Kcfpq7BPiv" role="1tU5fm">
          <ref role="3uigEE" node="6Kcfpq7B0b0" resolve="ComputingSession" />
        </node>
      </node>
      <node concept="3uibUv" id="6Kcfpq7Bjbr" role="3clF45">
        <ref role="3uigEE" node="6Kcfpq7AYBh" resolve="Queryable" />
      </node>
      <node concept="3Tm1VV" id="6Kcfpq7Bj9t" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7Bj9u" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6Kcfpq7Bjf5" role="jymVt" />
    <node concept="3clFb_" id="4xBopTzlOsG" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="solverClass" />
      <node concept="3uibUv" id="4xBopTzlOts" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="3qUE_q" id="4xBopTzlOtB" role="11_B2D">
          <node concept="3uibUv" id="4xBopTzlOtH" role="3qUE_r">
            <ref role="3uigEE" node="6Kcfpq7AYBh" resolve="Queryable" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4xBopTzlOsJ" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzlOsK" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="4xBopTzlOs8" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7Bjgi" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="symbol" />
      <node concept="17QB3L" id="6Kcfpq7Bjis" role="3clF45" />
      <node concept="3Tm1VV" id="6Kcfpq7Bjgl" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7Bjgm" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6Kcfpq7Bjku" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7BjlD" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="arity" />
      <node concept="10Oyi0" id="6Kcfpq7BjnW" role="3clF45" />
      <node concept="3Tm1VV" id="6Kcfpq7BjlG" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7BjlH" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6Kcfpq7Bjlh" role="jymVt" />
    <node concept="3Tm1VV" id="6Kcfpq7Bj7r" role="1B3o_S" />
    <node concept="3uibUv" id="4xBopTzn$$3" role="3HQHJm">
      <ref role="3uigEE" node="6Kcfpq7BfEn" resolve="Constraint" />
    </node>
    <node concept="3UR2Jj" id="6Kcfpq7C_PM" role="lGtFl">
      <node concept="TZ5HA" id="6Kcfpq7C_PN" role="TZ5H$">
        <node concept="1dT_AC" id="6Kcfpq7C_PO" role="1dT_Ay">
          <property role="1dT_AB" value="A constraint that is provided by a solver. Can be either told or asked for a constraint. " />
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="6Kcfpq7CkpJ">
    <property role="TrG5h" value="ComputingItem" />
    <node concept="2tJIrI" id="6Kcfpq7Ckr$" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7CkPa" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="init" />
      <node concept="3cqZAl" id="6Kcfpq7CkPc" role="3clF45" />
      <node concept="3Tm1VV" id="6Kcfpq7CkPd" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7CkPe" role="3clF47" />
      <node concept="37vLTG" id="6Kcfpq7CkSZ" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="6Kcfpq7CkSY" role="1tU5fm">
          <ref role="3uigEE" node="6Kcfpq7B0b0" resolve="ComputingSession" />
        </node>
      </node>
      <node concept="37vLTG" id="24Vro6cR_QP" role="3clF46">
        <property role="TrG5h" value="tracer" />
        <node concept="3uibUv" id="24Vro6cR_S2" role="1tU5fm">
          <ref role="3uigEE" node="24Vro6cQnrj" resolve="ComputingTracer" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7CkXB" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7CkV4" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="6Kcfpq7CkV5" role="3clF45" />
      <node concept="3Tm1VV" id="6Kcfpq7CkV6" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7CkV7" role="3clF47" />
      <node concept="37vLTG" id="6Kcfpq7CkV8" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3uibUv" id="6Kcfpq7CkV9" role="1tU5fm">
          <ref role="3uigEE" node="6Kcfpq7B0b0" resolve="ComputingSession" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7CkrD" role="jymVt" />
    <node concept="3Tm1VV" id="6Kcfpq7CkpK" role="1B3o_S" />
    <node concept="3UR2Jj" id="6Kcfpq7C_Rt" role="lGtFl">
      <node concept="TZ5HA" id="6Kcfpq7C_Ru" role="TZ5H$">
        <node concept="1dT_AC" id="6Kcfpq7C_Rv" role="1dT_Ay">
          <property role="1dT_AB" value="A basic item of computation." />
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="24Vro6cQnrj">
    <property role="2bfB8j" value="true" />
    <property role="TrG5h" value="ComputingTracer" />
    <node concept="2tJIrI" id="24Vro6cQoAz" role="jymVt" />
    <node concept="3clFb_" id="24Vro6cQC7A" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askSuccess" />
      <node concept="37vLTG" id="24Vro6cQCnj" role="3clF46">
        <property role="TrG5h" value="autoConstraint" />
        <node concept="3uibUv" id="24Vro6cQCn$" role="1tU5fm">
          <ref role="3uigEE" node="6Kcfpq7Bj7q" resolve="AutoConstraint" />
        </node>
      </node>
      <node concept="37vLTG" id="24Vro6cQCoe" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="24Vro6cQVdR" role="1tU5fm">
          <node concept="3uibUv" id="24Vro6cQCoD" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="24Vro6cQC7C" role="3clF45" />
      <node concept="3Tm1VV" id="24Vro6cQC7D" role="1B3o_S" />
      <node concept="3clFbS" id="24Vro6cQC7E" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="24Vro6cQCMn" role="jymVt" />
    <node concept="3clFb_" id="24Vro6cQCzk" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askFailure" />
      <node concept="37vLTG" id="24Vro6cQCzl" role="3clF46">
        <property role="TrG5h" value="autoConstraint" />
        <node concept="3uibUv" id="24Vro6cQCzm" role="1tU5fm">
          <ref role="3uigEE" node="6Kcfpq7Bj7q" resolve="AutoConstraint" />
        </node>
      </node>
      <node concept="37vLTG" id="24Vro6cQCzn" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="24Vro6cQVv5" role="1tU5fm">
          <node concept="3uibUv" id="24Vro6cQCzp" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="24Vro6cQCzq" role="3clF45" />
      <node concept="3Tm1VV" id="24Vro6cQCzr" role="1B3o_S" />
      <node concept="3clFbS" id="24Vro6cQCzs" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7FtwPOZHF$M" role="jymVt" />
    <node concept="3clFb_" id="7FtwPOZHe8P" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="remainingConstraint" />
      <node concept="37vLTG" id="7FtwPOZHe8Q" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="3uibUv" id="7FtwPOZHrA1" role="1tU5fm">
          <ref role="3uigEE" to="eifs:~IConstraint" resolve="IConstraint" />
        </node>
      </node>
      <node concept="37vLTG" id="7dgRGU4paas" role="3clF46">
        <property role="TrG5h" value="valid" />
        <node concept="10P_77" id="7dgRGU4padc" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7FtwPOZHe8V" role="3clF45" />
      <node concept="3Tm1VV" id="7FtwPOZHe8W" role="1B3o_S" />
      <node concept="3clFbS" id="7FtwPOZHe8X" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7FtwPOZHF_O" role="jymVt" />
    <node concept="2tJIrI" id="24Vro6cQoAO" role="jymVt" />
    <node concept="Wx3nA" id="24Vro6cS5rK" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="NULL" />
      <node concept="3Tm1VV" id="24Vro6cS5rM" role="1B3o_S" />
      <node concept="2ShNRf" id="24Vro6cS5M$" role="33vP2m">
        <node concept="YeOm9" id="24Vro6cS5SL" role="2ShVmc">
          <node concept="1Y3b0j" id="24Vro6cS5SO" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="24Vro6cQnrj" resolve="ComputingTracer" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="24Vro6cS5SP" role="1B3o_S" />
            <node concept="3clFb_" id="24Vro6cS5SQ" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="askSuccess" />
              <node concept="37vLTG" id="24Vro6cS5SR" role="3clF46">
                <property role="TrG5h" value="autoConstraint" />
                <node concept="3uibUv" id="24Vro6cS5SS" role="1tU5fm">
                  <ref role="3uigEE" node="6Kcfpq7Bj7q" resolve="AutoConstraint" />
                </node>
              </node>
              <node concept="37vLTG" id="24Vro6cS5ST" role="3clF46">
                <property role="TrG5h" value="args" />
                <node concept="8X2XB" id="24Vro6cS5SU" role="1tU5fm">
                  <node concept="3uibUv" id="24Vro6cS5SV" role="8Xvag">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="3cqZAl" id="24Vro6cS5SW" role="3clF45" />
              <node concept="3Tm1VV" id="24Vro6cS5SX" role="1B3o_S" />
              <node concept="3clFbS" id="24Vro6cS5SZ" role="3clF47" />
            </node>
            <node concept="3clFb_" id="24Vro6cS5T1" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="askFailure" />
              <node concept="37vLTG" id="24Vro6cS5T2" role="3clF46">
                <property role="TrG5h" value="autoConstraint" />
                <node concept="3uibUv" id="24Vro6cS5T3" role="1tU5fm">
                  <ref role="3uigEE" node="6Kcfpq7Bj7q" resolve="AutoConstraint" />
                </node>
              </node>
              <node concept="37vLTG" id="24Vro6cS5T4" role="3clF46">
                <property role="TrG5h" value="args" />
                <node concept="8X2XB" id="24Vro6cS5T5" role="1tU5fm">
                  <node concept="3uibUv" id="24Vro6cS5T6" role="8Xvag">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="3cqZAl" id="24Vro6cS5T7" role="3clF45" />
              <node concept="3Tm1VV" id="24Vro6cS5T8" role="1B3o_S" />
              <node concept="3clFbS" id="24Vro6cS5Ta" role="3clF47" />
            </node>
            <node concept="3clFb_" id="7FtwPOZHG0u" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="remainingConstraint" />
              <node concept="37vLTG" id="7FtwPOZHG0v" role="3clF46">
                <property role="TrG5h" value="constraint" />
                <node concept="3uibUv" id="7FtwPOZHG0w" role="1tU5fm">
                  <ref role="3uigEE" to="eifs:~IConstraint" resolve="IConstraint" />
                </node>
              </node>
              <node concept="37vLTG" id="7dgRGU4r6tu" role="3clF46">
                <property role="TrG5h" value="valid" />
                <node concept="10P_77" id="7dgRGU4r6yY" role="1tU5fm" />
              </node>
              <node concept="3cqZAl" id="7FtwPOZHG0x" role="3clF45" />
              <node concept="3Tm1VV" id="7FtwPOZHG0y" role="1B3o_S" />
              <node concept="3clFbS" id="7FtwPOZHG0_" role="3clF47" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="24Vro6cS5Ii" role="1tU5fm">
        <ref role="3uigEE" node="24Vro6cQnrj" resolve="ComputingTracer" />
      </node>
    </node>
    <node concept="3Tm1VV" id="24Vro6cQnrk" role="1B3o_S" />
  </node>
</model>

