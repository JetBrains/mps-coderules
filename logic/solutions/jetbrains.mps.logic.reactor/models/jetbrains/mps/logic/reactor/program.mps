<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f43ee4a0-488a-425a-87a0-594ab3b0d15f(jetbrains.mps.logic.reactor.program)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="-1" />
  </languages>
  <imports>
    <import index="qrld" ref="r:2a79c8aa-e372-4c00-8d71-5d7f3db517e4(jetbrains.mps.logic.reactor.evaluation)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="45ys" ref="r:7365f7fe-12e6-4229-8901-f6dc6d5df03f(jetbrains.mps.logic.reactor.logical)" />
    <import index="3o3z" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:com.google.common.collect(MPS.Core/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
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
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
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
    <property role="TrG5h" value="Program" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="5uFPQ7BvN_2" role="jymVt" />
    <node concept="3clFb_" id="78CwJJcTOB4" role="jymVt">
      <property role="TrG5h" value="name" />
      <property role="1EzhhJ" value="true" />
      <node concept="17QB3L" id="78CwJJcTPfl" role="3clF45" />
      <node concept="3Tm1VV" id="78CwJJcTOB7" role="1B3o_S" />
      <node concept="3clFbS" id="78CwJJcTOB8" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="78CwJJcTNZo" role="jymVt" />
    <node concept="3clFb_" id="6MYr6JxCg84" role="jymVt">
      <property role="TrG5h" value="sessionSolver" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="6MYr6JxCgaO" role="3clF45">
        <ref role="3uigEE" to="qrld:6Kcfpq7B0b0" resolve="SessionSolver" />
      </node>
      <node concept="3Tm1VV" id="6MYr6JxCg87" role="1B3o_S" />
      <node concept="3clFbS" id="6MYr6JxCg88" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6X5F0Ngiptw" role="jymVt" />
    <node concept="3clFb_" id="78CwJJcOw2K" role="jymVt">
      <property role="TrG5h" value="constraintSymbols" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="78CwJJcOw3v" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="78CwJJcOw3H" role="11_B2D">
          <ref role="3uigEE" node="54i3FxcZHHF" resolve="ConstraintSymbol" />
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
          <ref role="3uigEE" node="54i3FxcZHHF" resolve="ConstraintSymbol" />
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
          <ref role="3uigEE" node="5uFPQ7B$$3f" resolve="PredicateSymbol" />
        </node>
      </node>
      <node concept="3Tm1VV" id="78CwJJcOKJz" role="1B3o_S" />
      <node concept="3clFbS" id="78CwJJcOKJ$" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5uFPQ7BvNSh" role="jymVt" />
    <node concept="3clFb_" id="78CwJJcTsEO" role="jymVt">
      <property role="TrG5h" value="rules" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="78CwJJcTtiP" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="78CwJJcTtiV" role="11_B2D">
          <ref role="3uigEE" node="7eGEHDlc$9y" resolve="Rule" />
        </node>
      </node>
      <node concept="3Tm1VV" id="78CwJJcTsER" role="1B3o_S" />
      <node concept="3clFbS" id="78CwJJcTsES" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="78CwJJcXHyD" role="jymVt" />
    <node concept="2tJIrI" id="2tcGHBDZ69W" role="jymVt" />
    <node concept="3Tm1VV" id="5uFPQ7BvNzF" role="1B3o_S" />
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
    <node concept="2tJIrI" id="6Kcfpq7Bjku" role="jymVt" />
    <node concept="3clFb_" id="4TCblo5TXaZ" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="invocationArguments" />
      <node concept="37vLTG" id="4TCblo5TXb0" role="3clF46">
        <property role="TrG5h" value="logicalContext" />
        <node concept="3uibUv" id="4TCblo5TXb1" role="1tU5fm">
          <ref role="3uigEE" to="45ys:7IvepusY4Ez" resolve="LogicalContext" />
        </node>
      </node>
      <node concept="3clFbS" id="4TCblo5TXb2" role="3clF47" />
      <node concept="3Tm1VV" id="4TCblo5TXb3" role="1B3o_S" />
      <node concept="3uibUv" id="4TCblo5TXb4" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3qTvmN" id="4TCblo5TXb5" role="11_B2D" />
      </node>
    </node>
    <node concept="2tJIrI" id="4TCblo5TW7x" role="jymVt" />
    <node concept="2tJIrI" id="4TCblo5TXdG" role="jymVt" />
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
    <node concept="3clFb_" id="4TCblo5M5qP" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="occurrenceArguments" />
      <node concept="37vLTG" id="4TCblo5Nrp7" role="3clF46">
        <property role="TrG5h" value="logicalContext" />
        <node concept="3uibUv" id="4TCblo5Nrr2" role="1tU5fm">
          <ref role="3uigEE" to="45ys:7IvepusY4Ez" resolve="LogicalContext" />
        </node>
      </node>
      <node concept="3clFbS" id="4TCblo5M5qS" role="3clF47" />
      <node concept="3Tm1VV" id="4TCblo5M5qT" role="1B3o_S" />
      <node concept="3uibUv" id="4TCblo5M5pS" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3qTvmN" id="4TCblo5M5qH" role="11_B2D" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7Oc59RSHJnv">
    <property role="TrG5h" value="InvalidConstraintException" />
    <node concept="2tJIrI" id="7Oc59RSHJEo" role="jymVt" />
    <node concept="3clFbW" id="7Oc59RSHJEw" role="jymVt">
      <node concept="3cqZAl" id="7Oc59RSHJEy" role="3clF45" />
      <node concept="3Tm1VV" id="7Oc59RSHJEz" role="1B3o_S" />
      <node concept="3clFbS" id="7Oc59RSHJE$" role="3clF47">
        <node concept="XkiVB" id="7Oc59RSHJFi" role="3cqZAp">
          <ref role="37wK5l" to="wyt6:~Exception.&lt;init&gt;(java.lang.String)" resolve="Exception" />
          <node concept="37vLTw" id="7Oc59RSHJFF" role="37wK5m">
            <ref role="3cqZAo" node="7Oc59RSHJEI" resolve="message" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7Oc59RSHJEI" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="7Oc59RSHJEH" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSHJQ8" role="jymVt" />
    <node concept="3clFbW" id="7Oc59RSHJLP" role="jymVt">
      <node concept="3cqZAl" id="7Oc59RSHJLQ" role="3clF45" />
      <node concept="3Tm1VV" id="7Oc59RSHJLR" role="1B3o_S" />
      <node concept="3clFbS" id="7Oc59RSHJLS" role="3clF47">
        <node concept="XkiVB" id="7Oc59RSHJLT" role="3cqZAp">
          <ref role="37wK5l" to="wyt6:~Exception.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="Exception" />
          <node concept="37vLTw" id="7Oc59RSHJLU" role="37wK5m">
            <ref role="3cqZAo" node="7Oc59RSHJLV" resolve="message" />
          </node>
          <node concept="37vLTw" id="7Oc59RSHJTY" role="37wK5m">
            <ref role="3cqZAo" node="7Oc59RSHJRg" resolve="ex" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7Oc59RSHJLV" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="7Oc59RSHJLW" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Oc59RSHJRg" role="3clF46">
        <property role="TrG5h" value="ex" />
        <node concept="3uibUv" id="7Oc59RSHJRN" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RSHJS0" role="jymVt" />
    <node concept="3Tm1VV" id="7Oc59RSHJnw" role="1B3o_S" />
    <node concept="3uibUv" id="7Oc59RSHJnS" role="1zkMxy">
      <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
    </node>
  </node>
  <node concept="312cEu" id="7eGEHDlc$9y">
    <property role="TrG5h" value="Rule" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="7eGEHDlc$9z" role="jymVt" />
    <node concept="3clFb_" id="7eGEHDlc$9$" role="jymVt">
      <property role="TrG5h" value="kind" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="7eGEHDlc$9_" role="3clF45">
        <ref role="3uigEE" node="7eGEHDlc$a2" resolve="Rule.Kind" />
      </node>
      <node concept="3Tm1VV" id="7eGEHDlc$9A" role="1B3o_S" />
      <node concept="3clFbS" id="7eGEHDlc$9B" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6lpwCiZj$A4" role="jymVt" />
    <node concept="3clFb_" id="6lpwCiZj$RR" role="jymVt">
      <property role="TrG5h" value="tag" />
      <property role="1EzhhJ" value="true" />
      <node concept="17QB3L" id="6lpwCiZj$UX" role="3clF45" />
      <node concept="3Tm1VV" id="6lpwCiZj$RU" role="1B3o_S" />
      <node concept="3clFbS" id="6lpwCiZj$RV" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6lpwCiZj$Ij" role="jymVt" />
    <node concept="3clFb_" id="7eGEHDlc$9D" role="jymVt">
      <property role="TrG5h" value="headKept" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="7eGEHDlc$9E" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="5uFPQ7BHcst" role="11_B2D">
          <ref role="3uigEE" node="6Kcfpq7BfEn" resolve="Constraint" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7eGEHDlc$9G" role="1B3o_S" />
      <node concept="3clFbS" id="7eGEHDlc$9H" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7eGEHDlc$9I" role="jymVt" />
    <node concept="3clFb_" id="7eGEHDlc$9J" role="jymVt">
      <property role="TrG5h" value="headReplaced" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="7eGEHDlc$9K" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="5uFPQ7BHcu4" role="11_B2D">
          <ref role="3uigEE" node="6Kcfpq7BfEn" resolve="Constraint" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7eGEHDlc$9M" role="1B3o_S" />
      <node concept="3clFbS" id="7eGEHDlc$9N" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7eGEHDlc$9O" role="jymVt" />
    <node concept="3clFb_" id="7eGEHDlc$9P" role="jymVt">
      <property role="TrG5h" value="guard" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="7eGEHDlc$9Q" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="5uFPQ7BHbI_" role="11_B2D">
          <ref role="3uigEE" node="6Kcfpq7Bj7q" resolve="Predicate" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7eGEHDlc$9S" role="1B3o_S" />
      <node concept="3clFbS" id="7eGEHDlc$9T" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7eGEHDlc$9U" role="jymVt" />
    <node concept="3clFb_" id="7eGEHDlc$9V" role="jymVt">
      <property role="TrG5h" value="body" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="7eGEHDlc$9W" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="5uFPQ7BHbcx" role="11_B2D">
          <ref role="3uigEE" node="5uFPQ7B$Pn9" resolve="AndItem" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7eGEHDlc$9Y" role="1B3o_S" />
      <node concept="3clFbS" id="7eGEHDlc$9Z" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7eGEHDldrJd" role="jymVt" />
    <node concept="3clFb_" id="7eGEHDldrDm" role="jymVt">
      <property role="TrG5h" value="all" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="7eGEHDldrDn" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="5uFPQ7BHaCF" role="11_B2D">
          <ref role="3uigEE" node="5uFPQ7B$Pn9" resolve="AndItem" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7eGEHDldrDp" role="1B3o_S" />
      <node concept="3clFbS" id="7eGEHDldrDq" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7eGEHDldrKO" role="jymVt" />
    <node concept="Qs71p" id="7eGEHDlc$a2" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Kind" />
      <node concept="QsSxf" id="7eGEHDlc$a3" role="Qtgdg">
        <property role="TrG5h" value="SIMPLIFICATION" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="7eGEHDlc$a4" role="Qtgdg">
        <property role="TrG5h" value="PROPAGATION" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="7eGEHDlc$a5" role="Qtgdg">
        <property role="TrG5h" value="SIMPAGATION" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="7eGEHDlc$a6" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7eGEHDlcUpl" role="jymVt" />
    <node concept="3Tm1VV" id="7eGEHDlc$a7" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7Oc59RS$wKP">
    <property role="TrG5h" value="InvalidRuleException" />
    <node concept="2tJIrI" id="7Oc59RS$y8_" role="jymVt" />
    <node concept="3clFbW" id="7Oc59RS$xFc" role="jymVt">
      <node concept="37vLTG" id="7Oc59RS$xFs" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="7Oc59RS$xF_" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7Oc59RS$xFe" role="3clF45" />
      <node concept="3Tm1VV" id="7Oc59RS$xFf" role="1B3o_S" />
      <node concept="3clFbS" id="7Oc59RS$xFg" role="3clF47">
        <node concept="XkiVB" id="7Oc59RS$xG2" role="3cqZAp">
          <ref role="37wK5l" to="wyt6:~Exception.&lt;init&gt;(java.lang.String)" resolve="Exception" />
          <node concept="37vLTw" id="7Oc59RS$xGT" role="37wK5m">
            <ref role="3cqZAo" node="7Oc59RS$xFs" resolve="message" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RS$yMj" role="jymVt" />
    <node concept="3clFbW" id="7Oc59RS$yHZ" role="jymVt">
      <node concept="37vLTG" id="7Oc59RS$yI0" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="7Oc59RS$yI1" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Oc59RS$yNs" role="3clF46">
        <property role="TrG5h" value="throwable" />
        <node concept="3uibUv" id="7Oc59RS$yO0" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
        </node>
      </node>
      <node concept="3cqZAl" id="7Oc59RS$yI2" role="3clF45" />
      <node concept="3Tm1VV" id="7Oc59RS$yI3" role="1B3o_S" />
      <node concept="3clFbS" id="7Oc59RS$yI4" role="3clF47">
        <node concept="XkiVB" id="7Oc59RS$yI5" role="3cqZAp">
          <ref role="37wK5l" to="wyt6:~Exception.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="Exception" />
          <node concept="37vLTw" id="7Oc59RS$yI6" role="37wK5m">
            <ref role="3cqZAo" node="7Oc59RS$yI0" resolve="message" />
          </node>
          <node concept="37vLTw" id="7Oc59RS$yPj" role="37wK5m">
            <ref role="3cqZAo" node="7Oc59RS$yNs" resolve="throwable" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Oc59RS$xOV" role="jymVt" />
    <node concept="3Tm1VV" id="7Oc59RS$wKQ" role="1B3o_S" />
    <node concept="3uibUv" id="7Oc59RS$x3f" role="1zkMxy">
      <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
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
</model>

