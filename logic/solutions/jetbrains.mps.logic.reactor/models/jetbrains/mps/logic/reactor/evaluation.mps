<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2a79c8aa-e372-4c00-8d71-5d7f3db517e4(jetbrains.mps.logic.reactor.evaluation)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
  </languages>
  <imports>
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="45ys" ref="r:7365f7fe-12e6-4229-8901-f6dc6d5df03f(jetbrains.mps.logic.reactor.logical)" />
    <import index="rchb" ref="r:f43ee4a0-488a-425a-87a0-594ab3b0d15f(jetbrains.mps.logic.reactor.program)" />
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
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
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
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="5uFPQ7Cba98" role="1tU5fm">
          <ref role="3uigEE" to="rchb:5uFPQ7B$mzX" resolve="Symbol" />
        </node>
      </node>
      <node concept="37vLTG" id="6Kcfpq7AYhp" role="3clF46">
        <property role="TrG5h" value="args" />
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
        <property role="TrG5h" value="predicateSymbol" />
        <node concept="3uibUv" id="5uFPQ7C5W2a" role="1tU5fm">
          <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="6Kcfpq7AYXx" role="3clF46">
        <property role="TrG5h" value="args" />
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
    <property role="TrG5h" value="SessionSolver" />
    <property role="1sVAO0" value="true" />
    <node concept="3uibUv" id="2tcGHBE67_N" role="EKbjA">
      <ref role="3uigEE" node="6Kcfpq7AXVG" resolve="Instructible" />
    </node>
    <node concept="3uibUv" id="2tcGHBE68Cy" role="EKbjA">
      <ref role="3uigEE" node="6Kcfpq7AYBh" resolve="Queryable" />
    </node>
    <node concept="2tJIrI" id="2tcGHBEencT" role="jymVt" />
    <node concept="3clFb_" id="2tcGHBEeol1" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="init" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="2tcGHBEirFR" role="3clF46">
        <property role="TrG5h" value="predicateSymbols" />
        <node concept="8X2XB" id="2tcGHBEirFS" role="1tU5fm">
          <node concept="3uibUv" id="2tcGHBEirFT" role="8Xvag">
            <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2tcGHBEeol4" role="3clF47">
        <node concept="3clFbF" id="2tcGHBEepha" role="3cqZAp">
          <node concept="1rXfSq" id="2tcGHBEeph9" role="3clFbG">
            <ref role="37wK5l" node="5jPBdK__lx" resolve="registerSymbols" />
            <node concept="37vLTw" id="2tcGHBEisqb" role="37wK5m">
              <ref role="3cqZAo" node="2tcGHBEirFR" resolve="predicateSymbols" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2tcGHBEenL5" role="1B3o_S" />
      <node concept="3cqZAl" id="2tcGHBEeoTR" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2tcGHBEix_v" role="jymVt" />
    <node concept="3clFb_" id="2tcGHBEix86" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="init" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="2tcGHBEix87" role="3clF46">
        <property role="TrG5h" value="computingTracer" />
        <node concept="3uibUv" id="2tcGHBEix88" role="1tU5fm">
          <ref role="3uigEE" node="24Vro6cQnrj" resolve="EvaluationTrace" />
        </node>
      </node>
      <node concept="37vLTG" id="2tcGHBEix89" role="3clF46">
        <property role="TrG5h" value="predicateSymbols" />
        <node concept="8X2XB" id="2tcGHBEix8a" role="1tU5fm">
          <node concept="3uibUv" id="2tcGHBEix8b" role="8Xvag">
            <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2tcGHBEix8c" role="3clF47">
        <node concept="3clFbF" id="65oL76bXfRV" role="3cqZAp">
          <node concept="37vLTI" id="65oL76bXfUD" role="3clFbG">
            <node concept="37vLTw" id="65oL76bXfX9" role="37vLTx">
              <ref role="3cqZAo" node="2tcGHBEix87" resolve="computingTracer" />
            </node>
            <node concept="37vLTw" id="65oL76bXfRT" role="37vLTJ">
              <ref role="3cqZAo" node="65oL76bXcmr" resolve="tracer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="65oL76bXfZP" role="3cqZAp">
          <node concept="1rXfSq" id="65oL76bXfZN" role="3clFbG">
            <ref role="37wK5l" node="2tcGHBEeol1" resolve="init" />
            <node concept="37vLTw" id="65oL76bXg1V" role="37wK5m">
              <ref role="3cqZAo" node="2tcGHBEix89" resolve="predicateSymbols" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2tcGHBEix8h" role="1B3o_S" />
      <node concept="3cqZAl" id="2tcGHBEix8i" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2tcGHBEe33n" role="jymVt" />
    <node concept="3clFb_" id="4xBopTznHV5" role="jymVt">
      <property role="TrG5h" value="ask" />
      <node concept="2AHcQZ" id="2tcGHBE69cd" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="4xBopTznJFk" role="3clF46">
        <property role="TrG5h" value="predicateSymbol" />
        <node concept="3uibUv" id="5uFPQ7C5X61" role="1tU5fm">
          <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
        <node concept="3clFbF" id="65oL76bXdkT" role="3cqZAp">
          <node concept="2OqwBi" id="65oL76bXd$p" role="3clFbG">
            <node concept="37vLTw" id="65oL76bXdkR" role="2Oq$k0">
              <ref role="3cqZAo" node="65oL76bXcmr" resolve="tracer" />
            </node>
            <node concept="liA8E" id="65oL76bXdQp" role="2OqNvi">
              <ref role="37wK5l" node="6ps95k_HgmQ" resolve="ask" />
              <node concept="37vLTw" id="65oL76bXdR6" role="37wK5m">
                <ref role="3cqZAo" node="4xBopTznJFk" resolve="predicateSymbol" />
              </node>
              <node concept="37vLTw" id="65oL76bXdTI" role="37wK5m">
                <ref role="3cqZAo" node="4xBopTznK09" resolve="arg" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4xBopTznMkq" role="3cqZAp">
          <node concept="2OqwBi" id="4xBopTznNyu" role="3cqZAk">
            <node concept="1rXfSq" id="2tcGHBEe1CZ" role="2Oq$k0">
              <ref role="37wK5l" node="6Kcfpq7B10O" resolve="solver" />
              <node concept="37vLTw" id="2tcGHBEe1D0" role="37wK5m">
                <ref role="3cqZAo" node="4xBopTznJFk" resolve="predicateSymbol" />
              </node>
            </node>
            <node concept="liA8E" id="4xBopTznNUP" role="2OqNvi">
              <ref role="37wK5l" node="6Kcfpq7AYIw" resolve="ask" />
              <node concept="37vLTw" id="4xBopTznOgs" role="37wK5m">
                <ref role="3cqZAo" node="4xBopTznJFk" resolve="predicateSymbol" />
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
      <node concept="2AHcQZ" id="2tcGHBE69_a" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3cqZAl" id="4xBopTznPKQ" role="3clF45" />
      <node concept="3Tm1VV" id="4xBopTznPKR" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTznPKS" role="3clF47">
        <node concept="3clFbF" id="65oL76bXcSy" role="3cqZAp">
          <node concept="2OqwBi" id="65oL76bXcUm" role="3clFbG">
            <node concept="37vLTw" id="65oL76bXcSw" role="2Oq$k0">
              <ref role="3cqZAo" node="65oL76bXcmr" resolve="tracer" />
            </node>
            <node concept="liA8E" id="65oL76bXcXo" role="2OqNvi">
              <ref role="37wK5l" node="6ps95k_HcRW" resolve="tell" />
              <node concept="37vLTw" id="65oL76bXcYg" role="37wK5m">
                <ref role="3cqZAo" node="4xBopTznQGo" resolve="symbol" />
              </node>
              <node concept="37vLTw" id="65oL76bXd0T" role="37wK5m">
                <ref role="3cqZAo" node="4xBopTznR4D" resolve="arg" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4xBopTznSgM" role="3cqZAp">
          <node concept="2OqwBi" id="4xBopTznSmj" role="3clFbG">
            <node concept="1rXfSq" id="2tcGHBEe2sb" role="2Oq$k0">
              <ref role="37wK5l" node="6Kcfpq7B0QC" resolve="handler" />
              <node concept="37vLTw" id="2tcGHBEe2sc" role="37wK5m">
                <ref role="3cqZAo" node="4xBopTznQGo" resolve="symbol" />
              </node>
            </node>
            <node concept="liA8E" id="4xBopTznSrf" role="2OqNvi">
              <ref role="37wK5l" node="6Kcfpq7AY2Z" resolve="tell" />
              <node concept="37vLTw" id="4xBopTznSrS" role="37wK5m">
                <ref role="3cqZAo" node="4xBopTznQGo" resolve="symbol" />
              </node>
              <node concept="37vLTw" id="4xBopTznSsW" role="37wK5m">
                <ref role="3cqZAo" node="4xBopTznR4D" resolve="arg" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4xBopTznQGo" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="5uFPQ7Cdut1" role="1tU5fm">
          <ref role="3uigEE" to="rchb:5uFPQ7B$mzX" resolve="Symbol" />
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
    <node concept="2tJIrI" id="2tcGHBEqIuN" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JwonCY" role="jymVt">
      <property role="TrG5h" value="queueIfBusy" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="6MYr6JwoqdW" role="3clF46">
        <property role="TrG5h" value="runnable" />
        <node concept="3uibUv" id="6MYr6Jwoq$S" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="10P_77" id="6MYr6JwookG" role="3clF45" />
      <node concept="3Tm1VV" id="6MYr6JwonD1" role="1B3o_S" />
      <node concept="3clFbS" id="6MYr6JwonD2" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="3eLgHzX3LvL" role="jymVt" />
    <node concept="3clFb_" id="3eLgHzX3LYG" role="jymVt">
      <property role="TrG5h" value="fail" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="3eLgHzX3MGO" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="3eLgHzX3MXw" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="3eLgHzX3LYI" role="3clF45" />
      <node concept="3Tm1VV" id="3eLgHzX3LYJ" role="1B3o_S" />
      <node concept="3clFbS" id="3eLgHzX3LYK" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6MYr6Jwol33" role="jymVt" />
    <node concept="3clFb_" id="4xBopTzsxxs" role="jymVt">
      <property role="TrG5h" value="lookupQueryable" />
      <node concept="37vLTG" id="4xBopTzsxxt" role="3clF46">
        <property role="TrG5h" value="clazz" />
        <node concept="3uibUv" id="4xBopTzsxxu" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="4xBopTzuGiG" role="11_B2D" />
        </node>
      </node>
      <node concept="3uibUv" id="5uFPQ7C2Dxl" role="3clF45">
        <ref role="3uigEE" node="6Kcfpq7AYBh" resolve="Queryable" />
      </node>
      <node concept="3Tm1VV" id="4xBopTzsxxy" role="1B3o_S" />
      <node concept="3clFbS" id="4xBopTzsxxz" role="3clF47">
        <node concept="1DcWWT" id="4xBopTzs_7_" role="3cqZAp">
          <node concept="3clFbS" id="4xBopTzs_7B" role="2LFqv$">
            <node concept="3cpWs8" id="5uFPQ7C2I2o" role="3cqZAp">
              <node concept="3cpWsn" id="5uFPQ7C2I2p" role="3cpWs9">
                <property role="TrG5h" value="queryable" />
                <node concept="3uibUv" id="5uFPQ7C2I2n" role="1tU5fm">
                  <ref role="3uigEE" node="6Kcfpq7AYBh" resolve="Queryable" />
                </node>
                <node concept="2OqwBi" id="5uFPQ7C2I2q" role="33vP2m">
                  <node concept="37vLTw" id="5uFPQ7C2I2r" role="2Oq$k0">
                    <ref role="3cqZAo" node="4xBopTzs_7D" resolve="e" />
                  </node>
                  <node concept="liA8E" id="5uFPQ7C2I2s" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map$Entry.getValue():java.lang.Object" resolve="getValue" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4xBopTzs_ns" role="3cqZAp">
              <node concept="3clFbS" id="4xBopTzs_nt" role="3clFbx">
                <node concept="3cpWs6" id="4xBopTzsAE7" role="3cqZAp">
                  <node concept="37vLTw" id="5uFPQ7C2I2u" role="3cqZAk">
                    <ref role="3cqZAo" node="5uFPQ7C2I2p" resolve="queryable" />
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
                    <node concept="37vLTw" id="5uFPQ7C2I2t" role="2Oq$k0">
                      <ref role="3cqZAo" node="5uFPQ7C2I2p" resolve="queryable" />
                    </node>
                    <node concept="liA8E" id="5uFPQ7C2HoM" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
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
              <node concept="3uibUv" id="5uFPQ7C2FDE" role="11_B2D">
                <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
    <node concept="2tJIrI" id="2tcGHBEveN9" role="jymVt" />
    <node concept="3clFb_" id="2tcGHBEqJAf" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="solverClass" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2tcGHBEqJAi" role="3clF47" />
      <node concept="3Tm1VV" id="2tcGHBEqJbr" role="1B3o_S" />
      <node concept="3uibUv" id="2tcGHBEqJz1" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="3qUE_q" id="2tcGHBEqJ$x" role="11_B2D">
          <node concept="3uibUv" id="2tcGHBEqJ$D" role="3qUE_r">
            <ref role="3uigEE" node="6Kcfpq7AYBh" resolve="Queryable" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2tcGHBEqJZo" role="3clF46">
        <property role="TrG5h" value="predicateSymbol" />
        <node concept="3uibUv" id="2tcGHBEqJZn" role="1tU5fm">
          <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7BSVl" role="jymVt" />
    <node concept="3clFb_" id="2tcGHBEehCv" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="registerSymbol" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2tcGHBEehCy" role="3clF47" />
      <node concept="3Tmbuc" id="2tcGHBEeh8H" role="1B3o_S" />
      <node concept="3cqZAl" id="2tcGHBEehCt" role="3clF45" />
      <node concept="37vLTG" id="2tcGHBEeico" role="3clF46">
        <property role="TrG5h" value="predicateSymbol" />
        <node concept="3uibUv" id="2tcGHBEeicn" role="1tU5fm">
          <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="2tcGHBEivC2" role="3clF46">
        <property role="TrG5h" value="computingTracer" />
        <node concept="3uibUv" id="2tcGHBEivRX" role="1tU5fm">
          <ref role="3uigEE" node="24Vro6cQnrj" resolve="EvaluationTrace" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2tcGHBEeg_v" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7B2LV" role="jymVt">
      <property role="TrG5h" value="registerSolver" />
      <node concept="3cqZAl" id="6Kcfpq7B2LW" role="3clF45" />
      <node concept="3Tmbuc" id="2tcGHBEe5yG" role="1B3o_S" />
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
        <node concept="3uibUv" id="5uFPQ7C2Fvo" role="1tU5fm">
          <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="6Kcfpq7B2M1" role="3clF46">
        <property role="TrG5h" value="queryable" />
        <node concept="3uibUv" id="6Kcfpq7B2R9" role="1tU5fm">
          <ref role="3uigEE" node="6Kcfpq7AYBh" resolve="Queryable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4xBopTzsrrI" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7B0QC" role="jymVt">
      <property role="TrG5h" value="handler" />
      <node concept="3Tm6S6" id="2tcGHBEa2YX" role="1B3o_S" />
      <node concept="37vLTG" id="6Kcfpq7B0U_" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="5uFPQ7Cduzq" role="1tU5fm">
          <ref role="3uigEE" to="rchb:5uFPQ7B$mzX" resolve="Symbol" />
        </node>
      </node>
      <node concept="3uibUv" id="6Kcfpq7B0SD" role="3clF45">
        <ref role="3uigEE" node="6Kcfpq7AXVG" resolve="Instructible" />
      </node>
      <node concept="3clFbS" id="6Kcfpq7B0QG" role="3clF47">
        <node concept="3clFbF" id="2tcGHBEe0QC" role="3cqZAp">
          <node concept="1rXfSq" id="2tcGHBEe0QB" role="3clFbG">
            <ref role="37wK5l" node="6Kcfpq7B10O" resolve="solver" />
            <node concept="10QFUN" id="2tcGHBEe0UA" role="37wK5m">
              <node concept="3uibUv" id="2tcGHBEe0U$" role="10QFUM">
                <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
              </node>
              <node concept="37vLTw" id="2tcGHBEe0U_" role="10QFUP">
                <ref role="3cqZAo" node="6Kcfpq7B0U_" resolve="symbol" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7B13i" role="jymVt" />
    <node concept="3clFb_" id="5jPBdK__lx" role="jymVt">
      <property role="TrG5h" value="registerSymbols" />
      <node concept="37vLTG" id="2tcGHBEisqB" role="3clF46">
        <property role="TrG5h" value="predicateSymbols" />
        <node concept="8X2XB" id="2tcGHBEisqC" role="1tU5fm">
          <node concept="3uibUv" id="2tcGHBEisqD" role="8Xvag">
            <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5jPBdK__lz" role="3clF45" />
      <node concept="3Tm6S6" id="2tcGHBEemsp" role="1B3o_S" />
      <node concept="3clFbS" id="5jPBdK__l_" role="3clF47">
        <node concept="1DcWWT" id="5mr7UHchfPx" role="3cqZAp">
          <node concept="3clFbS" id="5mr7UHchfPz" role="2LFqv$">
            <node concept="3clFbF" id="5jPBdK_AI8" role="3cqZAp">
              <node concept="1rXfSq" id="5jPBdK_AI6" role="3clFbG">
                <ref role="37wK5l" node="2tcGHBEehCv" resolve="registerSymbol" />
                <node concept="37vLTw" id="5jPBdK_AJz" role="37wK5m">
                  <ref role="3cqZAo" node="5mr7UHchfP_" resolve="symbol" />
                </node>
                <node concept="37vLTw" id="65oL76bXef4" role="37wK5m">
                  <ref role="3cqZAo" node="65oL76bXcmr" resolve="tracer" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5mr7UHchfP_" role="1Duv9x">
            <property role="TrG5h" value="symbol" />
            <node concept="3uibUv" id="5mr7UHchfPD" role="1tU5fm">
              <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
            </node>
          </node>
          <node concept="37vLTw" id="2tcGHBEisKZ" role="1DdaDG">
            <ref role="3cqZAo" node="2tcGHBEisqB" resolve="predicateSymbols" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2tcGHBEeaCY" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7B10O" role="jymVt">
      <property role="TrG5h" value="solver" />
      <node concept="3Tm6S6" id="2tcGHBEa3qD" role="1B3o_S" />
      <node concept="37vLTG" id="6Kcfpq7B10P" role="3clF46">
        <property role="TrG5h" value="predicateSymbol" />
        <node concept="3uibUv" id="5uFPQ7C5Y0t" role="1tU5fm">
          <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="3uibUv" id="6Kcfpq7B13G" role="3clF45">
        <ref role="3uigEE" node="6Kcfpq7AYBh" resolve="Queryable" />
      </node>
      <node concept="3clFbS" id="6Kcfpq7B10T" role="3clF47">
        <node concept="3clFbJ" id="6Kcfpq7BaRr" role="3cqZAp">
          <node concept="3clFbS" id="6Kcfpq7BaRs" role="3clFbx">
            <node concept="YS8fn" id="6Kcfpq7BaRt" role="3cqZAp">
              <node concept="2ShNRf" id="6Kcfpq7BaRu" role="YScLw">
                <node concept="1pGfFk" id="6Kcfpq7BaRv" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="3cpWs3" id="6Kcfpq7BaRw" role="37wK5m">
                    <node concept="37vLTw" id="6Kcfpq7BaRx" role="3uHU7w">
                      <ref role="3cqZAo" node="6Kcfpq7B10P" resolve="predicateSymbol" />
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
                  <ref role="3cqZAo" node="6Kcfpq7B10P" resolve="predicateSymbol" />
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
                <ref role="3cqZAo" node="6Kcfpq7B10P" resolve="predicateSymbol" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7B2xY" role="jymVt" />
    <node concept="312cEg" id="6Kcfpq7B51L" role="jymVt">
      <property role="TrG5h" value="solvers" />
      <node concept="3Tm6S6" id="6Kcfpq7B51M" role="1B3o_S" />
      <node concept="3uibUv" id="6Kcfpq7B51N" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="5uFPQ7C2EKI" role="11_B2D">
          <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
        </node>
        <node concept="3uibUv" id="6Kcfpq7B5nl" role="11_B2D">
          <ref role="3uigEE" node="6Kcfpq7AYBh" resolve="Queryable" />
        </node>
      </node>
      <node concept="2ShNRf" id="6Kcfpq7B51Q" role="33vP2m">
        <node concept="1pGfFk" id="6Kcfpq7B51R" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="5uFPQ7C2F2J" role="1pMfVU">
            <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
          </node>
          <node concept="3uibUv" id="6Kcfpq7B5x3" role="1pMfVU">
            <ref role="3uigEE" node="6Kcfpq7AYBh" resolve="Queryable" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="65oL76bXcmr" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="tracer" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="65oL76bXbYK" role="1B3o_S" />
      <node concept="3uibUv" id="65oL76bXcI6" role="1tU5fm">
        <ref role="3uigEE" node="24Vro6cQnrj" resolve="EvaluationTrace" />
      </node>
      <node concept="10M0yZ" id="4ut_d$0E9$D" role="33vP2m">
        <ref role="1PxDUh" node="24Vro6cQnrj" resolve="EvaluationTrace" />
        <ref role="3cqZAo" node="4ut_d$0E9Px" resolve="NULL" />
      </node>
    </node>
    <node concept="3Tm1VV" id="6Kcfpq7B0b1" role="1B3o_S" />
    <node concept="3UR2Jj" id="6Kcfpq7CBOa" role="lGtFl">
      <node concept="TZ5HA" id="6Kcfpq7CBOb" role="TZ5H$">
        <node concept="1dT_AC" id="6Kcfpq7CBOc" role="1dT_Ay">
          <property role="1dT_AB" value="Is used to provide an interface for handlers and solvers working together in a single session." />
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="24Vro6cQnrj">
    <property role="2bfB8j" value="true" />
    <property role="TrG5h" value="EvaluationTrace" />
    <node concept="2tJIrI" id="24Vro6cQoAz" role="jymVt" />
    <node concept="3clFb_" id="24Vro6cQC7A" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askSuccess" />
      <node concept="37vLTG" id="24Vro6cQCnj" role="3clF46">
        <property role="TrG5h" value="predicateSymbol" />
        <node concept="3uibUv" id="5uFPQ7C64Nf" role="1tU5fm">
          <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
        <property role="TrG5h" value="predicateSymbol" />
        <node concept="3uibUv" id="5uFPQ7C64Ph" role="1tU5fm">
          <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
    <node concept="2tJIrI" id="6ps95k_HcQZ" role="jymVt" />
    <node concept="3clFb_" id="6ps95k_HgmQ" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="ask" />
      <node concept="37vLTG" id="6ps95k_HgmR" role="3clF46">
        <property role="TrG5h" value="predicateSymbol" />
        <node concept="3uibUv" id="6ps95k_HgtM" role="1tU5fm">
          <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="6ps95k_HgmT" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="6ps95k_HgmU" role="1tU5fm">
          <node concept="3uibUv" id="6ps95k_HgmV" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6ps95k_HgmW" role="3clF45" />
      <node concept="3Tm1VV" id="6ps95k_HgmX" role="1B3o_S" />
      <node concept="3clFbS" id="6ps95k_HgmY" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6ps95k_Hgmd" role="jymVt" />
    <node concept="3clFb_" id="6ps95k_HcRW" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tell" />
      <node concept="37vLTG" id="6ps95k_HcRX" role="3clF46">
        <property role="TrG5h" value="symbol" />
        <node concept="3uibUv" id="6ps95k_HdNe" role="1tU5fm">
          <ref role="3uigEE" to="rchb:5uFPQ7B$mzX" resolve="Symbol" />
        </node>
      </node>
      <node concept="37vLTG" id="6ps95k_HcRZ" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="6ps95k_HcS0" role="1tU5fm">
          <node concept="3uibUv" id="6ps95k_HcS1" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6ps95k_HcS2" role="3clF45" />
      <node concept="3Tm1VV" id="6ps95k_HcS3" role="1B3o_S" />
      <node concept="3clFbS" id="6ps95k_HcS4" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="qubcdtxLy5" role="jymVt" />
    <node concept="3clFb_" id="7feMCq_cIni" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="reportFailure" />
      <node concept="37vLTG" id="7feMCq_cIqW" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="7feMCq_cIs6" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7feMCq_cInl" role="3clF45" />
      <node concept="3Tm1VV" id="7feMCq_cInm" role="1B3o_S" />
      <node concept="3clFbS" id="7feMCq_cInn" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7feMCq_cIlr" role="jymVt" />
    <node concept="Wx3nA" id="4ut_d$0E9Px" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="NULL" />
      <node concept="3Tm1VV" id="4ut_d$0E9Pz" role="1B3o_S" />
      <node concept="2ShNRf" id="4ut_d$0E9Tm" role="33vP2m">
        <node concept="YeOm9" id="4ut_d$0EaY6" role="2ShVmc">
          <node concept="1Y3b0j" id="4ut_d$0EaY9" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="24Vro6cQnrj" resolve="EvaluationTrace" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="4ut_d$0EaYa" role="1B3o_S" />
            <node concept="3clFb_" id="4ut_d$0EaYb" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="askSuccess" />
              <node concept="37vLTG" id="4ut_d$0EaYc" role="3clF46">
                <property role="TrG5h" value="predicateSymbol" />
                <node concept="3uibUv" id="4ut_d$0EaYd" role="1tU5fm">
                  <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
                </node>
              </node>
              <node concept="37vLTG" id="4ut_d$0EaYe" role="3clF46">
                <property role="TrG5h" value="args" />
                <node concept="8X2XB" id="4ut_d$0EaYf" role="1tU5fm">
                  <node concept="3uibUv" id="4ut_d$0EaYg" role="8Xvag">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="3cqZAl" id="4ut_d$0EaYh" role="3clF45" />
              <node concept="3Tm1VV" id="4ut_d$0EaYi" role="1B3o_S" />
              <node concept="3clFbS" id="4ut_d$0EaYk" role="3clF47" />
            </node>
            <node concept="3clFb_" id="4ut_d$0EaYm" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="askFailure" />
              <node concept="37vLTG" id="4ut_d$0EaYn" role="3clF46">
                <property role="TrG5h" value="predicateSymbol" />
                <node concept="3uibUv" id="4ut_d$0EaYo" role="1tU5fm">
                  <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
                </node>
              </node>
              <node concept="37vLTG" id="4ut_d$0EaYp" role="3clF46">
                <property role="TrG5h" value="args" />
                <node concept="8X2XB" id="4ut_d$0EaYq" role="1tU5fm">
                  <node concept="3uibUv" id="4ut_d$0EaYr" role="8Xvag">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="3cqZAl" id="4ut_d$0EaYs" role="3clF45" />
              <node concept="3Tm1VV" id="4ut_d$0EaYt" role="1B3o_S" />
              <node concept="3clFbS" id="4ut_d$0EaYv" role="3clF47" />
            </node>
            <node concept="3clFb_" id="4ut_d$0EaYx" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="ask" />
              <node concept="37vLTG" id="4ut_d$0EaYy" role="3clF46">
                <property role="TrG5h" value="predicateSymbol" />
                <node concept="3uibUv" id="4ut_d$0EaYz" role="1tU5fm">
                  <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
                </node>
              </node>
              <node concept="37vLTG" id="4ut_d$0EaY$" role="3clF46">
                <property role="TrG5h" value="args" />
                <node concept="8X2XB" id="4ut_d$0EaY_" role="1tU5fm">
                  <node concept="3uibUv" id="4ut_d$0EaYA" role="8Xvag">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="3cqZAl" id="4ut_d$0EaYB" role="3clF45" />
              <node concept="3Tm1VV" id="4ut_d$0EaYC" role="1B3o_S" />
              <node concept="3clFbS" id="4ut_d$0EaYE" role="3clF47" />
            </node>
            <node concept="3clFb_" id="4ut_d$0EaYG" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="tell" />
              <node concept="37vLTG" id="4ut_d$0EaYH" role="3clF46">
                <property role="TrG5h" value="symbol" />
                <node concept="3uibUv" id="4ut_d$0EaYI" role="1tU5fm">
                  <ref role="3uigEE" to="rchb:5uFPQ7B$mzX" resolve="Symbol" />
                </node>
              </node>
              <node concept="37vLTG" id="4ut_d$0EaYJ" role="3clF46">
                <property role="TrG5h" value="args" />
                <node concept="8X2XB" id="4ut_d$0EaYK" role="1tU5fm">
                  <node concept="3uibUv" id="4ut_d$0EaYL" role="8Xvag">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
              <node concept="3cqZAl" id="4ut_d$0EaYM" role="3clF45" />
              <node concept="3Tm1VV" id="4ut_d$0EaYN" role="1B3o_S" />
              <node concept="3clFbS" id="4ut_d$0EaYP" role="3clF47" />
            </node>
            <node concept="3clFb_" id="4ut_d$0EaYR" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="reportFailure" />
              <node concept="37vLTG" id="4ut_d$0EaYS" role="3clF46">
                <property role="TrG5h" value="message" />
                <node concept="17QB3L" id="4ut_d$0EaYT" role="1tU5fm" />
              </node>
              <node concept="3cqZAl" id="4ut_d$0EaYU" role="3clF45" />
              <node concept="3Tm1VV" id="4ut_d$0EaYV" role="1B3o_S" />
              <node concept="3clFbS" id="4ut_d$0EaYX" role="3clF47" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4ut_d$0E9Re" role="1tU5fm">
        <ref role="3uigEE" node="24Vro6cQnrj" resolve="EvaluationTrace" />
      </node>
    </node>
    <node concept="3Tm1VV" id="24Vro6cQnrk" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5uFPQ7BMJeJ">
    <property role="TrG5h" value="JavaPredicateSymbol" />
    <node concept="2tJIrI" id="1ggxSI7rFeb" role="jymVt" />
    <node concept="Wx3nA" id="1ggxSI7vUYU" role="jymVt">
      <property role="TrG5h" value="EXPRESSION0" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1ggxSI7vUZA" role="1B3o_S" />
      <node concept="3uibUv" id="1ggxSI7vUZH" role="1tU5fm">
        <ref role="3uigEE" node="5uFPQ7BMJeJ" resolve="JavaPredicateSymbol" />
      </node>
      <node concept="2ShNRf" id="1ggxSI7vV0D" role="33vP2m">
        <node concept="1pGfFk" id="1ggxSI7vV0C" role="2ShVmc">
          <ref role="37wK5l" node="5uFPQ7BMJfy" resolve="JavaPredicateSymbol" />
          <node concept="3cmrfG" id="1ggxSI7vV15" role="37wK5m">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ggxSI7vV8K" role="jymVt" />
    <node concept="Wx3nA" id="1ggxSI7vV1O" role="jymVt">
      <property role="TrG5h" value="EXPRESSION1" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1ggxSI7vV1P" role="1B3o_S" />
      <node concept="3uibUv" id="1ggxSI7vV1Q" role="1tU5fm">
        <ref role="3uigEE" node="5uFPQ7BMJeJ" resolve="JavaPredicateSymbol" />
      </node>
      <node concept="2ShNRf" id="1ggxSI7vV1R" role="33vP2m">
        <node concept="1pGfFk" id="1ggxSI7vV1S" role="2ShVmc">
          <ref role="37wK5l" node="5uFPQ7BMJfy" resolve="JavaPredicateSymbol" />
          <node concept="3cmrfG" id="1ggxSI7vV1T" role="37wK5m">
            <property role="3cmrfH" value="2" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ggxSI7vVaG" role="jymVt" />
    <node concept="Wx3nA" id="1ggxSI7vV3x" role="jymVt">
      <property role="TrG5h" value="EXPRESSION2" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1ggxSI7vV3y" role="1B3o_S" />
      <node concept="3uibUv" id="1ggxSI7vV3z" role="1tU5fm">
        <ref role="3uigEE" node="5uFPQ7BMJeJ" resolve="JavaPredicateSymbol" />
      </node>
      <node concept="2ShNRf" id="1ggxSI7vV3$" role="33vP2m">
        <node concept="1pGfFk" id="1ggxSI7vV3_" role="2ShVmc">
          <ref role="37wK5l" node="5uFPQ7BMJfy" resolve="JavaPredicateSymbol" />
          <node concept="3cmrfG" id="1ggxSI7vV3A" role="37wK5m">
            <property role="3cmrfH" value="3" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ggxSI7vVcD" role="jymVt" />
    <node concept="Wx3nA" id="1ggxSI7vV5$" role="jymVt">
      <property role="TrG5h" value="EXPRESSION3" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1ggxSI7vV5_" role="1B3o_S" />
      <node concept="3uibUv" id="1ggxSI7vV5A" role="1tU5fm">
        <ref role="3uigEE" node="5uFPQ7BMJeJ" resolve="JavaPredicateSymbol" />
      </node>
      <node concept="2ShNRf" id="1ggxSI7vV5B" role="33vP2m">
        <node concept="1pGfFk" id="1ggxSI7vV5C" role="2ShVmc">
          <ref role="37wK5l" node="5uFPQ7BMJfy" resolve="JavaPredicateSymbol" />
          <node concept="3cmrfG" id="1ggxSI7vV5D" role="37wK5m">
            <property role="3cmrfH" value="4" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ggxSI7vUXN" role="jymVt" />
    <node concept="Wx3nA" id="1ggxSI7rFbi" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="EXPRESSION" />
      <node concept="3Tm6S6" id="1ggxSI7rFbf" role="1B3o_S" />
      <node concept="17QB3L" id="1ggxSI7rFbg" role="1tU5fm" />
      <node concept="Xl_RD" id="1ggxSI7rFbh" role="33vP2m">
        <property role="Xl_RC" value="expression" />
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7BMJfq" role="jymVt" />
    <node concept="3clFbW" id="5uFPQ7BMJfy" role="jymVt">
      <node concept="37vLTG" id="5uFPQ7BMJvR" role="3clF46">
        <property role="TrG5h" value="arity" />
        <node concept="10Oyi0" id="5uFPQ7BMJwr" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="5uFPQ7BMJf$" role="3clF45" />
      <node concept="3Tm1VV" id="5uFPQ7BMJf_" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7BMJfA" role="3clF47">
        <node concept="XkiVB" id="5uFPQ7BMJhW" role="3cqZAp">
          <ref role="37wK5l" to="rchb:5uFPQ7B$$fT" resolve="PredicateSymbol" />
          <node concept="37vLTw" id="1ggxSI7rFbl" role="37wK5m">
            <ref role="3cqZAo" node="1ggxSI7rFbi" resolve="EXPRESSION" />
          </node>
          <node concept="37vLTw" id="5uFPQ7BMJxB" role="37wK5m">
            <ref role="3cqZAo" node="5uFPQ7BMJvR" resolve="arity" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1ggxSI7s$b5" role="jymVt" />
    <node concept="3Tm1VV" id="5uFPQ7BMJeK" role="1B3o_S" />
    <node concept="3uibUv" id="5uFPQ7BMJfe" role="1zkMxy">
      <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
    </node>
  </node>
  <node concept="3HP615" id="5uFPQ7BZac$">
    <property role="TrG5h" value="ConstraintOccurrence" />
    <node concept="2tJIrI" id="5uFPQ7BZacM" role="jymVt" />
    <node concept="3clFb_" id="5uFPQ7BZacZ" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="constraint" />
      <node concept="3uibUv" id="5uFPQ7BZadj" role="3clF45">
        <ref role="3uigEE" to="rchb:6Kcfpq7BfEn" resolve="Constraint" />
      </node>
      <node concept="3Tm1VV" id="5uFPQ7BZad2" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7BZad3" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5uFPQ7BZadz" role="jymVt" />
    <node concept="3clFb_" id="5uFPQ7BZafw" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="arguments" />
      <node concept="3clFbS" id="5uFPQ7BZafz" role="3clF47" />
      <node concept="3Tm1VV" id="5uFPQ7BZaf$" role="1B3o_S" />
      <node concept="3uibUv" id="7HUwyZaBMTJ" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3qTvmN" id="7HUwyZaBMTK" role="11_B2D" />
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7BZacR" role="jymVt" />
    <node concept="3Tm1VV" id="5uFPQ7BZac_" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5$WbtTOYoMb">
    <property role="TrG5h" value="JavaPredicate" />
    <property role="1sVAO0" value="false" />
    <node concept="2tJIrI" id="7ISVfSJp0R" role="jymVt" />
    <node concept="312cEg" id="7ISVfSJoWw" role="jymVt">
      <property role="TrG5h" value="symbol" />
      <node concept="3Tm6S6" id="7ISVfSJoWu" role="1B3o_S" />
      <node concept="3uibUv" id="7ISVfSJoWv" role="1tU5fm">
        <ref role="3uigEE" node="5uFPQ7BMJeJ" resolve="JavaPredicateSymbol" />
      </node>
    </node>
    <node concept="2tJIrI" id="5$WbtTOYpQU" role="jymVt" />
    <node concept="3clFbW" id="5$WbtTOYsLU" role="jymVt">
      <node concept="37vLTG" id="2KSgAgV9I6z" role="3clF46">
        <property role="TrG5h" value="predicateSymbol" />
        <node concept="3uibUv" id="2KSgAgV9I8P" role="1tU5fm">
          <ref role="3uigEE" node="5uFPQ7BMJeJ" resolve="JavaPredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="5uFPQ7Cj7nY" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="8X2XB" id="5uFPQ7Cj7rl" role="1tU5fm">
          <node concept="3uibUv" id="5uFPQ7Cj7qg" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5$WbtTOYsLW" role="3clF45" />
      <node concept="3Tm1VV" id="5uFPQ7CjeLQ" role="1B3o_S" />
      <node concept="3clFbS" id="5$WbtTOYsLY" role="3clF47">
        <node concept="XkiVB" id="4xBopTzr9fT" role="3cqZAp">
          <ref role="37wK5l" to="rchb:6Kcfpq7B1f7" resolve="AbstractPredicate" />
          <node concept="37vLTw" id="5uFPQ7Cj7IA" role="37wK5m">
            <ref role="3cqZAo" node="5uFPQ7Cj7nY" resolve="args" />
          </node>
        </node>
        <node concept="3clFbF" id="7ISVfSJoWG" role="3cqZAp">
          <node concept="37vLTI" id="7ISVfSJoWH" role="3clFbG">
            <node concept="2OqwBi" id="7ISVfSJoWI" role="37vLTJ">
              <node concept="Xjq3P" id="7ISVfSJoWJ" role="2Oq$k0" />
              <node concept="2OwXpG" id="7ISVfSJoWK" role="2OqNvi">
                <ref role="2Oxat5" node="7ISVfSJoWw" resolve="symbol" />
              </node>
            </node>
            <node concept="37vLTw" id="2KSgAgV9Ict" role="37vLTx">
              <ref role="3cqZAo" node="2KSgAgV9I6z" resolve="predicateSymbol" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5$WbtTOYoTe" role="jymVt" />
    <node concept="3clFb_" id="6X5F0Ngy7Gy" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="id" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6X5F0Ngy7G_" role="3clF47">
        <node concept="3cpWs8" id="zaz2vxT5qO" role="3cqZAp">
          <node concept="3cpWsn" id="zaz2vxT5qP" role="3cpWs9">
            <property role="TrG5h" value="arguments" />
            <node concept="3uibUv" id="zaz2vxT5qK" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
              <node concept="3qTvmN" id="zaz2vxT5qN" role="11_B2D" />
            </node>
            <node concept="1rXfSq" id="zaz2vxT5qQ" role="33vP2m">
              <ref role="37wK5l" to="rchb:5uFPQ7BZhBG" resolve="arguments" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="zaz2vxT5pf" role="3cqZAp">
          <node concept="2YIFZM" id="zaz2vxT5DJ" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
            <ref role="37wK5l" to="wyt6:~String.valueOf(char[]):java.lang.String" resolve="valueOf" />
            <node concept="2OqwBi" id="zaz2vxT5$9" role="37wK5m">
              <node concept="2OqwBi" id="zaz2vxT5tm" role="2Oq$k0">
                <node concept="37vLTw" id="zaz2vxT5qR" role="2Oq$k0">
                  <ref role="3cqZAo" node="zaz2vxT5qP" resolve="arguments" />
                </node>
                <node concept="liA8E" id="zaz2vxT5yp" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Collection.iterator():java.util.Iterator" resolve="iterator" />
                </node>
              </node>
              <node concept="liA8E" id="zaz2vxT5AM" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6X5F0Ngy7C2" role="1B3o_S" />
      <node concept="3uibUv" id="6X5F0Ngy7G1" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2tJIrI" id="6X5F0Ngy7$Q" role="jymVt" />
    <node concept="3clFb_" id="7ISVfSJoQm" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <node concept="3uibUv" id="7ISVfSJoQn" role="3clF45">
        <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
      </node>
      <node concept="3Tm1VV" id="7ISVfSJoQo" role="1B3o_S" />
      <node concept="3clFbS" id="7ISVfSJoQr" role="3clF47">
        <node concept="3clFbF" id="7ISVfSJpbE" role="3cqZAp">
          <node concept="37vLTw" id="7ISVfSJpbD" role="3clFbG">
            <ref role="3cqZAo" node="7ISVfSJoWw" resolve="symbol" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5$WbtTOYoMc" role="1B3o_S" />
    <node concept="3uibUv" id="4xBopTzr8gp" role="1zkMxy">
      <ref role="3uigEE" to="rchb:6Kcfpq7B0Wu" resolve="AbstractPredicate" />
    </node>
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
      <node concept="37vLTG" id="6X5F0NgIkLY" role="3clF46">
        <property role="TrG5h" value="program" />
        <node concept="3uibUv" id="6X5F0NgIkO$" role="1tU5fm">
          <ref role="3uigEE" to="rchb:5uFPQ7BvNzE" resolve="Program" />
        </node>
      </node>
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
              <node concept="37vLTw" id="6X5F0NgIuxk" role="37wK5m">
                <ref role="3cqZAo" node="6X5F0NgIkLY" resolve="program" />
              </node>
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
              <ref role="3uigEE" to="rchb:5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
            <ref role="3uigEE" node="24Vro6cQnrj" resolve="EvaluationTrace" />
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
    <node concept="2tJIrI" id="7ISVfSIWE1" role="jymVt" />
    <node concept="3clFb_" id="5uFPQ7ClOzA" role="jymVt">
      <property role="TrG5h" value="sessionSolver" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="5uFPQ7ClOB7" role="3clF45">
        <ref role="3uigEE" node="6Kcfpq7B0b0" resolve="SessionSolver" />
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
          <ref role="3uigEE" to="rchb:54i3FxcZHHF" resolve="ConstraintSymbol" />
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
          <ref role="3uigEE" node="5uFPQ7BZac$" resolve="ConstraintOccurrence" />
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
          <ref role="3uigEE" to="rchb:54i3FxcZHHF" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="3uibUv" id="5mr7UHccvdJ" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="5mr7UHccvdK" role="11_B2D">
          <ref role="3uigEE" node="5uFPQ7BZac$" resolve="ConstraintOccurrence" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5mr7UHccvdL" role="1B3o_S" />
      <node concept="3clFbS" id="5mr7UHccvdM" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5uFPQ7BZbRm" role="jymVt" />
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
        <node concept="37vLTG" id="6X5F0NgIqn1" role="3clF46">
          <property role="TrG5h" value="program" />
          <node concept="3uibUv" id="6X5F0NgIqpx" role="1tU5fm">
            <ref role="3uigEE" to="rchb:5uFPQ7BvNzE" resolve="Program" />
          </node>
        </node>
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
  <node concept="3HP615" id="49L2l3FhtS6">
    <property role="TrG5h" value="PredicateInvocation" />
    <node concept="2tJIrI" id="49L2l3FhtSo" role="jymVt" />
    <node concept="3clFb_" id="49L2l3FhtSL" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="predicate" />
      <node concept="3clFbS" id="49L2l3FhtSO" role="3clF47" />
      <node concept="3Tm1VV" id="49L2l3FhtSP" role="1B3o_S" />
      <node concept="3uibUv" id="49L2l3FhtS_" role="3clF45">
        <ref role="3uigEE" to="rchb:6Kcfpq7Bj7q" resolve="Predicate" />
      </node>
    </node>
    <node concept="2tJIrI" id="49L2l3FhtT5" role="jymVt" />
    <node concept="3clFb_" id="49L2l3FhtTG" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="arguments" />
      <node concept="3clFbS" id="49L2l3FhtTH" role="3clF47" />
      <node concept="3Tm1VV" id="49L2l3FhtTI" role="1B3o_S" />
      <node concept="3uibUv" id="49L2l3FhtTJ" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3qTvmN" id="49L2l3FhtTK" role="11_B2D" />
      </node>
    </node>
    <node concept="2tJIrI" id="49L2l3FhtSt" role="jymVt" />
    <node concept="3Tm1VV" id="49L2l3FhtS7" role="1B3o_S" />
  </node>
</model>

