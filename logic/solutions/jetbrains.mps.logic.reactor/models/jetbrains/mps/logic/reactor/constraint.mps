<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2a79c8aa-e372-4c00-8d71-5d7f3db517e4(jetbrains.mps.logic.reactor.constraint)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
  </languages>
  <imports>
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="45ys" ref="r:7365f7fe-12e6-4229-8901-f6dc6d5df03f(jetbrains.mps.logic.reactor.logical)" />
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
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
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
          <ref role="3uigEE" node="5uFPQ7B$mzX" resolve="Symbol" />
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
          <ref role="3uigEE" node="5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
            <ref role="3uigEE" node="5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
          <ref role="3uigEE" node="24Vro6cQnrj" resolve="ComputingTracer" />
        </node>
      </node>
      <node concept="37vLTG" id="2tcGHBEix89" role="3clF46">
        <property role="TrG5h" value="predicateSymbols" />
        <node concept="8X2XB" id="2tcGHBEix8a" role="1tU5fm">
          <node concept="3uibUv" id="2tcGHBEix8b" role="8Xvag">
            <ref role="3uigEE" node="5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
          <ref role="3uigEE" node="5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
          <ref role="3uigEE" node="5uFPQ7B$mzX" resolve="Symbol" />
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
                <ref role="3uigEE" node="5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
          <ref role="3uigEE" node="5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
          <ref role="3uigEE" node="5uFPQ7B$$3f" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="2tcGHBEivC2" role="3clF46">
        <property role="TrG5h" value="computingTracer" />
        <node concept="3uibUv" id="2tcGHBEivRX" role="1tU5fm">
          <ref role="3uigEE" node="24Vro6cQnrj" resolve="ComputingTracer" />
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
          <ref role="3uigEE" node="5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
          <ref role="3uigEE" node="5uFPQ7B$mzX" resolve="Symbol" />
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
                <ref role="3uigEE" node="5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
            <ref role="3uigEE" node="5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
              <ref role="3uigEE" node="5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
          <ref role="3uigEE" node="5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
          <ref role="3uigEE" node="5uFPQ7B$$3f" resolve="PredicateSymbol" />
        </node>
        <node concept="3uibUv" id="6Kcfpq7B5nl" role="11_B2D">
          <ref role="3uigEE" node="6Kcfpq7AYBh" resolve="Queryable" />
        </node>
      </node>
      <node concept="2ShNRf" id="6Kcfpq7B51Q" role="33vP2m">
        <node concept="1pGfFk" id="6Kcfpq7B51R" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="5uFPQ7C2F2J" role="1pMfVU">
            <ref role="3uigEE" node="5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
        <ref role="3uigEE" node="24Vro6cQnrj" resolve="ComputingTracer" />
      </node>
      <node concept="10M0yZ" id="4ut_d$0E9$D" role="33vP2m">
        <ref role="1PxDUh" node="24Vro6cQnrj" resolve="ComputingTracer" />
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
      <node concept="3uibUv" id="7HUwyZaBI98" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3qTvmN" id="7HUwyZaBI99" role="11_B2D" />
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7BZjbz" role="jymVt" />
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
        <ref role="3uigEE" node="6Kcfpq7Bj7q" resolve="Predicate" />
      </node>
      <node concept="3Tm1VV" id="6Kcfpq7Cyk6" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7Cyk7" role="3clF47">
        <node concept="3clFbF" id="6Kcfpq7Cyk8" role="3cqZAp">
          <node concept="10QFUN" id="6Kcfpq7Cyk9" role="3clFbG">
            <node concept="Xjq3P" id="6Kcfpq7Cyka" role="10QFUP" />
            <node concept="3uibUv" id="6Kcfpq7CzUo" role="10QFUM">
              <ref role="3uigEE" node="6Kcfpq7Bj7q" resolve="Predicate" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7B8Or" role="jymVt" />
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
          <node concept="2OqwBi" id="5uFPQ7BZfDt" role="3clFbG">
            <node concept="1rXfSq" id="7ISVfSJnHs" role="2Oq$k0">
              <ref role="37wK5l" node="6Kcfpq7Bjgi" resolve="symbol" />
            </node>
            <node concept="liA8E" id="5uFPQ7BZfHQ" role="2OqNvi">
              <ref role="37wK5l" node="5uFPQ7B$$w_" resolve="toString" />
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
                      <ref role="37wK5l" node="6Kcfpq7Bjgi" resolve="symbol" />
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="6Kcfpq7B2WS" role="2Oq$k0">
                  <node concept="10QFUN" id="6Kcfpq7B2WT" role="1eOMHV">
                    <node concept="3uibUv" id="6Kcfpq7B2WU" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="1rXfSq" id="7ISVfSJomP" role="10QFUP">
                      <ref role="37wK5l" node="6Kcfpq7Bjgi" resolve="symbol" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="6Kcfpq7B2WV" role="3K4Cdx">
              <node concept="10Nm6u" id="6Kcfpq7B2WW" role="3uHU7w" />
              <node concept="1rXfSq" id="7ISVfSJojN" role="3uHU7B">
                <ref role="37wK5l" node="6Kcfpq7Bjgi" resolve="symbol" />
              </node>
            </node>
            <node concept="3y3z36" id="6Kcfpq7B2WX" role="3K4GZi">
              <node concept="10Nm6u" id="6Kcfpq7B2WY" role="3uHU7w" />
              <node concept="2OqwBi" id="6Kcfpq7B2WZ" role="3uHU7B">
                <node concept="37vLTw" id="6Kcfpq7B2X0" role="2Oq$k0">
                  <ref role="3cqZAo" node="6Kcfpq7B2Ww" resolve="that" />
                </node>
                <node concept="liA8E" id="7ISVfSJots" role="2OqNvi">
                  <ref role="37wK5l" node="6Kcfpq7Bjgi" resolve="symbol" />
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
                      <ref role="37wK5l" node="6Kcfpq7Bjgi" resolve="symbol" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6Kcfpq7B2Xv" role="3K4E3e">
                    <node concept="2YIFZM" id="6Kcfpq7B2Xw" role="2Oq$k0">
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                      <node concept="1rXfSq" id="7ISVfSJoy$" role="37wK5m">
                        <ref role="37wK5l" node="6Kcfpq7Bjgi" resolve="symbol" />
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
      <ref role="3uigEE" node="6Kcfpq7Bj7q" resolve="Predicate" />
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
  </node>
  <node concept="3HP615" id="6Kcfpq7BfEn">
    <property role="TrG5h" value="Constraint" />
    <node concept="2tJIrI" id="6Kcfpq7Bg6c" role="jymVt" />
    <node concept="3clFb_" id="5uFPQ7B_aTC" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="symbol" />
      <node concept="3uibUv" id="5uFPQ7B_aVj" role="3clF45">
        <ref role="3uigEE" node="54i3FxcZHHF" resolve="ConstraintSymbol" />
      </node>
      <node concept="3Tm1VV" id="5uFPQ7B_aTF" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7B_aTG" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5uFPQ7B_aZ9" role="jymVt" />
    <node concept="3clFb_" id="78CwJJcOwWR" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="argumentTypes" />
      <node concept="3uibUv" id="78CwJJcOxpB" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="78CwJJcOxzF" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="78CwJJcOx$p" role="11_B2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="78CwJJcOwWU" role="1B3o_S" />
      <node concept="3clFbS" id="78CwJJcOwWV" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7IvepusY5hO" role="jymVt" />
    <node concept="3clFb_" id="7IvepusY5jA" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="occurrence" />
      <node concept="37vLTG" id="7IvepusY5kK" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="7IvepusY5lC" role="1tU5fm">
          <ref role="3uigEE" to="45ys:7IvepusY4Ez" resolve="LogicalContext" />
        </node>
      </node>
      <node concept="3clFbS" id="7IvepusY5jD" role="3clF47" />
      <node concept="3Tm1VV" id="7IvepusY5jE" role="1B3o_S" />
      <node concept="3uibUv" id="7IvepusY5iM" role="3clF45">
        <ref role="3uigEE" node="5uFPQ7BZac$" resolve="ConstraintOccurrence" />
      </node>
    </node>
    <node concept="2tJIrI" id="78CwJJcOwxN" role="jymVt" />
    <node concept="3Tm1VV" id="6Kcfpq7BfEo" role="1B3o_S" />
    <node concept="3uibUv" id="5uFPQ7B$Pog" role="3HQHJm">
      <ref role="3uigEE" node="5uFPQ7B$Pn9" resolve="AndItem" />
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
    <property role="TrG5h" value="Predicate" />
    <node concept="2tJIrI" id="4xBopTzlOs8" role="jymVt" />
    <node concept="3clFb_" id="6Kcfpq7Bjgi" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="symbol" />
      <node concept="3uibUv" id="5uFPQ7BE$hP" role="3clF45">
        <ref role="3uigEE" node="5uFPQ7B$$3f" resolve="PredicateSymbol" />
      </node>
      <node concept="3Tm1VV" id="6Kcfpq7Bjgl" role="1B3o_S" />
      <node concept="3clFbS" id="6Kcfpq7Bjgm" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="49L2l3FhtYY" role="jymVt" />
    <node concept="3clFb_" id="49L2l3Fhu0j" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="invocation" />
      <node concept="3clFbS" id="49L2l3Fhu0m" role="3clF47" />
      <node concept="3Tm1VV" id="49L2l3Fhu0n" role="1B3o_S" />
      <node concept="3uibUv" id="49L2l3FhtZE" role="3clF45">
        <ref role="3uigEE" node="49L2l3FhtS6" resolve="PredicateInvocation" />
      </node>
      <node concept="37vLTG" id="49L2l3Fhu2p" role="3clF46">
        <property role="TrG5h" value="logicalContext" />
        <node concept="3uibUv" id="49L2l3Fhu2o" role="1tU5fm">
          <ref role="3uigEE" to="45ys:7IvepusY4Ez" resolve="LogicalContext" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Kcfpq7Bjku" role="jymVt" />
    <node concept="3Tm1VV" id="6Kcfpq7Bj7r" role="1B3o_S" />
    <node concept="3uibUv" id="5uFPQ7B_ama" role="3HQHJm">
      <ref role="3uigEE" node="5uFPQ7B$Pn9" resolve="AndItem" />
    </node>
    <node concept="3UR2Jj" id="6Kcfpq7C_PM" role="lGtFl">
      <node concept="TZ5HA" id="6Kcfpq7C_PN" role="TZ5H$">
        <node concept="1dT_AC" id="6Kcfpq7C_PO" role="1dT_Ay">
          <property role="1dT_AB" value="A predicate that is provided by a solver. Can be either told or asked. " />
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
        <property role="TrG5h" value="predicateSymbol" />
        <node concept="3uibUv" id="5uFPQ7C64Nf" role="1tU5fm">
          <ref role="3uigEE" node="5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
          <ref role="3uigEE" node="5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
          <ref role="3uigEE" node="5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
          <ref role="3uigEE" node="5uFPQ7B$mzX" resolve="Symbol" />
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
            <ref role="1Y3XeK" node="24Vro6cQnrj" resolve="ComputingTracer" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="4ut_d$0EaYa" role="1B3o_S" />
            <node concept="3clFb_" id="4ut_d$0EaYb" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="askSuccess" />
              <node concept="37vLTG" id="4ut_d$0EaYc" role="3clF46">
                <property role="TrG5h" value="predicateSymbol" />
                <node concept="3uibUv" id="4ut_d$0EaYd" role="1tU5fm">
                  <ref role="3uigEE" node="5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
                  <ref role="3uigEE" node="5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
                  <ref role="3uigEE" node="5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
                  <ref role="3uigEE" node="5uFPQ7B$mzX" resolve="Symbol" />
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
        <ref role="3uigEE" node="24Vro6cQnrj" resolve="ComputingTracer" />
      </node>
    </node>
    <node concept="3Tm1VV" id="24Vro6cQnrk" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="54i3FxcZHHF">
    <property role="TrG5h" value="ConstraintSymbol" />
    <node concept="2tJIrI" id="54i3FxcZQ1e" role="jymVt" />
    <node concept="2YIFZL" id="54i3FxcZQAb" role="jymVt">
      <property role="TrG5h" value="symbol" />
      <node concept="37vLTG" id="54i3FxcZQYa" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="54i3FxcZQZ9" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="54i3FxcZR22" role="3clF46">
        <property role="TrG5h" value="arity" />
        <node concept="10Oyi0" id="54i3FxcZR6r" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="54i3FxcZQQ8" role="3clF45">
        <ref role="3uigEE" node="54i3FxcZHHF" resolve="ConstraintSymbol" />
      </node>
      <node concept="3Tm1VV" id="54i3FxcZQAe" role="1B3o_S" />
      <node concept="3clFbS" id="54i3FxcZQAf" role="3clF47">
        <node concept="3clFbF" id="54i3FxcZR8B" role="3cqZAp">
          <node concept="2ShNRf" id="54i3FxcZR8_" role="3clFbG">
            <node concept="1pGfFk" id="54i3FxcZSuF" role="2ShVmc">
              <ref role="37wK5l" node="54i3FxcZMv0" resolve="ConstraintSymbol" />
              <node concept="37vLTw" id="54i3FxcZVfR" role="37wK5m">
                <ref role="3cqZAo" node="54i3FxcZQYa" resolve="id" />
              </node>
              <node concept="37vLTw" id="54i3FxcZZrc" role="37wK5m">
                <ref role="3cqZAo" node="54i3FxcZR22" resolve="arity" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7BMJYr" role="jymVt" />
    <node concept="3clFbW" id="54i3FxcZMv0" role="jymVt">
      <node concept="37vLTG" id="54i3FxcZMv1" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="54i3FxcZMv2" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="54i3FxcZMv3" role="3clF46">
        <property role="TrG5h" value="arity" />
        <node concept="10Oyi0" id="54i3FxcZMv4" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="54i3FxcZMv5" role="3clF45" />
      <node concept="3Tm1VV" id="5uFPQ7CgjUp" role="1B3o_S" />
      <node concept="3clFbS" id="54i3FxcZMv7" role="3clF47">
        <node concept="XkiVB" id="5uFPQ7B$pk2" role="3cqZAp">
          <ref role="37wK5l" node="5uFPQ7B$oXn" resolve="Symbol" />
          <node concept="37vLTw" id="5uFPQ7B$pXy" role="37wK5m">
            <ref role="3cqZAo" node="54i3FxcZMv1" resolve="id" />
          </node>
          <node concept="37vLTw" id="5uFPQ7B$w2z" role="37wK5m">
            <ref role="3cqZAo" node="54i3FxcZMv3" resolve="arity" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="30XHGaPaLYs" role="jymVt" />
    <node concept="3clFb_" id="54i3Fxd6LvH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="54i3Fxd6LvI" role="1B3o_S" />
      <node concept="17QB3L" id="6tTPqJZ120k" role="3clF45" />
      <node concept="3clFbS" id="54i3Fxd6LvL" role="3clF47">
        <node concept="3clFbF" id="54i3Fxd6ORN" role="3cqZAp">
          <node concept="3cpWs3" id="5uFPQ7B$$Ji" role="3clFbG">
            <node concept="1rXfSq" id="5uFPQ7B$$Lw" role="3uHU7w">
              <ref role="37wK5l" node="54i3FxcZMv$" resolve="arity" />
            </node>
            <node concept="3cpWs3" id="5uFPQ7B$$FI" role="3uHU7B">
              <node concept="1rXfSq" id="5uFPQ7B$pFA" role="3uHU7B">
                <ref role="37wK5l" node="54i3FxcZMvt" resolve="id" />
              </node>
              <node concept="Xl_RD" id="5uFPQ7B$$G1" role="3uHU7w">
                <property role="Xl_RC" value="/" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="54i3Fxd6LvM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="54i3FxcZIpZ" role="jymVt" />
    <node concept="3Tm1VV" id="54i3FxcZHHG" role="1B3o_S" />
    <node concept="3UR2Jj" id="30XHGaPaDFt" role="lGtFl">
      <node concept="TZ5HA" id="30XHGaPaDFu" role="TZ5H$">
        <node concept="1dT_AC" id="30XHGaPaDFv" role="1dT_Ay">
          <property role="1dT_AB" value="TODO: move to the constraint model" />
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="5uFPQ7B$nqr" role="1zkMxy">
      <ref role="3uigEE" node="5uFPQ7B$mzX" resolve="Symbol" />
    </node>
  </node>
  <node concept="312cEu" id="5uFPQ7B$mzX">
    <property role="TrG5h" value="Symbol" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="5uFPQ7B$mC8" role="jymVt" />
    <node concept="3clFbW" id="5uFPQ7B$oXn" role="jymVt">
      <node concept="37vLTG" id="5uFPQ7B$p1M" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="5uFPQ7B$p5R" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5uFPQ7B$ywe" role="3clF46">
        <property role="TrG5h" value="arity" />
        <node concept="10Oyi0" id="5uFPQ7B$yCi" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="5uFPQ7B$oXp" role="3clF45" />
      <node concept="3Tmbuc" id="5uFPQ7BEzkm" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7B$oXr" role="3clF47">
        <node concept="3clFbF" id="5uFPQ7B$pad" role="3cqZAp">
          <node concept="37vLTI" id="5uFPQ7B$pdS" role="3clFbG">
            <node concept="37vLTw" id="5uFPQ7B$pgh" role="37vLTx">
              <ref role="3cqZAo" node="5uFPQ7B$p1M" resolve="id" />
            </node>
            <node concept="2OqwBi" id="5uFPQ7B$pat" role="37vLTJ">
              <node concept="Xjq3P" id="5uFPQ7B$pac" role="2Oq$k0" />
              <node concept="2OwXpG" id="5uFPQ7B$pbA" role="2OqNvi">
                <ref role="2Oxat5" node="54i3FxcZMvF" resolve="id" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5uFPQ7B$w67" role="3cqZAp">
          <node concept="37vLTI" id="5uFPQ7B$we4" role="3clFbG">
            <node concept="37vLTw" id="5uFPQ7B$yIb" role="37vLTx">
              <ref role="3cqZAo" node="5uFPQ7B$ywe" resolve="arity" />
            </node>
            <node concept="2OqwBi" id="5uFPQ7B$w6O" role="37vLTJ">
              <node concept="Xjq3P" id="5uFPQ7B$w65" role="2Oq$k0" />
              <node concept="2OwXpG" id="5uFPQ7B$w81" role="2OqNvi">
                <ref role="2Oxat5" node="54i3FxcZMvI" resolve="arity" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7B$oT4" role="jymVt" />
    <node concept="3Tm1VV" id="5uFPQ7B$mzY" role="1B3o_S" />
    <node concept="3clFb_" id="54i3FxcZMvt" role="jymVt">
      <property role="TrG5h" value="id" />
      <node concept="17QB3L" id="54i3FxcZMvu" role="3clF45" />
      <node concept="3Tm1VV" id="54i3FxcZMvv" role="1B3o_S" />
      <node concept="3clFbS" id="54i3FxcZMvw" role="3clF47">
        <node concept="3clFbF" id="54i3FxcZMvx" role="3cqZAp">
          <node concept="37vLTw" id="54i3FxcZMvy" role="3clFbG">
            <ref role="3cqZAo" node="54i3FxcZMvF" resolve="id" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7B$zLN" role="jymVt" />
    <node concept="3clFb_" id="54i3FxcZMv$" role="jymVt">
      <property role="TrG5h" value="arity" />
      <node concept="10Oyi0" id="54i3FxcZMv_" role="3clF45" />
      <node concept="3Tm1VV" id="54i3FxcZMvA" role="1B3o_S" />
      <node concept="3clFbS" id="54i3FxcZMvB" role="3clF47">
        <node concept="3clFbF" id="54i3FxcZMvC" role="3cqZAp">
          <node concept="37vLTw" id="54i3FxcZMvD" role="3clFbG">
            <ref role="3cqZAo" node="54i3FxcZMvI" resolve="arity" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7B$oOM" role="jymVt" />
    <node concept="3clFb_" id="54i3Fxd17cS" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="54i3Fxd17cT" role="3clF45" />
      <node concept="3Tm1VV" id="54i3Fxd17cU" role="1B3o_S" />
      <node concept="3clFbS" id="54i3Fxd17cV" role="3clF47">
        <node concept="3cpWs8" id="54i3Fxd17cX" role="3cqZAp">
          <node concept="3cpWsn" id="54i3Fxd17cY" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Oyi0" id="54i3Fxd17cZ" role="1tU5fm" />
            <node concept="3cmrfG" id="54i3Fxd17d0" role="33vP2m">
              <property role="3cmrfH" value="17" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="54i3Fxd17da" role="3cqZAp">
          <node concept="37vLTI" id="54i3Fxd17db" role="3clFbG">
            <node concept="37vLTw" id="54i3Fxd17dc" role="37vLTJ">
              <ref role="3cqZAo" node="54i3Fxd17cY" resolve="result" />
            </node>
            <node concept="3cpWs3" id="54i3Fxd17dd" role="37vLTx">
              <node concept="17qRlL" id="54i3Fxd17d6" role="3uHU7B">
                <node concept="3cmrfG" id="54i3Fxd17d7" role="3uHU7B">
                  <property role="3cmrfH" value="43" />
                </node>
                <node concept="37vLTw" id="54i3Fxd17d1" role="3uHU7w">
                  <ref role="3cqZAo" node="54i3Fxd17cY" resolve="result" />
                </node>
              </node>
              <node concept="1eOMI4" id="54i3Fxd17de" role="3uHU7w">
                <node concept="3K4zz7" id="54i3Fxd17df" role="1eOMHV">
                  <node concept="3cmrfG" id="54i3Fxd17dg" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3y3z36" id="54i3Fxd17dh" role="3K4Cdx">
                    <node concept="37vLTw" id="5uFPQ7B$wJh" role="3uHU7B">
                      <ref role="3cqZAo" node="54i3FxcZMvF" resolve="id" />
                    </node>
                    <node concept="10Nm6u" id="54i3Fxd17di" role="3uHU7w" />
                  </node>
                  <node concept="2OqwBi" id="54i3Fxd17dj" role="3K4E3e">
                    <node concept="2YIFZM" id="54i3Fxd17dk" role="2Oq$k0">
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                      <node concept="37vLTw" id="5uFPQ7B$wL3" role="37wK5m">
                        <ref role="3cqZAo" node="54i3FxcZMvF" resolve="id" />
                      </node>
                    </node>
                    <node concept="liA8E" id="54i3Fxd17dl" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.hashCode():int" resolve="hashCode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="54i3Fxd17dq" role="3cqZAp">
          <node concept="37vLTI" id="54i3Fxd17dr" role="3clFbG">
            <node concept="37vLTw" id="54i3Fxd17ds" role="37vLTJ">
              <ref role="3cqZAo" node="54i3Fxd17cY" resolve="result" />
            </node>
            <node concept="3cpWs3" id="54i3Fxd17dt" role="37vLTx">
              <node concept="17qRlL" id="54i3Fxd1hT$" role="3uHU7w">
                <node concept="3cmrfG" id="54i3Fxd1hTP" role="3uHU7B">
                  <property role="3cmrfH" value="37" />
                </node>
                <node concept="37vLTw" id="54i3Fxd17dp" role="3uHU7w">
                  <ref role="3cqZAo" node="54i3FxcZMvI" resolve="arity" />
                </node>
              </node>
              <node concept="17qRlL" id="54i3Fxd17dm" role="3uHU7B">
                <node concept="3cmrfG" id="54i3Fxd17dn" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="54i3Fxd17do" role="3uHU7w">
                  <ref role="3cqZAo" node="54i3Fxd17cY" resolve="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="54i3Fxd17du" role="3cqZAp">
          <node concept="37vLTw" id="54i3Fxd17dv" role="3clFbG">
            <ref role="3cqZAo" node="54i3Fxd17cY" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="54i3Fxd17cW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7B$tTa" role="jymVt" />
    <node concept="3clFb_" id="54i3Fxd17bK" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="54i3Fxd17bL" role="3clF45" />
      <node concept="3Tm1VV" id="54i3Fxd17bM" role="1B3o_S" />
      <node concept="3clFbS" id="54i3Fxd17bN" role="3clF47">
        <node concept="3clFbJ" id="54i3Fxd17bO" role="3cqZAp">
          <node concept="3clFbS" id="54i3Fxd17bP" role="3clFbx">
            <node concept="3cpWs6" id="54i3Fxd17bQ" role="3cqZAp">
              <node concept="3clFbT" id="54i3Fxd17bR" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="54i3Fxd17bS" role="3clFbw">
            <node concept="Xjq3P" id="54i3Fxd17bJ" role="3uHU7B" />
            <node concept="37vLTw" id="54i3Fxd17bT" role="3uHU7w">
              <ref role="3cqZAo" node="54i3Fxd17cg" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="54i3Fxd17bU" role="3cqZAp">
          <node concept="3clFbS" id="54i3Fxd17bV" role="3clFbx">
            <node concept="3cpWs6" id="54i3Fxd17bW" role="3cqZAp">
              <node concept="3clFbT" id="54i3Fxd17bX" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="54i3Fxd17bY" role="3clFbw">
            <node concept="3clFbC" id="54i3Fxd17bZ" role="3uHU7B">
              <node concept="37vLTw" id="54i3Fxd17c0" role="3uHU7B">
                <ref role="3cqZAo" node="54i3Fxd17cg" resolve="o" />
              </node>
              <node concept="10Nm6u" id="54i3Fxd17c1" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="54i3Fxd17c2" role="3uHU7w">
              <node concept="2OqwBi" id="54i3Fxd17c3" role="3uHU7B">
                <node concept="Xjq3P" id="54i3Fxd17c4" role="2Oq$k0" />
                <node concept="liA8E" id="54i3Fxd17c5" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                </node>
              </node>
              <node concept="2OqwBi" id="54i3Fxd17c6" role="3uHU7w">
                <node concept="37vLTw" id="54i3Fxd17c7" role="2Oq$k0">
                  <ref role="3cqZAo" node="54i3Fxd17cg" resolve="o" />
                </node>
                <node concept="liA8E" id="54i3Fxd17c8" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="54i3Fxd17c9" role="3cqZAp" />
        <node concept="3cpWs8" id="54i3Fxd17ca" role="3cqZAp">
          <node concept="3cpWsn" id="54i3Fxd17cb" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="5uFPQ7B$x_B" role="1tU5fm">
              <ref role="3uigEE" node="5uFPQ7B$mzX" resolve="Symbol" />
            </node>
            <node concept="10QFUN" id="54i3Fxd17cd" role="33vP2m">
              <node concept="3uibUv" id="5uFPQ7B$xEk" role="10QFUM">
                <ref role="3uigEE" node="5uFPQ7B$mzX" resolve="Symbol" />
              </node>
              <node concept="37vLTw" id="54i3Fxd17cf" role="10QFUP">
                <ref role="3cqZAo" node="54i3Fxd17cg" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="54i3Fxd17cq" role="3cqZAp">
          <node concept="3clFbS" id="54i3Fxd17cr" role="3clFbx">
            <node concept="3cpWs6" id="54i3Fxd17cs" role="3cqZAp">
              <node concept="3clFbT" id="54i3Fxd17ct" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3K4zz7" id="54i3Fxd17cu" role="3clFbw">
            <node concept="3fqX7Q" id="54i3Fxd17cv" role="3K4E3e">
              <node concept="2OqwBi" id="54i3Fxd17cw" role="3fr31v">
                <node concept="liA8E" id="54i3Fxd17cx" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="2OqwBi" id="54i3Fxd17cy" role="37wK5m">
                    <node concept="37vLTw" id="54i3Fxd17cj" role="2Oq$k0">
                      <ref role="3cqZAo" node="54i3Fxd17cb" resolve="that" />
                    </node>
                    <node concept="liA8E" id="5uFPQ7B$pQg" role="2OqNvi">
                      <ref role="37wK5l" node="54i3FxcZMvt" resolve="id" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5uFPQ7B$y3J" role="2Oq$k0">
                  <ref role="3cqZAo" node="54i3FxcZMvF" resolve="id" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="54i3Fxd17cA" role="3K4Cdx">
              <node concept="10Nm6u" id="54i3Fxd17cB" role="3uHU7w" />
              <node concept="37vLTw" id="5uFPQ7B$y6_" role="3uHU7B">
                <ref role="3cqZAo" node="54i3FxcZMvF" resolve="id" />
              </node>
            </node>
            <node concept="3y3z36" id="54i3Fxd17cC" role="3K4GZi">
              <node concept="10Nm6u" id="54i3Fxd17cD" role="3uHU7w" />
              <node concept="2OqwBi" id="54i3Fxd17cE" role="3uHU7B">
                <node concept="37vLTw" id="54i3Fxd17cF" role="2Oq$k0">
                  <ref role="3cqZAo" node="54i3Fxd17cb" resolve="that" />
                </node>
                <node concept="2OwXpG" id="5uFPQ7B$xOb" role="2OqNvi">
                  <ref role="2Oxat5" node="54i3FxcZMvF" resolve="id" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="54i3Fxd17cI" role="3cqZAp">
          <node concept="3y3z36" id="54i3Fxd17cJ" role="3clFbw">
            <node concept="2OqwBi" id="5uFPQ7B$xoZ" role="3uHU7w">
              <node concept="37vLTw" id="54i3Fxd17cL" role="2Oq$k0">
                <ref role="3cqZAo" node="54i3Fxd17cb" resolve="that" />
              </node>
              <node concept="2OwXpG" id="5uFPQ7B$ytS" role="2OqNvi">
                <ref role="2Oxat5" node="54i3FxcZMvI" resolve="arity" />
              </node>
            </node>
            <node concept="37vLTw" id="54i3Fxd17cH" role="3uHU7B">
              <ref role="3cqZAo" node="54i3FxcZMvI" resolve="arity" />
            </node>
          </node>
          <node concept="3clFbS" id="54i3Fxd17cM" role="3clFbx">
            <node concept="3cpWs6" id="54i3Fxd17cN" role="3cqZAp">
              <node concept="3clFbT" id="54i3Fxd17cO" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="54i3Fxd17cP" role="3cqZAp" />
        <node concept="3clFbF" id="54i3Fxd17cQ" role="3cqZAp">
          <node concept="3clFbT" id="54i3Fxd17cR" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="54i3Fxd17cg" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="54i3Fxd17ch" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="54i3Fxd17ci" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7B$vaH" role="jymVt" />
    <node concept="312cEg" id="54i3FxcZMvF" role="jymVt">
      <property role="TrG5h" value="id" />
      <node concept="3Tm6S6" id="54i3FxcZMvG" role="1B3o_S" />
      <node concept="17QB3L" id="54i3FxcZMvH" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="54i3FxcZMvI" role="jymVt">
      <property role="TrG5h" value="arity" />
      <node concept="3Tm6S6" id="54i3FxcZMvJ" role="1B3o_S" />
      <node concept="10Oyi0" id="54i3FxcZMvK" role="1tU5fm" />
    </node>
  </node>
  <node concept="312cEu" id="5uFPQ7B$$3f">
    <property role="TrG5h" value="PredicateSymbol" />
    <node concept="2tJIrI" id="5uFPQ7B$$fL" role="jymVt" />
    <node concept="3clFbW" id="5uFPQ7B$$fT" role="jymVt">
      <node concept="3cqZAl" id="5uFPQ7B$$fV" role="3clF45" />
      <node concept="3Tm1VV" id="5uFPQ7B$$fW" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7B$$fX" role="3clF47">
        <node concept="XkiVB" id="5uFPQ7C8Aan" role="3cqZAp">
          <ref role="37wK5l" node="5uFPQ7B$oXn" resolve="Symbol" />
          <node concept="37vLTw" id="5uFPQ7C8AbT" role="37wK5m">
            <ref role="3cqZAo" node="5uFPQ7B$$ga" resolve="id" />
          </node>
          <node concept="37vLTw" id="5uFPQ7C8Ad2" role="37wK5m">
            <ref role="3cqZAo" node="5uFPQ7B$$k9" resolve="arity" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5uFPQ7B$$ga" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="5uFPQ7B$$g9" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5uFPQ7B$$k9" role="3clF46">
        <property role="TrG5h" value="arity" />
        <node concept="10Oyi0" id="5uFPQ7B$$o8" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7BMI$z" role="jymVt" />
    <node concept="3clFb_" id="5uFPQ7B$$w_" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="5uFPQ7B$$wA" role="1B3o_S" />
      <node concept="17QB3L" id="5uFPQ7B$$wB" role="3clF45" />
      <node concept="3clFbS" id="5uFPQ7B$$wC" role="3clF47">
        <node concept="3clFbF" id="5uFPQ7B$$wD" role="3cqZAp">
          <node concept="3cpWs3" id="5uFPQ7B$$XY" role="3clFbG">
            <node concept="1rXfSq" id="5uFPQ7B$$ZY" role="3uHU7w">
              <ref role="37wK5l" node="54i3FxcZMv$" resolve="arity" />
            </node>
            <node concept="3cpWs3" id="5uFPQ7B$$Pw" role="3uHU7B">
              <node concept="1rXfSq" id="5uFPQ7B$$wE" role="3uHU7B">
                <ref role="37wK5l" node="54i3FxcZMvt" resolve="id" />
              </node>
              <node concept="Xl_RD" id="5uFPQ7B$$QF" role="3uHU7w">
                <property role="Xl_RC" value="()/" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5uFPQ7B$$wF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7B$$w9" role="jymVt" />
    <node concept="3Tm1VV" id="5uFPQ7B$$3g" role="1B3o_S" />
    <node concept="3uibUv" id="5uFPQ7Cb2zZ" role="1zkMxy">
      <ref role="3uigEE" node="5uFPQ7B$mzX" resolve="Symbol" />
    </node>
  </node>
  <node concept="3HP615" id="5uFPQ7B$Pn9">
    <property role="TrG5h" value="AndItem" />
    <node concept="2tJIrI" id="5uFPQ7B$Pnr" role="jymVt" />
    <node concept="3clFb_" id="5uFPQ7BE$9i" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="symbol" />
      <node concept="3uibUv" id="5uFPQ7BE$a5" role="3clF45">
        <ref role="3uigEE" node="5uFPQ7B$mzX" resolve="Symbol" />
      </node>
      <node concept="3Tm1VV" id="5uFPQ7BE$9l" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7BE$9m" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5uFPQ7BE$8W" role="jymVt" />
    <node concept="3clFb_" id="5uFPQ7B_b06" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="arguments" />
      <node concept="3uibUv" id="5uFPQ7B_b23" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3qTvmN" id="7HUwyZaBH9P" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="5uFPQ7B_b09" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7B_b0a" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5uFPQ7B$Pnw" role="jymVt" />
    <node concept="3Tm1VV" id="5uFPQ7B$Pna" role="1B3o_S" />
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
          <ref role="37wK5l" node="5uFPQ7B$$fT" resolve="PredicateSymbol" />
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
      <ref role="3uigEE" node="5uFPQ7B$$3f" resolve="PredicateSymbol" />
    </node>
  </node>
  <node concept="3HP615" id="5uFPQ7BZac$">
    <property role="TrG5h" value="ConstraintOccurrence" />
    <node concept="2tJIrI" id="5uFPQ7BZacM" role="jymVt" />
    <node concept="3clFb_" id="5uFPQ7BZacZ" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="constraint" />
      <node concept="3uibUv" id="5uFPQ7BZadj" role="3clF45">
        <ref role="3uigEE" node="6Kcfpq7BfEn" resolve="Constraint" />
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
  <node concept="312cEu" id="5uFPQ7BZsAX">
    <property role="TrG5h" value="AbstractConstraint" />
    <node concept="2tJIrI" id="5uFPQ7BZsC9" role="jymVt" />
    <node concept="3clFbW" id="5uFPQ7BZtsU" role="jymVt">
      <node concept="37vLTG" id="5uFPQ7BZtxe" role="3clF46">
        <property role="TrG5h" value="constraintSymbol" />
        <node concept="3uibUv" id="5uFPQ7BZtBR" role="1tU5fm">
          <ref role="3uigEE" node="54i3FxcZHHF" resolve="ConstraintSymbol" />
        </node>
      </node>
      <node concept="37vLTG" id="5uFPQ7BZtIF" role="3clF46">
        <property role="TrG5h" value="arguments" />
        <node concept="8X2XB" id="5uFPQ7BZzvm" role="1tU5fm">
          <node concept="3uibUv" id="5uFPQ7BZzov" role="8Xvag">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5uFPQ7BZtsW" role="3clF45" />
      <node concept="3Tm1VV" id="5uFPQ7BZtsX" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7BZtsY" role="3clF47">
        <node concept="3clFbF" id="5uFPQ7BZu64" role="3cqZAp">
          <node concept="37vLTI" id="5uFPQ7BZu66" role="3clFbG">
            <node concept="2OqwBi" id="5uFPQ7BZu6a" role="37vLTJ">
              <node concept="Xjq3P" id="5uFPQ7BZu6d" role="2Oq$k0" />
              <node concept="2OwXpG" id="5uFPQ7BZu69" role="2OqNvi">
                <ref role="2Oxat5" node="5uFPQ7BZu60" resolve="symbol" />
              </node>
            </node>
            <node concept="37vLTw" id="5uFPQ7BZu6e" role="37vLTx">
              <ref role="3cqZAo" node="5uFPQ7BZtxe" resolve="constraintSymbol" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5uFPQ7BZuek" role="3cqZAp">
          <node concept="37vLTI" id="5uFPQ7BZuem" role="3clFbG">
            <node concept="2OqwBi" id="5uFPQ7BZueq" role="37vLTJ">
              <node concept="Xjq3P" id="5uFPQ7BZuet" role="2Oq$k0" />
              <node concept="2OwXpG" id="5uFPQ7BZuep" role="2OqNvi">
                <ref role="2Oxat5" node="5uFPQ7BZuef" resolve="arguments" />
              </node>
            </node>
            <node concept="37vLTw" id="5uFPQ7BZueu" role="37vLTx">
              <ref role="3cqZAo" node="5uFPQ7BZtIF" resolve="arguments" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7BZto4" role="jymVt" />
    <node concept="3clFb_" id="5uFPQ7BZsCD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <node concept="3uibUv" id="5uFPQ7BZsCE" role="3clF45">
        <ref role="3uigEE" node="54i3FxcZHHF" resolve="ConstraintSymbol" />
      </node>
      <node concept="3Tm1VV" id="5uFPQ7BZsCF" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7BZsCH" role="3clF47">
        <node concept="3clFbF" id="5uFPQ7BZvwz" role="3cqZAp">
          <node concept="37vLTw" id="5uFPQ7BZvwy" role="3clFbG">
            <ref role="3cqZAo" node="5uFPQ7BZu60" resolve="symbol" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7BZvzp" role="jymVt" />
    <node concept="3clFb_" id="5uFPQ7BZsCK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="arguments" />
      <node concept="3Tm1VV" id="5uFPQ7BZsCO" role="1B3o_S" />
      <node concept="3clFbS" id="5uFPQ7BZsCS" role="3clF47">
        <node concept="3clFbF" id="5uFPQ7BZvJl" role="3cqZAp">
          <node concept="2YIFZM" id="5uFPQ7BZvJm" role="3clFbG">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
            <node concept="2YIFZM" id="5uFPQ7BZvJn" role="37wK5m">
              <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
              <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
              <node concept="37vLTw" id="5uFPQ7BZvJo" role="37wK5m">
                <ref role="3cqZAo" node="5uFPQ7BZuef" resolve="arguments" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7HUwyZaBHhW" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3qTvmN" id="7HUwyZaBHwS" role="11_B2D" />
      </node>
    </node>
    <node concept="2tJIrI" id="78CwJJcOxO4" role="jymVt" />
    <node concept="3clFb_" id="78CwJJcOxDH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="argumentTypes" />
      <node concept="3uibUv" id="78CwJJcOxDI" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="78CwJJcOxDJ" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="78CwJJcOxDK" role="11_B2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="78CwJJcOxDL" role="1B3o_S" />
      <node concept="3clFbS" id="78CwJJcOxDN" role="3clF47">
        <node concept="3cpWs8" id="78CwJJcO$LY" role="3cqZAp">
          <node concept="3cpWsn" id="78CwJJcO$LZ" role="3cpWs9">
            <property role="TrG5h" value="types" />
            <node concept="3uibUv" id="78CwJJcO$LM" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="78CwJJcO$LS" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                <node concept="3qTvmN" id="78CwJJcO$LT" role="11_B2D" />
              </node>
            </node>
            <node concept="2ShNRf" id="78CwJJcO$M0" role="33vP2m">
              <node concept="1pGfFk" id="78CwJJcO$M1" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
                <node concept="2OqwBi" id="78CwJJcO$M2" role="37wK5m">
                  <node concept="37vLTw" id="78CwJJcO$M3" role="2Oq$k0">
                    <ref role="3cqZAo" node="5uFPQ7BZuef" resolve="arguments" />
                  </node>
                  <node concept="1Rwk04" id="78CwJJcO$M4" role="2OqNvi" />
                </node>
                <node concept="3uibUv" id="78CwJJcO$M5" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                  <node concept="3qTvmN" id="78CwJJcO$M6" role="11_B2D" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="78CwJJcO_52" role="3cqZAp">
          <node concept="3clFbS" id="78CwJJcO_54" role="2LFqv$">
            <node concept="3clFbJ" id="7HUwyZbi3jO" role="3cqZAp">
              <node concept="3clFbS" id="7HUwyZbi3jQ" role="3clFbx">
                <node concept="3clFbF" id="7HUwyZbi3VL" role="3cqZAp">
                  <node concept="2OqwBi" id="7HUwyZbi418" role="3clFbG">
                    <node concept="37vLTw" id="7HUwyZbi3VJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="78CwJJcO$LZ" resolve="types" />
                    </node>
                    <node concept="liA8E" id="7HUwyZbi4hh" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                      <node concept="2OqwBi" id="7HUwyZbi4Af" role="37wK5m">
                        <node concept="1eOMI4" id="7HUwyZbi4o9" role="2Oq$k0">
                          <node concept="10QFUN" id="7HUwyZbi4o6" role="1eOMHV">
                            <node concept="37vLTw" id="7HUwyZbi4yM" role="10QFUP">
                              <ref role="3cqZAo" node="78CwJJcO_55" resolve="arg" />
                            </node>
                            <node concept="3uibUv" id="7HUwyZbi4uN" role="10QFUM">
                              <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="LogicalPattern" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7HUwyZbi4HE" role="2OqNvi">
                          <ref role="37wK5l" to="45ys:7HUwyZaC3Q7" resolve="type" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="7HUwyZbi3ty" role="3clFbw">
                <node concept="3uibUv" id="7HUwyZbi3vq" role="2ZW6by">
                  <ref role="3uigEE" to="45ys:7HUwyZauJhz" resolve="LogicalPattern" />
                </node>
                <node concept="37vLTw" id="7HUwyZbi3rn" role="2ZW6bz">
                  <ref role="3cqZAo" node="78CwJJcO_55" resolve="arg" />
                </node>
              </node>
              <node concept="9aQIb" id="7HUwyZbi4Sk" role="9aQIa">
                <node concept="3clFbS" id="7HUwyZbi4Sl" role="9aQI4">
                  <node concept="3clFbF" id="78CwJJcO_ku" role="3cqZAp">
                    <node concept="2OqwBi" id="78CwJJcO_ok" role="3clFbG">
                      <node concept="37vLTw" id="78CwJJcO_ks" role="2Oq$k0">
                        <ref role="3cqZAo" node="78CwJJcO$LZ" resolve="types" />
                      </node>
                      <node concept="liA8E" id="78CwJJcO_AW" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object):boolean" resolve="add" />
                        <node concept="2OqwBi" id="78CwJJcO_HO" role="37wK5m">
                          <node concept="37vLTw" id="78CwJJcO_G3" role="2Oq$k0">
                            <ref role="3cqZAo" node="78CwJJcO_55" resolve="arg" />
                          </node>
                          <node concept="liA8E" id="78CwJJcO_ND" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="78CwJJcO_55" role="1Duv9x">
            <property role="TrG5h" value="arg" />
            <node concept="3uibUv" id="78CwJJcO_9N" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
          <node concept="37vLTw" id="78CwJJcO_hl" role="1DdaDG">
            <ref role="3cqZAo" node="5uFPQ7BZuef" resolve="arguments" />
          </node>
        </node>
        <node concept="3clFbF" id="78CwJJcOAQH" role="3cqZAp">
          <node concept="37vLTw" id="78CwJJcOAQF" role="3clFbG">
            <ref role="3cqZAo" node="78CwJJcO$LZ" resolve="types" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7IvepusY5Hm" role="jymVt" />
    <node concept="3clFb_" id="7IvepusY6iw" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="occurrence" />
      <node concept="37vLTG" id="7IvepusY6ix" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="7IvepusY6iy" role="1tU5fm">
          <ref role="3uigEE" to="45ys:7IvepusY4Ez" resolve="LogicalContext" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7IvepusY6i$" role="1B3o_S" />
      <node concept="3uibUv" id="7IvepusY6i_" role="3clF45">
        <ref role="3uigEE" node="5uFPQ7BZac$" resolve="ConstraintOccurrence" />
      </node>
      <node concept="3clFbS" id="7IvepusY6iA" role="3clF47">
        <node concept="3SKdUt" id="49L2l3F7HGG" role="3cqZAp">
          <node concept="3SKdUq" id="49L2l3F7HGI" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: implement me" />
          </node>
        </node>
        <node concept="YS8fn" id="49L2l3F7Gx7" role="3cqZAp">
          <node concept="2ShNRf" id="49L2l3F7GxA" role="YScLw">
            <node concept="1pGfFk" id="49L2l3F7HEo" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="49L2l3F7HEV" role="37wK5m">
                <property role="Xl_RC" value="not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uFPQ7BZvRq" role="jymVt" />
    <node concept="3Tm1VV" id="5uFPQ7BZsAY" role="1B3o_S" />
    <node concept="3uibUv" id="5uFPQ7BZsBQ" role="EKbjA">
      <ref role="3uigEE" node="6Kcfpq7BfEn" resolve="Constraint" />
    </node>
    <node concept="312cEg" id="5uFPQ7BZu60" role="jymVt">
      <property role="TrG5h" value="symbol" />
      <node concept="3Tm6S6" id="5uFPQ7BZu61" role="1B3o_S" />
      <node concept="3uibUv" id="5uFPQ7BZu63" role="1tU5fm">
        <ref role="3uigEE" node="54i3FxcZHHF" resolve="ConstraintSymbol" />
      </node>
    </node>
    <node concept="312cEg" id="5uFPQ7BZuef" role="jymVt">
      <property role="TrG5h" value="arguments" />
      <node concept="3Tm6S6" id="5uFPQ7BZueg" role="1B3o_S" />
      <node concept="10Q1$e" id="5uFPQ7BZzdN" role="1tU5fm">
        <node concept="3uibUv" id="5uFPQ7BZzdK" role="10Q1$1">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
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
      <node concept="37vLTG" id="6X5F0Ngy7rA" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="6X5F0Ngy7t$" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
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
          <ref role="37wK5l" node="6Kcfpq7B1f7" resolve="AbstractPredicate" />
          <node concept="37vLTw" id="5uFPQ7Cj7IA" role="37wK5m">
            <ref role="3cqZAo" node="5uFPQ7Cj7nY" resolve="args" />
          </node>
        </node>
        <node concept="3clFbF" id="6X5F0Ngy7tW" role="3cqZAp">
          <node concept="37vLTI" id="6X5F0Ngy7tY" role="3clFbG">
            <node concept="2OqwBi" id="6X5F0Ngy7u2" role="37vLTJ">
              <node concept="Xjq3P" id="6X5F0Ngy7u5" role="2Oq$k0" />
              <node concept="2OwXpG" id="6X5F0Ngy7u1" role="2OqNvi">
                <ref role="2Oxat5" node="6X5F0Ngy7tS" resolve="id" />
              </node>
            </node>
            <node concept="37vLTw" id="6X5F0Ngy7u6" role="37vLTx">
              <ref role="3cqZAo" node="6X5F0Ngy7rA" resolve="id" />
            </node>
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
        <node concept="3clFbF" id="6X5F0Ngy7L2" role="3cqZAp">
          <node concept="37vLTw" id="6X5F0Ngy7L1" role="3clFbG">
            <ref role="3cqZAo" node="6X5F0Ngy7tS" resolve="id" />
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
        <ref role="3uigEE" node="5uFPQ7B$$3f" resolve="PredicateSymbol" />
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
      <ref role="3uigEE" node="6Kcfpq7B0Wu" resolve="AbstractPredicate" />
    </node>
    <node concept="2tJIrI" id="49L2l3FhuMa" role="jymVt" />
    <node concept="3clFb_" id="49L2l3Fhu7i" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="invocation" />
      <node concept="3Tm1VV" id="49L2l3Fhu7k" role="1B3o_S" />
      <node concept="3uibUv" id="49L2l3Fhu7l" role="3clF45">
        <ref role="3uigEE" node="49L2l3FhtS6" resolve="PredicateInvocation" />
      </node>
      <node concept="37vLTG" id="49L2l3Fhu7m" role="3clF46">
        <property role="TrG5h" value="logicalContext" />
        <node concept="3uibUv" id="49L2l3Fhu7n" role="1tU5fm">
          <ref role="3uigEE" to="45ys:7IvepusY4Ez" resolve="LogicalContext" />
        </node>
      </node>
      <node concept="3clFbS" id="49L2l3Fhu7p" role="3clF47">
        <node concept="3SKdUt" id="49L2l3Fhu$_" role="3cqZAp">
          <node concept="3SKdUq" id="49L2l3Fhu$B" role="3SKWNk">
            <property role="3SKdUp" value="FIXME: implement me" />
          </node>
        </node>
        <node concept="YS8fn" id="49L2l3FhudW" role="3cqZAp">
          <node concept="2ShNRf" id="49L2l3FhueP" role="YScLw">
            <node concept="1pGfFk" id="49L2l3Fhuwo" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="49L2l3Fhuxr" role="37wK5m">
                <property role="Xl_RC" value="not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="49L2l3Fhu_e" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="49L2l3FhuPo" role="jymVt" />
    <node concept="312cEg" id="6X5F0Ngy7tS" role="jymVt">
      <property role="TrG5h" value="id" />
      <node concept="3Tm6S6" id="6X5F0Ngy7tT" role="1B3o_S" />
      <node concept="3uibUv" id="6X5F0Ngy7tV" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
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
        <ref role="3uigEE" node="6Kcfpq7Bj7q" resolve="Predicate" />
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

