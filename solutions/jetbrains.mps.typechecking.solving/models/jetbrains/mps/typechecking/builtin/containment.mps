<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f694851a-c984-440d-bb3c-f151b8dba5af(jetbrains.mps.typechecking.builtin.containment)">
  <persistence version="9" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ie8e" ref="r:ab2605ab-b4bc-4e80-a8ca-19a4a8465c01(jetbrains.mps.unification.tree)" />
    <import index="9sk9" ref="f:java_stub#b984ee52-f34d-4b6d-8812-866c1d3eae31#annotations(jetbrains.mps.jchr.runtime/annotations@java_stub)" />
    <import index="oy3s" ref="r:a6030cee-34eb-4503-b1bf-015fe5cd8c1a(jetbrains.mps.logic.builtin.unification)" />
    <import index="yg8f" ref="r:e213377a-f1a7-4ba7-9d08-96bcb97ed8ce(jetbrains.mps.logic.builtin)" />
    <import index="w2rx" ref="f:java_stub#b984ee52-f34d-4b6d-8812-866c1d3eae31#runtime(jetbrains.mps.jchr.runtime/runtime@java_stub)" />
    <import index="c87j" ref="r:db5d11a3-3c62-4a1b-ace3-b983df6a66b4(jetbrains.mps.type.inference.common)" />
    <import index="mqgp" ref="r:df98e090-e1cf-4263-9336-dc1ffd952995(jetbrains.mps.typechecking.builtin.conversion)" />
    <import index="7uia" ref="f:java_stub#a5478664-6b44-4c62-a9f7-434f8aa57eee#runtime(runtime@java_stub)" />
    <import index="jfki" ref="7526e0cf-1ce7-46f8-a555-9eca1e06c23b/f:java_stub#7526e0cf-1ce7-46f8-a555-9eca1e06c23b#jetbrains.mps.unification(jetbrains.mps.unification.tree/jetbrains.mps.unification@java_stub)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" implicit="true" />
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
        <child id="1188214630783" name="value" index="2B76xF" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1188214545140" name="jetbrains.mps.baseLanguage.structure.AnnotationInstanceValue" flags="ng" index="2B6LJw">
        <reference id="1188214555875" name="key" index="2B6OnR" />
        <child id="1188214607812" name="value" index="2B70Vg" />
      </concept>
      <concept id="1188220165133" name="jetbrains.mps.baseLanguage.structure.ArrayLiteral" flags="nn" index="2BsdOp">
        <child id="1188220173759" name="item" index="2BsfMF" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
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
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1178893518978" name="jetbrains.mps.baseLanguage.structure.ThisConstructorInvocation" flags="nn" index="1VxSAg" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3HP615" id="2GO7tyJLmlw">
    <property role="TrG5h" value="ContainmentSolver" />
    <node concept="2tJIrI" id="4QDWzOMCO8K" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJLmlx" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellContains" />
      <node concept="37vLTG" id="2GO7tyJLmly" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2GO7tyJLmlz" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJLml$" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2GO7tyJLml_" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="3cqZAl" id="2GO7tyJLmlA" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJLmlB" role="1B3o_S" />
      <node concept="3clFbS" id="2GO7tyJLmlC" role="3clF47" />
      <node concept="2AHcQZ" id="2GO7tyJLmlD" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="2GO7tyJLmlE" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="2GO7tyJMZWh" role="2B70Vg">
            <ref role="1PxDUh" node="2GO7tyJMZEq" resolve="ContainmentBuiltinConstraint" />
            <ref role="3cqZAo" node="2GO7tyJMZW7" resolve="CONTAINS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJLmlG" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJLmlH" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellContains" />
      <node concept="37vLTG" id="2GO7tyJLmlI" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2GO7tyJLmlJ" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJLmlK" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2GO7tyJLmlL" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="3cqZAl" id="2GO7tyJLmlM" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJLmlN" role="1B3o_S" />
      <node concept="3clFbS" id="2GO7tyJLmlO" role="3clF47" />
      <node concept="2AHcQZ" id="2GO7tyJLmlP" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="2GO7tyJLmlQ" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="2GO7tyJMZWc" role="2B70Vg">
            <ref role="1PxDUh" node="2GO7tyJMZEq" resolve="ContainmentBuiltinConstraint" />
            <ref role="3cqZAo" node="2GO7tyJMZW7" resolve="CONTAINS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJLmlS" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJLmlT" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellContains" />
      <node concept="37vLTG" id="2GO7tyJLmlU" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2GO7tyJLmlV" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJLmlW" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2GO7tyJLmlX" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="3cqZAl" id="2GO7tyJLmlY" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJLmlZ" role="1B3o_S" />
      <node concept="3clFbS" id="2GO7tyJLmm0" role="3clF47" />
      <node concept="2AHcQZ" id="2GO7tyJLmm1" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="2GO7tyJLmm2" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="2GO7tyJMZWf" role="2B70Vg">
            <ref role="1PxDUh" node="2GO7tyJMZEq" resolve="ContainmentBuiltinConstraint" />
            <ref role="3cqZAo" node="2GO7tyJMZW7" resolve="CONTAINS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJLmm4" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJLmm5" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="tellContains" />
      <node concept="37vLTG" id="2GO7tyJLmm6" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2GO7tyJLmm7" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJLmm8" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2GO7tyJLmm9" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="3cqZAl" id="2GO7tyJLmma" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJLmmb" role="1B3o_S" />
      <node concept="3clFbS" id="2GO7tyJLmmc" role="3clF47" />
      <node concept="2AHcQZ" id="2GO7tyJLmmd" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="2GO7tyJLmme" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="2GO7tyJMZWj" role="2B70Vg">
            <ref role="1PxDUh" node="2GO7tyJMZEq" resolve="ContainmentBuiltinConstraint" />
            <ref role="3cqZAo" node="2GO7tyJMZW7" resolve="CONTAINS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJLmmg" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJLmmh" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askContains" />
      <node concept="37vLTG" id="2GO7tyJLmmi" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2GO7tyJLmmj" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJLmmk" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2GO7tyJLmml" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="10P_77" id="2GO7tyJLmmm" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJLmmn" role="1B3o_S" />
      <node concept="3clFbS" id="2GO7tyJLmmo" role="3clF47" />
      <node concept="2AHcQZ" id="2GO7tyJLmmp" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="2GO7tyJLmmq" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="2GO7tyJMZWb" role="2B70Vg">
            <ref role="1PxDUh" node="2GO7tyJMZEq" resolve="ContainmentBuiltinConstraint" />
            <ref role="3cqZAo" node="2GO7tyJMZW7" resolve="CONTAINS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJLmms" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJLmmt" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askContains" />
      <node concept="37vLTG" id="2GO7tyJLmmu" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2GO7tyJLmmv" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJLmmw" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2GO7tyJLmmx" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="10P_77" id="2GO7tyJLmmy" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJLmmz" role="1B3o_S" />
      <node concept="3clFbS" id="2GO7tyJLmm$" role="3clF47" />
      <node concept="2AHcQZ" id="2GO7tyJLmm_" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="2GO7tyJLmmA" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="2GO7tyJMZWi" role="2B70Vg">
            <ref role="1PxDUh" node="2GO7tyJMZEq" resolve="ContainmentBuiltinConstraint" />
            <ref role="3cqZAo" node="2GO7tyJMZW7" resolve="CONTAINS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJLmmC" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJLmmD" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askContains" />
      <node concept="37vLTG" id="2GO7tyJLmmE" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2GO7tyJLmmF" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJLmmG" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2GO7tyJLmmH" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="10P_77" id="2GO7tyJLmmI" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJLmmJ" role="1B3o_S" />
      <node concept="3clFbS" id="2GO7tyJLmmK" role="3clF47" />
      <node concept="2AHcQZ" id="2GO7tyJLmmL" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="2GO7tyJLmmM" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="2GO7tyJMZWe" role="2B70Vg">
            <ref role="1PxDUh" node="2GO7tyJMZEq" resolve="ContainmentBuiltinConstraint" />
            <ref role="3cqZAo" node="2GO7tyJMZW7" resolve="CONTAINS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJLmmO" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJLmmP" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="askContains" />
      <node concept="37vLTG" id="2GO7tyJLmmQ" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2GO7tyJLmmR" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJLmmS" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2GO7tyJLmmT" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="10P_77" id="2GO7tyJLmmU" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJLmmV" role="1B3o_S" />
      <node concept="3clFbS" id="2GO7tyJLmmW" role="3clF47" />
      <node concept="2AHcQZ" id="2GO7tyJLmmX" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="2GO7tyJLmmY" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="2GO7tyJMZWd" role="2B70Vg">
            <ref role="1PxDUh" node="2GO7tyJMZEq" resolve="ContainmentBuiltinConstraint" />
            <ref role="3cqZAo" node="2GO7tyJMZW7" resolve="CONTAINS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJLmn0" role="jymVt" />
    <node concept="3Tm1VV" id="2GO7tyJLmn1" role="1B3o_S" />
    <node concept="2AHcQZ" id="2GO7tyJLmn2" role="2AJF6D">
      <ref role="2AI5Lk" to="9sk9:~JCHR_Constraints" resolve="JCHR_Constraints" />
      <node concept="2B6LJw" id="2GO7tyJLmn3" role="2B76xF">
        <ref role="2B6OnR" to="9sk9:~JCHR_Constraints.value()" resolve="value" />
        <node concept="2BsdOp" id="2GO7tyJLmn4" role="2B70Vg">
          <node concept="2AHcQZ" id="2GO7tyJLmn5" role="2BsfMF">
            <ref role="2AI5Lk" to="9sk9:~JCHR_Constraint" resolve="JCHR_Constraint" />
            <node concept="2B6LJw" id="2GO7tyJLmn6" role="2B76xF">
              <ref role="2B6OnR" to="9sk9:~JCHR_Constraint.identifier()" resolve="identifier" />
              <node concept="10M0yZ" id="2GO7tyJMZWg" role="2B70Vg">
                <ref role="1PxDUh" node="2GO7tyJMZEq" resolve="ContainmentBuiltinConstraint" />
                <ref role="3cqZAo" node="2GO7tyJMZW7" resolve="CONTAINS" />
              </node>
            </node>
            <node concept="2B6LJw" id="2GO7tyJLmn8" role="2B76xF">
              <ref role="2B6OnR" to="9sk9:~JCHR_Constraint.arity()" resolve="arity" />
              <node concept="3cmrfG" id="2GO7tyJLmn9" role="2B70Vg">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
            <node concept="2B6LJw" id="2GO7tyJLmna" role="2B76xF">
              <ref role="2B6OnR" to="9sk9:~JCHR_Constraint.idempotent()" resolve="idempotent" />
              <node concept="Rm8GO" id="2GO7tyJLmnb" role="2B70Vg">
                <ref role="Rm8GQ" to="9sk9:~JCHR_Constraint$Value.YES" resolve="YES" />
                <ref role="1Px2BO" to="9sk9:~JCHR_Constraint$Value" resolve="JCHR_Constraint.Value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2GO7tyJMZEq">
    <property role="TrG5h" value="ContainmentBuiltinConstraint" />
    <node concept="3Tm1VV" id="2GO7tyJMZEr" role="1B3o_S" />
    <node concept="3uibUv" id="2GO7tyJMZNf" role="EKbjA">
      <ref role="3uigEE" to="yg8f:2GO7tyJLLNE" resolve="SolverProxy" />
      <node concept="3uibUv" id="2GO7tyJTpET" role="11_B2D">
        <ref role="3uigEE" node="2GO7tyJLmlw" resolve="ContainmentSolver" />
      </node>
      <node concept="3uibUv" id="60B5zVF1Eki" role="11_B2D">
        <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJMZQx" role="jymVt" />
    <node concept="Wx3nA" id="2GO7tyJN0LB" role="jymVt">
      <property role="TrG5h" value="INSTANCE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2GO7tyJN7no" role="1B3o_S" />
      <node concept="3uibUv" id="2GO7tyJN0ZM" role="1tU5fm">
        <ref role="3uigEE" node="2GO7tyJMZEq" resolve="ContainmentBuiltinConstraint" />
      </node>
      <node concept="2ShNRf" id="2GO7tyJN12g" role="33vP2m">
        <node concept="HV5vD" id="2GO7tyJN6Bq" role="2ShVmc">
          <ref role="HV5vE" node="2GO7tyJMZEq" resolve="ContainmentBuiltinConstraint" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJN0G1" role="jymVt" />
    <node concept="Wx3nA" id="2GO7tyJMZW7" role="jymVt">
      <property role="TrG5h" value="CONTAINS" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="2GO7tyJN8fW" role="1B3o_S" />
      <node concept="17QB3L" id="2GO7tyJMZW9" role="1tU5fm" />
      <node concept="Xl_RD" id="2GO7tyJMZWa" role="33vP2m">
        <property role="Xl_RC" value="contains" />
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJN8wc" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJMZOw" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="symbol" />
      <node concept="17QB3L" id="2GO7tyJMZOx" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJMZOy" role="1B3o_S" />
      <node concept="3clFbS" id="2GO7tyJMZO$" role="3clF47">
        <node concept="3clFbF" id="2GO7tyJN0cY" role="3cqZAp">
          <node concept="37vLTw" id="2GO7tyJN0cX" role="3clFbG">
            <ref role="3cqZAo" node="2GO7tyJMZW7" resolve="CONTAINS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJTq_V" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJTU60" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createSolver" />
      <node concept="37vLTG" id="2GO7tyJUndf" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="3uibUv" id="2GO7tyJUnnL" role="1tU5fm">
          <ref role="3uigEE" to="yg8f:2GO7tyJS2HQ" resolve="SolverFarm" />
        </node>
      </node>
      <node concept="3uibUv" id="2GO7tyJTU64" role="3clF45">
        <ref role="3uigEE" node="2GO7tyJLmlw" resolve="ContainmentSolver" />
      </node>
      <node concept="3Tm1VV" id="2GO7tyJTU62" role="1B3o_S" />
      <node concept="3clFbS" id="2GO7tyJTU65" role="3clF47">
        <node concept="3clFbF" id="2GO7tyJZ_dj" role="3cqZAp">
          <node concept="2ShNRf" id="2GO7tyJZ_dh" role="3clFbG">
            <node concept="1pGfFk" id="2GO7tyJZ_oC" role="2ShVmc">
              <ref role="37wK5l" node="2GO7tyJWdjK" resolve="ContainmentSolverImpl" />
              <node concept="37vLTw" id="2GO7tyK1IPN" role="37wK5m">
                <ref role="3cqZAo" node="2GO7tyJUndf" resolve="scope" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2pvEdquweV8" role="jymVt" />
    <node concept="3clFb_" id="2pvEdquwfyy" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="solverInterface" />
      <node concept="3uibUv" id="2pvEdquwfyz" role="3clF45">
        <ref role="3uigEE" to="e2lb:~Class" resolve="Class" />
        <node concept="3uibUv" id="2pvEdquwfyE" role="11_B2D">
          <ref role="3uigEE" node="2GO7tyJLmlw" resolve="ContainmentSolver" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2pvEdquwfy_" role="1B3o_S" />
      <node concept="3clFbS" id="2pvEdquwfyF" role="3clF47">
        <node concept="3clFbF" id="2pvEdquwg8P" role="3cqZAp">
          <node concept="3VsKOn" id="2pvEdquwgjM" role="3clFbG">
            <ref role="3VsUkX" node="2GO7tyJLmlw" resolve="ContainmentSolver" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJTUeE" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJTpJg" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="ask" />
      <node concept="37vLTG" id="2GO7tyJTpJh" role="3clF46">
        <property role="TrG5h" value="solver" />
        <node concept="3uibUv" id="2GO7tyJTpJp" role="1tU5fm">
          <ref role="3uigEE" node="2GO7tyJLmlw" resolve="ContainmentSolver" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJTpJj" role="3clF46">
        <property role="TrG5h" value="arg" />
        <node concept="8X2XB" id="2GO7tyJTpJk" role="1tU5fm">
          <node concept="3uibUv" id="2GO7tyJTpJl" role="8Xvag">
            <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="2GO7tyJTpJm" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJTpJn" role="1B3o_S" />
      <node concept="3clFbS" id="2GO7tyJTpJq" role="3clF47">
        <node concept="3clFbJ" id="2GO7tyJZ8Yj" role="3cqZAp">
          <node concept="3clFbS" id="2GO7tyJZ8Ym" role="3clFbx">
            <node concept="YS8fn" id="2GO7tyJZ9EF" role="3cqZAp">
              <node concept="2ShNRf" id="2GO7tyJZ9Hi" role="YScLw">
                <node concept="1pGfFk" id="2GO7tyJZ9So" role="2ShVmc">
                  <ref role="37wK5l" to="e2lb:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                  <node concept="Xl_RD" id="2GO7tyJZ9UP" role="37wK5m">
                    <property role="Xl_RC" value="invalid arguments count" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2GO7tyJZ9vl" role="3clFbw">
            <node concept="3cmrfG" id="2GO7tyJZ9Cd" role="3uHU7w">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="2OqwBi" id="2GO7tyJZ91n" role="3uHU7B">
              <node concept="37vLTw" id="2GO7tyJZ8ZJ" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyJTpJj" resolve="arg" />
              </node>
              <node concept="1Rwk04" id="2GO7tyJZ95T" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$B8EP" role="3cqZAp" />
        <node concept="3cpWs8" id="7d$oK1$B919" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$B91a" role="3cpWs9">
            <property role="TrG5h" value="leftVal" />
            <node concept="3uibUv" id="7d$oK1$B91b" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="AH0OO" id="7d$oK1$B9l8" role="33vP2m">
              <node concept="3cmrfG" id="7d$oK1$B9ni" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="7d$oK1$B9ic" role="AHHXb">
                <ref role="3cqZAo" node="2GO7tyJTpJj" resolve="arg" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7d$oK1$B9MO" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$B9MP" role="3cpWs9">
            <property role="TrG5h" value="rightVal" />
            <node concept="3uibUv" id="7d$oK1$B9MQ" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="AH0OO" id="7d$oK1$Basp" role="33vP2m">
              <node concept="3cmrfG" id="7d$oK1$BasD" role="AHEQo">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="37vLTw" id="7d$oK1$B9S_" role="AHHXb">
                <ref role="3cqZAo" node="2GO7tyJTpJj" resolve="arg" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$Ba_F" role="3cqZAp" />
        <node concept="3clFbJ" id="7d$oK1$BaL0" role="3cqZAp">
          <node concept="3clFbS" id="7d$oK1$BaL3" role="3clFbx">
            <node concept="3cpWs6" id="7d$oK1$Bf4C" role="3cqZAp">
              <node concept="2OqwBi" id="7d$oK1$Bfu1" role="3cqZAk">
                <node concept="37vLTw" id="7d$oK1$Bf8g" role="2Oq$k0">
                  <ref role="3cqZAo" node="2GO7tyJTpJh" resolve="solver" />
                </node>
                <node concept="liA8E" id="7d$oK1$BfQ1" role="2OqNvi">
                  <ref role="37wK5l" node="2GO7tyJLmmh" resolve="askContains" />
                  <node concept="37vLTw" id="7d$oK1$BgbD" role="37wK5m">
                    <ref role="3cqZAo" node="7d$oK1$B91a" resolve="leftVal" />
                  </node>
                  <node concept="37vLTw" id="7d$oK1$BgR2" role="37wK5m">
                    <ref role="3cqZAo" node="7d$oK1$B9MP" resolve="rightVal" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7d$oK1$CcVR" role="3cqZAp" />
          </node>
          <node concept="1Wc70l" id="7d$oK1$Bcjx" role="3clFbw">
            <node concept="2OqwBi" id="7d$oK1$BcNX" role="3uHU7w">
              <node concept="2OqwBi" id="7d$oK1$Bcyn" role="2Oq$k0">
                <node concept="37vLTw" id="7d$oK1$BctR" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$B9MP" resolve="rightVal" />
                </node>
                <node concept="liA8E" id="7d$oK1$BcG_" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                </node>
              </node>
              <node concept="liA8E" id="56MMu0Ap1Z2" role="2OqNvi">
                <ref role="37wK5l" to="jfki:~Node.is(Kind)" resolve="is" />
                <node concept="Rm8GO" id="56MMu0Ap21O" role="37wK5m">
                  <ref role="1Px2BO" to="jfki:~Node.Kind" resolve="Node.Kind" />
                  <ref role="Rm8GQ" to="jfki:~Node.FUN" resolve="FUN" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7d$oK1$Bbf8" role="3uHU7B">
              <node concept="2OqwBi" id="7d$oK1$BaV4" role="2Oq$k0">
                <node concept="37vLTw" id="7d$oK1$BaRA" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$B91a" resolve="leftVal" />
                </node>
                <node concept="liA8E" id="7d$oK1$Bbbg" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                </node>
              </node>
              <node concept="liA8E" id="56MMu0Ap8dj" role="2OqNvi">
                <ref role="37wK5l" to="jfki:~Node.is(Kind)" resolve="is" />
                <node concept="Rm8GO" id="56MMu0Ap8dk" role="37wK5m">
                  <ref role="1Px2BO" to="jfki:~Node.Kind" resolve="Node.Kind" />
                  <ref role="Rm8GQ" to="jfki:~Node.FUN" resolve="FUN" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7d$oK1$Bhgq" role="3eNLev">
            <node concept="3clFbS" id="7d$oK1$Bhgs" role="3eOfB_">
              <node concept="3SKdUt" id="7d$oK1$Bq_w" role="3cqZAp">
                <node concept="3SKdUq" id="7d$oK1$Br6m" role="3SKWNk">
                  <property role="3SKdUp" value="TODO unchecked cast" />
                </node>
              </node>
              <node concept="3cpWs6" id="7d$oK1$BiNM" role="3cqZAp">
                <node concept="2OqwBi" id="7d$oK1$BiNN" role="3cqZAk">
                  <node concept="37vLTw" id="7d$oK1$BiNO" role="2Oq$k0">
                    <ref role="3cqZAo" node="2GO7tyJTpJh" resolve="solver" />
                  </node>
                  <node concept="liA8E" id="7d$oK1$BiNP" role="2OqNvi">
                    <ref role="37wK5l" node="2GO7tyJLmmD" resolve="askContains" />
                    <node concept="2OqwBi" id="3HJTsBmU2FZ" role="37wK5m">
                      <node concept="1eOMI4" id="3HJTsBmU2G0" role="2Oq$k0">
                        <node concept="10QFUN" id="3HJTsBmU2G1" role="1eOMHV">
                          <node concept="3uibUv" id="3HJTsBmU2G2" role="10QFUM">
                            <ref role="3uigEE" to="oy3s:3HJTsBmSn3l" resolve="TreeLogical.TreeLogicalVar" />
                          </node>
                          <node concept="2OqwBi" id="3HJTsBmU2G3" role="10QFUP">
                            <node concept="37vLTw" id="3HJTsBmU2G4" role="2Oq$k0">
                              <ref role="3cqZAo" node="7d$oK1$B91a" resolve="leftVal" />
                            </node>
                            <node concept="liA8E" id="3HJTsBmU2G5" role="2OqNvi">
                              <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="3HJTsBmU2G6" role="2OqNvi">
                        <ref role="37wK5l" to="oy3s:3HJTsBmSn3F" resolve="logical" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7d$oK1$BiNR" role="37wK5m">
                      <ref role="3cqZAo" node="7d$oK1$B9MP" resolve="rightVal" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7d$oK1$CdXu" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="7d$oK1$BiyM" role="3eO9$A">
              <node concept="2OqwBi" id="7d$oK1$BhRg" role="3uHU7B">
                <node concept="2OqwBi" id="7d$oK1$BhN7" role="2Oq$k0">
                  <node concept="37vLTw" id="7d$oK1$BhN8" role="2Oq$k0">
                    <ref role="3cqZAo" node="7d$oK1$B91a" resolve="leftVal" />
                  </node>
                  <node concept="liA8E" id="7d$oK1$BhN9" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                  </node>
                </node>
                <node concept="liA8E" id="56MMu0AqiSo" role="2OqNvi">
                  <ref role="37wK5l" to="jfki:~Node.is(Kind)" resolve="is" />
                  <node concept="Rm8GO" id="56MMu0AqiSp" role="37wK5m">
                    <ref role="1Px2BO" to="jfki:~Node.Kind" resolve="Node.Kind" />
                    <ref role="Rm8GQ" to="jfki:~Node.VAR" resolve="VAR" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7d$oK1$BiEd" role="3uHU7w">
                <node concept="2OqwBi" id="7d$oK1$BiEe" role="2Oq$k0">
                  <node concept="37vLTw" id="7d$oK1$BiEf" role="2Oq$k0">
                    <ref role="3cqZAo" node="7d$oK1$B9MP" resolve="rightVal" />
                  </node>
                  <node concept="liA8E" id="7d$oK1$BiEg" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                  </node>
                </node>
                <node concept="liA8E" id="56MMu0Ap7To" role="2OqNvi">
                  <ref role="37wK5l" to="jfki:~Node.is(Kind)" resolve="is" />
                  <node concept="Rm8GO" id="56MMu0Ap7Tp" role="37wK5m">
                    <ref role="1Px2BO" to="jfki:~Node.Kind" resolve="Node.Kind" />
                    <ref role="Rm8GQ" to="jfki:~Node.FUN" resolve="FUN" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7d$oK1$Bra8" role="3eNLev">
            <node concept="3clFbS" id="7d$oK1$Braa" role="3eOfB_">
              <node concept="3SKdUt" id="7d$oK1$BuHn" role="3cqZAp">
                <node concept="3SKdUq" id="7d$oK1$BuHo" role="3SKWNk">
                  <property role="3SKdUp" value="TODO unchecked cast" />
                </node>
              </node>
              <node concept="3cpWs6" id="7d$oK1$Btsu" role="3cqZAp">
                <node concept="2OqwBi" id="7d$oK1$Btsv" role="3cqZAk">
                  <node concept="37vLTw" id="7d$oK1$Btsw" role="2Oq$k0">
                    <ref role="3cqZAo" node="2GO7tyJTpJh" resolve="solver" />
                  </node>
                  <node concept="liA8E" id="7d$oK1$Btsx" role="2OqNvi">
                    <ref role="37wK5l" node="2GO7tyJLmmt" resolve="askContains" />
                    <node concept="37vLTw" id="7d$oK1$Bxp$" role="37wK5m">
                      <ref role="3cqZAo" node="7d$oK1$B91a" resolve="leftVal" />
                    </node>
                    <node concept="2OqwBi" id="3HJTsBmU4N0" role="37wK5m">
                      <node concept="1eOMI4" id="3HJTsBmU4N1" role="2Oq$k0">
                        <node concept="10QFUN" id="3HJTsBmU4N2" role="1eOMHV">
                          <node concept="3uibUv" id="3HJTsBmU4N3" role="10QFUM">
                            <ref role="3uigEE" to="oy3s:3HJTsBmSn3l" resolve="TreeLogical.TreeLogicalVar" />
                          </node>
                          <node concept="2OqwBi" id="3HJTsBmU4N4" role="10QFUP">
                            <node concept="37vLTw" id="3HJTsBmU4N5" role="2Oq$k0">
                              <ref role="3cqZAo" node="7d$oK1$B9MP" resolve="rightVal" />
                            </node>
                            <node concept="liA8E" id="3HJTsBmU4N6" role="2OqNvi">
                              <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="3HJTsBmU4N7" role="2OqNvi">
                        <ref role="37wK5l" to="oy3s:3HJTsBmSn3F" resolve="logical" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7d$oK1$CeYo" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="7d$oK1$BrLt" role="3eO9$A">
              <node concept="2OqwBi" id="7d$oK1$BrLu" role="3uHU7w">
                <node concept="2OqwBi" id="7d$oK1$BrLv" role="2Oq$k0">
                  <node concept="37vLTw" id="7d$oK1$BrLw" role="2Oq$k0">
                    <ref role="3cqZAo" node="7d$oK1$B9MP" resolve="rightVal" />
                  </node>
                  <node concept="liA8E" id="7d$oK1$BrLx" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                  </node>
                </node>
                <node concept="liA8E" id="56MMu0Aqjyf" role="2OqNvi">
                  <ref role="37wK5l" to="jfki:~Node.is(Kind)" resolve="is" />
                  <node concept="Rm8GO" id="56MMu0Aqjyg" role="37wK5m">
                    <ref role="1Px2BO" to="jfki:~Node.Kind" resolve="Node.Kind" />
                    <ref role="Rm8GQ" to="jfki:~Node.VAR" resolve="VAR" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7d$oK1$BrLz" role="3uHU7B">
                <node concept="2OqwBi" id="7d$oK1$BrL$" role="2Oq$k0">
                  <node concept="37vLTw" id="7d$oK1$BrL_" role="2Oq$k0">
                    <ref role="3cqZAo" node="7d$oK1$B91a" resolve="leftVal" />
                  </node>
                  <node concept="liA8E" id="7d$oK1$BrLA" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                  </node>
                </node>
                <node concept="liA8E" id="56MMu0Ap7zP" role="2OqNvi">
                  <ref role="37wK5l" to="jfki:~Node.is(Kind)" resolve="is" />
                  <node concept="Rm8GO" id="56MMu0Ap7zQ" role="37wK5m">
                    <ref role="1Px2BO" to="jfki:~Node.Kind" resolve="Node.Kind" />
                    <ref role="Rm8GQ" to="jfki:~Node.FUN" resolve="FUN" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7d$oK1$B$qh" role="3eNLev">
            <node concept="3clFbS" id="7d$oK1$B$qj" role="3eOfB_">
              <node concept="3SKdUt" id="7d$oK1$BB4s" role="3cqZAp">
                <node concept="3SKdUq" id="7d$oK1$BB4t" role="3SKWNk">
                  <property role="3SKdUp" value="TODO unchecked cast" />
                </node>
              </node>
              <node concept="3cpWs6" id="7d$oK1$B_y9" role="3cqZAp">
                <node concept="2OqwBi" id="7d$oK1$B_ya" role="3cqZAk">
                  <node concept="37vLTw" id="7d$oK1$B_yb" role="2Oq$k0">
                    <ref role="3cqZAo" node="2GO7tyJTpJh" resolve="solver" />
                  </node>
                  <node concept="liA8E" id="7d$oK1$B_yc" role="2OqNvi">
                    <ref role="37wK5l" node="2GO7tyJLmmP" resolve="askContains" />
                    <node concept="2OqwBi" id="3HJTsBmU6LQ" role="37wK5m">
                      <node concept="1eOMI4" id="3HJTsBmU6LR" role="2Oq$k0">
                        <node concept="10QFUN" id="3HJTsBmU6LS" role="1eOMHV">
                          <node concept="3uibUv" id="3HJTsBmU6LT" role="10QFUM">
                            <ref role="3uigEE" to="oy3s:3HJTsBmSn3l" resolve="TreeLogical.TreeLogicalVar" />
                          </node>
                          <node concept="2OqwBi" id="3HJTsBmU6LU" role="10QFUP">
                            <node concept="37vLTw" id="3HJTsBmU6LV" role="2Oq$k0">
                              <ref role="3cqZAo" node="7d$oK1$B91a" resolve="leftVal" />
                            </node>
                            <node concept="liA8E" id="3HJTsBmU6LW" role="2OqNvi">
                              <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="3HJTsBmU6LX" role="2OqNvi">
                        <ref role="37wK5l" to="oy3s:3HJTsBmSn3F" resolve="logical" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3HJTsBmU8DM" role="37wK5m">
                      <node concept="1eOMI4" id="3HJTsBmU8DN" role="2Oq$k0">
                        <node concept="10QFUN" id="3HJTsBmU8DO" role="1eOMHV">
                          <node concept="3uibUv" id="3HJTsBmU8DP" role="10QFUM">
                            <ref role="3uigEE" to="oy3s:3HJTsBmSn3l" resolve="TreeLogical.TreeLogicalVar" />
                          </node>
                          <node concept="2OqwBi" id="3HJTsBmU8DQ" role="10QFUP">
                            <node concept="37vLTw" id="3HJTsBmU8DR" role="2Oq$k0">
                              <ref role="3cqZAo" node="7d$oK1$B9MP" resolve="rightVal" />
                            </node>
                            <node concept="liA8E" id="3HJTsBmU8DS" role="2OqNvi">
                              <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="3HJTsBmU8DT" role="2OqNvi">
                        <ref role="37wK5l" to="oy3s:3HJTsBmSn3F" resolve="logical" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="7d$oK1$B_9$" role="3eO9$A">
              <node concept="2OqwBi" id="7d$oK1$B_9_" role="3uHU7w">
                <node concept="2OqwBi" id="7d$oK1$B_9A" role="2Oq$k0">
                  <node concept="37vLTw" id="7d$oK1$B_9B" role="2Oq$k0">
                    <ref role="3cqZAo" node="7d$oK1$B9MP" resolve="rightVal" />
                  </node>
                  <node concept="liA8E" id="7d$oK1$B_9C" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                  </node>
                </node>
                <node concept="liA8E" id="56MMu0Aqjea" role="2OqNvi">
                  <ref role="37wK5l" to="jfki:~Node.is(Kind)" resolve="is" />
                  <node concept="Rm8GO" id="56MMu0Aqjeb" role="37wK5m">
                    <ref role="1Px2BO" to="jfki:~Node.Kind" resolve="Node.Kind" />
                    <ref role="Rm8GQ" to="jfki:~Node.VAR" resolve="VAR" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7d$oK1$B_9E" role="3uHU7B">
                <node concept="2OqwBi" id="7d$oK1$B_9F" role="2Oq$k0">
                  <node concept="37vLTw" id="7d$oK1$B_9G" role="2Oq$k0">
                    <ref role="3cqZAo" node="7d$oK1$B91a" resolve="leftVal" />
                  </node>
                  <node concept="liA8E" id="7d$oK1$B_9H" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                  </node>
                </node>
                <node concept="liA8E" id="56MMu0AqjqQ" role="2OqNvi">
                  <ref role="37wK5l" to="jfki:~Node.is(Kind)" resolve="is" />
                  <node concept="Rm8GO" id="56MMu0AqjqR" role="37wK5m">
                    <ref role="1Px2BO" to="jfki:~Node.Kind" resolve="Node.Kind" />
                    <ref role="Rm8GQ" to="jfki:~Node.VAR" resolve="VAR" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$B8F$" role="3cqZAp" />
        <node concept="YS8fn" id="7d$oK1$BN0e" role="3cqZAp">
          <node concept="2ShNRf" id="7d$oK1$BNQp" role="YScLw">
            <node concept="1pGfFk" id="7d$oK1$BONA" role="2ShVmc">
              <ref role="37wK5l" to="e2lb:~IllegalStateException.&lt;init&gt;()" resolve="IllegalStateException" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJTqG0" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJTqqj" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tell" />
      <node concept="3cqZAl" id="2GO7tyJTqqk" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJTqql" role="1B3o_S" />
      <node concept="37vLTG" id="2GO7tyJTqqn" role="3clF46">
        <property role="TrG5h" value="solver" />
        <node concept="3uibUv" id="2GO7tyJTqqs" role="1tU5fm">
          <ref role="3uigEE" node="2GO7tyJLmlw" resolve="ContainmentSolver" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJTqqp" role="3clF46">
        <property role="TrG5h" value="arg" />
        <node concept="8X2XB" id="2GO7tyJTqqq" role="1tU5fm">
          <node concept="3uibUv" id="2GO7tyJTqqr" role="8Xvag">
            <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2GO7tyJTqqt" role="3clF47">
        <node concept="3clFbJ" id="2GO7tyKcfcq" role="3cqZAp">
          <node concept="3clFbS" id="2GO7tyKcfcr" role="3clFbx">
            <node concept="YS8fn" id="2GO7tyKcfcs" role="3cqZAp">
              <node concept="2ShNRf" id="2GO7tyKcfct" role="YScLw">
                <node concept="1pGfFk" id="2GO7tyKcfcu" role="2ShVmc">
                  <ref role="37wK5l" to="e2lb:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                  <node concept="Xl_RD" id="2GO7tyKcfcv" role="37wK5m">
                    <property role="Xl_RC" value="invalid arguments count" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2GO7tyKcfcw" role="3clFbw">
            <node concept="3cmrfG" id="2GO7tyKcfcx" role="3uHU7w">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="2OqwBi" id="2GO7tyKcfcy" role="3uHU7B">
              <node concept="37vLTw" id="2GO7tyKcfcz" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyJTqqp" resolve="arg" />
              </node>
              <node concept="1Rwk04" id="2GO7tyKcfc$" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$BQ2n" role="3cqZAp" />
        <node concept="3cpWs8" id="7d$oK1$BQbY" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$BQbZ" role="3cpWs9">
            <property role="TrG5h" value="leftVal" />
            <node concept="3uibUv" id="7d$oK1$BQc0" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="AH0OO" id="7d$oK1$BQc1" role="33vP2m">
              <node concept="3cmrfG" id="7d$oK1$BQc2" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="7d$oK1$BQc3" role="AHHXb">
                <ref role="3cqZAo" node="2GO7tyJTqqp" resolve="arg" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7d$oK1$BQc4" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$BQc5" role="3cpWs9">
            <property role="TrG5h" value="rightVal" />
            <node concept="3uibUv" id="7d$oK1$BQc6" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="AH0OO" id="7d$oK1$BQc7" role="33vP2m">
              <node concept="3cmrfG" id="7d$oK1$BQc8" role="AHEQo">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="37vLTw" id="7d$oK1$BQc9" role="AHHXb">
                <ref role="3cqZAo" node="2GO7tyJTqqp" resolve="arg" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$BQca" role="3cqZAp" />
        <node concept="3clFbJ" id="7d$oK1$BQcb" role="3cqZAp">
          <node concept="3clFbS" id="7d$oK1$BQcc" role="3clFbx">
            <node concept="3clFbF" id="7d$oK1$BRxi" role="3cqZAp">
              <node concept="2OqwBi" id="7d$oK1$BQce" role="3clFbG">
                <node concept="37vLTw" id="7d$oK1$BQcf" role="2Oq$k0">
                  <ref role="3cqZAo" node="2GO7tyJTqqn" resolve="solver" />
                </node>
                <node concept="liA8E" id="7d$oK1$BQcg" role="2OqNvi">
                  <ref role="37wK5l" node="2GO7tyJLmlx" resolve="tellContains" />
                  <node concept="37vLTw" id="7d$oK1$BQch" role="37wK5m">
                    <ref role="3cqZAo" node="7d$oK1$BQbZ" resolve="leftVal" />
                  </node>
                  <node concept="37vLTw" id="7d$oK1$BQci" role="37wK5m">
                    <ref role="3cqZAo" node="7d$oK1$BQc5" resolve="rightVal" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7d$oK1$C6Ij" role="3cqZAp" />
            <node concept="3clFbH" id="7d$oK1$C7ds" role="3cqZAp" />
          </node>
          <node concept="1Wc70l" id="7d$oK1$BQcj" role="3clFbw">
            <node concept="2OqwBi" id="7d$oK1$BQck" role="3uHU7w">
              <node concept="2OqwBi" id="7d$oK1$BQcl" role="2Oq$k0">
                <node concept="37vLTw" id="7d$oK1$BQcm" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$BQc5" resolve="rightVal" />
                </node>
                <node concept="liA8E" id="7d$oK1$BQcn" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                </node>
              </node>
              <node concept="liA8E" id="56MMu0Ap83i" role="2OqNvi">
                <ref role="37wK5l" to="jfki:~Node.is(Kind)" resolve="is" />
                <node concept="Rm8GO" id="56MMu0Ap83j" role="37wK5m">
                  <ref role="1Px2BO" to="jfki:~Node.Kind" resolve="Node.Kind" />
                  <ref role="Rm8GQ" to="jfki:~Node.FUN" resolve="FUN" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7d$oK1$BQcp" role="3uHU7B">
              <node concept="2OqwBi" id="7d$oK1$BQcq" role="2Oq$k0">
                <node concept="37vLTw" id="7d$oK1$BQcr" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$BQbZ" resolve="leftVal" />
                </node>
                <node concept="liA8E" id="7d$oK1$BQcs" role="2OqNvi">
                  <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                </node>
              </node>
              <node concept="liA8E" id="56MMu0Ap7Jy" role="2OqNvi">
                <ref role="37wK5l" to="jfki:~Node.is(Kind)" resolve="is" />
                <node concept="Rm8GO" id="56MMu0Ap7Jz" role="37wK5m">
                  <ref role="1Px2BO" to="jfki:~Node.Kind" resolve="Node.Kind" />
                  <ref role="Rm8GQ" to="jfki:~Node.FUN" resolve="FUN" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7d$oK1$BQcu" role="3eNLev">
            <node concept="3clFbS" id="7d$oK1$BQcv" role="3eOfB_">
              <node concept="3SKdUt" id="7d$oK1$BQcw" role="3cqZAp">
                <node concept="3SKdUq" id="7d$oK1$BQcx" role="3SKWNk">
                  <property role="3SKdUp" value="TODO unchecked cast" />
                </node>
              </node>
              <node concept="3clFbF" id="7d$oK1$BTJf" role="3cqZAp">
                <node concept="2OqwBi" id="7d$oK1$BQcz" role="3clFbG">
                  <node concept="37vLTw" id="7d$oK1$BQc$" role="2Oq$k0">
                    <ref role="3cqZAo" node="2GO7tyJTqqn" resolve="solver" />
                  </node>
                  <node concept="liA8E" id="7d$oK1$BQc_" role="2OqNvi">
                    <ref role="37wK5l" node="2GO7tyJLmlT" resolve="tellContains" />
                    <node concept="2OqwBi" id="3HJTsBmUaJk" role="37wK5m">
                      <node concept="1eOMI4" id="3HJTsBmUaJl" role="2Oq$k0">
                        <node concept="10QFUN" id="3HJTsBmUaJm" role="1eOMHV">
                          <node concept="3uibUv" id="3HJTsBmUaJn" role="10QFUM">
                            <ref role="3uigEE" to="oy3s:3HJTsBmSn3l" resolve="TreeLogical.TreeLogicalVar" />
                          </node>
                          <node concept="2OqwBi" id="3HJTsBmUaJo" role="10QFUP">
                            <node concept="37vLTw" id="3HJTsBmUaJp" role="2Oq$k0">
                              <ref role="3cqZAo" node="7d$oK1$BQbZ" resolve="leftVal" />
                            </node>
                            <node concept="liA8E" id="3HJTsBmUaJq" role="2OqNvi">
                              <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="3HJTsBmUaJr" role="2OqNvi">
                        <ref role="37wK5l" to="oy3s:3HJTsBmSn3F" resolve="logical" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7d$oK1$BQcI" role="37wK5m">
                      <ref role="3cqZAo" node="7d$oK1$BQc5" resolve="rightVal" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="7d$oK1$C5Hy" role="3cqZAp" />
              <node concept="3clFbH" id="7d$oK1$C7FJ" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="7d$oK1$BQcJ" role="3eO9$A">
              <node concept="2OqwBi" id="7d$oK1$BQcK" role="3uHU7B">
                <node concept="2OqwBi" id="7d$oK1$BQcL" role="2Oq$k0">
                  <node concept="37vLTw" id="7d$oK1$BQcM" role="2Oq$k0">
                    <ref role="3cqZAo" node="7d$oK1$BQbZ" resolve="leftVal" />
                  </node>
                  <node concept="liA8E" id="7d$oK1$BQcN" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                  </node>
                </node>
                <node concept="liA8E" id="56MMu0Aqj6W" role="2OqNvi">
                  <ref role="37wK5l" to="jfki:~Node.is(Kind)" resolve="is" />
                  <node concept="Rm8GO" id="56MMu0Aqj6X" role="37wK5m">
                    <ref role="1Px2BO" to="jfki:~Node.Kind" resolve="Node.Kind" />
                    <ref role="Rm8GQ" to="jfki:~Node.VAR" resolve="VAR" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7d$oK1$BQcP" role="3uHU7w">
                <node concept="2OqwBi" id="7d$oK1$BQcQ" role="2Oq$k0">
                  <node concept="37vLTw" id="7d$oK1$BQcR" role="2Oq$k0">
                    <ref role="3cqZAo" node="7d$oK1$BQc5" resolve="rightVal" />
                  </node>
                  <node concept="liA8E" id="7d$oK1$BQcS" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                  </node>
                </node>
                <node concept="liA8E" id="56MMu0Ap8ng" role="2OqNvi">
                  <ref role="37wK5l" to="jfki:~Node.is(Kind)" resolve="is" />
                  <node concept="Rm8GO" id="56MMu0Ap8nh" role="37wK5m">
                    <ref role="1Px2BO" to="jfki:~Node.Kind" resolve="Node.Kind" />
                    <ref role="Rm8GQ" to="jfki:~Node.FUN" resolve="FUN" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7d$oK1$BQcU" role="3eNLev">
            <node concept="3clFbS" id="7d$oK1$BQcV" role="3eOfB_">
              <node concept="3SKdUt" id="7d$oK1$BQcW" role="3cqZAp">
                <node concept="3SKdUq" id="7d$oK1$BQcX" role="3SKWNk">
                  <property role="3SKdUp" value="TODO unchecked cast" />
                </node>
              </node>
              <node concept="3clFbF" id="7d$oK1$BY2N" role="3cqZAp">
                <node concept="2OqwBi" id="7d$oK1$BQcZ" role="3clFbG">
                  <node concept="37vLTw" id="7d$oK1$BQd0" role="2Oq$k0">
                    <ref role="3cqZAo" node="2GO7tyJTqqn" resolve="solver" />
                  </node>
                  <node concept="liA8E" id="7d$oK1$BQd1" role="2OqNvi">
                    <ref role="37wK5l" node="2GO7tyJLmlH" resolve="tellContains" />
                    <node concept="37vLTw" id="7d$oK1$BQd2" role="37wK5m">
                      <ref role="3cqZAo" node="7d$oK1$BQbZ" resolve="leftVal" />
                    </node>
                    <node concept="2OqwBi" id="3HJTsBmUb1I" role="37wK5m">
                      <node concept="1eOMI4" id="3HJTsBmUb1J" role="2Oq$k0">
                        <node concept="10QFUN" id="3HJTsBmUb1K" role="1eOMHV">
                          <node concept="3uibUv" id="3HJTsBmUb1L" role="10QFUM">
                            <ref role="3uigEE" to="oy3s:3HJTsBmSn3l" resolve="TreeLogical.TreeLogicalVar" />
                          </node>
                          <node concept="2OqwBi" id="3HJTsBmUb1M" role="10QFUP">
                            <node concept="37vLTw" id="3HJTsBmUb1N" role="2Oq$k0">
                              <ref role="3cqZAo" node="7d$oK1$BQc5" resolve="rightVal" />
                            </node>
                            <node concept="liA8E" id="3HJTsBmUb1O" role="2OqNvi">
                              <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="3HJTsBmUb1P" role="2OqNvi">
                        <ref role="37wK5l" to="oy3s:3HJTsBmSn3F" resolve="logical" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="7d$oK1$C8H8" role="3cqZAp" />
              <node concept="3clFbH" id="7d$oK1$C9cR" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="7d$oK1$BQdb" role="3eO9$A">
              <node concept="2OqwBi" id="7d$oK1$BQdc" role="3uHU7w">
                <node concept="2OqwBi" id="7d$oK1$BQdd" role="2Oq$k0">
                  <node concept="37vLTw" id="7d$oK1$BQde" role="2Oq$k0">
                    <ref role="3cqZAo" node="7d$oK1$BQc5" resolve="rightVal" />
                  </node>
                  <node concept="liA8E" id="7d$oK1$BQdf" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                  </node>
                </node>
                <node concept="liA8E" id="56MMu0AqiZI" role="2OqNvi">
                  <ref role="37wK5l" to="jfki:~Node.is(Kind)" resolve="is" />
                  <node concept="Rm8GO" id="56MMu0AqiZJ" role="37wK5m">
                    <ref role="1Px2BO" to="jfki:~Node.Kind" resolve="Node.Kind" />
                    <ref role="Rm8GQ" to="jfki:~Node.VAR" resolve="VAR" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7d$oK1$BQdh" role="3uHU7B">
                <node concept="2OqwBi" id="7d$oK1$BQdi" role="2Oq$k0">
                  <node concept="37vLTw" id="7d$oK1$BQdj" role="2Oq$k0">
                    <ref role="3cqZAo" node="7d$oK1$BQbZ" resolve="leftVal" />
                  </node>
                  <node concept="liA8E" id="7d$oK1$BQdk" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                  </node>
                </node>
                <node concept="liA8E" id="56MMu0Ap7qM" role="2OqNvi">
                  <ref role="37wK5l" to="jfki:~Node.is(Kind)" resolve="is" />
                  <node concept="Rm8GO" id="56MMu0Ap7qN" role="37wK5m">
                    <ref role="1Px2BO" to="jfki:~Node.Kind" resolve="Node.Kind" />
                    <ref role="Rm8GQ" to="jfki:~Node.FUN" resolve="FUN" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7d$oK1$BQdm" role="3eNLev">
            <node concept="3clFbS" id="7d$oK1$BQdn" role="3eOfB_">
              <node concept="3SKdUt" id="7d$oK1$BQdo" role="3cqZAp">
                <node concept="3SKdUq" id="7d$oK1$BQdp" role="3SKWNk">
                  <property role="3SKdUp" value="TODO unchecked cast" />
                </node>
              </node>
              <node concept="3clFbF" id="7d$oK1$C38t" role="3cqZAp">
                <node concept="2OqwBi" id="7d$oK1$BQdr" role="3clFbG">
                  <node concept="37vLTw" id="7d$oK1$BQds" role="2Oq$k0">
                    <ref role="3cqZAo" node="2GO7tyJTqqn" resolve="solver" />
                  </node>
                  <node concept="liA8E" id="7d$oK1$BQdt" role="2OqNvi">
                    <ref role="37wK5l" node="2GO7tyJLmm5" resolve="tellContains" />
                    <node concept="2OqwBi" id="3HJTsBmUbk8" role="37wK5m">
                      <node concept="1eOMI4" id="3HJTsBmUbk9" role="2Oq$k0">
                        <node concept="10QFUN" id="3HJTsBmUbka" role="1eOMHV">
                          <node concept="3uibUv" id="3HJTsBmUbkb" role="10QFUM">
                            <ref role="3uigEE" to="oy3s:3HJTsBmSn3l" resolve="TreeLogical.TreeLogicalVar" />
                          </node>
                          <node concept="2OqwBi" id="3HJTsBmUbkc" role="10QFUP">
                            <node concept="37vLTw" id="3HJTsBmUbkd" role="2Oq$k0">
                              <ref role="3cqZAo" node="7d$oK1$BQbZ" resolve="leftVal" />
                            </node>
                            <node concept="liA8E" id="3HJTsBmUbke" role="2OqNvi">
                              <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="3HJTsBmUbkf" role="2OqNvi">
                        <ref role="37wK5l" to="oy3s:3HJTsBmSn3F" resolve="logical" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3HJTsBmUbRs" role="37wK5m">
                      <node concept="1eOMI4" id="3HJTsBmUbRt" role="2Oq$k0">
                        <node concept="10QFUN" id="3HJTsBmUbRu" role="1eOMHV">
                          <node concept="3uibUv" id="3HJTsBmUbRv" role="10QFUM">
                            <ref role="3uigEE" to="oy3s:3HJTsBmSn3l" resolve="TreeLogical.TreeLogicalVar" />
                          </node>
                          <node concept="2OqwBi" id="3HJTsBmUbRw" role="10QFUP">
                            <node concept="37vLTw" id="3HJTsBmUbRx" role="2Oq$k0">
                              <ref role="3cqZAo" node="7d$oK1$BQc5" resolve="rightVal" />
                            </node>
                            <node concept="liA8E" id="3HJTsBmUbRy" role="2OqNvi">
                              <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="3HJTsBmUbRz" role="2OqNvi">
                        <ref role="37wK5l" to="oy3s:3HJTsBmSn3F" resolve="logical" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="7d$oK1$Cako" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="7d$oK1$BQdI" role="3eO9$A">
              <node concept="2OqwBi" id="7d$oK1$BQdJ" role="3uHU7w">
                <node concept="2OqwBi" id="7d$oK1$BQdK" role="2Oq$k0">
                  <node concept="37vLTw" id="7d$oK1$BQdL" role="2Oq$k0">
                    <ref role="3cqZAo" node="7d$oK1$BQc5" resolve="rightVal" />
                  </node>
                  <node concept="liA8E" id="7d$oK1$BQdM" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                  </node>
                </node>
                <node concept="liA8E" id="56MMu0AqjjC" role="2OqNvi">
                  <ref role="37wK5l" to="jfki:~Node.is(Kind)" resolve="is" />
                  <node concept="Rm8GO" id="56MMu0AqjjD" role="37wK5m">
                    <ref role="1Px2BO" to="jfki:~Node.Kind" resolve="Node.Kind" />
                    <ref role="Rm8GQ" to="jfki:~Node.VAR" resolve="VAR" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7d$oK1$BQdO" role="3uHU7B">
                <node concept="2OqwBi" id="7d$oK1$BQdP" role="2Oq$k0">
                  <node concept="37vLTw" id="7d$oK1$BQdQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="7d$oK1$BQbZ" resolve="leftVal" />
                  </node>
                  <node concept="liA8E" id="7d$oK1$BQdR" role="2OqNvi">
                    <ref role="37wK5l" to="ie8e:2xQ7eRACJS8" resolve="root" />
                  </node>
                </node>
                <node concept="liA8E" id="56MMu0ApUmr" role="2OqNvi">
                  <ref role="37wK5l" to="jfki:~Node.is(Kind)" resolve="is" />
                  <node concept="Rm8GO" id="56MMu0ApUms" role="37wK5m">
                    <ref role="1Px2BO" to="jfki:~Node.Kind" resolve="Node.Kind" />
                    <ref role="Rm8GQ" to="jfki:~Node.VAR" resolve="VAR" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$BQdT" role="3cqZAp" />
        <node concept="YS8fn" id="7d$oK1$BQdU" role="3cqZAp">
          <node concept="2ShNRf" id="7d$oK1$BQdV" role="YScLw">
            <node concept="1pGfFk" id="7d$oK1$BQdW" role="2ShVmc">
              <ref role="37wK5l" to="e2lb:~IllegalStateException.&lt;init&gt;()" resolve="IllegalStateException" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJTqM6" role="jymVt" />
  </node>
  <node concept="312cEu" id="2GO7tyJW8Ef">
    <property role="TrG5h" value="ContainmentSolverImpl" />
    <node concept="3Tm1VV" id="2GO7tyJW8Eg" role="1B3o_S" />
    <node concept="3uibUv" id="2GO7tyJW8JI" role="EKbjA">
      <ref role="3uigEE" node="2GO7tyJLmlw" resolve="ContainmentSolver" />
    </node>
    <node concept="2tJIrI" id="2GO7tyJW9YY" role="jymVt" />
    <node concept="3clFbW" id="2GO7tyJWdjK" role="jymVt">
      <node concept="37vLTG" id="2GO7tyK1HpB" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="3uibUv" id="2GO7tyK1HpC" role="1tU5fm">
          <ref role="3uigEE" to="yg8f:2GO7tyJS2HQ" resolve="SolverFarm" />
        </node>
      </node>
      <node concept="3cqZAl" id="2GO7tyJWdjM" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJWdjN" role="1B3o_S" />
      <node concept="3clFbS" id="2GO7tyJWdjO" role="3clF47">
        <node concept="1VxSAg" id="2GO7tyJWdRe" role="3cqZAp">
          <ref role="37wK5l" node="2GO7tyJWavP" resolve="ContainmentSolverImpl" />
          <node concept="37vLTw" id="2GO7tyK1Idn" role="37wK5m">
            <ref role="3cqZAo" node="2GO7tyK1HpB" resolve="scope" />
          </node>
          <node concept="2YIFZM" id="2GO7tyJWe_S" role="37wK5m">
            <ref role="37wK5l" to="w2rx:~ConstraintSystem.get():runtime.ConstraintSystem" resolve="get" />
            <ref role="1Pybhc" to="w2rx:~ConstraintSystem" resolve="ConstraintSystem" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJWcNc" role="jymVt" />
    <node concept="3clFbW" id="2GO7tyJWavP" role="jymVt">
      <node concept="37vLTG" id="2GO7tyJDsSC" role="3clF46">
        <property role="TrG5h" value="scope" />
        <node concept="3uibUv" id="2GO7tyJSdfV" role="1tU5fm">
          <ref role="3uigEE" to="yg8f:2GO7tyJS2HQ" resolve="SolverFarm" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJWbey" role="3clF46">
        <property role="TrG5h" value="constraintSystem" />
        <node concept="3uibUv" id="2GO7tyJWbE$" role="1tU5fm">
          <ref role="3uigEE" to="w2rx:~ConstraintSystem" resolve="ConstraintSystem" />
        </node>
      </node>
      <node concept="3cqZAl" id="2GO7tyJWavR" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJWavS" role="1B3o_S" />
      <node concept="3clFbS" id="2GO7tyJWavT" role="3clF47">
        <node concept="3clFbF" id="2GO7tyJWbJX" role="3cqZAp">
          <node concept="37vLTI" id="2GO7tyJWbJZ" role="3clFbG">
            <node concept="2OqwBi" id="2GO7tyJWbK3" role="37vLTJ">
              <node concept="Xjq3P" id="2GO7tyJWbK6" role="2Oq$k0" />
              <node concept="2OwXpG" id="2GO7tyJWbK2" role="2OqNvi">
                <ref role="2Oxat5" node="2GO7tyJWbJT" resolve="constraintSystem" />
              </node>
            </node>
            <node concept="37vLTw" id="2GO7tyJWbK7" role="37vLTx">
              <ref role="3cqZAo" node="2GO7tyJWbey" resolve="constraintSystem" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2GO7tyK1GJ7" role="3cqZAp">
          <node concept="37vLTI" id="2GO7tyK1GJ9" role="3clFbG">
            <node concept="2OqwBi" id="2GO7tyK1GJd" role="37vLTJ">
              <node concept="Xjq3P" id="2GO7tyK1GJg" role="2Oq$k0" />
              <node concept="2OwXpG" id="2GO7tyK1GJc" role="2OqNvi">
                <ref role="2Oxat5" node="2GO7tyK1GJ3" resolve="scope" />
              </node>
            </node>
            <node concept="37vLTw" id="2GO7tyK1GJh" role="37vLTx">
              <ref role="3cqZAo" node="2GO7tyJDsSC" resolve="scope" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJWcgV" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJW8LD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellContains" />
      <node concept="37vLTG" id="2GO7tyJW8LE" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="3uibUv" id="2GO7tyJW8LF" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJW8LG" role="3clF46">
        <property role="TrG5h" value="rightVal" />
        <node concept="3uibUv" id="2GO7tyJW8LH" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="3cqZAl" id="2GO7tyJW8LI" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJW8LJ" role="1B3o_S" />
      <node concept="2AHcQZ" id="2GO7tyJW8LL" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="2GO7tyJW8LM" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="2GO7tyJW8LN" role="2B70Vg">
            <ref role="1PxDUh" node="2GO7tyJMZEq" resolve="ContainmentBuiltinConstraint" />
            <ref role="3cqZAo" node="2GO7tyJMZW7" resolve="CONTAINS" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2GO7tyJW8LO" role="3clF47">
        <node concept="3clFbJ" id="7d$oK1$nQ56" role="3cqZAp">
          <node concept="3clFbS" id="7d$oK1$nQ57" role="3clFbx">
            <node concept="3cpWs6" id="7d$oK1$nQ58" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="7d$oK1$nQ5a" role="3clFbw">
            <node concept="37vLTw" id="7d$oK1$nRny" role="3uHU7w">
              <ref role="3cqZAo" node="2GO7tyJW8LG" resolve="rightVal" />
            </node>
            <node concept="37vLTw" id="7d$oK1$nQOB" role="3uHU7B">
              <ref role="3cqZAo" node="2GO7tyJW8LE" resolve="leftVal" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$uVhR" role="3cqZAp" />
        <node concept="3clFbJ" id="7d$oK1$p8wj" role="3cqZAp">
          <node concept="3clFbS" id="7d$oK1$p8wm" role="3clFbx">
            <node concept="3clFbF" id="6SkxsMzDe$7" role="3cqZAp">
              <node concept="2YIFZM" id="6SkxsMzDe$8" role="3clFbG">
                <ref role="1Pybhc" to="7uia:~ConstraintSystemUtil" resolve="ConstraintSystemUtil" />
                <ref role="37wK5l" to="7uia:~ConstraintSystemUtil.queue(ConstraintSystem,Runnable)" resolve="queue" />
                <node concept="37vLTw" id="6SkxsMzDe$9" role="37wK5m">
                  <ref role="3cqZAo" node="2GO7tyJWbJT" resolve="constraintSystem" />
                </node>
                <node concept="1bVj0M" id="6SkxsMzDe$a" role="37wK5m">
                  <node concept="3clFbS" id="6SkxsMzDe$b" role="1bW5cS">
                    <node concept="3clFbF" id="6SkxsMzDe$c" role="3cqZAp">
                      <node concept="1rXfSq" id="6SkxsMzDe$d" role="3clFbG">
                        <ref role="37wK5l" node="2GO7tyJW8LD" resolve="tellContains" />
                        <node concept="37vLTw" id="6SkxsMzDrQQ" role="37wK5m">
                          <ref role="3cqZAo" node="2GO7tyJW8LE" resolve="leftVal" />
                        </node>
                        <node concept="37vLTw" id="6SkxsMzDsn9" role="37wK5m">
                          <ref role="3cqZAo" node="2GO7tyJW8LG" resolve="rightVal" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6SkxsMzDe$g" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="6SkxsMzDe$h" role="3clFbw">
            <node concept="37vLTw" id="6SkxsMzDe$i" role="2Oq$k0">
              <ref role="3cqZAo" node="2GO7tyJWbJT" resolve="constraintSystem" />
            </node>
            <node concept="liA8E" id="6SkxsMzDe$j" role="2OqNvi">
              <ref role="37wK5l" to="w2rx:~ConstraintSystem.isQueuing():boolean" resolve="isQueuing" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$B7l5" role="3cqZAp" />
        <node concept="3clFbH" id="7d$oK1$uee9" role="3cqZAp" />
        <node concept="3cpWs8" id="7d$oK1$ulBO" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$ulBP" role="3cpWs9">
            <property role="TrG5h" value="leftImage" />
            <node concept="3uibUv" id="7d$oK1$ulBQ" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="2YIFZM" id="7d$oK1$ulBR" role="33vP2m">
              <ref role="1Pybhc" to="c87j:2GO7tyJmunM" resolve="DomainTranslationTable" />
              <ref role="37wK5l" to="c87j:2GO7tyJvXGg" resolve="toTargetDomain" />
              <node concept="37vLTw" id="7d$oK1$ulBS" role="37wK5m">
                <ref role="3cqZAo" node="2GO7tyJW8LE" resolve="leftVal" />
              </node>
              <node concept="Xl_RD" id="7d$oK1$ulBT" role="37wK5m">
                <property role="Xl_RC" value="variable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7d$oK1$ulBU" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$ulBV" role="3cpWs9">
            <property role="TrG5h" value="rightImage" />
            <node concept="3uibUv" id="7d$oK1$ulBW" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="2YIFZM" id="7d$oK1$ulBX" role="33vP2m">
              <ref role="37wK5l" to="c87j:2GO7tyJvXGg" resolve="toTargetDomain" />
              <ref role="1Pybhc" to="c87j:2GO7tyJmunM" resolve="DomainTranslationTable" />
              <node concept="37vLTw" id="7d$oK1$ulBY" role="37wK5m">
                <ref role="3cqZAo" node="2GO7tyJW8LG" resolve="rightVal" />
              </node>
              <node concept="Xl_RD" id="7d$oK1$ulBZ" role="37wK5m">
                <property role="Xl_RC" value="variable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$ulC0" role="3cqZAp" />
        <node concept="3clFbJ" id="7d$oK1$ulC1" role="3cqZAp">
          <node concept="3clFbS" id="7d$oK1$ulC2" role="3clFbx">
            <node concept="YS8fn" id="6SkxsMzEery" role="3cqZAp">
              <node concept="2ShNRf" id="6SkxsMzEeu4" role="YScLw">
                <node concept="1pGfFk" id="6SkxsMzEeGa" role="2ShVmc">
                  <ref role="37wK5l" to="w2rx:~FailureException.&lt;init&gt;(java.lang.String)" resolve="FailureException" />
                  <node concept="3cpWs3" id="6SkxsMzEhV3" role="37wK5m">
                    <node concept="37vLTw" id="6SkxsMzEi2u" role="3uHU7w">
                      <ref role="3cqZAo" node="2GO7tyJW8LG" resolve="rightVal" />
                    </node>
                    <node concept="3cpWs3" id="6SkxsMzEg$B" role="3uHU7B">
                      <node concept="3cpWs3" id="6SkxsMzEg2E" role="3uHU7B">
                        <node concept="Xl_RD" id="6SkxsMzEf1a" role="3uHU7B">
                          <property role="Xl_RC" value="No containment " />
                        </node>
                        <node concept="37vLTw" id="6SkxsMzEg5t" role="3uHU7w">
                          <ref role="3cqZAo" node="2GO7tyJW8LE" resolve="leftVal" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="6SkxsMzEh3h" role="3uHU7w">
                        <property role="Xl_RC" value=" in " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="7d$oK1$ulC5" role="3clFbw">
            <node concept="3clFbC" id="7d$oK1$ulC6" role="3uHU7w">
              <node concept="10Nm6u" id="7d$oK1$ulC7" role="3uHU7w" />
              <node concept="37vLTw" id="7d$oK1$ulC8" role="3uHU7B">
                <ref role="3cqZAo" node="7d$oK1$ulBV" resolve="rightImage" />
              </node>
            </node>
            <node concept="3clFbC" id="7d$oK1$ulC9" role="3uHU7B">
              <node concept="37vLTw" id="7d$oK1$ulCa" role="3uHU7B">
                <ref role="3cqZAo" node="7d$oK1$ulBP" resolve="leftImage" />
              </node>
              <node concept="10Nm6u" id="7d$oK1$ulCb" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$ulyX" role="3cqZAp" />
        <node concept="3clFbF" id="7d$oK1$uw5R" role="3cqZAp">
          <node concept="2OqwBi" id="7d$oK1$uw5T" role="3clFbG">
            <node concept="37vLTw" id="7d$oK1$uw5U" role="2Oq$k0">
              <ref role="3cqZAo" node="2GO7tyK1GJ3" resolve="scope" />
            </node>
            <node concept="liA8E" id="7d$oK1$uw5V" role="2OqNvi">
              <ref role="37wK5l" to="yg8f:2GO7tyJSk6b" resolve="tell" />
              <node concept="10M0yZ" id="7d$oK1$uw5W" role="37wK5m">
                <ref role="1PxDUh" to="mqgp:2GO7tyJMFXV" resolve="ConversionBuiltinConstraint" />
                <ref role="3cqZAo" to="mqgp:2GO7tyJMMJq" resolve="INSTANCE" />
              </node>
              <node concept="2YIFZM" id="7d$oK1$uw5X" role="37wK5m">
                <ref role="1Pybhc" to="c87j:2GO7tyK05eH" resolve="BoundedTypes" />
                <ref role="37wK5l" to="c87j:2GO7tyK08CK" resolve="lowerBound" />
                <node concept="37vLTw" id="7d$oK1$uw5Y" role="37wK5m">
                  <ref role="3cqZAo" node="7d$oK1$ulBV" resolve="rightImage" />
                </node>
              </node>
              <node concept="2YIFZM" id="7d$oK1$uw5Z" role="37wK5m">
                <ref role="37wK5l" to="c87j:2GO7tyK08CK" resolve="lowerBound" />
                <ref role="1Pybhc" to="c87j:2GO7tyK05eH" resolve="BoundedTypes" />
                <node concept="37vLTw" id="7d$oK1$uw60" role="37wK5m">
                  <ref role="3cqZAo" node="7d$oK1$ulBP" resolve="leftImage" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$uuYA" role="3cqZAp" />
        <node concept="3clFbF" id="7d$oK1$uyOF" role="3cqZAp">
          <node concept="2OqwBi" id="7d$oK1$uyOH" role="3clFbG">
            <node concept="37vLTw" id="7d$oK1$uyOI" role="2Oq$k0">
              <ref role="3cqZAo" node="2GO7tyK1GJ3" resolve="scope" />
            </node>
            <node concept="liA8E" id="7d$oK1$uyOJ" role="2OqNvi">
              <ref role="37wK5l" to="yg8f:2GO7tyJSk6b" resolve="tell" />
              <node concept="10M0yZ" id="7d$oK1$uyOK" role="37wK5m">
                <ref role="1PxDUh" to="mqgp:2GO7tyJMFXV" resolve="ConversionBuiltinConstraint" />
                <ref role="3cqZAo" to="mqgp:2GO7tyJMMJq" resolve="INSTANCE" />
              </node>
              <node concept="2YIFZM" id="7d$oK1$uyOL" role="37wK5m">
                <ref role="1Pybhc" to="c87j:2GO7tyK05eH" resolve="BoundedTypes" />
                <ref role="37wK5l" to="c87j:2GO7tyK1cet" resolve="upperBound" />
                <node concept="37vLTw" id="7d$oK1$uyOM" role="37wK5m">
                  <ref role="3cqZAo" node="7d$oK1$ulBP" resolve="leftImage" />
                </node>
              </node>
              <node concept="2YIFZM" id="7d$oK1$uyON" role="37wK5m">
                <ref role="1Pybhc" to="c87j:2GO7tyK05eH" resolve="BoundedTypes" />
                <ref role="37wK5l" to="c87j:2GO7tyK1cet" resolve="upperBound" />
                <node concept="37vLTw" id="7d$oK1$uyOO" role="37wK5m">
                  <ref role="3cqZAo" node="7d$oK1$ulBV" resolve="rightImage" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$u$F5" role="3cqZAp" />
        <node concept="3SKdUt" id="7d$oK1$u_8P" role="3cqZAp">
          <node concept="3SKdUq" id="7d$oK1$u_T5" role="3SKWNk">
            <property role="3SKdUp" value="containment succeeded" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJWfdl" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJW8LP" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellContains" />
      <node concept="37vLTG" id="2GO7tyJW8LQ" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="3uibUv" id="2GO7tyJW8LR" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJW8LS" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2GO7tyJW8LT" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="3cqZAl" id="2GO7tyJW8LU" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJW8LV" role="1B3o_S" />
      <node concept="2AHcQZ" id="2GO7tyJW8LX" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="2GO7tyJW8LY" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="2GO7tyJW8LZ" role="2B70Vg">
            <ref role="1PxDUh" node="2GO7tyJMZEq" resolve="ContainmentBuiltinConstraint" />
            <ref role="3cqZAo" node="2GO7tyJMZW7" resolve="CONTAINS" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2GO7tyJW8M0" role="3clF47">
        <node concept="3cpWs8" id="7d$oK1$rc$Z" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$rc_0" role="3cpWs9">
            <property role="TrG5h" value="rightRepr" />
            <node concept="3uibUv" id="7d$oK1$rc_1" role="1tU5fm">
              <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
            </node>
            <node concept="2OqwBi" id="7d$oK1$rc_2" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$rc_3" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyJW8LS" resolve="right" />
              </node>
              <node concept="liA8E" id="7d$oK1$rc_4" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$rc$D" role="3cqZAp" />
        <node concept="3clFbJ" id="7d$oK1$rdkJ" role="3cqZAp">
          <node concept="3clFbS" id="7d$oK1$rdkK" role="3clFbx">
            <node concept="3clFbF" id="7d$oK1$rdkL" role="3cqZAp">
              <node concept="2YIFZM" id="7d$oK1$rdkM" role="3clFbG">
                <ref role="1Pybhc" to="7uia:~ConstraintSystemUtil" resolve="ConstraintSystemUtil" />
                <ref role="37wK5l" to="7uia:~ConstraintSystemUtil.queue(ConstraintSystem,Runnable)" resolve="queue" />
                <node concept="37vLTw" id="7d$oK1$rdkN" role="37wK5m">
                  <ref role="3cqZAo" node="2GO7tyJWbJT" resolve="constraintSystem" />
                </node>
                <node concept="1bVj0M" id="7d$oK1$rdkO" role="37wK5m">
                  <node concept="3clFbS" id="7d$oK1$rdkP" role="1bW5cS">
                    <node concept="3clFbF" id="7d$oK1$rdkQ" role="3cqZAp">
                      <node concept="1rXfSq" id="7d$oK1$rdkR" role="3clFbG">
                        <ref role="37wK5l" node="2GO7tyJW8LP" resolve="tellContains" />
                        <node concept="37vLTw" id="7d$oK1$reh4" role="37wK5m">
                          <ref role="3cqZAo" node="2GO7tyJW8LQ" resolve="leftVal" />
                        </node>
                        <node concept="37vLTw" id="7d$oK1$reWh" role="37wK5m">
                          <ref role="3cqZAo" node="7d$oK1$rc_0" resolve="rightRepr" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7d$oK1$rdkU" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="7d$oK1$rdkV" role="3clFbw">
            <node concept="37vLTw" id="7d$oK1$rdkW" role="2Oq$k0">
              <ref role="3cqZAo" node="2GO7tyJWbJT" resolve="constraintSystem" />
            </node>
            <node concept="liA8E" id="7d$oK1$rdkX" role="2OqNvi">
              <ref role="37wK5l" to="w2rx:~ConstraintSystem.isQueuing():boolean" resolve="isQueuing" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$rdkY" role="3cqZAp" />
        <node concept="3cpWs8" id="7d$oK1$rg9i" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$rg9j" role="3cpWs9">
            <property role="TrG5h" value="rightVal" />
            <node concept="3uibUv" id="7d$oK1$rg9c" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="2OqwBi" id="7d$oK1$rg9k" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$rg9l" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$rc_0" resolve="rightRepr" />
              </node>
              <node concept="liA8E" id="7d$oK1$rg9m" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7d$oK1$rgZj" role="3cqZAp">
          <node concept="3clFbS" id="7d$oK1$rgZm" role="3clFbx">
            <node concept="3clFbF" id="7d$oK1$sbLm" role="3cqZAp">
              <node concept="2OqwBi" id="7d$oK1$sccf" role="3clFbG">
                <node concept="37vLTw" id="7d$oK1$sbLk" role="2Oq$k0">
                  <ref role="3cqZAo" node="2GO7tyK1GJ3" resolve="scope" />
                </node>
                <node concept="liA8E" id="7d$oK1$sc_8" role="2OqNvi">
                  <ref role="37wK5l" to="yg8f:2GO7tyJSk6b" resolve="tell" />
                  <node concept="10M0yZ" id="7d$oK1$sd2D" role="37wK5m">
                    <ref role="3cqZAo" to="oy3s:2GO7tyJY8Rr" resolve="INSTANCE" />
                    <ref role="1PxDUh" to="oy3s:2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                  </node>
                  <node concept="37vLTw" id="7d$oK1$szks" role="37wK5m">
                    <ref role="3cqZAo" node="2GO7tyJW8LQ" resolve="leftVal" />
                  </node>
                  <node concept="2YIFZM" id="6tTPqJYYqhC" role="37wK5m">
                    <ref role="37wK5l" to="ie8e:5JQSuNsxMzt" resolve="create" />
                    <ref role="1Pybhc" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
                    <node concept="2OqwBi" id="6tTPqJYYqhD" role="37wK5m">
                      <node concept="37vLTw" id="7d$oK1$tH9t" role="2Oq$k0">
                        <ref role="3cqZAo" node="7d$oK1$rc_0" resolve="rightRepr" />
                      </node>
                      <node concept="liA8E" id="6tTPqJYYqhE" role="2OqNvi">
                        <ref role="37wK5l" to="oy3s:1Ns6gpY6DeD" resolve="asTreePart" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7d$oK1$tequ" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="7d$oK1$rhaH" role="3clFbw">
            <node concept="10Nm6u" id="7d$oK1$rhfo" role="3uHU7w" />
            <node concept="37vLTw" id="7d$oK1$rh6I" role="3uHU7B">
              <ref role="3cqZAo" node="7d$oK1$rg9j" resolve="rightVal" />
            </node>
          </node>
          <node concept="9aQIb" id="7d$oK1$rht_" role="9aQIa">
            <node concept="3clFbS" id="7d$oK1$rhtA" role="9aQI4">
              <node concept="3clFbF" id="7d$oK1$rh$d" role="3cqZAp">
                <node concept="1rXfSq" id="7d$oK1$rh$c" role="3clFbG">
                  <ref role="37wK5l" node="2GO7tyJW8LD" resolve="tellContains" />
                  <node concept="37vLTw" id="7d$oK1$rhWV" role="37wK5m">
                    <ref role="3cqZAo" node="2GO7tyJW8LQ" resolve="leftVal" />
                  </node>
                  <node concept="37vLTw" id="7d$oK1$riP9" role="37wK5m">
                    <ref role="3cqZAo" node="7d$oK1$rg9j" resolve="rightVal" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJWfL2" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJW8M1" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellContains" />
      <node concept="37vLTG" id="2GO7tyJW8M2" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2GO7tyJW8M3" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJW8M4" role="3clF46">
        <property role="TrG5h" value="rightVal" />
        <node concept="3uibUv" id="2GO7tyJW8M5" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="3cqZAl" id="2GO7tyJW8M6" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJW8M7" role="1B3o_S" />
      <node concept="2AHcQZ" id="2GO7tyJW8M9" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="2GO7tyJW8Ma" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="2GO7tyJW8Mb" role="2B70Vg">
            <ref role="1PxDUh" node="2GO7tyJMZEq" resolve="ContainmentBuiltinConstraint" />
            <ref role="3cqZAo" node="2GO7tyJMZW7" resolve="CONTAINS" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2GO7tyJW8Mc" role="3clF47">
        <node concept="3cpWs8" id="7d$oK1$qdN2" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$qdN3" role="3cpWs9">
            <property role="TrG5h" value="leftRepr" />
            <node concept="3uibUv" id="7d$oK1$qdN4" role="1tU5fm">
              <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
            </node>
            <node concept="2OqwBi" id="7d$oK1$qdN5" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$qdN6" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyJW8M2" resolve="left" />
              </node>
              <node concept="liA8E" id="7d$oK1$qdN7" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$qdMF" role="3cqZAp" />
        <node concept="3clFbJ" id="1bm7a6EV0XB" role="3cqZAp">
          <node concept="3clFbS" id="1bm7a6EV0XC" role="3clFbx">
            <node concept="3clFbF" id="1bm7a6EV0XD" role="3cqZAp">
              <node concept="2YIFZM" id="1bm7a6FeHva" role="3clFbG">
                <ref role="37wK5l" to="7uia:~ConstraintSystemUtil.queue(ConstraintSystem,Runnable)" resolve="queue" />
                <ref role="1Pybhc" to="7uia:~ConstraintSystemUtil" resolve="ConstraintSystemUtil" />
                <node concept="37vLTw" id="1bm7a6FeHvb" role="37wK5m">
                  <ref role="3cqZAo" node="2GO7tyJWbJT" resolve="constraintSystem" />
                </node>
                <node concept="1bVj0M" id="1bm7a6FeHvc" role="37wK5m">
                  <node concept="3clFbS" id="1bm7a6FeHvd" role="1bW5cS">
                    <node concept="3clFbF" id="1bm7a6FeHve" role="3cqZAp">
                      <node concept="1rXfSq" id="1bm7a6FeHvf" role="3clFbG">
                        <ref role="37wK5l" node="2GO7tyJW8M1" resolve="tellContains" />
                        <node concept="37vLTw" id="7d$oK1$qjQ$" role="37wK5m">
                          <ref role="3cqZAo" node="7d$oK1$qdN3" resolve="leftRepr" />
                        </node>
                        <node concept="37vLTw" id="1bm7a6FeHvh" role="37wK5m">
                          <ref role="3cqZAo" node="2GO7tyJW8M4" resolve="rightVal" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1bm7a6EV0XM" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="1bm7a6EV0XN" role="3clFbw">
            <node concept="37vLTw" id="1bm7a6EV0XO" role="2Oq$k0">
              <ref role="3cqZAo" node="2GO7tyJWbJT" resolve="constraintSystem" />
            </node>
            <node concept="liA8E" id="1bm7a6EV0XP" role="2OqNvi">
              <ref role="37wK5l" to="w2rx:~ConstraintSystem.isQueuing():boolean" resolve="isQueuing" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$qmoA" role="3cqZAp" />
        <node concept="3cpWs8" id="1bm7a6EUZWd" role="3cqZAp">
          <node concept="3cpWsn" id="1bm7a6EUZWe" role="3cpWs9">
            <property role="TrG5h" value="leftVal" />
            <node concept="3uibUv" id="1bm7a6EUZW9" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="2OqwBi" id="1bm7a6EUZWf" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$qgWW" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$qdN3" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="1bm7a6EUZWh" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7d$oK1$qpv3" role="3cqZAp">
          <node concept="3clFbS" id="7d$oK1$qpv6" role="3clFbx">
            <node concept="3clFbF" id="7d$oK1$tfMK" role="3cqZAp">
              <node concept="2OqwBi" id="7d$oK1$tfML" role="3clFbG">
                <node concept="37vLTw" id="7d$oK1$tfMM" role="2Oq$k0">
                  <ref role="3cqZAo" node="2GO7tyK1GJ3" resolve="scope" />
                </node>
                <node concept="liA8E" id="7d$oK1$tfMN" role="2OqNvi">
                  <ref role="37wK5l" to="yg8f:2GO7tyJSk6b" resolve="tell" />
                  <node concept="10M0yZ" id="7d$oK1$tfMO" role="37wK5m">
                    <ref role="1PxDUh" to="oy3s:2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                    <ref role="3cqZAo" to="oy3s:2GO7tyJY8Rr" resolve="INSTANCE" />
                  </node>
                  <node concept="2YIFZM" id="6tTPqJYYpek" role="37wK5m">
                    <ref role="37wK5l" to="ie8e:5JQSuNsxMzt" resolve="create" />
                    <ref role="1Pybhc" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
                    <node concept="2OqwBi" id="6tTPqJYYpel" role="37wK5m">
                      <node concept="37vLTw" id="6tTPqJYYpyB" role="2Oq$k0">
                        <ref role="3cqZAo" node="7d$oK1$qdN3" resolve="leftRepr" />
                      </node>
                      <node concept="liA8E" id="6tTPqJYYpen" role="2OqNvi">
                        <ref role="37wK5l" to="oy3s:1Ns6gpY6DeD" resolve="asTreePart" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="7d$oK1$tgz_" role="37wK5m">
                    <ref role="3cqZAo" node="2GO7tyJW8M4" resolve="rightVal" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7d$oK1$qqXj" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="7d$oK1$qpFh" role="3clFbw">
            <node concept="10Nm6u" id="7d$oK1$qpJ6" role="3uHU7w" />
            <node concept="37vLTw" id="7d$oK1$qpAn" role="3uHU7B">
              <ref role="3cqZAo" node="1bm7a6EUZWe" resolve="leftVal" />
            </node>
          </node>
          <node concept="9aQIb" id="7d$oK1$qpLk" role="9aQIa">
            <node concept="3clFbS" id="7d$oK1$qpLl" role="9aQI4">
              <node concept="3clFbF" id="7d$oK1$qq1E" role="3cqZAp">
                <node concept="1rXfSq" id="7d$oK1$qq1D" role="3clFbG">
                  <ref role="37wK5l" node="2GO7tyJW8LD" resolve="tellContains" />
                  <node concept="37vLTw" id="7d$oK1$qqqo" role="37wK5m">
                    <ref role="3cqZAo" node="1bm7a6EUZWe" resolve="leftVal" />
                  </node>
                  <node concept="37vLTw" id="7d$oK1$qqtV" role="37wK5m">
                    <ref role="3cqZAo" node="2GO7tyJW8M4" resolve="rightVal" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJWgiN" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJW8Md" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="tellContains" />
      <node concept="37vLTG" id="2GO7tyJW8Me" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2GO7tyJW8Mf" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJW8Mg" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2GO7tyJW8Mh" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="3cqZAl" id="2GO7tyJW8Mi" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJW8Mj" role="1B3o_S" />
      <node concept="2AHcQZ" id="2GO7tyJW8Ml" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Tells" resolve="JCHR_Tells" />
        <node concept="2B6LJw" id="2GO7tyJW8Mm" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Tells.value()" resolve="value" />
          <node concept="10M0yZ" id="2GO7tyJW8Mn" role="2B70Vg">
            <ref role="1PxDUh" node="2GO7tyJMZEq" resolve="ContainmentBuiltinConstraint" />
            <ref role="3cqZAo" node="2GO7tyJMZW7" resolve="CONTAINS" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2GO7tyJW8Mo" role="3clF47">
        <node concept="3clFbJ" id="4U_yxogDsYF" role="3cqZAp">
          <node concept="3clFbS" id="4U_yxogDsYG" role="3clFbx">
            <node concept="3cpWs6" id="4U_yxogDtRP" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="4U_yxogDt6$" role="3clFbw">
            <node concept="37vLTw" id="4U_yxogDtvd" role="3uHU7w">
              <ref role="3cqZAo" node="2GO7tyJW8Mg" resolve="right" />
            </node>
            <node concept="37vLTw" id="4U_yxogDsZV" role="3uHU7B">
              <ref role="3cqZAo" node="2GO7tyJW8Me" resolve="left" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2GO7tyJDsTX" role="3cqZAp" />
        <node concept="3cpWs8" id="7d$oK1$rAnD" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$rAnE" role="3cpWs9">
            <property role="TrG5h" value="leftRepr" />
            <node concept="3uibUv" id="7d$oK1$rAnF" role="1tU5fm">
              <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
            </node>
            <node concept="2OqwBi" id="7d$oK1$rAnG" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$rAnH" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyJW8Me" resolve="left" />
              </node>
              <node concept="liA8E" id="7d$oK1$rAnI" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7d$oK1$rAnJ" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$rAnK" role="3cpWs9">
            <property role="TrG5h" value="rightRepr" />
            <node concept="3uibUv" id="7d$oK1$rAnL" role="1tU5fm">
              <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
            </node>
            <node concept="2OqwBi" id="7d$oK1$rAnM" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$rAnN" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyJW8Mg" resolve="right" />
              </node>
              <node concept="liA8E" id="7d$oK1$rAnO" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
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
        <node concept="3clFbH" id="7d$oK1$rS8H" role="3cqZAp" />
        <node concept="3clFbJ" id="4U_yxogDyfZ" role="3cqZAp">
          <node concept="3clFbS" id="4U_yxogDyg2" role="3clFbx">
            <node concept="3clFbF" id="1bm7a6ESbDn" role="3cqZAp">
              <node concept="2YIFZM" id="1bm7a6FeHZx" role="3clFbG">
                <ref role="1Pybhc" to="7uia:~ConstraintSystemUtil" resolve="ConstraintSystemUtil" />
                <ref role="37wK5l" to="7uia:~ConstraintSystemUtil.queue(ConstraintSystem,Runnable)" resolve="queue" />
                <node concept="37vLTw" id="1bm7a6FeHZy" role="37wK5m">
                  <ref role="3cqZAo" node="2GO7tyJWbJT" resolve="constraintSystem" />
                </node>
                <node concept="1bVj0M" id="1bm7a6FeHZz" role="37wK5m">
                  <node concept="3clFbS" id="1bm7a6FeHZ$" role="1bW5cS">
                    <node concept="3clFbF" id="1bm7a6FeHZ_" role="3cqZAp">
                      <node concept="1rXfSq" id="1bm7a6FeHZA" role="3clFbG">
                        <ref role="37wK5l" node="2GO7tyJW8Md" resolve="tellContains" />
                        <node concept="37vLTw" id="7d$oK1$rZu9" role="37wK5m">
                          <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
                        </node>
                        <node concept="37vLTw" id="7d$oK1$rZXp" role="37wK5m">
                          <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1bm7a6EU4Lp" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="4U_yxogDIEs" role="3clFbw">
            <node concept="37vLTw" id="4U_yxogDIig" role="2Oq$k0">
              <ref role="3cqZAo" node="2GO7tyJWbJT" resolve="constraintSystem" />
            </node>
            <node concept="liA8E" id="4U_yxogDIKF" role="2OqNvi">
              <ref role="37wK5l" to="w2rx:~ConstraintSystem.isQueuing():boolean" resolve="isQueuing" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1bm7a6ESeh1" role="3cqZAp" />
        <node concept="3cpWs8" id="1bm7a6ESodZ" role="3cqZAp">
          <node concept="3cpWsn" id="1bm7a6ESoe0" role="3cpWs9">
            <property role="TrG5h" value="leftVal" />
            <node concept="3uibUv" id="1bm7a6ESoe1" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="2OqwBi" id="1bm7a6ESoe2" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$rESp" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="1bm7a6ESoe4" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1bm7a6ESoe5" role="3cqZAp">
          <node concept="3cpWsn" id="1bm7a6ESoe6" role="3cpWs9">
            <property role="TrG5h" value="rightVal" />
            <node concept="3uibUv" id="1bm7a6ESoe7" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="2OqwBi" id="1bm7a6ESoe8" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$rKcs" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
              </node>
              <node concept="liA8E" id="1bm7a6ESoea" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$tCwG" role="3cqZAp" />
        <node concept="3clFbJ" id="7d$oK1$tF7a" role="3cqZAp">
          <node concept="3clFbS" id="7d$oK1$tF7d" role="3clFbx">
            <node concept="3SKdUt" id="7d$oK1$tGra" role="3cqZAp">
              <node concept="3SKdUq" id="7d$oK1$tGs2" role="3SKWNk">
                <property role="3SKdUp" value="var ground" />
              </node>
            </node>
            <node concept="3clFbF" id="7d$oK1$tGxR" role="3cqZAp">
              <node concept="2OqwBi" id="7d$oK1$tGxS" role="3clFbG">
                <node concept="37vLTw" id="7d$oK1$tGxT" role="2Oq$k0">
                  <ref role="3cqZAo" node="2GO7tyK1GJ3" resolve="scope" />
                </node>
                <node concept="liA8E" id="7d$oK1$tGxU" role="2OqNvi">
                  <ref role="37wK5l" to="yg8f:2GO7tyJSk6b" resolve="tell" />
                  <node concept="10M0yZ" id="7d$oK1$tGxV" role="37wK5m">
                    <ref role="1PxDUh" to="oy3s:2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                    <ref role="3cqZAo" to="oy3s:2GO7tyJY8Rr" resolve="INSTANCE" />
                  </node>
                  <node concept="2YIFZM" id="6tTPqJYYpTB" role="37wK5m">
                    <ref role="37wK5l" to="ie8e:5JQSuNsxMzt" resolve="create" />
                    <ref role="1Pybhc" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
                    <node concept="2OqwBi" id="7d$oK1$tH9s" role="37wK5m">
                      <node concept="37vLTw" id="6tTPqJYYqdy" role="2Oq$k0">
                        <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
                      </node>
                      <node concept="liA8E" id="7d$oK1$tH9u" role="2OqNvi">
                        <ref role="37wK5l" to="oy3s:1Ns6gpY6DeD" resolve="asTreePart" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="7d$oK1$tGxZ" role="37wK5m">
                    <ref role="3cqZAo" node="1bm7a6ESoe6" resolve="rightVal" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7d$oK1$tGsU" role="3cqZAp" />
          </node>
          <node concept="1Wc70l" id="1bm7a6ETQ0A" role="3clFbw">
            <node concept="3y3z36" id="1bm7a6ETQeM" role="3uHU7w">
              <node concept="10Nm6u" id="1bm7a6ETQfV" role="3uHU7w" />
              <node concept="37vLTw" id="1bm7a6ETQcj" role="3uHU7B">
                <ref role="3cqZAo" node="1bm7a6ESoe6" resolve="rightVal" />
              </node>
            </node>
            <node concept="3clFbC" id="1bm7a6ETPON" role="3uHU7B">
              <node concept="37vLTw" id="1bm7a6ETPE4" role="3uHU7B">
                <ref role="3cqZAo" node="1bm7a6ESoe0" resolve="leftVal" />
              </node>
              <node concept="10Nm6u" id="1bm7a6ETPZX" role="3uHU7w" />
            </node>
          </node>
          <node concept="3eNFk2" id="7d$oK1$tFlc" role="3eNLev">
            <node concept="3clFbS" id="7d$oK1$tFle" role="3eOfB_">
              <node concept="3SKdUt" id="7d$oK1$tH2D" role="3cqZAp">
                <node concept="3SKdUq" id="7d$oK1$tH2F" role="3SKWNk">
                  <property role="3SKdUp" value="ground var" />
                </node>
              </node>
              <node concept="3clFbF" id="7d$oK1$tH9m" role="3cqZAp">
                <node concept="2OqwBi" id="7d$oK1$tH9n" role="3clFbG">
                  <node concept="37vLTw" id="7d$oK1$tH9o" role="2Oq$k0">
                    <ref role="3cqZAo" node="2GO7tyK1GJ3" resolve="scope" />
                  </node>
                  <node concept="liA8E" id="7d$oK1$tH9p" role="2OqNvi">
                    <ref role="37wK5l" to="yg8f:2GO7tyJSk6b" resolve="tell" />
                    <node concept="10M0yZ" id="7d$oK1$tH9q" role="37wK5m">
                      <ref role="3cqZAo" to="oy3s:2GO7tyJY8Rr" resolve="INSTANCE" />
                      <ref role="1PxDUh" to="oy3s:2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                    </node>
                    <node concept="37vLTw" id="7d$oK1$tH9r" role="37wK5m">
                      <ref role="3cqZAo" node="1bm7a6ESoe0" resolve="leftVal" />
                    </node>
                    <node concept="2YIFZM" id="6tTPqJYYpAF" role="37wK5m">
                      <ref role="37wK5l" to="ie8e:5JQSuNsxMzt" resolve="create" />
                      <ref role="1Pybhc" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
                      <node concept="2OqwBi" id="6tTPqJYYpAG" role="37wK5m">
                        <node concept="37vLTw" id="6tTPqJYYpAH" role="2Oq$k0">
                          <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
                        </node>
                        <node concept="liA8E" id="6tTPqJYYpAI" role="2OqNvi">
                          <ref role="37wK5l" to="oy3s:1Ns6gpY6DeD" resolve="asTreePart" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7d$oK1$tH3z" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="7d$oK1$tFr4" role="3eO9$A">
              <node concept="3clFbC" id="7d$oK1$tFIV" role="3uHU7w">
                <node concept="37vLTw" id="7d$oK1$tFIY" role="3uHU7B">
                  <ref role="3cqZAo" node="1bm7a6ESoe6" resolve="rightVal" />
                </node>
                <node concept="10Nm6u" id="7d$oK1$tFIX" role="3uHU7w" />
              </node>
              <node concept="3y3z36" id="7d$oK1$tFz3" role="3uHU7B">
                <node concept="37vLTw" id="7d$oK1$tFz5" role="3uHU7B">
                  <ref role="3cqZAo" node="1bm7a6ESoe0" resolve="leftVal" />
                </node>
                <node concept="10Nm6u" id="7d$oK1$tFz6" role="3uHU7w" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7d$oK1$tF_5" role="3eNLev">
            <node concept="3clFbS" id="7d$oK1$tF_7" role="3eOfB_">
              <node concept="3clFbF" id="7d$oK1$tIit" role="3cqZAp">
                <node concept="2OqwBi" id="7d$oK1$tIiu" role="3clFbG">
                  <node concept="37vLTw" id="7d$oK1$tIiv" role="2Oq$k0">
                    <ref role="3cqZAo" node="2GO7tyK1GJ3" resolve="scope" />
                  </node>
                  <node concept="liA8E" id="7d$oK1$tIiw" role="2OqNvi">
                    <ref role="37wK5l" to="yg8f:2GO7tyJSk6b" resolve="tell" />
                    <node concept="10M0yZ" id="7d$oK1$tIix" role="37wK5m">
                      <ref role="3cqZAo" to="oy3s:2GO7tyJY8Rr" resolve="INSTANCE" />
                      <ref role="1PxDUh" to="oy3s:2GO7tyJVmP4" resolve="UnificationBuiltinConstraint" />
                    </node>
                    <node concept="2YIFZM" id="6tTPqJYYoNq" role="37wK5m">
                      <ref role="37wK5l" to="ie8e:5JQSuNsxMzt" resolve="create" />
                      <ref role="1Pybhc" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
                      <node concept="2OqwBi" id="6tTPqJYYoNr" role="37wK5m">
                        <node concept="37vLTw" id="6tTPqJYYp8P" role="2Oq$k0">
                          <ref role="3cqZAo" node="7d$oK1$rAnE" resolve="leftRepr" />
                        </node>
                        <node concept="liA8E" id="6tTPqJYYoNt" role="2OqNvi">
                          <ref role="37wK5l" to="oy3s:1Ns6gpY6DeD" resolve="asTreePart" />
                        </node>
                      </node>
                    </node>
                    <node concept="2YIFZM" id="6tTPqJYYjQe" role="37wK5m">
                      <ref role="37wK5l" to="ie8e:5JQSuNsxMzt" resolve="create" />
                      <ref role="1Pybhc" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
                      <node concept="2OqwBi" id="6tTPqJYYowp" role="37wK5m">
                        <node concept="37vLTw" id="6tTPqJYYowq" role="2Oq$k0">
                          <ref role="3cqZAo" node="7d$oK1$rAnK" resolve="rightRepr" />
                        </node>
                        <node concept="liA8E" id="6tTPqJYYowr" role="2OqNvi">
                          <ref role="37wK5l" to="oy3s:1Ns6gpY6DeD" resolve="asTreePart" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="7d$oK1$tIGb" role="3cqZAp" />
            </node>
            <node concept="1Wc70l" id="7d$oK1$tFF6" role="3eO9$A">
              <node concept="3clFbC" id="7d$oK1$tFVF" role="3uHU7w">
                <node concept="37vLTw" id="7d$oK1$tFVH" role="3uHU7B">
                  <ref role="3cqZAo" node="1bm7a6ESoe6" resolve="rightVal" />
                </node>
                <node concept="10Nm6u" id="7d$oK1$tFVI" role="3uHU7w" />
              </node>
              <node concept="3clFbC" id="7d$oK1$tFFa" role="3uHU7B">
                <node concept="37vLTw" id="7d$oK1$tFFb" role="3uHU7B">
                  <ref role="3cqZAo" node="1bm7a6ESoe0" resolve="leftVal" />
                </node>
                <node concept="10Nm6u" id="7d$oK1$tFFc" role="3uHU7w" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="7d$oK1$tGdh" role="9aQIa">
            <node concept="3clFbS" id="7d$oK1$tGdi" role="9aQI4">
              <node concept="3clFbF" id="7d$oK1$tJzo" role="3cqZAp">
                <node concept="1rXfSq" id="7d$oK1$tJzn" role="3clFbG">
                  <ref role="37wK5l" node="2GO7tyJW8LD" resolve="tellContains" />
                  <node concept="37vLTw" id="7d$oK1$tJW6" role="37wK5m">
                    <ref role="3cqZAo" node="1bm7a6ESoe0" resolve="leftVal" />
                  </node>
                  <node concept="37vLTw" id="7d$oK1$tJZF" role="37wK5m">
                    <ref role="3cqZAo" node="1bm7a6ESoe6" resolve="rightVal" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJWhWk" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJW8Mp" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askContains" />
      <node concept="37vLTG" id="2GO7tyJW8Mq" role="3clF46">
        <property role="TrG5h" value="leftVal" />
        <node concept="3uibUv" id="2GO7tyJW8Mr" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJW8Ms" role="3clF46">
        <property role="TrG5h" value="rightVal" />
        <node concept="3uibUv" id="2GO7tyJW8Mt" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="10P_77" id="2GO7tyJW8Mu" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJW8Mv" role="1B3o_S" />
      <node concept="2AHcQZ" id="2GO7tyJW8Mx" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="2GO7tyJW8My" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="2GO7tyJW8Mz" role="2B70Vg">
            <ref role="1PxDUh" node="2GO7tyJMZEq" resolve="ContainmentBuiltinConstraint" />
            <ref role="3cqZAo" node="2GO7tyJMZW7" resolve="CONTAINS" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2GO7tyJW8M$" role="3clF47">
        <node concept="3clFbJ" id="7d$oK1$uXPg" role="3cqZAp">
          <node concept="3clFbS" id="7d$oK1$uXPh" role="3clFbx">
            <node concept="3cpWs6" id="7d$oK1$uXPi" role="3cqZAp">
              <node concept="3clFbT" id="7d$oK1$nQ59" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7d$oK1$uXPj" role="3clFbw">
            <node concept="37vLTw" id="7d$oK1$uXPk" role="3uHU7w">
              <ref role="3cqZAo" node="2GO7tyJW8Ms" resolve="rightVal" />
            </node>
            <node concept="37vLTw" id="7d$oK1$uXPl" role="3uHU7B">
              <ref role="3cqZAo" node="2GO7tyJW8Mq" resolve="leftVal" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$uXi0" role="3cqZAp" />
        <node concept="3cpWs8" id="2GO7tyJDsUn" role="3cqZAp">
          <node concept="3cpWsn" id="2GO7tyJDsUo" role="3cpWs9">
            <property role="TrG5h" value="leftImage" />
            <node concept="3uibUv" id="2GO7tyJDsUp" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="2YIFZM" id="2GO7tyJDsUq" role="33vP2m">
              <ref role="1Pybhc" to="c87j:2GO7tyJmunM" resolve="DomainTranslationTable" />
              <ref role="37wK5l" to="c87j:2GO7tyJvXGg" resolve="toTargetDomain" />
              <node concept="37vLTw" id="2GO7tyJZSME" role="37wK5m">
                <ref role="3cqZAo" node="2GO7tyJW8Mq" resolve="leftVal" />
              </node>
              <node concept="Xl_RD" id="2GO7tyJZRWS" role="37wK5m">
                <property role="Xl_RC" value="variable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2GO7tyJZT9N" role="3cqZAp">
          <node concept="3cpWsn" id="2GO7tyJZT9O" role="3cpWs9">
            <property role="TrG5h" value="rightImage" />
            <node concept="3uibUv" id="2GO7tyJZT9P" role="1tU5fm">
              <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
            </node>
            <node concept="2YIFZM" id="2GO7tyJZT9Q" role="33vP2m">
              <ref role="1Pybhc" to="c87j:2GO7tyJmunM" resolve="DomainTranslationTable" />
              <ref role="37wK5l" to="c87j:2GO7tyJvXGg" resolve="toTargetDomain" />
              <node concept="37vLTw" id="2GO7tyJZTIh" role="37wK5m">
                <ref role="3cqZAo" node="2GO7tyJW8Ms" resolve="rightVal" />
              </node>
              <node concept="Xl_RD" id="2GO7tyJZT9S" role="37wK5m">
                <property role="Xl_RC" value="variable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2GO7tyJZDPY" role="3cqZAp" />
        <node concept="3clFbJ" id="2GO7tyJDsUt" role="3cqZAp">
          <node concept="3clFbS" id="2GO7tyJDsUu" role="3clFbx">
            <node concept="3cpWs6" id="2GO7tyJDsUv" role="3cqZAp">
              <node concept="3clFbT" id="2GO7tyJDsUw" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="2GO7tyJZY$Y" role="3clFbw">
            <node concept="3clFbC" id="2GO7tyK00kk" role="3uHU7w">
              <node concept="10Nm6u" id="2GO7tyK00mr" role="3uHU7w" />
              <node concept="37vLTw" id="2GO7tyJZZVu" role="3uHU7B">
                <ref role="3cqZAo" node="2GO7tyJZT9O" resolve="rightImage" />
              </node>
            </node>
            <node concept="3clFbC" id="2GO7tyJDsUx" role="3uHU7B">
              <node concept="37vLTw" id="2GO7tyJZYzl" role="3uHU7B">
                <ref role="3cqZAo" node="2GO7tyJDsUo" resolve="leftImage" />
              </node>
              <node concept="10Nm6u" id="2GO7tyJDsUy" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2GO7tyK00nD" role="3cqZAp" />
        <node concept="3cpWs8" id="2GO7tyK1SoR" role="3cqZAp">
          <node concept="3cpWsn" id="2GO7tyK1SoS" role="3cpWs9">
            <property role="TrG5h" value="lowerBoundOk" />
            <node concept="10P_77" id="2GO7tyK1SoM" role="1tU5fm" />
            <node concept="2OqwBi" id="2GO7tyK1SoT" role="33vP2m">
              <node concept="37vLTw" id="2GO7tyK1SoU" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyK1GJ3" resolve="scope" />
              </node>
              <node concept="liA8E" id="2GO7tyK1SoV" role="2OqNvi">
                <ref role="37wK5l" to="yg8f:2GO7tyJSjFd" resolve="ask" />
                <node concept="10M0yZ" id="2GO7tyK1SoW" role="37wK5m">
                  <ref role="1PxDUh" to="mqgp:2GO7tyJMFXV" resolve="ConversionBuiltinConstraint" />
                  <ref role="3cqZAo" to="mqgp:2GO7tyJMMJq" resolve="INSTANCE" />
                </node>
                <node concept="2YIFZM" id="2GO7tyK1SoX" role="37wK5m">
                  <ref role="1Pybhc" to="c87j:2GO7tyK05eH" resolve="BoundedTypes" />
                  <ref role="37wK5l" to="c87j:2GO7tyK08CK" resolve="lowerBound" />
                  <node concept="37vLTw" id="2GO7tyK1SoY" role="37wK5m">
                    <ref role="3cqZAo" node="2GO7tyJZT9O" resolve="rightImage" />
                  </node>
                </node>
                <node concept="2YIFZM" id="2GO7tyK1SoZ" role="37wK5m">
                  <ref role="1Pybhc" to="c87j:2GO7tyK05eH" resolve="BoundedTypes" />
                  <ref role="37wK5l" to="c87j:2GO7tyK08CK" resolve="lowerBound" />
                  <node concept="37vLTw" id="2GO7tyK1Sp0" role="37wK5m">
                    <ref role="3cqZAo" node="2GO7tyJDsUo" resolve="leftImage" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2GO7tyK1OeG" role="3cqZAp" />
        <node concept="3cpWs8" id="2GO7tyK1U20" role="3cqZAp">
          <node concept="3cpWsn" id="2GO7tyK1U21" role="3cpWs9">
            <property role="TrG5h" value="upperBoundOk" />
            <node concept="10P_77" id="2GO7tyK1U1T" role="1tU5fm" />
            <node concept="2OqwBi" id="2GO7tyK1U22" role="33vP2m">
              <node concept="37vLTw" id="2GO7tyK1U23" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyK1GJ3" resolve="scope" />
              </node>
              <node concept="liA8E" id="2GO7tyK1U24" role="2OqNvi">
                <ref role="37wK5l" to="yg8f:2GO7tyJSjFd" resolve="ask" />
                <node concept="10M0yZ" id="2GO7tyK1U25" role="37wK5m">
                  <ref role="1PxDUh" to="mqgp:2GO7tyJMFXV" resolve="ConversionBuiltinConstraint" />
                  <ref role="3cqZAo" to="mqgp:2GO7tyJMMJq" resolve="INSTANCE" />
                </node>
                <node concept="2YIFZM" id="2GO7tyK1U26" role="37wK5m">
                  <ref role="37wK5l" to="c87j:2GO7tyK1cet" resolve="upperBound" />
                  <ref role="1Pybhc" to="c87j:2GO7tyK05eH" resolve="BoundedTypes" />
                  <node concept="37vLTw" id="2GO7tyK1U27" role="37wK5m">
                    <ref role="3cqZAo" node="2GO7tyJDsUo" resolve="leftImage" />
                  </node>
                </node>
                <node concept="2YIFZM" id="2GO7tyK1U28" role="37wK5m">
                  <ref role="37wK5l" to="c87j:2GO7tyK1cet" resolve="upperBound" />
                  <ref role="1Pybhc" to="c87j:2GO7tyK05eH" resolve="BoundedTypes" />
                  <node concept="37vLTw" id="2GO7tyK1U29" role="37wK5m">
                    <ref role="3cqZAo" node="2GO7tyJZT9O" resolve="rightImage" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2GO7tyK26hu" role="3cqZAp" />
        <node concept="3clFbF" id="2GO7tyK1Wd5" role="3cqZAp">
          <node concept="1Wc70l" id="2GO7tyK1WX1" role="3clFbG">
            <node concept="37vLTw" id="2GO7tyK1X4F" role="3uHU7w">
              <ref role="3cqZAo" node="2GO7tyK1U21" resolve="upperBoundOk" />
            </node>
            <node concept="37vLTw" id="2GO7tyK1Wd3" role="3uHU7B">
              <ref role="3cqZAo" node="2GO7tyK1SoS" resolve="lowerBoundOk" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJWiuH" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJW8MB" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askContains" />
      <node concept="37vLTG" id="2GO7tyJW8MC" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2GO7tyJW8MD" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJW8ME" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2GO7tyJW8MF" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="10P_77" id="2GO7tyJW8MG" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJW8MH" role="1B3o_S" />
      <node concept="2AHcQZ" id="2GO7tyJW8MJ" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="2GO7tyJW8MK" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="2GO7tyJW8ML" role="2B70Vg">
            <ref role="1PxDUh" node="2GO7tyJMZEq" resolve="ContainmentBuiltinConstraint" />
            <ref role="3cqZAo" node="2GO7tyJMZW7" resolve="CONTAINS" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2GO7tyJW8MM" role="3clF47">
        <node concept="3cpWs8" id="7d$oK1$nF6P" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$nF6Q" role="3cpWs9">
            <property role="TrG5h" value="rightRepr" />
            <node concept="3uibUv" id="7d$oK1$nF6R" role="1tU5fm">
              <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
            </node>
            <node concept="2OqwBi" id="7d$oK1$nF6S" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$nFP8" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyJW8ME" resolve="right" />
              </node>
              <node concept="liA8E" id="7d$oK1$nF6U" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$nF6V" role="3cqZAp" />
        <node concept="3SKdUt" id="7d$oK1$nF6W" role="3cqZAp">
          <node concept="3SKdUq" id="7d$oK1$nF6X" role="3SKWNk">
            <property role="3SKdUp" value="TODO: unification would succeed in case the variable is free, no?" />
          </node>
        </node>
        <node concept="3clFbJ" id="7d$oK1$nF6Y" role="3cqZAp">
          <node concept="3clFbS" id="7d$oK1$nF6Z" role="3clFbx">
            <node concept="3cpWs6" id="7d$oK1$nF70" role="3cqZAp">
              <node concept="3clFbT" id="7d$oK1$nF71" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="7d$oK1$nF72" role="3clFbw">
            <node concept="10Nm6u" id="7d$oK1$nF73" role="3uHU7w" />
            <node concept="2OqwBi" id="7d$oK1$nF74" role="3uHU7B">
              <node concept="37vLTw" id="7d$oK1$nF75" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$nF6Q" resolve="rightRepr" />
              </node>
              <node concept="liA8E" id="7d$oK1$nF76" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$tZY6" role="3cqZAp" />
        <node concept="3clFbF" id="7d$oK1$u0CY" role="3cqZAp">
          <node concept="1rXfSq" id="7d$oK1$u0CW" role="3clFbG">
            <ref role="37wK5l" node="2GO7tyJW8Mp" resolve="askContains" />
            <node concept="37vLTw" id="7d$oK1$u1kl" role="37wK5m">
              <ref role="3cqZAo" node="2GO7tyJW8MC" resolve="left" />
            </node>
            <node concept="2OqwBi" id="7d$oK1$u2r3" role="37wK5m">
              <node concept="37vLTw" id="7d$oK1$u2je" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$nF6Q" resolve="rightRepr" />
              </node>
              <node concept="liA8E" id="7d$oK1$u3rN" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJWj1P" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJW8MP" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askContains" />
      <node concept="37vLTG" id="2GO7tyJW8MQ" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2GO7tyJW8MR" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJW8MS" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2GO7tyJW8MT" role="1tU5fm">
          <ref role="3uigEE" to="ie8e:2xQ7eRABXh4" resolve="Tree" />
        </node>
      </node>
      <node concept="10P_77" id="2GO7tyJW8MU" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJW8MV" role="1B3o_S" />
      <node concept="2AHcQZ" id="2GO7tyJW8MX" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="2GO7tyJW8MY" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="2GO7tyJW8MZ" role="2B70Vg">
            <ref role="1PxDUh" node="2GO7tyJMZEq" resolve="ContainmentBuiltinConstraint" />
            <ref role="3cqZAo" node="2GO7tyJMZW7" resolve="CONTAINS" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2GO7tyJW8N0" role="3clF47">
        <node concept="3cpWs8" id="4U_yxogDnOi" role="3cqZAp">
          <node concept="3cpWsn" id="4U_yxogDnOj" role="3cpWs9">
            <property role="TrG5h" value="leftRepr" />
            <node concept="3uibUv" id="4U_yxogDnOk" role="1tU5fm">
              <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
            </node>
            <node concept="2OqwBi" id="4U_yxogDnOl" role="33vP2m">
              <node concept="37vLTw" id="4U_yxogDock" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyJW8MQ" resolve="left" />
              </node>
              <node concept="liA8E" id="4U_yxogDnOn" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$njfA" role="3cqZAp" />
        <node concept="3SKdUt" id="5oZZzbriJTh" role="3cqZAp">
          <node concept="3SKdUq" id="5oZZzbriJTi" role="3SKWNk">
            <property role="3SKdUp" value="TODO: unification would succeed in case the variable is free, no?" />
          </node>
        </node>
        <node concept="3clFbJ" id="4U_yxogDnOp" role="3cqZAp">
          <node concept="3clFbS" id="4U_yxogDnOq" role="3clFbx">
            <node concept="3cpWs6" id="4U_yxogDnOr" role="3cqZAp">
              <node concept="3clFbT" id="5oZZzbriPgw" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="4U_yxogDnOt" role="3clFbw">
            <node concept="10Nm6u" id="4U_yxogDnOu" role="3uHU7w" />
            <node concept="2OqwBi" id="4U_yxogDnOv" role="3uHU7B">
              <node concept="37vLTw" id="4U_yxogDnOw" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogDnOj" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="4U_yxogDnOx" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$njgp" role="3cqZAp" />
        <node concept="3clFbF" id="7d$oK1$nC13" role="3cqZAp">
          <node concept="1rXfSq" id="7d$oK1$nC11" role="3clFbG">
            <ref role="37wK5l" node="2GO7tyJW8Mp" resolve="askContains" />
            <node concept="2OqwBi" id="7d$oK1$nHLi" role="37wK5m">
              <node concept="37vLTw" id="7d$oK1$nCIO" role="2Oq$k0">
                <ref role="3cqZAo" node="4U_yxogDnOj" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="7d$oK1$nHRy" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
            <node concept="37vLTw" id="7d$oK1$nD6y" role="37wK5m">
              <ref role="3cqZAo" node="2GO7tyJW8MS" resolve="right" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJWj_0" role="jymVt" />
    <node concept="3clFb_" id="2GO7tyJW8N3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="askContains" />
      <node concept="37vLTG" id="2GO7tyJW8N4" role="3clF46">
        <property role="TrG5h" value="left" />
        <node concept="3uibUv" id="2GO7tyJW8N5" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="37vLTG" id="2GO7tyJW8N6" role="3clF46">
        <property role="TrG5h" value="right" />
        <node concept="3uibUv" id="2GO7tyJW8N7" role="1tU5fm">
          <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
        </node>
      </node>
      <node concept="10P_77" id="2GO7tyJW8N8" role="3clF45" />
      <node concept="3Tm1VV" id="2GO7tyJW8N9" role="1B3o_S" />
      <node concept="2AHcQZ" id="2GO7tyJW8Nb" role="2AJF6D">
        <ref role="2AI5Lk" to="9sk9:~JCHR_Asks" resolve="JCHR_Asks" />
        <node concept="2B6LJw" id="2GO7tyJW8Nc" role="2B76xF">
          <ref role="2B6OnR" to="9sk9:~JCHR_Asks.value()" resolve="value" />
          <node concept="10M0yZ" id="2GO7tyJW8Nd" role="2B70Vg">
            <ref role="1PxDUh" node="2GO7tyJMZEq" resolve="ContainmentBuiltinConstraint" />
            <ref role="3cqZAo" node="2GO7tyJMZW7" resolve="CONTAINS" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2GO7tyJW8Ne" role="3clF47">
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
              <ref role="3cqZAo" node="2GO7tyJW8N6" resolve="right" />
            </node>
            <node concept="37vLTw" id="4U_yxogC7yw" role="3uHU7B">
              <ref role="3cqZAo" node="2GO7tyJW8N4" resolve="left" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$nOIG" role="3cqZAp" />
        <node concept="3cpWs8" id="7d$oK1$nL7E" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$nL7F" role="3cpWs9">
            <property role="TrG5h" value="leftRepr" />
            <node concept="3uibUv" id="7d$oK1$nL7G" role="1tU5fm">
              <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
            </node>
            <node concept="2OqwBi" id="7d$oK1$nL7H" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$nL7I" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyJW8N4" resolve="left" />
              </node>
              <node concept="liA8E" id="7d$oK1$nL7J" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7d$oK1$nLDM" role="3cqZAp">
          <node concept="3cpWsn" id="7d$oK1$nLDN" role="3cpWs9">
            <property role="TrG5h" value="rightRepr" />
            <node concept="3uibUv" id="7d$oK1$nLDO" role="1tU5fm">
              <ref role="3uigEE" to="oy3s:4U_yxogAknZ" resolve="TreeLogical" />
            </node>
            <node concept="2OqwBi" id="7d$oK1$nLDP" role="33vP2m">
              <node concept="37vLTw" id="7d$oK1$nLDQ" role="2Oq$k0">
                <ref role="3cqZAo" node="2GO7tyJW8N6" resolve="right" />
              </node>
              <node concept="liA8E" id="7d$oK1$nLDR" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:dfChU1gcsX" resolve="findRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$nM8a" role="3cqZAp" />
        <node concept="3clFbJ" id="7d$oK1$o1go" role="3cqZAp">
          <node concept="3clFbS" id="7d$oK1$o1gp" role="3clFbx">
            <node concept="3cpWs6" id="7d$oK1$o1gq" role="3cqZAp">
              <node concept="3clFbT" id="7d$oK1$o1gr" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7d$oK1$o1gs" role="3clFbw">
            <node concept="37vLTw" id="7d$oK1$o2Ja" role="3uHU7w">
              <ref role="3cqZAo" node="7d$oK1$nLDN" resolve="rightRepr" />
            </node>
            <node concept="37vLTw" id="7d$oK1$o2mb" role="3uHU7B">
              <ref role="3cqZAo" node="7d$oK1$nL7F" resolve="leftRepr" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$nM92" role="3cqZAp" />
        <node concept="3SKdUt" id="5oZZzbriGZp" role="3cqZAp">
          <node concept="3SKdUq" id="5oZZzbriIru" role="3SKWNk">
            <property role="3SKdUp" value="TODO: unification would succeed in case either variable is free, no?" />
          </node>
        </node>
        <node concept="3clFbJ" id="5oZZzbrizbG" role="3cqZAp">
          <node concept="3clFbS" id="5oZZzbrizbH" role="3clFbx">
            <node concept="3cpWs6" id="5oZZzbrizbI" role="3cqZAp">
              <node concept="3clFbT" id="5oZZzbriA29" role="3cqZAk" />
            </node>
          </node>
          <node concept="22lmx$" id="5oZZzbrizbK" role="3clFbw">
            <node concept="3clFbC" id="5oZZzbrizbL" role="3uHU7w">
              <node concept="10Nm6u" id="5oZZzbrizbM" role="3uHU7w" />
              <node concept="2OqwBi" id="5oZZzbrizbN" role="3uHU7B">
                <node concept="37vLTw" id="7d$oK1$oaSF" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$nLDN" resolve="rightRepr" />
                </node>
                <node concept="liA8E" id="5oZZzbrizbP" role="2OqNvi">
                  <ref role="37wK5l" to="oy3s:3HJTsBmBZ0h" resolve="value" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="5oZZzbrizbQ" role="3uHU7B">
              <node concept="2OqwBi" id="5oZZzbrizbR" role="3uHU7B">
                <node concept="37vLTw" id="7d$oK1$oaqT" role="2Oq$k0">
                  <ref role="3cqZAo" node="7d$oK1$nL7F" resolve="leftRepr" />
                </node>
                <node concept="liA8E" id="5oZZzbrizbT" role="2OqNvi">
                  <ref role="37wK5l" to="oy3s:3HJTsBmBZ0h" resolve="value" />
                </node>
              </node>
              <node concept="10Nm6u" id="5oZZzbrizbU" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7d$oK1$o37W" role="3cqZAp" />
        <node concept="3clFbF" id="7d$oK1$op25" role="3cqZAp">
          <node concept="1rXfSq" id="7d$oK1$op23" role="3clFbG">
            <ref role="37wK5l" node="2GO7tyJW8Mp" resolve="askContains" />
            <node concept="2OqwBi" id="7d$oK1$opLo" role="37wK5m">
              <node concept="37vLTw" id="7d$oK1$opLp" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$nL7F" resolve="leftRepr" />
              </node>
              <node concept="liA8E" id="7d$oK1$opLq" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
            <node concept="2OqwBi" id="7d$oK1$opUG" role="37wK5m">
              <node concept="37vLTw" id="7d$oK1$opUH" role="2Oq$k0">
                <ref role="3cqZAo" node="7d$oK1$nLDN" resolve="rightRepr" />
              </node>
              <node concept="liA8E" id="7d$oK1$opUI" role="2OqNvi">
                <ref role="37wK5l" to="oy3s:3HJTsBmBZ0h" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2GO7tyJWeGI" role="jymVt" />
    <node concept="312cEg" id="2GO7tyJWbJT" role="jymVt">
      <property role="TrG5h" value="constraintSystem" />
      <node concept="3Tm6S6" id="2GO7tyJWbJU" role="1B3o_S" />
      <node concept="3uibUv" id="2GO7tyJWbJW" role="1tU5fm">
        <ref role="3uigEE" to="w2rx:~ConstraintSystem" resolve="ConstraintSystem" />
      </node>
    </node>
    <node concept="312cEg" id="2GO7tyK1GJ3" role="jymVt">
      <property role="TrG5h" value="scope" />
      <node concept="3Tm6S6" id="2GO7tyK1GJ4" role="1B3o_S" />
      <node concept="3uibUv" id="2GO7tyK1GJ6" role="1tU5fm">
        <ref role="3uigEE" to="yg8f:2GO7tyJS2HQ" resolve="SolverFarm" />
      </node>
    </node>
  </node>
</model>

