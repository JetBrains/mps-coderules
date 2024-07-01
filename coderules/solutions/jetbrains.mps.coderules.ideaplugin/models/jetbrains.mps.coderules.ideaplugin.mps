<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:835f8ea3-a800-4588-a80b-1de6d47c2098(jetbrains.mps.coderules.ideaplugin)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="2" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="qqrq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.components(MPS.IDEA/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" />
    <import index="g1qu" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.ui(MPS.IDEA/)" />
    <import index="hq8m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.options(MPS.IDEA/)" />
    <import index="zn9m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util(MPS.IDEA/)" />
    <import index="ctgy" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.plugins(MPS.IDEA/)" />
    <import index="9ti4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.extensions(MPS.IDEA/)" />
    <import index="j936" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.ui(MPS.IDEA/)" />
    <import index="jkny" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.wm(MPS.IDEA/)" />
    <import index="mnlj" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.beans(JDK/)" />
    <import index="4b2m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.messages(MPS.IDEA/)" />
    <import index="9w4s" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util(MPS.IDEA/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="rfhd" ref="3a8d80d2-32d9-f1f2-4443-6a1111e12ef3/java:com.intellij.openapi.util.registry(MPS.Boot/)" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="8974276187400029883" name="jetbrains.mps.lang.resources.structure.FileIcon" flags="ng" index="1QGGSu">
        <property id="1805901909778165289" name="newuiFile" index="uyjgh" />
        <property id="2756621024541341363" name="file" index="1iqoE4" />
      </concept>
      <concept id="8974276187400029891" name="jetbrains.mps.lang.resources.structure.IconExpression" flags="nn" index="1QGGTA">
        <child id="8974276187400029893" name="icon" index="1QGGTw" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="5279705229678483897" name="jetbrains.mps.baseLanguage.structure.FloatingPointFloatConstant" flags="nn" index="2$xPTn">
        <property id="5279705229678483899" name="value" index="2$xPTl" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
        <child id="1188214630783" name="value" index="2B76xF" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
      </concept>
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
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534436861" name="jetbrains.mps.baseLanguage.structure.FloatType" flags="in" index="10OMs4" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ngI" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
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
      <concept id="7024111702304501416" name="jetbrains.mps.baseLanguage.structure.OrAssignmentExpression" flags="nn" index="3vZ8r8" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="6832197706140896242" name="jetbrains.mps.baseLanguage.javadoc.structure.FieldDocComment" flags="ng" index="z59LJ" />
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7">
        <property id="8575328350543493365" name="message" index="huDt6" />
        <property id="2423417345669755629" name="filter" index="1eyWvh" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="2CPBoDC$4yq">
    <property role="TrG5h" value="TypecheckingSettings" />
    <node concept="Wx3nA" id="adIlSuMV4x" role="jymVt">
      <property role="TrG5h" value="SINGLETON_INSTANCE" />
      <node concept="3Tm6S6" id="adIlSuMV4z" role="1B3o_S" />
      <node concept="3uibUv" id="adIlSuNcqc" role="1tU5fm">
        <ref role="3uigEE" node="2CPBoDC$4yq" resolve="TypecheckingSettings" />
      </node>
      <node concept="2ShNRf" id="adIlSuN3gp" role="33vP2m">
        <node concept="1pGfFk" id="adIlSuNqWv" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" node="51kI2ZZRFfV" resolve="TypecheckingSettings" />
        </node>
      </node>
      <node concept="z59LJ" id="adIlSuNxoI" role="lGtFl">
        <node concept="TZ5HA" id="adIlSuNxoJ" role="TZ5H$">
          <node concept="1dT_AC" id="adIlSuNxoK" role="1dT_Ay">
            <property role="1dT_AB" value="Dummy singleton that forwards all queries to Registry." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2CPBoDC$eqY" role="jymVt" />
    <node concept="3clFbW" id="51kI2ZZRFfV" role="jymVt">
      <node concept="3cqZAl" id="51kI2ZZRFfX" role="3clF45" />
      <node concept="3Tm6S6" id="2KmwpQZoIOO" role="1B3o_S" />
      <node concept="3clFbS" id="51kI2ZZRFfZ" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="51kI2ZZREUH" role="jymVt" />
    <node concept="2YIFZL" id="2CPBoDC$fEe" role="jymVt">
      <property role="TrG5h" value="getInstace" />
      <node concept="3uibUv" id="2CPBoDC$fIT" role="3clF45">
        <ref role="3uigEE" node="2CPBoDC$4yq" resolve="TypecheckingSettings" />
      </node>
      <node concept="3Tm1VV" id="2CPBoDC$fEh" role="1B3o_S" />
      <node concept="3clFbS" id="2CPBoDC$fEi" role="3clF47">
        <node concept="3cpWs6" id="adIlSuNskB" role="3cqZAp">
          <node concept="37vLTw" id="adIlSuN7oh" role="3cqZAk">
            <ref role="3cqZAo" node="adIlSuMV4x" resolve="SINGLETON_INSTANCE" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2CPBoDC$fzS" role="jymVt" />
    <node concept="3Tm1VV" id="2CPBoDC$4yr" role="1B3o_S" />
    <node concept="3clFb_" id="2CPBoDC$H71" role="jymVt">
      <property role="TrG5h" value="isTypecheckingEnabled" />
      <node concept="10P_77" id="2CPBoDC$Hkg" role="3clF45" />
      <node concept="3Tm1VV" id="2CPBoDC$H74" role="1B3o_S" />
      <node concept="3clFbS" id="2CPBoDC$H75" role="3clF47">
        <node concept="3clFbF" id="2KmwpQZoraA" role="3cqZAp">
          <node concept="2YIFZM" id="2KmwpQZorss" role="3clFbG">
            <ref role="37wK5l" to="rfhd:~Registry.is(java.lang.String)" resolve="is" />
            <ref role="1Pybhc" to="rfhd:~Registry" resolve="Registry" />
            <node concept="Xl_RD" id="2KmwpQZorUk" role="37wK5m">
              <property role="Xl_RC" value="mps.coderules.typechecking.enabled" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2CPBoDC$JxT" role="jymVt" />
    <node concept="3clFb_" id="2CPBoDC$ILw" role="jymVt">
      <property role="TrG5h" value="setTypecheckingEnabled" />
      <node concept="37vLTG" id="2CPBoDC$MdZ" role="3clF46">
        <property role="TrG5h" value="yes" />
        <node concept="10P_77" id="2CPBoDC$Mms" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="2CPBoDC$ILx" role="3clF45" />
      <node concept="3Tm1VV" id="2CPBoDC$ILy" role="1B3o_S" />
      <node concept="3clFbS" id="2CPBoDC$ILz" role="3clF47">
        <node concept="3clFbF" id="2KmwpQZoy0I" role="3cqZAp">
          <node concept="2OqwBi" id="2KmwpQZoy0J" role="3clFbG">
            <node concept="2YIFZM" id="2KmwpQZoy0K" role="2Oq$k0">
              <ref role="37wK5l" to="rfhd:~Registry.get(java.lang.String)" resolve="get" />
              <ref role="1Pybhc" to="rfhd:~Registry" resolve="Registry" />
              <node concept="Xl_RD" id="2KmwpQZoy0L" role="37wK5m">
                <property role="Xl_RC" value="mps.coderules.typechecking.enabled" />
              </node>
            </node>
            <node concept="liA8E" id="2KmwpQZoy0M" role="2OqNvi">
              <ref role="37wK5l" to="rfhd:~RegistryValue.setValue(boolean)" resolve="setValue" />
              <node concept="37vLTw" id="2KmwpQZoy0N" role="37wK5m">
                <ref role="3cqZAo" node="2CPBoDC$MdZ" resolve="yes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2KmwpQZoy0G" role="3cqZAp">
          <node concept="37vLTw" id="2KmwpQZoy0H" role="3clFbG">
            <ref role="3cqZAo" node="2CPBoDC$MdZ" resolve="yes" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2CPBoDC_l3N" role="jymVt" />
    <node concept="3clFb_" id="2CPBoDC_o9$" role="jymVt">
      <property role="TrG5h" value="isReportingEnabled" />
      <node concept="10P_77" id="2CPBoDC_o9_" role="3clF45" />
      <node concept="3Tm1VV" id="2CPBoDC_o9A" role="1B3o_S" />
      <node concept="3clFbS" id="2CPBoDC_o9B" role="3clF47">
        <node concept="3clFbF" id="2KmwpQZoxB4" role="3cqZAp">
          <node concept="2YIFZM" id="2KmwpQZoxB5" role="3clFbG">
            <ref role="37wK5l" to="rfhd:~Registry.is(java.lang.String)" resolve="is" />
            <ref role="1Pybhc" to="rfhd:~Registry" resolve="Registry" />
            <node concept="Xl_RD" id="2KmwpQZoxB6" role="37wK5m">
              <property role="Xl_RC" value="mps.coderules.typechecking.reporting" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2CPBoDC_o9z" role="jymVt" />
    <node concept="3clFb_" id="2CPBoDC_o9n" role="jymVt">
      <property role="TrG5h" value="setReportingEnabled" />
      <node concept="37vLTG" id="2CPBoDC_o9o" role="3clF46">
        <property role="TrG5h" value="yes" />
        <node concept="10P_77" id="2CPBoDC_o9p" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="2CPBoDC_o9q" role="3clF45" />
      <node concept="3Tm1VV" id="2CPBoDC_o9r" role="1B3o_S" />
      <node concept="3clFbS" id="2CPBoDC_o9s" role="3clF47">
        <node concept="3clFbF" id="2KmwpQZosyC" role="3cqZAp">
          <node concept="2OqwBi" id="2KmwpQZotwm" role="3clFbG">
            <node concept="2YIFZM" id="2KmwpQZoter" role="2Oq$k0">
              <ref role="37wK5l" to="rfhd:~Registry.get(java.lang.String)" resolve="get" />
              <ref role="1Pybhc" to="rfhd:~Registry" resolve="Registry" />
              <node concept="Xl_RD" id="2KmwpQZotes" role="37wK5m">
                <property role="Xl_RC" value="mps.coderules.typechecking.reporting" />
              </node>
            </node>
            <node concept="liA8E" id="2KmwpQZotVi" role="2OqNvi">
              <ref role="37wK5l" to="rfhd:~RegistryValue.setValue(boolean)" resolve="setValue" />
              <node concept="37vLTw" id="2KmwpQZoux6" role="37wK5m">
                <ref role="3cqZAo" node="2CPBoDC_o9o" resolve="yes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2KmwpQZoxqx" role="3cqZAp">
          <node concept="37vLTw" id="2KmwpQZoxqv" role="3clFbG">
            <ref role="3cqZAo" node="2CPBoDC_o9o" resolve="yes" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2CPBoDC_toC" role="jymVt" />
    <node concept="3clFb_" id="2CPBoDC_sJb" role="jymVt">
      <property role="TrG5h" value="isTracingEnabled" />
      <node concept="10P_77" id="2CPBoDC_sJc" role="3clF45" />
      <node concept="3Tm1VV" id="2CPBoDC_sJd" role="1B3o_S" />
      <node concept="3clFbS" id="2CPBoDC_sJe" role="3clF47">
        <node concept="3clFbF" id="2KmwpQZozOd" role="3cqZAp">
          <node concept="2YIFZM" id="2KmwpQZozOe" role="3clFbG">
            <ref role="37wK5l" to="rfhd:~Registry.is(java.lang.String)" resolve="is" />
            <ref role="1Pybhc" to="rfhd:~Registry" resolve="Registry" />
            <node concept="Xl_RD" id="2KmwpQZozOf" role="37wK5m">
              <property role="Xl_RC" value="mps.coderules.typechecking.trace" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2CPBoDC_sJa" role="jymVt" />
    <node concept="3clFb_" id="2CPBoDC_sIY" role="jymVt">
      <property role="TrG5h" value="setTracingEnabled" />
      <node concept="37vLTG" id="2CPBoDC_sIZ" role="3clF46">
        <property role="TrG5h" value="yes" />
        <node concept="10P_77" id="2CPBoDC_sJ0" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="2CPBoDC_sJ1" role="3clF45" />
      <node concept="3Tm1VV" id="2CPBoDC_sJ2" role="1B3o_S" />
      <node concept="3clFbS" id="2CPBoDC_sJ3" role="3clF47">
        <node concept="3clFbF" id="2KmwpQZoAi6" role="3cqZAp">
          <node concept="2OqwBi" id="2KmwpQZoAi7" role="3clFbG">
            <node concept="2YIFZM" id="2KmwpQZoAi8" role="2Oq$k0">
              <ref role="37wK5l" to="rfhd:~Registry.get(java.lang.String)" resolve="get" />
              <ref role="1Pybhc" to="rfhd:~Registry" resolve="Registry" />
              <node concept="Xl_RD" id="2KmwpQZoAi9" role="37wK5m">
                <property role="Xl_RC" value="mps.coderules.typechecking.trace" />
              </node>
            </node>
            <node concept="liA8E" id="2KmwpQZoAia" role="2OqNvi">
              <ref role="37wK5l" to="rfhd:~RegistryValue.setValue(boolean)" resolve="setValue" />
              <node concept="37vLTw" id="2KmwpQZoAib" role="37wK5m">
                <ref role="3cqZAo" node="2CPBoDC_sIZ" resolve="yes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2KmwpQZoAi4" role="3cqZAp">
          <node concept="37vLTw" id="2KmwpQZoAi5" role="3clFbG">
            <ref role="3cqZAo" node="2CPBoDC_sIZ" resolve="yes" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="23Habm5BUNY" role="jymVt" />
    <node concept="3clFb_" id="23Habm5BTlO" role="jymVt">
      <property role="TrG5h" value="isProfilingEnabled" />
      <node concept="10P_77" id="23Habm5BTlP" role="3clF45" />
      <node concept="3Tm1VV" id="23Habm5BTlQ" role="1B3o_S" />
      <node concept="3clFbS" id="23Habm5BTlR" role="3clF47">
        <node concept="3clFbF" id="2KmwpQZoCZq" role="3cqZAp">
          <node concept="2YIFZM" id="2KmwpQZoCZr" role="3clFbG">
            <ref role="37wK5l" to="rfhd:~Registry.is(java.lang.String)" resolve="is" />
            <ref role="1Pybhc" to="rfhd:~Registry" resolve="Registry" />
            <node concept="Xl_RD" id="2KmwpQZoCZs" role="37wK5m">
              <property role="Xl_RC" value="mps.coderules.profiling" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="23Habm5BTlN" role="jymVt" />
    <node concept="3clFb_" id="23Habm5BTlB" role="jymVt">
      <property role="TrG5h" value="setProfilingEnabled" />
      <node concept="37vLTG" id="23Habm5BTlC" role="3clF46">
        <property role="TrG5h" value="yes" />
        <node concept="10P_77" id="23Habm5BTlD" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="23Habm5BTlE" role="3clF45" />
      <node concept="3Tm1VV" id="23Habm5BTlF" role="1B3o_S" />
      <node concept="3clFbS" id="23Habm5BTlG" role="3clF47">
        <node concept="3clFbF" id="2KmwpQZoFLe" role="3cqZAp">
          <node concept="2OqwBi" id="2KmwpQZoFLf" role="3clFbG">
            <node concept="2YIFZM" id="2KmwpQZoFLg" role="2Oq$k0">
              <ref role="37wK5l" to="rfhd:~Registry.get(java.lang.String)" resolve="get" />
              <ref role="1Pybhc" to="rfhd:~Registry" resolve="Registry" />
              <node concept="Xl_RD" id="2KmwpQZoFLh" role="37wK5m">
                <property role="Xl_RC" value="mps.coderules.profiling" />
              </node>
            </node>
            <node concept="liA8E" id="2KmwpQZoFLi" role="2OqNvi">
              <ref role="37wK5l" to="rfhd:~RegistryValue.setValue(boolean)" resolve="setValue" />
              <node concept="37vLTw" id="2KmwpQZoFLj" role="37wK5m">
                <ref role="3cqZAo" node="23Habm5BTlC" resolve="yes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2KmwpQZoFLc" role="3cqZAp">
          <node concept="37vLTw" id="2KmwpQZoFLd" role="3clFbG">
            <ref role="3cqZAo" node="23Habm5BTlC" resolve="yes" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="uB9WAZaAyD">
    <property role="TrG5h" value="TypecheckingSettingsPage" />
    <node concept="2tJIrI" id="uB9WAZaAFm" role="jymVt" />
    <node concept="3clFbW" id="uB9WAZaAPl" role="jymVt">
      <node concept="3cqZAl" id="uB9WAZaAPn" role="3clF45" />
      <node concept="3Tm1VV" id="uB9WAZaAPo" role="1B3o_S" />
      <node concept="3clFbS" id="uB9WAZaAPp" role="3clF47">
        <node concept="3clFbF" id="14pL6xi8hJP" role="3cqZAp">
          <node concept="1rXfSq" id="14pL6xi8hJO" role="3clFbG">
            <ref role="37wK5l" node="14pL6xi8cOf" resolve="init" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="14pL6xi8cEx" role="jymVt" />
    <node concept="3clFb_" id="2CPBoDCAnrv" role="jymVt">
      <property role="TrG5h" value="getId" />
      <node concept="3Tm1VV" id="2CPBoDCAnrw" role="1B3o_S" />
      <node concept="2AHcQZ" id="2CPBoDCAnry" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="2AHcQZ" id="2CPBoDCAnrz" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
      </node>
      <node concept="3uibUv" id="2CPBoDCAnr$" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="2CPBoDCAnrF" role="3clF47">
        <node concept="3cpWs6" id="2CPBoDCAnrI" role="3cqZAp">
          <node concept="Xl_RD" id="2CPBoDCAF06" role="3cqZAk">
            <property role="Xl_RC" value="preferences.typecheckingSettings" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2CPBoDCAnrG" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2CPBoDCAnrJ" role="jymVt">
      <property role="TrG5h" value="getDisplayName" />
      <node concept="3Tm1VV" id="2CPBoDCAnrK" role="1B3o_S" />
      <node concept="2AHcQZ" id="2CPBoDCAnrM" role="2AJF6D">
        <ref role="2AI5Lk" to="zn9m:~NlsContexts$ConfigurableName" resolve="NlsContexts.ConfigurableName" />
      </node>
      <node concept="2AHcQZ" id="2CPBoDCAnrN" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Contract" resolve="Contract" />
        <node concept="2B6LJw" id="2CPBoDCAnrO" role="2B76xF">
          <ref role="2B6OnR" to="mhfm:~Contract.pure()" resolve="pure" />
          <node concept="3clFbT" id="2CPBoDCAnrP" role="2B70Vg">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2CPBoDCAnrQ" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="2CPBoDCAnrZ" role="3clF47">
        <node concept="3cpWs6" id="2CPBoDCAns2" role="3cqZAp">
          <node concept="Xl_RD" id="2CPBoDCAJW5" role="3cqZAk">
            <property role="Xl_RC" value="Typechecking" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2CPBoDCAns0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2CPBoDCAns3" role="jymVt">
      <property role="TrG5h" value="createComponent" />
      <node concept="3Tm1VV" id="2CPBoDCAns4" role="1B3o_S" />
      <node concept="2AHcQZ" id="2CPBoDCAns6" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="2CPBoDCAns7" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="3clFbS" id="2CPBoDCAnsl" role="3clF47">
        <node concept="3cpWs6" id="2CPBoDCAnso" role="3cqZAp">
          <node concept="Xjq3P" id="2CPBoDCAU8s" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2CPBoDCAnsm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2CPBoDCAnsp" role="jymVt">
      <property role="TrG5h" value="isModified" />
      <node concept="3Tm1VV" id="2CPBoDCAnsq" role="1B3o_S" />
      <node concept="10P_77" id="2CPBoDCAnss" role="3clF45" />
      <node concept="3clFbS" id="2CPBoDCAnsE" role="3clF47">
        <node concept="3cpWs8" id="adIlSuErp$" role="3cqZAp">
          <node concept="3cpWsn" id="adIlSuErp_" role="3cpWs9">
            <property role="TrG5h" value="settings" />
            <node concept="3uibUv" id="adIlSuEnpQ" role="1tU5fm">
              <ref role="3uigEE" node="2CPBoDC$4yq" resolve="TypecheckingSettings" />
            </node>
            <node concept="2YIFZM" id="adIlSuErpA" role="33vP2m">
              <ref role="37wK5l" node="2CPBoDC$fEe" resolve="getInstace" />
              <ref role="1Pybhc" node="2CPBoDC$4yq" resolve="TypecheckingSettings" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="adIlSuEEDP" role="3cqZAp">
          <node concept="3cpWsn" id="adIlSuEEDS" role="3cpWs9">
            <property role="TrG5h" value="modified" />
            <node concept="10P_77" id="adIlSuEEDN" role="1tU5fm" />
            <node concept="3clFbT" id="adIlSuEPFp" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbF" id="adIlSuEZPD" role="3cqZAp">
          <node concept="3vZ8r8" id="adIlSuF4X_" role="3clFbG">
            <node concept="3y3z36" id="adIlSuFnkg" role="37vLTx">
              <node concept="2OqwBi" id="adIlSuHXA8" role="3uHU7w">
                <node concept="Xjq3P" id="adIlSuI4Ty" role="2Oq$k0" />
                <node concept="liA8E" id="adIlSuHXAb" role="2OqNvi">
                  <ref role="37wK5l" node="14pL6xi8DQp" resolve="isTypecheckingEnabled" />
                </node>
              </node>
              <node concept="2OqwBi" id="adIlSuFee7" role="3uHU7B">
                <node concept="37vLTw" id="adIlSuFbM0" role="2Oq$k0">
                  <ref role="3cqZAo" node="adIlSuErp_" resolve="settings" />
                </node>
                <node concept="liA8E" id="adIlSuFjtY" role="2OqNvi">
                  <ref role="37wK5l" node="2CPBoDC$H71" resolve="isTypecheckingEnabled" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="adIlSuEZPB" role="37vLTJ">
              <ref role="3cqZAo" node="adIlSuEEDS" resolve="modified" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="adIlSuG6cT" role="3cqZAp">
          <node concept="3vZ8r8" id="adIlSuG6cU" role="3clFbG">
            <node concept="3y3z36" id="adIlSuG6cV" role="37vLTx">
              <node concept="2OqwBi" id="adIlSuG6d1" role="3uHU7B">
                <node concept="37vLTw" id="adIlSuG6d2" role="2Oq$k0">
                  <ref role="3cqZAo" node="adIlSuErp_" resolve="settings" />
                </node>
                <node concept="liA8E" id="adIlSuG6d3" role="2OqNvi">
                  <ref role="37wK5l" node="2CPBoDC_o9$" resolve="isReportingEnabled" />
                </node>
              </node>
              <node concept="2OqwBi" id="adIlSuInbw" role="3uHU7w">
                <node concept="Xjq3P" id="adIlSuInbx" role="2Oq$k0" />
                <node concept="liA8E" id="adIlSuInby" role="2OqNvi">
                  <ref role="37wK5l" node="1z4$59hGu4P" resolve="isReportingEnabled" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="adIlSuG6d4" role="37vLTJ">
              <ref role="3cqZAo" node="adIlSuEEDS" resolve="modified" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="adIlSuGlwI" role="3cqZAp">
          <node concept="3vZ8r8" id="adIlSuGlwJ" role="3clFbG">
            <node concept="3y3z36" id="adIlSuGlwK" role="37vLTx">
              <node concept="2OqwBi" id="adIlSuGlwQ" role="3uHU7B">
                <node concept="37vLTw" id="adIlSuGlwR" role="2Oq$k0">
                  <ref role="3cqZAo" node="adIlSuErp_" resolve="settings" />
                </node>
                <node concept="liA8E" id="adIlSuGlwS" role="2OqNvi">
                  <ref role="37wK5l" node="2CPBoDC_sJb" resolve="isTracingEnabled" />
                </node>
              </node>
              <node concept="2OqwBi" id="adIlSuIwbW" role="3uHU7w">
                <node concept="Xjq3P" id="adIlSuIwbX" role="2Oq$k0" />
                <node concept="liA8E" id="adIlSuIwbY" role="2OqNvi">
                  <ref role="37wK5l" node="7iCybvTn3it" resolve="isTracingEnabled" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="adIlSuGlwT" role="37vLTJ">
              <ref role="3cqZAo" node="adIlSuEEDS" resolve="modified" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="23Habm5EQl1" role="3cqZAp">
          <node concept="3vZ8r8" id="23Habm5EQl2" role="3clFbG">
            <node concept="3y3z36" id="23Habm5EQl3" role="37vLTx">
              <node concept="2OqwBi" id="23Habm5EQl4" role="3uHU7B">
                <node concept="37vLTw" id="23Habm5EQl5" role="2Oq$k0">
                  <ref role="3cqZAo" node="adIlSuErp_" resolve="settings" />
                </node>
                <node concept="liA8E" id="23Habm5EQl6" role="2OqNvi">
                  <ref role="37wK5l" node="23Habm5BTlO" resolve="isProfilingEnabled" />
                </node>
              </node>
              <node concept="2OqwBi" id="23Habm5EQl7" role="3uHU7w">
                <node concept="Xjq3P" id="23Habm5EQl8" role="2Oq$k0" />
                <node concept="liA8E" id="23Habm5EQl9" role="2OqNvi">
                  <ref role="37wK5l" node="23Habm5CTIA" resolve="isProfilingEnabled" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="23Habm5EQla" role="37vLTJ">
              <ref role="3cqZAo" node="adIlSuEEDS" resolve="modified" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2CPBoDCAnsH" role="3cqZAp">
          <node concept="37vLTw" id="adIlSuGHdP" role="3cqZAk">
            <ref role="3cqZAo" node="adIlSuEEDS" resolve="modified" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2CPBoDCAnsF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2CPBoDCAnsI" role="jymVt">
      <property role="TrG5h" value="apply" />
      <node concept="3Tm1VV" id="2CPBoDCAnsJ" role="1B3o_S" />
      <node concept="3cqZAl" id="2CPBoDCAnsL" role="3clF45" />
      <node concept="3uibUv" id="2CPBoDCAnsM" role="Sfmx6">
        <ref role="3uigEE" to="hq8m:~ConfigurationException" resolve="ConfigurationException" />
      </node>
      <node concept="3clFbS" id="2CPBoDCAnt0" role="3clF47">
        <node concept="3cpWs8" id="adIlSuGLoe" role="3cqZAp">
          <node concept="3cpWsn" id="adIlSuGLof" role="3cpWs9">
            <property role="TrG5h" value="settings" />
            <node concept="3uibUv" id="adIlSuGLog" role="1tU5fm">
              <ref role="3uigEE" node="2CPBoDC$4yq" resolve="TypecheckingSettings" />
            </node>
            <node concept="2YIFZM" id="adIlSuGLoh" role="33vP2m">
              <ref role="37wK5l" node="2CPBoDC$fEe" resolve="getInstace" />
              <ref role="1Pybhc" node="2CPBoDC$4yq" resolve="TypecheckingSettings" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="adIlSuGYby" role="3cqZAp">
          <node concept="2OqwBi" id="adIlSuGZN6" role="3clFbG">
            <node concept="37vLTw" id="adIlSuGYbw" role="2Oq$k0">
              <ref role="3cqZAo" node="adIlSuGLof" resolve="settings" />
            </node>
            <node concept="liA8E" id="adIlSuH1Ld" role="2OqNvi">
              <ref role="37wK5l" node="2CPBoDC$ILw" resolve="setTypecheckingEnabled" />
              <node concept="2OqwBi" id="adIlSuJldi" role="37wK5m">
                <node concept="Xjq3P" id="adIlSuJjFC" role="2Oq$k0" />
                <node concept="liA8E" id="adIlSuJrCL" role="2OqNvi">
                  <ref role="37wK5l" node="14pL6xi8DQp" resolve="isTypecheckingEnabled" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="adIlSuJJmE" role="3cqZAp">
          <node concept="2OqwBi" id="adIlSuJJmF" role="3clFbG">
            <node concept="37vLTw" id="adIlSuJJmG" role="2Oq$k0">
              <ref role="3cqZAo" node="adIlSuGLof" resolve="settings" />
            </node>
            <node concept="liA8E" id="adIlSuJJmH" role="2OqNvi">
              <ref role="37wK5l" node="2CPBoDC_o9n" resolve="setReportingEnabled" />
              <node concept="2OqwBi" id="adIlSuJJmI" role="37wK5m">
                <node concept="Xjq3P" id="adIlSuJJmJ" role="2Oq$k0" />
                <node concept="liA8E" id="adIlSuJJmK" role="2OqNvi">
                  <ref role="37wK5l" node="1z4$59hGu4P" resolve="isReportingEnabled" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="adIlSuJYpf" role="3cqZAp">
          <node concept="2OqwBi" id="adIlSuJYpg" role="3clFbG">
            <node concept="37vLTw" id="adIlSuJYph" role="2Oq$k0">
              <ref role="3cqZAo" node="adIlSuGLof" resolve="settings" />
            </node>
            <node concept="liA8E" id="adIlSuJYpi" role="2OqNvi">
              <ref role="37wK5l" node="2CPBoDC_sIY" resolve="setTracingEnabled" />
              <node concept="2OqwBi" id="adIlSuJYpj" role="37wK5m">
                <node concept="Xjq3P" id="adIlSuJYpk" role="2Oq$k0" />
                <node concept="liA8E" id="adIlSuJYpl" role="2OqNvi">
                  <ref role="37wK5l" node="7iCybvTn3it" resolve="isTracingEnabled" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="23Habm5DSyp" role="3cqZAp">
          <node concept="2OqwBi" id="23Habm5DY5$" role="3clFbG">
            <node concept="37vLTw" id="23Habm5DSyn" role="2Oq$k0">
              <ref role="3cqZAo" node="adIlSuGLof" resolve="settings" />
            </node>
            <node concept="liA8E" id="23Habm5E5oF" role="2OqNvi">
              <ref role="37wK5l" node="23Habm5BTlB" resolve="setProfilingEnabled" />
              <node concept="2OqwBi" id="23Habm5Efr_" role="37wK5m">
                <node concept="Xjq3P" id="23Habm5EcW_" role="2Oq$k0" />
                <node concept="liA8E" id="23Habm5Emu_" role="2OqNvi">
                  <ref role="37wK5l" node="23Habm5CTIA" resolve="isProfilingEnabled" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2CPBoDCAnt1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="adIlSuKm_W" role="jymVt">
      <property role="TrG5h" value="reset" />
      <node concept="3Tm1VV" id="adIlSuKm_Y" role="1B3o_S" />
      <node concept="3cqZAl" id="adIlSuKmA0" role="3clF45" />
      <node concept="3clFbS" id="adIlSuKmAe" role="3clF47">
        <node concept="3cpWs8" id="adIlSuKyjZ" role="3cqZAp">
          <node concept="3cpWsn" id="adIlSuKyk0" role="3cpWs9">
            <property role="TrG5h" value="settings" />
            <node concept="3uibUv" id="adIlSuKyk1" role="1tU5fm">
              <ref role="3uigEE" node="2CPBoDC$4yq" resolve="TypecheckingSettings" />
            </node>
            <node concept="2YIFZM" id="adIlSuKyk2" role="33vP2m">
              <ref role="1Pybhc" node="2CPBoDC$4yq" resolve="TypecheckingSettings" />
              <ref role="37wK5l" node="2CPBoDC$fEe" resolve="getInstace" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="adIlSuKyk3" role="3cqZAp">
          <node concept="2OqwBi" id="adIlSuKyk4" role="3clFbG">
            <node concept="Xjq3P" id="adIlSuKEKm" role="2Oq$k0" />
            <node concept="liA8E" id="adIlSuKyk6" role="2OqNvi">
              <ref role="37wK5l" node="14pL6xi8xeo" resolve="setTypecheckingEnabled" />
              <node concept="2OqwBi" id="adIlSuKyk7" role="37wK5m">
                <node concept="37vLTw" id="adIlSuKWfJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="adIlSuKyk0" resolve="settings" />
                </node>
                <node concept="liA8E" id="adIlSuKyk9" role="2OqNvi">
                  <ref role="37wK5l" node="2CPBoDC$H71" resolve="isTypecheckingEnabled" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="adIlSuKykX" role="3cqZAp">
          <node concept="2OqwBi" id="adIlSuKykY" role="3clFbG">
            <node concept="Xjq3P" id="adIlSuLyni" role="2Oq$k0" />
            <node concept="liA8E" id="adIlSuKyl0" role="2OqNvi">
              <ref role="37wK5l" node="1z4$59hG6VL" resolve="setReportingEnabled" />
              <node concept="2OqwBi" id="adIlSuKyl1" role="37wK5m">
                <node concept="37vLTw" id="adIlSuLO6b" role="2Oq$k0">
                  <ref role="3cqZAo" node="adIlSuKyk0" resolve="settings" />
                </node>
                <node concept="liA8E" id="adIlSuKyl3" role="2OqNvi">
                  <ref role="37wK5l" node="2CPBoDC_o9$" resolve="isReportingEnabled" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="adIlSuKylq" role="3cqZAp">
          <node concept="2OqwBi" id="adIlSuKylr" role="3clFbG">
            <node concept="Xjq3P" id="adIlSuM0QL" role="2Oq$k0" />
            <node concept="liA8E" id="adIlSuKylt" role="2OqNvi">
              <ref role="37wK5l" node="7iCybvTn6Vi" resolve="setTracingEnabled" />
              <node concept="2OqwBi" id="adIlSuKylu" role="37wK5m">
                <node concept="37vLTw" id="adIlSuMg0P" role="2Oq$k0">
                  <ref role="3cqZAo" node="adIlSuKyk0" resolve="settings" />
                </node>
                <node concept="liA8E" id="adIlSuKylw" role="2OqNvi">
                  <ref role="37wK5l" node="2CPBoDC_sJb" resolve="isTracingEnabled" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="23Habm5Eszd" role="3cqZAp">
          <node concept="2OqwBi" id="23Habm5Esze" role="3clFbG">
            <node concept="Xjq3P" id="23Habm5Eszf" role="2Oq$k0" />
            <node concept="liA8E" id="23Habm5Eszg" role="2OqNvi">
              <ref role="37wK5l" node="23Habm5Cy$A" resolve="setProfilingEnabled" />
              <node concept="2OqwBi" id="23Habm5Eszh" role="37wK5m">
                <node concept="37vLTw" id="23Habm5Eszi" role="2Oq$k0">
                  <ref role="3cqZAo" node="adIlSuKyk0" resolve="settings" />
                </node>
                <node concept="liA8E" id="23Habm5Eszj" role="2OqNvi">
                  <ref role="37wK5l" node="23Habm5BTlO" resolve="isProfilingEnabled" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="adIlSuKmAf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="14pL6xi8cOf" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="3cqZAl" id="14pL6xi8cOh" role="3clF45" />
      <node concept="3Tm6S6" id="14pL6xi8cPL" role="1B3o_S" />
      <node concept="3clFbS" id="14pL6xi8cOj" role="3clF47">
        <node concept="3clFbF" id="14pL6xi8lqD" role="3cqZAp">
          <node concept="1rXfSq" id="14pL6xi8lqB" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
            <node concept="2ShNRf" id="14pL6xi8lQw" role="37wK5m">
              <node concept="1pGfFk" id="14pL6xi8pZx" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~BoxLayout.&lt;init&gt;(java.awt.Container,int)" resolve="BoxLayout" />
                <node concept="Xjq3P" id="14pL6xi8TH2" role="37wK5m" />
                <node concept="10M0yZ" id="14pL6xi8U_W" role="37wK5m">
                  <ref role="3cqZAo" to="dxuu:~BoxLayout.Y_AXIS" resolve="Y_AXIS" />
                  <ref role="1PxDUh" to="dxuu:~BoxLayout" resolve="BoxLayout" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="14pL6xi8cQr" role="3cqZAp" />
        <node concept="3clFbF" id="14pL6xi8ySK" role="3cqZAp">
          <node concept="37vLTI" id="14pL6xi8ySL" role="3clFbG">
            <node concept="2OqwBi" id="14pL6xi8ySM" role="37vLTJ">
              <node concept="Xjq3P" id="14pL6xi8ySN" role="2Oq$k0" />
              <node concept="2OwXpG" id="14pL6xi8ySO" role="2OqNvi">
                <ref role="2Oxat5" node="14pL6xi8ySB" resolve="enableTypecheckingCheckbox" />
              </node>
            </node>
            <node concept="2ShNRf" id="14pL6xi8ySP" role="37vLTx">
              <node concept="1pGfFk" id="14pL6xi8ySQ" role="2ShVmc">
                <ref role="37wK5l" to="qqrq:~JBCheckBox.&lt;init&gt;(java.lang.String)" resolve="JBCheckBox" />
                <node concept="Xl_RD" id="14pL6xi8ySR" role="37wK5m">
                  <property role="Xl_RC" value="Enable experimental typechecking with Coderules" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1z4$59hFKst" role="3cqZAp">
          <node concept="37vLTI" id="1z4$59hFKsu" role="3clFbG">
            <node concept="2OqwBi" id="1z4$59hFKsv" role="37vLTJ">
              <node concept="Xjq3P" id="1z4$59hFKsw" role="2Oq$k0" />
              <node concept="2OwXpG" id="1z4$59hFPiw" role="2OqNvi">
                <ref role="2Oxat5" node="1z4$59hFD5A" resolve="enableReportingCheckbox" />
              </node>
            </node>
            <node concept="2ShNRf" id="1z4$59hFKsy" role="37vLTx">
              <node concept="1pGfFk" id="1z4$59hFKsz" role="2ShVmc">
                <ref role="37wK5l" to="qqrq:~JBCheckBox.&lt;init&gt;(java.lang.String)" resolve="JBCheckBox" />
                <node concept="Xl_RD" id="1z4$59hFKs$" role="37wK5m">
                  <property role="Xl_RC" value="Report evaluation results" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7iCybvTmRjG" role="3cqZAp">
          <node concept="37vLTI" id="7iCybvTmRjH" role="3clFbG">
            <node concept="2OqwBi" id="7iCybvTmRjI" role="37vLTJ">
              <node concept="Xjq3P" id="7iCybvTmRjJ" role="2Oq$k0" />
              <node concept="2OwXpG" id="7iCybvTmSMI" role="2OqNvi">
                <ref role="2Oxat5" node="7iCybvTmPrI" resolve="enableTraceCheckbox" />
              </node>
            </node>
            <node concept="2ShNRf" id="7iCybvTmRjL" role="37vLTx">
              <node concept="1pGfFk" id="7iCybvTmRjM" role="2ShVmc">
                <ref role="37wK5l" to="qqrq:~JBCheckBox.&lt;init&gt;(java.lang.String)" resolve="JBCheckBox" />
                <node concept="Xl_RD" id="7iCybvTmRjN" role="37wK5m">
                  <property role="Xl_RC" value="Collect trace events" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="23Habm5DfNK" role="3cqZAp">
          <node concept="37vLTI" id="23Habm5DfNL" role="3clFbG">
            <node concept="2OqwBi" id="23Habm5DfNM" role="37vLTJ">
              <node concept="Xjq3P" id="23Habm5DfNN" role="2Oq$k0" />
              <node concept="2OwXpG" id="23Habm5DfNO" role="2OqNvi">
                <ref role="2Oxat5" node="23Habm5CcYT" resolve="enableProfilingCheckbox" />
              </node>
            </node>
            <node concept="2ShNRf" id="23Habm5DfNP" role="37vLTx">
              <node concept="1pGfFk" id="23Habm5DfNQ" role="2ShVmc">
                <ref role="37wK5l" to="qqrq:~JBCheckBox.&lt;init&gt;(java.lang.String)" resolve="JBCheckBox" />
                <node concept="Xl_RD" id="23Habm5DfNR" role="37wK5m">
                  <property role="Xl_RC" value="Collect profiling data" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7iCybvTkFQC" role="3cqZAp" />
        <node concept="3cpWs8" id="1z4$59hFUmX" role="3cqZAp">
          <node concept="3cpWsn" id="1z4$59hFUmY" role="3cpWs9">
            <property role="TrG5h" value="updater" />
            <node concept="3uibUv" id="1z4$59hFUlY" role="1tU5fm">
              <ref role="3uigEE" to="hyam:~ItemListener" resolve="ItemListener" />
            </node>
            <node concept="2ShNRf" id="1z4$59hFUmZ" role="33vP2m">
              <node concept="YeOm9" id="1z4$59hFUn0" role="2ShVmc">
                <node concept="1Y3b0j" id="1z4$59hFUn1" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="hyam:~ItemListener" resolve="ItemListener" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="1z4$59hFUn2" role="1B3o_S" />
                  <node concept="3clFb_" id="1z4$59hFUn3" role="jymVt">
                    <property role="TrG5h" value="itemStateChanged" />
                    <node concept="3Tm1VV" id="1z4$59hFUn4" role="1B3o_S" />
                    <node concept="3cqZAl" id="1z4$59hFUn5" role="3clF45" />
                    <node concept="37vLTG" id="1z4$59hFUn6" role="3clF46">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="1z4$59hFUn7" role="1tU5fm">
                        <ref role="3uigEE" to="hyam:~ItemEvent" resolve="ItemEvent" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="1z4$59hFUn8" role="3clF47">
                      <node concept="3clFbF" id="1z4$59hFUn9" role="3cqZAp">
                        <node concept="1rXfSq" id="1z4$59hFUna" role="3clFbG">
                          <ref role="37wK5l" node="7iCybvTmrHH" resolve="updateEnabledState" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="1z4$59hFUnb" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7iCybvTlUOM" role="3cqZAp">
          <node concept="2OqwBi" id="7iCybvTlWji" role="3clFbG">
            <node concept="37vLTw" id="7iCybvTlUOK" role="2Oq$k0">
              <ref role="3cqZAo" node="14pL6xi8ySB" resolve="enableTypecheckingCheckbox" />
            </node>
            <node concept="liA8E" id="7iCybvTm0pF" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.addItemListener(java.awt.event.ItemListener)" resolve="addItemListener" />
              <node concept="37vLTw" id="1z4$59hFUnc" role="37wK5m">
                <ref role="3cqZAo" node="1z4$59hFUmY" resolve="updater" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1z4$59hHh1s" role="3cqZAp">
          <node concept="2OqwBi" id="1z4$59hHjBx" role="3clFbG">
            <node concept="37vLTw" id="1z4$59hHh1q" role="2Oq$k0">
              <ref role="3cqZAo" node="1z4$59hFD5A" resolve="enableReportingCheckbox" />
            </node>
            <node concept="liA8E" id="1z4$59hHms6" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.addItemListener(java.awt.event.ItemListener)" resolve="addItemListener" />
              <node concept="37vLTw" id="1z4$59hHoE2" role="37wK5m">
                <ref role="3cqZAo" node="1z4$59hFUmY" resolve="updater" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1z4$59hFZso" role="3cqZAp" />
        <node concept="9aQIb" id="7iCybvTkCGh" role="3cqZAp">
          <node concept="3clFbS" id="7iCybvTkCGj" role="9aQI4">
            <node concept="3cpWs8" id="7iCybvTjnnI" role="3cqZAp">
              <node concept="3cpWsn" id="7iCybvTjnnJ" role="3cpWs9">
                <property role="TrG5h" value="mainPanel" />
                <node concept="3uibUv" id="7iCybvTjnlw" role="1tU5fm">
                  <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
                </node>
                <node concept="2ShNRf" id="7iCybvTjnnK" role="33vP2m">
                  <node concept="1pGfFk" id="7iCybvTjnnL" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7iCybvTjkK_" role="3cqZAp">
              <node concept="2OqwBi" id="7iCybvTjomP" role="3clFbG">
                <node concept="37vLTw" id="7iCybvTjnnM" role="2Oq$k0">
                  <ref role="3cqZAo" node="7iCybvTjnnJ" resolve="mainPanel" />
                </node>
                <node concept="liA8E" id="7iCybvTjpMi" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
                  <node concept="2ShNRf" id="7iCybvTjqvL" role="37wK5m">
                    <node concept="1pGfFk" id="7iCybvTjsO6" role="2ShVmc">
                      <ref role="37wK5l" to="dxuu:~BoxLayout.&lt;init&gt;(java.awt.Container,int)" resolve="BoxLayout" />
                      <node concept="37vLTw" id="7iCybvTjwpt" role="37wK5m">
                        <ref role="3cqZAo" node="7iCybvTjnnJ" resolve="mainPanel" />
                      </node>
                      <node concept="10M0yZ" id="7iCybvTjxe$" role="37wK5m">
                        <ref role="3cqZAo" to="dxuu:~BoxLayout.Y_AXIS" resolve="Y_AXIS" />
                        <ref role="1PxDUh" to="dxuu:~BoxLayout" resolve="BoxLayout" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7iCybvTjyb5" role="3cqZAp">
              <node concept="2OqwBi" id="7iCybvTjz9U" role="3clFbG">
                <node concept="37vLTw" id="7iCybvTjyb3" role="2Oq$k0">
                  <ref role="3cqZAo" node="7iCybvTjnnJ" resolve="mainPanel" />
                </node>
                <node concept="liA8E" id="7iCybvTj$nj" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                  <node concept="2YIFZM" id="7iCybvTjAgR" role="37wK5m">
                    <ref role="37wK5l" to="dxuu:~Box.createHorizontalGlue()" resolve="createHorizontalGlue" />
                    <ref role="1Pybhc" to="dxuu:~Box" resolve="Box" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7iCybvTjBrP" role="3cqZAp">
              <node concept="2OqwBi" id="7iCybvTjCr4" role="3clFbG">
                <node concept="37vLTw" id="7iCybvTjBrN" role="2Oq$k0">
                  <ref role="3cqZAo" node="7iCybvTjnnJ" resolve="mainPanel" />
                </node>
                <node concept="liA8E" id="7iCybvTjD9f" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                  <node concept="2YIFZM" id="7iCybvTjOBb" role="37wK5m">
                    <ref role="1Pybhc" to="lzb2:~IdeBorderFactory" resolve="IdeBorderFactory" />
                    <ref role="37wK5l" to="lzb2:~IdeBorderFactory.createTitledBorder(java.lang.String,boolean)" resolve="createTitledBorder" />
                    <node concept="Xl_RD" id="7iCybvTjP92" role="37wK5m">
                      <property role="Xl_RC" value="Typechecking" />
                    </node>
                    <node concept="3clFbT" id="7iCybvTjPX0" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7iCybvTjxhU" role="3cqZAp" />
            <node concept="9aQIb" id="7iCybvTk$_1" role="3cqZAp">
              <node concept="3clFbS" id="7iCybvTk$_3" role="9aQI4">
                <node concept="3cpWs8" id="7iCybvTkl8R" role="3cqZAp">
                  <node concept="3cpWsn" id="7iCybvTkl8S" role="3cpWs9">
                    <property role="TrG5h" value="subpanel" />
                    <node concept="3uibUv" id="7iCybvTkl8T" role="1tU5fm">
                      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
                    </node>
                    <node concept="2ShNRf" id="7iCybvTkl8U" role="33vP2m">
                      <node concept="1pGfFk" id="7iCybvTkl8V" role="2ShVmc">
                        <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7iCybvTkl8W" role="3cqZAp">
                  <node concept="2OqwBi" id="7iCybvTkl8X" role="3clFbG">
                    <node concept="37vLTw" id="7iCybvTkl8Y" role="2Oq$k0">
                      <ref role="3cqZAo" node="7iCybvTkl8S" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="7iCybvTkl8Z" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
                      <node concept="2ShNRf" id="7iCybvTkl90" role="37wK5m">
                        <node concept="1pGfFk" id="7iCybvTkl91" role="2ShVmc">
                          <ref role="37wK5l" to="dxuu:~BoxLayout.&lt;init&gt;(java.awt.Container,int)" resolve="BoxLayout" />
                          <node concept="37vLTw" id="7iCybvTkl92" role="37wK5m">
                            <ref role="3cqZAo" node="7iCybvTkl8S" resolve="subpanel" />
                          </node>
                          <node concept="10M0yZ" id="7iCybvTkl93" role="37wK5m">
                            <ref role="3cqZAo" to="dxuu:~BoxLayout.Y_AXIS" resolve="Y_AXIS" />
                            <ref role="1PxDUh" to="dxuu:~BoxLayout" resolve="BoxLayout" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7iCybvTkNiB" role="3cqZAp">
                  <node concept="2OqwBi" id="7iCybvTkOv1" role="3clFbG">
                    <node concept="37vLTw" id="7iCybvTkNi_" role="2Oq$k0">
                      <ref role="3cqZAo" node="7iCybvTkl8S" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="7iCybvTkPav" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="2YIFZM" id="7iCybvTl4la" role="37wK5m">
                        <ref role="37wK5l" to="dxuu:~Box.createVerticalStrut(int)" resolve="createVerticalStrut" />
                        <ref role="1Pybhc" to="dxuu:~Box" resolve="Box" />
                        <node concept="3cmrfG" id="7iCybvTl4lb" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7iCybvTkm0f" role="3cqZAp">
                  <node concept="2OqwBi" id="7iCybvTkm0g" role="3clFbG">
                    <node concept="37vLTw" id="7iCybvTko6a" role="2Oq$k0">
                      <ref role="3cqZAo" node="7iCybvTkl8S" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="7iCybvTkm0i" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                      <node concept="2YIFZM" id="7iCybvTlzox" role="37wK5m">
                        <ref role="37wK5l" to="g1qu:~JBUI$Borders.emptyLeft(int)" resolve="emptyLeft" />
                        <ref role="1Pybhc" to="g1qu:~JBUI$Borders" resolve="JBUI.Borders" />
                        <node concept="3cmrfG" id="7iCybvTlzoy" role="37wK5m">
                          <property role="3cmrfH" value="20" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="7iCybvTkkcT" role="3cqZAp" />
                <node concept="3clFbF" id="14IknWHqozV" role="3cqZAp">
                  <node concept="2OqwBi" id="7iCybvTjVIC" role="3clFbG">
                    <node concept="liA8E" id="7iCybvTjVIF" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="2OqwBi" id="14IknWHqozX" role="37wK5m">
                        <node concept="Xjq3P" id="14IknWHqozY" role="2Oq$k0" />
                        <node concept="2OwXpG" id="14IknWHqozZ" role="2OqNvi">
                          <ref role="2Oxat5" node="14pL6xi8ySB" resolve="enableTypecheckingCheckbox" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="1z4$59hKHWw" role="2Oq$k0">
                      <ref role="3cqZAo" node="7iCybvTkl8S" resolve="subpanel" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="7iCybvTkYB4" role="3cqZAp" />
                <node concept="3clFbF" id="7iCybvTkpO7" role="3cqZAp">
                  <node concept="2OqwBi" id="7iCybvTkr5K" role="3clFbG">
                    <node concept="37vLTw" id="7iCybvTkpO5" role="2Oq$k0">
                      <ref role="3cqZAo" node="7iCybvTjnnJ" resolve="mainPanel" />
                    </node>
                    <node concept="liA8E" id="7iCybvTksBm" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="37vLTw" id="7iCybvTktXR" role="37wK5m">
                        <ref role="3cqZAo" node="7iCybvTkl8S" resolve="subpanel" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7iCybvTkxlt" role="3cqZAp" />
            <node concept="3clFbF" id="7iCybvTkds6" role="3cqZAp">
              <node concept="1rXfSq" id="7iCybvTkds4" role="3clFbG">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                <node concept="37vLTw" id="7iCybvTkeSF" role="37wK5m">
                  <ref role="3cqZAo" node="7iCybvTjnnJ" resolve="mainPanel" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1z4$59hCLXL" role="3cqZAp" />
            <node concept="3SKdUt" id="1z4$59hCTR5" role="3cqZAp">
              <node concept="1PaTwC" id="1z4$59hCTR6" role="1aUNEU">
                <node concept="3oM_SD" id="1z4$59hCVD_" role="1PaTwD">
                  <property role="3oM_SC" value="----------" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1z4$59hCWrQ" role="3cqZAp" />
            <node concept="3cpWs8" id="1z4$59hCOC2" role="3cqZAp">
              <node concept="3cpWsn" id="1z4$59hCOC3" role="3cpWs9">
                <property role="TrG5h" value="editorPanel" />
                <node concept="3uibUv" id="1z4$59hCOC4" role="1tU5fm">
                  <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
                </node>
                <node concept="2ShNRf" id="1z4$59hCOC5" role="33vP2m">
                  <node concept="1pGfFk" id="1z4$59hCOC6" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1z4$59hCOC7" role="3cqZAp">
              <node concept="2OqwBi" id="1z4$59hCOC8" role="3clFbG">
                <node concept="37vLTw" id="1z4$59hCOC9" role="2Oq$k0">
                  <ref role="3cqZAo" node="1z4$59hCOC3" resolve="editorPanel" />
                </node>
                <node concept="liA8E" id="1z4$59hCOCa" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
                  <node concept="2ShNRf" id="1z4$59hCOCb" role="37wK5m">
                    <node concept="1pGfFk" id="1z4$59hCOCc" role="2ShVmc">
                      <ref role="37wK5l" to="dxuu:~BoxLayout.&lt;init&gt;(java.awt.Container,int)" resolve="BoxLayout" />
                      <node concept="37vLTw" id="1z4$59hCOCd" role="37wK5m">
                        <ref role="3cqZAo" node="1z4$59hCOC3" resolve="editorPanel" />
                      </node>
                      <node concept="10M0yZ" id="1z4$59hCOCe" role="37wK5m">
                        <ref role="3cqZAo" to="dxuu:~BoxLayout.Y_AXIS" resolve="Y_AXIS" />
                        <ref role="1PxDUh" to="dxuu:~BoxLayout" resolve="BoxLayout" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1z4$59hCOCg" role="3cqZAp">
              <node concept="2OqwBi" id="1z4$59hCOCh" role="3clFbG">
                <node concept="37vLTw" id="1z4$59hCOCi" role="2Oq$k0">
                  <ref role="3cqZAo" node="1z4$59hCOC3" resolve="editorPanel" />
                </node>
                <node concept="liA8E" id="1z4$59hCOCj" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                  <node concept="2YIFZM" id="1z4$59hCOCk" role="37wK5m">
                    <ref role="1Pybhc" to="dxuu:~Box" resolve="Box" />
                    <ref role="37wK5l" to="dxuu:~Box.createHorizontalGlue()" resolve="createHorizontalGlue" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1z4$59hCZbG" role="3cqZAp">
              <node concept="2OqwBi" id="1z4$59hCZbH" role="3clFbG">
                <node concept="37vLTw" id="1z4$59hD4Hu" role="2Oq$k0">
                  <ref role="3cqZAo" node="1z4$59hCOC3" resolve="editorPanel" />
                </node>
                <node concept="liA8E" id="1z4$59hCZbJ" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                  <node concept="2YIFZM" id="1z4$59hCZbK" role="37wK5m">
                    <ref role="37wK5l" to="lzb2:~IdeBorderFactory.createTitledBorder(java.lang.String,boolean)" resolve="createTitledBorder" />
                    <ref role="1Pybhc" to="lzb2:~IdeBorderFactory" resolve="IdeBorderFactory" />
                    <node concept="Xl_RD" id="1z4$59hCZbL" role="37wK5m">
                      <property role="Xl_RC" value="Editor integration" />
                    </node>
                    <node concept="3clFbT" id="1z4$59hCZbM" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1z4$59hCM0A" role="3cqZAp" />
            <node concept="9aQIb" id="1z4$59hKKGS" role="3cqZAp">
              <node concept="3clFbS" id="1z4$59hKKGT" role="9aQI4">
                <node concept="3cpWs8" id="1z4$59hKKGU" role="3cqZAp">
                  <node concept="3cpWsn" id="1z4$59hKKGV" role="3cpWs9">
                    <property role="TrG5h" value="subpanel" />
                    <node concept="3uibUv" id="1z4$59hKKGW" role="1tU5fm">
                      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
                    </node>
                    <node concept="2ShNRf" id="1z4$59hKKGX" role="33vP2m">
                      <node concept="1pGfFk" id="1z4$59hKKGY" role="2ShVmc">
                        <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1z4$59hKKGZ" role="3cqZAp">
                  <node concept="2OqwBi" id="1z4$59hKKH0" role="3clFbG">
                    <node concept="37vLTw" id="1z4$59hKKH1" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z4$59hKKGV" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="1z4$59hKKH2" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
                      <node concept="2ShNRf" id="1z4$59hKKH3" role="37wK5m">
                        <node concept="1pGfFk" id="1z4$59hKKH4" role="2ShVmc">
                          <ref role="37wK5l" to="dxuu:~BoxLayout.&lt;init&gt;(java.awt.Container,int)" resolve="BoxLayout" />
                          <node concept="37vLTw" id="1z4$59hKKH5" role="37wK5m">
                            <ref role="3cqZAo" node="1z4$59hKKGV" resolve="subpanel" />
                          </node>
                          <node concept="10M0yZ" id="1z4$59hKKH6" role="37wK5m">
                            <ref role="1PxDUh" to="dxuu:~BoxLayout" resolve="BoxLayout" />
                            <ref role="3cqZAo" to="dxuu:~BoxLayout.Y_AXIS" resolve="Y_AXIS" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1z4$59hKKH7" role="3cqZAp">
                  <node concept="2OqwBi" id="1z4$59hKKH8" role="3clFbG">
                    <node concept="37vLTw" id="1z4$59hKKH9" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z4$59hKKGV" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="1z4$59hKKHa" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="2YIFZM" id="1z4$59hKKHb" role="37wK5m">
                        <ref role="37wK5l" to="dxuu:~Box.createVerticalStrut(int)" resolve="createVerticalStrut" />
                        <ref role="1Pybhc" to="dxuu:~Box" resolve="Box" />
                        <node concept="3cmrfG" id="1z4$59hKKHc" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1z4$59hKKHd" role="3cqZAp">
                  <node concept="2OqwBi" id="1z4$59hKKHe" role="3clFbG">
                    <node concept="37vLTw" id="1z4$59hKKHf" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z4$59hKKGV" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="1z4$59hKKHg" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                      <node concept="2YIFZM" id="1z4$59hKKHh" role="37wK5m">
                        <ref role="37wK5l" to="g1qu:~JBUI$Borders.emptyLeft(int)" resolve="emptyLeft" />
                        <ref role="1Pybhc" to="g1qu:~JBUI$Borders" resolve="JBUI.Borders" />
                        <node concept="3cmrfG" id="1z4$59hKKHi" role="37wK5m">
                          <property role="3cmrfH" value="20" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1z4$59hKKHs" role="3cqZAp">
                  <node concept="2OqwBi" id="1z4$59hKKHt" role="3clFbG">
                    <node concept="37vLTw" id="1z4$59hLGgx" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z4$59hCOC3" resolve="editorPanel" />
                    </node>
                    <node concept="liA8E" id="1z4$59hKKHv" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="37vLTw" id="1z4$59hKKHw" role="37wK5m">
                        <ref role="3cqZAo" node="1z4$59hKKGV" resolve="subpanel" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1z4$59hE$0v" role="3cqZAp" />
            <node concept="3clFbF" id="1z4$59hD5qG" role="3cqZAp">
              <node concept="1rXfSq" id="1z4$59hD5qH" role="3clFbG">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                <node concept="37vLTw" id="1z4$59hDae1" role="37wK5m">
                  <ref role="3cqZAo" node="1z4$59hCOC3" resolve="editorPanel" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1z4$59hD5nm" role="3cqZAp" />
            <node concept="3SKdUt" id="1z4$59hDcSO" role="3cqZAp">
              <node concept="1PaTwC" id="1z4$59hDcSP" role="1aUNEU">
                <node concept="3oM_SD" id="1z4$59hDcSQ" role="1PaTwD">
                  <property role="3oM_SC" value="---------" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1z4$59hDhzL" role="3cqZAp" />
            <node concept="3cpWs8" id="1z4$59hDhzM" role="3cqZAp">
              <node concept="3cpWsn" id="1z4$59hDhzN" role="3cpWs9">
                <property role="TrG5h" value="advancedPanel" />
                <node concept="3uibUv" id="1z4$59hDhzO" role="1tU5fm">
                  <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
                </node>
                <node concept="2ShNRf" id="1z4$59hDhzP" role="33vP2m">
                  <node concept="1pGfFk" id="1z4$59hDhzQ" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1z4$59hDhzR" role="3cqZAp">
              <node concept="2OqwBi" id="1z4$59hDhzS" role="3clFbG">
                <node concept="37vLTw" id="1z4$59hDhzT" role="2Oq$k0">
                  <ref role="3cqZAo" node="1z4$59hDhzN" resolve="advancedPanel" />
                </node>
                <node concept="liA8E" id="1z4$59hDhzU" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
                  <node concept="2ShNRf" id="1z4$59hDhzV" role="37wK5m">
                    <node concept="1pGfFk" id="1z4$59hDhzW" role="2ShVmc">
                      <ref role="37wK5l" to="dxuu:~BoxLayout.&lt;init&gt;(java.awt.Container,int)" resolve="BoxLayout" />
                      <node concept="37vLTw" id="1z4$59hDhzX" role="37wK5m">
                        <ref role="3cqZAo" node="1z4$59hDhzN" resolve="advancedPanel" />
                      </node>
                      <node concept="10M0yZ" id="1z4$59hDhzY" role="37wK5m">
                        <ref role="1PxDUh" to="dxuu:~BoxLayout" resolve="BoxLayout" />
                        <ref role="3cqZAo" to="dxuu:~BoxLayout.Y_AXIS" resolve="Y_AXIS" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1z4$59hDh$0" role="3cqZAp">
              <node concept="2OqwBi" id="1z4$59hDh$1" role="3clFbG">
                <node concept="37vLTw" id="1z4$59hDh$2" role="2Oq$k0">
                  <ref role="3cqZAo" node="1z4$59hDhzN" resolve="advancedPanel" />
                </node>
                <node concept="liA8E" id="1z4$59hDh$3" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                  <node concept="2YIFZM" id="1z4$59hDh$4" role="37wK5m">
                    <ref role="1Pybhc" to="dxuu:~Box" resolve="Box" />
                    <ref role="37wK5l" to="dxuu:~Box.createHorizontalGlue()" resolve="createHorizontalGlue" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1z4$59hDh$5" role="3cqZAp">
              <node concept="2OqwBi" id="1z4$59hDh$6" role="3clFbG">
                <node concept="37vLTw" id="1z4$59hDh$7" role="2Oq$k0">
                  <ref role="3cqZAo" node="1z4$59hDhzN" resolve="advancedPanel" />
                </node>
                <node concept="liA8E" id="1z4$59hDh$8" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                  <node concept="2YIFZM" id="1z4$59hDh$9" role="37wK5m">
                    <ref role="37wK5l" to="lzb2:~IdeBorderFactory.createTitledBorder(java.lang.String,boolean)" resolve="createTitledBorder" />
                    <ref role="1Pybhc" to="lzb2:~IdeBorderFactory" resolve="IdeBorderFactory" />
                    <node concept="Xl_RD" id="1z4$59hDh$a" role="37wK5m">
                      <property role="Xl_RC" value="Advanced" />
                    </node>
                    <node concept="3clFbT" id="1z4$59hDh$b" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1z4$59hGYk$" role="3cqZAp" />
            <node concept="9aQIb" id="1z4$59hEUWx" role="3cqZAp">
              <node concept="3clFbS" id="1z4$59hEUWy" role="9aQI4">
                <node concept="3cpWs8" id="1z4$59hEUWz" role="3cqZAp">
                  <node concept="3cpWsn" id="1z4$59hEUW$" role="3cpWs9">
                    <property role="TrG5h" value="subpanel" />
                    <node concept="3uibUv" id="1z4$59hEUW_" role="1tU5fm">
                      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
                    </node>
                    <node concept="2ShNRf" id="1z4$59hEUWA" role="33vP2m">
                      <node concept="1pGfFk" id="1z4$59hEUWB" role="2ShVmc">
                        <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1z4$59hEUWC" role="3cqZAp">
                  <node concept="2OqwBi" id="1z4$59hEUWD" role="3clFbG">
                    <node concept="37vLTw" id="1z4$59hEUWE" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z4$59hEUW$" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="1z4$59hEUWF" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
                      <node concept="2ShNRf" id="1z4$59hEUWG" role="37wK5m">
                        <node concept="1pGfFk" id="1z4$59hEUWH" role="2ShVmc">
                          <ref role="37wK5l" to="dxuu:~BoxLayout.&lt;init&gt;(java.awt.Container,int)" resolve="BoxLayout" />
                          <node concept="37vLTw" id="1z4$59hEUWI" role="37wK5m">
                            <ref role="3cqZAo" node="1z4$59hEUW$" resolve="subpanel" />
                          </node>
                          <node concept="10M0yZ" id="1z4$59hEUWJ" role="37wK5m">
                            <ref role="1PxDUh" to="dxuu:~BoxLayout" resolve="BoxLayout" />
                            <ref role="3cqZAo" to="dxuu:~BoxLayout.Y_AXIS" resolve="Y_AXIS" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1z4$59hEUWK" role="3cqZAp">
                  <node concept="2OqwBi" id="1z4$59hEUWL" role="3clFbG">
                    <node concept="37vLTw" id="1z4$59hEUWM" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z4$59hEUW$" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="1z4$59hEUWN" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="2YIFZM" id="1z4$59hEUWO" role="37wK5m">
                        <ref role="37wK5l" to="dxuu:~Box.createVerticalStrut(int)" resolve="createVerticalStrut" />
                        <ref role="1Pybhc" to="dxuu:~Box" resolve="Box" />
                        <node concept="3cmrfG" id="1z4$59hEUWP" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1z4$59hEUWQ" role="3cqZAp">
                  <node concept="2OqwBi" id="1z4$59hEUWR" role="3clFbG">
                    <node concept="37vLTw" id="1z4$59hEUWS" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z4$59hEUW$" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="1z4$59hEUWT" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                      <node concept="2YIFZM" id="1z4$59hEUWU" role="37wK5m">
                        <ref role="37wK5l" to="g1qu:~JBUI$Borders.emptyLeft(int)" resolve="emptyLeft" />
                        <ref role="1Pybhc" to="g1qu:~JBUI$Borders" resolve="JBUI.Borders" />
                        <node concept="3cmrfG" id="1z4$59hEUWV" role="37wK5m">
                          <property role="3cmrfH" value="20" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1z4$59hIJhJ" role="3cqZAp" />
                <node concept="3clFbF" id="1z4$59hI3rG" role="3cqZAp">
                  <node concept="2OqwBi" id="1z4$59hI7iZ" role="3clFbG">
                    <node concept="37vLTw" id="1z4$59hLham" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z4$59hEUW$" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="1z4$59hIb09" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="2ShNRf" id="1z4$59hIcYl" role="37wK5m">
                        <node concept="1pGfFk" id="1z4$59hIH8O" role="2ShVmc">
                          <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                          <node concept="Xl_RD" id="1z4$59hIHHA" role="37wK5m">
                            <property role="Xl_RC" value="When evaluating Coderules program:" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1z4$59hIMVB" role="3cqZAp" />
                <node concept="9aQIb" id="1z4$59hITIL" role="3cqZAp">
                  <node concept="3clFbS" id="1z4$59hITIM" role="9aQI4">
                    <node concept="3cpWs8" id="1z4$59hITIN" role="3cqZAp">
                      <node concept="3cpWsn" id="1z4$59hITIO" role="3cpWs9">
                        <property role="TrG5h" value="subsubpanel" />
                        <node concept="3uibUv" id="1z4$59hITIP" role="1tU5fm">
                          <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
                        </node>
                        <node concept="2ShNRf" id="1z4$59hITIQ" role="33vP2m">
                          <node concept="1pGfFk" id="1z4$59hITIR" role="2ShVmc">
                            <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1z4$59hITIS" role="3cqZAp">
                      <node concept="2OqwBi" id="1z4$59hITIT" role="3clFbG">
                        <node concept="37vLTw" id="1z4$59hITIU" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59hITIO" resolve="subsubpanel" />
                        </node>
                        <node concept="liA8E" id="1z4$59hITIV" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
                          <node concept="2ShNRf" id="1z4$59hITIW" role="37wK5m">
                            <node concept="1pGfFk" id="1z4$59hITIX" role="2ShVmc">
                              <ref role="37wK5l" to="dxuu:~BoxLayout.&lt;init&gt;(java.awt.Container,int)" resolve="BoxLayout" />
                              <node concept="37vLTw" id="1z4$59hITIY" role="37wK5m">
                                <ref role="3cqZAo" node="1z4$59hITIO" resolve="subsubpanel" />
                              </node>
                              <node concept="10M0yZ" id="1z4$59hITIZ" role="37wK5m">
                                <ref role="3cqZAo" to="dxuu:~BoxLayout.Y_AXIS" resolve="Y_AXIS" />
                                <ref role="1PxDUh" to="dxuu:~BoxLayout" resolve="BoxLayout" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1z4$59hITJ0" role="3cqZAp">
                      <node concept="2OqwBi" id="1z4$59hITJ1" role="3clFbG">
                        <node concept="37vLTw" id="1z4$59hITJ2" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59hITIO" resolve="subsubpanel" />
                        </node>
                        <node concept="liA8E" id="1z4$59hITJ3" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                          <node concept="2YIFZM" id="1z4$59hITJ4" role="37wK5m">
                            <ref role="1Pybhc" to="dxuu:~Box" resolve="Box" />
                            <ref role="37wK5l" to="dxuu:~Box.createVerticalStrut(int)" resolve="createVerticalStrut" />
                            <node concept="3cmrfG" id="1z4$59hITJ5" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1z4$59hITJ6" role="3cqZAp">
                      <node concept="2OqwBi" id="1z4$59hITJ7" role="3clFbG">
                        <node concept="37vLTw" id="1z4$59hITJ8" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59hITIO" resolve="subsubpanel" />
                        </node>
                        <node concept="liA8E" id="1z4$59hITJ9" role="2OqNvi">
                          <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                          <node concept="2YIFZM" id="1z4$59hITJa" role="37wK5m">
                            <ref role="1Pybhc" to="g1qu:~JBUI$Borders" resolve="JBUI.Borders" />
                            <ref role="37wK5l" to="g1qu:~JBUI$Borders.emptyLeft(int)" resolve="emptyLeft" />
                            <node concept="3cmrfG" id="1z4$59hITJb" role="37wK5m">
                              <property role="3cmrfH" value="20" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="1z4$59hITJc" role="3cqZAp" />
                    <node concept="3clFbF" id="1z4$59hFcRU" role="3cqZAp">
                      <node concept="2OqwBi" id="1z4$59hFcRV" role="3clFbG">
                        <node concept="37vLTw" id="1z4$59hLopO" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59hITIO" resolve="subsubpanel" />
                        </node>
                        <node concept="liA8E" id="1z4$59hFcRX" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                          <node concept="2OqwBi" id="1z4$59hFcRY" role="37wK5m">
                            <node concept="Xjq3P" id="1z4$59hFcRZ" role="2Oq$k0" />
                            <node concept="2OwXpG" id="1z4$59hGSii" role="2OqNvi">
                              <ref role="2Oxat5" node="1z4$59hFD5A" resolve="enableReportingCheckbox" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="1z4$59hLnmx" role="3cqZAp" />
                    <node concept="3clFbF" id="1z4$59hGO0c" role="3cqZAp">
                      <node concept="2OqwBi" id="1z4$59hGO0d" role="3clFbG">
                        <node concept="37vLTw" id="1z4$59hJboR" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59hITIO" resolve="subsubpanel" />
                        </node>
                        <node concept="liA8E" id="1z4$59hGO0f" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                          <node concept="2OqwBi" id="1z4$59hGO0g" role="37wK5m">
                            <node concept="Xjq3P" id="1z4$59hGO0h" role="2Oq$k0" />
                            <node concept="2OwXpG" id="1z4$59hGO0i" role="2OqNvi">
                              <ref role="2Oxat5" node="7iCybvTmPrI" resolve="enableTraceCheckbox" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="6v6oK22r1en" role="3cqZAp" />
                    <node concept="3cpWs8" id="6v6oK22vXMl" role="3cqZAp">
                      <node concept="3cpWsn" id="6v6oK22vXMm" role="3cpWs9">
                        <property role="TrG5h" value="warnPanel" />
                        <node concept="3uibUv" id="6v6oK22vXMn" role="1tU5fm">
                          <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
                        </node>
                        <node concept="2ShNRf" id="6v6oK22vXMo" role="33vP2m">
                          <node concept="1pGfFk" id="6v6oK22vXMp" role="2ShVmc">
                            <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6v6oK22wa4W" role="3cqZAp">
                      <node concept="2OqwBi" id="6v6oK22wa4X" role="3clFbG">
                        <node concept="37vLTw" id="6v6oK22wa4Y" role="2Oq$k0">
                          <ref role="3cqZAo" node="6v6oK22vXMm" resolve="warnPanel" />
                        </node>
                        <node concept="liA8E" id="6v6oK22wa4Z" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
                          <node concept="2ShNRf" id="6v6oK22wa50" role="37wK5m">
                            <node concept="1pGfFk" id="6v6oK22wa51" role="2ShVmc">
                              <ref role="37wK5l" to="dxuu:~BoxLayout.&lt;init&gt;(java.awt.Container,int)" resolve="BoxLayout" />
                              <node concept="37vLTw" id="6v6oK22wa52" role="37wK5m">
                                <ref role="3cqZAo" node="6v6oK22vXMm" resolve="warnPanel" />
                              </node>
                              <node concept="10M0yZ" id="6v6oK22wa53" role="37wK5m">
                                <ref role="3cqZAo" to="dxuu:~BoxLayout.Y_AXIS" resolve="Y_AXIS" />
                                <ref role="1PxDUh" to="dxuu:~BoxLayout" resolve="BoxLayout" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6v6oK22wa55" role="3cqZAp">
                      <node concept="2OqwBi" id="6v6oK22wa56" role="3clFbG">
                        <node concept="37vLTw" id="6v6oK22wa57" role="2Oq$k0">
                          <ref role="3cqZAo" node="6v6oK22vXMm" resolve="warnPanel" />
                        </node>
                        <node concept="liA8E" id="6v6oK22wa58" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                          <node concept="2YIFZM" id="6v6oK22wa59" role="37wK5m">
                            <ref role="37wK5l" to="dxuu:~Box.createVerticalStrut(int)" resolve="createVerticalStrut" />
                            <ref role="1Pybhc" to="dxuu:~Box" resolve="Box" />
                            <node concept="3cmrfG" id="6v6oK22wa5a" role="37wK5m">
                              <property role="3cmrfH" value="5" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6v6oK22wa5b" role="3cqZAp">
                      <node concept="2OqwBi" id="6v6oK22wa5c" role="3clFbG">
                        <node concept="37vLTw" id="6v6oK22wa5d" role="2Oq$k0">
                          <ref role="3cqZAo" node="6v6oK22vXMm" resolve="warnPanel" />
                        </node>
                        <node concept="liA8E" id="6v6oK22wa5e" role="2OqNvi">
                          <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                          <node concept="2YIFZM" id="6v6oK22wa5f" role="37wK5m">
                            <ref role="37wK5l" to="g1qu:~JBUI$Borders.emptyLeft(int)" resolve="emptyLeft" />
                            <ref role="1Pybhc" to="g1qu:~JBUI$Borders" resolve="JBUI.Borders" />
                            <node concept="3cmrfG" id="6v6oK22wa5g" role="37wK5m">
                              <property role="3cmrfH" value="25" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="6v6oK22vKY2" role="3cqZAp" />
                    <node concept="9aQIb" id="6v6oK22wwoi" role="3cqZAp">
                      <node concept="3clFbS" id="6v6oK22wwok" role="9aQI4">
                        <node concept="3cpWs8" id="6v6oK22rd3p" role="3cqZAp">
                          <node concept="3cpWsn" id="6v6oK22rd3q" role="3cpWs9">
                            <property role="TrG5h" value="warnLabel" />
                            <node concept="3uibUv" id="6v6oK22rd3r" role="1tU5fm">
                              <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
                            </node>
                            <node concept="2ShNRf" id="6v6oK22rj5r" role="33vP2m">
                              <node concept="1pGfFk" id="6v6oK22rixL" role="2ShVmc">
                                <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                                <node concept="Xl_RD" id="6v6oK22rsaP" role="37wK5m">
                                  <property role="Xl_RC" value="Using this option may result in excessive memory consumption" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="6v6oK22tQ_o" role="3cqZAp">
                          <node concept="3cpWsn" id="6v6oK22tQ_p" role="3cpWs9">
                            <property role="TrG5h" value="font" />
                            <node concept="3uibUv" id="6v6oK22tIZR" role="1tU5fm">
                              <ref role="3uigEE" to="z60i:~Font" resolve="Font" />
                            </node>
                            <node concept="2OqwBi" id="6v6oK22tQ_q" role="33vP2m">
                              <node concept="37vLTw" id="6v6oK22tQ_r" role="2Oq$k0">
                                <ref role="3cqZAo" node="6v6oK22rd3q" resolve="warnLabel" />
                              </node>
                              <node concept="liA8E" id="6v6oK22tQ_s" role="2OqNvi">
                                <ref role="37wK5l" to="z60i:~Component.getFont()" resolve="getFont" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="6v6oK22skR3" role="3cqZAp">
                          <node concept="2OqwBi" id="6v6oK22smXu" role="3clFbG">
                            <node concept="37vLTw" id="6v6oK22skR1" role="2Oq$k0">
                              <ref role="3cqZAo" node="6v6oK22rd3q" resolve="warnLabel" />
                            </node>
                            <node concept="liA8E" id="6v6oK22sutV" role="2OqNvi">
                              <ref role="37wK5l" to="dxuu:~JComponent.setFont(java.awt.Font)" resolve="setFont" />
                              <node concept="2OqwBi" id="6v6oK22tcSM" role="37wK5m">
                                <node concept="37vLTw" id="6v6oK22tQ_t" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6v6oK22tQ_p" resolve="font" />
                                </node>
                                <node concept="liA8E" id="6v6oK22t_Eg" role="2OqNvi">
                                  <ref role="37wK5l" to="z60i:~Font.deriveFont(float)" resolve="deriveFont" />
                                  <node concept="17qRlL" id="6v6oK22u9UJ" role="37wK5m">
                                    <node concept="2$xPTn" id="6v6oK22uuIW" role="3uHU7w">
                                      <property role="2$xPTl" value="0.9f" />
                                    </node>
                                    <node concept="2OqwBi" id="6v6oK22tZl1" role="3uHU7B">
                                      <node concept="37vLTw" id="6v6oK22tXzr" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6v6oK22tQ_p" resolve="font" />
                                      </node>
                                      <node concept="liA8E" id="6v6oK22u0q_" role="2OqNvi">
                                        <ref role="37wK5l" to="z60i:~Font.getSize2D()" resolve="getSize2D" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="6v6oK22sEUm" role="3cqZAp">
                          <node concept="2OqwBi" id="6v6oK22sH8v" role="3clFbG">
                            <node concept="37vLTw" id="6v6oK22sEUk" role="2Oq$k0">
                              <ref role="3cqZAo" node="6v6oK22rd3q" resolve="warnLabel" />
                            </node>
                            <node concept="liA8E" id="6v6oK22sN0z" role="2OqNvi">
                              <ref role="37wK5l" to="dxuu:~JComponent.setEnabled(boolean)" resolve="setEnabled" />
                              <node concept="3clFbT" id="6v6oK22sQGW" role="37wK5m" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="6v6oK22syN9" role="3cqZAp" />
                        <node concept="3clFbF" id="6v6oK22vaMH" role="3cqZAp">
                          <node concept="2OqwBi" id="6v6oK22veSE" role="3clFbG">
                            <node concept="37vLTw" id="6v6oK22vaMF" role="2Oq$k0">
                              <ref role="3cqZAo" node="6v6oK22vXMm" resolve="warnPanel" />
                            </node>
                            <node concept="liA8E" id="6v6oK22vh$l" role="2OqNvi">
                              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                              <node concept="37vLTw" id="6v6oK22vlFr" role="37wK5m">
                                <ref role="3cqZAo" node="6v6oK22rd3q" resolve="warnLabel" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="6v6oK22xFwk" role="3cqZAp" />
                    <node concept="3clFbF" id="6v6oK22wInv" role="3cqZAp">
                      <node concept="2OqwBi" id="6v6oK22wInw" role="3clFbG">
                        <node concept="37vLTw" id="6v6oK22wInx" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59hITIO" resolve="subsubpanel" />
                        </node>
                        <node concept="liA8E" id="6v6oK22wIny" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                          <node concept="37vLTw" id="6v6oK22wInz" role="37wK5m">
                            <ref role="3cqZAo" node="6v6oK22vXMm" resolve="warnPanel" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="23Habm5DBT7" role="3cqZAp" />
                    <node concept="3clFbF" id="23Habm5Dy58" role="3cqZAp">
                      <node concept="2OqwBi" id="23Habm5Dy59" role="3clFbG">
                        <node concept="37vLTw" id="23Habm5Dy5a" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59hITIO" resolve="subsubpanel" />
                        </node>
                        <node concept="liA8E" id="23Habm5Dy5b" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                          <node concept="2OqwBi" id="23Habm5Dy5c" role="37wK5m">
                            <node concept="Xjq3P" id="23Habm5Dy5d" role="2Oq$k0" />
                            <node concept="2OwXpG" id="23Habm5Dy5e" role="2OqNvi">
                              <ref role="2Oxat5" node="23Habm5CcYT" resolve="enableProfilingCheckbox" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="6v6oK22uYND" role="3cqZAp" />
                    <node concept="3clFbF" id="1z4$59hITJl" role="3cqZAp">
                      <node concept="2OqwBi" id="1z4$59hITJm" role="3clFbG">
                        <node concept="37vLTw" id="1z4$59hJ1dL" role="2Oq$k0">
                          <ref role="3cqZAo" node="1z4$59hEUW$" resolve="subpanel" />
                        </node>
                        <node concept="liA8E" id="1z4$59hITJo" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                          <node concept="37vLTw" id="1z4$59hITJp" role="37wK5m">
                            <ref role="3cqZAo" node="1z4$59hITIO" resolve="subsubpanel" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1z4$59hM08k" role="3cqZAp" />
                <node concept="3clFbF" id="1z4$59hEUYA" role="3cqZAp">
                  <node concept="2OqwBi" id="1z4$59hEUYB" role="3clFbG">
                    <node concept="37vLTw" id="1z4$59hHO5k" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z4$59hDhzN" resolve="advancedPanel" />
                    </node>
                    <node concept="liA8E" id="1z4$59hEUYD" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="37vLTw" id="1z4$59hEUYE" role="37wK5m">
                        <ref role="3cqZAo" node="1z4$59hEUW$" resolve="subpanel" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1z4$59hHZOu" role="3cqZAp" />
            <node concept="3clFbF" id="1z4$59hDh$e" role="3cqZAp">
              <node concept="1rXfSq" id="1z4$59hDh$f" role="3clFbG">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                <node concept="37vLTw" id="1z4$59hDh$g" role="37wK5m">
                  <ref role="3cqZAo" node="1z4$59hDhzN" resolve="advancedPanel" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="14pL6xi8wOZ" role="jymVt" />
    <node concept="3clFb_" id="14pL6xi8DQp" role="jymVt">
      <property role="TrG5h" value="isTypecheckingEnabled" />
      <node concept="10P_77" id="14pL6xi8EFZ" role="3clF45" />
      <node concept="3Tm1VV" id="14pL6xi8DQs" role="1B3o_S" />
      <node concept="3clFbS" id="14pL6xi8DQt" role="3clF47">
        <node concept="3clFbF" id="14pL6xi8Gmw" role="3cqZAp">
          <node concept="2OqwBi" id="14pL6xi8HzU" role="3clFbG">
            <node concept="37vLTw" id="14pL6xi8Gmv" role="2Oq$k0">
              <ref role="3cqZAo" node="14pL6xi8ySB" resolve="enableTypecheckingCheckbox" />
            </node>
            <node concept="liA8E" id="14pL6xi8IRQ" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="14IknWHqqnx" role="jymVt" />
    <node concept="3clFb_" id="7iCybvTn3it" role="jymVt">
      <property role="TrG5h" value="isTracingEnabled" />
      <node concept="10P_77" id="7iCybvTn3iu" role="3clF45" />
      <node concept="3Tm1VV" id="7iCybvTn3iv" role="1B3o_S" />
      <node concept="3clFbS" id="7iCybvTn3iw" role="3clF47">
        <node concept="3clFbF" id="7iCybvTn3ix" role="3cqZAp">
          <node concept="2OqwBi" id="7iCybvTn3iy" role="3clFbG">
            <node concept="37vLTw" id="7iCybvTn6mE" role="2Oq$k0">
              <ref role="3cqZAo" node="7iCybvTmPrI" resolve="enableTraceCheckbox" />
            </node>
            <node concept="liA8E" id="7iCybvTn3i$" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7iCybvTmvNX" role="jymVt" />
    <node concept="3clFb_" id="23Habm5CTIA" role="jymVt">
      <property role="TrG5h" value="isProfilingEnabled" />
      <node concept="10P_77" id="23Habm5CTIB" role="3clF45" />
      <node concept="3Tm1VV" id="23Habm5CTIC" role="1B3o_S" />
      <node concept="3clFbS" id="23Habm5CTID" role="3clF47">
        <node concept="3clFbF" id="23Habm5CTIE" role="3cqZAp">
          <node concept="2OqwBi" id="23Habm5CTIF" role="3clFbG">
            <node concept="37vLTw" id="23Habm5CTIG" role="2Oq$k0">
              <ref role="3cqZAo" node="23Habm5CcYT" resolve="enableProfilingCheckbox" />
            </node>
            <node concept="liA8E" id="23Habm5CTIH" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="23Habm5CTI_" role="jymVt" />
    <node concept="3clFb_" id="1z4$59hGu4P" role="jymVt">
      <property role="TrG5h" value="isReportingEnabled" />
      <node concept="10P_77" id="1z4$59hGu4Q" role="3clF45" />
      <node concept="3Tm1VV" id="1z4$59hGu4R" role="1B3o_S" />
      <node concept="3clFbS" id="1z4$59hGu4S" role="3clF47">
        <node concept="3clFbF" id="1z4$59hGu4T" role="3cqZAp">
          <node concept="2OqwBi" id="1z4$59hGu4U" role="3clFbG">
            <node concept="37vLTw" id="1z4$59hRZPW" role="2Oq$k0">
              <ref role="3cqZAo" node="1z4$59hFD5A" resolve="enableReportingCheckbox" />
            </node>
            <node concept="liA8E" id="1z4$59hGu4W" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1z4$59hGu4O" role="jymVt" />
    <node concept="3clFb_" id="14pL6xi8xeo" role="jymVt">
      <property role="TrG5h" value="setTypecheckingEnabled" />
      <node concept="37vLTG" id="14pL6xi8xnm" role="3clF46">
        <property role="TrG5h" value="yes" />
        <node concept="10P_77" id="14pL6xi8yrw" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="14pL6xi8xeq" role="3clF45" />
      <node concept="3Tm1VV" id="14pL6xi8xer" role="1B3o_S" />
      <node concept="3clFbS" id="14pL6xi8xes" role="3clF47">
        <node concept="3clFbF" id="14pL6xi8zZd" role="3cqZAp">
          <node concept="2OqwBi" id="14pL6xi8A$O" role="3clFbG">
            <node concept="2OqwBi" id="14pL6xi8$RA" role="2Oq$k0">
              <node concept="Xjq3P" id="14pL6xi8zZc" role="2Oq$k0" />
              <node concept="2OwXpG" id="14pL6xi8_E_" role="2OqNvi">
                <ref role="2Oxat5" node="14pL6xi8ySB" resolve="enableTypecheckingCheckbox" />
              </node>
            </node>
            <node concept="liA8E" id="14pL6xi8CB8" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
              <node concept="37vLTw" id="14pL6xi9qLK" role="37wK5m">
                <ref role="3cqZAo" node="14pL6xi8xnm" resolve="yes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7iCybvTmrHM" role="3cqZAp">
          <node concept="1rXfSq" id="7iCybvTmrHL" role="3clFbG">
            <ref role="37wK5l" node="7iCybvTmrHH" resolve="updateEnabledState" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Qx6_65k3w8" role="jymVt" />
    <node concept="3clFb_" id="1z4$59hG6VL" role="jymVt">
      <property role="TrG5h" value="setReportingEnabled" />
      <node concept="37vLTG" id="1z4$59hG6VM" role="3clF46">
        <property role="TrG5h" value="yes" />
        <node concept="10P_77" id="1z4$59hG6VN" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1z4$59hG6VO" role="3clF45" />
      <node concept="3Tm1VV" id="1z4$59hG6VP" role="1B3o_S" />
      <node concept="3clFbS" id="1z4$59hG6VQ" role="3clF47">
        <node concept="3clFbF" id="1z4$59hG6VR" role="3cqZAp">
          <node concept="2OqwBi" id="1z4$59hG6VS" role="3clFbG">
            <node concept="2OqwBi" id="1z4$59hG6VT" role="2Oq$k0">
              <node concept="Xjq3P" id="1z4$59hG6VU" role="2Oq$k0" />
              <node concept="2OwXpG" id="1z4$59hRYR6" role="2OqNvi">
                <ref role="2Oxat5" node="1z4$59hFD5A" resolve="enableReportingCheckbox" />
              </node>
            </node>
            <node concept="liA8E" id="1z4$59hG6VW" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
              <node concept="37vLTw" id="1z4$59hG6VX" role="37wK5m">
                <ref role="3cqZAo" node="1z4$59hG6VM" resolve="yes" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1z4$59hGphL" role="jymVt" />
    <node concept="3clFb_" id="7iCybvTn6Vi" role="jymVt">
      <property role="TrG5h" value="setTracingEnabled" />
      <node concept="37vLTG" id="7iCybvTn6Vj" role="3clF46">
        <property role="TrG5h" value="yes" />
        <node concept="10P_77" id="7iCybvTn6Vk" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7iCybvTn6Vl" role="3clF45" />
      <node concept="3Tm1VV" id="7iCybvTn6Vm" role="1B3o_S" />
      <node concept="3clFbS" id="7iCybvTn6Vn" role="3clF47">
        <node concept="3clFbF" id="7iCybvTn6Vo" role="3cqZAp">
          <node concept="2OqwBi" id="7iCybvTn6Vp" role="3clFbG">
            <node concept="2OqwBi" id="7iCybvTn6Vq" role="2Oq$k0">
              <node concept="Xjq3P" id="7iCybvTn6Vr" role="2Oq$k0" />
              <node concept="2OwXpG" id="7iCybvTnb8U" role="2OqNvi">
                <ref role="2Oxat5" node="7iCybvTmPrI" resolve="enableTraceCheckbox" />
              </node>
            </node>
            <node concept="liA8E" id="7iCybvTn6Vt" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
              <node concept="37vLTw" id="7iCybvTn6Vu" role="37wK5m">
                <ref role="3cqZAo" node="7iCybvTn6Vj" resolve="yes" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="23Habm5C_NU" role="jymVt" />
    <node concept="3clFb_" id="23Habm5Cy$A" role="jymVt">
      <property role="TrG5h" value="setProfilingEnabled" />
      <node concept="37vLTG" id="23Habm5Cy$B" role="3clF46">
        <property role="TrG5h" value="yes" />
        <node concept="10P_77" id="23Habm5Cy$C" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="23Habm5Cy$D" role="3clF45" />
      <node concept="3Tm1VV" id="23Habm5Cy$E" role="1B3o_S" />
      <node concept="3clFbS" id="23Habm5Cy$F" role="3clF47">
        <node concept="3clFbF" id="23Habm5Cy$G" role="3cqZAp">
          <node concept="2OqwBi" id="23Habm5Cy$H" role="3clFbG">
            <node concept="2OqwBi" id="23Habm5Cy$I" role="2Oq$k0">
              <node concept="Xjq3P" id="23Habm5Cy$J" role="2Oq$k0" />
              <node concept="2OwXpG" id="23Habm5Cy$K" role="2OqNvi">
                <ref role="2Oxat5" node="23Habm5CcYT" resolve="enableProfilingCheckbox" />
              </node>
            </node>
            <node concept="liA8E" id="23Habm5Cy$L" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
              <node concept="37vLTw" id="23Habm5Cy$M" role="37wK5m">
                <ref role="3cqZAo" node="23Habm5Cy$B" resolve="yes" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7iCybvTneMw" role="jymVt" />
    <node concept="3clFb_" id="7iCybvTmrHH" role="jymVt">
      <property role="TrG5h" value="updateEnabledState" />
      <node concept="3Tm6S6" id="7iCybvTmrHI" role="1B3o_S" />
      <node concept="3cqZAl" id="7iCybvTmrHJ" role="3clF45" />
      <node concept="3clFbS" id="7iCybvTmrHw" role="3clF47">
        <node concept="3clFbF" id="1z4$59hG2j3" role="3cqZAp">
          <node concept="2OqwBi" id="1z4$59hG2j4" role="3clFbG">
            <node concept="2OqwBi" id="1z4$59hG2j5" role="2Oq$k0">
              <node concept="Xjq3P" id="1z4$59hG2j6" role="2Oq$k0" />
              <node concept="2OwXpG" id="1z4$59hG5vz" role="2OqNvi">
                <ref role="2Oxat5" node="1z4$59hFD5A" resolve="enableReportingCheckbox" />
              </node>
            </node>
            <node concept="liA8E" id="1z4$59hG2j8" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="2OqwBi" id="1z4$59hG2j9" role="37wK5m">
                <node concept="2OqwBi" id="1z4$59hG2ja" role="2Oq$k0">
                  <node concept="Xjq3P" id="1z4$59hG2jb" role="2Oq$k0" />
                  <node concept="2OwXpG" id="1z4$59hG2jc" role="2OqNvi">
                    <ref role="2Oxat5" node="14pL6xi8ySB" resolve="enableTypecheckingCheckbox" />
                  </node>
                </node>
                <node concept="liA8E" id="1z4$59hG2jd" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7iCybvTmT9P" role="3cqZAp">
          <node concept="2OqwBi" id="7iCybvTmT9Q" role="3clFbG">
            <node concept="2OqwBi" id="7iCybvTmT9R" role="2Oq$k0">
              <node concept="Xjq3P" id="7iCybvTmT9S" role="2Oq$k0" />
              <node concept="2OwXpG" id="7iCybvTmUdF" role="2OqNvi">
                <ref role="2Oxat5" node="7iCybvTmPrI" resolve="enableTraceCheckbox" />
              </node>
            </node>
            <node concept="liA8E" id="7iCybvTmT9U" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="1Wc70l" id="1z4$59hGGud" role="37wK5m">
                <node concept="2OqwBi" id="7iCybvTmT9V" role="3uHU7B">
                  <node concept="2OqwBi" id="7iCybvTmT9W" role="2Oq$k0">
                    <node concept="Xjq3P" id="7iCybvTmT9X" role="2Oq$k0" />
                    <node concept="2OwXpG" id="7iCybvTmT9Y" role="2OqNvi">
                      <ref role="2Oxat5" node="14pL6xi8ySB" resolve="enableTypecheckingCheckbox" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7iCybvTmT9Z" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1z4$59hGK__" role="3uHU7w">
                  <node concept="2OqwBi" id="1z4$59hGIOd" role="2Oq$k0">
                    <node concept="Xjq3P" id="1z4$59hGIOe" role="2Oq$k0" />
                    <node concept="2OwXpG" id="1z4$59hGIOf" role="2OqNvi">
                      <ref role="2Oxat5" node="1z4$59hFD5A" resolve="enableReportingCheckbox" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1z4$59hGLY9" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="23Habm5Cq5r" role="3cqZAp">
          <node concept="2OqwBi" id="23Habm5Cq5s" role="3clFbG">
            <node concept="2OqwBi" id="23Habm5Cq5t" role="2Oq$k0">
              <node concept="Xjq3P" id="23Habm5Cq5u" role="2Oq$k0" />
              <node concept="2OwXpG" id="23Habm5Cq5v" role="2OqNvi">
                <ref role="2Oxat5" node="23Habm5CcYT" resolve="enableProfilingCheckbox" />
              </node>
            </node>
            <node concept="liA8E" id="23Habm5Cq5w" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="1Wc70l" id="23Habm5Cq5x" role="37wK5m">
                <node concept="2OqwBi" id="23Habm5Cq5y" role="3uHU7B">
                  <node concept="2OqwBi" id="23Habm5Cq5z" role="2Oq$k0">
                    <node concept="Xjq3P" id="23Habm5Cq5$" role="2Oq$k0" />
                    <node concept="2OwXpG" id="23Habm5Cq5_" role="2OqNvi">
                      <ref role="2Oxat5" node="14pL6xi8ySB" resolve="enableTypecheckingCheckbox" />
                    </node>
                  </node>
                  <node concept="liA8E" id="23Habm5Cq5A" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                  </node>
                </node>
                <node concept="2OqwBi" id="23Habm5Cq5B" role="3uHU7w">
                  <node concept="2OqwBi" id="23Habm5Cq5C" role="2Oq$k0">
                    <node concept="Xjq3P" id="23Habm5Cq5D" role="2Oq$k0" />
                    <node concept="2OwXpG" id="23Habm5Cq5E" role="2OqNvi">
                      <ref role="2Oxat5" node="1z4$59hFD5A" resolve="enableReportingCheckbox" />
                    </node>
                  </node>
                  <node concept="liA8E" id="23Habm5Cq5F" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="14pL6xi8zvf" role="jymVt" />
    <node concept="312cEg" id="14pL6xi8ySB" role="jymVt">
      <property role="TrG5h" value="enableTypecheckingCheckbox" />
      <node concept="3Tm6S6" id="14pL6xi8yS_" role="1B3o_S" />
      <node concept="3uibUv" id="14pL6xi8ySA" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
      </node>
    </node>
    <node concept="312cEg" id="1z4$59hFD5A" role="jymVt">
      <property role="TrG5h" value="enableReportingCheckbox" />
      <node concept="3Tm6S6" id="1z4$59hFD5B" role="1B3o_S" />
      <node concept="3uibUv" id="1z4$59hFD5C" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
      </node>
    </node>
    <node concept="312cEg" id="7iCybvTmPrI" role="jymVt">
      <property role="TrG5h" value="enableTraceCheckbox" />
      <node concept="3Tm6S6" id="7iCybvTmPrJ" role="1B3o_S" />
      <node concept="3uibUv" id="7iCybvTmPrK" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
      </node>
    </node>
    <node concept="312cEg" id="23Habm5CcYT" role="jymVt">
      <property role="TrG5h" value="enableProfilingCheckbox" />
      <node concept="3Tm6S6" id="23Habm5CcYU" role="1B3o_S" />
      <node concept="3uibUv" id="23Habm5CcYV" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
      </node>
    </node>
    <node concept="2tJIrI" id="uB9WAZaAFr" role="jymVt" />
    <node concept="3Tm1VV" id="uB9WAZaAyE" role="1B3o_S" />
    <node concept="3uibUv" id="uB9WAZaAEU" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
    </node>
    <node concept="3uibUv" id="2CPBoDCAfgy" role="EKbjA">
      <ref role="3uigEE" to="hq8m:~SearchableConfigurable" resolve="SearchableConfigurable" />
    </node>
  </node>
  <node concept="312cEu" id="6TxWhg_AhBw">
    <property role="TrG5h" value="TypecheckingWidget" />
    <node concept="2tJIrI" id="6TxWhg_AhDg" role="jymVt" />
    <node concept="3uibUv" id="1$ZRmkX9bOC" role="EKbjA">
      <ref role="3uigEE" to="jkny:~CustomStatusBarWidget" resolve="CustomStatusBarWidget" />
    </node>
    <node concept="3uibUv" id="4hZPELmBBTb" role="EKbjA">
      <ref role="3uigEE" to="jkny:~StatusBarWidget$TextPresentation" resolve="StatusBarWidget.TextPresentation" />
    </node>
    <node concept="3uibUv" id="1$ZRmkX9bYN" role="EKbjA">
      <ref role="3uigEE" to="jkny:~StatusBarWidget$WidgetPresentation" resolve="StatusBarWidget.WidgetPresentation" />
    </node>
    <node concept="3uibUv" id="2LX1rHNIXCu" role="EKbjA">
      <ref role="3uigEE" to="j936:~UISettingsListener" resolve="UISettingsListener" />
    </node>
    <node concept="3uibUv" id="1tWJVfj_YDg" role="EKbjA">
      <ref role="3uigEE" to="mnlj:~PropertyChangeListener" resolve="PropertyChangeListener" />
    </node>
    <node concept="3uibUv" id="4qPSkk6qasc" role="EKbjA">
      <ref role="3uigEE" to="rfhd:~RegistryValueListener" resolve="RegistryValueListener" />
    </node>
    <node concept="Wx3nA" id="6TxWhg_AzHm" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="WIDGET_ID" />
      <node concept="3Tm6S6" id="6TxWhg_AzHj" role="1B3o_S" />
      <node concept="17QB3L" id="6TxWhg_AzHk" role="1tU5fm" />
      <node concept="Xl_RD" id="6TxWhg_AzHl" role="33vP2m">
        <property role="Xl_RC" value="TypecheckingWidget" />
      </node>
    </node>
    <node concept="2tJIrI" id="39fX5EFCOVY" role="jymVt" />
    <node concept="Wx3nA" id="39fX5EFCsBQ" role="jymVt">
      <property role="TrG5h" value="enabledIcon" />
      <node concept="3uibUv" id="39fX5EFCsBT" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="1QGGTA" id="39fX5EFCsBU" role="33vP2m">
        <node concept="1QGGSu" id="39fX5EFCsBV" role="1QGGTw">
          <property role="1iqoE4" value="${module}/icons/codeRules.svg" />
          <property role="uyjgh" value="${module}/icons/codeRules_newui.svg" />
        </node>
      </node>
      <node concept="3Tm6S6" id="39fX5EFCsBS" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="39fX5EFCy4f" role="jymVt">
      <property role="TrG5h" value="disabledIcon" />
      <node concept="3uibUv" id="39fX5EFCy4i" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="1QGGTA" id="39fX5EFCy4j" role="33vP2m">
        <node concept="1QGGSu" id="39fX5EFCy4k" role="1QGGTw">
          <property role="1iqoE4" value="${module}/icons/codeRulesOff.svg" />
          <property role="uyjgh" value="${module}/icons/codeRulesOff_newui.svg" />
        </node>
      </node>
      <node concept="3Tm6S6" id="39fX5EFCy4h" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6TxWhg_Bo$b" role="jymVt" />
    <node concept="312cEg" id="6TxWhg_Bq25" role="jymVt">
      <property role="TrG5h" value="panel" />
      <node concept="3Tm6S6" id="6TxWhg_Bq26" role="1B3o_S" />
      <node concept="3uibUv" id="6TxWhg_BuaG" role="1tU5fm">
        <ref role="3uigEE" node="6TxWhg_Bhtw" resolve="TypecheckingWidget.Panel" />
      </node>
    </node>
    <node concept="312cEg" id="6TxWhgA5cBN" role="jymVt">
      <property role="TrG5h" value="focusManager" />
      <node concept="3Tm6S6" id="6TxWhgA5cBL" role="1B3o_S" />
      <node concept="3uibUv" id="6TxWhgA5cBM" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~KeyboardFocusManager" resolve="KeyboardFocusManager" />
      </node>
    </node>
    <node concept="312cEg" id="6TxWhgA5PHx" role="jymVt">
      <property role="TrG5h" value="statusBar" />
      <node concept="3Tm6S6" id="6TxWhgA5PHy" role="1B3o_S" />
      <node concept="3uibUv" id="6TxWhgA5PH$" role="1tU5fm">
        <ref role="3uigEE" to="jkny:~StatusBar" resolve="StatusBar" />
      </node>
    </node>
    <node concept="2tJIrI" id="6TxWhgA5O_y" role="jymVt" />
    <node concept="3clFbW" id="6TxWhg_B4Ik" role="jymVt">
      <node concept="3cqZAl" id="6TxWhg_B4Im" role="3clF45" />
      <node concept="3clFbS" id="6TxWhg_B4In" role="3clF47" />
    </node>
    <node concept="3clFb_" id="6TxWhg_AqGf" role="jymVt">
      <property role="TrG5h" value="ID" />
      <node concept="3Tm1VV" id="6TxWhg_AqGg" role="1B3o_S" />
      <node concept="2AHcQZ" id="6TxWhg_AqGi" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqGj" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="6TxWhg_AqGk" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="6TxWhg_AqGl" role="3clF47">
        <node concept="3cpWs6" id="6TxWhg_AqGo" role="3cqZAp">
          <node concept="37vLTw" id="6TxWhg_AzHp" role="3cqZAk">
            <ref role="3cqZAo" node="6TxWhg_AzHm" resolve="WIDGET_ID" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqGm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6TxWhg_BlUd" role="jymVt" />
    <node concept="3clFb_" id="6TxWhg_Bnkz" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="3cqZAl" id="6TxWhg_Bnk_" role="3clF45" />
      <node concept="3clFbS" id="6TxWhg_BnkA" role="3clF47">
        <node concept="3clFbJ" id="6TxWhg_Bw4_" role="3cqZAp">
          <node concept="3y3z36" id="6TxWhg_Bznd" role="3clFbw">
            <node concept="10Nm6u" id="6TxWhg_B_fU" role="3uHU7w" />
            <node concept="37vLTw" id="6TxWhg_By3n" role="3uHU7B">
              <ref role="3cqZAo" node="6TxWhg_Bq25" resolve="panel" />
            </node>
          </node>
          <node concept="3clFbS" id="6TxWhg_Bw4B" role="3clFbx">
            <node concept="3clFbF" id="6TxWhg_BB_d" role="3cqZAp">
              <node concept="2OqwBi" id="6TxWhg_BCxF" role="3clFbG">
                <node concept="37vLTw" id="6TxWhg_BB_c" role="2Oq$k0">
                  <ref role="3cqZAo" node="6TxWhg_Bq25" resolve="panel" />
                </node>
                <node concept="liA8E" id="6TxWhg_BFnm" role="2OqNvi">
                  <ref role="37wK5l" node="6TxWhg_BI_3" resolve="update" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6GMlsrjEXyT" role="3cqZAp">
          <node concept="3clFbS" id="6GMlsrjEXyV" role="3clFbx">
            <node concept="3clFbF" id="6TxWhgA5ZEV" role="3cqZAp">
              <node concept="2OqwBi" id="6TxWhgA61O1" role="3clFbG">
                <node concept="37vLTw" id="6TxWhgA5ZET" role="2Oq$k0">
                  <ref role="3cqZAo" node="6TxWhgA5PHx" resolve="statusBar" />
                </node>
                <node concept="liA8E" id="6TxWhgA63kV" role="2OqNvi">
                  <ref role="37wK5l" to="jkny:~StatusBar.updateWidget(java.lang.String)" resolve="updateWidget" />
                  <node concept="1rXfSq" id="6TxWhgA68r3" role="37wK5m">
                    <ref role="37wK5l" node="6TxWhg_AqGf" resolve="ID" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6GMlsrjF3X9" role="3clFbw">
            <node concept="10Nm6u" id="6GMlsrjF5Ag" role="3uHU7w" />
            <node concept="37vLTw" id="6GMlsrjF2tF" role="3uHU7B">
              <ref role="3cqZAo" node="6TxWhgA5PHx" resolve="statusBar" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6TxWhg_BnYN" role="jymVt" />
    <node concept="3clFb_" id="6TxWhg_AqGp" role="jymVt">
      <property role="TrG5h" value="install" />
      <node concept="3Tm1VV" id="6TxWhg_AqGq" role="1B3o_S" />
      <node concept="3cqZAl" id="6TxWhg_AqGs" role="3clF45" />
      <node concept="37vLTG" id="6TxWhg_AqGt" role="3clF46">
        <property role="TrG5h" value="bar" />
        <node concept="3uibUv" id="6TxWhg_AqGu" role="1tU5fm">
          <ref role="3uigEE" to="jkny:~StatusBar" resolve="StatusBar" />
        </node>
        <node concept="2AHcQZ" id="6TxWhg_AqGv" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="6TxWhg_AqGw" role="3clF47">
        <node concept="3clFbF" id="4qPSkk5u9vR" role="3cqZAp">
          <node concept="37vLTI" id="4qPSkk5umfp" role="3clFbG">
            <node concept="37vLTw" id="4qPSkk5uow7" role="37vLTx">
              <ref role="3cqZAo" node="6TxWhg_AqGt" resolve="bar" />
            </node>
            <node concept="2OqwBi" id="4qPSkk5uc_3" role="37vLTJ">
              <node concept="Xjq3P" id="4qPSkk5u9vP" role="2Oq$k0" />
              <node concept="2OwXpG" id="4qPSkk5ufN9" role="2OqNvi">
                <ref role="2Oxat5" node="6TxWhgA5PHx" resolve="statusBar" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4ot3PHR1nJ6" role="3cqZAp">
          <node concept="2OqwBi" id="4ot3PHR1FVg" role="3clFbG">
            <node concept="2OqwBi" id="4ot3PHR1Ejr" role="2Oq$k0">
              <node concept="2OqwBi" id="4ot3PHR1CGt" role="2Oq$k0">
                <node concept="2YIFZM" id="4ot3PHR1A3j" role="2Oq$k0">
                  <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                  <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                </node>
                <node concept="liA8E" id="4ot3PHR1CGu" role="2OqNvi">
                  <ref role="37wK5l" to="1m72:~ComponentManager.getMessageBus()" resolve="getMessageBus" />
                </node>
              </node>
              <node concept="liA8E" id="4ot3PHR1Ejs" role="2OqNvi">
                <ref role="37wK5l" to="4b2m:~MessageBus.connect(com.intellij.openapi.Disposable)" resolve="connect" />
                <node concept="Xjq3P" id="4ot3PHR1Ejt" role="37wK5m" />
              </node>
            </node>
            <node concept="liA8E" id="4ot3PHR1FVh" role="2OqNvi">
              <ref role="37wK5l" to="4b2m:~SimpleMessageBusConnection.subscribe(com.intellij.util.messages.Topic,java.lang.Object)" resolve="subscribe" />
              <node concept="10M0yZ" id="4ot3PHR1FVi" role="37wK5m">
                <ref role="1PxDUh" to="j936:~UISettingsListener" resolve="UISettingsListener" />
                <ref role="3cqZAo" to="j936:~UISettingsListener.TOPIC" resolve="TOPIC" />
              </node>
              <node concept="Xjq3P" id="4ot3PHR1FVj" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qPSkk6r0PO" role="3cqZAp">
          <node concept="15s5l7" id="4qPSkk6ubOc" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: Incompatible method signature&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5948132024743482654]&quot;;" />
            <property role="huDt6" value="Error: Incompatible method signature" />
          </node>
          <node concept="15s5l7" id="4qPSkk6u9BT" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: TypecheckingWidget is not a subtype of ?no classifier?&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/5875805516898273487,r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/4660288602099522921]&quot;;" />
            <property role="huDt6" value="Error: TypecheckingWidget is not a subtype of ?no classifier?" />
          </node>
          <node concept="2OqwBi" id="4qPSkk6r6Qy" role="3clFbG">
            <node concept="2YIFZM" id="4qPSkk6r0PQ" role="2Oq$k0">
              <ref role="37wK5l" to="rfhd:~Registry.get(java.lang.String)" resolve="get" />
              <ref role="1Pybhc" to="rfhd:~Registry" resolve="Registry" />
              <node concept="Xl_RD" id="4qPSkk6r0PR" role="37wK5m">
                <property role="Xl_RC" value="mps.coderules.typechecking.enabled" />
              </node>
            </node>
            <node concept="liA8E" id="4qPSkk6r9gH" role="2OqNvi">
              <ref role="37wK5l" to="rfhd:~RegistryValue.addListener(com.intellij.openapi.util.registry.RegistryValueListener,com.intellij.openapi.Disposable)" resolve="addListener" />
              <node concept="Xjq3P" id="4qPSkk6rfcz" role="37wK5m" />
              <node concept="Xjq3P" id="4qPSkk6spYO" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6TxWhgA5cBU" role="3cqZAp">
          <node concept="37vLTI" id="6TxWhgA5cBV" role="3clFbG">
            <node concept="2OqwBi" id="6TxWhgA5cBW" role="37vLTJ">
              <node concept="Xjq3P" id="6TxWhgA5cBX" role="2Oq$k0" />
              <node concept="2OwXpG" id="6TxWhgA5cBY" role="2OqNvi">
                <ref role="2Oxat5" node="6TxWhgA5cBN" resolve="focusManager" />
              </node>
            </node>
            <node concept="2YIFZM" id="6TxWhgA5cBZ" role="37vLTx">
              <ref role="1Pybhc" to="z60i:~KeyboardFocusManager" resolve="KeyboardFocusManager" />
              <ref role="37wK5l" to="z60i:~KeyboardFocusManager.getCurrentKeyboardFocusManager()" resolve="getCurrentKeyboardFocusManager" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6TxWhgA5bqP" role="3cqZAp">
          <node concept="2OqwBi" id="6TxWhgA5eQb" role="3clFbG">
            <node concept="2OqwBi" id="6TxWhgA5cC0" role="2Oq$k0">
              <node concept="Xjq3P" id="6TxWhgA5cC1" role="2Oq$k0" />
              <node concept="2OwXpG" id="6TxWhgA5cC2" role="2OqNvi">
                <ref role="2Oxat5" node="6TxWhgA5cBN" resolve="focusManager" />
              </node>
            </node>
            <node concept="liA8E" id="6TxWhgA5gBF" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~KeyboardFocusManager.addPropertyChangeListener(java.beans.PropertyChangeListener)" resolve="addPropertyChangeListener" />
              <node concept="Xjq3P" id="6TxWhgA5jei" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qPSkk6hHeL" role="3cqZAp">
          <node concept="1rXfSq" id="4qPSkk6hHeJ" role="3clFbG">
            <ref role="37wK5l" node="6TxWhg_Bnkz" resolve="update" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqGx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4qPSkk6hMOM" role="jymVt" />
    <node concept="3clFb_" id="6TxWhg_AqHN" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3Tm1VV" id="6TxWhg_AqHO" role="1B3o_S" />
      <node concept="3cqZAl" id="6TxWhg_AqHQ" role="3clF45" />
      <node concept="3clFbS" id="6TxWhg_AqHW" role="3clF47">
        <node concept="3clFbJ" id="6TxWhgA5lC4" role="3cqZAp">
          <node concept="3y3z36" id="6TxWhgA5qN3" role="3clFbw">
            <node concept="10Nm6u" id="6TxWhgA5tgb" role="3uHU7w" />
            <node concept="37vLTw" id="6TxWhgA5oPu" role="3uHU7B">
              <ref role="3cqZAo" node="6TxWhgA5cBN" resolve="focusManager" />
            </node>
          </node>
          <node concept="3clFbS" id="6TxWhgA5lC6" role="3clFbx">
            <node concept="3clFbF" id="6TxWhgA5wkH" role="3cqZAp">
              <node concept="2OqwBi" id="6TxWhgA5y8k" role="3clFbG">
                <node concept="37vLTw" id="6TxWhgA5wkG" role="2Oq$k0">
                  <ref role="3cqZAo" node="6TxWhgA5cBN" resolve="focusManager" />
                </node>
                <node concept="liA8E" id="6TxWhgA5zRU" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~KeyboardFocusManager.removePropertyChangeListener(java.beans.PropertyChangeListener)" resolve="removePropertyChangeListener" />
                  <node concept="Xjq3P" id="6TxWhgA5Ai8" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6TxWhgA5EqU" role="3cqZAp">
              <node concept="37vLTI" id="6TxWhgA5I1j" role="3clFbG">
                <node concept="10Nm6u" id="6TxWhgA5Jh2" role="37vLTx" />
                <node concept="2OqwBi" id="6TxWhgA5FMI" role="37vLTJ">
                  <node concept="Xjq3P" id="6TxWhgA5EqS" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6TxWhgA5GOZ" role="2OqNvi">
                    <ref role="2Oxat5" node="6TxWhgA5cBN" resolve="focusManager" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6GMlsrjECrh" role="3cqZAp">
          <node concept="37vLTI" id="6GMlsrjEOH2" role="3clFbG">
            <node concept="10Nm6u" id="6GMlsrjER8F" role="37vLTx" />
            <node concept="2OqwBi" id="6GMlsrjEIlj" role="37vLTJ">
              <node concept="Xjq3P" id="6GMlsrjECrf" role="2Oq$k0" />
              <node concept="2OwXpG" id="6GMlsrjEMqD" role="2OqNvi">
                <ref role="2Oxat5" node="6TxWhg_Bq25" resolve="panel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6GMlsrjFdz7" role="3cqZAp">
          <node concept="37vLTI" id="6GMlsrjFnjb" role="3clFbG">
            <node concept="10Nm6u" id="6GMlsrjFpJw" role="37vLTx" />
            <node concept="2OqwBi" id="6GMlsrjFivx" role="37vLTJ">
              <node concept="Xjq3P" id="6GMlsrjFdz5" role="2Oq$k0" />
              <node concept="2OwXpG" id="6GMlsrjFk5U" role="2OqNvi">
                <ref role="2Oxat5" node="6TxWhgA5PHx" resolve="statusBar" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqHX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6TxWhg_AqGy" role="jymVt">
      <property role="TrG5h" value="getComponent" />
      <node concept="3Tm1VV" id="6TxWhg_AqGz" role="1B3o_S" />
      <node concept="3uibUv" id="6TxWhg_AqG_" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="3clFbS" id="6TxWhg_AqGB" role="3clF47">
        <node concept="3clFbJ" id="6TxWhg_C7nB" role="3cqZAp">
          <node concept="3clFbS" id="6TxWhg_C7nD" role="3clFbx">
            <node concept="3clFbF" id="6TxWhg_ChXX" role="3cqZAp">
              <node concept="37vLTI" id="6TxWhg_CjmB" role="3clFbG">
                <node concept="2ShNRf" id="6TxWhg_Cl9v" role="37vLTx">
                  <node concept="1pGfFk" id="6TxWhg_Cv2l" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="6TxWhg_BkMR" resolve="TypecheckingWidget.Panel" />
                  </node>
                </node>
                <node concept="37vLTw" id="6TxWhg_ChXV" role="37vLTJ">
                  <ref role="3cqZAo" node="6TxWhg_Bq25" resolve="panel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6TxWhg_CaEU" role="3clFbw">
            <node concept="10Nm6u" id="6TxWhg_CcGW" role="3uHU7w" />
            <node concept="37vLTw" id="6TxWhg_C9vO" role="3uHU7B">
              <ref role="3cqZAo" node="6TxWhg_Bq25" resolve="panel" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6TxWhg_AqGE" role="3cqZAp">
          <node concept="37vLTw" id="6TxWhg_C5pX" role="3cqZAk">
            <ref role="3cqZAo" node="6TxWhg_Bq25" resolve="panel" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqGC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6TxWhg_AqGF" role="jymVt">
      <property role="TrG5h" value="getText" />
      <node concept="3Tm1VV" id="6TxWhg_AqGG" role="1B3o_S" />
      <node concept="2AHcQZ" id="6TxWhg_AqGI" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqGJ" role="2AJF6D">
        <ref role="2AI5Lk" to="zn9m:~NlsContexts$Label" resolve="NlsContexts.Label" />
      </node>
      <node concept="3uibUv" id="6TxWhg_AqGK" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="6TxWhg_AqGN" role="3clF47">
        <node concept="3clFbF" id="6TxWhgAhwT4" role="3cqZAp">
          <node concept="1eOMI4" id="6TxWhgAhwT7" role="3clFbG">
            <node concept="3K4zz7" id="6TxWhgAhwT8" role="1eOMHV">
              <node concept="Xl_RD" id="6TxWhgAhwT9" role="3K4E3e">
                <property role="Xl_RC" value=":ON" />
              </node>
              <node concept="Xl_RD" id="6TxWhgAhwTa" role="3K4GZi">
                <property role="Xl_RC" value=":OFF" />
              </node>
              <node concept="2YIFZM" id="4qPSkk6qGUN" role="3K4Cdx">
                <ref role="37wK5l" to="rfhd:~Registry.is(java.lang.String)" resolve="is" />
                <ref role="1Pybhc" to="rfhd:~Registry" resolve="Registry" />
                <node concept="Xl_RD" id="4qPSkk6qGUO" role="37wK5m">
                  <property role="Xl_RC" value="mps.coderules.typechecking.enabled" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqGO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6TxWhg_AqGR" role="jymVt">
      <property role="TrG5h" value="getAlignment" />
      <node concept="3Tm1VV" id="6TxWhg_AqGS" role="1B3o_S" />
      <node concept="10OMs4" id="6TxWhg_AqGU" role="3clF45" />
      <node concept="3clFbS" id="6TxWhg_AqGX" role="3clF47">
        <node concept="3clFbF" id="4hZPELmBFEN" role="3cqZAp">
          <node concept="10M0yZ" id="7QIaYHuO5JB" role="3clFbG">
            <ref role="3cqZAo" to="z60i:~Component.RIGHT_ALIGNMENT" resolve="RIGHT_ALIGNMENT" />
            <ref role="1PxDUh" to="dxuu:~JComponent" resolve="JComponent" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqGY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6TxWhg_AqH1" role="jymVt">
      <property role="TrG5h" value="getTooltipText" />
      <node concept="3Tm1VV" id="6TxWhg_AqH2" role="1B3o_S" />
      <node concept="2AHcQZ" id="6TxWhg_AqH4" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqH5" role="2AJF6D">
        <ref role="2AI5Lk" to="zn9m:~NlsContexts$Tooltip" resolve="NlsContexts.Tooltip" />
      </node>
      <node concept="3uibUv" id="6TxWhg_AqH6" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="6TxWhg_AqHa" role="3clF47">
        <node concept="3clFbF" id="6TxWhgAeDr_" role="3cqZAp">
          <node concept="3cpWs3" id="6TxWhgAePo5" role="3clFbG">
            <node concept="Xl_RD" id="6TxWhgAeQoU" role="3uHU7w">
              <property role="Xl_RC" value=" typechecking with Coderules" />
            </node>
            <node concept="1eOMI4" id="6TxWhgAdXKW" role="3uHU7B">
              <node concept="3K4zz7" id="6TxWhgAdZNa" role="1eOMHV">
                <node concept="Xl_RD" id="6TxWhgAe1z9" role="3K4E3e">
                  <property role="Xl_RC" value="Disable" />
                </node>
                <node concept="Xl_RD" id="6TxWhgAe5D3" role="3K4GZi">
                  <property role="Xl_RC" value="Enable" />
                </node>
                <node concept="2YIFZM" id="4qPSkk6qD_w" role="3K4Cdx">
                  <ref role="37wK5l" to="rfhd:~Registry.is(java.lang.String)" resolve="is" />
                  <ref role="1Pybhc" to="rfhd:~Registry" resolve="Registry" />
                  <node concept="Xl_RD" id="4qPSkk6qD_x" role="37wK5m">
                    <property role="Xl_RC" value="mps.coderules.typechecking.enabled" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqHb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6TxWhgA75AK" role="jymVt">
      <property role="TrG5h" value="getPresentation" />
      <node concept="3Tm1VV" id="6TxWhgA75AM" role="1B3o_S" />
      <node concept="2AHcQZ" id="6TxWhgA75AO" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="6TxWhgA75AP" role="3clF45">
        <ref role="3uigEE" to="jkny:~StatusBarWidget$WidgetPresentation" resolve="StatusBarWidget.WidgetPresentation" />
      </node>
      <node concept="3clFbS" id="6TxWhgA75AQ" role="3clF47">
        <node concept="3clFbF" id="6TxWhgA7c5U" role="3cqZAp">
          <node concept="Xjq3P" id="6TxWhgA7c5T" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="6TxWhgA75AR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6TxWhg_AqHe" role="jymVt">
      <property role="TrG5h" value="getClickConsumer" />
      <node concept="3Tm1VV" id="6TxWhg_AqHf" role="1B3o_S" />
      <node concept="2AHcQZ" id="6TxWhg_AqHh" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="6TxWhg_AqHi" role="3clF45">
        <ref role="3uigEE" to="9w4s:~Consumer" resolve="Consumer" />
        <node concept="3uibUv" id="6TxWhg_AqHj" role="11_B2D">
          <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
        </node>
      </node>
      <node concept="3clFbS" id="6TxWhg_AqHn" role="3clF47">
        <node concept="3clFbF" id="6TxWhgA6dG5" role="3cqZAp">
          <node concept="1bVj0M" id="6TxWhgA6dG3" role="3clFbG">
            <node concept="3clFbS" id="6TxWhgA6dG4" role="1bW5cS">
              <node concept="3clFbJ" id="6TxWhgA6wa1" role="3cqZAp">
                <node concept="3clFbS" id="6TxWhgA6wa3" role="3clFbx">
                  <node concept="3clFbF" id="6TxWhgAyqqH" role="3cqZAp">
                    <node concept="1rXfSq" id="6TxWhgAyqqF" role="3clFbG">
                      <ref role="37wK5l" node="6TxWhgAxJqL" resolve="triggerEnabled" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="6TxWhgA6MFy" role="3cqZAp">
                    <node concept="1rXfSq" id="6TxWhgA6MFw" role="3clFbG">
                      <ref role="37wK5l" node="6TxWhg_Bnkz" resolve="update" />
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="1$ZRmkX9ej$" role="3clFbw">
                  <node concept="3fqX7Q" id="1$ZRmkX9ejD" role="3uHU7B">
                    <node concept="2OqwBi" id="1$ZRmkX9ejE" role="3fr31v">
                      <node concept="37vLTw" id="2BHiRxgm7Hw" role="2Oq$k0">
                        <ref role="3cqZAo" node="6TxWhgA6eG6" resolve="e" />
                      </node>
                      <node concept="liA8E" id="1$ZRmkX9ejG" role="2OqNvi">
                        <ref role="37wK5l" to="hyam:~MouseEvent.isPopupTrigger()" resolve="isPopupTrigger" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="1$ZRmkX9ejH" role="3uHU7w">
                    <node concept="2OqwBi" id="1$ZRmkX9ejJ" role="3uHU7w">
                      <node concept="37vLTw" id="2BHiRxglwzb" role="2Oq$k0">
                        <ref role="3cqZAo" node="6TxWhgA6eG6" resolve="e" />
                      </node>
                      <node concept="liA8E" id="1$ZRmkX9ejL" role="2OqNvi">
                        <ref role="37wK5l" to="hyam:~MouseEvent.getButton()" resolve="getButton" />
                      </node>
                    </node>
                    <node concept="10M0yZ" id="1$ZRmkX9ejI" role="3uHU7B">
                      <ref role="1PxDUh" to="hyam:~MouseEvent" resolve="MouseEvent" />
                      <ref role="3cqZAo" to="hyam:~MouseEvent.BUTTON1" resolve="BUTTON1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="6TxWhgA6eG6" role="1bW2Oz">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="6TxWhgA6gL1" role="1tU5fm">
                <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqHo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6TxWhg_AqHr" role="jymVt">
      <property role="TrG5h" value="uiSettingsChanged" />
      <node concept="3Tm1VV" id="6TxWhg_AqHs" role="1B3o_S" />
      <node concept="3cqZAl" id="6TxWhg_AqHu" role="3clF45" />
      <node concept="37vLTG" id="6TxWhg_AqHv" role="3clF46">
        <property role="TrG5h" value="settings" />
        <node concept="3uibUv" id="6TxWhg_AqHw" role="1tU5fm">
          <ref role="3uigEE" to="j936:~UISettings" resolve="UISettings" />
        </node>
        <node concept="2AHcQZ" id="6TxWhg_AqHx" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="6TxWhg_AqH_" role="3clF47">
        <node concept="3clFbF" id="6TxWhgA52wk" role="3cqZAp">
          <node concept="1rXfSq" id="6TxWhgA52wj" role="3clFbG">
            <ref role="37wK5l" node="6TxWhg_Bnkz" resolve="update" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqHA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6TxWhg_AqHB" role="jymVt">
      <property role="TrG5h" value="propertyChange" />
      <node concept="3Tm1VV" id="6TxWhg_AqHC" role="1B3o_S" />
      <node concept="3cqZAl" id="6TxWhg_AqHE" role="3clF45" />
      <node concept="37vLTG" id="6TxWhg_AqHF" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="6TxWhg_AqHG" role="1tU5fm">
          <ref role="3uigEE" to="mnlj:~PropertyChangeEvent" resolve="PropertyChangeEvent" />
        </node>
      </node>
      <node concept="3clFbS" id="6TxWhg_AqHL" role="3clF47">
        <node concept="3clFbF" id="6TxWhgA55WF" role="3cqZAp">
          <node concept="1rXfSq" id="6TxWhgA55WE" role="3clFbG">
            <ref role="37wK5l" node="6TxWhg_Bnkz" resolve="update" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6TxWhg_AqHM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4qPSkk6rW15" role="jymVt">
      <property role="TrG5h" value="afterValueChanged" />
      <node concept="3Tm1VV" id="4qPSkk6rW17" role="1B3o_S" />
      <node concept="3cqZAl" id="4qPSkk6rW19" role="3clF45" />
      <node concept="37vLTG" id="4qPSkk6rW1a" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="4qPSkk6rW1b" role="1tU5fm">
          <ref role="3uigEE" to="rfhd:~RegistryValue" resolve="RegistryValue" />
        </node>
        <node concept="2AHcQZ" id="4qPSkk6rW1c" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4qPSkk6rW1h" role="3clF47">
        <node concept="3clFbF" id="4qPSkk6smt7" role="3cqZAp">
          <node concept="1rXfSq" id="4qPSkk6smt3" role="3clFbG">
            <ref role="37wK5l" node="6TxWhg_Bnkz" resolve="update" />
          </node>
        </node>
        <node concept="3clFbF" id="4ot3PHR2EYW" role="3cqZAp">
          <node concept="2OqwBi" id="4ot3PHR2FFZ" role="3clFbG">
            <node concept="2YIFZM" id="4ot3PHR2Ffr" role="2Oq$k0">
              <ref role="37wK5l" to="j936:~UISettings.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="j936:~UISettings" resolve="UISettings" />
            </node>
            <node concept="liA8E" id="4ot3PHR2Gox" role="2OqNvi">
              <ref role="37wK5l" to="j936:~UISettings.fireUISettingsChanged()" resolve="fireUISettingsChanged" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4qPSkk6rW1i" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6TxWhgAxJqL" role="jymVt">
      <property role="TrG5h" value="triggerEnabled" />
      <node concept="3cqZAl" id="6TxWhgAxJqN" role="3clF45" />
      <node concept="3clFbS" id="6TxWhgAxJqO" role="3clF47">
        <node concept="3clFbF" id="4qPSkk6prRJ" role="3cqZAp">
          <node concept="2OqwBi" id="4qPSkk6pH2y" role="3clFbG">
            <node concept="2YIFZM" id="4qPSkk6pyp7" role="2Oq$k0">
              <ref role="37wK5l" to="rfhd:~Registry.get(java.lang.String)" resolve="get" />
              <ref role="1Pybhc" to="rfhd:~Registry" resolve="Registry" />
              <node concept="Xl_RD" id="4qPSkk6p$FR" role="37wK5m">
                <property role="Xl_RC" value="mps.coderules.typechecking.enabled" />
              </node>
            </node>
            <node concept="liA8E" id="4qPSkk6pKn1" role="2OqNvi">
              <ref role="37wK5l" to="rfhd:~RegistryValue.setValue(boolean)" resolve="setValue" />
              <node concept="3fqX7Q" id="4qPSkk6pXqU" role="37wK5m">
                <node concept="2YIFZM" id="4qPSkk6pXqW" role="3fr31v">
                  <ref role="37wK5l" to="rfhd:~Registry.is(java.lang.String)" resolve="is" />
                  <ref role="1Pybhc" to="rfhd:~Registry" resolve="Registry" />
                  <node concept="Xl_RD" id="4qPSkk6pXqX" role="37wK5m">
                    <property role="Xl_RC" value="mps.coderules.typechecking.enabled" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEu" id="6TxWhg_Bhtw" role="jymVt">
      <property role="TrG5h" value="Panel" />
      <property role="2bfB8j" value="true" />
      <node concept="2tJIrI" id="6TxWhg_Bk1q" role="jymVt" />
      <node concept="312cEg" id="6TxWhgA7CGY" role="jymVt">
        <property role="TrG5h" value="label" />
        <node concept="3Tm6S6" id="6TxWhgA7CGW" role="1B3o_S" />
        <node concept="3uibUv" id="6TxWhgA7CGX" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
        </node>
      </node>
      <node concept="2tJIrI" id="6TxWhgA7VSn" role="jymVt" />
      <node concept="3clFbW" id="6TxWhg_BkMR" role="jymVt">
        <node concept="3cqZAl" id="6TxWhg_BkMT" role="3clF45" />
        <node concept="3clFbS" id="6TxWhg_BkMU" role="3clF47">
          <node concept="3clFbF" id="6TxWhgAb$fW" role="3cqZAp">
            <node concept="1rXfSq" id="6TxWhgAb$fU" role="3clFbG">
              <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
              <node concept="2YIFZM" id="6TxWhgAbIA7" role="37wK5m">
                <ref role="37wK5l" to="g1qu:~JBUI$Borders.empty()" resolve="empty" />
                <ref role="1Pybhc" to="g1qu:~JBUI$Borders" resolve="JBUI.Borders" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6iqrHsKQ5GI" role="3cqZAp">
            <node concept="3cpWsn" id="6iqrHsKQ5GL" role="3cpWs9">
              <property role="TrG5h" value="framedStyle" />
              <node concept="10P_77" id="6iqrHsKQ5GG" role="1tU5fm" />
              <node concept="22lmx$" id="6iqrHsKQveB" role="33vP2m">
                <node concept="3fqX7Q" id="6iqrHsKQvCQ" role="3uHU7w">
                  <node concept="2YIFZM" id="6iqrHsKQx7K" role="3fr31v">
                    <ref role="37wK5l" to="9w4s:~SystemProperties.getBooleanProperty(java.lang.String,boolean)" resolve="getBooleanProperty" />
                    <ref role="1Pybhc" to="9w4s:~SystemProperties" resolve="SystemProperties" />
                    <node concept="Xl_RD" id="6iqrHsKQxRj" role="37wK5m">
                      <property role="Xl_RC" value="idea.ui.mem.use" />
                    </node>
                    <node concept="3clFbT" id="6iqrHsKQzMq" role="37wK5m">
                      <property role="3clFbU" value="false" />
                    </node>
                  </node>
                </node>
                <node concept="10M0yZ" id="6iqrHsKQu7T" role="3uHU7B">
                  <ref role="3cqZAo" to="zn9m:~SystemInfo.isMac" resolve="isMac" />
                  <ref role="1PxDUh" to="zn9m:~SystemInfo" resolve="SystemInfo" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6iqrHsKPHwZ" role="3cqZAp">
            <node concept="3cpWsn" id="6iqrHsKPHx0" role="3cpWs9">
              <property role="TrG5h" value="labelFont" />
              <node concept="3uibUv" id="6iqrHsKPHwY" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Font" resolve="Font" />
              </node>
              <node concept="2YIFZM" id="6iqrHsKPHx1" role="33vP2m">
                <ref role="37wK5l" to="g1qu:~UIUtil.getLabelFont()" resolve="getLabelFont" />
                <ref role="1Pybhc" to="g1qu:~UIUtil" resolve="UIUtil" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6TxWhgAk_4U" role="3cqZAp">
            <node concept="3cpWsn" id="6TxWhgAk_4V" role="3cpWs9">
              <property role="TrG5h" value="textFont" />
              <node concept="3uibUv" id="6TxWhgAktyU" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Font" resolve="Font" />
              </node>
              <node concept="3K4zz7" id="6TxWhgAk_4W" role="33vP2m">
                <node concept="2OqwBi" id="6TxWhgAk_4X" role="3K4E3e">
                  <node concept="37vLTw" id="6TxWhgAk_4Y" role="2Oq$k0">
                    <ref role="3cqZAo" node="6iqrHsKPHx0" resolve="labelFont" />
                  </node>
                  <node concept="liA8E" id="6TxWhgAk_4Z" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Font.deriveFont(float)" resolve="deriveFont" />
                    <node concept="2$xPTn" id="6TxWhgAk_50" role="37wK5m">
                      <property role="2$xPTl" value="11.0f" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6TxWhgAk_51" role="3K4GZi">
                  <ref role="3cqZAo" node="6iqrHsKPHx0" resolve="labelFont" />
                </node>
                <node concept="37vLTw" id="6TxWhgAk_52" role="3K4Cdx">
                  <ref role="3cqZAo" node="6iqrHsKQ5GL" resolve="framedStyle" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4ot3PHQS3m3" role="3cqZAp">
            <node concept="3cpWsn" id="4ot3PHQS3m4" role="3cpWs9">
              <property role="TrG5h" value="iconFont" />
              <node concept="3uibUv" id="4ot3PHQS3m5" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Font" resolve="Font" />
              </node>
              <node concept="2OqwBi" id="4ot3PHQS3m7" role="33vP2m">
                <node concept="37vLTw" id="4ot3PHQS3m8" role="2Oq$k0">
                  <ref role="3cqZAo" node="6iqrHsKPHx0" resolve="labelFont" />
                </node>
                <node concept="liA8E" id="4ot3PHQS3m9" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Font.deriveFont(float)" resolve="deriveFont" />
                  <node concept="2$xPTn" id="4ot3PHQS3ma" role="37wK5m">
                    <property role="2$xPTl" value="8.0f" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6TxWhgA7CH9" role="3cqZAp">
            <node concept="37vLTI" id="6TxWhgA7CHa" role="3clFbG">
              <node concept="2ShNRf" id="6TxWhgA7CHe" role="37vLTx">
                <node concept="1pGfFk" id="6TxWhgA7CHf" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String,javax.swing.Icon,int)" resolve="JLabel" />
                  <node concept="1rXfSq" id="6TxWhgA7CHg" role="37wK5m">
                    <ref role="37wK5l" node="6TxWhg_AqGF" resolve="getText" />
                  </node>
                  <node concept="37vLTw" id="6TxWhgA7CHh" role="37wK5m">
                    <ref role="3cqZAo" node="39fX5EFCsBQ" resolve="enabledIcon" />
                  </node>
                  <node concept="10M0yZ" id="6TxWhgA7CHi" role="37wK5m">
                    <ref role="3cqZAo" to="dxuu:~SwingConstants.LEFT" resolve="LEFT" />
                    <ref role="1PxDUh" to="dxuu:~SwingConstants" resolve="SwingConstants" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="39fX5EFD3Yr" role="37vLTJ">
                <ref role="3cqZAo" node="6TxWhgA7CGY" resolve="label" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6TxWhg_Gn0F" role="3cqZAp">
            <node concept="2OqwBi" id="6TxWhg_GoEw" role="3clFbG">
              <node concept="37vLTw" id="6TxWhg_Gn0D" role="2Oq$k0">
                <ref role="3cqZAo" node="6TxWhgA7CGY" resolve="label" />
              </node>
              <node concept="liA8E" id="6TxWhg_Gs3b" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JLabel.setIconTextGap(int)" resolve="setIconTextGap" />
                <node concept="3cmrfG" id="6TxWhg_GuZU" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6TxWhgAad7l" role="3cqZAp">
            <node concept="2OqwBi" id="6TxWhgAaf6Q" role="3clFbG">
              <node concept="37vLTw" id="6TxWhgAad7j" role="2Oq$k0">
                <ref role="3cqZAo" node="6TxWhgA7CGY" resolve="label" />
              </node>
              <node concept="liA8E" id="6TxWhgAakIG" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border)" resolve="setBorder" />
                <node concept="2YIFZM" id="6TxWhgAtJdd" role="37wK5m">
                  <ref role="1Pybhc" to="g1qu:~JBUI$Borders" resolve="JBUI.Borders" />
                  <ref role="37wK5l" to="g1qu:~JBUI$Borders.empty(int,int,int,int)" resolve="empty" />
                  <node concept="3cmrfG" id="6TxWhgAtJde" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3cmrfG" id="6TxWhgAtT$v" role="37wK5m">
                    <property role="3cmrfH" value="4" />
                  </node>
                  <node concept="3cmrfG" id="6TxWhgAtXfF" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3cmrfG" id="6TxWhgAtY2R" role="37wK5m">
                    <property role="3cmrfH" value="4" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3$i23YcAWZ3" role="3cqZAp">
            <node concept="2OqwBi" id="3$i23YcB2WE" role="3clFbG">
              <node concept="37vLTw" id="6TxWhg_DqRr" role="2Oq$k0">
                <ref role="3cqZAo" node="6TxWhgA7CGY" resolve="label" />
              </node>
              <node concept="liA8E" id="3$i23YcB8Xx" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JComponent.setFont(java.awt.Font)" resolve="setFont" />
                <node concept="37vLTw" id="6TxWhgAk_53" role="37wK5m">
                  <ref role="3cqZAo" node="6TxWhgAk_4V" resolve="textFont" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6TxWhg_FhUs" role="3cqZAp">
            <node concept="2OqwBi" id="6TxWhg_FmWp" role="3clFbG">
              <node concept="37vLTw" id="6TxWhg_FhUq" role="2Oq$k0">
                <ref role="3cqZAo" node="6TxWhgA7CGY" resolve="label" />
              </node>
              <node concept="liA8E" id="6TxWhg_FpOR" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JComponent.setPreferredSize(java.awt.Dimension)" resolve="setPreferredSize" />
                <node concept="2OqwBi" id="6TxWhg_Fxm_" role="37wK5m">
                  <node concept="37vLTw" id="6TxWhg_Fwum" role="2Oq$k0">
                    <ref role="3cqZAo" node="6TxWhgA7CGY" resolve="label" />
                  </node>
                  <node concept="liA8E" id="6TxWhg_F$r1" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~JComponent.getPreferredSize()" resolve="getPreferredSize" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6TxWhg_DF4e" role="3cqZAp">
            <node concept="2OqwBi" id="6TxWhg_DFJQ" role="3clFbG">
              <node concept="37vLTw" id="6TxWhg_DF4c" role="2Oq$k0">
                <ref role="3cqZAo" node="6TxWhgA7CGY" resolve="label" />
              </node>
              <node concept="liA8E" id="6TxWhg_DHXo" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JLabel.setText(java.lang.String)" resolve="setText" />
                <node concept="1rXfSq" id="6TxWhg_DPSm" role="37wK5m">
                  <ref role="37wK5l" node="6TxWhg_AqGF" resolve="getText" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6TxWhg_DVgl" role="3cqZAp">
            <node concept="1rXfSq" id="6TxWhg_DVgj" role="3clFbG">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
              <node concept="37vLTw" id="6TxWhg_E1Go" role="37wK5m">
                <ref role="3cqZAo" node="6TxWhgA7CGY" resolve="label" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6TxWhg_F_jU" role="3cqZAp" />
          <node concept="3clFbF" id="5J8_5nlyCOH" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyyYkY" role="3clFbG">
              <ref role="37wK5l" to="dxuu:~JComponent.putClientProperty(java.lang.Object,java.lang.Object)" resolve="putClientProperty" />
              <node concept="10M0yZ" id="5J8_5nlyCOJ" role="37wK5m">
                <ref role="1PxDUh" to="g1qu:~UIUtil" resolve="UIUtil" />
                <ref role="3cqZAo" to="g1qu:~UIUtil.CENTER_TOOLTIP_DEFAULT" resolve="CENTER_TOOLTIP_DEFAULT" />
              </node>
              <node concept="10M0yZ" id="5J8_5nlyCOK" role="37wK5m">
                <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5J8_5nlyCOL" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyzbKp" role="3clFbG">
              <ref role="37wK5l" to="dxuu:~JComponent.setToolTipText(java.lang.String)" resolve="setToolTipText" />
              <node concept="1rXfSq" id="6TxWhg_FPB4" role="37wK5m">
                <ref role="37wK5l" node="6TxWhg_Egh4" resolve="getToolTipText" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5J8_5nlyCOQ" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyyZ2b" role="3clFbG">
              <ref role="37wK5l" to="z60i:~Component.addMouseListener(java.awt.event.MouseListener)" resolve="addMouseListener" />
              <node concept="2ShNRf" id="5J8_5nlyCOS" role="37wK5m">
                <node concept="YeOm9" id="5J8_5nlyCOT" role="2ShVmc">
                  <node concept="1Y3b0j" id="5J8_5nlyCOU" role="YeSDq">
                    <property role="TrG5h" value="" />
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="hyam:~MouseAdapter" resolve="MouseAdapter" />
                    <ref role="37wK5l" to="hyam:~MouseAdapter.&lt;init&gt;()" resolve="MouseAdapter" />
                    <node concept="3clFb_" id="5J8_5nlyCOV" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="mousePressed" />
                      <property role="DiZV1" value="false" />
                      <node concept="2AHcQZ" id="5J8_5nlyCP8" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                      <node concept="3clFbS" id="5J8_5nlyCP0" role="3clF47">
                        <node concept="3clFbF" id="5J8_5nlyCP1" role="3cqZAp">
                          <node concept="2OqwBi" id="5J8_5nlyCP2" role="3clFbG">
                            <node concept="liA8E" id="5J8_5nlyCP3" role="2OqNvi">
                              <ref role="37wK5l" to="9w4s:~Consumer.consume(java.lang.Object)" resolve="consume" />
                              <node concept="37vLTw" id="2BHiRxglIe5" role="37wK5m">
                                <ref role="3cqZAo" node="5J8_5nlyCOY" resolve="e" />
                              </node>
                            </node>
                            <node concept="1rXfSq" id="6TxWhgA9$Md" role="2Oq$k0">
                              <ref role="37wK5l" node="6TxWhg_AqHe" resolve="getClickConsumer" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTG" id="5J8_5nlyCOY" role="3clF46">
                        <property role="TrG5h" value="e" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="5J8_5nlyCOZ" role="1tU5fm">
                          <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="5J8_5nlyCOW" role="1B3o_S" />
                      <node concept="3cqZAl" id="5J8_5nlyCOX" role="3clF45" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6TxWhg_F_kI" role="3cqZAp" />
          <node concept="3clFbF" id="6TxWhg_Eam4" role="3cqZAp">
            <node concept="1rXfSq" id="6TxWhg_Eam2" role="3clFbG">
              <ref role="37wK5l" to="dxuu:~JComponent.setOpaque(boolean)" resolve="setOpaque" />
              <node concept="3clFbT" id="6TxWhg_Efox" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="6TxWhg_BlyZ" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="6TxWhg_Blks" role="jymVt" />
      <node concept="3clFb_" id="6TxWhg_BI_3" role="jymVt">
        <property role="TrG5h" value="update" />
        <node concept="3cqZAl" id="6TxWhg_BI_5" role="3clF45" />
        <node concept="3clFbS" id="6TxWhg_BI_6" role="3clF47">
          <node concept="3clFbF" id="6TxWhgA81tu" role="3cqZAp">
            <node concept="2OqwBi" id="6TxWhgA83xh" role="3clFbG">
              <node concept="37vLTw" id="6TxWhgA81tt" role="2Oq$k0">
                <ref role="3cqZAo" node="6TxWhgA7CGY" resolve="label" />
              </node>
              <node concept="liA8E" id="6TxWhgA86LR" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JLabel.setIcon(javax.swing.Icon)" resolve="setIcon" />
                <node concept="3K4zz7" id="6TxWhgA8ewY" role="37wK5m">
                  <node concept="37vLTw" id="6TxWhgA8jtN" role="3K4E3e">
                    <ref role="3cqZAo" node="39fX5EFCsBQ" resolve="enabledIcon" />
                  </node>
                  <node concept="37vLTw" id="6TxWhgA8q5h" role="3K4GZi">
                    <ref role="3cqZAo" node="39fX5EFCy4f" resolve="disabledIcon" />
                  </node>
                  <node concept="2YIFZM" id="4qPSkk6qx_R" role="3K4Cdx">
                    <ref role="37wK5l" to="rfhd:~Registry.is(java.lang.String)" resolve="is" />
                    <ref role="1Pybhc" to="rfhd:~Registry" resolve="Registry" />
                    <node concept="Xl_RD" id="4qPSkk6qx_S" role="37wK5m">
                      <property role="Xl_RC" value="mps.coderules.typechecking.enabled" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6TxWhgAixac" role="3cqZAp">
            <node concept="2OqwBi" id="6TxWhgAixad" role="3clFbG">
              <node concept="37vLTw" id="6TxWhgAixae" role="2Oq$k0">
                <ref role="3cqZAo" node="6TxWhgA7CGY" resolve="label" />
              </node>
              <node concept="liA8E" id="6TxWhgAixaf" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JLabel.setText(java.lang.String)" resolve="setText" />
                <node concept="1rXfSq" id="6TxWhgAixag" role="37wK5m">
                  <ref role="37wK5l" node="6TxWhg_AqGF" resolve="getText" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="6TxWhg_BKGI" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="6TxWhgA8rcX" role="jymVt" />
      <node concept="3clFb_" id="6TxWhg_Egh4" role="jymVt">
        <property role="TrG5h" value="getToolTipText" />
        <node concept="3Tm1VV" id="6TxWhg_Egh5" role="1B3o_S" />
        <node concept="17QB3L" id="39fX5EFD5E8" role="3clF45" />
        <node concept="3clFbS" id="6TxWhg_Egha" role="3clF47">
          <node concept="3clFbF" id="6TxWhg_ErCn" role="3cqZAp">
            <node concept="2OqwBi" id="6TxWhg_Ev7a" role="3clFbG">
              <node concept="Xjq3P" id="6TxWhg_Eu7j" role="2Oq$k0">
                <ref role="1HBi2w" node="6TxWhg_AhBw" resolve="TypecheckingWidget" />
              </node>
              <node concept="liA8E" id="6TxWhg_EvSi" role="2OqNvi">
                <ref role="37wK5l" node="6TxWhg_AqH1" resolve="getTooltipText" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6TxWhg_Eghb" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6TxWhg_Blky" role="jymVt" />
      <node concept="3uibUv" id="6TxWhg_BjLq" role="1zkMxy">
        <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
      </node>
      <node concept="3Tm6S6" id="6TxWhg_BKlI" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4qPSkk5q9cZ" role="jymVt" />
    <node concept="312cEu" id="4qPSkk5qyVa" role="jymVt">
      <property role="TrG5h" value="Factory" />
      <node concept="3Tm1VV" id="4qPSkk5qyVb" role="1B3o_S" />
      <node concept="3uibUv" id="4qPSkk5qBAx" role="EKbjA">
        <ref role="3uigEE" to="jkny:~StatusBarWidgetFactory" resolve="StatusBarWidgetFactory" />
      </node>
      <node concept="3clFb_" id="4qPSkk5qCbZ" role="jymVt">
        <property role="TrG5h" value="getId" />
        <node concept="3Tm1VV" id="4qPSkk5qCc0" role="1B3o_S" />
        <node concept="2AHcQZ" id="4qPSkk5qCc2" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="2AHcQZ" id="4qPSkk5qCc3" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
        </node>
        <node concept="3uibUv" id="4qPSkk5qCc4" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3clFbS" id="4qPSkk5qCc5" role="3clF47">
          <node concept="3clFbF" id="4qPSkk5qR0$" role="3cqZAp">
            <node concept="37vLTw" id="4qPSkk5qR0x" role="3clFbG">
              <ref role="3cqZAo" node="6TxWhg_AzHm" resolve="WIDGET_ID" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4qPSkk5qCc6" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="4qPSkk5qCc9" role="jymVt">
        <property role="TrG5h" value="getDisplayName" />
        <node concept="3Tm1VV" id="4qPSkk5qCca" role="1B3o_S" />
        <node concept="2AHcQZ" id="4qPSkk5qCcc" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="2AHcQZ" id="4qPSkk5qCcd" role="2AJF6D">
          <ref role="2AI5Lk" to="zn9m:~NlsContexts$ConfigurableName" resolve="NlsContexts.ConfigurableName" />
        </node>
        <node concept="3uibUv" id="4qPSkk5qCce" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3clFbS" id="4qPSkk5qCcf" role="3clF47">
          <node concept="3clFbF" id="4qPSkk5qCci" role="3cqZAp">
            <node concept="Xl_RD" id="4qPSkk5qUcP" role="3clFbG">
              <property role="Xl_RC" value="Typechecking with Coderules" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4qPSkk5qCcg" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4qPSkk5qW_5" role="jymVt" />
      <node concept="3clFb_" id="4qPSkk5r7as" role="jymVt">
        <property role="TrG5h" value="createWidget" />
        <node concept="3Tm1VV" id="4qPSkk5r7au" role="1B3o_S" />
        <node concept="2AHcQZ" id="4qPSkk5r7aw" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="4qPSkk5r7ax" role="3clF45">
          <ref role="3uigEE" to="jkny:~StatusBarWidget" resolve="StatusBarWidget" />
        </node>
        <node concept="37vLTG" id="4qPSkk5r7ay" role="3clF46">
          <property role="TrG5h" value="project" />
          <node concept="3uibUv" id="4qPSkk5r7az" role="1tU5fm">
            <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
          </node>
          <node concept="2AHcQZ" id="4qPSkk5r7a$" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="4qPSkk5r7a_" role="3clF47">
          <node concept="3clFbF" id="4qPSkk5utJm" role="3cqZAp">
            <node concept="2ShNRf" id="4qPSkk5utJk" role="3clFbG">
              <node concept="1pGfFk" id="4qPSkk5vsBB" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="6TxWhg_B4Ik" resolve="TypecheckingWidget" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4qPSkk5r7aA" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4qPSkk5x0tI" role="1B3o_S" />
  </node>
</model>

