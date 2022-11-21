<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:835f8ea3-a800-4588-a80b-1de6d47c2098(jetbrains.mps.coderules.ideaplugin)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="true" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
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
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1224573963862" name="jetbrains.mps.baseLanguage.structure.EnumValuesExpression" flags="nn" index="uiWXb">
        <reference id="1224573974191" name="enumClass" index="uiZuM" />
      </concept>
      <concept id="5279705229678483897" name="jetbrains.mps.baseLanguage.structure.FloatingPointFloatConstant" flags="nn" index="2$xPTn">
        <property id="5279705229678483899" name="value" index="2$xPTl" />
      </concept>
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
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
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
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
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf" />
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ng" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
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
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
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
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918975462" name="jetbrains.mps.baseLanguage.structure.PostfixDecrementExpression" flags="nn" index="3uO5VW" />
      <concept id="7024111702304501416" name="jetbrains.mps.baseLanguage.structure.OrAssignmentExpression" flags="nn" index="3vZ8r8" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
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
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8465538089690331492" name="jetbrains.mps.baseLanguage.javadoc.structure.DeprecatedBlockDocTag" flags="ng" index="TZ5HI">
        <child id="2667874559098216723" name="text" index="3HnX3l" />
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
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1208542034276" name="jetbrains.mps.baseLanguage.collections.structure.MapClearOperation" flags="nn" index="1yHZxX" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="7iCybvTy_Mb">
    <property role="TrG5h" value="TypecheckingOptions" />
    <node concept="Wx3nA" id="7iCybvTzJGv" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="PREFIX" />
      <node concept="3Tm1VV" id="7iCybvTzJGs" role="1B3o_S" />
      <node concept="17QB3L" id="7iCybvTzJGt" role="1tU5fm" />
      <node concept="Xl_RD" id="7iCybvTzJGu" role="33vP2m">
        <property role="Xl_RC" value="mps.coderules.typechecking." />
      </node>
    </node>
    <node concept="2tJIrI" id="7iCybvTyVm6" role="jymVt" />
    <node concept="Wx3nA" id="7iCybvTyUUs" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="OPTION_TYPECHECKING_ENABLED" />
      <node concept="3Tm1VV" id="7iCybvTyUUp" role="1B3o_S" />
      <node concept="17QB3L" id="7iCybvTyUUq" role="1tU5fm" />
      <node concept="3cpWs3" id="23Habm5Bd39" role="33vP2m">
        <node concept="37vLTw" id="23Habm5BdOb" role="3uHU7B">
          <ref role="3cqZAo" node="7iCybvTzJGv" resolve="PREFIX" />
        </node>
        <node concept="Xl_RD" id="7iCybvTyUUr" role="3uHU7w">
          <property role="Xl_RC" value="enabled" />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="5Qx6_65jytE" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="OPTION_TYPECHECKING_WATCHING" />
      <node concept="3Tm1VV" id="5Qx6_65jytF" role="1B3o_S" />
      <node concept="17QB3L" id="5Qx6_65jytG" role="1tU5fm" />
      <node concept="3cpWs3" id="23Habm5BeJy" role="33vP2m">
        <node concept="37vLTw" id="23Habm5BfA_" role="3uHU7B">
          <ref role="3cqZAo" node="7iCybvTzJGv" resolve="PREFIX" />
        </node>
        <node concept="Xl_RD" id="5Qx6_65jytH" role="3uHU7w">
          <property role="Xl_RC" value="watching" />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="1z4$59hO85X" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="OPTION_TYPECHECKING_REPORTING" />
      <node concept="3Tm1VV" id="1z4$59hO85Y" role="1B3o_S" />
      <node concept="17QB3L" id="1z4$59hO85Z" role="1tU5fm" />
      <node concept="3cpWs3" id="23Habm5BgIe" role="33vP2m">
        <node concept="37vLTw" id="23Habm5BhKQ" role="3uHU7B">
          <ref role="3cqZAo" node="7iCybvTzJGv" resolve="PREFIX" />
        </node>
        <node concept="Xl_RD" id="1z4$59hO860" role="3uHU7w">
          <property role="Xl_RC" value="report" />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="7iCybvTyWot" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="OPTION_TYPECHECKING_TRACE" />
      <node concept="3Tm1VV" id="7iCybvT$4$v" role="1B3o_S" />
      <node concept="17QB3L" id="7iCybvTyWor" role="1tU5fm" />
      <node concept="3cpWs3" id="23Habm5BjgE" role="33vP2m">
        <node concept="37vLTw" id="23Habm5BkvO" role="3uHU7B">
          <ref role="3cqZAo" node="7iCybvTzJGv" resolve="PREFIX" />
        </node>
        <node concept="Xl_RD" id="7iCybvTyWos" role="3uHU7w">
          <property role="Xl_RC" value="trace" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7iCybvT$Dp5" role="jymVt" />
    <node concept="Wx3nA" id="7iCybvT$FWp" role="jymVt">
      <property role="TrG5h" value="TYPECHECKING_ENABLED" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7iCybvT$PdJ" role="1tU5fm">
        <ref role="3uigEE" node="7iCybvT$$S3" resolve="Config.Option" />
        <node concept="3uibUv" id="7iCybvT$PCp" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7iCybvT_6Q$" role="1B3o_S" />
      <node concept="2ShNRf" id="7iCybvT$GNV" role="33vP2m">
        <node concept="YeOm9" id="7iCybvT$K45" role="2ShVmc">
          <node concept="1Y3b0j" id="7iCybvT$K48" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="7iCybvT$$S3" resolve="Config.Option" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="7iCybvT$K49" role="1B3o_S" />
            <node concept="3clFb_" id="7iCybvT$K4e" role="jymVt">
              <property role="TrG5h" value="get" />
              <node concept="37vLTG" id="7iCybvT$K4f" role="3clF46">
                <property role="TrG5h" value="config" />
                <node concept="3uibUv" id="7iCybvT$K4g" role="1tU5fm">
                  <ref role="3uigEE" node="7iCybvToiT5" resolve="Config" />
                </node>
              </node>
              <node concept="3uibUv" id="7iCybvT$KFf" role="3clF45">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
              <node concept="3Tm1VV" id="7iCybvT$K4i" role="1B3o_S" />
              <node concept="3clFbS" id="7iCybvT$K4k" role="3clF47">
                <node concept="3clFbF" id="5dfEAcSrdHu" role="3cqZAp">
                  <node concept="10QFUN" id="5dfEAcSrdHw" role="3clFbG">
                    <node concept="2OqwBi" id="5dfEAcSrdHx" role="10QFUP">
                      <node concept="37vLTw" id="7DmawKu6n_p" role="2Oq$k0">
                        <ref role="3cqZAo" node="7iCybvT$K4f" resolve="config" />
                      </node>
                      <node concept="liA8E" id="5dfEAcSrdHz" role="2OqNvi">
                        <ref role="37wK5l" node="7iCybvToiWV" resolve="getOption" />
                        <node concept="37vLTw" id="5dfEAcSrdHG" role="37wK5m">
                          <ref role="3cqZAo" node="7iCybvTyUUs" resolve="OPTION_TYPECHECKING_ENABLED" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="5dfEAcSrdH$" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7iCybvT$K4m" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="7iCybvT$KqT" role="2Ghqu4">
              <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="5Qx6_65jA5I" role="jymVt">
      <property role="TrG5h" value="TYPECHECKING_WATCHING" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="5Qx6_65jA5J" role="1tU5fm">
        <ref role="3uigEE" node="7iCybvT$$S3" resolve="Config.Option" />
        <node concept="3uibUv" id="5Qx6_65jA5K" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5Qx6_65jA5L" role="1B3o_S" />
      <node concept="2ShNRf" id="5Qx6_65jA5M" role="33vP2m">
        <node concept="YeOm9" id="5Qx6_65jA5N" role="2ShVmc">
          <node concept="1Y3b0j" id="5Qx6_65jA5O" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="7iCybvT$$S3" resolve="Config.Option" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="5Qx6_65jA5P" role="1B3o_S" />
            <node concept="3clFb_" id="5Qx6_65jA5Q" role="jymVt">
              <property role="TrG5h" value="get" />
              <node concept="37vLTG" id="5Qx6_65jA5R" role="3clF46">
                <property role="TrG5h" value="config" />
                <node concept="3uibUv" id="5Qx6_65jA5S" role="1tU5fm">
                  <ref role="3uigEE" node="7iCybvToiT5" resolve="Config" />
                </node>
              </node>
              <node concept="3uibUv" id="5Qx6_65jA5T" role="3clF45">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
              <node concept="3Tm1VV" id="5Qx6_65jA5U" role="1B3o_S" />
              <node concept="3clFbS" id="5Qx6_65jA5V" role="3clF47">
                <node concept="3clFbF" id="5Qx6_65jA5W" role="3cqZAp">
                  <node concept="10QFUN" id="5Qx6_65jA5X" role="3clFbG">
                    <node concept="3uibUv" id="5Qx6_65jA5Y" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    </node>
                    <node concept="2OqwBi" id="5Qx6_65jA5Z" role="10QFUP">
                      <node concept="37vLTw" id="5Qx6_65jA60" role="2Oq$k0">
                        <ref role="3cqZAo" node="5Qx6_65jA5R" resolve="config" />
                      </node>
                      <node concept="liA8E" id="5Qx6_65jA61" role="2OqNvi">
                        <ref role="37wK5l" node="7iCybvToiWV" resolve="getOption" />
                        <node concept="37vLTw" id="5Qx6_65jIA3" role="37wK5m">
                          <ref role="3cqZAo" node="5Qx6_65jytE" resolve="OPTION_TYPECHECKING_WATCHING" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="5Qx6_65jA63" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="5Qx6_65jA64" role="2Ghqu4">
              <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="1z4$59hOqxg" role="jymVt">
      <property role="TrG5h" value="TYPECHECKING_REPORTING" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1z4$59hOqxh" role="1tU5fm">
        <ref role="3uigEE" node="7iCybvT$$S3" resolve="Config.Option" />
        <node concept="3uibUv" id="1z4$59hOqxi" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1z4$59hOqxj" role="1B3o_S" />
      <node concept="2ShNRf" id="1z4$59hOqxk" role="33vP2m">
        <node concept="YeOm9" id="1z4$59hOqxl" role="2ShVmc">
          <node concept="1Y3b0j" id="1z4$59hOqxm" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="7iCybvT$$S3" resolve="Config.Option" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="1z4$59hOqxn" role="1B3o_S" />
            <node concept="3clFb_" id="1z4$59hOqxo" role="jymVt">
              <property role="TrG5h" value="get" />
              <node concept="37vLTG" id="1z4$59hOqxp" role="3clF46">
                <property role="TrG5h" value="config" />
                <node concept="3uibUv" id="1z4$59hOqxq" role="1tU5fm">
                  <ref role="3uigEE" node="7iCybvToiT5" resolve="Config" />
                </node>
              </node>
              <node concept="3uibUv" id="1z4$59hOqxr" role="3clF45">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
              <node concept="3Tm1VV" id="1z4$59hOqxs" role="1B3o_S" />
              <node concept="3clFbS" id="1z4$59hOqxt" role="3clF47">
                <node concept="3clFbF" id="1z4$59hOqxu" role="3cqZAp">
                  <node concept="10QFUN" id="1z4$59hOqxv" role="3clFbG">
                    <node concept="3uibUv" id="1z4$59hOqxw" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    </node>
                    <node concept="2OqwBi" id="1z4$59hOqxx" role="10QFUP">
                      <node concept="37vLTw" id="1z4$59hOqxy" role="2Oq$k0">
                        <ref role="3cqZAo" node="1z4$59hOqxp" resolve="config" />
                      </node>
                      <node concept="liA8E" id="1z4$59hOqxz" role="2OqNvi">
                        <ref role="37wK5l" node="7iCybvToiWV" resolve="getOption" />
                        <node concept="37vLTw" id="1z4$59hO_Go" role="37wK5m">
                          <ref role="3cqZAo" node="1z4$59hO85X" resolve="OPTION_TYPECHECKING_REPORTING" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="1z4$59hOqx_" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="1z4$59hOqxA" role="2Ghqu4">
              <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="7iCybvT_hbE" role="jymVt">
      <property role="TrG5h" value="TYPECHECKING_TRACE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7iCybvT_hbF" role="1tU5fm">
        <ref role="3uigEE" node="7iCybvT$$S3" resolve="Config.Option" />
        <node concept="3uibUv" id="7iCybvT_hbG" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7iCybvT_hbH" role="1B3o_S" />
      <node concept="2ShNRf" id="7iCybvT_hbI" role="33vP2m">
        <node concept="YeOm9" id="7iCybvT_hbJ" role="2ShVmc">
          <node concept="1Y3b0j" id="7iCybvT_hbK" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="7iCybvT$$S3" resolve="Config.Option" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="7iCybvT_hbL" role="1B3o_S" />
            <node concept="3clFb_" id="7iCybvT_hbM" role="jymVt">
              <property role="TrG5h" value="get" />
              <node concept="37vLTG" id="7iCybvT_hbN" role="3clF46">
                <property role="TrG5h" value="config" />
                <node concept="3uibUv" id="7iCybvT_hbO" role="1tU5fm">
                  <ref role="3uigEE" node="7iCybvToiT5" resolve="Config" />
                </node>
              </node>
              <node concept="3uibUv" id="7iCybvT_hbP" role="3clF45">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
              <node concept="3Tm1VV" id="7iCybvT_hbQ" role="1B3o_S" />
              <node concept="3clFbS" id="7iCybvT_hbR" role="3clF47">
                <node concept="3clFbF" id="5dfEAcSrgrR" role="3cqZAp">
                  <node concept="10QFUN" id="5dfEAcSrgrS" role="3clFbG">
                    <node concept="3uibUv" id="5dfEAcSrgrT" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    </node>
                    <node concept="2OqwBi" id="5dfEAcSrhjT" role="10QFUP">
                      <node concept="37vLTw" id="7DmawKu6gMj" role="2Oq$k0">
                        <ref role="3cqZAo" node="7iCybvT_hbN" resolve="config" />
                      </node>
                      <node concept="liA8E" id="5dfEAcSrhjV" role="2OqNvi">
                        <ref role="37wK5l" node="7iCybvToiWV" resolve="getOption" />
                        <node concept="37vLTw" id="5dfEAcSrhk3" role="37wK5m">
                          <ref role="3cqZAo" node="7iCybvTyWot" resolve="OPTION_TYPECHECKING_TRACE" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7iCybvT_hbZ" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="7iCybvT_hc0" role="2Ghqu4">
              <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="1T5MAgPtJgB" role="jymVt">
      <property role="TrG5h" value="COLLECT_TRACES" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1T5MAgPtJgC" role="1tU5fm">
        <ref role="3uigEE" node="7iCybvT$$S3" resolve="Config.Option" />
        <node concept="3uibUv" id="1T5MAgPtJgD" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1T5MAgPtJgE" role="1B3o_S" />
      <node concept="2ShNRf" id="1T5MAgPtJgF" role="33vP2m">
        <node concept="YeOm9" id="1T5MAgPtJgG" role="2ShVmc">
          <node concept="1Y3b0j" id="1T5MAgPtJgH" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="7iCybvT$$S3" resolve="Config.Option" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="1T5MAgPtJgI" role="1B3o_S" />
            <node concept="3clFb_" id="1T5MAgPtJgJ" role="jymVt">
              <property role="TrG5h" value="get" />
              <node concept="37vLTG" id="1T5MAgPtJgK" role="3clF46">
                <property role="TrG5h" value="config" />
                <node concept="3uibUv" id="1T5MAgPtJgL" role="1tU5fm">
                  <ref role="3uigEE" node="7iCybvToiT5" resolve="Config" />
                </node>
              </node>
              <node concept="3uibUv" id="1T5MAgPtJgM" role="3clF45">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
              <node concept="3Tm1VV" id="1T5MAgPtJgN" role="1B3o_S" />
              <node concept="3clFbS" id="1T5MAgPtJgO" role="3clF47">
                <node concept="3clFbJ" id="1T5MAgPtPgh" role="3cqZAp">
                  <node concept="3clFbS" id="1T5MAgPtPgj" role="3clFbx">
                    <node concept="3cpWs6" id="1T5MAgPtS5o" role="3cqZAp">
                      <node concept="10M0yZ" id="1T5MAgPtSIb" role="3cqZAk">
                        <ref role="3cqZAo" to="wyt6:~Boolean.FALSE" resolve="FALSE" />
                        <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="1T5MAgPtQPR" role="3clFbw">
                    <node concept="10M0yZ" id="1T5MAgPtQ8_" role="3uHU7B">
                      <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
                      <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                    </node>
                    <node concept="2OqwBi" id="1T5MAgPtRxf" role="3uHU7w">
                      <node concept="37vLTw" id="1T5MAgPtRxg" role="2Oq$k0">
                        <ref role="3cqZAo" node="1T5MAgPtJgK" resolve="config" />
                      </node>
                      <node concept="liA8E" id="1T5MAgPtRxh" role="2OqNvi">
                        <ref role="37wK5l" node="7iCybvToiWV" resolve="getOption" />
                        <node concept="37vLTw" id="1T5MAgPtRxp" role="37wK5m">
                          <ref role="3cqZAo" node="1z4$59hO85X" resolve="OPTION_TYPECHECKING_REPORTING" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1T5MAgPtJgP" role="3cqZAp">
                  <node concept="10QFUN" id="1T5MAgPtJgQ" role="3clFbG">
                    <node concept="3uibUv" id="1T5MAgPtJgR" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    </node>
                    <node concept="2OqwBi" id="1T5MAgPtJgS" role="10QFUP">
                      <node concept="37vLTw" id="1T5MAgPtJgT" role="2Oq$k0">
                        <ref role="3cqZAo" node="1T5MAgPtJgK" resolve="config" />
                      </node>
                      <node concept="liA8E" id="1T5MAgPtJgU" role="2OqNvi">
                        <ref role="37wK5l" node="7iCybvToiWV" resolve="getOption" />
                        <node concept="37vLTw" id="1T5MAgPtJgV" role="37wK5m">
                          <ref role="3cqZAo" node="7iCybvTyWot" resolve="OPTION_TYPECHECKING_TRACE" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="1T5MAgPtJgW" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="1T5MAgPtJgX" role="2Ghqu4">
              <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7iCybvT_hbD" role="jymVt" />
    <node concept="Wx3nA" id="7e$2hwaBArb" role="jymVt">
      <property role="TrG5h" value="USER_CONFIG" />
      <node concept="3Tm6S6" id="7e$2hwaBArd" role="1B3o_S" />
      <node concept="3uibUv" id="7e$2hwaBE16" role="1tU5fm">
        <ref role="3uigEE" node="7iCybvToiT5" resolve="Config" />
      </node>
    </node>
    <node concept="2tJIrI" id="7e$2hwaByyP" role="jymVt" />
    <node concept="3clFbW" id="7e$2hwaCZvC" role="jymVt">
      <node concept="3cqZAl" id="7e$2hwaCZvE" role="3clF45" />
      <node concept="3Tm6S6" id="7e$2hwaD1x4" role="1B3o_S" />
      <node concept="3clFbS" id="7e$2hwaCZvG" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7e$2hwaCWQt" role="jymVt" />
    <node concept="2YIFZL" id="7e$2hwaAfGb" role="jymVt">
      <property role="TrG5h" value="getUserConfig" />
      <node concept="3uibUv" id="7e$2hwaAjiP" role="3clF45">
        <ref role="3uigEE" node="7iCybvToiT5" resolve="Config" />
      </node>
      <node concept="3Tm1VV" id="7e$2hwaAfGe" role="1B3o_S" />
      <node concept="3clFbS" id="7e$2hwaAfGf" role="3clF47">
        <node concept="3clFbJ" id="7e$2hwaBFbl" role="3cqZAp">
          <node concept="3clFbC" id="7e$2hwaBGcB" role="3clFbw">
            <node concept="10Nm6u" id="7e$2hwaBGGM" role="3uHU7w" />
            <node concept="37vLTw" id="7e$2hwaBFVK" role="3uHU7B">
              <ref role="3cqZAo" node="7e$2hwaBArb" resolve="USER_CONFIG" />
            </node>
          </node>
          <node concept="3clFbS" id="7e$2hwaBFbn" role="3clFbx">
            <node concept="3clFbF" id="7e$2hwaBHwf" role="3cqZAp">
              <node concept="37vLTI" id="7e$2hwaBHLo" role="3clFbG">
                <node concept="2YIFZM" id="2CPBoDBWNuZ" role="37vLTx">
                  <ref role="37wK5l" node="6hpwxwiHYr2" resolve="create" />
                  <ref role="1Pybhc" node="7iCybvToiT5" resolve="Config" />
                </node>
                <node concept="37vLTw" id="7e$2hwaBHwe" role="37vLTJ">
                  <ref role="3cqZAo" node="7e$2hwaBArb" resolve="USER_CONFIG" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7e$2hwaBLcW" role="3cqZAp">
              <node concept="1rXfSq" id="7e$2hwaBLcU" role="3clFbG">
                <ref role="37wK5l" node="7DmawKu60xG" resolve="registerDefaultProviders" />
                <node concept="37vLTw" id="7e$2hwaBLM_" role="37wK5m">
                  <ref role="3cqZAo" node="7e$2hwaBArb" resolve="USER_CONFIG" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7e$2hwaBMH6" role="3cqZAp">
          <node concept="37vLTw" id="7e$2hwaBMH4" role="3clFbG">
            <ref role="3cqZAo" node="7e$2hwaBArb" resolve="USER_CONFIG" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2MNGcFT4T32" role="jymVt" />
    <node concept="2YIFZL" id="2MNGcFT4ZOn" role="jymVt">
      <property role="TrG5h" value="getUiConfig" />
      <node concept="3uibUv" id="2MNGcFT4ZOo" role="3clF45">
        <ref role="3uigEE" node="7iCybvToiT5" resolve="Config" />
      </node>
      <node concept="3Tm1VV" id="2MNGcFT4ZOp" role="1B3o_S" />
      <node concept="3clFbS" id="2MNGcFT4ZOq" role="3clF47">
        <node concept="3cpWs8" id="7e$2hwaCFhS" role="3cqZAp">
          <node concept="3cpWsn" id="7e$2hwaCFhT" role="3cpWs9">
            <property role="TrG5h" value="config" />
            <node concept="3uibUv" id="7e$2hwaCFaZ" role="1tU5fm">
              <ref role="3uigEE" node="7iCybvToiT5" resolve="Config" />
            </node>
            <node concept="2OqwBi" id="7e$2hwaCFhU" role="33vP2m">
              <node concept="2YIFZM" id="2CPBoDBX89s" role="2Oq$k0">
                <ref role="37wK5l" node="7e$2hwaAfGb" resolve="getUserConfig" />
                <ref role="1Pybhc" node="7iCybvTy_Mb" resolve="TypecheckingOptions" />
              </node>
              <node concept="liA8E" id="7e$2hwaCFhW" role="2OqNvi">
                <ref role="37wK5l" node="7e$2hwauJ33" resolve="copy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2MNGcFT5_YJ" role="3cqZAp">
          <node concept="1rXfSq" id="2MNGcFT5_YH" role="3clFbG">
            <ref role="37wK5l" node="7e$2hwaBRzy" resolve="registerUiProvider" />
            <node concept="37vLTw" id="2MNGcFT5APn" role="37wK5m">
              <ref role="3cqZAo" node="7e$2hwaCFhT" resolve="config" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7e$2hwaCEGr" role="3cqZAp">
          <node concept="37vLTw" id="7e$2hwaCFhX" role="3clFbG">
            <ref role="3cqZAo" node="7e$2hwaCFhT" resolve="config" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2MNGcFT4T8T" role="jymVt" />
    <node concept="2YIFZL" id="7e$2hwaBRzy" role="jymVt">
      <property role="TrG5h" value="registerUiProvider" />
      <node concept="3clFbS" id="7iCybvTyEuB" role="3clF47">
        <node concept="3clFbH" id="7e$2hwaHL2_" role="3cqZAp" />
        <node concept="3clFbF" id="7iCybvTyAh$" role="3cqZAp">
          <node concept="2OqwBi" id="7iCybvTyAvh" role="3clFbG">
            <node concept="37vLTw" id="6hpwxwiqBEz" role="2Oq$k0">
              <ref role="3cqZAo" node="6hpwxwiq_U$" resolve="config" />
            </node>
            <node concept="liA8E" id="7iCybvTyAAH" role="2OqNvi">
              <ref role="37wK5l" node="7iCybvTszk9" resolve="registerProvider" />
              <node concept="Rm8GO" id="7iCybvTyARZ" role="37wK5m">
                <ref role="Rm8GQ" node="7iCybvToIZc" resolve="UI" />
                <ref role="1Px2BO" node="7iCybvToD3Z" resolve="Config.Level" />
              </node>
              <node concept="37vLTw" id="2MNGcFT5iZQ" role="37wK5m">
                <ref role="3cqZAo" node="7iCybvTzJGv" resolve="PREFIX" />
              </node>
              <node concept="1bVj0M" id="7iCybvTyBsQ" role="37wK5m">
                <node concept="37vLTG" id="7iCybvTyBuB" role="1bW2Oz">
                  <property role="TrG5h" value="key" />
                  <node concept="17QB3L" id="7iCybvTyBEM" role="1tU5fm" />
                </node>
                <node concept="3clFbS" id="7iCybvTyBsS" role="1bW5cS">
                  <node concept="3clFbH" id="7iCybvTyBIw" role="3cqZAp" />
                  <node concept="3cpWs8" id="2CPBoDC_cjy" role="3cqZAp">
                    <node concept="3cpWsn" id="2CPBoDC_cjz" role="3cpWs9">
                      <property role="TrG5h" value="settings" />
                      <node concept="3uibUv" id="2CPBoDC_cb2" role="1tU5fm">
                        <ref role="3uigEE" node="2CPBoDC$4yq" resolve="TypecheckingSettings" />
                      </node>
                      <node concept="2YIFZM" id="2CPBoDC_cj$" role="33vP2m">
                        <ref role="37wK5l" node="2CPBoDC$fEe" resolve="getInstace" />
                        <ref role="1Pybhc" node="2CPBoDC$4yq" resolve="TypecheckingSettings" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="7iCybvTyBUS" role="3cqZAp">
                    <node concept="3clFbS" id="7iCybvTyBUU" role="3clFbx">
                      <node concept="3cpWs6" id="2CPBoDC_glm" role="3cqZAp">
                        <node concept="2OqwBi" id="2CPBoDC_if6" role="3cqZAk">
                          <node concept="37vLTw" id="2CPBoDC_cj_" role="2Oq$k0">
                            <ref role="3cqZAo" node="2CPBoDC_cjz" resolve="settings" />
                          </node>
                          <node concept="liA8E" id="2CPBoDC_iDX" role="2OqNvi">
                            <ref role="37wK5l" node="2CPBoDC$H71" resolve="isTypecheckingEnabled" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7iCybvTyCd5" role="3clFbw">
                      <node concept="37vLTw" id="2MNGcFT5j04" role="2Oq$k0">
                        <ref role="3cqZAo" node="7iCybvTyUUs" resolve="OPTION_TYPECHECKING_ENABLED" />
                      </node>
                      <node concept="liA8E" id="7iCybvTyCAG" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="37vLTw" id="7iCybvTyCHb" role="37wK5m">
                          <ref role="3cqZAo" node="7iCybvTyBuB" resolve="key" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="7iCybvTyG2a" role="3cqZAp" />
                  <node concept="3clFbJ" id="5Qx6_65jK2f" role="3cqZAp">
                    <node concept="3clFbS" id="5Qx6_65jK2g" role="3clFbx">
                      <node concept="3cpWs6" id="2CPBoDC_jlx" role="3cqZAp">
                        <node concept="2OqwBi" id="2CPBoDC_jly" role="3cqZAk">
                          <node concept="37vLTw" id="2CPBoDC_jlz" role="2Oq$k0">
                            <ref role="3cqZAo" node="2CPBoDC_cjz" resolve="settings" />
                          </node>
                          <node concept="liA8E" id="2CPBoDC_jl$" role="2OqNvi">
                            <ref role="37wK5l" node="2CPBoDC_kCy" resolve="isWatchingEnabled" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5Qx6_65jK2l" role="3clFbw">
                      <node concept="37vLTw" id="2MNGcFT5j0i" role="2Oq$k0">
                        <ref role="3cqZAo" node="5Qx6_65jytE" resolve="OPTION_TYPECHECKING_WATCHING" />
                      </node>
                      <node concept="liA8E" id="5Qx6_65jK2n" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="37vLTw" id="5Qx6_65jK2o" role="37wK5m">
                          <ref role="3cqZAo" node="7iCybvTyBuB" resolve="key" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="1JkMMuhf$a7" role="3cqZAp" />
                  <node concept="3clFbJ" id="1z4$59hOBBR" role="3cqZAp">
                    <node concept="3clFbS" id="1z4$59hOBBS" role="3clFbx">
                      <node concept="3cpWs6" id="2CPBoDC_nvV" role="3cqZAp">
                        <node concept="2OqwBi" id="2CPBoDC_nvW" role="3cqZAk">
                          <node concept="37vLTw" id="2CPBoDC_nvX" role="2Oq$k0">
                            <ref role="3cqZAo" node="2CPBoDC_cjz" resolve="settings" />
                          </node>
                          <node concept="liA8E" id="2CPBoDC_nvY" role="2OqNvi">
                            <ref role="37wK5l" node="2CPBoDC_o9$" resolve="isReportingEnabled" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1z4$59hOBBX" role="3clFbw">
                      <node concept="37vLTw" id="2MNGcFT5j0w" role="2Oq$k0">
                        <ref role="3cqZAo" node="1z4$59hO85X" resolve="OPTION_TYPECHECKING_REPORTING" />
                      </node>
                      <node concept="liA8E" id="1z4$59hOBBZ" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="37vLTw" id="1z4$59hOBC0" role="37wK5m">
                          <ref role="3cqZAo" node="7iCybvTyBuB" resolve="key" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="1z4$59hOCWg" role="3cqZAp" />
                  <node concept="3clFbJ" id="7iCybvTyGA8" role="3cqZAp">
                    <node concept="3clFbS" id="7iCybvTyGA9" role="3clFbx">
                      <node concept="3cpWs6" id="2CPBoDC_rsr" role="3cqZAp">
                        <node concept="2OqwBi" id="2CPBoDC_rss" role="3cqZAk">
                          <node concept="37vLTw" id="2CPBoDC_rst" role="2Oq$k0">
                            <ref role="3cqZAo" node="2CPBoDC_cjz" resolve="settings" />
                          </node>
                          <node concept="liA8E" id="2CPBoDC_rsu" role="2OqNvi">
                            <ref role="37wK5l" node="2CPBoDC_sJb" resolve="isTracingEnabled" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7iCybvTyGAg" role="3clFbw">
                      <node concept="37vLTw" id="2MNGcFT5j0I" role="2Oq$k0">
                        <ref role="3cqZAo" node="7iCybvTyWot" resolve="OPTION_TYPECHECKING_TRACE" />
                      </node>
                      <node concept="liA8E" id="7iCybvTyGAi" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="37vLTw" id="7iCybvTyGAj" role="37wK5m">
                          <ref role="3cqZAo" node="7iCybvTyBuB" resolve="key" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="7iCybvTyBLJ" role="3cqZAp" />
                  <node concept="3clFbF" id="7iCybvTzmU3" role="3cqZAp">
                    <node concept="10Nm6u" id="7iCybvTzmU1" role="3clFbG" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="23Habm5BNgw" role="3cqZAp" />
        <node concept="3clFbF" id="23Habm5BLXE" role="3cqZAp">
          <node concept="2OqwBi" id="23Habm5BLXF" role="3clFbG">
            <node concept="37vLTw" id="23Habm5BLXG" role="2Oq$k0">
              <ref role="3cqZAo" node="6hpwxwiq_U$" resolve="config" />
            </node>
            <node concept="liA8E" id="23Habm5BLXH" role="2OqNvi">
              <ref role="37wK5l" node="7iCybvTszk9" resolve="registerProvider" />
              <node concept="Rm8GO" id="23Habm5BLXI" role="37wK5m">
                <ref role="Rm8GQ" node="7iCybvToHsq" resolve="USER" />
                <ref role="1Px2BO" node="7iCybvToD3Z" resolve="Config.Level" />
              </node>
              <node concept="10M0yZ" id="23Habm5BLD9" role="37wK5m">
                <ref role="1PxDUh" node="39eNUjm3TK$" resolve="CoderulesOptions" />
                <ref role="3cqZAo" node="1_Anebx$$SU" resolve="PREFIX" />
              </node>
              <node concept="1bVj0M" id="23Habm5BLXJ" role="37wK5m">
                <node concept="37vLTG" id="23Habm5BLXK" role="1bW2Oz">
                  <property role="TrG5h" value="key" />
                  <node concept="17QB3L" id="23Habm5BLXL" role="1tU5fm" />
                </node>
                <node concept="3clFbS" id="23Habm5BLXM" role="1bW5cS">
                  <node concept="3cpWs8" id="23Habm5BPRk" role="3cqZAp">
                    <node concept="3cpWsn" id="23Habm5BPRl" role="3cpWs9">
                      <property role="TrG5h" value="settings" />
                      <node concept="3uibUv" id="23Habm5BPRm" role="1tU5fm">
                        <ref role="3uigEE" node="2CPBoDC$4yq" resolve="TypecheckingSettings" />
                      </node>
                      <node concept="2YIFZM" id="23Habm5BPRn" role="33vP2m">
                        <ref role="37wK5l" node="2CPBoDC$fEe" resolve="getInstace" />
                        <ref role="1Pybhc" node="2CPBoDC$4yq" resolve="TypecheckingSettings" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="23Habm5BLXO" role="3cqZAp">
                    <node concept="3clFbS" id="23Habm5BLXP" role="3clFbx">
                      <node concept="3cpWs6" id="23Habm5BXSD" role="3cqZAp">
                        <node concept="2OqwBi" id="23Habm5BXSE" role="3cqZAk">
                          <node concept="37vLTw" id="23Habm5BXSF" role="2Oq$k0">
                            <ref role="3cqZAo" node="23Habm5BPRl" resolve="settings" />
                          </node>
                          <node concept="liA8E" id="23Habm5BXSG" role="2OqNvi">
                            <ref role="37wK5l" node="23Habm5BTlO" resolve="isProfilingEnabled" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="23Habm5BLXV" role="3clFbw">
                      <node concept="10M0yZ" id="23Habm5BLDb" role="2Oq$k0">
                        <ref role="3cqZAo" node="23Habm5Bmhe" resolve="OPTION_PROFILING_ENABLED" />
                        <ref role="1PxDUh" node="39eNUjm3TK$" resolve="CoderulesOptions" />
                      </node>
                      <node concept="liA8E" id="23Habm5BLXW" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="37vLTw" id="23Habm5BLXX" role="37wK5m">
                          <ref role="3cqZAo" node="23Habm5BLXK" resolve="key" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="23Habm5BLXY" role="3cqZAp" />
                  <node concept="3clFbF" id="23Habm5BLXZ" role="3cqZAp">
                    <node concept="10Nm6u" id="23Habm5BLY0" role="3clFbG" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="23Habm5BLDc" role="3cqZAp" />
      </node>
      <node concept="37vLTG" id="6hpwxwiq_U$" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="6hpwxwiqBaG" role="1tU5fm">
          <ref role="3uigEE" node="7iCybvToiT5" resolve="Config" />
        </node>
      </node>
      <node concept="3cqZAl" id="7iCybvTyEu_" role="3clF45" />
      <node concept="3Tm6S6" id="7iCybvTyEx7" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2MNGcFT5aPR" role="jymVt" />
    <node concept="2YIFZL" id="7DmawKu60xG" role="jymVt">
      <property role="TrG5h" value="registerDefaultProviders" />
      <node concept="37vLTG" id="2tFDlV2dY_r" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="2tFDlV2dYUi" role="1tU5fm">
          <ref role="3uigEE" node="7iCybvToiT5" resolve="Config" />
        </node>
      </node>
      <node concept="3cqZAl" id="7DmawKu60xI" role="3clF45" />
      <node concept="3Tm6S6" id="7e$2hwaBErR" role="1B3o_S" />
      <node concept="3clFbS" id="7DmawKu60xK" role="3clF47">
        <node concept="3clFbF" id="1_Anebx$J8W" role="3cqZAp">
          <node concept="2YIFZM" id="2CPBoDBWNuR" role="3clFbG">
            <ref role="37wK5l" node="1_Anebx$sLm" resolve="registerDefaultProviders" />
            <ref role="1Pybhc" node="39eNUjm3TK$" resolve="CoderulesOptions" />
            <node concept="37vLTw" id="1_Anebx$K2H" role="37wK5m">
              <ref role="3cqZAo" node="2tFDlV2dY_r" resolve="config" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1_Anebx$K69" role="3cqZAp" />
        <node concept="3clFbF" id="7DmawKu61ZL" role="3cqZAp">
          <node concept="2OqwBi" id="7DmawKu61ZM" role="3clFbG">
            <node concept="37vLTw" id="2tFDlV2dZnV" role="2Oq$k0">
              <ref role="3cqZAo" node="2tFDlV2dY_r" resolve="config" />
            </node>
            <node concept="liA8E" id="7DmawKu61ZO" role="2OqNvi">
              <ref role="37wK5l" node="7iCybvTszk9" resolve="registerProvider" />
              <node concept="Rm8GO" id="7DmawKu61ZP" role="37wK5m">
                <ref role="1Px2BO" node="7iCybvToD3Z" resolve="Config.Level" />
                <ref role="Rm8GQ" node="7iCybvToHsq" resolve="USER" />
              </node>
              <node concept="37vLTw" id="7DmawKu620w" role="37wK5m">
                <ref role="3cqZAo" node="7iCybvTzJGv" resolve="PREFIX" />
              </node>
              <node concept="1bVj0M" id="7DmawKu61ZQ" role="37wK5m">
                <node concept="37vLTG" id="7DmawKu61ZR" role="1bW2Oz">
                  <property role="TrG5h" value="key" />
                  <node concept="17QB3L" id="7DmawKu61ZS" role="1tU5fm" />
                </node>
                <node concept="3clFbS" id="7DmawKu61ZT" role="1bW5cS">
                  <node concept="3clFbH" id="7DmawKu61ZU" role="3cqZAp" />
                  <node concept="3clFbJ" id="7DmawKu61ZV" role="3cqZAp">
                    <node concept="3clFbS" id="7DmawKu61ZW" role="3clFbx">
                      <node concept="3cpWs6" id="7DmawKu61ZX" role="3cqZAp">
                        <node concept="2YIFZM" id="7DmawKu61ZY" role="3cqZAk">
                          <ref role="37wK5l" to="wyt6:~Boolean.valueOf(java.lang.String)" resolve="valueOf" />
                          <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                          <node concept="2YIFZM" id="7DmawKu61ZZ" role="37wK5m">
                            <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String,java.lang.String)" resolve="getProperty" />
                            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                            <node concept="37vLTw" id="7DmawKu620$" role="37wK5m">
                              <ref role="3cqZAo" node="7iCybvTyUUs" resolve="OPTION_TYPECHECKING_ENABLED" />
                            </node>
                            <node concept="Xl_RD" id="7DmawKu6200" role="37wK5m">
                              <property role="Xl_RC" value="false" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="5Qx6_65kYQu" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="7DmawKu6202" role="3clFbw">
                      <node concept="37vLTw" id="7DmawKu620C" role="2Oq$k0">
                        <ref role="3cqZAo" node="7iCybvTyUUs" resolve="OPTION_TYPECHECKING_ENABLED" />
                      </node>
                      <node concept="liA8E" id="7DmawKu6203" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="37vLTw" id="7DmawKu6204" role="37wK5m">
                          <ref role="3cqZAo" node="7DmawKu61ZR" resolve="key" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="5Qx6_65jIEJ" role="3cqZAp" />
                  <node concept="3clFbJ" id="5Qx6_65jIEz" role="3cqZAp">
                    <node concept="3clFbS" id="5Qx6_65jIE$" role="3clFbx">
                      <node concept="3cpWs6" id="5Qx6_65jIE_" role="3cqZAp">
                        <node concept="2YIFZM" id="5Qx6_65jIEA" role="3cqZAk">
                          <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                          <ref role="37wK5l" to="wyt6:~Boolean.valueOf(java.lang.String)" resolve="valueOf" />
                          <node concept="2YIFZM" id="5Qx6_65jIEB" role="37wK5m">
                            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                            <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String,java.lang.String)" resolve="getProperty" />
                            <node concept="37vLTw" id="5Qx6_65jJSO" role="37wK5m">
                              <ref role="3cqZAo" node="5Qx6_65jytE" resolve="OPTION_TYPECHECKING_WATCHING" />
                            </node>
                            <node concept="Xl_RD" id="5Qx6_65jIED" role="37wK5m">
                              <property role="Xl_RC" value="false" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="5Qx6_65jIEE" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="5Qx6_65jIEF" role="3clFbw">
                      <node concept="37vLTw" id="5Qx6_65jJF7" role="2Oq$k0">
                        <ref role="3cqZAo" node="5Qx6_65jytE" resolve="OPTION_TYPECHECKING_WATCHING" />
                      </node>
                      <node concept="liA8E" id="5Qx6_65jIEH" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="37vLTw" id="5Qx6_65jIEI" role="37wK5m">
                          <ref role="3cqZAo" node="7DmawKu61ZR" resolve="key" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="7DmawKu620g" role="3cqZAp" />
                  <node concept="3clFbJ" id="1z4$59hOA4r" role="3cqZAp">
                    <node concept="3clFbS" id="1z4$59hOA4s" role="3clFbx">
                      <node concept="3cpWs6" id="1z4$59hOA4t" role="3cqZAp">
                        <node concept="2YIFZM" id="1z4$59hOA4u" role="3cqZAk">
                          <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                          <ref role="37wK5l" to="wyt6:~Boolean.valueOf(java.lang.String)" resolve="valueOf" />
                          <node concept="2YIFZM" id="1z4$59hOA4v" role="37wK5m">
                            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                            <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String,java.lang.String)" resolve="getProperty" />
                            <node concept="37vLTw" id="1z4$59hOAUJ" role="37wK5m">
                              <ref role="3cqZAo" node="1z4$59hO85X" resolve="OPTION_TYPECHECKING_REPORTING" />
                            </node>
                            <node concept="Xl_RD" id="1z4$59hOA4x" role="37wK5m">
                              <property role="Xl_RC" value="false" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="1z4$59hOA4y" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="1z4$59hOA4z" role="3clFbw">
                      <node concept="37vLTw" id="1z4$59hOAAZ" role="2Oq$k0">
                        <ref role="3cqZAo" node="1z4$59hO85X" resolve="OPTION_TYPECHECKING_REPORTING" />
                      </node>
                      <node concept="liA8E" id="1z4$59hOA4_" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="37vLTw" id="1z4$59hOA4A" role="37wK5m">
                          <ref role="3cqZAo" node="7DmawKu61ZR" resolve="key" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="1z4$59hOA4q" role="3cqZAp" />
                  <node concept="3clFbJ" id="7DmawKu620h" role="3cqZAp">
                    <node concept="3clFbS" id="7DmawKu620i" role="3clFbx">
                      <node concept="3cpWs6" id="7DmawKu620j" role="3cqZAp">
                        <node concept="2YIFZM" id="7DmawKu620k" role="3cqZAk">
                          <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                          <ref role="37wK5l" to="wyt6:~Boolean.valueOf(java.lang.String)" resolve="valueOf" />
                          <node concept="2YIFZM" id="7DmawKu620l" role="37wK5m">
                            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                            <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String,java.lang.String)" resolve="getProperty" />
                            <node concept="37vLTw" id="7DmawKu620O" role="37wK5m">
                              <ref role="3cqZAo" node="7iCybvTyWot" resolve="OPTION_TYPECHECKING_TRACE" />
                            </node>
                            <node concept="Xl_RD" id="7DmawKu620m" role="37wK5m">
                              <property role="Xl_RC" value="false" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="7DmawKu620n" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="7DmawKu620o" role="3clFbw">
                      <node concept="37vLTw" id="7DmawKu620S" role="2Oq$k0">
                        <ref role="3cqZAo" node="7iCybvTyWot" resolve="OPTION_TYPECHECKING_TRACE" />
                      </node>
                      <node concept="liA8E" id="7DmawKu620p" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="37vLTw" id="7DmawKu620q" role="37wK5m">
                          <ref role="3cqZAo" node="7DmawKu61ZR" resolve="key" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="7DmawKu620r" role="3cqZAp" />
                  <node concept="3clFbF" id="7DmawKu620s" role="3cqZAp">
                    <node concept="10Nm6u" id="7DmawKu620t" role="3clFbG" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7iCybvTy_Mc" role="1B3o_S" />
    <node concept="2tJIrI" id="7iCybvTyHA6" role="jymVt" />
  </node>
  <node concept="312cEu" id="39eNUjm3TK$">
    <property role="TrG5h" value="CoderulesOptions" />
    <node concept="Wx3nA" id="1_Anebx$$SU" role="jymVt">
      <property role="TrG5h" value="PREFIX" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1_Anebx$zmA" role="1B3o_S" />
      <node concept="17QB3L" id="1_Anebx$$Qm" role="1tU5fm" />
      <node concept="Xl_RD" id="1_Anebx$AyO" role="33vP2m">
        <property role="Xl_RC" value="mps.coderules." />
      </node>
    </node>
    <node concept="2tJIrI" id="23Habm5BmUM" role="jymVt" />
    <node concept="Wx3nA" id="23Habm5Bmhe" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="OPTION_PROFILING_ENABLED" />
      <node concept="3Tm1VV" id="23Habm5Bmhf" role="1B3o_S" />
      <node concept="17QB3L" id="23Habm5Bmhg" role="1tU5fm" />
      <node concept="3cpWs3" id="23Habm5Bmhh" role="33vP2m">
        <node concept="37vLTw" id="23Habm5BnPQ" role="3uHU7B">
          <ref role="3cqZAo" node="1_Anebx$$SU" resolve="PREFIX" />
        </node>
        <node concept="Xl_RD" id="23Habm5Bmhi" role="3uHU7w">
          <property role="Xl_RC" value="profiling" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="23Habm5BsaQ" role="jymVt" />
    <node concept="Wx3nA" id="23Habm5BnXh" role="jymVt">
      <property role="TrG5h" value="PROFILING_ENABLED" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="23Habm5BnXi" role="1tU5fm">
        <ref role="3uigEE" node="7iCybvT$$S3" resolve="Config.Option" />
        <node concept="3uibUv" id="23Habm5BnXj" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="3Tm1VV" id="23Habm5BnXk" role="1B3o_S" />
      <node concept="2ShNRf" id="23Habm5BnXl" role="33vP2m">
        <node concept="YeOm9" id="23Habm5BnXm" role="2ShVmc">
          <node concept="1Y3b0j" id="23Habm5BnXn" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="7iCybvT$$S3" resolve="Config.Option" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="23Habm5BnXo" role="1B3o_S" />
            <node concept="3clFb_" id="23Habm5BnXp" role="jymVt">
              <property role="TrG5h" value="get" />
              <node concept="37vLTG" id="23Habm5BnXq" role="3clF46">
                <property role="TrG5h" value="config" />
                <node concept="3uibUv" id="23Habm5BnXr" role="1tU5fm">
                  <ref role="3uigEE" node="7iCybvToiT5" resolve="Config" />
                </node>
              </node>
              <node concept="3uibUv" id="23Habm5BnXs" role="3clF45">
                <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
              </node>
              <node concept="3Tm1VV" id="23Habm5BnXt" role="1B3o_S" />
              <node concept="3clFbS" id="23Habm5BnXu" role="3clF47">
                <node concept="3clFbF" id="23Habm5BnXv" role="3cqZAp">
                  <node concept="10QFUN" id="23Habm5BnXw" role="3clFbG">
                    <node concept="2OqwBi" id="23Habm5BnXx" role="10QFUP">
                      <node concept="37vLTw" id="23Habm5BnXy" role="2Oq$k0">
                        <ref role="3cqZAo" node="23Habm5BnXq" resolve="config" />
                      </node>
                      <node concept="liA8E" id="23Habm5BnXz" role="2OqNvi">
                        <ref role="37wK5l" node="7iCybvToiWV" resolve="getOption" />
                        <node concept="37vLTw" id="23Habm5BtCY" role="37wK5m">
                          <ref role="3cqZAo" node="23Habm5Bmhe" resolve="OPTION_PROFILING_ENABLED" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="23Habm5BnX_" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="23Habm5BnXA" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3uibUv" id="23Habm5BnXB" role="2Ghqu4">
              <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_Anebx$AJ3" role="jymVt" />
    <node concept="2YIFZL" id="1_Anebx$sLm" role="jymVt">
      <property role="TrG5h" value="registerDefaultProviders" />
      <node concept="37vLTG" id="1_Anebx$u9p" role="3clF46">
        <property role="TrG5h" value="config" />
        <node concept="3uibUv" id="1_Anebx$ugg" role="1tU5fm">
          <ref role="3uigEE" node="7iCybvToiT5" resolve="Config" />
        </node>
      </node>
      <node concept="3clFbS" id="1_Anebx$sLp" role="3clF47">
        <node concept="3clFbF" id="1_Anebx$kIS" role="3cqZAp">
          <node concept="2OqwBi" id="1_Anebx$lo4" role="3clFbG">
            <node concept="37vLTw" id="1_Anebx$kIQ" role="2Oq$k0">
              <ref role="3cqZAo" node="1_Anebx$u9p" resolve="config" />
            </node>
            <node concept="liA8E" id="1_Anebx$lVc" role="2OqNvi">
              <ref role="37wK5l" node="7iCybvTszk9" resolve="registerProvider" />
              <node concept="Rm8GO" id="1_Anebx$nmY" role="37wK5m">
                <ref role="1Px2BO" node="7iCybvToD3Z" resolve="Config.Level" />
                <ref role="Rm8GQ" node="7iCybvToHsq" resolve="USER" />
              </node>
              <node concept="37vLTw" id="1_Anebx_52p" role="37wK5m">
                <ref role="3cqZAo" node="1_Anebx$$SU" resolve="PREFIX" />
              </node>
              <node concept="1bVj0M" id="1_Anebx$uNz" role="37wK5m">
                <node concept="37vLTG" id="1_Anebx$uSy" role="1bW2Oz">
                  <property role="TrG5h" value="key" />
                  <node concept="17QB3L" id="1_Anebx$uZj" role="1tU5fm" />
                </node>
                <node concept="3clFbS" id="1_Anebx$uN_" role="1bW5cS">
                  <node concept="3clFbH" id="23Habm5Bu4P" role="3cqZAp" />
                  <node concept="3clFbJ" id="23Habm5Bu4Q" role="3cqZAp">
                    <node concept="3clFbS" id="23Habm5Bu4R" role="3clFbx">
                      <node concept="3cpWs6" id="23Habm5Bu4S" role="3cqZAp">
                        <node concept="2YIFZM" id="23Habm5Bu4T" role="3cqZAk">
                          <ref role="37wK5l" to="wyt6:~Boolean.valueOf(java.lang.String)" resolve="valueOf" />
                          <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
                          <node concept="2YIFZM" id="23Habm5Bu4U" role="37wK5m">
                            <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String,java.lang.String)" resolve="getProperty" />
                            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                            <node concept="37vLTw" id="23Habm5BDfK" role="37wK5m">
                              <ref role="3cqZAo" node="23Habm5Bmhe" resolve="OPTION_PROFILING_ENABLED" />
                            </node>
                            <node concept="Xl_RD" id="23Habm5Bu4V" role="37wK5m">
                              <property role="Xl_RC" value="false" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="23Habm5BGVc" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="23Habm5Bu4X" role="3clFbw">
                      <node concept="37vLTw" id="23Habm5ByQT" role="2Oq$k0">
                        <ref role="3cqZAo" node="23Habm5Bmhe" resolve="OPTION_PROFILING_ENABLED" />
                      </node>
                      <node concept="liA8E" id="23Habm5Bu4Y" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                        <node concept="37vLTw" id="23Habm5Bu4Z" role="37wK5m">
                          <ref role="3cqZAo" node="1_Anebx$uSy" resolve="key" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="23Habm5BL6k" role="3cqZAp" />
                  <node concept="3clFbF" id="23Habm5Bu5y" role="3cqZAp">
                    <node concept="10Nm6u" id="23Habm5Bu5z" role="3clFbG" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1_Anebx$sIS" role="3clF45" />
      <node concept="3Tm1VV" id="7e$2hwaEhP3" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1_Anebx$BZs" role="jymVt" />
    <node concept="3Tm1VV" id="39eNUjm3TK_" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7iCybvToiT5">
    <property role="TrG5h" value="Config" />
    <node concept="2tJIrI" id="7iCybvToCxg" role="jymVt" />
    <node concept="Qs71p" id="7iCybvToD3Z" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Level" />
      <node concept="QsSxf" id="7iCybvToDv4" role="Qtgdg">
        <property role="TrG5h" value="DEFAULT" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="7iCybvToFr9" role="Qtgdg">
        <property role="TrG5h" value="SYSTEM" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="7iCybvToHsq" role="Qtgdg">
        <property role="TrG5h" value="USER" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="7iCybvToIZc" role="Qtgdg">
        <property role="TrG5h" value="UI" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="QsSxf" id="5Ul706LbJYK" role="Qtgdg">
        <property role="TrG5h" value="TEST" />
        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="7iCybvToD40" role="1B3o_S" />
      <node concept="3UR2Jj" id="7iCybvTrXeE" role="lGtFl">
        <node concept="TZ5HA" id="7iCybvTrXeF" role="TZ5H$">
          <node concept="1dT_AC" id="7iCybvTrXeG" role="1dT_Ay">
            <property role="1dT_AB" value="DEFAULT - options built in into code " />
          </node>
        </node>
        <node concept="TZ5HA" id="7iCybvTrXoF" role="TZ5H$">
          <node concept="1dT_AC" id="7iCybvTrXoG" role="1dT_Ay">
            <property role="1dT_AB" value="SYSTEM - options delivered with the app" />
          </node>
        </node>
        <node concept="TZ5HA" id="7iCybvTrXoR" role="TZ5H$">
          <node concept="1dT_AC" id="7iCybvTrXoS" role="1dT_Ay">
            <property role="1dT_AB" value="USER - options overridden by user" />
          </node>
        </node>
        <node concept="TZ5HA" id="7iCybvTrXp5" role="TZ5H$">
          <node concept="1dT_AC" id="7iCybvTrXp6" role="1dT_Ay">
            <property role="1dT_AB" value="UI - options overridden in the UI" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7iCybvToKtX" role="jymVt" />
    <node concept="3HP615" id="7iCybvToMqc" role="jymVt">
      <property role="TrG5h" value="OptionsProvider" />
      <node concept="2tJIrI" id="7iCybvToO1z" role="jymVt" />
      <node concept="3clFb_" id="7iCybvToOP0" role="jymVt">
        <property role="TrG5h" value="getOption" />
        <node concept="37vLTG" id="7iCybvToQ$I" role="3clF46">
          <property role="TrG5h" value="key" />
          <node concept="17QB3L" id="7iCybvTvp37" role="1tU5fm" />
        </node>
        <node concept="3uibUv" id="7iCybvToOZt" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="3Tm1VV" id="7iCybvToOP3" role="1B3o_S" />
        <node concept="3clFbS" id="7iCybvToOP4" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="7iCybvToO1_" role="jymVt" />
      <node concept="3Tm1VV" id="7iCybvToMqd" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7iCybvT$zoz" role="jymVt" />
    <node concept="3HP615" id="7iCybvT$$S3" role="jymVt">
      <property role="TrG5h" value="Option" />
      <node concept="2tJIrI" id="7iCybvT$Apt" role="jymVt" />
      <node concept="3clFb_" id="7iCybvT$ANq" role="jymVt">
        <property role="TrG5h" value="get" />
        <node concept="37vLTG" id="7iCybvT$BKD" role="3clF46">
          <property role="TrG5h" value="config" />
          <node concept="3uibUv" id="7iCybvT$C0x" role="1tU5fm">
            <ref role="3uigEE" node="7iCybvToiT5" resolve="Config" />
          </node>
        </node>
        <node concept="16syzq" id="7iCybvT$B3o" role="3clF45">
          <ref role="16sUi3" node="7iCybvT$AwU" resolve="T" />
        </node>
        <node concept="3Tm1VV" id="7iCybvT$ANt" role="1B3o_S" />
        <node concept="3clFbS" id="7iCybvT$ANu" role="3clF47" />
      </node>
      <node concept="2tJIrI" id="7iCybvT$Apv" role="jymVt" />
      <node concept="3Tm1VV" id="7iCybvT$$S4" role="1B3o_S" />
      <node concept="16euLQ" id="7iCybvT$AwU" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="7iCybvToM7s" role="jymVt" />
    <node concept="Wx3nA" id="7iCybvTsa$U" role="jymVt">
      <property role="TrG5h" value="INSTANCE" />
      <node concept="3Tm6S6" id="7iCybvTsa$W" role="1B3o_S" />
      <node concept="10Nm6u" id="7iCybvTsbDm" role="33vP2m" />
      <node concept="3uibUv" id="7iCybvTsbcU" role="1tU5fm">
        <ref role="3uigEE" node="7iCybvToiT5" resolve="Config" />
      </node>
    </node>
    <node concept="2tJIrI" id="7iCybvTs2Au" role="jymVt" />
    <node concept="2YIFZL" id="2tFDlV2co4z" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="3clFbS" id="2tFDlV2clZ9" role="3clF47">
        <node concept="3clFbJ" id="3OUB6BBlksB" role="3cqZAp">
          <node concept="3clFbS" id="3OUB6BBlksD" role="3clFbx">
            <node concept="3clFbF" id="5gVsyvFqjgU" role="3cqZAp">
              <node concept="37vLTI" id="5gVsyvFqjgV" role="3clFbG">
                <node concept="2ShNRf" id="5gVsyvFqjgW" role="37vLTx">
                  <node concept="1pGfFk" id="5gVsyvFqjgX" role="2ShVmc">
                    <ref role="37wK5l" node="7iCybvTs5N5" resolve="Config" />
                    <node concept="2ShNRf" id="5gVsyvFqjgY" role="37wK5m">
                      <node concept="1pGfFk" id="5gVsyvFqjgZ" role="2ShVmc">
                        <ref role="37wK5l" node="7iCybvTsdu8" resolve="Config.EffectiveOptions" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5gVsyvFqjh5" role="37vLTJ">
                  <ref role="3cqZAo" node="7iCybvTsa$U" resolve="INSTANCE" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3OUB6BBll18" role="3clFbw">
            <node concept="10Nm6u" id="3OUB6BBlldr" role="3uHU7w" />
            <node concept="37vLTw" id="3OUB6BBlkwt" role="3uHU7B">
              <ref role="3cqZAo" node="7iCybvTsa$U" resolve="INSTANCE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="2tFDlV2clZ7" role="3clF45" />
      <node concept="3Tm1VV" id="3OUB6BBl039" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2tFDlV2cuT7" role="jymVt" />
    <node concept="2YIFZL" id="2tFDlV2ct0G" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3clFbS" id="2tFDlV2ct0H" role="3clF47">
        <node concept="3clFbF" id="2tFDlV2cxfF" role="3cqZAp">
          <node concept="2OqwBi" id="2tFDlV2cxlU" role="3clFbG">
            <node concept="37vLTw" id="2tFDlV2cxfD" role="2Oq$k0">
              <ref role="3cqZAo" node="7iCybvTsa$U" resolve="INSTANCE" />
            </node>
            <node concept="liA8E" id="2tFDlV2da$k" role="2OqNvi">
              <ref role="37wK5l" node="2tFDlV2cWxE" resolve="clearAll" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2tFDlV2cyPt" role="3cqZAp">
          <node concept="37vLTI" id="2tFDlV2cz90" role="3clFbG">
            <node concept="10Nm6u" id="2tFDlV2czay" role="37vLTx" />
            <node concept="37vLTw" id="2tFDlV2cyPr" role="37vLTJ">
              <ref role="3cqZAo" node="7iCybvTsa$U" resolve="INSTANCE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="2tFDlV2ct0P" role="3clF45" />
      <node concept="3Tm1VV" id="2CPBoDCe7P6" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2tFDlV2cjbA" role="jymVt" />
    <node concept="2YIFZL" id="7iCybvTs3lI" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="3uibUv" id="7iCybvTs47V" role="3clF45">
        <ref role="3uigEE" node="7iCybvToiT5" resolve="Config" />
      </node>
      <node concept="3Tm1VV" id="7iCybvTs3lL" role="1B3o_S" />
      <node concept="3clFbS" id="7iCybvTs3lM" role="3clF47">
        <node concept="3cpWs6" id="7iCybvTt2ZT" role="3cqZAp">
          <node concept="37vLTw" id="7iCybvTt372" role="3cqZAk">
            <ref role="3cqZAo" node="7iCybvTsa$U" resolve="INSTANCE" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7e$2hwaASH3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
      <node concept="P$JXv" id="7e$2hwaus4K" role="lGtFl">
        <node concept="TZ5HA" id="7e$2hwaus4L" role="TZ5H$">
          <node concept="1dT_AC" id="7e$2hwaus4M" role="1dT_Ay">
            <property role="1dT_AB" value="Returns the instance to share the default (hardcoded) options." />
          </node>
        </node>
        <node concept="TZ5HI" id="7e$2hwaASH1" role="3nqlJM">
          <node concept="TZ5HA" id="7e$2hwaASH2" role="3HnX3l" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7iCybvTs0IM" role="jymVt" />
    <node concept="3clFb_" id="7e$2hwauJ33" role="jymVt">
      <property role="TrG5h" value="copy" />
      <node concept="3uibUv" id="7e$2hwauOO5" role="3clF45">
        <ref role="3uigEE" node="7iCybvToiT5" resolve="Config" />
      </node>
      <node concept="3Tm1VV" id="7e$2hwauJ36" role="1B3o_S" />
      <node concept="3clFbS" id="7e$2hwauJ37" role="3clF47">
        <node concept="3clFbF" id="7e$2hwav00B" role="3cqZAp">
          <node concept="2ShNRf" id="7e$2hwav00_" role="3clFbG">
            <node concept="1pGfFk" id="7e$2hwav3Fc" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" node="7iCybvTs5N5" resolve="Config" />
              <node concept="37vLTw" id="7e$2hwav5EJ" role="37wK5m">
                <ref role="3cqZAo" node="7iCybvTsVZN" resolve="effectiveOptions" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="7e$2hwavjOi" role="lGtFl">
        <node concept="TZ5HA" id="7e$2hwavjOj" role="TZ5H$">
          <node concept="1dT_AC" id="7e$2hwavjOk" role="1dT_Ay">
            <property role="1dT_AB" value="Returns a copy of this instance with the state that is not shared. All updates to either this or the" />
          </node>
        </node>
        <node concept="TZ5HA" id="7e$2hwavmS5" role="TZ5H$">
          <node concept="1dT_AC" id="7e$2hwavmS6" role="1dT_Ay">
            <property role="1dT_AB" value="returned instance will not reflect in the other one. " />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7e$2hwauu_E" role="jymVt" />
    <node concept="2YIFZL" id="6hpwxwiHYr2" role="jymVt">
      <property role="TrG5h" value="create" />
      <node concept="3clFbS" id="6hpwxwiHTtq" role="3clF47">
        <node concept="3clFbF" id="6hpwxwiI9h6" role="3cqZAp">
          <node concept="2ShNRf" id="6hpwxwiI9h8" role="3clFbG">
            <node concept="1pGfFk" id="6hpwxwiI9h9" role="2ShVmc">
              <ref role="37wK5l" node="7iCybvTs5N5" resolve="Config" />
              <node concept="2ShNRf" id="6hpwxwiI9ha" role="37wK5m">
                <node concept="1pGfFk" id="6hpwxwiI9hb" role="2ShVmc">
                  <ref role="37wK5l" node="7iCybvTsdu8" resolve="Config.EffectiveOptions" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6hpwxwiI64L" role="3clF45">
        <ref role="3uigEE" node="7iCybvToiT5" resolve="Config" />
      </node>
      <node concept="3Tm1VV" id="6hpwxwiHTtp" role="1B3o_S" />
      <node concept="P$JXv" id="6hpwxwiIihH" role="lGtFl">
        <node concept="TZ5HA" id="6hpwxwiIihI" role="TZ5H$">
          <node concept="1dT_AC" id="6hpwxwiIihJ" role="1dT_Ay">
            <property role="1dT_AB" value="Creates new instance with hardcoded default options. " />
          </node>
        </node>
        <node concept="TZ5HA" id="7e$2hwaAYge" role="TZ5H$">
          <node concept="1dT_AC" id="7e$2hwaAYgf" role="1dT_Ay">
            <property role="1dT_AB" value="Used from tests." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7iCybvTucuM" role="jymVt" />
    <node concept="3clFb_" id="xqbf82kuzw" role="jymVt">
      <property role="TrG5h" value="reset" />
      <node concept="3clFbS" id="7iCybvTu6L3" role="3clF47">
        <node concept="3clFbF" id="2vm2iDVlvcT" role="3cqZAp">
          <node concept="37vLTI" id="4ot3PHRPnyi" role="3clFbG">
            <node concept="2OqwBi" id="4ot3PHRPqUW" role="37vLTJ">
              <node concept="Xjq3P" id="4ot3PHRPpGi" role="2Oq$k0" />
              <node concept="2OwXpG" id="4ot3PHRPrL8" role="2OqNvi">
                <ref role="2Oxat5" node="7iCybvTsVZN" resolve="effectiveOptions" />
              </node>
            </node>
            <node concept="2OqwBi" id="2vm2iDVlvSw" role="37vLTx">
              <node concept="liA8E" id="2vm2iDVlwcq" role="2OqNvi">
                <ref role="37wK5l" node="2vm2iDVkv38" resolve="reset" />
                <node concept="37vLTw" id="2vm2iDVlwsx" role="37wK5m">
                  <ref role="3cqZAo" node="2vm2iDVlurW" resolve="lvl" />
                </node>
              </node>
              <node concept="37vLTw" id="xqbf82kyzx" role="2Oq$k0">
                <ref role="3cqZAo" node="7iCybvTsVZN" resolve="effectiveOptions" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2vm2iDVlurW" role="3clF46">
        <property role="TrG5h" value="lvl" />
        <node concept="3uibUv" id="2vm2iDVluE7" role="1tU5fm">
          <ref role="3uigEE" node="7iCybvToD3Z" resolve="Config.Level" />
        </node>
      </node>
      <node concept="3cqZAl" id="2vm2iDVltSe" role="3clF45" />
      <node concept="P$JXv" id="2hrTH42Peja" role="lGtFl">
        <node concept="TZ5HA" id="2hrTH42Pejb" role="TZ5H$">
          <node concept="1dT_AC" id="2hrTH42Pejc" role="1dT_Ay">
            <property role="1dT_AB" value="Used from tests." />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7iCybvTuEmz" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7iCybvT$S2B" role="jymVt" />
    <node concept="3clFb_" id="7iCybvTszk9" role="jymVt">
      <property role="TrG5h" value="registerProvider" />
      <node concept="3clFbS" id="7iCybvToL4K" role="3clF47">
        <node concept="3clFbF" id="7iCybvTvcna" role="3cqZAp">
          <node concept="37vLTI" id="4ot3PHRPcbX" role="3clFbG">
            <node concept="2OqwBi" id="4ot3PHRPf_R" role="37vLTJ">
              <node concept="Xjq3P" id="4ot3PHRPen7" role="2Oq$k0" />
              <node concept="2OwXpG" id="4ot3PHRPhf1" role="2OqNvi">
                <ref role="2Oxat5" node="7iCybvTsVZN" resolve="effectiveOptions" />
              </node>
            </node>
            <node concept="2OqwBi" id="7iCybvTvcxN" role="37vLTx">
              <node concept="37vLTw" id="7iCybvTvcn9" role="2Oq$k0">
                <ref role="3cqZAo" node="7iCybvTsVZN" resolve="effectiveOptions" />
              </node>
              <node concept="liA8E" id="7iCybvTvcKl" role="2OqNvi">
                <ref role="37wK5l" node="7iCybvTtBza" resolve="registerProvider" />
                <node concept="37vLTw" id="7iCybvTvcXf" role="37wK5m">
                  <ref role="3cqZAo" node="7iCybvToLCK" resolve="level" />
                </node>
                <node concept="37vLTw" id="7iCybvTvd9W" role="37wK5m">
                  <ref role="3cqZAo" node="7iCybvToOoN" resolve="prefix" />
                </node>
                <node concept="37vLTw" id="7iCybvTvduq" role="37wK5m">
                  <ref role="3cqZAo" node="7iCybvToLVE" resolve="provider" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7iCybvToLCK" role="3clF46">
        <property role="TrG5h" value="level" />
        <node concept="3uibUv" id="7iCybvToLLw" role="1tU5fm">
          <ref role="3uigEE" node="7iCybvToD3Z" resolve="Config.Level" />
        </node>
      </node>
      <node concept="37vLTG" id="7iCybvToOoN" role="3clF46">
        <property role="TrG5h" value="prefix" />
        <node concept="17QB3L" id="7iCybvToOxB" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7iCybvToLVE" role="3clF46">
        <property role="TrG5h" value="provider" />
        <node concept="3uibUv" id="7iCybvToNTj" role="1tU5fm">
          <ref role="3uigEE" node="7iCybvToMqc" resolve="Config.OptionsProvider" />
        </node>
      </node>
      <node concept="3cqZAl" id="7iCybvToL4I" role="3clF45" />
      <node concept="P$JXv" id="7iCybvTp7YY" role="lGtFl">
        <node concept="TZ5HA" id="7iCybvTp7YZ" role="TZ5H$">
          <node concept="1dT_AC" id="7iCybvTp7Z0" role="1dT_Ay">
            <property role="1dT_AB" value="A prefix is defined as a string matching the following RE: &quot;([a-zA-Z0-9]*\.)+&quot; ." />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7iCybvToL4J" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7iCybvTt0Zw" role="jymVt" />
    <node concept="3clFb_" id="7prluhlHqSp" role="jymVt">
      <property role="TrG5h" value="clearProvider" />
      <node concept="3cqZAl" id="7prluhlHqSr" role="3clF45" />
      <node concept="3Tm1VV" id="7prluhlHqSs" role="1B3o_S" />
      <node concept="3clFbS" id="7prluhlHqSt" role="3clF47">
        <node concept="3clFbF" id="7prluhlHyAm" role="3cqZAp">
          <node concept="37vLTI" id="4ot3PHRPt7e" role="3clFbG">
            <node concept="2OqwBi" id="4ot3PHRPww0" role="37vLTJ">
              <node concept="Xjq3P" id="4ot3PHRPvhi" role="2Oq$k0" />
              <node concept="2OwXpG" id="4ot3PHRPxmx" role="2OqNvi">
                <ref role="2Oxat5" node="7iCybvTsVZN" resolve="effectiveOptions" />
              </node>
            </node>
            <node concept="2OqwBi" id="7prluhlHyAn" role="37vLTx">
              <node concept="liA8E" id="7prluhlHyAo" role="2OqNvi">
                <ref role="37wK5l" node="7prluhlHKlE" resolve="clearProvider" />
                <node concept="37vLTw" id="7prluhlId6r" role="37wK5m">
                  <ref role="3cqZAo" node="7prluhlHv8$" resolve="lvl" />
                </node>
                <node concept="37vLTw" id="7prluhlIcTg" role="37wK5m">
                  <ref role="3cqZAo" node="7prluhlHvte" resolve="prefix" />
                </node>
              </node>
              <node concept="37vLTw" id="7prluhlHyAq" role="2Oq$k0">
                <ref role="3cqZAo" node="7iCybvTsVZN" resolve="effectiveOptions" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7prluhlHv8$" role="3clF46">
        <property role="TrG5h" value="lvl" />
        <node concept="3uibUv" id="7prluhlHv8z" role="1tU5fm">
          <ref role="3uigEE" node="7iCybvToD3Z" resolve="Config.Level" />
        </node>
      </node>
      <node concept="37vLTG" id="7prluhlHvte" role="3clF46">
        <property role="TrG5h" value="prefix" />
        <node concept="17QB3L" id="6hpwxwiISvc" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7prluhlHkf_" role="jymVt" />
    <node concept="3clFb_" id="7iCybvToiWV" role="jymVt">
      <property role="TrG5h" value="getOption" />
      <property role="DiZV1" value="true" />
      <node concept="37vLTG" id="7iCybvTokpe" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="17QB3L" id="5dfEAcSBiyK" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7iCybvToj0j" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="7iCybvToiWY" role="1B3o_S" />
      <node concept="3clFbS" id="7iCybvToiWZ" role="3clF47">
        <node concept="3cpWs6" id="5dfEAcSqtY5" role="3cqZAp">
          <node concept="2OqwBi" id="5dfEAcSqtY6" role="3cqZAk">
            <node concept="37vLTw" id="5dfEAcSqtY7" role="2Oq$k0">
              <ref role="3cqZAo" node="7iCybvTsVZN" resolve="effectiveOptions" />
            </node>
            <node concept="liA8E" id="5dfEAcSqtY8" role="2OqNvi">
              <ref role="37wK5l" node="4ot3PHRDTsQ" resolve="getOption" />
              <node concept="37vLTw" id="5dfEAcSqtY9" role="37wK5m">
                <ref role="3cqZAo" node="7iCybvTokpe" resolve="key" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7iCybvTq5Ry" role="jymVt" />
    <node concept="3clFb_" id="2tFDlV2cWxE" role="jymVt">
      <property role="TrG5h" value="clearAll" />
      <node concept="3clFbS" id="2tFDlV2cTLe" role="3clF47">
        <node concept="3clFbJ" id="6hpwxwiIU6T" role="3cqZAp">
          <node concept="3clFbS" id="6hpwxwiIU6V" role="3clFbx">
            <node concept="3clFbF" id="2tFDlV2cYPV" role="3cqZAp">
              <node concept="2OqwBi" id="2tFDlV2cZeA" role="3clFbG">
                <node concept="37vLTw" id="2tFDlV2cYPU" role="2Oq$k0">
                  <ref role="3cqZAo" node="7iCybvTsVZN" resolve="effectiveOptions" />
                </node>
                <node concept="liA8E" id="2tFDlV2cZBE" role="2OqNvi">
                  <ref role="37wK5l" node="2tFDlV2c_F8" resolve="clearAll" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6hpwxwiIUvm" role="3clFbw">
            <node concept="10Nm6u" id="6hpwxwiIUw3" role="3uHU7w" />
            <node concept="37vLTw" id="6hpwxwiIUaj" role="3uHU7B">
              <ref role="3cqZAo" node="7iCybvTsVZN" resolve="effectiveOptions" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="2tFDlV2cTLc" role="3clF45" />
      <node concept="3Tmbuc" id="2tFDlV2cVEq" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7iCybvTsBAO" role="jymVt" />
    <node concept="3clFbW" id="7iCybvTs5N5" role="jymVt">
      <node concept="3cqZAl" id="7iCybvTs5N7" role="3clF45" />
      <node concept="3clFbS" id="7iCybvTs5N9" role="3clF47">
        <node concept="3clFbF" id="7iCybvTsVZR" role="3cqZAp">
          <node concept="37vLTI" id="7iCybvTsVZT" role="3clFbG">
            <node concept="2OqwBi" id="7iCybvTsXpd" role="37vLTJ">
              <node concept="Xjq3P" id="7iCybvTsXpV" role="2Oq$k0" />
              <node concept="2OwXpG" id="7iCybvTsXpg" role="2OqNvi">
                <ref role="2Oxat5" node="7iCybvTsVZN" resolve="effectiveOptions" />
              </node>
            </node>
            <node concept="37vLTw" id="7iCybvTsVZX" role="37vLTx">
              <ref role="3cqZAo" node="7iCybvTsV_p" resolve="options" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7iCybvTsV_p" role="3clF46">
        <property role="TrG5h" value="options" />
        <node concept="3uibUv" id="7iCybvTv1GP" role="1tU5fm">
          <ref role="3uigEE" node="7iCybvTsdu6" resolve="Config.EffectiveOptions" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7e$2hwaurTs" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7iCybvToZ8V" role="jymVt" />
    <node concept="312cEu" id="7iCybvTsAb9" role="jymVt">
      <property role="TrG5h" value="Options" />
      <node concept="2tJIrI" id="4ot3PHRIE39" role="jymVt" />
      <node concept="3clFbW" id="4ot3PHRLyTV" role="jymVt">
        <node concept="3cqZAl" id="4ot3PHRLyTX" role="3clF45" />
        <node concept="3Tmbuc" id="4ot3PHRL_o0" role="1B3o_S" />
        <node concept="3clFbS" id="4ot3PHRLyTZ" role="3clF47">
          <node concept="3clFbF" id="4ot3PHRLAJa" role="3cqZAp">
            <node concept="37vLTI" id="4ot3PHRLEPs" role="3clFbG">
              <node concept="2ShNRf" id="4ot3PHRLFnQ" role="37vLTx">
                <node concept="1pGfFk" id="4ot3PHRLJao" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
                </node>
              </node>
              <node concept="2OqwBi" id="4ot3PHRLBAI" role="37vLTJ">
                <node concept="Xjq3P" id="4ot3PHRLAJ9" role="2Oq$k0" />
                <node concept="2OwXpG" id="4ot3PHRLCTy" role="2OqNvi">
                  <ref role="2Oxat5" node="7iCybvToTt4" resolve="prefix2provider" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4ot3PHRLuO6" role="jymVt" />
      <node concept="3clFbW" id="4ot3PHRK9Yf" role="jymVt">
        <node concept="3cqZAl" id="4ot3PHRK9Yi" role="3clF45" />
        <node concept="3Tm6S6" id="4ot3PHRK9Yj" role="1B3o_S" />
        <node concept="3clFbS" id="4ot3PHRK9Yk" role="3clF47">
          <node concept="3clFbF" id="4ot3PHRKmHy" role="3cqZAp">
            <node concept="37vLTI" id="4ot3PHRKqDv" role="3clFbG">
              <node concept="2ShNRf" id="4ot3PHRKLNP" role="37vLTx">
                <node concept="1pGfFk" id="4ot3PHRLfU7" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;(java.util.Map)" resolve="HashMap" />
                  <node concept="17QB3L" id="4ot3PHRLps_" role="1pMfVU" />
                  <node concept="3uibUv" id="4ot3PHRLqMf" role="1pMfVU">
                    <ref role="3uigEE" node="7iCybvToMqc" resolve="Config.OptionsProvider" />
                  </node>
                  <node concept="2OqwBi" id="4ot3PHRLjXj" role="37wK5m">
                    <node concept="37vLTw" id="4ot3PHRLikj" role="2Oq$k0">
                      <ref role="3cqZAo" node="4ot3PHRKx$J" resolve="copyFrom" />
                    </node>
                    <node concept="2OwXpG" id="4ot3PHRLlho" role="2OqNvi">
                      <ref role="2Oxat5" node="7iCybvToTt4" resolve="prefix2provider" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4ot3PHRKnyJ" role="37vLTJ">
                <node concept="Xjq3P" id="4ot3PHRKmHx" role="2Oq$k0" />
                <node concept="2OwXpG" id="4ot3PHRKoMk" role="2OqNvi">
                  <ref role="2Oxat5" node="7iCybvToTt4" resolve="prefix2provider" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4ot3PHRKx$J" role="3clF46">
          <property role="TrG5h" value="copyFrom" />
          <node concept="3uibUv" id="4ot3PHRKx$I" role="1tU5fm">
            <ref role="3uigEE" node="7iCybvTsAb9" resolve="Config.Options" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4ot3PHRJZZd" role="jymVt" />
      <node concept="3clFb_" id="7iCybvTqDck" role="jymVt">
        <property role="TrG5h" value="primGetOption" />
        <property role="DiZV1" value="true" />
        <node concept="37vLTG" id="7iCybvTqIRL" role="3clF46">
          <property role="TrG5h" value="key" />
          <node concept="17QB3L" id="7iCybvTvBaQ" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7iCybvTqIRN" role="3clF46">
          <property role="TrG5h" value="allPrefixes" />
          <node concept="_YKpA" id="7iCybvTvDbz" role="1tU5fm">
            <node concept="17QB3L" id="7iCybvTvEDt" role="_ZDj9" />
          </node>
        </node>
        <node concept="3uibUv" id="7iCybvTqEjr" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="3Tmbuc" id="7iCybvTr6kb" role="1B3o_S" />
        <node concept="3clFbS" id="7iCybvTqDco" role="3clF47">
          <node concept="3cpWs8" id="7iCybvTqKRw" role="3cqZAp">
            <node concept="3cpWsn" id="7iCybvTqKRx" role="3cpWs9">
              <property role="TrG5h" value="lookupProvider" />
              <node concept="3uibUv" id="7iCybvTqKRy" role="1tU5fm">
                <ref role="3uigEE" node="7iCybvToMqc" resolve="Config.OptionsProvider" />
              </node>
              <node concept="1rXfSq" id="7iCybvTqKRz" role="33vP2m">
                <ref role="37wK5l" node="7iCybvToXnO" resolve="lookupProvider" />
                <node concept="37vLTw" id="7iCybvTqKR$" role="37wK5m">
                  <ref role="3cqZAo" node="7iCybvTqIRN" resolve="allPrefixes" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7iCybvTqKR_" role="3cqZAp">
            <node concept="3clFbS" id="7iCybvTqKRA" role="3clFbx">
              <node concept="3cpWs8" id="7iCybvTqKRB" role="3cqZAp">
                <node concept="3cpWsn" id="7iCybvTqKRC" role="3cpWs9">
                  <property role="TrG5h" value="option" />
                  <node concept="3uibUv" id="7iCybvTqKRD" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                  <node concept="2OqwBi" id="7iCybvTqKRE" role="33vP2m">
                    <node concept="37vLTw" id="7iCybvTqKRF" role="2Oq$k0">
                      <ref role="3cqZAo" node="7iCybvTqKRx" resolve="lookupProvider" />
                    </node>
                    <node concept="liA8E" id="7iCybvTqKRG" role="2OqNvi">
                      <ref role="37wK5l" node="7iCybvToOP0" resolve="getOption" />
                      <node concept="37vLTw" id="7iCybvTqKRH" role="37wK5m">
                        <ref role="3cqZAo" node="7iCybvTqIRL" resolve="key" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="7iCybvTqKRI" role="3cqZAp">
                <node concept="3clFbS" id="7iCybvTqKRJ" role="3clFbx">
                  <node concept="3cpWs6" id="7iCybvTqKRK" role="3cqZAp">
                    <node concept="37vLTw" id="7iCybvTqKRL" role="3cqZAk">
                      <ref role="3cqZAo" node="7iCybvTqKRC" resolve="option" />
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="7iCybvTqKRM" role="3clFbw">
                  <node concept="10Nm6u" id="7iCybvTqKRN" role="3uHU7w" />
                  <node concept="37vLTw" id="7iCybvTqKRO" role="3uHU7B">
                    <ref role="3cqZAo" node="7iCybvTqKRC" resolve="option" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="7iCybvTqKRP" role="3clFbw">
              <node concept="10Nm6u" id="7iCybvTqKRQ" role="3uHU7w" />
              <node concept="37vLTw" id="7iCybvTqKRR" role="3uHU7B">
                <ref role="3cqZAo" node="7iCybvTqKRx" resolve="lookupProvider" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4ot3PHRDOfR" role="3cqZAp">
            <node concept="10Nm6u" id="4ot3PHRDOfP" role="3clFbG" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7iCybvToTab" role="jymVt" />
      <node concept="3clFb_" id="7iCybvTp08X" role="jymVt">
        <property role="TrG5h" value="putProvider" />
        <node concept="37vLTG" id="7iCybvTp16G" role="3clF46">
          <property role="TrG5h" value="prefix" />
          <node concept="17QB3L" id="7iCybvTvJX9" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7iCybvTp1uX" role="3clF46">
          <property role="TrG5h" value="provider" />
          <node concept="3uibUv" id="7iCybvTp1L$" role="1tU5fm">
            <ref role="3uigEE" node="7iCybvToMqc" resolve="Config.OptionsProvider" />
          </node>
        </node>
        <node concept="3Tmbuc" id="7iCybvTp0sg" role="1B3o_S" />
        <node concept="3clFbS" id="7iCybvTp091" role="3clF47">
          <node concept="3cpWs8" id="4ot3PHRLS7y" role="3cqZAp">
            <node concept="3cpWsn" id="4ot3PHRLS7z" role="3cpWs9">
              <property role="TrG5h" value="newOptions" />
              <node concept="3uibUv" id="4ot3PHRLRA1" role="1tU5fm">
                <ref role="3uigEE" node="7iCybvTsAb9" resolve="Config.Options" />
              </node>
              <node concept="2ShNRf" id="4ot3PHRLS7$" role="33vP2m">
                <node concept="1pGfFk" id="4ot3PHRLS7_" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" node="4ot3PHRK9Yf" resolve="Config.Options" />
                  <node concept="Xjq3P" id="4ot3PHRLS7A" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4ot3PHRLMdo" role="3cqZAp">
            <node concept="2OqwBi" id="4ot3PHRLZhR" role="3clFbG">
              <node concept="liA8E" id="4ot3PHRM1UQ" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                <node concept="37vLTw" id="7iCybvTpSU8" role="37wK5m">
                  <ref role="3cqZAo" node="7iCybvTp16G" resolve="prefix" />
                </node>
                <node concept="37vLTw" id="7iCybvTpNaw" role="37wK5m">
                  <ref role="3cqZAo" node="7iCybvTp1uX" resolve="provider" />
                </node>
              </node>
              <node concept="2OqwBi" id="4ot3PHRLVTl" role="2Oq$k0">
                <node concept="37vLTw" id="4ot3PHRLS7B" role="2Oq$k0">
                  <ref role="3cqZAo" node="4ot3PHRLS7z" resolve="newOptions" />
                </node>
                <node concept="2OwXpG" id="4ot3PHRLXhV" role="2OqNvi">
                  <ref role="2Oxat5" node="7iCybvToTt4" resolve="prefix2provider" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4ot3PHRM8DA" role="3cqZAp">
            <node concept="37vLTw" id="4ot3PHRM8D$" role="3clFbG">
              <ref role="3cqZAo" node="4ot3PHRLS7z" resolve="newOptions" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="4ot3PHRJXca" role="3clF45">
          <ref role="3uigEE" node="7iCybvTsAb9" resolve="Config.Options" />
        </node>
      </node>
      <node concept="2tJIrI" id="7iCybvToZLW" role="jymVt" />
      <node concept="3clFb_" id="7prluhlHRVh" role="jymVt">
        <property role="TrG5h" value="clearProvider" />
        <node concept="37vLTG" id="7prluhlHRVi" role="3clF46">
          <property role="TrG5h" value="prefix" />
          <node concept="17QB3L" id="7prluhlHRVj" role="1tU5fm" />
        </node>
        <node concept="3Tmbuc" id="7prluhlHRVn" role="1B3o_S" />
        <node concept="3clFbS" id="7prluhlHRVo" role="3clF47">
          <node concept="3cpWs8" id="4ot3PHRMawr" role="3cqZAp">
            <node concept="3cpWsn" id="4ot3PHRMaws" role="3cpWs9">
              <property role="TrG5h" value="newOptions" />
              <node concept="3uibUv" id="4ot3PHRMawt" role="1tU5fm">
                <ref role="3uigEE" node="7iCybvTsAb9" resolve="Config.Options" />
              </node>
              <node concept="2ShNRf" id="4ot3PHRMawu" role="33vP2m">
                <node concept="1pGfFk" id="4ot3PHRMawv" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" node="4ot3PHRK9Yf" resolve="Config.Options" />
                  <node concept="Xjq3P" id="4ot3PHRMaww" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7prluhlHRVp" role="3cqZAp">
            <node concept="2OqwBi" id="7prluhlHRVq" role="3clFbG">
              <node concept="liA8E" id="7prluhlHRVs" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.remove(java.lang.Object)" resolve="remove" />
                <node concept="37vLTw" id="7prluhlHRVt" role="37wK5m">
                  <ref role="3cqZAo" node="7prluhlHRVi" resolve="prefix" />
                </node>
              </node>
              <node concept="2OqwBi" id="4ot3PHRMdAp" role="2Oq$k0">
                <node concept="37vLTw" id="4ot3PHRMhqw" role="2Oq$k0">
                  <ref role="3cqZAo" node="4ot3PHRMaws" resolve="newOptions" />
                </node>
                <node concept="2OwXpG" id="4ot3PHRMdAs" role="2OqNvi">
                  <ref role="2Oxat5" node="7iCybvToTt4" resolve="prefix2provider" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4ot3PHRMuka" role="3cqZAp">
            <node concept="37vLTw" id="4ot3PHRMuk8" role="3clFbG">
              <ref role="3cqZAo" node="4ot3PHRMaws" resolve="newOptions" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="4ot3PHRJYUX" role="3clF45">
          <ref role="3uigEE" node="7iCybvTsAb9" resolve="Config.Options" />
        </node>
      </node>
      <node concept="2tJIrI" id="7prluhlHRVg" role="jymVt" />
      <node concept="3clFb_" id="7iCybvToXnO" role="jymVt">
        <property role="TrG5h" value="lookupProvider" />
        <node concept="37vLTG" id="7iCybvToYnz" role="3clF46">
          <property role="TrG5h" value="prefixes" />
          <node concept="_YKpA" id="7iCybvTvMDP" role="1tU5fm">
            <node concept="17QB3L" id="7iCybvTvMDR" role="_ZDj9" />
          </node>
        </node>
        <node concept="3uibUv" id="7iCybvToXUm" role="3clF45">
          <ref role="3uigEE" node="7iCybvToMqc" resolve="Config.OptionsProvider" />
        </node>
        <node concept="3Tmbuc" id="7iCybvToXEJ" role="1B3o_S" />
        <node concept="3clFbS" id="7iCybvToXnS" role="3clF47">
          <node concept="1DcWWT" id="7iCybvTpu_r" role="3cqZAp">
            <node concept="3cpWsn" id="7iCybvTpu_s" role="1Duv9x">
              <property role="TrG5h" value="p" />
              <node concept="17QB3L" id="7iCybvTvOm$" role="1tU5fm" />
            </node>
            <node concept="37vLTw" id="7iCybvTpvk2" role="1DdaDG">
              <ref role="3cqZAo" node="7iCybvToYnz" resolve="prefixes" />
            </node>
            <node concept="3clFbS" id="7iCybvTpu_u" role="2LFqv$">
              <node concept="3clFbJ" id="7iCybvTpvQM" role="3cqZAp">
                <node concept="2OqwBi" id="7iCybvTpwxR" role="3clFbw">
                  <node concept="37vLTw" id="7iCybvTpvZG" role="2Oq$k0">
                    <ref role="3cqZAo" node="7iCybvToTt4" resolve="prefix2provider" />
                  </node>
                  <node concept="liA8E" id="7iCybvTpxgy" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object)" resolve="containsKey" />
                    <node concept="37vLTw" id="7iCybvTpxxI" role="37wK5m">
                      <ref role="3cqZAo" node="7iCybvTpu_s" resolve="p" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="7iCybvTpvQO" role="3clFbx">
                  <node concept="3cpWs6" id="7iCybvTpxRE" role="3cqZAp">
                    <node concept="2OqwBi" id="7iCybvTp$kx" role="3cqZAk">
                      <node concept="37vLTw" id="7iCybvTpz5Y" role="2Oq$k0">
                        <ref role="3cqZAo" node="7iCybvToTt4" resolve="prefix2provider" />
                      </node>
                      <node concept="liA8E" id="7iCybvTp_id" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                        <node concept="37vLTw" id="7iCybvTpAp$" role="37wK5m">
                          <ref role="3cqZAo" node="7iCybvTpu_s" resolve="p" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="7iCybvTpCFK" role="3cqZAp">
            <node concept="10Nm6u" id="7iCybvTpDqm" role="3cqZAk" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7iCybvTsTMP" role="jymVt" />
      <node concept="312cEg" id="7iCybvToTt4" role="jymVt">
        <property role="TrG5h" value="prefix2provider" />
        <node concept="3Tm6S6" id="7iCybvToTt5" role="1B3o_S" />
        <node concept="3uibUv" id="7iCybvTp28R" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
          <node concept="17QB3L" id="7iCybvTp2NK" role="11_B2D" />
          <node concept="3uibUv" id="7iCybvTp2WI" role="11_B2D">
            <ref role="3uigEE" node="7iCybvToMqc" resolve="Config.OptionsProvider" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7iCybvTtxRa" role="jymVt" />
      <node concept="3Tm6S6" id="4ot3PHRCvPm" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4ot3PHRCY5d" role="jymVt" />
    <node concept="312cEu" id="7iCybvTsdu6" role="jymVt">
      <property role="TrG5h" value="EffectiveOptions" />
      <node concept="2tJIrI" id="7iCybvTsdu7" role="jymVt" />
      <node concept="3clFbW" id="7iCybvTsdu8" role="jymVt">
        <node concept="3cqZAl" id="7iCybvTsdub" role="3clF45" />
        <node concept="3clFbS" id="7iCybvTsdud" role="3clF47">
          <node concept="3clFbF" id="4ot3PHRO8mN" role="3cqZAp">
            <node concept="37vLTI" id="4ot3PHRO9BZ" role="3clFbG">
              <node concept="2ShNRf" id="4ot3PHRO9VT" role="37vLTx">
                <node concept="3rGOSV" id="4ot3PHRO9UY" role="2ShVmc">
                  <node concept="3uibUv" id="4ot3PHRO9UZ" role="3rHrn6">
                    <ref role="3uigEE" node="7iCybvToD3Z" resolve="Config.Level" />
                  </node>
                  <node concept="3uibUv" id="4ot3PHRO9V0" role="3rHtpV">
                    <ref role="3uigEE" node="7iCybvTsAb9" resolve="Config.Options" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4ot3PHRO8uU" role="37vLTJ">
                <node concept="Xjq3P" id="4ot3PHRO8mL" role="2Oq$k0" />
                <node concept="2OwXpG" id="4ot3PHRO8UO" role="2OqNvi">
                  <ref role="2Oxat5" node="7iCybvTsduC" resolve="allOptions" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="7e$2hwatzEC" role="3cqZAp">
            <node concept="3clFbS" id="7e$2hwatzED" role="2LFqv$">
              <node concept="3clFbF" id="7e$2hwatzEG" role="3cqZAp">
                <node concept="37vLTI" id="7e$2hwatzEH" role="3clFbG">
                  <node concept="3EllGN" id="7e$2hwatzEI" role="37vLTJ">
                    <node concept="37vLTw" id="7e$2hwatzEJ" role="3ElVtu">
                      <ref role="3cqZAo" node="7e$2hwatzEV" resolve="lvl" />
                    </node>
                    <node concept="37vLTw" id="7e$2hwatBLq" role="3ElQJh">
                      <ref role="3cqZAo" node="7iCybvTsduC" resolve="allOptions" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="7e$2hwatCqQ" role="37vLTx">
                    <node concept="1pGfFk" id="7e$2hwatECW" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" node="4ot3PHRLyTV" resolve="Config.Options" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="7e$2hwatzEV" role="1Duv9x">
              <property role="TrG5h" value="lvl" />
              <node concept="3uibUv" id="7e$2hwatzEW" role="1tU5fm">
                <ref role="3uigEE" node="7iCybvToD3Z" resolve="Config.Level" />
              </node>
            </node>
            <node concept="uiWXb" id="7e$2hwatzEX" role="1DdaDG">
              <ref role="uiZuM" node="7iCybvToD3Z" resolve="Config.Level" />
            </node>
          </node>
        </node>
        <node concept="3Tmbuc" id="4ot3PHRNQzP" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="4ot3PHRNVaf" role="jymVt" />
      <node concept="3clFbW" id="4ot3PHRNXfD" role="jymVt">
        <node concept="37vLTG" id="4ot3PHRNYyo" role="3clF46">
          <property role="TrG5h" value="copyFrom" />
          <node concept="3uibUv" id="4ot3PHRNYS$" role="1tU5fm">
            <ref role="3uigEE" node="7iCybvTsdu6" resolve="Config.EffectiveOptions" />
          </node>
        </node>
        <node concept="3cqZAl" id="4ot3PHRNXfF" role="3clF45" />
        <node concept="3Tm6S6" id="4ot3PHRNXfG" role="1B3o_S" />
        <node concept="3clFbS" id="4ot3PHRNXfH" role="3clF47">
          <node concept="3clFbF" id="4ot3PHRNZqS" role="3cqZAp">
            <node concept="37vLTI" id="4ot3PHRO0vr" role="3clFbG">
              <node concept="2ShNRf" id="4ot3PHRO0Hb" role="37vLTx">
                <node concept="1pGfFk" id="4ot3PHRO3jm" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;(java.util.Map)" resolve="HashMap" />
                  <node concept="3uibUv" id="4ot3PHRO7g0" role="1pMfVU">
                    <ref role="3uigEE" node="7iCybvToD3Z" resolve="Config.Level" />
                  </node>
                  <node concept="3uibUv" id="4ot3PHRO6yA" role="1pMfVU">
                    <ref role="3uigEE" node="7iCybvTsAb9" resolve="Config.Options" />
                  </node>
                  <node concept="2OqwBi" id="4ot3PHRO3Z3" role="37wK5m">
                    <node concept="37vLTw" id="4ot3PHRO3AS" role="2Oq$k0">
                      <ref role="3cqZAo" node="4ot3PHRNYyo" resolve="copyFrom" />
                    </node>
                    <node concept="2OwXpG" id="4ot3PHRO4jW" role="2OqNvi">
                      <ref role="2Oxat5" node="7iCybvTsduC" resolve="allOptions" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4ot3PHRNZy0" role="37vLTJ">
                <node concept="Xjq3P" id="4ot3PHRNZqR" role="2Oq$k0" />
                <node concept="2OwXpG" id="4ot3PHRNZTH" role="2OqNvi">
                  <ref role="2Oxat5" node="7iCybvTsduC" resolve="allOptions" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7iCybvTtpQ0" role="jymVt" />
      <node concept="3clFb_" id="4ot3PHRDTsQ" role="jymVt">
        <property role="TrG5h" value="getOption" />
        <node concept="3uibUv" id="4ot3PHRDVm7" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="3Tmbuc" id="4ot3PHRDXKG" role="1B3o_S" />
        <node concept="3clFbS" id="4ot3PHRDTsU" role="3clF47">
          <node concept="3cpWs8" id="4ot3PHRI7cW" role="3cqZAp">
            <node concept="3cpWsn" id="4ot3PHRI7cX" role="3cpWs9">
              <property role="TrG5h" value="allPrefixes" />
              <node concept="_YKpA" id="4ot3PHRI6pj" role="1tU5fm">
                <node concept="17QB3L" id="4ot3PHRI6pm" role="_ZDj9" />
              </node>
              <node concept="1rXfSq" id="4ot3PHRI7cY" role="33vP2m">
                <ref role="37wK5l" node="4ot3PHREQw0" resolve="allPrefixes" />
                <node concept="37vLTw" id="4ot3PHRI7cZ" role="37wK5m">
                  <ref role="3cqZAo" node="4ot3PHRE2B1" resolve="key" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Dw8fO" id="4ot3PHRHoF5" role="3cqZAp">
            <node concept="3clFbS" id="4ot3PHRHoF7" role="2LFqv$">
              <node concept="3cpWs8" id="4ot3PHRHJJP" role="3cqZAp">
                <node concept="3cpWsn" id="4ot3PHRHJJQ" role="3cpWs9">
                  <property role="TrG5h" value="level" />
                  <node concept="3uibUv" id="4ot3PHRHIZw" role="1tU5fm">
                    <ref role="3uigEE" node="7iCybvToD3Z" resolve="Config.Level" />
                  </node>
                  <node concept="AH0OO" id="4ot3PHRHJJR" role="33vP2m">
                    <node concept="37vLTw" id="4ot3PHRHJJS" role="AHEQo">
                      <ref role="3cqZAo" node="4ot3PHRHoF8" resolve="i" />
                    </node>
                    <node concept="uiWXb" id="4ot3PHRHJJT" role="AHHXb">
                      <ref role="uiZuM" node="7iCybvToD3Z" resolve="Config.Level" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="4ot3PHRIbrz" role="3cqZAp">
                <node concept="3cpWsn" id="4ot3PHRIbr$" role="3cpWs9">
                  <property role="TrG5h" value="option" />
                  <node concept="3uibUv" id="4ot3PHRIars" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                  <node concept="2EnYce" id="4ot3PHRQHj4" role="33vP2m">
                    <node concept="3EllGN" id="4ot3PHRIbrA" role="2Oq$k0">
                      <node concept="37vLTw" id="4ot3PHRIbrB" role="3ElVtu">
                        <ref role="3cqZAo" node="4ot3PHRHJJQ" resolve="level" />
                      </node>
                      <node concept="37vLTw" id="4ot3PHRIbrC" role="3ElQJh">
                        <ref role="3cqZAo" node="7iCybvTsduC" resolve="allOptions" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4ot3PHRIbrD" role="2OqNvi">
                      <ref role="37wK5l" node="7iCybvTqDck" resolve="primGetOption" />
                      <node concept="37vLTw" id="4ot3PHRIbrE" role="37wK5m">
                        <ref role="3cqZAo" node="4ot3PHRE2B1" resolve="key" />
                      </node>
                      <node concept="37vLTw" id="4ot3PHRIbrF" role="37wK5m">
                        <ref role="3cqZAo" node="4ot3PHRI7cX" resolve="allPrefixes" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4ot3PHRIggj" role="3cqZAp">
                <node concept="3clFbS" id="4ot3PHRIgg_" role="3clFbx">
                  <node concept="3cpWs6" id="4ot3PHRIhYU" role="3cqZAp">
                    <node concept="37vLTw" id="4ot3PHRIkwQ" role="3cqZAk">
                      <ref role="3cqZAo" node="4ot3PHRIbr$" resolve="option" />
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="4ot3PHRIdU6" role="3clFbw">
                  <node concept="10Nm6u" id="4ot3PHRIeYL" role="3uHU7w" />
                  <node concept="37vLTw" id="4ot3PHRIbrG" role="3uHU7B">
                    <ref role="3cqZAo" node="4ot3PHRIbr$" resolve="option" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="4ot3PHRHoF8" role="1Duv9x">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="4ot3PHRHq0c" role="1tU5fm" />
              <node concept="3cpWsd" id="4ot3PHRHyeg" role="33vP2m">
                <node concept="3cmrfG" id="4ot3PHRHyf5" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="4ot3PHRHtAa" role="3uHU7B">
                  <node concept="uiWXb" id="4ot3PHRHsjz" role="2Oq$k0">
                    <ref role="uiZuM" node="7iCybvToD3Z" resolve="Config.Level" />
                  </node>
                  <node concept="1Rwk04" id="4ot3PHRHvSA" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="2d3UOw" id="4ot3PHRHCl0" role="1Dwp0S">
              <node concept="3cmrfG" id="4ot3PHRHCmF" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="4ot3PHRHAPr" role="3uHU7B">
                <ref role="3cqZAo" node="4ot3PHRHoF8" resolve="i" />
              </node>
            </node>
            <node concept="3uO5VW" id="4ot3PHRHF86" role="1Dwrff">
              <node concept="37vLTw" id="4ot3PHRHF88" role="2$L3a6">
                <ref role="3cqZAo" node="4ot3PHRHoF8" resolve="i" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4ot3PHRInlx" role="3cqZAp">
            <node concept="10Nm6u" id="4ot3PHRInlv" role="3clFbG" />
          </node>
        </node>
        <node concept="37vLTG" id="4ot3PHRE2B1" role="3clF46">
          <property role="TrG5h" value="key" />
          <node concept="17QB3L" id="4ot3PHRE2B0" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="4ot3PHRE0OI" role="jymVt" />
      <node concept="3clFb_" id="2vm2iDVkv38" role="jymVt">
        <property role="TrG5h" value="reset" />
        <property role="DiZV1" value="true" />
        <node concept="3Tmbuc" id="2vm2iDVl4Av" role="1B3o_S" />
        <node concept="3clFbS" id="2vm2iDVkv3c" role="3clF47">
          <node concept="3cpWs8" id="4ot3PHROkFL" role="3cqZAp">
            <node concept="3cpWsn" id="4ot3PHROkFM" role="3cpWs9">
              <property role="TrG5h" value="newEffOptions" />
              <node concept="3uibUv" id="4ot3PHROk1X" role="1tU5fm">
                <ref role="3uigEE" node="7iCybvTsdu6" resolve="Config.EffectiveOptions" />
              </node>
              <node concept="2ShNRf" id="4ot3PHROkFN" role="33vP2m">
                <node concept="1pGfFk" id="4ot3PHROkFO" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" node="4ot3PHRNXfD" resolve="Config.EffectiveOptions" />
                  <node concept="Xjq3P" id="4ot3PHROkFP" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="2vm2iDVkA1p" role="3cqZAp">
            <node concept="3clFbS" id="2vm2iDVkA1r" role="2LFqv$">
              <node concept="3clFbJ" id="2vm2iDVkChY" role="3cqZAp">
                <node concept="3clFbS" id="2vm2iDVkCi0" role="3clFbx">
                  <node concept="3clFbF" id="2vm2iDVkWyX" role="3cqZAp">
                    <node concept="37vLTI" id="2vm2iDVkXyC" role="3clFbG">
                      <node concept="3EllGN" id="2vm2iDVkYBq" role="37vLTJ">
                        <node concept="37vLTw" id="2vm2iDVkZ17" role="3ElVtu">
                          <ref role="3cqZAo" node="2vm2iDVkA1s" resolve="lvl" />
                        </node>
                        <node concept="2OqwBi" id="4ot3PHROstW" role="3ElQJh">
                          <node concept="37vLTw" id="4ot3PHROtJ6" role="2Oq$k0">
                            <ref role="3cqZAo" node="4ot3PHROkFM" resolve="newEffOptions" />
                          </node>
                          <node concept="2OwXpG" id="4ot3PHROstZ" role="2OqNvi">
                            <ref role="2Oxat5" node="7iCybvTsduC" resolve="allOptions" />
                          </node>
                        </node>
                      </node>
                      <node concept="2ShNRf" id="7e$2hwatF55" role="37vLTx">
                        <node concept="1pGfFk" id="7e$2hwatF56" role="2ShVmc">
                          <property role="373rjd" value="true" />
                          <ref role="37wK5l" node="4ot3PHRLyTV" resolve="Config.Options" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2d3UOw" id="2vm2iDVl0JD" role="3clFbw">
                  <node concept="2OqwBi" id="2vm2iDVkZvi" role="3uHU7B">
                    <node concept="37vLTw" id="2vm2iDVkIDG" role="2Oq$k0">
                      <ref role="3cqZAo" node="2vm2iDVkA1s" resolve="lvl" />
                    </node>
                    <node concept="liA8E" id="2vm2iDVl02Z" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Enum.ordinal()" resolve="ordinal" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2vm2iDVl1AN" role="3uHU7w">
                    <node concept="37vLTw" id="2vm2iDVkJDe" role="2Oq$k0">
                      <ref role="3cqZAo" node="2vm2iDVkznM" resolve="startFrom" />
                    </node>
                    <node concept="liA8E" id="2vm2iDVl2di" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Enum.ordinal()" resolve="ordinal" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="2vm2iDVkA1s" role="1Duv9x">
              <property role="TrG5h" value="lvl" />
              <node concept="3uibUv" id="2vm2iDVkA7_" role="1tU5fm">
                <ref role="3uigEE" node="7iCybvToD3Z" resolve="Config.Level" />
              </node>
            </node>
            <node concept="uiWXb" id="2vm2iDVkByK" role="1DdaDG">
              <ref role="uiZuM" node="7iCybvToD3Z" resolve="Config.Level" />
            </node>
          </node>
          <node concept="3clFbF" id="4ot3PHROeWl" role="3cqZAp">
            <node concept="37vLTw" id="4ot3PHROkFQ" role="3clFbG">
              <ref role="3cqZAo" node="4ot3PHROkFM" resolve="newEffOptions" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2vm2iDVkznM" role="3clF46">
          <property role="TrG5h" value="startFrom" />
          <node concept="3uibUv" id="2vm2iDVkznL" role="1tU5fm">
            <ref role="3uigEE" node="7iCybvToD3Z" resolve="Config.Level" />
          </node>
        </node>
        <node concept="3uibUv" id="4ot3PHROd5T" role="3clF45">
          <ref role="3uigEE" node="7iCybvTsdu6" resolve="Config.EffectiveOptions" />
        </node>
      </node>
      <node concept="2tJIrI" id="2vm2iDVkoTm" role="jymVt" />
      <node concept="3clFb_" id="7iCybvTtBza" role="jymVt">
        <property role="TrG5h" value="registerProvider" />
        <node concept="37vLTG" id="7iCybvTtCQ4" role="3clF46">
          <property role="TrG5h" value="level" />
          <node concept="3uibUv" id="7iCybvTtD_S" role="1tU5fm">
            <ref role="3uigEE" node="7iCybvToD3Z" resolve="Config.Level" />
          </node>
        </node>
        <node concept="37vLTG" id="7iCybvTtHI9" role="3clF46">
          <property role="TrG5h" value="prefix" />
          <node concept="17QB3L" id="7iCybvTvU63" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7iCybvTtDO6" role="3clF46">
          <property role="TrG5h" value="provider" />
          <node concept="3uibUv" id="7iCybvTtElK" role="1tU5fm">
            <ref role="3uigEE" node="7iCybvToMqc" resolve="Config.OptionsProvider" />
          </node>
        </node>
        <node concept="3Tmbuc" id="2vm2iDVl5XU" role="1B3o_S" />
        <node concept="3clFbS" id="7iCybvTtBze" role="3clF47">
          <node concept="3cpWs8" id="4ot3PHRODbw" role="3cqZAp">
            <node concept="3cpWsn" id="4ot3PHRODbx" role="3cpWs9">
              <property role="TrG5h" value="newEffOptions" />
              <node concept="3uibUv" id="4ot3PHROCyh" role="1tU5fm">
                <ref role="3uigEE" node="7iCybvTsdu6" resolve="Config.EffectiveOptions" />
              </node>
              <node concept="2ShNRf" id="4ot3PHRODby" role="33vP2m">
                <node concept="1pGfFk" id="4ot3PHRODbz" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" node="4ot3PHRNXfD" resolve="Config.EffectiveOptions" />
                  <node concept="Xjq3P" id="4ot3PHRODb$" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7iCybvTtEEX" role="3cqZAp">
            <node concept="37vLTI" id="4ot3PHRMzHf" role="3clFbG">
              <node concept="3EllGN" id="4ot3PHRMBc1" role="37vLTJ">
                <node concept="37vLTw" id="4ot3PHRMCJ5" role="3ElVtu">
                  <ref role="3cqZAo" node="7iCybvTtCQ4" resolve="level" />
                </node>
                <node concept="2OqwBi" id="4ot3PHROIce" role="3ElQJh">
                  <node concept="37vLTw" id="4ot3PHROJuG" role="2Oq$k0">
                    <ref role="3cqZAo" node="4ot3PHRODbx" resolve="newEffOptions" />
                  </node>
                  <node concept="2OwXpG" id="4ot3PHROIch" role="2OqNvi">
                    <ref role="2Oxat5" node="7iCybvTsduC" resolve="allOptions" />
                  </node>
                </node>
              </node>
              <node concept="2EnYce" id="4ot3PHRMyww" role="37vLTx">
                <node concept="3EllGN" id="7iCybvTw8EA" role="2Oq$k0">
                  <node concept="37vLTw" id="7iCybvTw91m" role="3ElVtu">
                    <ref role="3cqZAo" node="7iCybvTtCQ4" resolve="level" />
                  </node>
                  <node concept="2OqwBi" id="4ot3PHRP6rV" role="3ElQJh">
                    <node concept="37vLTw" id="4ot3PHRP7IR" role="2Oq$k0">
                      <ref role="3cqZAo" node="4ot3PHRODbx" resolve="newEffOptions" />
                    </node>
                    <node concept="2OwXpG" id="4ot3PHRP6rY" role="2OqNvi">
                      <ref role="2Oxat5" node="7iCybvTsduC" resolve="allOptions" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7iCybvTtHaD" role="2OqNvi">
                  <ref role="37wK5l" node="7iCybvTp08X" resolve="putProvider" />
                  <node concept="37vLTw" id="7iCybvTtJ9p" role="37wK5m">
                    <ref role="3cqZAo" node="7iCybvTtHI9" resolve="prefix" />
                  </node>
                  <node concept="37vLTw" id="7iCybvTtHwW" role="37wK5m">
                    <ref role="3cqZAo" node="7iCybvTtDO6" resolve="provider" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4ot3PHROzUF" role="3cqZAp">
            <node concept="37vLTw" id="4ot3PHRODb_" role="3clFbG">
              <ref role="3cqZAo" node="4ot3PHRODbx" resolve="newEffOptions" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="4ot3PHROwrA" role="3clF45">
          <ref role="3uigEE" node="7iCybvTsdu6" resolve="Config.EffectiveOptions" />
        </node>
      </node>
      <node concept="2tJIrI" id="7prluhlHM$r" role="jymVt" />
      <node concept="3clFb_" id="7prluhlHKlE" role="jymVt">
        <property role="TrG5h" value="clearProvider" />
        <node concept="37vLTG" id="7prluhlHKlF" role="3clF46">
          <property role="TrG5h" value="level" />
          <node concept="3uibUv" id="7prluhlHKlG" role="1tU5fm">
            <ref role="3uigEE" node="7iCybvToD3Z" resolve="Config.Level" />
          </node>
        </node>
        <node concept="37vLTG" id="7prluhlHKlH" role="3clF46">
          <property role="TrG5h" value="prefix" />
          <node concept="17QB3L" id="7prluhlHKlI" role="1tU5fm" />
        </node>
        <node concept="3Tmbuc" id="7prluhlHKlM" role="1B3o_S" />
        <node concept="3clFbS" id="7prluhlHKlN" role="3clF47">
          <node concept="3cpWs8" id="4ot3PHROYlT" role="3cqZAp">
            <node concept="3cpWsn" id="4ot3PHROYlU" role="3cpWs9">
              <property role="TrG5h" value="newEffOptions" />
              <node concept="3uibUv" id="4ot3PHROXKk" role="1tU5fm">
                <ref role="3uigEE" node="7iCybvTsdu6" resolve="Config.EffectiveOptions" />
              </node>
              <node concept="2ShNRf" id="4ot3PHROYlV" role="33vP2m">
                <node concept="1pGfFk" id="4ot3PHROYlW" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" node="4ot3PHRNXfD" resolve="Config.EffectiveOptions" />
                  <node concept="Xjq3P" id="4ot3PHROYlX" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7prluhlHKlO" role="3cqZAp">
            <node concept="37vLTI" id="4ot3PHRMDQz" role="3clFbG">
              <node concept="3EllGN" id="4ot3PHRMHow" role="37vLTJ">
                <node concept="37vLTw" id="4ot3PHRMHs$" role="3ElVtu">
                  <ref role="3cqZAo" node="7prluhlHKlF" resolve="level" />
                </node>
                <node concept="2OqwBi" id="4ot3PHRP3gQ" role="3ElQJh">
                  <node concept="37vLTw" id="4ot3PHRP5bt" role="2Oq$k0">
                    <ref role="3cqZAo" node="4ot3PHROYlU" resolve="newEffOptions" />
                  </node>
                  <node concept="2OwXpG" id="4ot3PHRP3gT" role="2OqNvi">
                    <ref role="2Oxat5" node="7iCybvTsduC" resolve="allOptions" />
                  </node>
                </node>
              </node>
              <node concept="2EnYce" id="7IY4rnUDnHS" role="37vLTx">
                <node concept="3EllGN" id="7prluhlHKlQ" role="2Oq$k0">
                  <node concept="37vLTw" id="7prluhlHKlR" role="3ElVtu">
                    <ref role="3cqZAo" node="7prluhlHKlF" resolve="level" />
                  </node>
                  <node concept="2OqwBi" id="4ot3PHRP8ZI" role="3ElQJh">
                    <node concept="37vLTw" id="4ot3PHRPaUi" role="2Oq$k0">
                      <ref role="3cqZAo" node="4ot3PHROYlU" resolve="newEffOptions" />
                    </node>
                    <node concept="2OwXpG" id="4ot3PHRP8ZL" role="2OqNvi">
                      <ref role="2Oxat5" node="7iCybvTsduC" resolve="allOptions" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7prluhlHKlT" role="2OqNvi">
                  <ref role="37wK5l" node="7prluhlHRVh" resolve="clearProvider" />
                  <node concept="37vLTw" id="7prluhlHKlU" role="37wK5m">
                    <ref role="3cqZAo" node="7prluhlHKlH" resolve="prefix" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4ot3PHROSAd" role="3cqZAp">
            <node concept="37vLTw" id="4ot3PHROYlY" role="3clFbG">
              <ref role="3cqZAo" node="4ot3PHROYlU" resolve="newEffOptions" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="4ot3PHROPip" role="3clF45">
          <ref role="3uigEE" node="7iCybvTsdu6" resolve="Config.EffectiveOptions" />
        </node>
      </node>
      <node concept="2tJIrI" id="2tFDlV2c$0f" role="jymVt" />
      <node concept="3clFb_" id="2tFDlV2c_F8" role="jymVt">
        <property role="TrG5h" value="clearAll" />
        <node concept="3cqZAl" id="2tFDlV2c_Fa" role="3clF45" />
        <node concept="3Tmbuc" id="2tFDlV2cB9U" role="1B3o_S" />
        <node concept="3clFbS" id="2tFDlV2c_Fc" role="3clF47">
          <node concept="3clFbF" id="2tFDlV2cF7j" role="3cqZAp">
            <node concept="2OqwBi" id="2tFDlV2cFVP" role="3clFbG">
              <node concept="37vLTw" id="2tFDlV2cF7i" role="2Oq$k0">
                <ref role="3cqZAo" node="7iCybvTsduC" resolve="allOptions" />
              </node>
              <node concept="1yHZxX" id="2tFDlV2cGol" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7iCybvTsduB" role="jymVt" />
      <node concept="3clFb_" id="4ot3PHREQw0" role="jymVt">
        <property role="TrG5h" value="allPrefixes" />
        <node concept="3clFbS" id="7iCybvTp541" role="3clF47">
          <node concept="3cpWs8" id="7iCybvTpcX5" role="3cqZAp">
            <node concept="3cpWsn" id="7iCybvTpcX6" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="_YKpA" id="7iCybvTvt5Q" role="1tU5fm">
                <node concept="17QB3L" id="7iCybvTvt5S" role="_ZDj9" />
              </node>
              <node concept="2ShNRf" id="7iCybvTpcX7" role="33vP2m">
                <node concept="Tc6Ow" id="7iCybvTvvl2" role="2ShVmc">
                  <node concept="17QB3L" id="7iCybvTvwH8" role="HW$YZ" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2$JKZl" id="7iCybvTppfD" role="3cqZAp">
            <node concept="3clFbS" id="7iCybvTppfF" role="2LFqv$">
              <node concept="3cpWs8" id="7iCybvTpp_4" role="3cqZAp">
                <node concept="3cpWsn" id="7iCybvTpp_7" role="3cpWs9">
                  <property role="TrG5h" value="lastDot" />
                  <node concept="10Oyi0" id="7iCybvTpp_8" role="1tU5fm" />
                  <node concept="2OqwBi" id="7iCybvTpp_9" role="33vP2m">
                    <node concept="37vLTw" id="7iCybvTpp_a" role="2Oq$k0">
                      <ref role="3cqZAo" node="7iCybvTp6Ep" resolve="key" />
                    </node>
                    <node concept="liA8E" id="7iCybvTpp_b" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.lastIndexOf(java.lang.String)" resolve="lastIndexOf" />
                      <node concept="Xl_RD" id="7iCybvTpp_c" role="37wK5m">
                        <property role="Xl_RC" value="." />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="7iCybvTppJq" role="3cqZAp">
                <node concept="3clFbS" id="7iCybvTppJs" role="3clFbx">
                  <node concept="3zACq4" id="7iCybvTpr1O" role="3cqZAp" />
                </node>
                <node concept="3eOVzh" id="7iCybvTpqQg" role="3clFbw">
                  <node concept="3cmrfG" id="7iCybvTpqUY" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="7iCybvTppRx" role="3uHU7B">
                    <ref role="3cqZAo" node="7iCybvTpp_7" resolve="lastDot" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7iCybvTpr3E" role="3cqZAp">
                <node concept="2OqwBi" id="7iCybvTvyoV" role="3clFbG">
                  <node concept="37vLTw" id="7iCybvTpr3G" role="2Oq$k0">
                    <ref role="3cqZAo" node="7iCybvTpcX6" resolve="result" />
                  </node>
                  <node concept="TSZUe" id="7iCybvTvzOI" role="2OqNvi">
                    <node concept="2OqwBi" id="7iCybvTpr3I" role="25WWJ7">
                      <node concept="37vLTw" id="7iCybvTpr3J" role="2Oq$k0">
                        <ref role="3cqZAo" node="7iCybvTp6Ep" resolve="key" />
                      </node>
                      <node concept="liA8E" id="7iCybvTpr3K" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                        <node concept="3cmrfG" id="7iCybvTpr3L" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3cpWs3" id="7iCybvTpr3M" role="37wK5m">
                          <node concept="3cmrfG" id="7iCybvTpr3N" role="3uHU7w">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="37vLTw" id="7iCybvTpr3O" role="3uHU7B">
                            <ref role="3cqZAo" node="7iCybvTpp_7" resolve="lastDot" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7iCybvTpr3P" role="3cqZAp">
                <node concept="37vLTI" id="7iCybvTpr3Q" role="3clFbG">
                  <node concept="2OqwBi" id="7iCybvTpr3R" role="37vLTx">
                    <node concept="37vLTw" id="7iCybvTpr3S" role="2Oq$k0">
                      <ref role="3cqZAo" node="7iCybvTp6Ep" resolve="key" />
                    </node>
                    <node concept="liA8E" id="7iCybvTpr3T" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                      <node concept="3cmrfG" id="7iCybvTpr3U" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="37vLTw" id="7iCybvTpr3V" role="37wK5m">
                        <ref role="3cqZAo" node="7iCybvTpp_7" resolve="lastDot" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="7iCybvTpr3W" role="37vLTJ">
                    <ref role="3cqZAo" node="7iCybvTp6Ep" resolve="key" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eOSWO" id="7iCybvTpt2p" role="2$JKZa">
              <node concept="3cmrfG" id="7iCybvTpt6h" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="7iCybvTprQ5" role="3uHU7B">
                <node concept="37vLTw" id="7iCybvTpprH" role="2Oq$k0">
                  <ref role="3cqZAo" node="7iCybvTp6Ep" resolve="key" />
                </node>
                <node concept="liA8E" id="7iCybvTpsb2" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="7iCybvTptFD" role="3cqZAp">
            <node concept="37vLTw" id="7iCybvTptKn" role="3cqZAk">
              <ref role="3cqZAo" node="7iCybvTpcX6" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7iCybvTp6Ep" role="3clF46">
          <property role="TrG5h" value="key" />
          <node concept="17QB3L" id="7iCybvTp6Wk" role="1tU5fm" />
        </node>
        <node concept="_YKpA" id="7iCybvTv_Of" role="3clF45">
          <node concept="17QB3L" id="7iCybvTv_Oh" role="_ZDj9" />
        </node>
        <node concept="3Tm6S6" id="4ot3PHREP5r" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="7iCybvTsBAL" role="jymVt" />
      <node concept="312cEg" id="7iCybvTsduC" role="jymVt">
        <property role="TrG5h" value="allOptions" />
        <node concept="3Tm6S6" id="7iCybvTsduD" role="1B3o_S" />
        <node concept="3rvAFt" id="7iCybvTvZDs" role="1tU5fm">
          <node concept="3uibUv" id="7iCybvTw1Xh" role="3rvQeY">
            <ref role="3uigEE" node="7iCybvToD3Z" resolve="Config.Level" />
          </node>
          <node concept="3uibUv" id="7iCybvTw2Y3" role="3rvSg0">
            <ref role="3uigEE" node="7iCybvTsAb9" resolve="Config.Options" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4ot3PHRNOTY" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7iCybvTsdu5" role="jymVt" />
    <node concept="3Tm1VV" id="7iCybvToiT6" role="1B3o_S" />
    <node concept="3UR2Jj" id="7iCybvTozRr" role="lGtFl">
      <node concept="TZ5HA" id="7iCybvTozRs" role="TZ5H$">
        <node concept="1dT_AC" id="7iCybvTozRt" role="1dT_Ay">
          <property role="1dT_AB" value="Represents options as key-value pairs. Supports traditional levels of overrides: default/system/user/ui." />
        </node>
      </node>
      <node concept="TZ5HA" id="7iCybvToZpu" role="TZ5H$">
        <node concept="1dT_AC" id="7iCybvToZpv" role="1dT_Ay">
          <property role="1dT_AB" value="Every level allows any number of providers, each responsible for a specific key prefix." />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7iCybvTsVZN" role="jymVt">
      <property role="TrG5h" value="effectiveOptions" />
      <node concept="3Tm6S6" id="7iCybvTsVZO" role="1B3o_S" />
      <node concept="3uibUv" id="7iCybvTv178" role="1tU5fm">
        <ref role="3uigEE" node="7iCybvTsdu6" resolve="Config.EffectiveOptions" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2CPBoDC$4yq">
    <property role="TrG5h" value="TypecheckingSettings" />
    <node concept="2tJIrI" id="2CPBoDC$4FI" role="jymVt" />
    <node concept="312cEu" id="2CPBoDC$4Gs" role="jymVt">
      <property role="TrG5h" value="State" />
      <node concept="312cEg" id="2CPBoDC$IqD" role="jymVt">
        <property role="TrG5h" value="myIsEnabled" />
        <node concept="3Tm1VV" id="2CPBoDC$IAl" role="1B3o_S" />
        <node concept="10P_77" id="2CPBoDC$IAz" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="2CPBoDC_lPi" role="jymVt">
        <property role="TrG5h" value="myIsWatching" />
        <node concept="3Tm1VV" id="2CPBoDC_lPj" role="1B3o_S" />
        <node concept="10P_77" id="2CPBoDC_lPk" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="2CPBoDC_pBn" role="jymVt">
        <property role="TrG5h" value="myIsReporting" />
        <node concept="3Tm1VV" id="2CPBoDC_pBo" role="1B3o_S" />
        <node concept="10P_77" id="2CPBoDC_pBp" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="2CPBoDC_vLj" role="jymVt">
        <property role="TrG5h" value="myIsTracing" />
        <node concept="3Tm1VV" id="2CPBoDC_vLk" role="1B3o_S" />
        <node concept="10P_77" id="2CPBoDC_vLl" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="23Habm5BSj1" role="jymVt">
        <property role="TrG5h" value="myIsProfiling" />
        <node concept="3Tm1VV" id="23Habm5BSj2" role="1B3o_S" />
        <node concept="10P_77" id="23Habm5BSj3" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="2CPBoDC$4I6" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2CPBoDC$4$y" role="jymVt" />
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
            <property role="1dT_AB" value="Only available in case the plugin is not loaded, that is when the code is loaded from source module" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="adIlSuN3_s" role="jymVt" />
    <node concept="312cEg" id="2CPBoDC$efo" role="jymVt">
      <property role="TrG5h" value="myState" />
      <node concept="3Tm6S6" id="2CPBoDC$efp" role="1B3o_S" />
      <node concept="3uibUv" id="2CPBoDC$eit" role="1tU5fm">
        <ref role="3uigEE" node="2CPBoDC$4Gs" resolve="TypecheckingSettings.State" />
      </node>
      <node concept="2ShNRf" id="2CPBoDC$JSv" role="33vP2m">
        <node concept="HV5vD" id="2CPBoDC$LSz" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="HV5vE" node="2CPBoDC$4Gs" resolve="TypecheckingSettings.State" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2CPBoDC$eqY" role="jymVt" />
    <node concept="3clFbW" id="51kI2ZZRFfV" role="jymVt">
      <node concept="3cqZAl" id="51kI2ZZRFfX" role="3clF45" />
      <node concept="3Tm1VV" id="51kI2ZZRFfY" role="1B3o_S" />
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
        <node concept="3cpWs8" id="adIlSuMvie" role="3cqZAp">
          <node concept="3cpWsn" id="adIlSuMvif" role="3cpWs9">
            <property role="TrG5h" value="service" />
            <node concept="3uibUv" id="adIlSuKbBX" role="1tU5fm">
              <ref role="3uigEE" node="2CPBoDC$4yq" resolve="TypecheckingSettings" />
            </node>
            <node concept="2OqwBi" id="adIlSuMvig" role="33vP2m">
              <node concept="2YIFZM" id="adIlSuMvih" role="2Oq$k0">
                <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
              </node>
              <node concept="liA8E" id="adIlSuMvii" role="2OqNvi">
                <ref role="37wK5l" to="1m72:~ComponentManager.getService(java.lang.Class)" resolve="getService" />
                <node concept="3VsKOn" id="adIlSuMvij" role="37wK5m">
                  <ref role="3VsUkX" node="2CPBoDC$4yq" resolve="TypecheckingSettings" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="adIlSuMzEA" role="3cqZAp">
          <node concept="3clFbS" id="adIlSuMzEC" role="3clFbx">
            <node concept="3SKdUt" id="adIlSuM_$s" role="3cqZAp">
              <node concept="1PaTwC" id="adIlSuM_$t" role="1aUNEU">
                <node concept="3oM_SD" id="adIlSuM_Cr" role="1PaTwD">
                  <property role="3oM_SC" value="workaround" />
                </node>
                <node concept="3oM_SD" id="adIlSuM_Ct" role="1PaTwD">
                  <property role="3oM_SC" value="for" />
                </node>
                <node concept="3oM_SD" id="adIlSuM_Cw" role="1PaTwD">
                  <property role="3oM_SC" value="running" />
                </node>
                <node concept="3oM_SD" id="adIlSuM_CJ" role="1PaTwD">
                  <property role="3oM_SC" value="from" />
                </node>
                <node concept="3oM_SD" id="adIlSuM_CO" role="1PaTwD">
                  <property role="3oM_SC" value="sources" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="adIlSuNskB" role="3cqZAp">
              <node concept="37vLTw" id="adIlSuN7oh" role="3cqZAk">
                <ref role="3cqZAo" node="adIlSuMV4x" resolve="SINGLETON_INSTANCE" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="adIlSuM$AB" role="3clFbw">
            <node concept="10Nm6u" id="adIlSuM_bU" role="3uHU7w" />
            <node concept="37vLTw" id="adIlSuM$hB" role="3uHU7B">
              <ref role="3cqZAo" node="adIlSuMvif" resolve="service" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2CPBoDC$fW$" role="3cqZAp">
          <node concept="37vLTw" id="adIlSuMvik" role="3clFbG">
            <ref role="3cqZAo" node="adIlSuMvif" resolve="service" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2CPBoDC$fzS" role="jymVt" />
    <node concept="3Tm1VV" id="2CPBoDC$4yr" role="1B3o_S" />
    <node concept="3uibUv" id="2CPBoDC$4DJ" role="EKbjA">
      <ref role="3uigEE" to="1m72:~PersistentStateComponent" resolve="PersistentStateComponent" />
      <node concept="3uibUv" id="2CPBoDC$4Kw" role="11_B2D">
        <ref role="3uigEE" node="2CPBoDC$4Gs" resolve="TypecheckingSettings.State" />
      </node>
    </node>
    <node concept="3clFb_" id="2CPBoDC$4L2" role="jymVt">
      <property role="TrG5h" value="getState" />
      <node concept="3Tm1VV" id="2CPBoDC$4L3" role="1B3o_S" />
      <node concept="2AHcQZ" id="2CPBoDC$4L5" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="2CPBoDC$4L7" role="3clF45">
        <ref role="3uigEE" node="2CPBoDC$4Gs" resolve="TypecheckingSettings.State" />
      </node>
      <node concept="3clFbS" id="2CPBoDC$4L8" role="3clF47">
        <node concept="3clFbF" id="2CPBoDC$euP" role="3cqZAp">
          <node concept="37vLTw" id="2CPBoDC$euO" role="3clFbG">
            <ref role="3cqZAo" node="2CPBoDC$efo" resolve="myState" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2CPBoDC$4L9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2CPBoDC$9u2" role="jymVt" />
    <node concept="3clFb_" id="2CPBoDC$4La" role="jymVt">
      <property role="TrG5h" value="loadState" />
      <node concept="3Tm1VV" id="2CPBoDC$4Lb" role="1B3o_S" />
      <node concept="3cqZAl" id="2CPBoDC$4Ld" role="3clF45" />
      <node concept="37vLTG" id="2CPBoDC$4Le" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="2CPBoDC$4Lh" role="1tU5fm">
          <ref role="3uigEE" node="2CPBoDC$4Gs" resolve="TypecheckingSettings.State" />
        </node>
        <node concept="2AHcQZ" id="2CPBoDC$4Lg" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2CPBoDC$4Li" role="3clF47">
        <node concept="3clFbF" id="2CPBoDC$ez5" role="3cqZAp">
          <node concept="37vLTI" id="2CPBoDC$f3w" role="3clFbG">
            <node concept="37vLTw" id="2CPBoDC$f4P" role="37vLTx">
              <ref role="3cqZAo" node="2CPBoDC$4Le" resolve="state" />
            </node>
            <node concept="2OqwBi" id="2CPBoDC$eH9" role="37vLTJ">
              <node concept="Xjq3P" id="2CPBoDC$ez4" role="2Oq$k0" />
              <node concept="2OwXpG" id="2CPBoDC$eUg" role="2OqNvi">
                <ref role="2Oxat5" node="2CPBoDC$efo" resolve="myState" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2CPBoDC$4Lj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2CPBoDC$GtP" role="jymVt" />
    <node concept="3clFb_" id="2CPBoDC$H71" role="jymVt">
      <property role="TrG5h" value="isTypecheckingEnabled" />
      <node concept="10P_77" id="2CPBoDC$Hkg" role="3clF45" />
      <node concept="3Tm1VV" id="2CPBoDC$H74" role="1B3o_S" />
      <node concept="3clFbS" id="2CPBoDC$H75" role="3clF47">
        <node concept="3clFbF" id="2CPBoDC$I8L" role="3cqZAp">
          <node concept="2OqwBi" id="2CPBoDC$Ik$" role="3clFbG">
            <node concept="37vLTw" id="2CPBoDC$I8K" role="2Oq$k0">
              <ref role="3cqZAo" node="2CPBoDC$efo" resolve="myState" />
            </node>
            <node concept="2OwXpG" id="2CPBoDC$IDT" role="2OqNvi">
              <ref role="2Oxat5" node="2CPBoDC$IqD" resolve="myIsEnabled" />
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
        <node concept="3clFbF" id="2CPBoDC$IL$" role="3cqZAp">
          <node concept="37vLTI" id="2CPBoDC$MKR" role="3clFbG">
            <node concept="37vLTw" id="2CPBoDC$MTk" role="37vLTx">
              <ref role="3cqZAo" node="2CPBoDC$MdZ" resolve="yes" />
            </node>
            <node concept="2OqwBi" id="2CPBoDC$IL_" role="37vLTJ">
              <node concept="37vLTw" id="2CPBoDC$ILA" role="2Oq$k0">
                <ref role="3cqZAo" node="2CPBoDC$efo" resolve="myState" />
              </node>
              <node concept="2OwXpG" id="2CPBoDC$ILB" role="2OqNvi">
                <ref role="2Oxat5" node="2CPBoDC$IqD" resolve="myIsEnabled" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2CPBoDC_l3N" role="jymVt" />
    <node concept="3clFb_" id="2CPBoDC_kCy" role="jymVt">
      <property role="TrG5h" value="isWatchingEnabled" />
      <node concept="10P_77" id="2CPBoDC_kCz" role="3clF45" />
      <node concept="3Tm1VV" id="2CPBoDC_kC$" role="1B3o_S" />
      <node concept="3clFbS" id="2CPBoDC_kC_" role="3clF47">
        <node concept="3clFbF" id="2CPBoDC_kCA" role="3cqZAp">
          <node concept="2OqwBi" id="2CPBoDC_kCB" role="3clFbG">
            <node concept="37vLTw" id="2CPBoDC_kCC" role="2Oq$k0">
              <ref role="3cqZAo" node="2CPBoDC$efo" resolve="myState" />
            </node>
            <node concept="2OwXpG" id="2CPBoDC_kCD" role="2OqNvi">
              <ref role="2Oxat5" node="2CPBoDC_lPi" resolve="myIsWatching" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2CPBoDC_kCx" role="jymVt" />
    <node concept="3clFb_" id="2CPBoDC_kCl" role="jymVt">
      <property role="TrG5h" value="setWatchingEnabled" />
      <node concept="37vLTG" id="2CPBoDC_kCm" role="3clF46">
        <property role="TrG5h" value="yes" />
        <node concept="10P_77" id="2CPBoDC_kCn" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="2CPBoDC_kCo" role="3clF45" />
      <node concept="3Tm1VV" id="2CPBoDC_kCp" role="1B3o_S" />
      <node concept="3clFbS" id="2CPBoDC_kCq" role="3clF47">
        <node concept="3clFbF" id="2CPBoDC_kCr" role="3cqZAp">
          <node concept="37vLTI" id="2CPBoDC_kCs" role="3clFbG">
            <node concept="37vLTw" id="2CPBoDC_kCt" role="37vLTx">
              <ref role="3cqZAo" node="2CPBoDC_kCm" resolve="yes" />
            </node>
            <node concept="2OqwBi" id="2CPBoDC_kCu" role="37vLTJ">
              <node concept="37vLTw" id="2CPBoDC_kCv" role="2Oq$k0">
                <ref role="3cqZAo" node="2CPBoDC$efo" resolve="myState" />
              </node>
              <node concept="2OwXpG" id="2CPBoDC_kCw" role="2OqNvi">
                <ref role="2Oxat5" node="2CPBoDC_lPi" resolve="myIsWatching" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2CPBoDC_o$4" role="jymVt" />
    <node concept="3clFb_" id="2CPBoDC_o9$" role="jymVt">
      <property role="TrG5h" value="isReportingEnabled" />
      <node concept="10P_77" id="2CPBoDC_o9_" role="3clF45" />
      <node concept="3Tm1VV" id="2CPBoDC_o9A" role="1B3o_S" />
      <node concept="3clFbS" id="2CPBoDC_o9B" role="3clF47">
        <node concept="3clFbF" id="2CPBoDC_o9C" role="3cqZAp">
          <node concept="2OqwBi" id="2CPBoDC_o9D" role="3clFbG">
            <node concept="37vLTw" id="2CPBoDC_o9E" role="2Oq$k0">
              <ref role="3cqZAo" node="2CPBoDC$efo" resolve="myState" />
            </node>
            <node concept="2OwXpG" id="2CPBoDC_o9F" role="2OqNvi">
              <ref role="2Oxat5" node="2CPBoDC_pBn" resolve="myIsReporting" />
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
        <node concept="3clFbF" id="2CPBoDC_o9t" role="3cqZAp">
          <node concept="37vLTI" id="2CPBoDC_o9u" role="3clFbG">
            <node concept="37vLTw" id="2CPBoDC_o9v" role="37vLTx">
              <ref role="3cqZAo" node="2CPBoDC_o9o" resolve="yes" />
            </node>
            <node concept="2OqwBi" id="2CPBoDC_o9w" role="37vLTJ">
              <node concept="37vLTw" id="2CPBoDC_o9x" role="2Oq$k0">
                <ref role="3cqZAo" node="2CPBoDC$efo" resolve="myState" />
              </node>
              <node concept="2OwXpG" id="2CPBoDC_o9y" role="2OqNvi">
                <ref role="2Oxat5" node="2CPBoDC_pBn" resolve="myIsReporting" />
              </node>
            </node>
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
        <node concept="3clFbF" id="2CPBoDC_sJf" role="3cqZAp">
          <node concept="2OqwBi" id="2CPBoDC_sJg" role="3clFbG">
            <node concept="37vLTw" id="2CPBoDC_sJh" role="2Oq$k0">
              <ref role="3cqZAo" node="2CPBoDC$efo" resolve="myState" />
            </node>
            <node concept="2OwXpG" id="2CPBoDC_sJi" role="2OqNvi">
              <ref role="2Oxat5" node="2CPBoDC_vLj" resolve="myIsTracing" />
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
        <node concept="3clFbF" id="2CPBoDC_sJ4" role="3cqZAp">
          <node concept="37vLTI" id="2CPBoDC_sJ5" role="3clFbG">
            <node concept="37vLTw" id="2CPBoDC_sJ6" role="37vLTx">
              <ref role="3cqZAo" node="2CPBoDC_sIZ" resolve="yes" />
            </node>
            <node concept="2OqwBi" id="2CPBoDC_sJ7" role="37vLTJ">
              <node concept="37vLTw" id="2CPBoDC_sJ8" role="2Oq$k0">
                <ref role="3cqZAo" node="2CPBoDC$efo" resolve="myState" />
              </node>
              <node concept="2OwXpG" id="2CPBoDC_sJ9" role="2OqNvi">
                <ref role="2Oxat5" node="2CPBoDC_vLj" resolve="myIsTracing" />
              </node>
            </node>
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
        <node concept="3clFbF" id="23Habm5BTlS" role="3cqZAp">
          <node concept="2OqwBi" id="23Habm5BTlT" role="3clFbG">
            <node concept="37vLTw" id="23Habm5BTlU" role="2Oq$k0">
              <ref role="3cqZAo" node="2CPBoDC$efo" resolve="myState" />
            </node>
            <node concept="2OwXpG" id="23Habm5BTlV" role="2OqNvi">
              <ref role="2Oxat5" node="23Habm5BSj1" resolve="myIsProfiling" />
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
        <node concept="3clFbF" id="23Habm5BTlH" role="3cqZAp">
          <node concept="37vLTI" id="23Habm5BTlI" role="3clFbG">
            <node concept="37vLTw" id="23Habm5BTlJ" role="37vLTx">
              <ref role="3cqZAo" node="23Habm5BTlC" resolve="yes" />
            </node>
            <node concept="2OqwBi" id="23Habm5BTlK" role="37vLTJ">
              <node concept="37vLTw" id="23Habm5BTlL" role="2Oq$k0">
                <ref role="3cqZAo" node="2CPBoDC$efo" resolve="myState" />
              </node>
              <node concept="2OwXpG" id="23Habm5BTlM" role="2OqNvi">
                <ref role="2Oxat5" node="23Habm5BSj1" resolve="myIsProfiling" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2AHcQZ" id="2CPBoDC$9cT" role="2AJF6D">
      <ref role="2AI5Lk" to="1m72:~State" resolve="State" />
      <node concept="2B6LJw" id="2CPBoDC$9jB" role="2B76xF">
        <ref role="2B6OnR" to="1m72:~State.name()" resolve="name" />
        <node concept="Xl_RD" id="2CPBoDC$9k5" role="2B70Vg">
          <property role="Xl_RC" value="TypecheckingSettings" />
        </node>
      </node>
      <node concept="2B6LJw" id="2CPBoDC$9kd" role="2B76xF">
        <ref role="2B6OnR" to="1m72:~State.storages()" resolve="storages" />
        <node concept="2AHcQZ" id="2CPBoDC$9oA" role="2B70Vg">
          <ref role="2AI5Lk" to="1m72:~Storage" resolve="Storage" />
          <node concept="2B6LJw" id="2CPBoDC$9oZ" role="2B76xF">
            <ref role="2B6OnR" to="1m72:~Storage.value()" resolve="value" />
            <node concept="Xl_RD" id="2CPBoDC$9pZ" role="2B70Vg">
              <property role="Xl_RC" value="typecheckingSettings.xml" />
            </node>
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
        <node concept="3cpWs8" id="51kI2ZZTcFn" role="3cqZAp">
          <node concept="3cpWsn" id="51kI2ZZTcFo" role="3cpWs9">
            <property role="TrG5h" value="settings" />
            <node concept="3uibUv" id="51kI2ZZTc9X" role="1tU5fm">
              <ref role="3uigEE" node="2CPBoDC$4yq" resolve="TypecheckingSettings" />
            </node>
            <node concept="2YIFZM" id="51kI2ZZTcFp" role="33vP2m">
              <ref role="37wK5l" node="2CPBoDC$fEe" resolve="getInstace" />
              <ref role="1Pybhc" node="2CPBoDC$4yq" resolve="TypecheckingSettings" />
            </node>
          </node>
        </node>
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
        <node concept="3clFbF" id="adIlSuFRMv" role="3cqZAp">
          <node concept="3vZ8r8" id="adIlSuFRMw" role="3clFbG">
            <node concept="3y3z36" id="adIlSuFRMx" role="37vLTx">
              <node concept="2OqwBi" id="adIlSuFRMB" role="3uHU7B">
                <node concept="37vLTw" id="adIlSuFRMC" role="2Oq$k0">
                  <ref role="3cqZAo" node="adIlSuErp_" resolve="settings" />
                </node>
                <node concept="liA8E" id="adIlSuFRMD" role="2OqNvi">
                  <ref role="37wK5l" node="2CPBoDC_kCy" resolve="isWatchingEnabled" />
                </node>
              </node>
              <node concept="2OqwBi" id="adIlSuIeUP" role="3uHU7w">
                <node concept="Xjq3P" id="adIlSuIeUQ" role="2Oq$k0" />
                <node concept="liA8E" id="adIlSuIeUR" role="2OqNvi">
                  <ref role="37wK5l" node="5Qx6_65jSEe" resolve="isWatchingEnabled" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="adIlSuFRME" role="37vLTJ">
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
        <node concept="3clFbF" id="adIlSuJwa$" role="3cqZAp">
          <node concept="2OqwBi" id="adIlSuJwa_" role="3clFbG">
            <node concept="37vLTw" id="adIlSuJwaA" role="2Oq$k0">
              <ref role="3cqZAo" node="adIlSuGLof" resolve="settings" />
            </node>
            <node concept="liA8E" id="adIlSuJwaB" role="2OqNvi">
              <ref role="37wK5l" node="2CPBoDC_kCl" resolve="setWatchingEnabled" />
              <node concept="2OqwBi" id="adIlSuJwaC" role="37wK5m">
                <node concept="Xjq3P" id="adIlSuJwaD" role="2Oq$k0" />
                <node concept="liA8E" id="adIlSuJwaE" role="2OqNvi">
                  <ref role="37wK5l" node="5Qx6_65jSEe" resolve="isWatchingEnabled" />
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
        <node concept="3clFbF" id="adIlSuKykw" role="3cqZAp">
          <node concept="2OqwBi" id="adIlSuKykx" role="3clFbG">
            <node concept="Xjq3P" id="adIlSuL8zz" role="2Oq$k0" />
            <node concept="liA8E" id="adIlSuKykz" role="2OqNvi">
              <ref role="37wK5l" node="5Qx6_65k3w9" resolve="setWatchingEnabled" />
              <node concept="2OqwBi" id="adIlSuKyk$" role="37wK5m">
                <node concept="37vLTw" id="adIlSuLiGy" role="2Oq$k0">
                  <ref role="3cqZAo" node="adIlSuKyk0" resolve="settings" />
                </node>
                <node concept="liA8E" id="adIlSuKykA" role="2OqNvi">
                  <ref role="37wK5l" node="2CPBoDC_kCy" resolve="isWatchingEnabled" />
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
        <node concept="3clFbF" id="5Qx6_65klcV" role="3cqZAp">
          <node concept="37vLTI" id="5Qx6_65klcW" role="3clFbG">
            <node concept="2OqwBi" id="5Qx6_65klcX" role="37vLTJ">
              <node concept="Xjq3P" id="5Qx6_65klcY" role="2Oq$k0" />
              <node concept="2OwXpG" id="5Qx6_65kpPv" role="2OqNvi">
                <ref role="2Oxat5" node="5Qx6_65jMHg" resolve="enableWatchingCheckbox" />
              </node>
            </node>
            <node concept="2ShNRf" id="5Qx6_65kld0" role="37vLTx">
              <node concept="1pGfFk" id="5Qx6_65kld1" role="2ShVmc">
                <ref role="37wK5l" to="qqrq:~JBCheckBox.&lt;init&gt;(java.lang.String)" resolve="JBCheckBox" />
                <node concept="Xl_RD" id="5Qx6_65kld2" role="37wK5m">
                  <property role="Xl_RC" value="Watch model changes and collect updates" />
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
        <node concept="3clFbF" id="5Qx6_65lIZ0" role="3cqZAp">
          <node concept="2OqwBi" id="5Qx6_65lLWu" role="3clFbG">
            <node concept="37vLTw" id="5Qx6_65lIYY" role="2Oq$k0">
              <ref role="3cqZAo" node="5Qx6_65jMHg" resolve="enableWatchingCheckbox" />
            </node>
            <node concept="liA8E" id="5Qx6_65lOFO" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.addItemListener(java.awt.event.ItemListener)" resolve="addItemListener" />
              <node concept="37vLTw" id="1z4$59hFUnd" role="37wK5m">
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
                <node concept="3clFbH" id="1z4$59hKKHj" role="3cqZAp" />
                <node concept="3clFbF" id="1z4$59hDIuv" role="3cqZAp">
                  <node concept="2OqwBi" id="1z4$59hDIuw" role="3clFbG">
                    <node concept="37vLTw" id="1z4$59hL01j" role="2Oq$k0">
                      <ref role="3cqZAo" node="1z4$59hKKGV" resolve="subpanel" />
                    </node>
                    <node concept="liA8E" id="1z4$59hDIuy" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                      <node concept="2OqwBi" id="1z4$59hDIuz" role="37wK5m">
                        <node concept="Xjq3P" id="1z4$59hDIu$" role="2Oq$k0" />
                        <node concept="2OwXpG" id="1z4$59hDIu_" role="2OqNvi">
                          <ref role="2Oxat5" node="5Qx6_65jMHg" resolve="enableWatchingCheckbox" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1z4$59hKKHr" role="3cqZAp" />
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
    <node concept="3clFb_" id="5Qx6_65jSEe" role="jymVt">
      <property role="TrG5h" value="isWatchingEnabled" />
      <node concept="10P_77" id="5Qx6_65jSEf" role="3clF45" />
      <node concept="3Tm1VV" id="5Qx6_65jSEg" role="1B3o_S" />
      <node concept="3clFbS" id="5Qx6_65jSEh" role="3clF47">
        <node concept="3clFbF" id="5Qx6_65jSEi" role="3cqZAp">
          <node concept="2OqwBi" id="5Qx6_65jSEj" role="3clFbG">
            <node concept="37vLTw" id="5Qx6_65k34s" role="2Oq$k0">
              <ref role="3cqZAo" node="5Qx6_65jMHg" resolve="enableWatchingCheckbox" />
            </node>
            <node concept="liA8E" id="5Qx6_65jSEl" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Qx6_65jSEd" role="jymVt" />
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
    <node concept="3clFb_" id="5Qx6_65k3w9" role="jymVt">
      <property role="TrG5h" value="setWatchingEnabled" />
      <node concept="37vLTG" id="5Qx6_65k3wa" role="3clF46">
        <property role="TrG5h" value="yes" />
        <node concept="10P_77" id="5Qx6_65k3wb" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="5Qx6_65k3wc" role="3clF45" />
      <node concept="3Tm1VV" id="5Qx6_65k3wd" role="1B3o_S" />
      <node concept="3clFbS" id="5Qx6_65k3we" role="3clF47">
        <node concept="3clFbF" id="5Qx6_65k3wf" role="3cqZAp">
          <node concept="2OqwBi" id="5Qx6_65k3wg" role="3clFbG">
            <node concept="2OqwBi" id="5Qx6_65k3wh" role="2Oq$k0">
              <node concept="Xjq3P" id="5Qx6_65k3wi" role="2Oq$k0" />
              <node concept="2OwXpG" id="5Qx6_65kcoN" role="2OqNvi">
                <ref role="2Oxat5" node="5Qx6_65jMHg" resolve="enableWatchingCheckbox" />
              </node>
            </node>
            <node concept="liA8E" id="5Qx6_65k3wk" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setSelected(boolean)" resolve="setSelected" />
              <node concept="37vLTw" id="5Qx6_65k3wl" role="37wK5m">
                <ref role="3cqZAo" node="5Qx6_65k3wa" resolve="yes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Qx6_65kuJs" role="3cqZAp">
          <node concept="1rXfSq" id="5Qx6_65kuJt" role="3clFbG">
            <ref role="37wK5l" node="7iCybvTmrHH" resolve="updateEnabledState" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1JkMMuheNqV" role="jymVt" />
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
        <node concept="3clFbF" id="5Qx6_65kcAq" role="3cqZAp">
          <node concept="2OqwBi" id="5Qx6_65kcAr" role="3clFbG">
            <node concept="2OqwBi" id="5Qx6_65kcAs" role="2Oq$k0">
              <node concept="Xjq3P" id="5Qx6_65kcAt" role="2Oq$k0" />
              <node concept="2OwXpG" id="5Qx6_65kgW3" role="2OqNvi">
                <ref role="2Oxat5" node="5Qx6_65jMHg" resolve="enableWatchingCheckbox" />
              </node>
            </node>
            <node concept="liA8E" id="5Qx6_65kcAv" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.setEnabled(boolean)" resolve="setEnabled" />
              <node concept="2OqwBi" id="5Qx6_65kcAw" role="37wK5m">
                <node concept="2OqwBi" id="5Qx6_65kcAx" role="2Oq$k0">
                  <node concept="Xjq3P" id="5Qx6_65kcAy" role="2Oq$k0" />
                  <node concept="2OwXpG" id="5Qx6_65kcAz" role="2OqNvi">
                    <ref role="2Oxat5" node="14pL6xi8ySB" resolve="enableTypecheckingCheckbox" />
                  </node>
                </node>
                <node concept="liA8E" id="5Qx6_65kcA$" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
                </node>
              </node>
            </node>
          </node>
        </node>
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
    <node concept="312cEg" id="5Qx6_65jMHg" role="jymVt">
      <property role="TrG5h" value="enableWatchingCheckbox" />
      <node concept="3Tm6S6" id="5Qx6_65jMHh" role="1B3o_S" />
      <node concept="3uibUv" id="5Qx6_65jMHi" role="1tU5fm">
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
</model>

