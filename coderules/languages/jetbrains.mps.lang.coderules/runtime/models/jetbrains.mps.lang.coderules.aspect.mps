<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e3417884-ba0a-4330-9cea-64f01ace2e9d(jetbrains.mps.lang.coderules.aspect)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences" version="0" />
  </languages>
  <imports>
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="i5cy" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent.atomic(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="mpcv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.ref(JDK/)" />
    <import index="j9co" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.event(MPS.Core/)" />
    <import index="ugy2" ref="r:57b2449f-b7c7-4941-bd75-9c594835f5cd(jetbrains.mps.lang.coderules.template)" />
    <import index="3qmy" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.classloading(MPS.Core/)" />
    <import index="wwqx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.logging(MPS.Core/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
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
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <property id="2523873803623706117" name="isMultiline" index="hSjvv" />
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
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
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
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
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
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
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
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="2546654756694997551" name="jetbrains.mps.baseLanguage.javadoc.structure.LinkInlineDocTag" flags="ng" index="92FcH">
        <child id="2546654756694997556" name="reference" index="92FcQ" />
        <child id="3106559687488913694" name="line" index="2XjZqd" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="2217234381367049075" name="jetbrains.mps.baseLanguage.javadoc.structure.CodeInlineDocTag" flags="ng" index="VVOAv">
        <child id="3106559687488741665" name="line" index="2Xj1qM" />
      </concept>
      <concept id="2217234381367530212" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocReference" flags="ng" index="VXe08">
        <reference id="2217234381367530213" name="classifier" index="VXe09" />
      </concept>
      <concept id="8970989240999019145" name="jetbrains.mps.baseLanguage.javadoc.structure.InlineTagCommentLinePart" flags="ng" index="1dT_AA">
        <child id="6962838954693749192" name="tag" index="qph3F" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
    </language>
    <language id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences">
      <concept id="7915009415671748557" name="jetbrains.mps.baseLanguage.methodReferences.structure.MethodReferenceTypeTargetExpression" flags="ng" index="2FaPjH">
        <child id="7915009415671751864" name="type" index="2FaQuo" />
      </concept>
      <concept id="237887375562511215" name="jetbrains.mps.baseLanguage.methodReferences.structure.MethodReference" flags="ng" index="37Ijox" />
      <concept id="3507059745126391419" name="jetbrains.mps.baseLanguage.methodReferences.structure.IMethodReference" flags="ngI" index="3UZKCU">
        <reference id="237887375562511297" name="method" index="37Ijqf" />
        <child id="962278442658307079" name="target" index="wWaWy" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="8758390115028452779" name="jetbrains.mps.lang.smodel.structure.Node_GetReferencesOperation" flags="nn" index="2z74zc" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="4124388153790980106" name="jetbrains.mps.lang.smodel.structure.Reference_GetTargetOperation" flags="nn" index="2ZHEkA" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="2526372162255441536" name="jetbrains.mps.baseLanguage.collections.structure.AsUnmodifiableOperation" flags="nn" index="26Dbio" />
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1207233427108" name="jetbrains.mps.baseLanguage.collections.structure.MapRemoveOperation" flags="nn" index="kI3uX">
        <child id="1207233489861" name="key" index="kIiFs" />
      </concept>
      <concept id="6801639034384703212" name="jetbrains.mps.baseLanguage.collections.structure.StackType" flags="in" index="oyxx6" />
      <concept id="5784983078884872741" name="jetbrains.mps.baseLanguage.collections.structure.PeekOperation" flags="nn" index="2oR75g" />
      <concept id="1237467705688" name="jetbrains.mps.baseLanguage.collections.structure.IteratorType" flags="in" index="uOF1S">
        <child id="1237467730343" name="elementType" index="uOL27" />
      </concept>
      <concept id="1237470895604" name="jetbrains.mps.baseLanguage.collections.structure.HasNextOperation" flags="nn" index="v0PNk" />
      <concept id="1237471031357" name="jetbrains.mps.baseLanguage.collections.structure.GetNextOperation" flags="nn" index="v1n4t" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="3358009230508699637" name="jetbrains.mps.baseLanguage.collections.structure.PopOperation" flags="nn" index="2AryhJ" />
      <concept id="3358009230508699932" name="jetbrains.mps.baseLanguage.collections.structure.PushOperation" flags="nn" index="2ArzE6" />
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1226934395923" name="jetbrains.mps.baseLanguage.collections.structure.ClearSetOperation" flags="nn" index="2EZike" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1227022179634" name="jetbrains.mps.baseLanguage.collections.structure.AddLastElementOperation" flags="nn" index="2Ke9KJ" />
      <concept id="1227026082377" name="jetbrains.mps.baseLanguage.collections.structure.RemoveFirstElementOperation" flags="nn" index="2Kt2Hk" />
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1205679737078" name="jetbrains.mps.baseLanguage.collections.structure.SortOperation" flags="nn" index="2S7cBI">
        <child id="1205679832066" name="ascending" index="2S7zOq" />
      </concept>
      <concept id="1237909114519" name="jetbrains.mps.baseLanguage.collections.structure.GetValuesOperation" flags="nn" index="T8wYR" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1201872418428" name="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation" flags="nn" index="3lbrtF" />
      <concept id="1178286324487" name="jetbrains.mps.baseLanguage.collections.structure.SortDirection" flags="nn" index="1nlBCl" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1208542034276" name="jetbrains.mps.baseLanguage.collections.structure.MapClearOperation" flags="nn" index="1yHZxX" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="31378964227347002" name="jetbrains.mps.baseLanguage.collections.structure.SelectNotNullOperation" flags="ng" index="1KnU$U" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
      <concept id="5686963296372475025" name="jetbrains.mps.baseLanguage.collections.structure.QueueType" flags="in" index="3O6Q9H" />
    </language>
  </registry>
  <node concept="3HP615" id="NKt6ynom3d">
    <property role="TrG5h" value="AspectDiscoverable" />
    <node concept="2tJIrI" id="NKt6ynombm" role="jymVt" />
    <node concept="3clFb_" id="IFW4V2y3RP" role="jymVt">
      <property role="TrG5h" value="aspectClass" />
      <node concept="3uibUv" id="IFW4V2y41p" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="16syzq" id="IFW4V2y42X" role="11_B2D">
          <ref role="16sUi3" node="NKt6ynomvO" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="IFW4V2y3RS" role="1B3o_S" />
      <node concept="3clFbS" id="IFW4V2y3RT" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="IFW4V2y3PN" role="jymVt" />
    <node concept="3clFb_" id="NKt6ynombB" role="jymVt">
      <property role="TrG5h" value="discover" />
      <node concept="37vLTG" id="NKt6ynomn_" role="3clF46">
        <property role="TrG5h" value="lang" />
        <node concept="16syzq" id="6nx4rRkRxg$" role="1tU5fm">
          <ref role="16sUi3" node="6nx4rRkNcmn" resolve="L" />
        </node>
      </node>
      <node concept="16syzq" id="NKt6ynpjex" role="3clF45">
        <ref role="16sUi3" node="NKt6ynomvO" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="NKt6ynombE" role="1B3o_S" />
      <node concept="3clFbS" id="NKt6ynombF" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6nx4rRkLZpY" role="jymVt" />
    <node concept="3clFb_" id="6nx4rRkLZr6" role="jymVt">
      <property role="TrG5h" value="isSidekick" />
      <node concept="37vLTG" id="6nx4rRkLZr7" role="3clF46">
        <property role="TrG5h" value="sidekick" />
        <node concept="16syzq" id="6nx4rRkNn67" role="1tU5fm">
          <ref role="16sUi3" node="6nx4rRkNcmn" resolve="L" />
        </node>
      </node>
      <node concept="37vLTG" id="6nx4rRkLZr9" role="3clF46">
        <property role="TrG5h" value="authority" />
        <node concept="16syzq" id="6nx4rRkNn74" role="1tU5fm">
          <ref role="16sUi3" node="6nx4rRkNcmn" resolve="L" />
        </node>
      </node>
      <node concept="10P_77" id="6nx4rRkLZrb" role="3clF45" />
      <node concept="3Tm1VV" id="6nx4rRkLZrc" role="1B3o_S" />
      <node concept="3clFbS" id="6nx4rRkLZrd" role="3clF47" />
      <node concept="P$JXv" id="6nx4rRkLZs6" role="lGtFl">
        <node concept="TZ5HA" id="6nx4rRkLZs7" role="TZ5H$">
          <node concept="1dT_AC" id="6nx4rRkLZs8" role="1dT_Ay">
            <property role="1dT_AB" value="A &quot;sidekick&quot; is a language that contributes some aspect(s) to the &quot;authority&quot; language. " />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nx4rRkLZq8" role="jymVt" />
    <node concept="2tJIrI" id="NKt6ynombr" role="jymVt" />
    <node concept="3Tm1VV" id="NKt6ynom3e" role="1B3o_S" />
    <node concept="16euLQ" id="6nx4rRkNcmn" role="16eVyc">
      <property role="TrG5h" value="L" />
    </node>
    <node concept="16euLQ" id="NKt6ynomvO" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3uibUv" id="NKt6ynorR7" role="3ztrMU">
        <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
      </node>
    </node>
    <node concept="3clFb_" id="6nx4rRkOiUG" role="jymVt">
      <property role="TrG5h" value="getExtending" />
      <node concept="3uibUv" id="6nx4rRkOiWc" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="16syzq" id="6nx4rRkOiWX" role="11_B2D">
          <ref role="16sUi3" node="6nx4rRkNcmn" resolve="L" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6nx4rRkOiUJ" role="1B3o_S" />
      <node concept="3clFbS" id="6nx4rRkOiUK" role="3clF47" />
      <node concept="37vLTG" id="6nx4rRkOj0j" role="3clF46">
        <property role="TrG5h" value="lang" />
        <node concept="16syzq" id="6nx4rRkOj0i" role="1tU5fm">
          <ref role="16sUi3" node="6nx4rRkNcmn" resolve="L" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nx4rRkOj4h" role="jymVt" />
    <node concept="3clFb_" id="6nx4rRkOj1Y" role="jymVt">
      <property role="TrG5h" value="getExtended" />
      <node concept="3uibUv" id="6nx4rRkOj1Z" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="16syzq" id="6nx4rRkOj20" role="11_B2D">
          <ref role="16sUi3" node="6nx4rRkNcmn" resolve="L" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6nx4rRkOj21" role="1B3o_S" />
      <node concept="3clFbS" id="6nx4rRkOj22" role="3clF47" />
      <node concept="37vLTG" id="6nx4rRkOj23" role="3clF46">
        <property role="TrG5h" value="lang" />
        <node concept="16syzq" id="6nx4rRkOj24" role="1tU5fm">
          <ref role="16sUi3" node="6nx4rRkNcmn" resolve="L" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nx4rRkVmUS" role="jymVt" />
    <node concept="3clFb_" id="6nx4rRkVmWH" role="jymVt">
      <property role="TrG5h" value="getNamespace" />
      <node concept="37vLTG" id="6nx4rRkVn7e" role="3clF46">
        <property role="TrG5h" value="lang" />
        <node concept="16syzq" id="6nx4rRkVn8Q" role="1tU5fm">
          <ref role="16sUi3" node="6nx4rRkNcmn" resolve="L" />
        </node>
      </node>
      <node concept="17QB3L" id="6nx4rRkVmZ4" role="3clF45" />
      <node concept="3Tm1VV" id="6nx4rRkVmWK" role="1B3o_S" />
      <node concept="3clFbS" id="6nx4rRkVmWL" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="6nx4rRkOiTS" role="jymVt" />
  </node>
  <node concept="312cEu" id="NKt6ynorWQ">
    <property role="TrG5h" value="AspectLookup" />
    <node concept="2tJIrI" id="NKt6ynosjc" role="jymVt" />
    <node concept="Wx3nA" id="4nDRG5zOb02" role="jymVt">
      <property role="TrG5h" value="LOG" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="4nDRG5zOIYg" role="1B3o_S" />
      <node concept="3uibUv" id="4nDRG5zOi20" role="1tU5fm">
        <ref role="3uigEE" to="wwqx:~Logger" resolve="Logger" />
      </node>
      <node concept="2YIFZM" id="4nDRG5zODVT" role="33vP2m">
        <ref role="37wK5l" to="wwqx:~Logger.getLogger(java.lang.Class)" resolve="getLogger" />
        <ref role="1Pybhc" to="wwqx:~Logger" resolve="Logger" />
        <node concept="3VsKOn" id="4nDRG5zOHnw" role="37wK5m">
          <ref role="3VsUkX" node="NKt6ynorWQ" resolve="AspectLookup" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4nDRG5zO2cu" role="jymVt" />
    <node concept="2YIFZL" id="78H58oefSjC" role="jymVt">
      <property role="TrG5h" value="lookup" />
      <node concept="37vLTG" id="IFW4V2tz0u" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="IFW4V2tAju" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="78H58oefUc4" role="3clF46">
        <property role="TrG5h" value="discoverable" />
        <node concept="3uibUv" id="78H58oefUcY" role="1tU5fm">
          <ref role="3uigEE" node="NKt6ynom3d" resolve="AspectDiscoverable" />
          <node concept="3uibUv" id="6nx4rRkNjkl" role="11_B2D">
            <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
          </node>
          <node concept="16syzq" id="78H58oefUf$" role="11_B2D">
            <ref role="16sUi3" node="78H58oefU3u" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="78H58oefUg_" role="3clF45">
        <ref role="3uigEE" node="NKt6ynorWQ" resolve="AspectLookup" />
        <node concept="16syzq" id="78H58oefUo2" role="11_B2D">
          <ref role="16sUi3" node="78H58oefU3u" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="78H58oefSjF" role="1B3o_S" />
      <node concept="3clFbS" id="78H58oefSjG" role="3clF47">
        <node concept="3clFbF" id="IFW4V2wWY5" role="3cqZAp">
          <node concept="2YIFZM" id="IFW4V2wXaa" role="3clFbG">
            <ref role="37wK5l" node="IFW4V2wWnq" resolve="getLookup" />
            <ref role="1Pybhc" node="IFW4V2uswu" resolve="AspectLookup.AspectLookupCoordinator" />
            <node concept="37vLTw" id="IFW4V2uQ8k" role="37wK5m">
              <ref role="3cqZAo" node="IFW4V2tz0u" resolve="repository" />
            </node>
            <node concept="37vLTw" id="IFW4V2uQID" role="37wK5m">
              <ref role="3cqZAo" node="78H58oefUc4" resolve="discoverable" />
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="78H58oefU3u" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="78H58oefU7h" role="3ztrMU">
          <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="78H58oefOMp" role="jymVt" />
    <node concept="312cEu" id="IFW4V2uswu" role="jymVt">
      <property role="TrG5h" value="AspectLookupCoordinator" />
      <node concept="2tJIrI" id="IFW4V2usAK" role="jymVt" />
      <node concept="Wx3nA" id="IFW4V2wTPx" role="jymVt">
        <property role="TrG5h" value="INSTANCES" />
        <node concept="3rvAFt" id="IFW4V2wSvw" role="1tU5fm">
          <node concept="3uibUv" id="IFW4V2wSyN" role="3rvQeY">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
          <node concept="3uibUv" id="IFW4V2wU9F" role="3rvSg0">
            <ref role="3uigEE" node="IFW4V2uswu" resolve="AspectLookup.AspectLookupCoordinator" />
          </node>
        </node>
        <node concept="3Tm6S6" id="IFW4V2wSca" role="1B3o_S" />
        <node concept="2ShNRf" id="IFW4V2wU_8" role="33vP2m">
          <node concept="1pGfFk" id="IFW4V2wV36" role="2ShVmc">
            <ref role="37wK5l" to="33ny:~IdentityHashMap.&lt;init&gt;()" resolve="IdentityHashMap" />
            <node concept="3uibUv" id="IFW4V2wVl8" role="1pMfVU">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="3uibUv" id="IFW4V2wVGf" role="1pMfVU">
              <ref role="3uigEE" node="IFW4V2uswu" resolve="AspectLookup.AspectLookupCoordinator" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="IFW4V2uzwA" role="jymVt" />
      <node concept="2YIFZL" id="IFW4V2uCEF" role="jymVt">
        <property role="TrG5h" value="clearAll" />
        <node concept="3clFbS" id="IFW4V2uCnP" role="3clF47">
          <node concept="3clFbF" id="IFW4V2uDOs" role="3cqZAp">
            <node concept="2OqwBi" id="IFW4V2wZMp" role="3clFbG">
              <node concept="2OqwBi" id="IFW4V2wYPe" role="2Oq$k0">
                <node concept="37vLTw" id="IFW4V2wYlf" role="2Oq$k0">
                  <ref role="3cqZAo" node="IFW4V2wTPx" resolve="INSTANCES" />
                </node>
                <node concept="T8wYR" id="IFW4V2wZd_" role="2OqNvi" />
              </node>
              <node concept="2es0OD" id="IFW4V2x08e" role="2OqNvi">
                <node concept="37Ijox" id="3GJd70pywC7" role="23t8la">
                  <ref role="37Ijqf" node="IFW4V2uEay" resolve="dispose" />
                  <node concept="2FaPjH" id="3GJd70pywC6" role="wWaWy">
                    <node concept="3uibUv" id="3GJd70pywC5" role="2FaQuo">
                      <ref role="3uigEE" node="IFW4V2uswu" resolve="AspectLookup.AspectLookupCoordinator" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3GJd70pyknY" role="3cqZAp">
            <node concept="2OqwBi" id="3GJd70pylrC" role="3clFbG">
              <node concept="37vLTw" id="3GJd70pyknW" role="2Oq$k0">
                <ref role="3cqZAo" node="IFW4V2wTPx" resolve="INSTANCES" />
              </node>
              <node concept="1yHZxX" id="3GJd70pymSc" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="IFW4V2uCnN" role="3clF45" />
        <node concept="3Tm1VV" id="IFW4V2uCnO" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="IFW4V2uLfX" role="jymVt" />
      <node concept="2YIFZL" id="IFW4V2wWnq" role="jymVt">
        <property role="TrG5h" value="getLookup" />
        <node concept="3clFbS" id="IFW4V2uLVh" role="3clF47">
          <node concept="3clFbJ" id="IFW4V2xew6" role="3cqZAp">
            <node concept="3clFbS" id="IFW4V2xew8" role="3clFbx">
              <node concept="3clFbF" id="IFW4V2xhFI" role="3cqZAp">
                <node concept="37vLTI" id="IFW4V2xjZ4" role="3clFbG">
                  <node concept="2ShNRf" id="IFW4V2xkh5" role="37vLTx">
                    <node concept="1pGfFk" id="IFW4V2xp$h" role="2ShVmc">
                      <ref role="37wK5l" node="IFW4V2xp8z" resolve="AspectLookup.AspectLookupCoordinator" />
                      <node concept="37vLTw" id="IFW4V2xz0n" role="37wK5m">
                        <ref role="3cqZAo" node="IFW4V2uOjB" resolve="repository" />
                      </node>
                    </node>
                  </node>
                  <node concept="3EllGN" id="IFW4V2xid1" role="37vLTJ">
                    <node concept="37vLTw" id="IFW4V2xiCn" role="3ElVtu">
                      <ref role="3cqZAo" node="IFW4V2uOjB" resolve="repository" />
                    </node>
                    <node concept="37vLTw" id="IFW4V2xhFG" role="3ElQJh">
                      <ref role="3cqZAo" node="IFW4V2wTPx" resolve="INSTANCES" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="IFW4V2xhhj" role="3clFbw">
              <node concept="2OqwBi" id="IFW4V2xhhl" role="3fr31v">
                <node concept="37vLTw" id="IFW4V2xhhm" role="2Oq$k0">
                  <ref role="3cqZAo" node="IFW4V2wTPx" resolve="INSTANCES" />
                </node>
                <node concept="2Nt0df" id="IFW4V2xhhn" role="2OqNvi">
                  <node concept="37vLTw" id="IFW4V2xhho" role="38cxEo">
                    <ref role="3cqZAo" node="IFW4V2uOjB" resolve="repository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="IFW4V2xm2u" role="3cqZAp">
            <node concept="2OqwBi" id="IFW4V2xnJx" role="3clFbG">
              <node concept="3EllGN" id="IFW4V2xmHu" role="2Oq$k0">
                <node concept="37vLTw" id="IFW4V2xn9Z" role="3ElVtu">
                  <ref role="3cqZAo" node="IFW4V2uOjB" resolve="repository" />
                </node>
                <node concept="37vLTw" id="IFW4V2xm2s" role="3ElQJh">
                  <ref role="3cqZAo" node="IFW4V2wTPx" resolve="INSTANCES" />
                </node>
              </node>
              <node concept="liA8E" id="IFW4V2xvuQ" role="2OqNvi">
                <ref role="37wK5l" node="IFW4V2xqPS" resolve="getLookup" />
                <node concept="37vLTw" id="IFW4V2xwBF" role="37wK5m">
                  <ref role="3cqZAo" node="IFW4V2uOjD" resolve="discoverable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="IFW4V2uOjB" role="3clF46">
          <property role="TrG5h" value="repository" />
          <node concept="3uibUv" id="IFW4V2uOjC" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
        </node>
        <node concept="37vLTG" id="IFW4V2uOjD" role="3clF46">
          <property role="TrG5h" value="discoverable" />
          <node concept="3uibUv" id="IFW4V2uOjE" role="1tU5fm">
            <ref role="3uigEE" node="NKt6ynom3d" resolve="AspectDiscoverable" />
            <node concept="3uibUv" id="IFW4V2uOjF" role="11_B2D">
              <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
            </node>
            <node concept="16syzq" id="IFW4V2uOjG" role="11_B2D">
              <ref role="16sUi3" node="IFW4V2uNbu" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="IFW4V2uMk2" role="3clF45">
          <ref role="3uigEE" node="NKt6ynorWQ" resolve="AspectLookup" />
          <node concept="16syzq" id="IFW4V2uNIN" role="11_B2D">
            <ref role="16sUi3" node="IFW4V2uNbu" resolve="T" />
          </node>
        </node>
        <node concept="16euLQ" id="IFW4V2uNbu" role="16eVyc">
          <property role="TrG5h" value="T" />
          <node concept="3uibUv" id="IFW4V2uNbv" role="3ztrMU">
            <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
          </node>
        </node>
        <node concept="3Tmbuc" id="IFW4V2xo9M" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="IFW4V2uO1v" role="jymVt" />
      <node concept="3clFbW" id="IFW4V2xp8z" role="jymVt">
        <node concept="3cqZAl" id="IFW4V2xp8_" role="3clF45" />
        <node concept="3Tm6S6" id="IFW4V2xpYm" role="1B3o_S" />
        <node concept="3clFbS" id="IFW4V2xp8B" role="3clF47">
          <node concept="3clFbF" id="IFW4V2xUSu" role="3cqZAp">
            <node concept="37vLTI" id="IFW4V2xW3l" role="3clFbG">
              <node concept="2OqwBi" id="IFW4V2xV4l" role="37vLTJ">
                <node concept="Xjq3P" id="IFW4V2xUSs" role="2Oq$k0" />
                <node concept="2OwXpG" id="IFW4V2xV_u" role="2OqNvi">
                  <ref role="2Oxat5" node="IFW4V2xTxd" resolve="repository" />
                </node>
              </node>
              <node concept="3K4zz7" id="1bwQX1EP1rC" role="37vLTx">
                <node concept="37vLTw" id="1bwQX1EP2x7" role="3K4E3e">
                  <ref role="3cqZAo" node="1bwQX1EOWJ7" resolve="repository" />
                </node>
                <node concept="3y3z36" id="1bwQX1EOZT2" role="3K4Cdx">
                  <node concept="10Nm6u" id="1bwQX1EP13k" role="3uHU7w" />
                  <node concept="37vLTw" id="1bwQX1EOYQS" role="3uHU7B">
                    <ref role="3cqZAo" node="1bwQX1EOWJ7" resolve="repository" />
                  </node>
                </node>
                <node concept="2YIFZM" id="67v_dotJ$k7" role="3K4GZi">
                  <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1AsznI2rZkh" role="3cqZAp">
            <node concept="2OqwBi" id="1AsznI2s3K3" role="3clFbG">
              <node concept="2YIFZM" id="1AsznI2s0jG" role="2Oq$k0">
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
                <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                <node concept="37vLTw" id="1AsznI2s2Gs" role="37wK5m">
                  <ref role="3cqZAo" node="1bwQX1EOWJ7" resolve="repository" />
                </node>
              </node>
              <node concept="liA8E" id="1AsznI2s4TL" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~LanguageRegistry.addRegistryListener(jetbrains.mps.smodel.language.LanguageRegistryListener)" resolve="addRegistryListener" />
                <node concept="Xjq3P" id="1AsznI2s63v" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1bwQX1EOWJ7" role="3clF46">
          <property role="TrG5h" value="repository" />
          <node concept="3uibUv" id="1bwQX1EOWJ6" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1AsznI2EMxC" role="jymVt" />
      <node concept="3clFb_" id="IFW4V2uEay" role="jymVt">
        <property role="TrG5h" value="dispose" />
        <node concept="3cqZAl" id="IFW4V2uEa$" role="3clF45" />
        <node concept="3Tm6S6" id="IFW4V2uF6B" role="1B3o_S" />
        <node concept="3clFbS" id="IFW4V2uEaA" role="3clF47">
          <node concept="3clFbF" id="3GJd70pvqd2" role="3cqZAp">
            <node concept="2OqwBi" id="3GJd70pvyMo" role="3clFbG">
              <node concept="2OqwBi" id="3GJd70pvt6y" role="2Oq$k0">
                <node concept="37vLTw" id="3GJd70pvqd0" role="2Oq$k0">
                  <ref role="3cqZAo" node="IFW4V2yf1o" resolve="lookups" />
                </node>
                <node concept="T8wYR" id="3GJd70pvw4c" role="2OqNvi" />
              </node>
              <node concept="2es0OD" id="3GJd70pvEFL" role="2OqNvi">
                <node concept="37Ijox" id="3GJd70pyyeM" role="23t8la">
                  <ref role="37Ijqf" node="3GJd70ptlmc" resolve="dispose" />
                  <node concept="2FaPjH" id="3GJd70pyyeL" role="wWaWy">
                    <node concept="3uibUv" id="3GJd70pyyeH" role="2FaQuo">
                      <ref role="3uigEE" node="NKt6ynorWQ" resolve="AspectLookup" />
                      <node concept="3qTvmN" id="3GJd70pyyeK" role="11_B2D" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="IFW4V2$gxz" role="3cqZAp">
            <node concept="2OqwBi" id="IFW4V2$hk3" role="3clFbG">
              <node concept="37vLTw" id="IFW4V2$gxx" role="2Oq$k0">
                <ref role="3cqZAo" node="IFW4V2yf1o" resolve="lookups" />
              </node>
              <node concept="1yHZxX" id="IFW4V2$i5Q" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="1AsznI2s9rZ" role="3cqZAp">
            <node concept="2OqwBi" id="1AsznI2sesM" role="3clFbG">
              <node concept="2YIFZM" id="1AsznI2saAZ" role="2Oq$k0">
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
                <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                <node concept="37vLTw" id="1AsznI2sd3e" role="37wK5m">
                  <ref role="3cqZAo" node="IFW4V2xTxd" resolve="repository" />
                </node>
              </node>
              <node concept="liA8E" id="1AsznI2sfX0" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~LanguageRegistry.removeRegistryListener(jetbrains.mps.smodel.language.LanguageRegistryListener)" resolve="removeRegistryListener" />
                <node concept="Xjq3P" id="1AsznI2sheq" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="IFW4V2xqos" role="jymVt" />
      <node concept="3clFb_" id="IFW4V2xqPS" role="jymVt">
        <property role="TrG5h" value="getLookup" />
        <node concept="37vLTG" id="IFW4V2xsQi" role="3clF46">
          <property role="TrG5h" value="discoverable" />
          <node concept="3uibUv" id="IFW4V2xsQj" role="1tU5fm">
            <ref role="3uigEE" node="NKt6ynom3d" resolve="AspectDiscoverable" />
            <node concept="3uibUv" id="IFW4V2xsQk" role="11_B2D">
              <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
            </node>
            <node concept="16syzq" id="IFW4V2xvdv" role="11_B2D">
              <ref role="16sUi3" node="IFW4V2xuoB" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="IFW4V2yFkb" role="3clF45">
          <ref role="3uigEE" node="NKt6ynorWQ" resolve="AspectLookup" />
          <node concept="16syzq" id="IFW4V2yGRV" role="11_B2D">
            <ref role="16sUi3" node="IFW4V2xuoB" resolve="T" />
          </node>
        </node>
        <node concept="3Tm6S6" id="IFW4V2xBeX" role="1B3o_S" />
        <node concept="3clFbS" id="IFW4V2xqPW" role="3clF47">
          <node concept="3clFbJ" id="IFW4V2ynim" role="3cqZAp">
            <node concept="3clFbS" id="IFW4V2ynio" role="3clFbx">
              <node concept="3clFbF" id="IFW4V2yuRr" role="3cqZAp">
                <node concept="37vLTI" id="IFW4V2yxWC" role="3clFbG">
                  <node concept="2ShNRf" id="IFW4V2yyD6" role="37vLTx">
                    <node concept="1pGfFk" id="IFW4V2yyBG" role="2ShVmc">
                      <ref role="37wK5l" node="NKt6yno$sR" resolve="AspectLookup" />
                      <node concept="16syzq" id="IFW4V2yAbr" role="1pMfVU">
                        <ref role="16sUi3" node="IFW4V2xuoB" resolve="T" />
                      </node>
                      <node concept="37vLTw" id="IFW4V2yzXI" role="37wK5m">
                        <ref role="3cqZAo" node="IFW4V2xTxd" resolve="repository" />
                      </node>
                      <node concept="37vLTw" id="IFW4V2y_wg" role="37wK5m">
                        <ref role="3cqZAo" node="IFW4V2xsQi" resolve="discoverable" />
                      </node>
                    </node>
                  </node>
                  <node concept="3EllGN" id="IFW4V2ywxH" role="37vLTJ">
                    <node concept="37vLTw" id="IFW4V2yuRp" role="3ElQJh">
                      <ref role="3cqZAo" node="IFW4V2yf1o" resolve="lookups" />
                    </node>
                    <node concept="2OqwBi" id="IFW4V2yxb3" role="3ElVtu">
                      <node concept="37vLTw" id="IFW4V2yxb4" role="2Oq$k0">
                        <ref role="3cqZAo" node="IFW4V2xsQi" resolve="discoverable" />
                      </node>
                      <node concept="liA8E" id="IFW4V2yxb5" role="2OqNvi">
                        <ref role="37wK5l" node="IFW4V2y3RP" resolve="aspectClass" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="IFW4V2yu3Q" role="3clFbw">
              <node concept="2OqwBi" id="IFW4V2yu3S" role="3fr31v">
                <node concept="37vLTw" id="IFW4V2yu3T" role="2Oq$k0">
                  <ref role="3cqZAo" node="IFW4V2yf1o" resolve="lookups" />
                </node>
                <node concept="2Nt0df" id="IFW4V2yu3U" role="2OqNvi">
                  <node concept="2OqwBi" id="IFW4V2yu3V" role="38cxEo">
                    <node concept="37vLTw" id="IFW4V2yu3W" role="2Oq$k0">
                      <ref role="3cqZAo" node="IFW4V2xsQi" resolve="discoverable" />
                    </node>
                    <node concept="liA8E" id="IFW4V2yu3X" role="2OqNvi">
                      <ref role="37wK5l" node="IFW4V2y3RP" resolve="aspectClass" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="IFW4V2yEAZ" role="3cqZAp">
            <node concept="1eOMI4" id="IFW4V2yHyO" role="3clFbG">
              <node concept="10QFUN" id="IFW4V2yHyP" role="1eOMHV">
                <node concept="3EllGN" id="IFW4V2yHyQ" role="10QFUP">
                  <node concept="2OqwBi" id="IFW4V2yHyR" role="3ElVtu">
                    <node concept="37vLTw" id="IFW4V2yHyS" role="2Oq$k0">
                      <ref role="3cqZAo" node="IFW4V2xsQi" resolve="discoverable" />
                    </node>
                    <node concept="liA8E" id="IFW4V2yHyT" role="2OqNvi">
                      <ref role="37wK5l" node="IFW4V2y3RP" resolve="aspectClass" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="IFW4V2yHyU" role="3ElQJh">
                    <ref role="3cqZAo" node="IFW4V2yf1o" resolve="lookups" />
                  </node>
                </node>
                <node concept="3uibUv" id="IFW4V2yHyV" role="10QFUM">
                  <ref role="3uigEE" node="NKt6ynorWQ" resolve="AspectLookup" />
                  <node concept="16syzq" id="IFW4V2yHyW" role="11_B2D">
                    <ref role="16sUi3" node="IFW4V2xuoB" resolve="T" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="IFW4V2xuoB" role="16eVyc">
          <property role="TrG5h" value="T" />
          <node concept="3uibUv" id="IFW4V2xuoC" role="3ztrMU">
            <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="IFW4V2wRRS" role="jymVt" />
      <node concept="3clFb_" id="1AsznI2sm54" role="jymVt">
        <property role="TrG5h" value="afterLanguagesLoaded" />
        <node concept="3Tm1VV" id="1AsznI2sm56" role="1B3o_S" />
        <node concept="3cqZAl" id="1AsznI2sm58" role="3clF45" />
        <node concept="37vLTG" id="1AsznI2sm59" role="3clF46">
          <property role="TrG5h" value="languages" />
          <node concept="3uibUv" id="1AsznI2sm5a" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
            <node concept="3uibUv" id="1AsznI2sm5b" role="11_B2D">
              <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="1AsznI2sm5c" role="3clF47">
          <node concept="3clFbF" id="1AsznI2u9pg" role="3cqZAp">
            <node concept="2OqwBi" id="1AsznI2ugar" role="3clFbG">
              <node concept="2OqwBi" id="1AsznI2ublQ" role="2Oq$k0">
                <node concept="37vLTw" id="1AsznI2u9pf" role="2Oq$k0">
                  <ref role="3cqZAo" node="IFW4V2yf1o" resolve="lookups" />
                </node>
                <node concept="T8wYR" id="1AsznI2uem3" role="2OqNvi" />
              </node>
              <node concept="2es0OD" id="1AsznI2uiM1" role="2OqNvi">
                <node concept="1bVj0M" id="1AsznI2uiM3" role="23t8la">
                  <node concept="3clFbS" id="1AsznI2uiM4" role="1bW5cS">
                    <node concept="3clFbF" id="1AsznI2uk6Z" role="3cqZAp">
                      <node concept="2OqwBi" id="1AsznI2ul0m" role="3clFbG">
                        <node concept="37vLTw" id="1AsznI2uk6Y" role="2Oq$k0">
                          <ref role="3cqZAo" node="1AsznI2uiM5" resolve="it" />
                        </node>
                        <node concept="liA8E" id="1AsznI2unfC" role="2OqNvi">
                          <ref role="37wK5l" node="1AsznI2sGf$" resolve="enqueLoadedLanguages" />
                          <node concept="37vLTw" id="1AsznI2uoDC" role="37wK5m">
                            <ref role="3cqZAo" node="1AsznI2sm59" resolve="languages" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="1AsznI2uiM5" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1AsznI2uiM6" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1AsznI2sm5d" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1AsznI2u7Vj" role="jymVt" />
      <node concept="3clFb_" id="1AsznI2sm5k" role="jymVt">
        <property role="TrG5h" value="beforeLanguagesUnloaded" />
        <node concept="3Tm1VV" id="1AsznI2sm5m" role="1B3o_S" />
        <node concept="3cqZAl" id="1AsznI2sm5o" role="3clF45" />
        <node concept="37vLTG" id="1AsznI2sm5p" role="3clF46">
          <property role="TrG5h" value="languages" />
          <node concept="3uibUv" id="1AsznI2sm5q" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
            <node concept="3uibUv" id="1AsznI2sm5r" role="11_B2D">
              <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="1AsznI2sm5s" role="3clF47">
          <node concept="3clFbF" id="1AsznI2uqCP" role="3cqZAp">
            <node concept="2OqwBi" id="1AsznI2uyER" role="3clFbG">
              <node concept="2OqwBi" id="1AsznI2usQg" role="2Oq$k0">
                <node concept="37vLTw" id="1AsznI2uqCO" role="2Oq$k0">
                  <ref role="3cqZAo" node="IFW4V2yf1o" resolve="lookups" />
                </node>
                <node concept="T8wYR" id="1AsznI2uwKh" role="2OqNvi" />
              </node>
              <node concept="2es0OD" id="1AsznI2u_EH" role="2OqNvi">
                <node concept="1bVj0M" id="1AsznI2u_EJ" role="23t8la">
                  <node concept="3clFbS" id="1AsznI2u_EK" role="1bW5cS">
                    <node concept="3clFbF" id="1AsznI2uBC7" role="3cqZAp">
                      <node concept="2OqwBi" id="1AsznI2uC_P" role="3clFbG">
                        <node concept="37vLTw" id="1AsznI2uBC6" role="2Oq$k0">
                          <ref role="3cqZAo" node="1AsznI2u_EL" resolve="it" />
                        </node>
                        <node concept="liA8E" id="1AsznI2uFvw" role="2OqNvi">
                          <ref role="37wK5l" node="1AsznI2tFjs" resolve="dropUnloadedLanguages" />
                          <node concept="37vLTw" id="1AsznI2uIqQ" role="37wK5m">
                            <ref role="3cqZAo" node="1AsznI2sm5p" resolve="languages" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="1AsznI2u_EL" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1AsznI2u_EM" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1AsznI2sm5t" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="IFW4V2uDVL" role="jymVt" />
      <node concept="312cEg" id="IFW4V2xTxd" role="jymVt">
        <property role="TrG5h" value="repository" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="IFW4V2xTxe" role="1B3o_S" />
        <node concept="3uibUv" id="IFW4V2xU4V" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="312cEg" id="IFW4V2yf1o" role="jymVt">
        <property role="TrG5h" value="lookups" />
        <node concept="3Tm6S6" id="IFW4V2yf1p" role="1B3o_S" />
        <node concept="3rvAFt" id="IFW4V2yf_S" role="1tU5fm">
          <node concept="3uibUv" id="IFW4V2yfHG" role="3rvQeY">
            <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
            <node concept="3qTvmN" id="IFW4V2yfPE" role="11_B2D" />
          </node>
          <node concept="3uibUv" id="IFW4V2yfXB" role="3rvSg0">
            <ref role="3uigEE" node="NKt6ynorWQ" resolve="AspectLookup" />
            <node concept="3qTvmN" id="IFW4V2ygYy" role="11_B2D" />
          </node>
        </node>
        <node concept="2ShNRf" id="IFW4V2yhKb" role="33vP2m">
          <node concept="3rGOSV" id="IFW4V2yhI$" role="2ShVmc">
            <node concept="3uibUv" id="IFW4V2yhI_" role="3rHrn6">
              <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
              <node concept="3qTvmN" id="IFW4V2yhIA" role="11_B2D" />
            </node>
            <node concept="3uibUv" id="IFW4V2yhIB" role="3rHtpV">
              <ref role="3uigEE" node="NKt6ynorWQ" resolve="AspectLookup" />
              <node concept="3qTvmN" id="IFW4V2yhIC" role="11_B2D" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="IFW4V2uswv" role="1B3o_S" />
      <node concept="3uibUv" id="1AsznI2rWPE" role="EKbjA">
        <ref role="3uigEE" to="vndm:~LanguageRegistryListener" resolve="LanguageRegistryListener" />
      </node>
    </node>
    <node concept="2tJIrI" id="IFW4V2uo3Y" role="jymVt" />
    <node concept="3clFbW" id="NKt6yno$sR" role="jymVt">
      <node concept="37vLTG" id="IFW4V2tCWi" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="IFW4V2tDgX" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="NKt6yno_xa" role="3clF46">
        <property role="TrG5h" value="discoverable" />
        <node concept="3uibUv" id="NKt6yno_y0" role="1tU5fm">
          <ref role="3uigEE" node="NKt6ynom3d" resolve="AspectDiscoverable" />
          <node concept="3uibUv" id="6nx4rRkNjEP" role="11_B2D">
            <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
          </node>
          <node concept="16syzq" id="NKt6ynoFZ$" role="11_B2D">
            <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="NKt6yno$sT" role="3clF45" />
      <node concept="3Tm6S6" id="IFW4V2tFJm" role="1B3o_S" />
      <node concept="3clFbS" id="NKt6yno$sV" role="3clF47">
        <node concept="3clFbF" id="NKt6yno_yQ" role="3cqZAp">
          <node concept="37vLTI" id="NKt6yno_yS" role="3clFbG">
            <node concept="2OqwBi" id="NKt6ynoAF6" role="37vLTJ">
              <node concept="Xjq3P" id="NKt6ynoAGl" role="2Oq$k0" />
              <node concept="2OwXpG" id="NKt6ynoAF9" role="2OqNvi">
                <ref role="2Oxat5" node="NKt6yno_yM" resolve="discoverable" />
              </node>
            </node>
            <node concept="37vLTw" id="NKt6yno_yW" role="37vLTx">
              <ref role="3cqZAo" node="NKt6yno_xa" resolve="discoverable" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IFW4V2$oei" role="3cqZAp">
          <node concept="37vLTI" id="IFW4V2$oek" role="3clFbG">
            <node concept="2OqwBi" id="IFW4V2$umT" role="37vLTJ">
              <node concept="Xjq3P" id="IFW4V2$uMn" role="2Oq$k0" />
              <node concept="2OwXpG" id="IFW4V2$umW" role="2OqNvi">
                <ref role="2Oxat5" node="IFW4V2$oee" resolve="repository" />
              </node>
            </node>
            <node concept="37vLTw" id="IFW4V2$oeo" role="37vLTx">
              <ref role="3cqZAo" node="IFW4V2tCWi" resolve="repository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1AsznI2FMH4" role="3cqZAp">
          <node concept="1rXfSq" id="1AsznI2FMH2" role="3clFbG">
            <ref role="37wK5l" node="1AsznI2sGf$" resolve="enqueLoadedLanguages" />
            <node concept="1rXfSq" id="1AsznI2FUIB" role="37wK5m">
              <ref role="37wK5l" node="4pwDyRBwQ_v" resolve="langRTs" />
              <node concept="2ShNRf" id="1AsznI2FUIC" role="37wK5m">
                <node concept="2i4dXS" id="1AsznI2FUID" role="2ShVmc">
                  <node concept="2OqwBi" id="1AsznI2FUIE" role="I$8f6">
                    <node concept="2YIFZM" id="1AsznI2FUIF" role="2Oq$k0">
                      <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
                      <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                      <node concept="37vLTw" id="1AsznI2FUIG" role="37wK5m">
                        <ref role="3cqZAo" node="IFW4V2tCWi" resolve="repository" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1AsznI2FUIH" role="2OqNvi">
                      <ref role="37wK5l" to="vndm:~LanguageRegistry.getAllLanguages()" resolve="getAllLanguages" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3GJd70ptc0b" role="jymVt" />
    <node concept="3clFb_" id="3GJd70ptlmc" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <property role="od$2w" value="true" />
      <node concept="3cqZAl" id="3GJd70ptlme" role="3clF45" />
      <node concept="3Tm6S6" id="3GJd70ptsxK" role="1B3o_S" />
      <node concept="3clFbS" id="3GJd70ptlmg" role="3clF47">
        <node concept="3clFbF" id="3GJd70ptKxJ" role="3cqZAp">
          <node concept="2OqwBi" id="3GJd70pu30M" role="3clFbG">
            <node concept="2OqwBi" id="3GJd70ptPRO" role="2Oq$k0">
              <node concept="37vLTw" id="3GJd70ptKxI" role="2Oq$k0">
                <ref role="3cqZAo" node="5Zr$fBYRFKG" resolve="usedLanguagesBySModelId" />
              </node>
              <node concept="T8wYR" id="3GJd70ptWN5" role="2OqNvi" />
            </node>
            <node concept="2es0OD" id="3GJd70pu9FJ" role="2OqNvi">
              <node concept="37Ijox" id="3GJd70py$U3" role="23t8la">
                <ref role="37Ijqf" node="3GJd70pbn2_" resolve="invalidate" />
                <node concept="2FaPjH" id="3GJd70py$U2" role="wWaWy">
                  <node concept="3uibUv" id="3GJd70py$U1" role="2FaQuo">
                    <ref role="3uigEE" node="3GJd70paCjO" resolve="AspectLookup.UsedLanguagesCache" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4nDRG5zZxHg" role="jymVt" />
    <node concept="3clFb_" id="4nDRG5zZEQ$" role="jymVt">
      <property role="TrG5h" value="forNodes" />
      <node concept="3uibUv" id="4nDRG5zZM8N" role="3clF45">
        <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
        <node concept="16syzq" id="4nDRG5zZTyy" role="11_B2D">
          <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4nDRG5zZEQB" role="1B3o_S" />
      <node concept="3clFbS" id="4nDRG5zZEQC" role="3clF47">
        <node concept="3cpWs8" id="7mB3viLmGMo" role="3cqZAp">
          <node concept="3cpWsn" id="7mB3viLmGMp" role="3cpWs9">
            <property role="TrG5h" value="allUsedLanguages" />
            <node concept="2hMVRd" id="7mB3viLmLag" role="1tU5fm">
              <node concept="3uibUv" id="7mB3viLmLai" role="2hN53Y">
                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
              </node>
            </node>
            <node concept="2ShNRf" id="7mB3viLmHXa" role="33vP2m">
              <node concept="2i4dXS" id="7mB3viLmIwp" role="2ShVmc">
                <node concept="3uibUv" id="7mB3viLmJhI" role="HW$YZ">
                  <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3KN3A4vEzi1" role="3cqZAp">
          <node concept="3clFbS" id="3KN3A4vEzi4" role="2LFqv$">
            <node concept="3clFbF" id="9UUIHLZxi9" role="3cqZAp">
              <node concept="2OqwBi" id="9UUIHLZDt5" role="3clFbG">
                <node concept="37vLTw" id="9UUIHLZxi7" role="2Oq$k0">
                  <ref role="3cqZAo" node="7mB3viLmGMp" resolve="allUsedLanguages" />
                </node>
                <node concept="X8dFx" id="9UUIHLZMuw" role="2OqNvi">
                  <node concept="1rXfSq" id="4nDRG5$2RIs" role="25WWJ7">
                    <ref role="37wK5l" node="9UUIHLWXjf" resolve="usedLanguages" />
                    <node concept="37vLTw" id="4nDRG5$2RIt" role="37wK5m">
                      <ref role="3cqZAo" node="3KN3A4vEzi5" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3KN3A4vEzi5" role="1Duv9x">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3KN3A4vEzi9" role="1tU5fm" />
          </node>
          <node concept="37vLTw" id="3KN3A4vEzia" role="1DdaDG">
            <ref role="3cqZAo" node="4nDRG5$0d7t" resolve="nodes" />
          </node>
        </node>
        <node concept="3cpWs6" id="4nDRG5$1HBR" role="3cqZAp">
          <node concept="1rXfSq" id="4nDRG5$f0YP" role="3cqZAk">
            <ref role="37wK5l" node="4nDRG5$4KHL" resolve="getAspectClique" />
            <node concept="1rXfSq" id="4nDRG5$f0YQ" role="37wK5m">
              <ref role="37wK5l" node="4pwDyRBwQ_v" resolve="langRTs" />
              <node concept="37vLTw" id="4nDRG5$f0YR" role="37wK5m">
                <ref role="3cqZAo" node="7mB3viLmGMp" resolve="allUsedLanguages" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4nDRG5$0d7t" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="A3Dl8" id="4nDRG5$0d7r" role="1tU5fm">
          <node concept="3Tqbb2" id="4nDRG5$0jbz" role="A3Ik2" />
        </node>
      </node>
      <node concept="P$JXv" id="4nDRG5$35Vi" role="lGtFl">
        <node concept="TZ5HA" id="4nDRG5$3I9r" role="TZ5H$">
          <node concept="1dT_AC" id="4nDRG5$3I9s" role="1dT_Ay">
            <property role="1dT_AB" value="Discover aspects that belong to " />
          </node>
        </node>
        <node concept="TZ5HA" id="4nDRG5$3I9t" role="TZ5H$">
          <node concept="1dT_AC" id="4nDRG5$3I9u" role="1dT_Ay">
            <property role="1dT_AB" value="the language(s) that define the concepts of nodes" />
          </node>
        </node>
        <node concept="TZ5HA" id="4nDRG5$3I9v" role="TZ5H$">
          <node concept="1dT_AC" id="4nDRG5$3I9w" role="1dT_Ay">
            <property role="1dT_AB" value="and languages imported by a model of the first node." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4nDRG5$26Bg" role="jymVt" />
    <node concept="3clFb_" id="4nDRG5$48vO" role="jymVt">
      <property role="TrG5h" value="forModel" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="4nDRG5$48vP" role="3clF47">
        <node concept="3clFbF" id="4nDRG5$48vQ" role="3cqZAp">
          <node concept="1rXfSq" id="4nDRG5$48vR" role="3clFbG">
            <ref role="37wK5l" node="4nDRG5$4KHL" resolve="getAspectClique" />
            <node concept="1rXfSq" id="4nDRG5$48vS" role="37wK5m">
              <ref role="37wK5l" node="4pwDyRBwQ_v" resolve="langRTs" />
              <node concept="1rXfSq" id="4nDRG5$48vT" role="37wK5m">
                <ref role="37wK5l" node="500mE4_soZN" resolve="usedLanguages" />
                <node concept="37vLTw" id="4nDRG5$48vU" role="37wK5m">
                  <ref role="3cqZAo" node="4nDRG5$48vV" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4nDRG5$48vV" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="4nDRG5$48vW" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="4nDRG5$48w0" role="1B3o_S" />
      <node concept="P$JXv" id="4nDRG5$48w1" role="lGtFl">
        <node concept="TZ5HA" id="4nDRG5$48w2" role="TZ5H$">
          <node concept="1dT_AC" id="4nDRG5$48w3" role="1dT_Ay">
            <property role="1dT_AB" value="Discover aspects that belong to languages that are imported in the model." />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4nDRG5$48vY" role="3clF45">
        <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
        <node concept="16syzq" id="4nDRG5$48vZ" role="11_B2D">
          <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7W7Inqm5EiP" role="jymVt" />
    <node concept="3clFb_" id="4nDRG5$7lEp" role="jymVt">
      <property role="TrG5h" value="forSingleNode" />
      <node concept="37vLTG" id="4nDRG5$7lEq" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4nDRG5$7lEr" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="4nDRG5$7lEs" role="1B3o_S" />
      <node concept="3clFbS" id="4nDRG5$7lEt" role="3clF47">
        <node concept="3clFbF" id="4nDRG5$7lEu" role="3cqZAp">
          <node concept="1rXfSq" id="4nDRG5$7lEv" role="3clFbG">
            <ref role="37wK5l" node="4nDRG5$4KHL" resolve="getAspectClique" />
            <node concept="1rXfSq" id="4nDRG5$7lEw" role="37wK5m">
              <ref role="37wK5l" node="4pwDyRBwQ_v" resolve="langRTs" />
              <node concept="1rXfSq" id="4nDRG5$7lEx" role="37wK5m">
                <ref role="37wK5l" node="9UUIHLWXjf" resolve="usedLanguages" />
                <node concept="37vLTw" id="4nDRG5$7lEy" role="37wK5m">
                  <ref role="3cqZAo" node="4nDRG5$7lEq" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4nDRG5$7lE$" role="3clF45">
        <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
        <node concept="16syzq" id="4nDRG5$7lE_" role="11_B2D">
          <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4nDRG5$7lEo" role="jymVt" />
    <node concept="3clFb_" id="4nDRG5$8LBs" role="jymVt">
      <property role="TrG5h" value="forRoot" />
      <node concept="37vLTG" id="4nDRG5$8LBt" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="4nDRG5$8LBu" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="4nDRG5$8LBv" role="1B3o_S" />
      <node concept="3clFbS" id="4nDRG5$8LBw" role="3clF47">
        <node concept="3clFbF" id="4nDRG5$8LBx" role="3cqZAp">
          <node concept="1rXfSq" id="4nDRG5$8LBy" role="3clFbG">
            <ref role="37wK5l" node="4nDRG5$4KHL" resolve="getAspectClique" />
            <node concept="1rXfSq" id="4nDRG5$8LBz" role="37wK5m">
              <ref role="37wK5l" node="4pwDyRBwQ_v" resolve="langRTs" />
              <node concept="1rXfSq" id="4nDRG5$8LB$" role="37wK5m">
                <ref role="37wK5l" node="9UUIHLWXjf" resolve="usedLanguages" />
                <node concept="37vLTw" id="4nDRG5$8LB_" role="37wK5m">
                  <ref role="3cqZAo" node="4nDRG5$8LBt" resolve="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4nDRG5$8LBB" role="3clF45">
        <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
        <node concept="16syzq" id="4nDRG5$8LBC" role="11_B2D">
          <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4nDRG5$8LBr" role="jymVt" />
    <node concept="3clFb_" id="4nDRG5$4KHL" role="jymVt">
      <property role="TrG5h" value="getAspectClique" />
      <node concept="3Tm6S6" id="4nDRG5$4KHM" role="1B3o_S" />
      <node concept="3clFbS" id="4nDRG5$4KHN" role="3clF47">
        <node concept="3cpWs8" id="4nDRG5$4KHO" role="3cqZAp">
          <node concept="3cpWsn" id="4nDRG5$4KHP" role="3cpWs9">
            <property role="TrG5h" value="aclique" />
            <node concept="3uibUv" id="4nDRG5$4KHQ" role="1tU5fm">
              <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
              <node concept="16syzq" id="4nDRG5$4KHR" role="11_B2D">
                <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
              </node>
            </node>
            <node concept="1rXfSq" id="4nDRG5$4KHS" role="33vP2m">
              <ref role="37wK5l" node="1AsznI2x5QX" resolve="primGetAspectClique" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4nDRG5$4KI1" role="3cqZAp">
          <node concept="3cpWsn" id="4nDRG5$4KI2" role="3cpWs9">
            <property role="TrG5h" value="effRuntimes" />
            <node concept="3vKaQO" id="4nDRG5$4KI3" role="1tU5fm">
              <node concept="3uibUv" id="4nDRG5$4KI4" role="3O5elw">
                <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
              </node>
            </node>
            <node concept="2OqwBi" id="4nDRG5$4KI5" role="33vP2m">
              <node concept="2ShNRf" id="4nDRG5$erJ8" role="2Oq$k0">
                <node concept="1pGfFk" id="4nDRG5$erJ9" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="37wK5l" node="6nx4rRkNNr0" resolve="CliqueBuilder" />
                  <node concept="37vLTw" id="4nDRG5$erJa" role="37wK5m">
                    <ref role="3cqZAo" node="NKt6yno_yM" resolve="discoverable" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4nDRG5$4KI7" role="2OqNvi">
                <ref role="37wK5l" node="5Zr$fBYWNu5" resolve="effectiveLanguages" />
                <node concept="37vLTw" id="4nDRG5$4KI8" role="37wK5m">
                  <ref role="3cqZAo" node="4nDRG5$4KIz" resolve="runtimes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4nDRG5$4KIt" role="3cqZAp">
          <node concept="2OqwBi" id="4nDRG5$an1d" role="3cqZAk">
            <node concept="37vLTw" id="4nDRG5$an1e" role="2Oq$k0">
              <ref role="3cqZAo" node="4nDRG5$4KHP" resolve="aclique" />
            </node>
            <node concept="liA8E" id="4nDRG5$an1f" role="2OqNvi">
              <ref role="37wK5l" node="5Zr$fBYVoZB" resolve="select" />
              <node concept="2OqwBi" id="4nDRG5$an1g" role="37wK5m">
                <node concept="2OqwBi" id="4nDRG5$an1h" role="2Oq$k0">
                  <node concept="37vLTw" id="4nDRG5$an1i" role="2Oq$k0">
                    <ref role="3cqZAo" node="4nDRG5$4KI2" resolve="effRuntimes" />
                  </node>
                  <node concept="3$u5V9" id="4nDRG5$an1j" role="2OqNvi">
                    <node concept="1bVj0M" id="4nDRG5$an1k" role="23t8la">
                      <node concept="3clFbS" id="4nDRG5$an1l" role="1bW5cS">
                        <node concept="3clFbF" id="4nDRG5$an1m" role="3cqZAp">
                          <node concept="2OqwBi" id="4nDRG5$an1n" role="3clFbG">
                            <node concept="37vLTw" id="4nDRG5$an1o" role="2Oq$k0">
                              <ref role="3cqZAo" node="4nDRG5$an1q" resolve="it" />
                            </node>
                            <node concept="liA8E" id="4nDRG5$an1p" role="2OqNvi">
                              <ref role="37wK5l" to="vndm:~LanguageRuntime.getNamespace()" resolve="getNamespace" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="4nDRG5$an1q" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="4nDRG5$an1r" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="4nDRG5$an1s" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4nDRG5$4KIz" role="3clF46">
        <property role="TrG5h" value="runtimes" />
        <node concept="2hMVRd" id="4nDRG5$4KI$" role="1tU5fm">
          <node concept="3uibUv" id="4nDRG5$4KI_" role="2hN53Y">
            <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4nDRG5$4KIx" role="3clF45">
        <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
        <node concept="16syzq" id="4nDRG5$4KIy" role="11_B2D">
          <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4nDRG5$4KHK" role="jymVt" />
    <node concept="3clFb_" id="500mE4_soZN" role="jymVt">
      <property role="TrG5h" value="usedLanguages" />
      <property role="od$2w" value="true" />
      <node concept="37vLTG" id="500mE4_sraF" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="500mE4_srzT" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="500mE4_soZQ" role="3clF47">
        <node concept="3cpWs8" id="3GJd70pfXD0" role="3cqZAp">
          <node concept="3cpWsn" id="3GJd70pfXD1" role="3cpWs9">
            <property role="TrG5h" value="cached" />
            <node concept="3uibUv" id="3GJd70pfXD2" role="1tU5fm">
              <ref role="3uigEE" to="mpcv:~Reference" resolve="Reference" />
              <node concept="3qTvmN" id="3GJd70ph8er" role="11_B2D" />
            </node>
            <node concept="10Nm6u" id="3GJd70pgnuV" role="33vP2m" />
          </node>
        </node>
        <node concept="2$JKZl" id="3GJd70pfk3v" role="3cqZAp">
          <node concept="3clFbS" id="3GJd70pfk3x" role="2LFqv$">
            <node concept="3clFbF" id="3GJd70pjHgJ" role="3cqZAp">
              <node concept="2OqwBi" id="3GJd70pk0cr" role="3clFbG">
                <node concept="1eOMI4" id="3GJd70pjHgH" role="2Oq$k0">
                  <node concept="10QFUN" id="3GJd70pjHgE" role="1eOMHV">
                    <node concept="3uibUv" id="3GJd70pjMPr" role="10QFUM">
                      <ref role="3uigEE" node="3GJd70paCjO" resolve="AspectLookup.UsedLanguagesCache" />
                    </node>
                    <node concept="37vLTw" id="3GJd70pjSFk" role="10QFUP">
                      <ref role="3cqZAo" node="3GJd70pfXD1" resolve="cached" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="3GJd70pk6gA" role="2OqNvi">
                  <ref role="37wK5l" node="3GJd70pbn2_" resolve="invalidate" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3GJd70pl1LR" role="3cqZAp">
              <node concept="2OqwBi" id="3GJd70pl73I" role="3clFbG">
                <node concept="37vLTw" id="3GJd70pl1LP" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Zr$fBYRFKG" resolve="usedLanguagesBySModelId" />
                </node>
                <node concept="kI3uX" id="3GJd70pleKK" role="2OqNvi">
                  <node concept="2YIFZM" id="55vERwjti0G" role="kIiFs">
                    <ref role="37wK5l" to="wyt6:~System.identityHashCode(java.lang.Object)" resolve="identityHashCode" />
                    <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                    <node concept="37vLTw" id="55vERwjtnHh" role="37wK5m">
                      <ref role="3cqZAo" node="3GJd70pfXD1" resolve="cached" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3GJd70pgI9M" role="2$JKZa">
            <node concept="10Nm6u" id="3GJd70pgLP6" role="3uHU7w" />
            <node concept="1eOMI4" id="3GJd70pgt3O" role="3uHU7B">
              <node concept="37vLTI" id="3GJd70pgyAJ" role="1eOMHV">
                <node concept="37vLTw" id="3GJd70pgCho" role="37vLTJ">
                  <ref role="3cqZAo" node="3GJd70pfXD1" resolve="cached" />
                </node>
                <node concept="2OqwBi" id="3GJd70pfvnf" role="37vLTx">
                  <node concept="37vLTw" id="3GJd70pfpIs" role="2Oq$k0">
                    <ref role="3cqZAo" node="3GJd70pdYgA" resolve="referenceQueue" />
                  </node>
                  <node concept="liA8E" id="3GJd70pf_d7" role="2OqNvi">
                    <ref role="37wK5l" to="mpcv:~ReferenceQueue.poll()" resolve="poll" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5Zr$fBYRW9G" role="3cqZAp">
          <node concept="3fqX7Q" id="3GJd70podFr" role="3clFbw">
            <node concept="2OqwBi" id="3GJd70podFs" role="3fr31v">
              <node concept="37vLTw" id="3GJd70podFt" role="2Oq$k0">
                <ref role="3cqZAo" node="5Zr$fBYRFKG" resolve="usedLanguagesBySModelId" />
              </node>
              <node concept="2Nt0df" id="3GJd70podFu" role="2OqNvi">
                <node concept="2YIFZM" id="55vERwjttpC" role="38cxEo">
                  <ref role="37wK5l" to="wyt6:~System.identityHashCode(java.lang.Object)" resolve="identityHashCode" />
                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                  <node concept="37vLTw" id="55vERwjttpD" role="37wK5m">
                    <ref role="3cqZAo" node="500mE4_sraF" resolve="model" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5Zr$fBYRW9I" role="3clFbx">
            <node concept="3cpWs8" id="3KN3A4v3Kac" role="3cqZAp">
              <node concept="3cpWsn" id="3KN3A4v3Kad" role="3cpWs9">
                <property role="TrG5h" value="resolver" />
                <node concept="3uibUv" id="3KN3A4v3Jkh" role="1tU5fm">
                  <ref role="3uigEE" to="w1kc:~ModelDependencyResolver" resolve="ModelDependencyResolver" />
                </node>
                <node concept="2ShNRf" id="3KN3A4v3Kae" role="33vP2m">
                  <node concept="1pGfFk" id="3KN3A4v3Kaf" role="2ShVmc">
                    <ref role="37wK5l" to="w1kc:~ModelDependencyResolver.&lt;init&gt;(jetbrains.mps.smodel.language.LanguageRegistry,org.jetbrains.mps.openapi.module.SRepository)" resolve="ModelDependencyResolver" />
                    <node concept="2YIFZM" id="3KN3A4v3Kag" role="37wK5m">
                      <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
                      <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                      <node concept="37vLTw" id="IFW4V2F0hA" role="37wK5m">
                        <ref role="3cqZAo" node="IFW4V2$oee" resolve="repository" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="IFW4V2F0jc" role="37wK5m">
                      <ref role="3cqZAo" node="IFW4V2$oee" resolve="repository" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5lR$kylkWw6" role="3cqZAp">
              <node concept="3cpWsn" id="5lR$kylkWw7" role="3cpWs9">
                <property role="TrG5h" value="result" />
                <node concept="2hMVRd" id="5lR$kylkVJg" role="1tU5fm">
                  <node concept="3uibUv" id="5lR$kylkVJj" role="2hN53Y">
                    <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                  </node>
                </node>
                <node concept="2ShNRf" id="5lR$kylkWw8" role="33vP2m">
                  <node concept="2i4dXS" id="5lR$kylkWw9" role="2ShVmc">
                    <node concept="3uibUv" id="5lR$kylkWwa" role="HW$YZ">
                      <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                    </node>
                    <node concept="2OqwBi" id="5lR$kylkWwb" role="I$8f6">
                      <node concept="37vLTw" id="5lR$kylkWwc" role="2Oq$k0">
                        <ref role="3cqZAo" node="3KN3A4v3Kad" resolve="resolver" />
                      </node>
                      <node concept="liA8E" id="5lR$kylkWwd" role="2OqNvi">
                        <ref role="37wK5l" to="w1kc:~ModelDependencyResolver.usedLanguages(org.jetbrains.mps.openapi.model.SModel)" resolve="usedLanguages" />
                        <node concept="37vLTw" id="5lR$kylkWwe" role="37wK5m">
                          <ref role="3cqZAo" node="500mE4_sraF" resolve="model" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="5lR$kylkY1w" role="3cqZAp">
              <node concept="3clFbS" id="5lR$kylkY1z" role="2LFqv$">
                <node concept="3clFbF" id="5lR$kyll2UV" role="3cqZAp">
                  <node concept="2OqwBi" id="5lR$kyll3Kv" role="3clFbG">
                    <node concept="37vLTw" id="5lR$kyll2UT" role="2Oq$k0">
                      <ref role="3cqZAo" node="5lR$kylkWw7" resolve="result" />
                    </node>
                    <node concept="X8dFx" id="5lR$kyll4Ol" role="2OqNvi">
                      <node concept="2OqwBi" id="5lR$kyll59l" role="25WWJ7">
                        <node concept="37vLTw" id="5lR$kyll59m" role="2Oq$k0">
                          <ref role="3cqZAo" node="3KN3A4v3Kad" resolve="resolver" />
                        </node>
                        <node concept="liA8E" id="5lR$kyll59n" role="2OqNvi">
                          <ref role="37wK5l" to="w1kc:~ModelDependencyResolver.usedLanguages(org.jetbrains.mps.openapi.model.SModel)" resolve="usedLanguages" />
                          <node concept="37vLTw" id="5lR$kyll59o" role="37wK5m">
                            <ref role="3cqZAo" node="5lR$kylkY1$" resolve="m" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="5lR$kylkY1$" role="1Duv9x">
                <property role="TrG5h" value="m" />
                <node concept="3uibUv" id="5lR$kyll0nJ" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
              <node concept="2OqwBi" id="5lR$kylkY1D" role="1DdaDG">
                <node concept="37vLTw" id="5lR$kylkY1E" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KN3A4v3Kad" resolve="resolver" />
                </node>
                <node concept="liA8E" id="5lR$kylkY1F" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~ModelDependencyResolver.directImports(org.jetbrains.mps.openapi.model.SModel)" resolve="directImports" />
                  <node concept="37vLTw" id="5lR$kylkY1G" role="37wK5m">
                    <ref role="3cqZAo" node="500mE4_sraF" resolve="model" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="5lR$kyll74u" role="3cqZAp">
              <node concept="3clFbS" id="5lR$kyll74v" role="2LFqv$">
                <node concept="3clFbF" id="5lR$kyll74w" role="3cqZAp">
                  <node concept="2OqwBi" id="5lR$kyll74x" role="3clFbG">
                    <node concept="37vLTw" id="5lR$kyll74y" role="2Oq$k0">
                      <ref role="3cqZAo" node="5lR$kylkWw7" resolve="result" />
                    </node>
                    <node concept="X8dFx" id="5lR$kyll74z" role="2OqNvi">
                      <node concept="2OqwBi" id="5lR$kyll74$" role="25WWJ7">
                        <node concept="37vLTw" id="5lR$kyll74_" role="2Oq$k0">
                          <ref role="3cqZAo" node="3KN3A4v3Kad" resolve="resolver" />
                        </node>
                        <node concept="liA8E" id="5lR$kyll74A" role="2OqNvi">
                          <ref role="37wK5l" to="w1kc:~ModelDependencyResolver.usedLanguages(org.jetbrains.mps.openapi.model.SModel)" resolve="usedLanguages" />
                          <node concept="37vLTw" id="5lR$kyll74B" role="37wK5m">
                            <ref role="3cqZAo" node="5lR$kyll74C" resolve="m" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="5lR$kyll74C" role="1Duv9x">
                <property role="TrG5h" value="m" />
                <node concept="3uibUv" id="5lR$kyll74D" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
              <node concept="2OqwBi" id="5lR$kyll74E" role="1DdaDG">
                <node concept="37vLTw" id="5lR$kyll74F" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KN3A4v3Kad" resolve="resolver" />
                </node>
                <node concept="liA8E" id="5lR$kyll74G" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~ModelDependencyResolver.implicitImports(org.jetbrains.mps.openapi.model.SModel)" resolve="implicitImports" />
                  <node concept="37vLTw" id="5lR$kyll74H" role="37wK5m">
                    <ref role="3cqZAo" node="500mE4_sraF" resolve="model" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5Zr$fBYSFJd" role="3cqZAp">
              <node concept="37vLTI" id="5Zr$fBYTbPy" role="3clFbG">
                <node concept="3EllGN" id="5Zr$fBYSSG6" role="37vLTJ">
                  <node concept="37vLTw" id="5Zr$fBYSFJb" role="3ElQJh">
                    <ref role="3cqZAo" node="5Zr$fBYRFKG" resolve="usedLanguagesBySModelId" />
                  </node>
                  <node concept="2YIFZM" id="55vERwjtERu" role="3ElVtu">
                    <ref role="37wK5l" to="wyt6:~System.identityHashCode(java.lang.Object)" resolve="identityHashCode" />
                    <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                    <node concept="37vLTw" id="55vERwjtERv" role="37wK5m">
                      <ref role="3cqZAo" node="500mE4_sraF" resolve="model" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="3GJd70powH9" role="37vLTx">
                  <node concept="1pGfFk" id="3GJd70poBzp" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" node="3GJd70pcbpJ" resolve="AspectLookup.UsedLanguagesCache" />
                    <node concept="37vLTw" id="3GJd70pq81X" role="37wK5m">
                      <ref role="3cqZAo" node="500mE4_sraF" resolve="model" />
                    </node>
                    <node concept="2OqwBi" id="3GJd70pqjEj" role="37wK5m">
                      <node concept="37vLTw" id="3GJd70pqdRC" role="2Oq$k0">
                        <ref role="3cqZAo" node="5lR$kylkWw7" resolve="result" />
                      </node>
                      <node concept="26Dbio" id="3GJd70pqqpc" role="2OqNvi" />
                    </node>
                    <node concept="37vLTw" id="3GJd70pq_Sx" role="37wK5m">
                      <ref role="3cqZAo" node="3GJd70pdYgA" resolve="referenceQueue" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Zr$fBYTxar" role="3cqZAp">
          <node concept="2OqwBi" id="3GJd70pnUQp" role="3clFbG">
            <node concept="3EllGN" id="5Zr$fBYTxat" role="2Oq$k0">
              <node concept="37vLTw" id="5Zr$fBYTxay" role="3ElQJh">
                <ref role="3cqZAo" node="5Zr$fBYRFKG" resolve="usedLanguagesBySModelId" />
              </node>
              <node concept="2YIFZM" id="55vERwjtKyI" role="3ElVtu">
                <ref role="37wK5l" to="wyt6:~System.identityHashCode(java.lang.Object)" resolve="identityHashCode" />
                <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                <node concept="37vLTw" id="55vERwjtKyJ" role="37wK5m">
                  <ref role="3cqZAo" node="500mE4_sraF" resolve="model" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3GJd70po2nC" role="2OqNvi">
              <ref role="37wK5l" to="mpcv:~SoftReference.get()" resolve="get" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="500mE4_somr" role="1B3o_S" />
      <node concept="2hMVRd" id="IFW4V2CS1w" role="3clF45">
        <node concept="3uibUv" id="IFW4V2CS1y" role="2hN53Y">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7mB3viLm$_H" role="jymVt" />
    <node concept="3clFb_" id="9UUIHLWXjf" role="jymVt">
      <property role="TrG5h" value="usedLanguages" />
      <node concept="37vLTG" id="9UUIHLX$PQ" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="9UUIHLXDY3" role="1tU5fm" />
      </node>
      <node concept="2hMVRd" id="9UUIHLX5lq" role="3clF45">
        <node concept="3uibUv" id="9UUIHLX9LI" role="2hN53Y">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
      <node concept="3Tm6S6" id="9UUIHM0yoz" role="1B3o_S" />
      <node concept="3clFbS" id="9UUIHLWXjj" role="3clF47">
        <node concept="3SKdUt" id="1AsznI2$d5p" role="3cqZAp">
          <node concept="1PaTwC" id="1AsznI2$d5q" role="1aUNEU">
            <node concept="3oM_SD" id="1AsznI2$ibb" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="1AsznI2$ibd" role="1PaTwD">
              <property role="3oM_SC" value="listen" />
            </node>
            <node concept="3oM_SD" id="1AsznI2$ibg" role="1PaTwD">
              <property role="3oM_SC" value="for" />
            </node>
            <node concept="3oM_SD" id="1AsznI2$ibk" role="1PaTwD">
              <property role="3oM_SC" value="changes" />
            </node>
            <node concept="3oM_SD" id="1AsznI2$ibp" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="1AsznI2$ibv" role="1PaTwD">
              <property role="3oM_SC" value="imports" />
            </node>
            <node concept="3oM_SD" id="1AsznI2$ibA" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="1AsznI2$ibI" role="1PaTwD">
              <property role="3oM_SC" value="update" />
            </node>
            <node concept="3oM_SD" id="1AsznI2$ibR" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="1AsznI2$ic1" role="1PaTwD">
              <property role="3oM_SC" value="cache!" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="9UUIHLXF$Q" role="3cqZAp">
          <node concept="3cpWsn" id="9UUIHLXF$R" role="3cpWs9">
            <property role="TrG5h" value="usedLangs" />
            <node concept="2hMVRd" id="9UUIHLXF$S" role="1tU5fm">
              <node concept="3uibUv" id="9UUIHLXF$T" role="2hN53Y">
                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
              </node>
            </node>
            <node concept="2ShNRf" id="9UUIHLXF$U" role="33vP2m">
              <node concept="2i4dXS" id="9UUIHLXF$V" role="2ShVmc">
                <node concept="3uibUv" id="9UUIHLXF$W" role="HW$YZ">
                  <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="9UUIHLXF$X" role="3cqZAp" />
        <node concept="3clFbJ" id="9UUIHLXF_0" role="3cqZAp">
          <node concept="3clFbS" id="9UUIHLXF_1" role="3clFbx">
            <node concept="3clFbF" id="9UUIHLXF_2" role="3cqZAp">
              <node concept="2OqwBi" id="9UUIHLXF_3" role="3clFbG">
                <node concept="37vLTw" id="9UUIHLXF_4" role="2Oq$k0">
                  <ref role="3cqZAo" node="9UUIHLXF$R" resolve="usedLangs" />
                </node>
                <node concept="X8dFx" id="9UUIHLXF_5" role="2OqNvi">
                  <node concept="1rXfSq" id="9UUIHLXF_6" role="25WWJ7">
                    <ref role="37wK5l" node="500mE4_soZN" resolve="usedLanguages" />
                    <node concept="2OqwBi" id="9UUIHLXF_7" role="37wK5m">
                      <node concept="37vLTw" id="9UUIHLXF_8" role="2Oq$k0">
                        <ref role="3cqZAo" node="9UUIHLX$PQ" resolve="node" />
                      </node>
                      <node concept="I4A8Y" id="9UUIHLXF_9" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="9UUIHLXF_a" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="9UUIHLXF_b" role="3clFbw">
            <node concept="10Nm6u" id="9UUIHLXF_c" role="3uHU7w" />
            <node concept="2OqwBi" id="9UUIHLXF_d" role="3uHU7B">
              <node concept="37vLTw" id="9UUIHLXF_e" role="2Oq$k0">
                <ref role="3cqZAo" node="9UUIHLX$PQ" resolve="node" />
              </node>
              <node concept="I4A8Y" id="9UUIHLXF_f" role="2OqNvi" />
            </node>
          </node>
          <node concept="9aQIb" id="9UUIHLXF_g" role="9aQIa">
            <node concept="3clFbS" id="9UUIHLXF_h" role="9aQI4">
              <node concept="3clFbF" id="9UUIHLXF_i" role="3cqZAp">
                <node concept="2OqwBi" id="9UUIHLXF_j" role="3clFbG">
                  <property role="hSjvv" value="true" />
                  <node concept="2OqwBi" id="9UUIHLXF_k" role="2Oq$k0">
                    <property role="hSjvv" value="true" />
                    <node concept="37vLTw" id="9UUIHLXF_l" role="2Oq$k0">
                      <ref role="3cqZAo" node="9UUIHLX$PQ" resolve="node" />
                    </node>
                    <node concept="2Rf3mk" id="9UUIHLXF_m" role="2OqNvi">
                      <node concept="1xIGOp" id="9UUIHLXF_n" role="1xVPHs" />
                    </node>
                  </node>
                  <node concept="2es0OD" id="9UUIHLXF_o" role="2OqNvi">
                    <node concept="1bVj0M" id="9UUIHLXF_p" role="23t8la">
                      <node concept="3clFbS" id="9UUIHLXF_q" role="1bW5cS">
                        <node concept="3clFbF" id="9UUIHLXF_r" role="3cqZAp">
                          <node concept="2OqwBi" id="9UUIHLXF_s" role="3clFbG">
                            <node concept="37vLTw" id="9UUIHLXF_t" role="2Oq$k0">
                              <ref role="3cqZAo" node="9UUIHLXF$R" resolve="usedLangs" />
                            </node>
                            <node concept="TSZUe" id="9UUIHLXF_u" role="2OqNvi">
                              <node concept="2OqwBi" id="9UUIHLXF_v" role="25WWJ7">
                                <node concept="2OqwBi" id="9UUIHLXF_w" role="2Oq$k0">
                                  <node concept="2JrnkZ" id="9UUIHLXF_x" role="2Oq$k0">
                                    <node concept="37vLTw" id="9UUIHLXF_y" role="2JrQYb">
                                      <ref role="3cqZAo" node="6E5fMGvfKT6" resolve="it" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="9UUIHLXF_z" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="9UUIHLXF_$" role="2OqNvi">
                                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="6E5fMGvfKT6" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6E5fMGvfKT7" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="9UUIHLXF_B" role="3cqZAp">
                <node concept="2OqwBi" id="9UUIHLXF_C" role="3clFbG">
                  <property role="hSjvv" value="true" />
                  <node concept="2OqwBi" id="9UUIHLXF_D" role="2Oq$k0">
                    <property role="hSjvv" value="true" />
                    <node concept="2OqwBi" id="9UUIHLXF_E" role="2Oq$k0">
                      <property role="hSjvv" value="true" />
                      <node concept="2OqwBi" id="9UUIHLXF_F" role="2Oq$k0">
                        <property role="hSjvv" value="true" />
                        <node concept="2OqwBi" id="9UUIHLXF_G" role="2Oq$k0">
                          <property role="hSjvv" value="true" />
                          <node concept="2OqwBi" id="9UUIHLXF_H" role="2Oq$k0">
                            <property role="hSjvv" value="true" />
                            <node concept="2OqwBi" id="9UUIHLXF_I" role="2Oq$k0">
                              <property role="hSjvv" value="true" />
                              <node concept="37vLTw" id="9UUIHLXF_J" role="2Oq$k0">
                                <ref role="3cqZAo" node="9UUIHLX$PQ" resolve="node" />
                              </node>
                              <node concept="2Rf3mk" id="9UUIHLXF_K" role="2OqNvi">
                                <node concept="1xIGOp" id="9UUIHLXF_L" role="1xVPHs" />
                              </node>
                            </node>
                            <node concept="3goQfb" id="9UUIHLXF_M" role="2OqNvi">
                              <node concept="1bVj0M" id="9UUIHLXF_N" role="23t8la">
                                <node concept="3clFbS" id="9UUIHLXF_O" role="1bW5cS">
                                  <node concept="3clFbF" id="9UUIHLXF_P" role="3cqZAp">
                                    <node concept="2OqwBi" id="9UUIHLXF_Q" role="3clFbG">
                                      <node concept="37vLTw" id="9UUIHLXF_R" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6E5fMGvfKT8" resolve="it" />
                                      </node>
                                      <node concept="2z74zc" id="9UUIHLXF_S" role="2OqNvi" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="6E5fMGvfKT8" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="6E5fMGvfKT9" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3$u5V9" id="9UUIHLXF_V" role="2OqNvi">
                            <node concept="1bVj0M" id="9UUIHLXF_W" role="23t8la">
                              <node concept="3clFbS" id="9UUIHLXF_X" role="1bW5cS">
                                <node concept="3clFbF" id="9UUIHLXF_Y" role="3cqZAp">
                                  <node concept="2OqwBi" id="9UUIHLXF_Z" role="3clFbG">
                                    <node concept="37vLTw" id="9UUIHLXFA0" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6E5fMGvfKTa" resolve="ref" />
                                    </node>
                                    <node concept="2ZHEkA" id="9UUIHLXFA1" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                              <node concept="gl6BB" id="6E5fMGvfKTa" role="1bW2Oz">
                                <property role="TrG5h" value="ref" />
                                <node concept="2jxLKc" id="6E5fMGvfKTb" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1KnU$U" id="9UUIHLXFA4" role="2OqNvi" />
                      </node>
                      <node concept="3$u5V9" id="9UUIHLXFA5" role="2OqNvi">
                        <node concept="1bVj0M" id="9UUIHLXFA6" role="23t8la">
                          <node concept="3clFbS" id="9UUIHLXFA7" role="1bW5cS">
                            <node concept="3clFbF" id="9UUIHLXFA8" role="3cqZAp">
                              <node concept="2OqwBi" id="9UUIHLXFA9" role="3clFbG">
                                <node concept="37vLTw" id="9UUIHLXFAa" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6E5fMGvfKTc" resolve="it" />
                                </node>
                                <node concept="I4A8Y" id="9UUIHLXFAb" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="6E5fMGvfKTc" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="6E5fMGvfKTd" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1KnU$U" id="9UUIHLXFAe" role="2OqNvi" />
                  </node>
                  <node concept="2es0OD" id="9UUIHLXFAf" role="2OqNvi">
                    <node concept="1bVj0M" id="9UUIHLXFAg" role="23t8la">
                      <node concept="3clFbS" id="9UUIHLXFAh" role="1bW5cS">
                        <node concept="3clFbF" id="9UUIHLXFAi" role="3cqZAp">
                          <node concept="2OqwBi" id="9UUIHLXFAj" role="3clFbG">
                            <node concept="37vLTw" id="9UUIHLXFAk" role="2Oq$k0">
                              <ref role="3cqZAo" node="9UUIHLXF$R" resolve="usedLangs" />
                            </node>
                            <node concept="X8dFx" id="9UUIHLXFAl" role="2OqNvi">
                              <node concept="1rXfSq" id="9UUIHLXFAm" role="25WWJ7">
                                <ref role="37wK5l" node="500mE4_soZN" resolve="usedLanguages" />
                                <node concept="37vLTw" id="9UUIHLXFAn" role="37wK5m">
                                  <ref role="3cqZAo" node="6E5fMGvfKTe" resolve="m" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="6E5fMGvfKTe" role="1bW2Oz">
                        <property role="TrG5h" value="m" />
                        <node concept="2jxLKc" id="6E5fMGvfKTf" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="9UUIHLYuMl" role="3cqZAp" />
        <node concept="3clFbF" id="9UUIHLYKXJ" role="3cqZAp">
          <node concept="37vLTw" id="9UUIHLYKXH" role="3clFbG">
            <ref role="3cqZAo" node="9UUIHLXF$R" resolve="usedLangs" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="9UUIHLWP2J" role="jymVt" />
    <node concept="3clFb_" id="4pwDyRBwQ_v" role="jymVt">
      <property role="TrG5h" value="langRTs" />
      <node concept="37vLTG" id="4pwDyRBx4tZ" role="3clF46">
        <property role="TrG5h" value="slanguages" />
        <node concept="2hMVRd" id="IFW4V2CLPb" role="1tU5fm">
          <node concept="3uibUv" id="IFW4V2CLPd" role="2hN53Y">
            <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4pwDyRBwWaj" role="1B3o_S" />
      <node concept="3clFbS" id="4pwDyRBwQ_z" role="3clF47">
        <node concept="3clFbF" id="4pwDyRBxlUf" role="3cqZAp">
          <node concept="2ShNRf" id="9UUIHMPZiX" role="3clFbG">
            <node concept="2i4dXS" id="9UUIHMPZiY" role="2ShVmc">
              <node concept="3uibUv" id="9UUIHMPZiZ" role="HW$YZ">
                <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
              </node>
              <node concept="2OqwBi" id="9UUIHMPZj0" role="I$8f6">
                <node concept="2OqwBi" id="9UUIHMPZj1" role="2Oq$k0">
                  <node concept="37vLTw" id="9UUIHMPZj2" role="2Oq$k0">
                    <ref role="3cqZAo" node="4pwDyRBx4tZ" resolve="slanguages" />
                  </node>
                  <node concept="3$u5V9" id="9UUIHMPZj3" role="2OqNvi">
                    <node concept="1bVj0M" id="9UUIHMPZj4" role="23t8la">
                      <node concept="3clFbS" id="9UUIHMPZj5" role="1bW5cS">
                        <node concept="3clFbF" id="9UUIHMPZj6" role="3cqZAp">
                          <node concept="1rXfSq" id="9UUIHMPZj7" role="3clFbG">
                            <ref role="37wK5l" node="9UUIHMLp7b" resolve="langRT" />
                            <node concept="37vLTw" id="9UUIHMPZj8" role="37wK5m">
                              <ref role="3cqZAo" node="6E5fMGvfKTg" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="gl6BB" id="6E5fMGvfKTg" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6E5fMGvfKTh" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1KnU$U" id="9UUIHMPZjb" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2hMVRd" id="IFW4V2Dcqr" role="3clF45">
        <node concept="3uibUv" id="IFW4V2Dcqt" role="2hN53Y">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="9UUIHMLElL" role="jymVt" />
    <node concept="3clFb_" id="9UUIHMLp7b" role="jymVt">
      <property role="TrG5h" value="langRT" />
      <node concept="37vLTG" id="9UUIHMLp7c" role="3clF46">
        <property role="TrG5h" value="slang" />
        <node concept="3uibUv" id="9UUIHMMhXA" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
      <node concept="3Tm6S6" id="9UUIHMLp7f" role="1B3o_S" />
      <node concept="3clFbS" id="9UUIHMLp7g" role="3clF47">
        <node concept="3cpWs8" id="9UUIHMLp7_" role="3cqZAp">
          <node concept="3cpWsn" id="9UUIHMLp7A" role="3cpWs9">
            <property role="TrG5h" value="langrt" />
            <node concept="3uibUv" id="9UUIHMLp7B" role="1tU5fm">
              <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
            </node>
            <node concept="2OqwBi" id="9UUIHMLp7C" role="33vP2m">
              <node concept="2YIFZM" id="9UUIHMLp7D" role="2Oq$k0">
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
                <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                <node concept="37vLTw" id="9UUIHMLp7E" role="37wK5m">
                  <ref role="3cqZAo" node="IFW4V2$oee" resolve="repository" />
                </node>
              </node>
              <node concept="liA8E" id="9UUIHMLp7F" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="getLanguage" />
                <node concept="37vLTw" id="9UUIHMLp7G" role="37wK5m">
                  <ref role="3cqZAo" node="9UUIHMLp7c" resolve="slang" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="9UUIHMLp7H" role="3cqZAp">
          <node concept="3clFbS" id="9UUIHMLp7I" role="3clFbx">
            <node concept="RRSsy" id="9UUIHMLp7J" role="3cqZAp">
              <property role="RRSoG" value="gZ5fksE/warn" />
              <node concept="3cpWs3" id="9UUIHMLp7K" role="RRSoy">
                <node concept="Xl_RD" id="9UUIHMLp7L" role="3uHU7w">
                  <property role="Xl_RC" value="\&quot;" />
                </node>
                <node concept="3cpWs3" id="9UUIHMLp7M" role="3uHU7B">
                  <node concept="Xl_RD" id="9UUIHMLp7N" role="3uHU7B">
                    <property role="Xl_RC" value="no language runtime for \&quot;" />
                  </node>
                  <node concept="2OqwBi" id="9UUIHMLp7O" role="3uHU7w">
                    <node concept="37vLTw" id="9UUIHMLp7P" role="2Oq$k0">
                      <ref role="3cqZAo" node="9UUIHMLp7c" resolve="slang" />
                    </node>
                    <node concept="liA8E" id="9UUIHMLp7Q" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName()" resolve="getQualifiedName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="9UUIHMLp7S" role="3clFbw">
            <node concept="10Nm6u" id="9UUIHMLp7T" role="3uHU7w" />
            <node concept="37vLTw" id="9UUIHMLp7U" role="3uHU7B">
              <ref role="3cqZAo" node="9UUIHMLp7A" resolve="langrt" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9UUIHMLp8c" role="3cqZAp">
          <node concept="37vLTw" id="9UUIHMLp8d" role="3clFbG">
            <ref role="3cqZAo" node="9UUIHMLp7A" resolve="langrt" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="9UUIHMLVeN" role="3clF45">
        <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
      </node>
    </node>
    <node concept="3Tm1VV" id="NKt6ynorWR" role="1B3o_S" />
    <node concept="2tJIrI" id="5Zr$fBYCvQU" role="jymVt" />
    <node concept="3clFb_" id="1AsznI2x5QX" role="jymVt">
      <property role="TrG5h" value="primGetAspectClique" />
      <property role="od$2w" value="true" />
      <node concept="3uibUv" id="7lV$qKDijhU" role="3clF45">
        <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
        <node concept="16syzq" id="7lV$qKDik4I" role="11_B2D">
          <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1AsznI2xjt2" role="1B3o_S" />
      <node concept="3clFbS" id="1AsznI2x5R1" role="3clF47">
        <node concept="3cpWs8" id="1AsznI2z9VR" role="3cqZAp">
          <node concept="3cpWsn" id="1AsznI2z9VS" role="3cpWs9">
            <property role="TrG5h" value="queuesEmpty" />
            <node concept="10P_77" id="1AsznI2z8Hd" role="1tU5fm" />
            <node concept="1Wc70l" id="1AsznI2z9VT" role="33vP2m">
              <node concept="2OqwBi" id="1AsznI2z9VU" role="3uHU7w">
                <node concept="37vLTw" id="1AsznI2z9VV" role="2Oq$k0">
                  <ref role="3cqZAo" node="1AsznI2wpaF" resolve="droppedLanguagesQueue" />
                </node>
                <node concept="liA8E" id="1AsznI2z9VW" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Collection.isEmpty()" resolve="isEmpty" />
                </node>
              </node>
              <node concept="2OqwBi" id="1AsznI2z9VX" role="3uHU7B">
                <node concept="37vLTw" id="1AsznI2z9VY" role="2Oq$k0">
                  <ref role="3cqZAo" node="1AsznI2v2hd" resolve="newLanguagesQueue" />
                </node>
                <node concept="liA8E" id="1AsznI2z9VZ" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Collection.isEmpty()" resolve="isEmpty" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1AsznI2zOAs" role="3cqZAp">
          <node concept="3clFbS" id="1AsznI2zOAO" role="3clFbx">
            <node concept="3cpWs6" id="1AsznI2zTKO" role="3cqZAp">
              <node concept="37vLTw" id="7lV$qKDikE5" role="3cqZAk">
                <ref role="3cqZAo" node="5Zr$fBZpKI9" resolve="aspectClique" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="1AsznI2ztVD" role="3clFbw">
            <node concept="3y3z36" id="1AsznI2zCqF" role="3uHU7w">
              <node concept="10Nm6u" id="1AsznI2zJ5d" role="3uHU7w" />
              <node concept="37vLTw" id="1AsznI2zz8K" role="3uHU7B">
                <ref role="3cqZAo" node="5Zr$fBZpKI9" resolve="aspectClique" />
              </node>
            </node>
            <node concept="37vLTw" id="1AsznI2z9W0" role="3uHU7B">
              <ref role="3cqZAo" node="1AsznI2z9VS" resolve="queuesEmpty" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1AsznI2$LTY" role="3cqZAp" />
        <node concept="2$JKZl" id="1AsznI2_eCn" role="3cqZAp">
          <node concept="3clFbS" id="1AsznI2_eCp" role="2LFqv$">
            <node concept="3cpWs8" id="4nDRG5zP0lc" role="3cqZAp">
              <node concept="3cpWsn" id="4nDRG5zP0ld" role="3cpWs9">
                <property role="TrG5h" value="toRemove" />
                <node concept="3uibUv" id="4nDRG5zOY32" role="1tU5fm">
                  <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                </node>
                <node concept="2OqwBi" id="4nDRG5zP0le" role="33vP2m">
                  <node concept="37vLTw" id="4nDRG5zP0lf" role="2Oq$k0">
                    <ref role="3cqZAo" node="1AsznI2wpaF" resolve="droppedLanguagesQueue" />
                  </node>
                  <node concept="liA8E" id="4nDRG5zP0lg" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Queue.remove()" resolve="remove" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4nDRG5zOTu8" role="3cqZAp">
              <node concept="3clFbS" id="4nDRG5zOTua" role="3clFbx">
                <node concept="3clFbF" id="4nDRG5zPJVm" role="3cqZAp">
                  <node concept="2OqwBi" id="4nDRG5zPOC9" role="3clFbG">
                    <node concept="37vLTw" id="4nDRG5zPJVk" role="2Oq$k0">
                      <ref role="3cqZAo" node="4nDRG5zOb02" resolve="LOG" />
                    </node>
                    <node concept="liA8E" id="4nDRG5zPWv3" role="2OqNvi">
                      <ref role="37wK5l" to="wwqx:~Logger.debug(java.lang.String)" resolve="debug" />
                      <node concept="3cpWs3" id="4nDRG5zQoF$" role="37wK5m">
                        <node concept="37vLTw" id="4nDRG5zQu$g" role="3uHU7w">
                          <ref role="3cqZAo" node="4nDRG5zP0ld" resolve="toRemove" />
                        </node>
                        <node concept="Xl_RD" id="4nDRG5zQ2it" role="3uHU7B">
                          <property role="Xl_RC" value="drop language: " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4nDRG5zP$8R" role="3clFbw">
                <node concept="37vLTw" id="4nDRG5zPvbM" role="2Oq$k0">
                  <ref role="3cqZAo" node="4nDRG5zOb02" resolve="LOG" />
                </node>
                <node concept="liA8E" id="4nDRG5zPE5N" role="2OqNvi">
                  <ref role="37wK5l" to="wwqx:~Logger.isDebugLevel()" resolve="isDebugLevel" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1AsznI2_SbS" role="3cqZAp">
              <node concept="2OqwBi" id="1AsznI2_WVV" role="3clFbG">
                <node concept="37vLTw" id="1AsznI2_SbQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Zr$fBZNWFs" resolve="languages" />
                </node>
                <node concept="3dhRuq" id="1AsznI2A2FN" role="2OqNvi">
                  <node concept="37vLTw" id="4nDRG5zP0lh" role="25WWJ7">
                    <ref role="3cqZAo" node="4nDRG5zP0ld" resolve="remove" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="1AsznI2_jDs" role="2$JKZa">
            <node concept="2OqwBi" id="1AsznI2_jDt" role="3fr31v">
              <node concept="37vLTw" id="1AsznI2_jDu" role="2Oq$k0">
                <ref role="3cqZAo" node="1AsznI2wpaF" resolve="droppedLanguagesQueue" />
              </node>
              <node concept="liA8E" id="1AsznI2_jDv" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Collection.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="1AsznI2ACY1" role="3cqZAp">
          <node concept="3clFbS" id="1AsznI2ACY2" role="2LFqv$">
            <node concept="3cpWs8" id="4nDRG5zQG5X" role="3cqZAp">
              <node concept="3cpWsn" id="4nDRG5zQG5Y" role="3cpWs9">
                <property role="TrG5h" value="toAdd" />
                <node concept="3uibUv" id="4nDRG5zQCWS" role="1tU5fm">
                  <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                </node>
                <node concept="2OqwBi" id="4nDRG5zQG5Z" role="33vP2m">
                  <node concept="37vLTw" id="4nDRG5zQG60" role="2Oq$k0">
                    <ref role="3cqZAo" node="1AsznI2v2hd" resolve="newLanguagesQueue" />
                  </node>
                  <node concept="liA8E" id="4nDRG5zQG61" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Queue.remove()" resolve="remove" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4nDRG5zQY9M" role="3cqZAp">
              <node concept="3clFbS" id="4nDRG5zQY9N" role="3clFbx">
                <node concept="3clFbF" id="4nDRG5zQY9O" role="3cqZAp">
                  <node concept="2OqwBi" id="4nDRG5zQY9P" role="3clFbG">
                    <node concept="37vLTw" id="4nDRG5zQYaC" role="2Oq$k0">
                      <ref role="3cqZAo" node="4nDRG5zOb02" resolve="LOG" />
                    </node>
                    <node concept="liA8E" id="4nDRG5zQY9Q" role="2OqNvi">
                      <ref role="37wK5l" to="wwqx:~Logger.debug(java.lang.String)" resolve="debug" />
                      <node concept="3cpWs3" id="4nDRG5zQY9R" role="37wK5m">
                        <node concept="37vLTw" id="4nDRG5zQY9S" role="3uHU7w">
                          <ref role="3cqZAo" node="4nDRG5zQG5Y" resolve="toAdd" />
                        </node>
                        <node concept="Xl_RD" id="4nDRG5zQY9T" role="3uHU7B">
                          <property role="Xl_RC" value="introduce language: " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4nDRG5zQY9U" role="3clFbw">
                <node concept="37vLTw" id="4nDRG5zQYbm" role="2Oq$k0">
                  <ref role="3cqZAo" node="4nDRG5zOb02" resolve="LOG" />
                </node>
                <node concept="liA8E" id="4nDRG5zQY9V" role="2OqNvi">
                  <ref role="37wK5l" to="wwqx:~Logger.isDebugLevel()" resolve="isDebugLevel" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1AsznI2ACY3" role="3cqZAp">
              <node concept="2OqwBi" id="1AsznI2ACY4" role="3clFbG">
                <node concept="37vLTw" id="1AsznI2ACY5" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Zr$fBZNWFs" resolve="languages" />
                </node>
                <node concept="TSZUe" id="1AsznI2AOuI" role="2OqNvi">
                  <node concept="37vLTw" id="4nDRG5zQG62" role="25WWJ7">
                    <ref role="3cqZAo" node="4nDRG5zQG5Y" resolve="remove" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="1AsznI2ACYa" role="2$JKZa">
            <node concept="2OqwBi" id="1AsznI2ACYb" role="3fr31v">
              <node concept="37vLTw" id="1AsznI2ACYc" role="2Oq$k0">
                <ref role="3cqZAo" node="1AsznI2v2hd" resolve="newLanguagesQueue" />
              </node>
              <node concept="liA8E" id="1AsznI2ACYd" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Collection.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4nDRG5zRtRz" role="3cqZAp">
          <node concept="1PaTwC" id="4nDRG5zRtR$" role="1aUNEU">
            <node concept="3oM_SD" id="4nDRG5zRtR_" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="4nDRG5zR$2k" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="4nDRG5zR$2P" role="1PaTwD">
              <property role="3oM_SC" value="first" />
            </node>
            <node concept="3oM_SD" id="4nDRG5zR$3m" role="1PaTwD">
              <property role="3oM_SC" value="element" />
            </node>
            <node concept="3oM_SD" id="4nDRG5zR$3B" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="4nDRG5zR$3S" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="4nDRG5zR$3T" role="1PaTwD">
              <property role="3oM_SC" value="ever" />
            </node>
            <node concept="3oM_SD" id="4nDRG5zR$4q" role="1PaTwD">
              <property role="3oM_SC" value="accessed" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1AsznI2CjH2" role="3cqZAp">
          <node concept="37vLTI" id="1AsznI2CjH4" role="3clFbG">
            <node concept="37vLTw" id="1AsznI2CjH5" role="37vLTJ">
              <ref role="3cqZAo" node="5Zr$fBZpKI9" resolve="aspectClique" />
            </node>
            <node concept="2YIFZM" id="1AsznI2CjH7" role="37vLTx">
              <ref role="37wK5l" node="3KN3A4uV0IR" resolve="discoverAspectClique" />
              <ref role="1Pybhc" node="6nx4rRkNE1x" resolve="CliqueBuilder" />
              <node concept="37vLTw" id="1AsznI2CjH8" role="37wK5m">
                <ref role="3cqZAo" node="5Zr$fBZNWFs" resolve="languages" />
              </node>
              <node concept="37vLTw" id="1AsznI2CjH9" role="37wK5m">
                <ref role="3cqZAo" node="NKt6yno_yM" resolve="discoverable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4nDRG5zRMc9" role="3cqZAp">
          <node concept="3clFbS" id="4nDRG5zRMcb" role="3clFbx">
            <node concept="3clFbF" id="4nDRG5zSbkZ" role="3cqZAp">
              <node concept="2OqwBi" id="4nDRG5zSggF" role="3clFbG">
                <node concept="37vLTw" id="4nDRG5zSbkX" role="2Oq$k0">
                  <ref role="3cqZAo" node="4nDRG5zOb02" resolve="LOG" />
                </node>
                <node concept="liA8E" id="4nDRG5zSmci" role="2OqNvi">
                  <ref role="37wK5l" to="wwqx:~Logger.debug(java.lang.String)" resolve="debug" />
                  <node concept="3cpWs3" id="4nDRG5zU1q4" role="37wK5m">
                    <node concept="37vLTw" id="4nDRG5zU7xV" role="3uHU7w">
                      <ref role="3cqZAo" node="5Zr$fBZpKI9" resolve="aspectClique" />
                    </node>
                    <node concept="3cpWs3" id="4nDRG5zTfLR" role="3uHU7B">
                      <node concept="3cpWs3" id="4nDRG5zTmqd" role="3uHU7B">
                        <node concept="37vLTw" id="4nDRG5zTus5" role="3uHU7w">
                          <ref role="3cqZAo" node="5Zr$fBZNWFs" resolve="languages" />
                        </node>
                        <node concept="Xl_RD" id="4nDRG5zTfLX" role="3uHU7B">
                          <property role="Xl_RC" value="discovered for '" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="4nDRG5zTFMr" role="3uHU7w">
                        <property role="Xl_RC" value="': " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4nDRG5zRXp9" role="3clFbw">
            <node concept="37vLTw" id="4nDRG5zRSqR" role="2Oq$k0">
              <ref role="3cqZAo" node="4nDRG5zOb02" resolve="LOG" />
            </node>
            <node concept="liA8E" id="4nDRG5zS5nH" role="2OqNvi">
              <ref role="37wK5l" to="wwqx:~Logger.isDebugLevel()" resolve="isDebugLevel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4nDRG5zUBm0" role="3cqZAp">
          <node concept="37vLTw" id="4nDRG5zUBlY" role="3clFbG">
            <ref role="3cqZAo" node="5Zr$fBZpKI9" resolve="aspectClique" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1AsznI2wZKT" role="jymVt" />
    <node concept="3clFb_" id="1AsznI2sGf$" role="jymVt">
      <property role="TrG5h" value="enqueLoadedLanguages" />
      <node concept="37vLTG" id="1AsznI2ttpf" role="3clF46">
        <property role="TrG5h" value="loadedLangs" />
        <node concept="3uibUv" id="1AsznI2ttpg" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="1AsznI2ttph" role="11_B2D">
            <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1AsznI2sGfA" role="3clF45" />
      <node concept="3Tm6S6" id="1AsznI2sSnr" role="1B3o_S" />
      <node concept="3clFbS" id="1AsznI2sGfC" role="3clF47">
        <node concept="1DcWWT" id="1AsznI2v$vP" role="3cqZAp">
          <node concept="3clFbS" id="1AsznI2v$vS" role="2LFqv$">
            <node concept="3clFbF" id="1AsznI2vLma" role="3cqZAp">
              <node concept="2OqwBi" id="1AsznI2vQX7" role="3clFbG">
                <node concept="37vLTw" id="1AsznI2vLm9" role="2Oq$k0">
                  <ref role="3cqZAo" node="1AsznI2v2hd" resolve="newLanguagesQueue" />
                </node>
                <node concept="liA8E" id="1AsznI2vWCs" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Queue.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="1AsznI2w1lw" role="37wK5m">
                    <ref role="3cqZAo" node="1AsznI2v$vT" resolve="lr" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1AsznI2v$vT" role="1Duv9x">
            <property role="TrG5h" value="lr" />
            <node concept="3uibUv" id="1AsznI2v$vX" role="1tU5fm">
              <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
            </node>
          </node>
          <node concept="37vLTw" id="1AsznI2v$vY" role="1DdaDG">
            <ref role="3cqZAo" node="1AsznI2ttpf" resolve="loadedLangs" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1AsznI2tK_N" role="jymVt" />
    <node concept="3clFb_" id="1AsznI2tFjs" role="jymVt">
      <property role="TrG5h" value="dropUnloadedLanguages" />
      <node concept="37vLTG" id="1AsznI2tFjt" role="3clF46">
        <property role="TrG5h" value="unloadedLangs" />
        <node concept="3uibUv" id="1AsznI2tFju" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="1AsznI2tFjv" role="11_B2D">
            <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1AsznI2tFjw" role="3clF45" />
      <node concept="3Tm6S6" id="1AsznI2tFjx" role="1B3o_S" />
      <node concept="3clFbS" id="1AsznI2tFjy" role="3clF47">
        <node concept="1DcWWT" id="1AsznI2wJdM" role="3cqZAp">
          <node concept="3clFbS" id="1AsznI2wJdN" role="2LFqv$">
            <node concept="3clFbF" id="1AsznI2wJdO" role="3cqZAp">
              <node concept="2OqwBi" id="1AsznI2wJdP" role="3clFbG">
                <node concept="37vLTw" id="1AsznI2wJdQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="1AsznI2wpaF" resolve="droppedLanguagesQueue" />
                </node>
                <node concept="liA8E" id="1AsznI2wJdR" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Queue.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="1AsznI2wJdS" role="37wK5m">
                    <ref role="3cqZAo" node="1AsznI2wJdT" resolve="lr" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1AsznI2wJdT" role="1Duv9x">
            <property role="TrG5h" value="lr" />
            <node concept="3uibUv" id="1AsznI2wJdU" role="1tU5fm">
              <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
            </node>
          </node>
          <node concept="37vLTw" id="1AsznI2wJdV" role="1DdaDG">
            <ref role="3cqZAo" node="1AsznI2tFjt" resolve="unloadedLangs" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1AsznI2s_F4" role="jymVt" />
    <node concept="312cEu" id="3GJd70paCjO" role="jymVt">
      <property role="TrG5h" value="UsedLanguagesCache" />
      <node concept="312cEg" id="3GJd70pcJQ2" role="jymVt">
        <property role="TrG5h" value="userModel" />
        <node concept="3Tm6S6" id="3GJd70pcJQ0" role="1B3o_S" />
        <node concept="3uibUv" id="3GJd70pcJQ1" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="312cEg" id="3GJd70phuUB" role="jymVt">
        <property role="TrG5h" value="modelId" />
        <node concept="3Tm6S6" id="3GJd70phuU_" role="1B3o_S" />
        <node concept="3uibUv" id="3GJd70phuUA" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelId" resolve="SModelId" />
        </node>
      </node>
      <node concept="312cEg" id="3GJd70piqj8" role="jymVt">
        <property role="TrG5h" value="myModelListener" />
        <node concept="3Tm6S6" id="3GJd70piqj6" role="1B3o_S" />
        <node concept="3uibUv" id="3GJd70piqj7" role="1tU5fm">
          <ref role="3uigEE" node="3GJd70pebfK" resolve="AspectLookup.UsedLanguagesCache.MyModelListener" />
        </node>
      </node>
      <node concept="3clFbW" id="3GJd70pcbpJ" role="jymVt">
        <node concept="37vLTG" id="3GJd70pcd36" role="3clF46">
          <property role="TrG5h" value="userModel" />
          <node concept="H_c77" id="3GJd70pcdo4" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="3GJd70pd5X5" role="3clF46">
          <property role="TrG5h" value="languages" />
          <node concept="2hMVRd" id="3GJd70pd6lM" role="1tU5fm">
            <node concept="3uibUv" id="3GJd70pd6om" role="2hN53Y">
              <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3GJd70poIrQ" role="3clF46">
          <property role="TrG5h" value="queue" />
          <node concept="3uibUv" id="3GJd70poO7q" role="1tU5fm">
            <ref role="3uigEE" to="mpcv:~ReferenceQueue" resolve="ReferenceQueue" />
            <node concept="3uibUv" id="3GJd70pqZwn" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="3GJd70pcbpL" role="3clF45" />
        <node concept="3Tm6S6" id="3GJd70pcbpM" role="1B3o_S" />
        <node concept="3clFbS" id="3GJd70pcbpN" role="3clF47">
          <node concept="XkiVB" id="3GJd70ppfX3" role="3cqZAp">
            <ref role="37wK5l" to="mpcv:~SoftReference.&lt;init&gt;(java.lang.Object,java.lang.ref.ReferenceQueue)" resolve="SoftReference" />
            <node concept="37vLTw" id="3GJd70pplP3" role="37wK5m">
              <ref role="3cqZAo" node="3GJd70pd5X5" resolve="languages" />
            </node>
            <node concept="37vLTw" id="3GJd70ppC9X" role="37wK5m">
              <ref role="3cqZAo" node="3GJd70poIrQ" resolve="queue" />
            </node>
          </node>
          <node concept="3clFbF" id="3GJd70phuUL" role="3cqZAp">
            <node concept="37vLTI" id="3GJd70phuUM" role="3clFbG">
              <node concept="2OqwBi" id="3GJd70phuUN" role="37vLTJ">
                <node concept="Xjq3P" id="3GJd70phuUO" role="2Oq$k0" />
                <node concept="2OwXpG" id="3GJd70phuUP" role="2OqNvi">
                  <ref role="2Oxat5" node="3GJd70phuUB" resolve="modelId" />
                </node>
              </node>
              <node concept="2OqwBi" id="3GJd70phuUQ" role="37vLTx">
                <node concept="2JrnkZ" id="3GJd70phuUR" role="2Oq$k0">
                  <node concept="37vLTw" id="3GJd70phuUS" role="2JrQYb">
                    <ref role="3cqZAo" node="3GJd70pcd36" resolve="userModel" />
                  </node>
                </node>
                <node concept="liA8E" id="3GJd70phuUT" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getModelId()" resolve="getModelId" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3GJd70pcJQa" role="3cqZAp">
            <node concept="37vLTI" id="3GJd70pcJQb" role="3clFbG">
              <node concept="2OqwBi" id="3GJd70pcJQc" role="37vLTJ">
                <node concept="Xjq3P" id="3GJd70pcJQd" role="2Oq$k0" />
                <node concept="2OwXpG" id="3GJd70pcJQe" role="2OqNvi">
                  <ref role="2Oxat5" node="3GJd70pcJQ2" resolve="userModel" />
                </node>
              </node>
              <node concept="2JrnkZ" id="3GJd70pcJQf" role="37vLTx">
                <node concept="37vLTw" id="3GJd70pcJQg" role="2JrQYb">
                  <ref role="3cqZAo" node="3GJd70pcd36" resolve="userModel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3GJd70piqjg" role="3cqZAp">
            <node concept="37vLTI" id="3GJd70piqjh" role="3clFbG">
              <node concept="2OqwBi" id="3GJd70piqji" role="37vLTJ">
                <node concept="Xjq3P" id="3GJd70piqjj" role="2Oq$k0" />
                <node concept="2OwXpG" id="3GJd70piqjk" role="2OqNvi">
                  <ref role="2Oxat5" node="3GJd70piqj8" resolve="myModelListener" />
                </node>
              </node>
              <node concept="2ShNRf" id="3GJd70piqjl" role="37vLTx">
                <node concept="HV5vD" id="3GJd70piqjm" role="2ShVmc">
                  <property role="373rjd" value="true" />
                  <ref role="HV5vE" node="3GJd70pebfK" resolve="AspectLookup.UsedLanguagesCache.MyModelListener" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3GJd70pcdH3" role="3cqZAp">
            <node concept="2OqwBi" id="3GJd70pcF2F" role="3clFbG">
              <node concept="1eOMI4" id="3GJd70pcEen" role="2Oq$k0">
                <node concept="10QFUN" id="3GJd70pcEem" role="1eOMHV">
                  <node concept="2OqwBi" id="3GJd70pcS9$" role="10QFUP">
                    <node concept="Xjq3P" id="3GJd70pcRV8" role="2Oq$k0" />
                    <node concept="2OwXpG" id="3GJd70pcSHU" role="2OqNvi">
                      <ref role="2Oxat5" node="3GJd70pcJQ2" resolve="userModel" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="3GJd70pcE$E" role="10QFUM">
                    <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3GJd70pcFwQ" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~SModelInternal.addModelListener(jetbrains.mps.smodel.event.SModelListener)" resolve="addModelListener" />
                <node concept="2OqwBi" id="3GJd70piqjn" role="37wK5m">
                  <node concept="Xjq3P" id="3GJd70piqjo" role="2Oq$k0" />
                  <node concept="2OwXpG" id="3GJd70piqjp" role="2OqNvi">
                    <ref role="2Oxat5" node="3GJd70piqj8" resolve="myModelListener" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3GJd70pij6X" role="jymVt" />
      <node concept="312cEu" id="3GJd70pebfK" role="jymVt">
        <property role="2bfB8j" value="true" />
        <property role="TrG5h" value="MyModelListener" />
        <node concept="3Tm1VV" id="3GJd70pebfL" role="1B3o_S" />
        <node concept="3uibUv" id="3GJd70peevP" role="1zkMxy">
          <ref role="3uigEE" to="w1kc:~SModelAdapter" resolve="SModelAdapter" />
        </node>
        <node concept="3clFb_" id="3GJd70paWYM" role="jymVt">
          <property role="TrG5h" value="importAdded" />
          <node concept="3Tm1VV" id="3GJd70paWYN" role="1B3o_S" />
          <node concept="3cqZAl" id="3GJd70paWYP" role="3clF45" />
          <node concept="37vLTG" id="3GJd70paWYQ" role="3clF46">
            <property role="TrG5h" value="event" />
            <node concept="3uibUv" id="3GJd70paWYR" role="1tU5fm">
              <ref role="3uigEE" to="j9co:~SModelImportEvent" resolve="SModelImportEvent" />
            </node>
          </node>
          <node concept="3clFbS" id="3GJd70paWYS" role="3clF47">
            <node concept="3clFbF" id="3GJd70pbYkT" role="3cqZAp">
              <node concept="1rXfSq" id="3GJd70pbYkS" role="3clFbG">
                <ref role="37wK5l" node="3GJd70pbn2_" resolve="invalidate" />
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="3GJd70paWYT" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="3clFb_" id="3GJd70paWYX" role="jymVt">
          <property role="TrG5h" value="importRemoved" />
          <node concept="3Tm1VV" id="3GJd70paWYY" role="1B3o_S" />
          <node concept="3cqZAl" id="3GJd70paWZ0" role="3clF45" />
          <node concept="37vLTG" id="3GJd70paWZ1" role="3clF46">
            <property role="TrG5h" value="event" />
            <node concept="3uibUv" id="3GJd70paWZ2" role="1tU5fm">
              <ref role="3uigEE" to="j9co:~SModelImportEvent" resolve="SModelImportEvent" />
            </node>
          </node>
          <node concept="3clFbS" id="3GJd70paWZ3" role="3clF47">
            <node concept="3clFbF" id="3GJd70pbTmX" role="3cqZAp">
              <node concept="1rXfSq" id="3GJd70pbTmW" role="3clFbG">
                <ref role="37wK5l" node="3GJd70pbn2_" resolve="invalidate" />
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="3GJd70paWZ4" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="3clFb_" id="3GJd70pb6_k" role="jymVt">
          <property role="TrG5h" value="devkitAdded" />
          <node concept="3Tm1VV" id="3GJd70pb6_l" role="1B3o_S" />
          <node concept="3cqZAl" id="3GJd70pb6_n" role="3clF45" />
          <node concept="37vLTG" id="3GJd70pb6_o" role="3clF46">
            <property role="TrG5h" value="event" />
            <node concept="3uibUv" id="3GJd70pb6_p" role="1tU5fm">
              <ref role="3uigEE" to="j9co:~SModelDevKitEvent" resolve="SModelDevKitEvent" />
            </node>
          </node>
          <node concept="3clFbS" id="3GJd70pb6_q" role="3clF47">
            <node concept="3clFbF" id="3GJd70pbQ1V" role="3cqZAp">
              <node concept="1rXfSq" id="3GJd70pbQ1R" role="3clFbG">
                <ref role="37wK5l" node="3GJd70pbn2_" resolve="invalidate" />
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="3GJd70pb6_r" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="3clFb_" id="3GJd70pb6_v" role="jymVt">
          <property role="TrG5h" value="devkitRemoved" />
          <node concept="3Tm1VV" id="3GJd70pb6_w" role="1B3o_S" />
          <node concept="3cqZAl" id="3GJd70pb6_y" role="3clF45" />
          <node concept="37vLTG" id="3GJd70pb6_z" role="3clF46">
            <property role="TrG5h" value="event" />
            <node concept="3uibUv" id="3GJd70pb6_$" role="1tU5fm">
              <ref role="3uigEE" to="j9co:~SModelDevKitEvent" resolve="SModelDevKitEvent" />
            </node>
          </node>
          <node concept="3clFbS" id="3GJd70pb6__" role="3clF47">
            <node concept="3clFbF" id="3GJd70pbMAo" role="3cqZAp">
              <node concept="1rXfSq" id="3GJd70pbMAk" role="3clFbG">
                <ref role="37wK5l" node="3GJd70pbn2_" resolve="invalidate" />
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="3GJd70pb6_A" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="3clFb_" id="3GJd70pbdWX" role="jymVt">
          <property role="TrG5h" value="languageAdded" />
          <node concept="3Tm1VV" id="3GJd70pbdWY" role="1B3o_S" />
          <node concept="3cqZAl" id="3GJd70pbdX0" role="3clF45" />
          <node concept="37vLTG" id="3GJd70pbdX1" role="3clF46">
            <property role="TrG5h" value="event" />
            <node concept="3uibUv" id="3GJd70pbdX2" role="1tU5fm">
              <ref role="3uigEE" to="j9co:~SModelLanguageEvent" resolve="SModelLanguageEvent" />
            </node>
          </node>
          <node concept="3clFbS" id="3GJd70pbdX3" role="3clF47">
            <node concept="3clFbF" id="3GJd70pbKRm" role="3cqZAp">
              <node concept="1rXfSq" id="3GJd70pbKRi" role="3clFbG">
                <ref role="37wK5l" node="3GJd70pbn2_" resolve="invalidate" />
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="3GJd70pbdX4" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
        <node concept="3clFb_" id="3GJd70pbdX8" role="jymVt">
          <property role="TrG5h" value="languageRemoved" />
          <node concept="3Tm1VV" id="3GJd70pbdX9" role="1B3o_S" />
          <node concept="3cqZAl" id="3GJd70pbdXb" role="3clF45" />
          <node concept="37vLTG" id="3GJd70pbdXc" role="3clF46">
            <property role="TrG5h" value="event" />
            <node concept="3uibUv" id="3GJd70pbdXd" role="1tU5fm">
              <ref role="3uigEE" to="j9co:~SModelLanguageEvent" resolve="SModelLanguageEvent" />
            </node>
          </node>
          <node concept="3clFbS" id="3GJd70pbdXe" role="3clF47">
            <node concept="3clFbF" id="3GJd70pbJ5f" role="3cqZAp">
              <node concept="1rXfSq" id="3GJd70pbJ5b" role="3clFbG">
                <ref role="37wK5l" node="3GJd70pbn2_" resolve="invalidate" />
              </node>
            </node>
          </node>
          <node concept="2AHcQZ" id="3GJd70pbdXf" role="2AJF6D">
            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="3GJd70pbn2_" role="jymVt">
        <property role="TrG5h" value="invalidate" />
        <node concept="3cqZAl" id="3GJd70pbn2B" role="3clF45" />
        <node concept="3Tm6S6" id="3GJd70pbn2C" role="1B3o_S" />
        <node concept="3clFbS" id="3GJd70pbn2D" role="3clF47">
          <node concept="3clFbJ" id="3GJd70plTXm" role="3cqZAp">
            <node concept="3clFbS" id="3GJd70plTXo" role="3clFbx">
              <node concept="3clFbF" id="3GJd70phIGD" role="3cqZAp">
                <node concept="2OqwBi" id="3GJd70phOmv" role="3clFbG">
                  <node concept="liA8E" id="3GJd70phUfi" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~SModelInternal.removeModelListener(jetbrains.mps.smodel.event.SModelListener)" resolve="removeModelListener" />
                    <node concept="37vLTw" id="3GJd70piw9N" role="37wK5m">
                      <ref role="3cqZAo" node="3GJd70piqj8" resolve="myModelListener" />
                    </node>
                  </node>
                  <node concept="1eOMI4" id="3GJd70pi72e" role="2Oq$k0">
                    <node concept="10QFUN" id="3GJd70pi72f" role="1eOMHV">
                      <node concept="2OqwBi" id="3GJd70pi72g" role="10QFUP">
                        <node concept="Xjq3P" id="3GJd70pi72h" role="2Oq$k0" />
                        <node concept="2OwXpG" id="3GJd70pi72i" role="2OqNvi">
                          <ref role="2Oxat5" node="3GJd70pcJQ2" resolve="userModel" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="3GJd70pi72j" role="10QFUM">
                        <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="3GJd70pm5xj" role="3clFbw">
              <node concept="10Nm6u" id="3GJd70pmc8F" role="3uHU7w" />
              <node concept="37vLTw" id="3GJd70plZL7" role="3uHU7B">
                <ref role="3cqZAo" node="3GJd70pcJQ2" resolve="userModel" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3GJd70piH1p" role="3cqZAp">
            <node concept="37vLTI" id="3GJd70piXGh" role="3clFbG">
              <node concept="10Nm6u" id="3GJd70pj1ru" role="37vLTx" />
              <node concept="2OqwBi" id="3GJd70piLWA" role="37vLTJ">
                <node concept="Xjq3P" id="3GJd70piH1n" role="2Oq$k0" />
                <node concept="2OwXpG" id="3GJd70piRZF" role="2OqNvi">
                  <ref role="2Oxat5" node="3GJd70pcJQ2" resolve="userModel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3GJd70ps7of" role="3cqZAp">
            <node concept="1rXfSq" id="3GJd70ps7od" role="3clFbG">
              <ref role="37wK5l" to="mpcv:~Reference.clear()" resolve="clear" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3GJd70paPjK" role="1B3o_S" />
      <node concept="3uibUv" id="3GJd70pewyX" role="1zkMxy">
        <ref role="3uigEE" to="mpcv:~SoftReference" resolve="SoftReference" />
        <node concept="2hMVRd" id="3GJd70pe$uC" role="11_B2D">
          <node concept="3uibUv" id="3GJd70peAj6" role="2hN53Y">
            <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3GJd70pdPQP" role="jymVt" />
    <node concept="312cEg" id="3GJd70pdYgA" role="jymVt">
      <property role="TrG5h" value="referenceQueue" />
      <node concept="3Tm6S6" id="3GJd70pdYgB" role="1B3o_S" />
      <node concept="3uibUv" id="3GJd70pe6Gl" role="1tU5fm">
        <ref role="3uigEE" to="mpcv:~ReferenceQueue" resolve="ReferenceQueue" />
        <node concept="3uibUv" id="3GJd70peNsL" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2ShNRf" id="3GJd70peU$P" role="33vP2m">
        <node concept="1pGfFk" id="3GJd70peUyL" role="2ShVmc">
          <ref role="37wK5l" to="mpcv:~ReferenceQueue.&lt;init&gt;()" resolve="ReferenceQueue" />
          <node concept="3uibUv" id="3GJd70peUyM" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3GJd70pay2s" role="jymVt" />
    <node concept="312cEg" id="1AsznI2v2hd" role="jymVt">
      <property role="TrG5h" value="newLanguagesQueue" />
      <node concept="3Tm6S6" id="1AsznI2v2he" role="1B3o_S" />
      <node concept="3uibUv" id="1AsznI2veDF" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Queue" resolve="Queue" />
        <node concept="3uibUv" id="1AsznI2vmlg" role="11_B2D">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="2ShNRf" id="1AsznI2vqPy" role="33vP2m">
        <node concept="1pGfFk" id="1AsznI2vsQs" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="5zyv:~ConcurrentLinkedDeque.&lt;init&gt;()" resolve="ConcurrentLinkedDeque" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1AsznI2wpaF" role="jymVt">
      <property role="TrG5h" value="droppedLanguagesQueue" />
      <node concept="3Tm6S6" id="1AsznI2wpaG" role="1B3o_S" />
      <node concept="3uibUv" id="1AsznI2wpaH" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Queue" resolve="Queue" />
        <node concept="3uibUv" id="1AsznI2wpaI" role="11_B2D">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="2ShNRf" id="1AsznI2wpaJ" role="33vP2m">
        <node concept="1pGfFk" id="1AsznI2wpaK" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="5zyv:~ConcurrentLinkedDeque.&lt;init&gt;()" resolve="ConcurrentLinkedDeque" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1AsznI2wC$g" role="jymVt" />
    <node concept="312cEg" id="NKt6yno_yM" role="jymVt">
      <property role="TrG5h" value="discoverable" />
      <node concept="3Tm6S6" id="NKt6yno_yN" role="1B3o_S" />
      <node concept="3uibUv" id="NKt6yno_yP" role="1tU5fm">
        <ref role="3uigEE" node="NKt6ynom3d" resolve="AspectDiscoverable" />
        <node concept="3uibUv" id="6nx4rRkNkep" role="11_B2D">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
        <node concept="16syzq" id="NKt6ynpxB$" role="11_B2D">
          <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="16euLQ" id="NKt6ynoBYL" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3uibUv" id="NKt6ynoEWH" role="3ztrMU">
        <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
      </node>
    </node>
    <node concept="312cEg" id="IFW4V2$oee" role="jymVt">
      <property role="TrG5h" value="repository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="IFW4V2$oef" role="1B3o_S" />
      <node concept="3uibUv" id="IFW4V2$oeh" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="1AsznI2$pYI" role="jymVt" />
    <node concept="312cEg" id="5Zr$fBYRFKG" role="jymVt">
      <property role="TrG5h" value="usedLanguagesBySModelSystemId" />
      <node concept="3Tm6S6" id="5Zr$fBYRFKH" role="1B3o_S" />
      <node concept="3rvAFt" id="5Zr$fBYRJML" role="1tU5fm">
        <node concept="3uibUv" id="5Zr$fBYRLez" role="3rvQeY">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
        <node concept="3uibUv" id="3GJd70pmA9J" role="3rvSg0">
          <ref role="3uigEE" node="3GJd70paCjO" resolve="AspectLookup.UsedLanguagesCache" />
        </node>
      </node>
      <node concept="2ShNRf" id="5Zr$fBYRQSo" role="33vP2m">
        <node concept="3rGOSV" id="5Zr$fBYRQQi" role="2ShVmc">
          <node concept="3uibUv" id="5Zr$fBYRQQj" role="3rHrn6">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
          <node concept="3uibUv" id="3GJd70pmM3N" role="3rHtpV">
            <ref role="3uigEE" node="3GJd70paCjO" resolve="AspectLookup.UsedLanguagesCache" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1AsznI2$icc" role="jymVt" />
    <node concept="312cEg" id="5Zr$fBZNWFs" role="jymVt">
      <property role="TrG5h" value="languages" />
      <node concept="3Tm6S6" id="5Zr$fBZNWFt" role="1B3o_S" />
      <node concept="2hMVRd" id="5Zr$fBZO1E_" role="1tU5fm">
        <node concept="3uibUv" id="5Zr$fBZO2n_" role="2hN53Y">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="2ShNRf" id="5Zr$fBZO9AK" role="33vP2m">
        <node concept="2i4dXS" id="5Zr$fBZO9$L" role="2ShVmc">
          <node concept="3uibUv" id="5Zr$fBZO9$M" role="HW$YZ">
            <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5Zr$fBZpKI9" role="jymVt">
      <property role="TrG5h" value="aspectClique" />
      <node concept="3Tm6S6" id="5Zr$fBZpKIa" role="1B3o_S" />
      <node concept="3uibUv" id="5Zr$fBZpP2A" role="1tU5fm">
        <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
        <node concept="16syzq" id="5Zr$fBZpRGJ" role="11_B2D">
          <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
        </node>
      </node>
      <node concept="10Nm6u" id="5Zr$fBZpUw3" role="33vP2m" />
    </node>
  </node>
  <node concept="3HP615" id="NKt6yomNZE">
    <property role="TrG5h" value="CoderulesAspect" />
    <node concept="2tJIrI" id="NKt6yomOnK" role="jymVt" />
    <node concept="3clFb_" id="5EDW3XF61A_" role="jymVt">
      <property role="TrG5h" value="createManifest" />
      <node concept="3uibUv" id="5EDW3XF61BW" role="3clF45">
        <ref role="3uigEE" node="5EDW3XF5Z95" resolve="AbstractCoderulesManifest" />
      </node>
      <node concept="3Tm1VV" id="5EDW3XF61AB" role="1B3o_S" />
      <node concept="3clFbS" id="5EDW3XF61AC" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5EDW3XF61A$" role="jymVt" />
    <node concept="3Tm1VV" id="NKt6yomNZF" role="1B3o_S" />
    <node concept="3uibUv" id="NKt6yomOn_" role="3HQHJm">
      <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
    </node>
  </node>
  <node concept="312cEu" id="NKt6yp1COZ">
    <property role="TrG5h" value="AbstractCoderulesAspect" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="3KN3A4uZLbU" role="jymVt" />
    <node concept="2YIFZL" id="78H58oefoaA" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="discoverable" />
      <node concept="37vLTG" id="78H58oefoFj" role="3clF46">
        <property role="TrG5h" value="aspectClass" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="78H58oefoHS" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="78H58oefoIS" role="11_B2D">
            <ref role="16sUi3" node="78H58oefoAe" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="78H58oefnLj" role="3clF47">
        <node concept="3clFbH" id="78H58oefoRD" role="3cqZAp" />
        <node concept="3clFbF" id="78H58oefpuN" role="3cqZAp">
          <node concept="2ShNRf" id="78H58oefpuJ" role="3clFbG">
            <node concept="YeOm9" id="78H58oefpDG" role="2ShVmc">
              <node concept="1Y3b0j" id="78H58oefpDJ" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" node="NKt6ynom3d" resolve="AspectDiscoverable" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <node concept="3Tm1VV" id="78H58oefpDK" role="1B3o_S" />
                <node concept="2tJIrI" id="IFW4V2y6qE" role="jymVt" />
                <node concept="3clFb_" id="IFW4V2y7jR" role="jymVt">
                  <property role="TrG5h" value="aspectClass" />
                  <node concept="3uibUv" id="IFW4V2y7jS" role="3clF45">
                    <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                    <node concept="16syzq" id="IFW4V2y7jZ" role="11_B2D">
                      <ref role="16sUi3" node="78H58oefoAe" resolve="T" />
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="IFW4V2y7jU" role="1B3o_S" />
                  <node concept="3clFbS" id="IFW4V2y7k0" role="3clF47">
                    <node concept="3clFbF" id="IFW4V2y7k3" role="3cqZAp">
                      <node concept="37vLTw" id="IFW4V2y8yu" role="3clFbG">
                        <ref role="3cqZAo" node="78H58oefoFj" resolve="aspectClass" />
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="IFW4V2y7k1" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="IFW4V2y6st" role="jymVt" />
                <node concept="3clFb_" id="78H58oefpDL" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="discover" />
                  <node concept="37vLTG" id="78H58oefpDM" role="3clF46">
                    <property role="TrG5h" value="languageRuntime" />
                    <node concept="3uibUv" id="78H58oefpDN" role="1tU5fm">
                      <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                    </node>
                  </node>
                  <node concept="16syzq" id="78H58oefq5S" role="3clF45">
                    <ref role="16sUi3" node="78H58oefoAe" resolve="T" />
                  </node>
                  <node concept="3Tm1VV" id="78H58oefpDP" role="1B3o_S" />
                  <node concept="3clFbS" id="78H58oefpDR" role="3clF47">
                    <node concept="3cpWs8" id="78H58oefro8" role="3cqZAp">
                      <node concept="3cpWsn" id="78H58oefro9" role="3cpWs9">
                        <property role="TrG5h" value="aspect" />
                        <node concept="16syzq" id="78H58oefrnW" role="1tU5fm">
                          <ref role="16sUi3" node="78H58oefoAe" resolve="T" />
                        </node>
                        <node concept="2OqwBi" id="78H58oefroa" role="33vP2m">
                          <node concept="37vLTw" id="78H58oefrob" role="2Oq$k0">
                            <ref role="3cqZAo" node="78H58oefpDM" resolve="languageRuntime" />
                          </node>
                          <node concept="liA8E" id="78H58oefroc" role="2OqNvi">
                            <ref role="37wK5l" to="vndm:~LanguageRuntime.getAspect(java.lang.Class)" resolve="getAspect" />
                            <node concept="37vLTw" id="78H58oefrod" role="37wK5m">
                              <ref role="3cqZAo" node="78H58oefoFj" resolve="aspectClass" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="78H58oefrrA" role="3cqZAp">
                      <node concept="3clFbS" id="78H58oefrrB" role="3clFbx">
                        <node concept="3clFbJ" id="78H58oefrrC" role="3cqZAp">
                          <node concept="3clFbS" id="78H58oefrrD" role="3clFbx">
                            <node concept="3clFbF" id="78H58oefrrE" role="3cqZAp">
                              <node concept="2OqwBi" id="78H58oefrrF" role="3clFbG">
                                <node concept="37vLTw" id="78H58oefrrG" role="2Oq$k0">
                                  <ref role="3cqZAo" node="78H58oefro9" resolve="aspect" />
                                </node>
                                <node concept="liA8E" id="78H58oefrrH" role="2OqNvi">
                                  <ref role="37wK5l" node="7P_FdVQ2EWw" resolve="setLanguageRuntime" />
                                  <node concept="37vLTw" id="78H58oefrrI" role="37wK5m">
                                    <ref role="3cqZAo" node="78H58oefpDM" resolve="languageRuntime" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbC" id="78H58oefrrJ" role="3clFbw">
                            <node concept="10Nm6u" id="78H58oefrrK" role="3uHU7w" />
                            <node concept="2OqwBi" id="78H58oefrrL" role="3uHU7B">
                              <node concept="37vLTw" id="78H58oefrrM" role="2Oq$k0">
                                <ref role="3cqZAo" node="78H58oefro9" resolve="aspect" />
                              </node>
                              <node concept="liA8E" id="78H58oefrrN" role="2OqNvi">
                                <ref role="37wK5l" node="7P_FdVQ2VEI" resolve="languageRuntime" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3y3z36" id="78H58oefrrO" role="3clFbw">
                        <node concept="10Nm6u" id="78H58oefrrP" role="3uHU7w" />
                        <node concept="37vLTw" id="78H58oefrrQ" role="3uHU7B">
                          <ref role="3cqZAo" node="78H58oefro9" resolve="aspect" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="78H58oefqIz" role="3cqZAp">
                      <node concept="37vLTw" id="78H58oefroe" role="3clFbG">
                        <ref role="3cqZAo" node="78H58oefro9" resolve="aspect" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="6nx4rRkNe56" role="2Ghqu4">
                  <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                </node>
                <node concept="16syzq" id="78H58oefpTf" role="2Ghqu4">
                  <ref role="16sUi3" node="78H58oefoAe" resolve="T" />
                </node>
                <node concept="2tJIrI" id="6nx4rRkM0Py" role="jymVt" />
                <node concept="3clFb_" id="6nx4rRkM0XI" role="jymVt">
                  <property role="TrG5h" value="isSidekick" />
                  <node concept="37vLTG" id="6nx4rRkM0XJ" role="3clF46">
                    <property role="TrG5h" value="sidekick" />
                    <node concept="3uibUv" id="6nx4rRkM0XK" role="1tU5fm">
                      <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="6nx4rRkM0XL" role="3clF46">
                    <property role="TrG5h" value="authority" />
                    <node concept="3uibUv" id="6nx4rRkM0XM" role="1tU5fm">
                      <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                    </node>
                  </node>
                  <node concept="10P_77" id="6nx4rRkM0XN" role="3clF45" />
                  <node concept="3Tm1VV" id="6nx4rRkM0XO" role="1B3o_S" />
                  <node concept="3clFbS" id="6nx4rRkM0XV" role="3clF47">
                    <node concept="3SKdUt" id="6nx4rRkM1dD" role="3cqZAp">
                      <node concept="1PaTwC" id="6nx4rRkM1dE" role="1aUNEU">
                        <node concept="3oM_SD" id="6nx4rRkM1dF" role="1PaTwD">
                          <property role="3oM_SC" value="assuming" />
                        </node>
                        <node concept="3oM_SD" id="6nx4rRkM1dG" role="1PaTwD">
                          <property role="3oM_SC" value="`sidekick`" />
                        </node>
                        <node concept="3oM_SD" id="6nx4rRkM1dH" role="1PaTwD">
                          <property role="3oM_SC" value="extends" />
                        </node>
                        <node concept="3oM_SD" id="6nx4rRkM1dI" role="1PaTwD">
                          <property role="3oM_SC" value="`authority`" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="6nx4rRkM1dJ" role="3cqZAp">
                      <node concept="3cpWsn" id="6nx4rRkM1dK" role="3cpWs9">
                        <property role="TrG5h" value="ans" />
                        <node concept="17QB3L" id="6nx4rRkM1vG" role="1tU5fm" />
                        <node concept="2OqwBi" id="6nx4rRkM1dM" role="33vP2m">
                          <node concept="37vLTw" id="6nx4rRkM1dN" role="2Oq$k0">
                            <ref role="3cqZAo" node="6nx4rRkM0XL" resolve="authority" />
                          </node>
                          <node concept="liA8E" id="6nx4rRkM1dO" role="2OqNvi">
                            <ref role="37wK5l" to="vndm:~LanguageRuntime.getNamespace()" resolve="getNamespace" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="6nx4rRkM1dP" role="3cqZAp">
                      <node concept="3cpWsn" id="6nx4rRkM1dQ" role="3cpWs9">
                        <property role="TrG5h" value="sns" />
                        <node concept="17QB3L" id="6nx4rRkM1Mj" role="1tU5fm" />
                        <node concept="2OqwBi" id="6nx4rRkM1dS" role="33vP2m">
                          <node concept="37vLTw" id="6nx4rRkM1dT" role="2Oq$k0">
                            <ref role="3cqZAo" node="6nx4rRkM0XJ" resolve="sidekick" />
                          </node>
                          <node concept="liA8E" id="6nx4rRkM1dU" role="2OqNvi">
                            <ref role="37wK5l" to="vndm:~LanguageRuntime.getNamespace()" resolve="getNamespace" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="6nx4rRkM1dV" role="3cqZAp">
                      <node concept="1Wc70l" id="5Zr$fC0niwl" role="3cqZAk">
                        <node concept="1Wc70l" id="5Zr$fC06WZK" role="3uHU7B">
                          <node concept="3clFbC" id="5Zr$fC0niwc" role="3uHU7B">
                            <node concept="3cpWs3" id="5Zr$fC0niwd" role="3uHU7w">
                              <node concept="3cmrfG" id="5Zr$fC0niwe" role="3uHU7w">
                                <property role="3cmrfH" value="3" />
                              </node>
                              <node concept="2OqwBi" id="5Zr$fC0niwf" role="3uHU7B">
                                <node concept="37vLTw" id="5Zr$fC0niwg" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6nx4rRkM1dK" resolve="ans" />
                                </node>
                                <node concept="liA8E" id="5Zr$fC0niwh" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="5Zr$fC0niwi" role="3uHU7B">
                              <node concept="37vLTw" id="5Zr$fC0niwj" role="2Oq$k0">
                                <ref role="3cqZAo" node="6nx4rRkM1dQ" resolve="sns" />
                              </node>
                              <node concept="liA8E" id="5Zr$fC0niwk" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="5Zr$fC0niwm" role="3uHU7w">
                            <node concept="37vLTw" id="5Zr$fC0niwn" role="2Oq$k0">
                              <ref role="3cqZAo" node="6nx4rRkM1dQ" resolve="sns" />
                            </node>
                            <node concept="liA8E" id="5Zr$fC0niwo" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                              <node concept="Xl_RD" id="5Zr$fC0niwp" role="37wK5m">
                                <property role="Xl_RC" value="Ext" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5Zr$fC0niwq" role="3uHU7w">
                          <node concept="37vLTw" id="5Zr$fC0niwr" role="2Oq$k0">
                            <ref role="3cqZAo" node="6nx4rRkM1dQ" resolve="sns" />
                          </node>
                          <node concept="liA8E" id="5Zr$fC0niws" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                            <node concept="37vLTw" id="5Zr$fC0niwt" role="37wK5m">
                              <ref role="3cqZAo" node="6nx4rRkM1dK" resolve="ans" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="6nx4rRkM0XW" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="6nx4rRkOjS5" role="jymVt" />
                <node concept="3clFb_" id="6nx4rRkOk7U" role="jymVt">
                  <property role="TrG5h" value="getExtending" />
                  <node concept="3uibUv" id="6nx4rRkOk7V" role="3clF45">
                    <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                    <node concept="3uibUv" id="6nx4rRkOk84" role="11_B2D">
                      <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="6nx4rRkOk7X" role="1B3o_S" />
                  <node concept="37vLTG" id="6nx4rRkOk7Z" role="3clF46">
                    <property role="TrG5h" value="lang" />
                    <node concept="3uibUv" id="6nx4rRkOk85" role="1tU5fm">
                      <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="6nx4rRkOk86" role="3clF47">
                    <node concept="3clFbF" id="6nx4rRkOla$" role="3cqZAp">
                      <node concept="2OqwBi" id="6nx4rRkOleS" role="3clFbG">
                        <node concept="37vLTw" id="6nx4rRkOlaz" role="2Oq$k0">
                          <ref role="3cqZAo" node="6nx4rRkOk7Z" resolve="lang" />
                        </node>
                        <node concept="liA8E" id="6nx4rRkOlrF" role="2OqNvi">
                          <ref role="37wK5l" to="vndm:~LanguageRuntime.getExtendingLanguages()" resolve="getExtendingLanguages" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="6nx4rRkOk87" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="6nx4rRkOkU6" role="jymVt" />
                <node concept="3clFb_" id="6nx4rRkOk8a" role="jymVt">
                  <property role="TrG5h" value="getExtended" />
                  <node concept="3uibUv" id="6nx4rRkOk8b" role="3clF45">
                    <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                    <node concept="3uibUv" id="6nx4rRkOk8l" role="11_B2D">
                      <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="6nx4rRkOk8d" role="1B3o_S" />
                  <node concept="37vLTG" id="6nx4rRkOk8f" role="3clF46">
                    <property role="TrG5h" value="lang" />
                    <node concept="3uibUv" id="6nx4rRkOk8k" role="1tU5fm">
                      <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="6nx4rRkOk8m" role="3clF47">
                    <node concept="3clFbF" id="6nx4rRkOlwg" role="3cqZAp">
                      <node concept="2OqwBi" id="6nx4rRkOlww" role="3clFbG">
                        <node concept="37vLTw" id="6nx4rRkOlwf" role="2Oq$k0">
                          <ref role="3cqZAo" node="6nx4rRkOk8f" resolve="lang" />
                        </node>
                        <node concept="liA8E" id="6nx4rRkOlCz" role="2OqNvi">
                          <ref role="37wK5l" to="vndm:~LanguageRuntime.getExtendedLanguages()" resolve="getExtendedLanguages" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="6nx4rRkOk8n" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="6nx4rRkOkrG" role="jymVt" />
                <node concept="3clFb_" id="6nx4rRkVEye" role="jymVt">
                  <property role="TrG5h" value="getNamespace" />
                  <node concept="37vLTG" id="6nx4rRkVEyf" role="3clF46">
                    <property role="TrG5h" value="lang" />
                    <node concept="3uibUv" id="6nx4rRkVEyn" role="1tU5fm">
                      <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                    </node>
                  </node>
                  <node concept="17QB3L" id="6nx4rRkVEyh" role="3clF45" />
                  <node concept="3Tm1VV" id="6nx4rRkVEyi" role="1B3o_S" />
                  <node concept="3clFbS" id="6nx4rRkVEyo" role="3clF47">
                    <node concept="3clFbF" id="6nx4rRkVESy" role="3cqZAp">
                      <node concept="2OqwBi" id="6nx4rRkVEWN" role="3clFbG">
                        <node concept="37vLTw" id="6nx4rRkVESx" role="2Oq$k0">
                          <ref role="3cqZAo" node="6nx4rRkVEyf" resolve="lang" />
                        </node>
                        <node concept="liA8E" id="6nx4rRkVFaG" role="2OqNvi">
                          <ref role="37wK5l" to="vndm:~LanguageRuntime.getNamespace()" resolve="getNamespace" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="6nx4rRkVEyp" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="78H58oefoRF" role="3cqZAp" />
      </node>
      <node concept="3uibUv" id="78H58oefqi0" role="3clF45">
        <ref role="3uigEE" node="NKt6ynom3d" resolve="AspectDiscoverable" />
        <node concept="3uibUv" id="6nx4rRkNdEY" role="11_B2D">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
        <node concept="16syzq" id="78H58oefqAI" role="11_B2D">
          <ref role="16sUi3" node="78H58oefoAe" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="78H58oefnLi" role="1B3o_S" />
      <node concept="16euLQ" id="78H58oefoAe" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="78H58oefoCM" role="3ztrMU">
          <ref role="3uigEE" node="NKt6yp1COZ" resolve="AbstractCoderulesAspect" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KN3A4uZLGZ" role="jymVt" />
    <node concept="3clFb_" id="7P_FdVQ2VEI" role="jymVt">
      <property role="TrG5h" value="languageRuntime" />
      <node concept="3uibUv" id="7P_FdVQ2ZEv" role="3clF45">
        <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
      </node>
      <node concept="3Tm1VV" id="NKt6yp3VKr" role="1B3o_S" />
      <node concept="3clFbS" id="7P_FdVQ2VEM" role="3clF47">
        <node concept="3clFbF" id="7P_FdVQ33FW" role="3cqZAp">
          <node concept="2OqwBi" id="7P_FdVQ4dGp" role="3clFbG">
            <node concept="37vLTw" id="7P_FdVQ33FV" role="2Oq$k0">
              <ref role="3cqZAo" node="7P_FdVQ2BHb" resolve="languageRuntime" />
            </node>
            <node concept="liA8E" id="7P_FdVQ4e7J" role="2OqNvi">
              <ref role="37wK5l" to="i5cy:~AtomicReference.get()" resolve="get" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7P_FdVQ30T0" role="jymVt" />
    <node concept="3clFb_" id="7P_FdVQ2EWw" role="jymVt">
      <property role="TrG5h" value="setLanguageRuntime" />
      <node concept="37vLTG" id="7P_FdVQ2PYd" role="3clF46">
        <property role="TrG5h" value="langrt" />
        <node concept="3uibUv" id="7P_FdVQ2Rb$" role="1tU5fm">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="3cqZAl" id="7P_FdVQ2EWy" role="3clF45" />
      <node concept="3Tm1VV" id="NKt6yp3VN1" role="1B3o_S" />
      <node concept="3clFbS" id="7P_FdVQ2EW$" role="3clF47">
        <node concept="3clFbF" id="7P_FdVQ4ekh" role="3cqZAp">
          <node concept="2OqwBi" id="7P_FdVQ4f5G" role="3clFbG">
            <node concept="2OqwBi" id="7P_FdVQ4eue" role="2Oq$k0">
              <node concept="Xjq3P" id="7P_FdVQ4ekf" role="2Oq$k0" />
              <node concept="2OwXpG" id="7P_FdVQ4eLj" role="2OqNvi">
                <ref role="2Oxat5" node="7P_FdVQ2BHb" resolve="languageRuntime" />
              </node>
            </node>
            <node concept="liA8E" id="7P_FdVQ4fZN" role="2OqNvi">
              <ref role="37wK5l" to="i5cy:~AtomicReference.compareAndSet(java.lang.Object,java.lang.Object)" resolve="compareAndSet" />
              <node concept="10Nm6u" id="7P_FdVQ4g7y" role="37wK5m" />
              <node concept="37vLTw" id="7P_FdVQ4gmf" role="37wK5m">
                <ref role="3cqZAo" node="7P_FdVQ2PYd" resolve="langrt" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7P_FdVQ2DqC" role="jymVt" />
    <node concept="312cEg" id="7P_FdVQ2BHb" role="jymVt">
      <property role="TrG5h" value="languageRuntime" />
      <node concept="3Tm6S6" id="7P_FdVQ2BHc" role="1B3o_S" />
      <node concept="3uibUv" id="7P_FdVQ4cOz" role="1tU5fm">
        <ref role="3uigEE" to="i5cy:~AtomicReference" resolve="AtomicReference" />
        <node concept="3uibUv" id="7P_FdVQ4d7k" role="11_B2D">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="2ShNRf" id="7P_FdVQ4diU" role="33vP2m">
        <node concept="1pGfFk" id="7P_FdVQ4dhf" role="2ShVmc">
          <ref role="37wK5l" to="i5cy:~AtomicReference.&lt;init&gt;(java.lang.Object)" resolve="AtomicReference" />
          <node concept="10Nm6u" id="7P_FdVQ4du3" role="37wK5m" />
          <node concept="3uibUv" id="7P_FdVQ4dhg" role="1pMfVU">
            <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="NKt6yp1CQN" role="jymVt" />
    <node concept="3Tm1VV" id="NKt6yp1CP0" role="1B3o_S" />
    <node concept="3uibUv" id="NKt6yp1CQm" role="EKbjA">
      <ref role="3uigEE" node="NKt6yomNZE" resolve="CoderulesAspect" />
    </node>
  </node>
  <node concept="312cEu" id="3KN3A4uUhmW">
    <property role="TrG5h" value="AspectClique" />
    <node concept="2tJIrI" id="9UUIHMvfPN" role="jymVt" />
    <node concept="3clFb_" id="4ekZiHe4j$O" role="jymVt">
      <property role="TrG5h" value="isEmpty" />
      <node concept="10P_77" id="4ekZiHe4m6f" role="3clF45" />
      <node concept="3Tm1VV" id="4ekZiHe4j$R" role="1B3o_S" />
      <node concept="3clFbS" id="4ekZiHe4j$S" role="3clF47">
        <node concept="3clFbF" id="4ekZiHe4ukw" role="3cqZAp">
          <node concept="2OqwBi" id="4ekZiHe4vpn" role="3clFbG">
            <node concept="37vLTw" id="4ekZiHe4ukv" role="2Oq$k0">
              <ref role="3cqZAo" node="3KN3A4uXGOp" resolve="aspects" />
            </node>
            <node concept="1v1jN8" id="4ekZiHe4wwk" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4ekZiHe4hfn" role="jymVt" />
    <node concept="3clFb_" id="3KN3A4uUhpW" role="jymVt">
      <property role="TrG5h" value="aspects" />
      <node concept="_YKpA" id="3KN3A4uUhtj" role="3clF45">
        <node concept="16syzq" id="_tf6vzf9Zd" role="_ZDj9">
          <ref role="16sUi3" node="3KN3A4uUhop" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3KN3A4uUhpZ" role="1B3o_S" />
      <node concept="3clFbS" id="3KN3A4uUhq0" role="3clF47">
        <node concept="3clFbF" id="3KN3A4uXJdv" role="3cqZAp">
          <node concept="37vLTw" id="3KN3A4uXJdu" role="3clFbG">
            <ref role="3cqZAo" node="3KN3A4uXGOp" resolve="aspects" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="3KN3A4uUhu7" role="lGtFl">
        <node concept="TZ5HA" id="3KN3A4uUhu8" role="TZ5H$">
          <node concept="1dT_AC" id="3KN3A4uUhu9" role="1dT_Ay">
            <property role="1dT_AB" value="List of aspects in this clique sorted from most specific to most abstract." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KN3A4vyYmz" role="jymVt" />
    <node concept="3clFb_" id="5MNibEMUCXK" role="jymVt">
      <property role="TrG5h" value="uniqueKey" />
      <node concept="3uibUv" id="5MNibEMUHth" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="5MNibEMUCXN" role="1B3o_S" />
      <node concept="3clFbS" id="5MNibEMUCXO" role="3clF47">
        <node concept="3clFbF" id="5MNibEMUYdW" role="3cqZAp">
          <node concept="37vLTw" id="5MNibEMUYdV" role="3clFbG">
            <ref role="3cqZAo" node="5MNibEMUq5h" resolve="namespaceBits" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Zr$fBYVo3G" role="jymVt" />
    <node concept="3clFb_" id="5Zr$fBYVoZB" role="jymVt">
      <property role="TrG5h" value="select" />
      <node concept="3uibUv" id="5Zr$fBYVpS0" role="3clF45">
        <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
        <node concept="16syzq" id="5Zr$fBYVqTn" role="11_B2D">
          <ref role="16sUi3" node="3KN3A4uUhop" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5Zr$fBYVoZE" role="1B3o_S" />
      <node concept="3clFbS" id="5Zr$fBYVoZF" role="3clF47">
        <node concept="3cpWs8" id="5Zr$fBZgID8" role="3cqZAp">
          <node concept="3cpWsn" id="5Zr$fBZgIDb" role="3cpWs9">
            <property role="TrG5h" value="selectedAspects" />
            <node concept="2hMVRd" id="5Zr$fBZgID4" role="1tU5fm">
              <node concept="16syzq" id="5Zr$fBZgJgR" role="2hN53Y">
                <ref role="16sUi3" node="3KN3A4uUhop" resolve="T" />
              </node>
            </node>
            <node concept="2ShNRf" id="5Zr$fBZgMkM" role="33vP2m">
              <node concept="2i4dXS" id="5Zr$fBZgMjr" role="2ShVmc">
                <node concept="16syzq" id="5Zr$fBZgMjs" role="HW$YZ">
                  <ref role="16sUi3" node="3KN3A4uUhop" resolve="T" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5Zr$fBZgZHb" role="3cqZAp">
          <node concept="3cpWsn" id="5Zr$fBZgZHh" role="3cpWs9">
            <property role="TrG5h" value="selectedAspectByNamespace" />
            <node concept="3rvAFt" id="5Zr$fBZgZHj" role="1tU5fm">
              <node concept="17QB3L" id="5Zr$fBZh2Yy" role="3rvQeY" />
              <node concept="16syzq" id="5Zr$fBZh3B1" role="3rvSg0">
                <ref role="16sUi3" node="3KN3A4uUhop" resolve="T" />
              </node>
            </node>
            <node concept="2ShNRf" id="5Zr$fBZh6RY" role="33vP2m">
              <node concept="3rGOSV" id="5Zr$fBZh6Qz" role="2ShVmc">
                <node concept="17QB3L" id="5Zr$fBZh6Q$" role="3rHrn6" />
                <node concept="16syzq" id="5Zr$fBZh6Q_" role="3rHtpV">
                  <ref role="16sUi3" node="3KN3A4uUhop" resolve="T" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5Zr$fBZ6Gmr" role="3cqZAp">
          <node concept="3clFbS" id="5Zr$fBZ6Gmu" role="2LFqv$">
            <node concept="3clFbJ" id="5Zr$fBZ6IvG" role="3cqZAp">
              <node concept="2OqwBi" id="5Zr$fBZ6TkJ" role="3clFbw">
                <node concept="37vLTw" id="5Zr$fBZ6P27" role="2Oq$k0">
                  <ref role="3cqZAo" node="5MNibEMUq5h" resolve="namespaceBits" />
                </node>
                <node concept="liA8E" id="5Zr$fBZ6TY_" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~BitSet.get(int)" resolve="get" />
                  <node concept="1rXfSq" id="5Zr$fBZ6UCu" role="37wK5m">
                    <ref role="37wK5l" node="5MNibEMTTHy" resolve="namespaceId" />
                    <node concept="37vLTw" id="5Zr$fBZ6VHP" role="37wK5m">
                      <ref role="3cqZAo" node="5Zr$fBZ6Gmv" resolve="ns" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5Zr$fBZ6IvI" role="3clFbx">
                <node concept="3cpWs8" id="5Zr$fBZh80r" role="3cqZAp">
                  <node concept="3cpWsn" id="5Zr$fBZh80s" role="3cpWs9">
                    <property role="TrG5h" value="aspect" />
                    <node concept="16syzq" id="5Zr$fBZh7B4" role="1tU5fm">
                      <ref role="16sUi3" node="3KN3A4uUhop" resolve="T" />
                    </node>
                    <node concept="3EllGN" id="5Zr$fBZh80t" role="33vP2m">
                      <node concept="37vLTw" id="5Zr$fBZh80u" role="3ElVtu">
                        <ref role="3cqZAo" node="5Zr$fBZ6Gmv" resolve="ns" />
                      </node>
                      <node concept="37vLTw" id="5Zr$fBZh80v" role="3ElQJh">
                        <ref role="3cqZAo" node="5Zr$fBZgqzg" resolve="aspectByNamespace" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1gVbGN" id="5Zr$fBZh9pG" role="3cqZAp">
                  <node concept="3y3z36" id="5Zr$fBZhaZ_" role="1gVkn0">
                    <node concept="10Nm6u" id="5Zr$fBZhcil" role="3uHU7w" />
                    <node concept="37vLTw" id="5Zr$fBZha8K" role="3uHU7B">
                      <ref role="3cqZAo" node="5Zr$fBZh80s" resolve="aspect" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5Zr$fBZgQn9" role="3cqZAp">
                  <node concept="2OqwBi" id="5Zr$fBZgRDG" role="3clFbG">
                    <node concept="37vLTw" id="5Zr$fBZgQn7" role="2Oq$k0">
                      <ref role="3cqZAo" node="5Zr$fBZgIDb" resolve="selectedAspects" />
                    </node>
                    <node concept="TSZUe" id="5Zr$fBZgTPr" role="2OqNvi">
                      <node concept="37vLTw" id="5Zr$fBZh80w" role="25WWJ7">
                        <ref role="3cqZAo" node="5Zr$fBZh80s" resolve="aspect" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5Zr$fBZhd1T" role="3cqZAp">
                  <node concept="37vLTI" id="5Zr$fBZhfuG" role="3clFbG">
                    <node concept="37vLTw" id="5Zr$fBZhgeH" role="37vLTx">
                      <ref role="3cqZAo" node="5Zr$fBZh80s" resolve="aspect" />
                    </node>
                    <node concept="3EllGN" id="5Zr$fBZhdYa" role="37vLTJ">
                      <node concept="37vLTw" id="5Zr$fBZheH3" role="3ElVtu">
                        <ref role="3cqZAo" node="5Zr$fBZ6Gmv" resolve="ns" />
                      </node>
                      <node concept="37vLTw" id="5Zr$fBZhd1R" role="3ElQJh">
                        <ref role="3cqZAo" node="5Zr$fBZgZHh" resolve="selectedAspectByNamespace" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5Zr$fBZ6Gmv" role="1Duv9x">
            <property role="TrG5h" value="ns" />
            <node concept="17QB3L" id="5Zr$fBZ6Gmz" role="1tU5fm" />
          </node>
          <node concept="37vLTw" id="5Zr$fBZ6Gm$" role="1DdaDG">
            <ref role="3cqZAo" node="5Zr$fBZ6Cp2" resolve="effectiveNamespaces" />
          </node>
        </node>
        <node concept="3SKdUt" id="4nDRG5_NmDd" role="3cqZAp">
          <node concept="1PaTwC" id="4nDRG5_NmDe" role="1aUNEU">
            <node concept="3oM_SD" id="4nDRG5_NmDf" role="1PaTwD">
              <property role="3oM_SC" value="must" />
            </node>
            <node concept="3oM_SD" id="4nDRG5_Nor5" role="1PaTwD">
              <property role="3oM_SC" value="restore" />
            </node>
            <node concept="3oM_SD" id="4nDRG5_Nos7" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="4nDRG5_Nos8" role="1PaTwD">
              <property role="3oM_SC" value="topological" />
            </node>
            <node concept="3oM_SD" id="4nDRG5_Not9" role="1PaTwD">
              <property role="3oM_SC" value="sort" />
            </node>
            <node concept="3oM_SD" id="4nDRG5_Notq" role="1PaTwD">
              <property role="3oM_SC" value="order" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5Zr$fBZhhJu" role="3cqZAp">
          <node concept="3cpWsn" id="5Zr$fBZhhJx" role="3cpWs9">
            <property role="TrG5h" value="sortedAspects" />
            <node concept="_YKpA" id="5Zr$fBZhhJm" role="1tU5fm">
              <node concept="16syzq" id="5Zr$fBZhish" role="_ZDj9">
                <ref role="16sUi3" node="3KN3A4uUhop" resolve="T" />
              </node>
            </node>
            <node concept="2ShNRf" id="5Zr$fBZhkea" role="33vP2m">
              <node concept="Tc6Ow" id="5Zr$fBZhkcO" role="2ShVmc">
                <node concept="16syzq" id="5Zr$fBZhkcP" role="HW$YZ">
                  <ref role="16sUi3" node="3KN3A4uUhop" resolve="T" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5Zr$fBZhmOK" role="3cqZAp">
          <node concept="3clFbS" id="5Zr$fBZhmON" role="2LFqv$">
            <node concept="3clFbJ" id="5Zr$fBZhriC" role="3cqZAp">
              <node concept="2OqwBi" id="5Zr$fBZhv2s" role="3clFbw">
                <node concept="37vLTw" id="5Zr$fBZhsHU" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Zr$fBZgIDb" resolve="selectedAspects" />
                </node>
                <node concept="3JPx81" id="5Zr$fBZhxT_" role="2OqNvi">
                  <node concept="37vLTw" id="5Zr$fBZhzi5" role="25WWJ7">
                    <ref role="3cqZAo" node="5Zr$fBZhmOO" resolve="aspect" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5Zr$fBZhriE" role="3clFbx">
                <node concept="3clFbF" id="5Zr$fBZh$F4" role="3cqZAp">
                  <node concept="2OqwBi" id="5Zr$fBZhAZ7" role="3clFbG">
                    <node concept="37vLTw" id="5Zr$fBZh$F3" role="2Oq$k0">
                      <ref role="3cqZAo" node="5Zr$fBZhhJx" resolve="sortedAspects" />
                    </node>
                    <node concept="TSZUe" id="5Zr$fBZhD9p" role="2OqNvi">
                      <node concept="37vLTw" id="5Zr$fBZhE$n" role="25WWJ7">
                        <ref role="3cqZAo" node="5Zr$fBZhmOO" resolve="aspect" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5Zr$fBZhmOO" role="1Duv9x">
            <property role="TrG5h" value="aspect" />
            <node concept="16syzq" id="5Zr$fBZhmOS" role="1tU5fm">
              <ref role="16sUi3" node="3KN3A4uUhop" resolve="T" />
            </node>
          </node>
          <node concept="37vLTw" id="5Zr$fBZhmOT" role="1DdaDG">
            <ref role="3cqZAo" node="3KN3A4uXGOp" resolve="aspects" />
          </node>
        </node>
        <node concept="3cpWs8" id="4nDRG5_O3UA" role="3cqZAp">
          <node concept="3cpWsn" id="4nDRG5_O3UB" role="3cpWs9">
            <property role="TrG5h" value="clique" />
            <node concept="3uibUv" id="4nDRG5_O3U$" role="1tU5fm">
              <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
              <node concept="16syzq" id="4nDRG5_O3U_" role="11_B2D">
                <ref role="16sUi3" node="3KN3A4uUhop" resolve="T" />
              </node>
            </node>
            <node concept="2ShNRf" id="4nDRG5_O3UC" role="33vP2m">
              <node concept="1pGfFk" id="4nDRG5_O3UD" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="3KN3A4uXEXp" resolve="AspectClique" />
                <node concept="37vLTw" id="4nDRG5_O3UE" role="37wK5m">
                  <ref role="3cqZAo" node="5Zr$fBZhhJx" resolve="sortedAspects" />
                </node>
                <node concept="37vLTw" id="4nDRG5_O3UF" role="37wK5m">
                  <ref role="3cqZAo" node="5Zr$fBZgZHh" resolve="selectedAspectByNamespace" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4nDRG5_Ny5T" role="3cqZAp">
          <node concept="3clFbS" id="4nDRG5_Ny5V" role="3clFbx">
            <node concept="3clFbF" id="4nDRG5_NE38" role="3cqZAp">
              <node concept="2OqwBi" id="4nDRG5_NJ4Z" role="3clFbG">
                <node concept="10M0yZ" id="4nDRG5_NHvs" role="2Oq$k0">
                  <ref role="3cqZAo" node="4nDRG5zOb02" resolve="LOG" />
                  <ref role="1PxDUh" node="NKt6ynorWQ" resolve="AspectLookup" />
                </node>
                <node concept="liA8E" id="4nDRG5_NMXt" role="2OqNvi">
                  <ref role="37wK5l" to="wwqx:~Logger.debug(java.lang.String)" resolve="debug" />
                  <node concept="3cpWs3" id="4nDRG5_O2FX" role="37wK5m">
                    <node concept="37vLTw" id="4nDRG5_O7or" role="3uHU7w">
                      <ref role="3cqZAo" node="4nDRG5_O3UB" resolve="clique" />
                    </node>
                    <node concept="3cpWs3" id="4nDRG5_NUnv" role="3uHU7B">
                      <node concept="3cpWs3" id="4nDRG5_NWlO" role="3uHU7B">
                        <node concept="37vLTw" id="4nDRG5_NXCv" role="3uHU7w">
                          <ref role="3cqZAo" node="5Zr$fBZ6Cp2" resolve="effectiveNamespaces" />
                        </node>
                        <node concept="Xl_RD" id="4nDRG5_NUn_" role="3uHU7B">
                          <property role="Xl_RC" value="selected for '" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="4nDRG5_NUnB" role="3uHU7w">
                        <property role="Xl_RC" value="': " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4nDRG5_NBqY" role="3clFbw">
            <node concept="10M0yZ" id="4nDRG5_NA34" role="2Oq$k0">
              <ref role="3cqZAo" node="4nDRG5zOb02" resolve="LOG" />
              <ref role="1PxDUh" node="NKt6ynorWQ" resolve="AspectLookup" />
            </node>
            <node concept="liA8E" id="4nDRG5_NCK$" role="2OqNvi">
              <ref role="37wK5l" to="wwqx:~Logger.isDebugLevel()" resolve="isDebugLevel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Zr$fBZhJ0B" role="3cqZAp">
          <node concept="37vLTw" id="4nDRG5_O3UG" role="3clFbG">
            <ref role="3cqZAo" node="4nDRG5_O3UB" resolve="clique" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="5Zr$fBYVzg_" role="lGtFl">
        <node concept="TZ5HA" id="5Zr$fBYVzgA" role="TZ5H$">
          <node concept="1dT_AC" id="5Zr$fBYVzgB" role="1dT_Ay">
            <property role="1dT_AB" value="Returns an instance of " />
          </node>
          <node concept="1dT_AA" id="5Zr$fBYVzPl" role="1dT_Ay">
            <node concept="92FcH" id="5Zr$fBYVzPF" role="qph3F">
              <node concept="TZ5HA" id="5Zr$fBYVzPH" role="2XjZqd" />
              <node concept="VXe08" id="5Zr$fBYV$wn" role="92FcQ">
                <ref role="VXe09" node="3KN3A4uUhmW" resolve="AspectClique" />
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="5Zr$fBYVzPk" role="1dT_Ay">
            <property role="1dT_AB" value=" that corresponds to only those languages" />
          </node>
        </node>
        <node concept="TZ5HA" id="5Zr$fBYV$Ob" role="TZ5H$">
          <node concept="1dT_AC" id="5Zr$fBYV$Oc" role="1dT_Ay">
            <property role="1dT_AB" value="from " />
          </node>
          <node concept="1dT_AA" id="5Zr$fBYV_MM" role="1dT_Ay">
            <node concept="VVOAv" id="5Zr$fBYV_N8" role="qph3F">
              <node concept="TZ5HA" id="5Zr$fBYV_Na" role="2Xj1qM">
                <node concept="1dT_AC" id="5Zr$fBYV_Nu" role="1dT_Ay">
                  <property role="1dT_AB" value="usedLanguages" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1dT_AC" id="5Zr$fBYV_ML" role="1dT_Ay">
            <property role="1dT_AB" value=" that are already included in this one. " />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5Zr$fBZ6Cp2" role="3clF46">
        <property role="TrG5h" value="effectiveNamespaces" />
        <node concept="3vKaQO" id="5Zr$fBZ6Cp0" role="1tU5fm">
          <node concept="17QB3L" id="5Zr$fBZ6CVV" role="3O5elw" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="9UUIHM4PsG" role="jymVt" />
    <node concept="3clFb_" id="_tf6vySXzF" role="jymVt">
      <property role="TrG5h" value="allNamespaces" />
      <node concept="3vKaQO" id="_tf6vyT5uv" role="3clF45">
        <node concept="17QB3L" id="_tf6vyTd2_" role="3O5elw" />
      </node>
      <node concept="3Tm1VV" id="_tf6vySXzI" role="1B3o_S" />
      <node concept="3clFbS" id="_tf6vySXzJ" role="3clF47">
        <node concept="3clFbF" id="_tf6vyTztx" role="3cqZAp">
          <node concept="2OqwBi" id="_tf6vyT$z7" role="3clFbG">
            <node concept="37vLTw" id="_tf6vyTztu" role="2Oq$k0">
              <ref role="3cqZAo" node="66WUpTItD1B" resolve="coveredNamespaces" />
            </node>
            <node concept="26Dbio" id="_tf6vyT_Sr" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="5Zr$fBYEXYU" role="lGtFl">
        <node concept="TZ5HA" id="5Zr$fBYF9Mg" role="TZ5H$">
          <node concept="1dT_AC" id="5Zr$fBYF9Mh" role="1dT_Ay">
            <property role="1dT_AB" value="Used only from tests." />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5Zr$fBYEXYX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
        <node concept="2B6LJw" id="5Zr$fBYF9Fh" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~Deprecated.forRemoval()" resolve="forRemoval" />
          <node concept="3clFbT" id="5Zr$fBYF9LT" role="2B70Vg">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5MNibEMU$Hc" role="jymVt" />
    <node concept="3clFb_" id="4ekZiHe6La7" role="jymVt">
      <property role="TrG5h" value="toString" />
      <node concept="3Tm1VV" id="4ekZiHe6La8" role="1B3o_S" />
      <node concept="3uibUv" id="4ekZiHe6Laa" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="4ekZiHe6Lab" role="3clF47">
        <node concept="3clFbF" id="4ekZiHe6U4V" role="3cqZAp">
          <node concept="3cpWs3" id="4ekZiHe6Xb8" role="3clFbG">
            <node concept="3cpWs3" id="4ekZiHe6Ujl" role="3uHU7B">
              <node concept="Xl_RD" id="4ekZiHe6U4U" role="3uHU7B">
                <property role="Xl_RC" value="Clique(" />
              </node>
              <node concept="2OqwBi" id="3Vcd0FoqGCx" role="3uHU7w">
                <node concept="37vLTw" id="3Vcd0FoqGCy" role="2Oq$k0">
                  <ref role="3cqZAo" node="66WUpTItD1B" resolve="coveredNamespaces" />
                </node>
                <node concept="3uJxvA" id="3Vcd0FoqGCz" role="2OqNvi">
                  <node concept="Xl_RD" id="3Vcd0FoqGC$" role="3uJOhx">
                    <property role="Xl_RC" value=", " />
                  </node>
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="4ekZiHe6XE5" role="3uHU7w">
              <property role="Xl_RC" value=")" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4ekZiHe6Lac" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4ekZiHe6Qdr" role="jymVt" />
    <node concept="3clFbW" id="3KN3A4uXEXp" role="jymVt">
      <node concept="37vLTG" id="3KN3A4uXGrt" role="3clF46">
        <property role="TrG5h" value="aspects" />
        <node concept="_YKpA" id="4nDRG5_LBVT" role="1tU5fm">
          <node concept="16syzq" id="4nDRG5_LBVV" role="_ZDj9">
            <ref role="16sUi3" node="3KN3A4uUhop" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3KN3A4vyU9k" role="3clF46">
        <property role="TrG5h" value="aspectByNamespace" />
        <node concept="3rvAFt" id="5Zr$fBZ7pDN" role="1tU5fm">
          <node concept="17QB3L" id="5Zr$fBZd6Q0" role="3rvQeY" />
          <node concept="16syzq" id="5Zr$fBZd7p4" role="3rvSg0">
            <ref role="16sUi3" node="3KN3A4uUhop" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3KN3A4uXEXr" role="3clF45" />
      <node concept="3Tmbuc" id="5Zr$fBYMOqq" role="1B3o_S" />
      <node concept="3clFbS" id="3KN3A4uXEXt" role="3clF47">
        <node concept="3clFbF" id="3KN3A4uXGOu" role="3cqZAp">
          <node concept="37vLTI" id="4nDRG5_Msih" role="3clFbG">
            <node concept="2OqwBi" id="4nDRG5_M$4O" role="37vLTx">
              <node concept="37vLTw" id="4nDRG5_MtD0" role="2Oq$k0">
                <ref role="3cqZAo" node="3KN3A4uXGrt" resolve="aspects" />
              </node>
              <node concept="26Dbio" id="4nDRG5_MAik" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="3KN3A4uXKFr" role="37vLTJ">
              <node concept="Xjq3P" id="3KN3A4uXKGU" role="2Oq$k0" />
              <node concept="2OwXpG" id="3KN3A4uXKFu" role="2OqNvi">
                <ref role="2Oxat5" node="3KN3A4uXGOp" resolve="aspects" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Zr$fBZgCAe" role="3cqZAp">
          <node concept="37vLTI" id="5Zr$fBZgEdR" role="3clFbG">
            <node concept="2YIFZM" id="4nDRG5_MHkG" role="37vLTx">
              <ref role="37wK5l" to="33ny:~Collections.unmodifiableMap(java.util.Map)" resolve="unmodifiableMap" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <node concept="37vLTw" id="4nDRG5_MIaV" role="37wK5m">
                <ref role="3cqZAo" node="3KN3A4vyU9k" resolve="aspectByNamespace" />
              </node>
            </node>
            <node concept="2OqwBi" id="5Zr$fBZgCZL" role="37vLTJ">
              <node concept="Xjq3P" id="5Zr$fBZgCAc" role="2Oq$k0" />
              <node concept="2OwXpG" id="5Zr$fBZgDB$" role="2OqNvi">
                <ref role="2Oxat5" node="5Zr$fBZgqzg" resolve="aspectByNamespace" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5MNibEMUzWB" role="3cqZAp">
          <node concept="3clFbS" id="5MNibEMUzWE" role="2LFqv$">
            <node concept="3clFbF" id="5MNibEMV06o" role="3cqZAp">
              <node concept="2OqwBi" id="5MNibEMV0Ke" role="3clFbG">
                <node concept="37vLTw" id="5MNibEMV06n" role="2Oq$k0">
                  <ref role="3cqZAo" node="5MNibEMUq5h" resolve="namespaceBits" />
                </node>
                <node concept="liA8E" id="5MNibEMV1pd" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~BitSet.set(int)" resolve="set" />
                  <node concept="1rXfSq" id="5MNibEMV1uY" role="37wK5m">
                    <ref role="37wK5l" node="5MNibEMTTHy" resolve="namespaceId" />
                    <node concept="37vLTw" id="5MNibEMV3t9" role="37wK5m">
                      <ref role="3cqZAo" node="5MNibEMUzWF" resolve="ns" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5MNibEMUzWF" role="1Duv9x">
            <property role="TrG5h" value="ns" />
            <node concept="17QB3L" id="5MNibEMUzWJ" role="1tU5fm" />
          </node>
          <node concept="2OqwBi" id="5Zr$fBZgl1r" role="1DdaDG">
            <node concept="37vLTw" id="5MNibEMUzWK" role="2Oq$k0">
              <ref role="3cqZAo" node="3KN3A4vyU9k" resolve="aspectByNamespace" />
            </node>
            <node concept="3lbrtF" id="5Zr$fBZgmIj" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="_tf6vzetZz" role="3cqZAp">
          <node concept="2OqwBi" id="_tf6vzevGL" role="3clFbG">
            <node concept="37vLTw" id="_tf6vzetZx" role="2Oq$k0">
              <ref role="3cqZAo" node="66WUpTItD1B" resolve="coveredNamespaces" />
            </node>
            <node concept="X8dFx" id="_tf6vzewwi" role="2OqNvi">
              <node concept="2OqwBi" id="5Zr$fBZgnAg" role="25WWJ7">
                <node concept="37vLTw" id="_tf6vze_SF" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KN3A4vyU9k" resolve="aspectByNamespace" />
                </node>
                <node concept="3lbrtF" id="5Zr$fBZgp5G" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="4nDRG5_LDES" role="lGtFl">
        <node concept="TZ5HA" id="4nDRG5_LDET" role="TZ5H$">
          <node concept="1dT_AC" id="4nDRG5_LDEU" role="1dT_Ay">
            <property role="1dT_AB" value="The list of aspects is expected to be topologically sorted from more specific to more abstract" />
          </node>
        </node>
        <node concept="TZ5HA" id="4nDRG5_LPDR" role="TZ5H$">
          <node concept="1dT_AC" id="4nDRG5_LPDS" role="1dT_Ay">
            <property role="1dT_AB" value="according to extends relationship." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3Vcd0Fo6guz" role="jymVt" />
    <node concept="3clFbW" id="7u0sJ20M14I" role="jymVt">
      <node concept="3cqZAl" id="7u0sJ20M14J" role="3clF45" />
      <node concept="3clFbS" id="7u0sJ20M14L" role="3clF47">
        <node concept="3SKdUt" id="7u0sJ20MykV" role="3cqZAp">
          <node concept="1PaTwC" id="7u0sJ20MykW" role="1aUNEU">
            <node concept="3oM_SD" id="7u0sJ20Mylm" role="1PaTwD">
              <property role="3oM_SC" value="empty" />
            </node>
            <node concept="3oM_SD" id="7u0sJ20Mylw" role="1PaTwD">
              <property role="3oM_SC" value="clique" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="5Zr$fBYISs4" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3KN3A4uV5kV" role="jymVt" />
    <node concept="2tJIrI" id="3KN3A4uYPJe" role="jymVt" />
    <node concept="2YIFZL" id="5MNibEMTTHy" role="jymVt">
      <property role="TrG5h" value="namespaceId" />
      <node concept="37vLTG" id="5MNibEMTXyp" role="3clF46">
        <property role="TrG5h" value="namespace" />
        <node concept="17QB3L" id="5MNibEMTXWC" role="1tU5fm" />
      </node>
      <node concept="10Oyi0" id="5MNibEMTWBY" role="3clF45" />
      <node concept="3clFbS" id="5MNibEMTTHA" role="3clF47">
        <node concept="3clFbF" id="5MNibEMTYOW" role="3cqZAp">
          <node concept="2OqwBi" id="5MNibEMU07R" role="3clFbG">
            <node concept="37vLTw" id="5MNibEMTYOV" role="2Oq$k0">
              <ref role="3cqZAo" node="5MNibEMTF3N" resolve="NAMESPACE_TO_ID" />
            </node>
            <node concept="liA8E" id="5MNibEMU2hv" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~ConcurrentHashMap.computeIfAbsent(java.lang.Object,java.util.function.Function)" resolve="computeIfAbsent" />
              <node concept="37vLTw" id="5MNibEMU3x$" role="37wK5m">
                <ref role="3cqZAo" node="5MNibEMTXyp" resolve="namespace" />
              </node>
              <node concept="1bVj0M" id="5MNibEMU55h" role="37wK5m">
                <node concept="37vLTG" id="5MNibEMU5s9" role="1bW2Oz">
                  <property role="TrG5h" value="key" />
                  <node concept="17QB3L" id="5MNibEMU5OV" role="1tU5fm" />
                </node>
                <node concept="3clFbS" id="5MNibEMU55j" role="1bW5cS">
                  <node concept="3clFbF" id="5MNibEMU7AO" role="3cqZAp">
                    <node concept="2OqwBi" id="5MNibEMU8qY" role="3clFbG">
                      <node concept="37vLTw" id="5MNibEMU7AM" role="2Oq$k0">
                        <ref role="3cqZAo" node="5MNibEMTuUm" resolve="NEXT_NAMESPACE_ID" />
                      </node>
                      <node concept="liA8E" id="5MNibEMU9dW" role="2OqNvi">
                        <ref role="37wK5l" to="i5cy:~AtomicInteger.getAndIncrement()" resolve="getAndIncrement" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="9UUIHLPIAU" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5MNibEMTP_Z" role="jymVt" />
    <node concept="Wx3nA" id="5MNibEMTuUm" role="jymVt">
      <property role="TrG5h" value="NEXT_NAMESPACE_ID" />
      <node concept="3Tm6S6" id="5MNibEMTuUo" role="1B3o_S" />
      <node concept="3uibUv" id="5MNibEMTyP0" role="1tU5fm">
        <ref role="3uigEE" to="i5cy:~AtomicInteger" resolve="AtomicInteger" />
      </node>
      <node concept="2ShNRf" id="5MNibEMT$VQ" role="33vP2m">
        <node concept="1pGfFk" id="5MNibEMT$vo" role="2ShVmc">
          <ref role="37wK5l" to="i5cy:~AtomicInteger.&lt;init&gt;(int)" resolve="AtomicInteger" />
          <node concept="3cmrfG" id="5MNibEMT_Mx" role="37wK5m">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="5MNibEMTF3N" role="jymVt">
      <property role="TrG5h" value="NAMESPACE_TO_ID" />
      <node concept="3Tm6S6" id="5MNibEMTF3P" role="1B3o_S" />
      <node concept="3uibUv" id="5MNibEMTK0S" role="1tU5fm">
        <ref role="3uigEE" to="5zyv:~ConcurrentHashMap" resolve="ConcurrentHashMap" />
        <node concept="17QB3L" id="5MNibEMTKP0" role="11_B2D" />
        <node concept="3uibUv" id="5MNibEMTLfz" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="2ShNRf" id="5MNibEMTO_r" role="33vP2m">
        <node concept="1pGfFk" id="5MNibEMTOyT" role="2ShVmc">
          <ref role="37wK5l" to="5zyv:~ConcurrentHashMap.&lt;init&gt;()" resolve="ConcurrentHashMap" />
          <node concept="17QB3L" id="5MNibEMTOyU" role="1pMfVU" />
          <node concept="3uibUv" id="5MNibEMTOyV" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5MNibEMTreG" role="jymVt" />
    <node concept="3Tm1VV" id="3KN3A4uUhmX" role="1B3o_S" />
    <node concept="16euLQ" id="3KN3A4uUhop" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3uibUv" id="3KN3A4uUhp5" role="3ztrMU">
        <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
      </node>
    </node>
    <node concept="3UR2Jj" id="3KN3A4uUhvw" role="lGtFl">
      <node concept="TZ5HA" id="3KN3A4uUhvx" role="TZ5H$">
        <node concept="1dT_AC" id="3KN3A4uUhvy" role="1dT_Ay">
          <property role="1dT_AB" value="A &quot;clique&quot; is a collection of interrelated aspects coming from languages that have &quot;extends&quot; relationships." />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3KN3A4uXGOp" role="jymVt">
      <property role="TrG5h" value="aspects" />
      <node concept="3Tm6S6" id="3KN3A4uXGOq" role="1B3o_S" />
      <node concept="_YKpA" id="3KN3A4uXGOs" role="1tU5fm">
        <node concept="16syzq" id="_tf6vzf77r" role="_ZDj9">
          <ref role="16sUi3" node="3KN3A4uUhop" resolve="T" />
        </node>
      </node>
      <node concept="2ShNRf" id="4ekZiHe4eAC" role="33vP2m">
        <node concept="Tc6Ow" id="4ekZiHe4e$5" role="2ShVmc">
          <node concept="16syzq" id="_tf6vzf8pJ" role="HW$YZ">
            <ref role="16sUi3" node="3KN3A4uUhop" resolve="T" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5MNibEMUq5h" role="jymVt">
      <property role="TrG5h" value="namespaceBits" />
      <node concept="3Tm6S6" id="5MNibEMUq5i" role="1B3o_S" />
      <node concept="3uibUv" id="5MNibEMUvgS" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~BitSet" resolve="BitSet" />
      </node>
      <node concept="2ShNRf" id="5MNibEMUx8d" role="33vP2m">
        <node concept="1pGfFk" id="5MNibEMUx5E" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~BitSet.&lt;init&gt;()" resolve="BitSet" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="66WUpTItD1B" role="jymVt">
      <property role="TrG5h" value="coveredNamespaces" />
      <node concept="3Tm6S6" id="66WUpTItptE" role="1B3o_S" />
      <node concept="2hMVRd" id="66WUpTItBas" role="1tU5fm">
        <node concept="17QB3L" id="66WUpTItMQs" role="2hN53Y" />
      </node>
      <node concept="2ShNRf" id="66WUpTIutx$" role="33vP2m">
        <node concept="2i4dXS" id="66WUpTIuucp" role="2ShVmc">
          <node concept="17QB3L" id="66WUpTIuxuT" role="HW$YZ" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5Zr$fBZgqzg" role="jymVt">
      <property role="TrG5h" value="aspectByNamespace" />
      <node concept="3Tm6S6" id="5Zr$fBZgqzh" role="1B3o_S" />
      <node concept="3rvAFt" id="5Zr$fBZgrzx" role="1tU5fm">
        <node concept="17QB3L" id="5Zr$fBZgrE3" role="3rvQeY" />
        <node concept="16syzq" id="5Zr$fBZgrKg" role="3rvSg0">
          <ref role="16sUi3" node="3KN3A4uUhop" resolve="T" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5EDW3XF5Z95">
    <property role="TrG5h" value="AbstractCoderulesManifest" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="1LBj9w_9VfE" role="jymVt" />
    <node concept="3clFbW" id="1LBj9w_9VgG" role="jymVt">
      <node concept="3cqZAl" id="1LBj9w_9VgI" role="3clF45" />
      <node concept="3Tm1VV" id="1LBj9w_9VgJ" role="1B3o_S" />
      <node concept="3clFbS" id="1LBj9w_9VgK" role="3clF47">
        <node concept="3clFbF" id="1LBj9w_9Vjg" role="3cqZAp">
          <node concept="37vLTI" id="1LBj9w_9Vji" role="3clFbG">
            <node concept="2OqwBi" id="1LBj9w_9VmX" role="37vLTJ">
              <node concept="Xjq3P" id="1LBj9w_9Vns" role="2Oq$k0" />
              <node concept="2OwXpG" id="1LBj9w_9Vn0" role="2OqNvi">
                <ref role="2Oxat5" node="1LBj9w_9Vjc" resolve="coderulesAspect" />
              </node>
            </node>
            <node concept="37vLTw" id="1LBj9w_9Vjm" role="37vLTx">
              <ref role="3cqZAo" node="1LBj9w_9VhA" resolve="coderulesAspect" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1LBj9w_9VhA" role="3clF46">
        <property role="TrG5h" value="coderulesAspect" />
        <node concept="3uibUv" id="1LBj9w_9Vh_" role="1tU5fm">
          <ref role="3uigEE" node="NKt6yp1COZ" resolve="AbstractCoderulesAspect" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5EDW3XF5Zad" role="jymVt" />
    <node concept="3clFb_" id="1LBj9w_9VAl" role="jymVt">
      <property role="TrG5h" value="coderulesAspect" />
      <node concept="3uibUv" id="1LBj9w_9VCY" role="3clF45">
        <ref role="3uigEE" node="NKt6yomNZE" resolve="CoderulesAspect" />
      </node>
      <node concept="3Tm1VV" id="1LBj9w_9VAo" role="1B3o_S" />
      <node concept="3clFbS" id="1LBj9w_9VAp" role="3clF47">
        <node concept="3clFbF" id="1LBj9w_9VJ3" role="3cqZAp">
          <node concept="37vLTw" id="1LBj9w_9VJ2" role="3clFbG">
            <ref role="3cqZAo" node="1LBj9w_9Vjc" resolve="coderulesAspect" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1LBj9w_9VFL" role="jymVt" />
    <node concept="3clFb_" id="6UWSvq4Vu5V" role="jymVt">
      <property role="TrG5h" value="macroTables" />
      <property role="1EzhhJ" value="true" />
      <node concept="3vKaQO" id="6UWSvq4Vu6$" role="3clF45">
        <node concept="3uibUv" id="tbauFxRB8v" role="3O5elw">
          <ref role="3uigEE" to="ugy2:tbauFxRzkz" resolve="MacroTable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6UWSvq4Vu5Y" role="1B3o_S" />
      <node concept="3clFbS" id="6UWSvq4Vu5Z" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5EDW3XF5Zaf" role="jymVt" />
    <node concept="3clFb_" id="4MqhgXUaiLz" role="jymVt">
      <property role="TrG5h" value="ruleTables" />
      <property role="1EzhhJ" value="true" />
      <node concept="3vKaQO" id="5EDW3XF609H" role="3clF45">
        <node concept="3uibUv" id="tbauFxRRsb" role="3O5elw">
          <ref role="3uigEE" to="ugy2:4MqhgXU9fm3" resolve="RuleTable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4MqhgXUaiLA" role="1B3o_S" />
      <node concept="3clFbS" id="4MqhgXUaiLB" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5EDW3XF60aY" role="jymVt" />
    <node concept="3clFb_" id="5EDW3XF60ae" role="jymVt">
      <property role="TrG5h" value="queryTables" />
      <property role="1EzhhJ" value="true" />
      <node concept="3vKaQO" id="5EDW3XF60af" role="3clF45">
        <node concept="3uibUv" id="tbauFxRQEm" role="3O5elw">
          <ref role="3uigEE" to="ugy2:tbauFxRORi" resolve="QueryTable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5EDW3XF60ah" role="1B3o_S" />
      <node concept="3clFbS" id="5EDW3XF60ai" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5EDW3XF5Zai" role="jymVt" />
    <node concept="312cEg" id="1LBj9w_9Vjc" role="jymVt">
      <property role="TrG5h" value="coderulesAspect" />
      <node concept="3Tm6S6" id="1LBj9w_9Vjd" role="1B3o_S" />
      <node concept="3uibUv" id="1LBj9w_9Vjf" role="1tU5fm">
        <ref role="3uigEE" node="NKt6yp1COZ" resolve="AbstractCoderulesAspect" />
      </node>
    </node>
    <node concept="2tJIrI" id="1LBj9w_9VzP" role="jymVt" />
    <node concept="3Tm1VV" id="5EDW3XF5Z96" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6nx4rRkNE1x">
    <property role="TrG5h" value="CliqueBuilder" />
    <node concept="2YIFZL" id="3KN3A4uV0IR" role="jymVt">
      <property role="TrG5h" value="discoverAspectClique" />
      <node concept="37vLTG" id="3KN3A4uXs_t" role="3clF46">
        <property role="TrG5h" value="langs" />
        <node concept="3vKaQO" id="3KN3A4uXs_u" role="1tU5fm">
          <node concept="16syzq" id="6nx4rRkX98g" role="3O5elw">
            <ref role="16sUi3" node="6nx4rRkX8vZ" resolve="L" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3KN3A4uZbi0" role="3clF46">
        <property role="TrG5h" value="discoverable" />
        <node concept="3uibUv" id="3KN3A4uZbi1" role="1tU5fm">
          <ref role="3uigEE" node="NKt6ynom3d" resolve="AspectDiscoverable" />
          <node concept="16syzq" id="6nx4rRkX9Ju" role="11_B2D">
            <ref role="16sUi3" node="6nx4rRkX8vZ" resolve="L" />
          </node>
          <node concept="16syzq" id="3KN3A4uZdw8" role="11_B2D">
            <ref role="16sUi3" node="3KN3A4uXOFp" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3KN3A4uUxNQ" role="3clF47">
        <node concept="3clFbF" id="6nx4rRkNW60" role="3cqZAp">
          <node concept="2OqwBi" id="_tf6vzkwPq" role="3clFbG">
            <node concept="2ShNRf" id="_tf6vzkwPr" role="2Oq$k0">
              <node concept="1pGfFk" id="_tf6vzkwPs" role="2ShVmc">
                <ref role="37wK5l" node="6nx4rRkNNr0" resolve="CliqueBuilder" />
                <node concept="37vLTw" id="_tf6vzkwPt" role="37wK5m">
                  <ref role="3cqZAo" node="3KN3A4uZbi0" resolve="discoverable" />
                </node>
                <node concept="16syzq" id="_tf6vzkwPu" role="1pMfVU">
                  <ref role="16sUi3" node="6nx4rRkX8vZ" resolve="L" />
                </node>
                <node concept="16syzq" id="_tf6vzkwPv" role="1pMfVU">
                  <ref role="16sUi3" node="3KN3A4uXOFp" resolve="T" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="_tf6vzkwPw" role="2OqNvi">
              <ref role="37wK5l" node="6nx4rRkNOva" resolve="buildClique" />
              <node concept="37vLTw" id="_tf6vzkwPx" role="37wK5m">
                <ref role="3cqZAo" node="3KN3A4uXs_t" resolve="langs" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3KN3A4uZv9Z" role="1B3o_S" />
      <node concept="16euLQ" id="6nx4rRkX8vZ" role="16eVyc">
        <property role="TrG5h" value="L" />
      </node>
      <node concept="16euLQ" id="3KN3A4uXOFp" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="3KN3A4uXPAE" role="3ztrMU">
          <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
        </node>
      </node>
      <node concept="P$JXv" id="3KN3A4uY2Ly" role="lGtFl">
        <node concept="TZ5HA" id="5Zr$fBYIGrw" role="TZ5H$">
          <node concept="1dT_AC" id="5Zr$fBYIGrx" role="1dT_Ay">
            <property role="1dT_AB" value="Languages here are expected to be directly imported." />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3KN3A4uZtra" role="3clF45">
        <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
        <node concept="16syzq" id="3KN3A4v3XKe" role="11_B2D">
          <ref role="16sUi3" node="3KN3A4uXOFp" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nx4rRkNSlP" role="jymVt" />
    <node concept="3clFbW" id="6nx4rRkNNr0" role="jymVt">
      <node concept="37vLTG" id="6nx4rRkNR02" role="3clF46">
        <property role="TrG5h" value="discoverable" />
        <node concept="3uibUv" id="6nx4rRkNR0E" role="1tU5fm">
          <ref role="3uigEE" node="NKt6ynom3d" resolve="AspectDiscoverable" />
          <node concept="16syzq" id="6nx4rRkNRyg" role="11_B2D">
            <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
          </node>
          <node concept="16syzq" id="6nx4rRkNRyW" role="11_B2D">
            <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6nx4rRkNNr2" role="3clF45" />
      <node concept="3Tmbuc" id="5Zr$fBYJHW1" role="1B3o_S" />
      <node concept="3clFbS" id="6nx4rRkNNr4" role="3clF47">
        <node concept="3clFbF" id="6nx4rRkNR$o" role="3cqZAp">
          <node concept="37vLTI" id="6nx4rRkNR$q" role="3clFbG">
            <node concept="2OqwBi" id="6nx4rRkNSdE" role="37vLTJ">
              <node concept="Xjq3P" id="6nx4rRkNSgw" role="2Oq$k0" />
              <node concept="2OwXpG" id="6nx4rRkNSdH" role="2OqNvi">
                <ref role="2Oxat5" node="6nx4rRkNR$i" resolve="discoverable" />
              </node>
            </node>
            <node concept="37vLTw" id="6nx4rRkNR$u" role="37vLTx">
              <ref role="3cqZAo" node="6nx4rRkNR02" resolve="discoverable" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Zr$fBZ4Qc4" role="jymVt" />
    <node concept="3clFb_" id="5Zr$fBYWNu5" role="jymVt">
      <property role="TrG5h" value="effectiveLanguages" />
      <node concept="37vLTG" id="5Zr$fBYZpmy" role="3clF46">
        <property role="TrG5h" value="inputLangs" />
        <node concept="3vKaQO" id="5Zr$fBYZpmz" role="1tU5fm">
          <node concept="16syzq" id="5Zr$fBYZpm$" role="3O5elw">
            <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5Zr$fBYWNu7" role="3clF47">
        <node concept="3SKdUt" id="5Zr$fBYZfXr" role="3cqZAp">
          <node concept="1PaTwC" id="5Zr$fBYZfXs" role="1aUNEU">
            <node concept="3oM_SD" id="5Zr$fBYZfXt" role="1PaTwD">
              <property role="3oM_SC" value="build" />
            </node>
            <node concept="3oM_SD" id="5Zr$fBYZfXu" role="1PaTwD">
              <property role="3oM_SC" value="effective" />
            </node>
            <node concept="3oM_SD" id="5Zr$fBYZfXv" role="1PaTwD">
              <property role="3oM_SC" value="set" />
            </node>
            <node concept="3oM_SD" id="5Zr$fBYZfXw" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="5Zr$fBYZfXx" role="1PaTwD">
              <property role="3oM_SC" value="languages" />
            </node>
            <node concept="3oM_SD" id="5Zr$fBYZfXy" role="1PaTwD">
              <property role="3oM_SC" value="including" />
            </node>
            <node concept="3oM_SD" id="5Zr$fBYZfXz" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="5Zr$fBYZfX$" role="1PaTwD">
              <property role="3oM_SC" value="sidekicks" />
            </node>
            <node concept="3oM_SD" id="5Zr$fBYZfX_" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="5Zr$fBYZfXA" role="1PaTwD">
              <property role="3oM_SC" value="extended" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5Zr$fBYZfXB" role="3cqZAp">
          <node concept="3cpWsn" id="5Zr$fBYZfXC" role="3cpWs9">
            <property role="TrG5h" value="queue" />
            <node concept="3O6Q9H" id="5Zr$fBYZfXD" role="1tU5fm">
              <node concept="16syzq" id="5Zr$fBYZfXE" role="3O5elw">
                <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
              </node>
            </node>
            <node concept="2ShNRf" id="5Zr$fBYZfXF" role="33vP2m">
              <node concept="2Jqq0_" id="5Zr$fBYZfXG" role="2ShVmc">
                <node concept="16syzq" id="5Zr$fBYZfXH" role="HW$YZ">
                  <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                </node>
                <node concept="37vLTw" id="5Zr$fBYZfXI" role="I$8f6">
                  <ref role="3cqZAo" node="5Zr$fBYZpmy" resolve="inputLangs" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5Zr$fBYZfXJ" role="3cqZAp">
          <node concept="3cpWsn" id="5Zr$fBYZfXK" role="3cpWs9">
            <property role="TrG5h" value="effectiveLangs" />
            <node concept="2hMVRd" id="5Zr$fBYZfXL" role="1tU5fm">
              <node concept="16syzq" id="5Zr$fBYZfXM" role="2hN53Y">
                <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
              </node>
            </node>
            <node concept="2ShNRf" id="5Zr$fBYZfXN" role="33vP2m">
              <node concept="2i4dXS" id="5Zr$fBYZfXO" role="2ShVmc">
                <node concept="16syzq" id="5Zr$fBYZfXP" role="HW$YZ">
                  <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="5Zr$fBYZfXZ" role="3cqZAp">
          <node concept="3clFbS" id="5Zr$fBYZfY0" role="2LFqv$">
            <node concept="3cpWs8" id="5Zr$fBYZfY1" role="3cqZAp">
              <node concept="3cpWsn" id="5Zr$fBYZfY2" role="3cpWs9">
                <property role="TrG5h" value="lang" />
                <node concept="16syzq" id="5Zr$fBYZfY3" role="1tU5fm">
                  <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                </node>
                <node concept="2OqwBi" id="5Zr$fBYZfY4" role="33vP2m">
                  <node concept="37vLTw" id="5Zr$fBYZfY5" role="2Oq$k0">
                    <ref role="3cqZAo" node="5Zr$fBYZfXC" resolve="queue" />
                  </node>
                  <node concept="2Kt2Hk" id="5Zr$fBYZfY6" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5Zr$fBYZfY7" role="3cqZAp">
              <node concept="3clFbS" id="5Zr$fBYZfY8" role="3clFbx">
                <node concept="3clFbF" id="5Zr$fBYZfY9" role="3cqZAp">
                  <node concept="2OqwBi" id="5Zr$fBYZfYa" role="3clFbG">
                    <node concept="37vLTw" id="5Zr$fBYZfYb" role="2Oq$k0">
                      <ref role="3cqZAo" node="5Zr$fBYZfXK" resolve="effectiveLangs" />
                    </node>
                    <node concept="TSZUe" id="5Zr$fBYZfYc" role="2OqNvi">
                      <node concept="37vLTw" id="5Zr$fBYZfYd" role="25WWJ7">
                        <ref role="3cqZAo" node="5Zr$fBYZfY2" resolve="lang" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1DcWWT" id="5Zr$fBYZfYe" role="3cqZAp">
                  <node concept="3clFbS" id="5Zr$fBYZfYf" role="2LFqv$">
                    <node concept="3clFbJ" id="5Zr$fBYZfYg" role="3cqZAp">
                      <node concept="2OqwBi" id="5Zr$fBYZfYh" role="3clFbw">
                        <node concept="37vLTw" id="5Zr$fBYZfYi" role="2Oq$k0">
                          <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
                        </node>
                        <node concept="liA8E" id="5Zr$fBYZfYj" role="2OqNvi">
                          <ref role="37wK5l" node="6nx4rRkLZr6" resolve="isSidekick" />
                          <node concept="37vLTw" id="5Zr$fBYZfYk" role="37wK5m">
                            <ref role="3cqZAo" node="5Zr$fBYZfYs" resolve="spec" />
                          </node>
                          <node concept="37vLTw" id="5Zr$fBYZfYl" role="37wK5m">
                            <ref role="3cqZAo" node="5Zr$fBYZfY2" resolve="lang" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="5Zr$fBYZfYm" role="3clFbx">
                        <node concept="3clFbF" id="5Zr$fBYZfYn" role="3cqZAp">
                          <node concept="2OqwBi" id="5Zr$fBYZfYo" role="3clFbG">
                            <node concept="37vLTw" id="5Zr$fBYZfYp" role="2Oq$k0">
                              <ref role="3cqZAo" node="5Zr$fBYZfXC" resolve="queue" />
                            </node>
                            <node concept="2Ke9KJ" id="5Zr$fBYZfYq" role="2OqNvi">
                              <node concept="37vLTw" id="5Zr$fBYZfYr" role="25WWJ7">
                                <ref role="3cqZAo" node="5Zr$fBYZfYs" resolve="spec" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="5Zr$fBYZfYs" role="1Duv9x">
                    <property role="TrG5h" value="spec" />
                    <node concept="16syzq" id="5Zr$fBYZfYt" role="1tU5fm">
                      <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5Zr$fBYZfYu" role="1DdaDG">
                    <node concept="37vLTw" id="5Zr$fBYZfYv" role="2Oq$k0">
                      <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
                    </node>
                    <node concept="liA8E" id="5Zr$fBYZfYw" role="2OqNvi">
                      <ref role="37wK5l" node="6nx4rRkOiUG" resolve="getExtending" />
                      <node concept="37vLTw" id="5Zr$fBYZfYx" role="37wK5m">
                        <ref role="3cqZAo" node="5Zr$fBYZfY2" resolve="lang" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1DcWWT" id="5Zr$fBYZfYy" role="3cqZAp">
                  <node concept="3clFbS" id="5Zr$fBYZfYz" role="2LFqv$">
                    <node concept="3clFbF" id="5Zr$fBYZfYL" role="3cqZAp">
                      <node concept="2OqwBi" id="5Zr$fBYZfYM" role="3clFbG">
                        <node concept="37vLTw" id="5Zr$fBYZfYN" role="2Oq$k0">
                          <ref role="3cqZAo" node="5Zr$fBYZfXC" resolve="queue" />
                        </node>
                        <node concept="2Ke9KJ" id="5Zr$fBYZfYO" role="2OqNvi">
                          <node concept="37vLTw" id="5Zr$fBYZfYP" role="25WWJ7">
                            <ref role="3cqZAo" node="5Zr$fBYZfYQ" resolve="abs" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="5Zr$fBYZfYQ" role="1Duv9x">
                    <property role="TrG5h" value="abs" />
                    <node concept="16syzq" id="5Zr$fBYZfYR" role="1tU5fm">
                      <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5Zr$fBYZfYS" role="1DdaDG">
                    <node concept="37vLTw" id="5Zr$fBYZfYT" role="2Oq$k0">
                      <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
                    </node>
                    <node concept="liA8E" id="5Zr$fBYZfYU" role="2OqNvi">
                      <ref role="37wK5l" node="6nx4rRkOj1Y" resolve="getExtended" />
                      <node concept="37vLTw" id="5Zr$fBYZfYV" role="37wK5m">
                        <ref role="3cqZAo" node="5Zr$fBYZfY2" resolve="lang" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="5Zr$fBYZfYW" role="3clFbw">
                <node concept="2OqwBi" id="5Zr$fBYZfYX" role="3fr31v">
                  <node concept="37vLTw" id="5Zr$fBYZfYY" role="2Oq$k0">
                    <ref role="3cqZAo" node="5Zr$fBYZfXK" resolve="effectiveLangs" />
                  </node>
                  <node concept="3JPx81" id="5Zr$fBYZfYZ" role="2OqNvi">
                    <node concept="37vLTw" id="5Zr$fBYZfZ0" role="25WWJ7">
                      <ref role="3cqZAo" node="5Zr$fBYZfY2" resolve="lang" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5Zr$fBYZfZ1" role="2$JKZa">
            <node concept="37vLTw" id="5Zr$fBYZfZ2" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zr$fBYZfXC" resolve="queue" />
            </node>
            <node concept="3GX2aA" id="5Zr$fBYZfZ3" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="5Zr$fBYZDSc" role="3cqZAp">
          <node concept="2OqwBi" id="5Zr$fBZ00WT" role="3cqZAk">
            <node concept="37vLTw" id="5Zr$fBYZSLX" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zr$fBYZfXK" resolve="effectiveLangs" />
            </node>
            <node concept="26Dbio" id="5Zr$fBZ0a_L" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3vKaQO" id="5Zr$fBYWNu8" role="3clF45">
        <node concept="16syzq" id="5Zr$fBYWWqM" role="3O5elw">
          <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
        </node>
      </node>
      <node concept="3Tmbuc" id="5Zr$fBYWNua" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5Zr$fBYVRMa" role="jymVt" />
    <node concept="3clFb_" id="6nx4rRkNOva" role="jymVt">
      <property role="TrG5h" value="buildClique" />
      <node concept="37vLTG" id="6nx4rRkO4u0" role="3clF46">
        <property role="TrG5h" value="inputLangs" />
        <node concept="3vKaQO" id="6nx4rRkO52M" role="1tU5fm">
          <node concept="16syzq" id="6nx4rRkO53r" role="3O5elw">
            <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="6nx4rRkO7ih" role="1B3o_S" />
      <node concept="3clFbS" id="6nx4rRkNOve" role="3clF47">
        <node concept="3cpWs8" id="5Zr$fBZ18Mg" role="3cqZAp">
          <node concept="3cpWsn" id="5Zr$fBZ18Mh" role="3cpWs9">
            <property role="TrG5h" value="effectiveLanguages" />
            <node concept="3vKaQO" id="5Zr$fBZ16EB" role="1tU5fm">
              <node concept="16syzq" id="5Zr$fBZ16EE" role="3O5elw">
                <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
              </node>
            </node>
            <node concept="1rXfSq" id="5Zr$fBZ18Mi" role="33vP2m">
              <ref role="37wK5l" node="5Zr$fBYWNu5" resolve="effectiveLanguages" />
              <node concept="37vLTw" id="5Zr$fBZ18Mj" role="37wK5m">
                <ref role="3cqZAo" node="6nx4rRkO4u0" resolve="inputLangs" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="_tf6v$5RzG" role="3cqZAp">
          <node concept="3cpWsn" id="_tf6v$5RzH" role="3cpWs9">
            <property role="TrG5h" value="lang2sidekick" />
            <node concept="3rvAFt" id="_tf6v$5QUd" role="1tU5fm">
              <node concept="16syzq" id="_tf6v$5QUj" role="3rvQeY">
                <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
              </node>
              <node concept="16syzq" id="_tf6v$5QUi" role="3rvSg0">
                <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
              </node>
            </node>
            <node concept="2ShNRf" id="_tf6v$5RzI" role="33vP2m">
              <node concept="3rGOSV" id="_tf6v$5RzJ" role="2ShVmc">
                <node concept="16syzq" id="_tf6v$5RzK" role="3rHrn6">
                  <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                </node>
                <node concept="16syzq" id="_tf6v$5RzL" role="3rHtpV">
                  <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5Zr$fBZ28wR" role="3cqZAp">
          <node concept="3clFbS" id="5Zr$fBZ28wU" role="2LFqv$">
            <node concept="1DcWWT" id="5Zr$fBZ2$fu" role="3cqZAp">
              <node concept="3clFbS" id="5Zr$fBZ2$fv" role="2LFqv$">
                <node concept="3clFbJ" id="5Zr$fBZ2$fw" role="3cqZAp">
                  <node concept="2OqwBi" id="5Zr$fBZ2$fx" role="3clFbw">
                    <node concept="37vLTw" id="5Zr$fBZ2$fy" role="2Oq$k0">
                      <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
                    </node>
                    <node concept="liA8E" id="5Zr$fBZ2$fz" role="2OqNvi">
                      <ref role="37wK5l" node="6nx4rRkLZr6" resolve="isSidekick" />
                      <node concept="37vLTw" id="5Zr$fBZ2$f$" role="37wK5m">
                        <ref role="3cqZAo" node="5Zr$fBZ28wV" resolve="lang" />
                      </node>
                      <node concept="37vLTw" id="5Zr$fBZ2$f_" role="37wK5m">
                        <ref role="3cqZAo" node="5Zr$fBZ2$fM" resolve="abs" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="5Zr$fBZ2$fA" role="3clFbx">
                    <node concept="3clFbF" id="5Zr$fBZ2$fB" role="3cqZAp">
                      <node concept="37vLTI" id="5Zr$fBZ2$fC" role="3clFbG">
                        <node concept="37vLTw" id="5Zr$fBZ2$fD" role="37vLTx">
                          <ref role="3cqZAo" node="5Zr$fBZ28wV" resolve="lang" />
                        </node>
                        <node concept="3EllGN" id="5Zr$fBZ2$fE" role="37vLTJ">
                          <node concept="37vLTw" id="5Zr$fBZ2$fF" role="3ElVtu">
                            <ref role="3cqZAo" node="5Zr$fBZ2$fM" resolve="abs" />
                          </node>
                          <node concept="37vLTw" id="5Zr$fBZ2$fG" role="3ElQJh">
                            <ref role="3cqZAo" node="_tf6v$5RzH" resolve="lang2sidekick" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="5Zr$fBZ2$fM" role="1Duv9x">
                <property role="TrG5h" value="abs" />
                <node concept="16syzq" id="5Zr$fBZ2$fN" role="1tU5fm">
                  <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                </node>
              </node>
              <node concept="2OqwBi" id="5Zr$fBZ2$fO" role="1DdaDG">
                <node concept="37vLTw" id="5Zr$fBZ2$fP" role="2Oq$k0">
                  <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
                </node>
                <node concept="liA8E" id="5Zr$fBZ2$fQ" role="2OqNvi">
                  <ref role="37wK5l" node="6nx4rRkOj1Y" resolve="getExtended" />
                  <node concept="37vLTw" id="5Zr$fBZ2$fR" role="37wK5m">
                    <ref role="3cqZAo" node="5Zr$fBZ28wV" resolve="lang" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5Zr$fBZ28wV" role="1Duv9x">
            <property role="TrG5h" value="lang" />
            <node concept="16syzq" id="5Zr$fBZ28wZ" role="1tU5fm">
              <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
            </node>
          </node>
          <node concept="37vLTw" id="5Zr$fBZ28x0" role="1DdaDG">
            <ref role="3cqZAo" node="5Zr$fBZ18Mh" resolve="effectiveLanguages" />
          </node>
        </node>
        <node concept="3clFbH" id="5Zr$fBZ1$KQ" role="3cqZAp" />
        <node concept="3SKdUt" id="3KN3A4uY8wz" role="3cqZAp">
          <node concept="1PaTwC" id="3KN3A4uY8w$" role="1aUNEU">
            <node concept="3oM_SD" id="3KN3A4uYa3M" role="1PaTwD">
              <property role="3oM_SC" value="graph" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uYa3W" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uYa4v" role="1PaTwD">
              <property role="3oM_SC" value="contain" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uYa4F" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uYa4K" role="1PaTwD">
              <property role="3oM_SC" value="languages" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uYa4Y" role="1PaTwD">
              <property role="3oM_SC" value="related" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uYa5t" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uYa5P" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uYa66" role="1PaTwD">
              <property role="3oM_SC" value="ones" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uYa6g" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uYa6r" role="1PaTwD">
              <property role="3oM_SC" value="&quot;langs&quot;" />
            </node>
            <node concept="3oM_SD" id="3ySbbJms4SQ" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="3ySbbJms4T3" role="1PaTwD">
              <property role="3oM_SC" value="their" />
            </node>
            <node concept="3oM_SD" id="3ySbbJms4Th" role="1PaTwD">
              <property role="3oM_SC" value="sidekicked" />
            </node>
            <node concept="3oM_SD" id="3ySbbJms4Ug" role="1PaTwD">
              <property role="3oM_SC" value="langs" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3KN3A4uXg$y" role="3cqZAp">
          <node concept="3cpWsn" id="3KN3A4uXg$_" role="3cpWs9">
            <property role="TrG5h" value="graph" />
            <node concept="3rvAFt" id="3KN3A4uXg$B" role="1tU5fm">
              <node concept="16syzq" id="6nx4rRkOsdu" role="3rvQeY">
                <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
              </node>
              <node concept="3uibUv" id="3KN3A4uXg$D" role="3rvSg0">
                <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="3KN3A4uXoWl" role="33vP2m">
              <node concept="3rGOSV" id="3KN3A4uXiv9" role="2ShVmc">
                <node concept="16syzq" id="6nx4rRkOt0X" role="3rHrn6">
                  <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                </node>
                <node concept="3uibUv" id="3KN3A4uXivb" role="3rHtpV">
                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3ySbbJmrqJ0" role="3cqZAp">
          <node concept="3clFbS" id="3ySbbJmrqJ1" role="2LFqv$">
            <node concept="3clFbJ" id="_tf6v$6dho" role="3cqZAp">
              <node concept="3clFbS" id="_tf6v$6dhq" role="3clFbx">
                <node concept="3N13vt" id="_tf6v$7m7s" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="_tf6v$7lnH" role="3clFbw">
                <node concept="2OqwBi" id="_tf6v$7kxy" role="2Oq$k0">
                  <node concept="37vLTw" id="_tf6v$7jV5" role="2Oq$k0">
                    <ref role="3cqZAo" node="_tf6v$5RzH" resolve="lang2sidekick" />
                  </node>
                  <node concept="T8wYR" id="_tf6v$7l6R" role="2OqNvi" />
                </node>
                <node concept="3JPx81" id="_tf6v$7lUp" role="2OqNvi">
                  <node concept="37vLTw" id="_tf6v$7lYy" role="25WWJ7">
                    <ref role="3cqZAo" node="3ySbbJmrqJM" resolve="lang" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="_tf6vz5df9" role="3cqZAp">
              <node concept="3cpWsn" id="_tf6vz5dfa" role="3cpWs9">
                <property role="TrG5h" value="sidekick" />
                <node concept="16syzq" id="_tf6vz5dcg" role="1tU5fm">
                  <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                </node>
                <node concept="3EllGN" id="_tf6v$7niz" role="33vP2m">
                  <node concept="37vLTw" id="_tf6v$7nCD" role="3ElVtu">
                    <ref role="3cqZAo" node="3ySbbJmrqJM" resolve="lang" />
                  </node>
                  <node concept="37vLTw" id="_tf6v$7mBQ" role="3ElQJh">
                    <ref role="3cqZAo" node="_tf6v$5RzH" resolve="lang2sidekick" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="_tf6vze9yS" role="3cqZAp">
              <node concept="3cpWsn" id="_tf6vze9yT" role="3cpWs9">
                <property role="TrG5h" value="aspect" />
                <node concept="16syzq" id="_tf6vze9yU" role="1tU5fm">
                  <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
                </node>
                <node concept="2OqwBi" id="_tf6vze9yV" role="33vP2m">
                  <node concept="37vLTw" id="_tf6vze9yW" role="2Oq$k0">
                    <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
                  </node>
                  <node concept="liA8E" id="_tf6vze9yX" role="2OqNvi">
                    <ref role="37wK5l" node="NKt6ynombB" resolve="discover" />
                    <node concept="37vLTw" id="_tf6vzebKL" role="37wK5m">
                      <ref role="3cqZAo" node="3ySbbJmrqJM" resolve="lang" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="_tf6vze9z1" role="3cqZAp">
              <node concept="3clFbS" id="_tf6vze9z2" role="3clFbx">
                <node concept="3clFbF" id="_tf6vze9z3" role="3cqZAp">
                  <node concept="37vLTI" id="_tf6vze9z4" role="3clFbG">
                    <node concept="2OqwBi" id="_tf6vze9z5" role="37vLTx">
                      <node concept="37vLTw" id="_tf6vze9z6" role="2Oq$k0">
                        <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
                      </node>
                      <node concept="liA8E" id="_tf6vze9z7" role="2OqNvi">
                        <ref role="37wK5l" node="NKt6ynombB" resolve="discover" />
                        <node concept="37vLTw" id="_tf6vzecQB" role="37wK5m">
                          <ref role="3cqZAo" node="_tf6vz5dfa" resolve="sidekick" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="_tf6vze9zb" role="37vLTJ">
                      <ref role="3cqZAo" node="_tf6vze9yT" resolve="aspect" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="_tf6vze9zc" role="3clFbw">
                <node concept="3y3z36" id="_tf6vze9zd" role="3uHU7w">
                  <node concept="10Nm6u" id="_tf6vze9ze" role="3uHU7w" />
                  <node concept="37vLTw" id="_tf6vzec3m" role="3uHU7B">
                    <ref role="3cqZAo" node="_tf6vz5dfa" resolve="sidekick" />
                  </node>
                </node>
                <node concept="3clFbC" id="_tf6vze9zi" role="3uHU7B">
                  <node concept="37vLTw" id="_tf6vze9zj" role="3uHU7B">
                    <ref role="3cqZAo" node="_tf6vze9yT" resolve="aspect" />
                  </node>
                  <node concept="10Nm6u" id="_tf6vze9zk" role="3uHU7w" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5Zr$fBYYI9_" role="3cqZAp">
              <node concept="1rXfSq" id="9UUIHMyW7q" role="3clFbG">
                <ref role="37wK5l" node="6nx4rRkQTd3" resolve="addToGraph" />
                <node concept="37vLTw" id="9UUIHMyW7r" role="37wK5m">
                  <ref role="3cqZAo" node="3ySbbJmrqJM" resolve="lang" />
                </node>
                <node concept="37vLTw" id="9UUIHMyW7s" role="37wK5m">
                  <ref role="3cqZAo" node="_tf6vz5dfa" resolve="sidekick" />
                </node>
                <node concept="37vLTw" id="9UUIHMyW7t" role="37wK5m">
                  <ref role="3cqZAo" node="_tf6vze9yT" resolve="aspect" />
                </node>
                <node concept="37vLTw" id="9UUIHMyW7u" role="37wK5m">
                  <ref role="3cqZAo" node="3KN3A4uXg$_" resolve="graph" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5Zr$fBYYApJ" role="3cqZAp" />
          </node>
          <node concept="3cpWsn" id="3ySbbJmrqJM" role="1Duv9x">
            <property role="TrG5h" value="lang" />
            <node concept="16syzq" id="6nx4rRkOnTF" role="1tU5fm">
              <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
            </node>
          </node>
          <node concept="37vLTw" id="5Zr$fBZ18Mk" role="1DdaDG">
            <ref role="3cqZAo" node="5Zr$fBZ18Mh" resolve="effectiveLanguages" />
          </node>
        </node>
        <node concept="3clFbH" id="_tf6v$9FjL" role="3cqZAp" />
        <node concept="3cpWs8" id="3KN3A4uUxOd" role="3cqZAp">
          <node concept="3cpWsn" id="3KN3A4uUxOe" role="3cpWs9">
            <property role="TrG5h" value="sortedGraph" />
            <node concept="3uibUv" id="3Vcd0Fo438t" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~LinkedList" resolve="LinkedList" />
              <node concept="3uibUv" id="3Vcd0Fo5IdA" role="11_B2D">
                <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
              </node>
            </node>
            <node concept="1rXfSq" id="3Vcd0Fo48HP" role="33vP2m">
              <ref role="37wK5l" node="3Vcd0Fo3q2C" resolve="topoSort" />
              <node concept="37vLTw" id="3Vcd0Fo4b3x" role="37wK5m">
                <ref role="3cqZAo" node="3KN3A4uXg$_" resolve="graph" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9UUIHLCd_g" role="3cqZAp">
          <node concept="1rXfSq" id="9UUIHLCd_i" role="3clFbG">
            <ref role="37wK5l" node="3Vcd0Fo4Gbu" resolve="findAspectCliques" />
            <node concept="37vLTw" id="9UUIHLCd_j" role="37wK5m">
              <ref role="3cqZAo" node="3KN3A4uUxOe" resolve="sortedGraph" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="_tf6vzkdfv" role="3cqZAp" />
        <node concept="3cpWs8" id="3KN3A4uWnnW" role="3cqZAp">
          <node concept="3cpWsn" id="3KN3A4uWnnZ" role="3cpWs9">
            <property role="TrG5h" value="aspects" />
            <node concept="_YKpA" id="3KN3A4uWnnS" role="1tU5fm">
              <node concept="16syzq" id="3KN3A4uZiwc" role="_ZDj9">
                <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
              </node>
            </node>
            <node concept="2ShNRf" id="3KN3A4uWuqG" role="33vP2m">
              <node concept="Tc6Ow" id="3KN3A4uWonR" role="2ShVmc">
                <node concept="16syzq" id="3KN3A4uZj1P" role="HW$YZ">
                  <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="9UUIHMIp0z" role="3cqZAp" />
        <node concept="3SKdUt" id="66WUpTItdbI" role="3cqZAp">
          <node concept="1PaTwC" id="66WUpTItdbJ" role="1aUNEU">
            <node concept="3oM_SD" id="66WUpTItdbL" role="1PaTwD">
              <property role="3oM_SC" value="complete" />
            </node>
            <node concept="3oM_SD" id="66WUpTItdsp" role="1PaTwD">
              <property role="3oM_SC" value="set" />
            </node>
            <node concept="3oM_SD" id="66WUpTItdsG" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="66WUpTItdsK" role="1PaTwD">
              <property role="3oM_SC" value="relevant" />
            </node>
            <node concept="3oM_SD" id="66WUpTItdsP" role="1PaTwD">
              <property role="3oM_SC" value="namespaces" />
            </node>
            <node concept="3oM_SD" id="66WUpTItdt3" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="66WUpTItdta" role="1PaTwD">
              <property role="3oM_SC" value="sidekicked" />
            </node>
            <node concept="3oM_SD" id="66WUpTItdtq" role="1PaTwD">
              <property role="3oM_SC" value="langs" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5Zr$fBZ7KyZ" role="3cqZAp">
          <node concept="3cpWsn" id="5Zr$fBZ7Kz5" role="3cpWs9">
            <property role="TrG5h" value="aspectByNamespace" />
            <node concept="3rvAFt" id="5Zr$fBZ7Kz7" role="1tU5fm">
              <node concept="17QB3L" id="5Zr$fBZdk6l" role="3rvQeY" />
              <node concept="16syzq" id="5Zr$fBZdBQv" role="3rvSg0">
                <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
              </node>
            </node>
            <node concept="2ShNRf" id="5Zr$fBZ8Qxv" role="33vP2m">
              <node concept="3rGOSV" id="5Zr$fBZ8Qv7" role="2ShVmc">
                <node concept="17QB3L" id="5Zr$fBZebfj" role="3rHrn6" />
                <node concept="16syzq" id="5Zr$fBZeshq" role="3rHtpV">
                  <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Zr$fBZeJVl" role="3cqZAp" />
        <node concept="3SKdUt" id="3KN3A4uZBAM" role="3cqZAp">
          <node concept="1PaTwC" id="3KN3A4uZBAN" role="1aUNEU">
            <node concept="3oM_SD" id="3KN3A4uZBGl" role="1PaTwD">
              <property role="3oM_SC" value="multiple" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uZBHx" role="1PaTwD">
              <property role="3oM_SC" value="passes" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uZBGv" role="1PaTwD">
              <property role="3oM_SC" value="through" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uZBGU" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uZBH6" role="1PaTwD">
              <property role="3oM_SC" value="sorted" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uZBHj" role="1PaTwD">
              <property role="3oM_SC" value="list" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uZBHS" role="1PaTwD">
              <property role="3oM_SC" value="result" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uZBI8" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uZBIh" role="1PaTwD">
              <property role="3oM_SC" value="aspects" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uZBIF" role="1PaTwD">
              <property role="3oM_SC" value="list" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uZBJ6" role="1PaTwD">
              <property role="3oM_SC" value="sorted" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uZBJq" role="1PaTwD">
              <property role="3oM_SC" value="too" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3KN3A4uWvqq" role="3cqZAp">
          <node concept="3clFbS" id="3KN3A4uWvqs" role="2LFqv$">
            <node concept="3cpWs8" id="3KN3A4uZhPx" role="3cqZAp">
              <node concept="3cpWsn" id="3KN3A4uZhPy" role="3cpWs9">
                <property role="TrG5h" value="aspect" />
                <node concept="16syzq" id="3KN3A4uZhLh" role="1tU5fm">
                  <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
                </node>
                <node concept="10QFUN" id="_tf6vzfqJ8" role="33vP2m">
                  <node concept="2OqwBi" id="_tf6vzfqJ5" role="10QFUP">
                    <node concept="37vLTw" id="_tf6vzfqJ6" role="2Oq$k0">
                      <ref role="3cqZAo" node="3KN3A4uWvqt" resolve="v" />
                    </node>
                    <node concept="2OwXpG" id="_tf6vzfqJ7" role="2OqNvi">
                      <ref role="2Oxat5" node="_tf6vzc$Qe" resolve="aspect" />
                    </node>
                  </node>
                  <node concept="16syzq" id="_tf6vzfqJ4" role="10QFUM">
                    <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3KN3A4uZgGl" role="3cqZAp">
              <node concept="3clFbS" id="3KN3A4uZgGn" role="3clFbx">
                <node concept="3clFbF" id="3KN3A4uWyEH" role="3cqZAp">
                  <node concept="2OqwBi" id="3KN3A4uWzcM" role="3clFbG">
                    <node concept="37vLTw" id="3KN3A4uWyEF" role="2Oq$k0">
                      <ref role="3cqZAo" node="3KN3A4uWnnZ" resolve="aspects" />
                    </node>
                    <node concept="TSZUe" id="3KN3A4uWzL9" role="2OqNvi">
                      <node concept="37vLTw" id="3KN3A4uZks6" role="25WWJ7">
                        <ref role="3cqZAo" node="3KN3A4uZhPy" resolve="aspect" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5Zr$fBZ9a8Q" role="3cqZAp">
                  <node concept="37vLTI" id="5Zr$fBZ9BBy" role="3clFbG">
                    <node concept="37vLTw" id="5Zr$fBZfc$M" role="37vLTx">
                      <ref role="3cqZAo" node="3KN3A4uZhPy" resolve="aspect" />
                    </node>
                    <node concept="3EllGN" id="5Zr$fBZ9jV_" role="37vLTJ">
                      <node concept="37vLTw" id="5Zr$fBZ9a8O" role="3ElQJh">
                        <ref role="3cqZAo" node="5Zr$fBZ7Kz5" resolve="aspectByNamespace" />
                      </node>
                      <node concept="2OqwBi" id="5Zr$fBZeTg6" role="3ElVtu">
                        <node concept="37vLTw" id="5Zr$fBZeTg7" role="2Oq$k0">
                          <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
                        </node>
                        <node concept="liA8E" id="5Zr$fBZeTg8" role="2OqNvi">
                          <ref role="37wK5l" node="6nx4rRkVmWH" resolve="getNamespace" />
                          <node concept="10QFUN" id="5Zr$fBZeTg9" role="37wK5m">
                            <node concept="2OqwBi" id="5Zr$fBZeTga" role="10QFUP">
                              <node concept="37vLTw" id="5Zr$fBZeTgb" role="2Oq$k0">
                                <ref role="3cqZAo" node="3KN3A4uWvqt" resolve="v" />
                              </node>
                              <node concept="2OwXpG" id="5Zr$fBZeTgc" role="2OqNvi">
                                <ref role="2Oxat5" node="3KN3A4uUwms" resolve="lang" />
                              </node>
                            </node>
                            <node concept="16syzq" id="5Zr$fBZeTgd" role="10QFUM">
                              <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="_tf6vzfCCD" role="3cqZAp">
                  <node concept="3clFbS" id="_tf6vzfCCF" role="3clFbx">
                    <node concept="3clFbF" id="5Zr$fBZbk05" role="3cqZAp">
                      <node concept="37vLTI" id="5Zr$fBZg1WC" role="3clFbG">
                        <node concept="37vLTw" id="5Zr$fBZga$L" role="37vLTx">
                          <ref role="3cqZAo" node="3KN3A4uZhPy" resolve="aspect" />
                        </node>
                        <node concept="3EllGN" id="5Zr$fBZbtPO" role="37vLTJ">
                          <node concept="37vLTw" id="5Zr$fBZbk03" role="3ElQJh">
                            <ref role="3cqZAo" node="5Zr$fBZ7Kz5" resolve="aspectByNamespace" />
                          </node>
                          <node concept="2OqwBi" id="5Zr$fBZc6Vd" role="3ElVtu">
                            <node concept="37vLTw" id="5Zr$fBZc6Ve" role="2Oq$k0">
                              <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
                            </node>
                            <node concept="liA8E" id="5Zr$fBZc6Vf" role="2OqNvi">
                              <ref role="37wK5l" node="6nx4rRkVmWH" resolve="getNamespace" />
                              <node concept="10QFUN" id="5Zr$fBZc6Vg" role="37wK5m">
                                <node concept="2OqwBi" id="5Zr$fBZc6Vh" role="10QFUP">
                                  <node concept="37vLTw" id="5Zr$fBZc6Vi" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3KN3A4uWvqt" resolve="v" />
                                  </node>
                                  <node concept="2OwXpG" id="5Zr$fBZc6Vj" role="2OqNvi">
                                    <ref role="2Oxat5" node="_tf6vz1OM3" resolve="sidekick" />
                                  </node>
                                </node>
                                <node concept="16syzq" id="5Zr$fBZc6Vk" role="10QFUM">
                                  <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="_tf6vzfDxH" role="3clFbw">
                    <node concept="10Nm6u" id="_tf6vzfD$U" role="3uHU7w" />
                    <node concept="2OqwBi" id="_tf6vzfD94" role="3uHU7B">
                      <node concept="37vLTw" id="_tf6vzfD3c" role="2Oq$k0">
                        <ref role="3cqZAo" node="3KN3A4uWvqt" resolve="v" />
                      </node>
                      <node concept="2OwXpG" id="_tf6vzfDue" role="2OqNvi">
                        <ref role="2Oxat5" node="_tf6vz1OM3" resolve="sidekick" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="3KN3A4uZirI" role="3clFbw">
                <node concept="10Nm6u" id="3KN3A4uZivB" role="3uHU7w" />
                <node concept="37vLTw" id="3KN3A4uZhPD" role="3uHU7B">
                  <ref role="3cqZAo" node="3KN3A4uZhPy" resolve="aspect" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3KN3A4uWvqt" role="1Duv9x">
            <property role="TrG5h" value="v" />
            <node concept="3uibUv" id="3KN3A4uWvtm" role="1tU5fm">
              <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
            </node>
          </node>
          <node concept="37vLTw" id="3KN3A4uWwq8" role="1DdaDG">
            <ref role="3cqZAo" node="3KN3A4uUxOe" resolve="sortedGraph" />
          </node>
        </node>
        <node concept="3clFbH" id="_tf6vziZJx" role="3cqZAp" />
        <node concept="3clFbJ" id="3Vcd0FobWqJ" role="3cqZAp">
          <node concept="3clFbS" id="3Vcd0FobWqK" role="3clFbx">
            <node concept="3cpWs6" id="4nDRG5_gMF_" role="3cqZAp">
              <node concept="2ShNRf" id="4nDRG5_hgMK" role="3cqZAk">
                <node concept="1pGfFk" id="4nDRG5_hgML" role="2ShVmc">
                  <ref role="37wK5l" node="3KN3A4uXEXp" />
                  <node concept="37vLTw" id="4nDRG5_hgMM" role="37wK5m">
                    <ref role="3cqZAo" node="3KN3A4uWnnZ" resolve="aspects" />
                  </node>
                  <node concept="37vLTw" id="4nDRG5_hgMN" role="37wK5m">
                    <ref role="3cqZAo" node="5Zr$fBZ7Kz5" resolve="aspectByNamespace" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3Vcd0FobWqU" role="3clFbw">
            <node concept="37vLTw" id="3Vcd0FobWqV" role="2Oq$k0">
              <ref role="3cqZAo" node="3KN3A4uWnnZ" resolve="aspects" />
            </node>
            <node concept="3GX2aA" id="3Vcd0FobWqW" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="4nDRG5_hIrf" role="9aQIa">
            <node concept="3clFbS" id="4nDRG5_hIrg" role="9aQI4">
              <node concept="3SKdUt" id="3Vcd0Fo5T2m" role="3cqZAp">
                <node concept="1PaTwC" id="3Vcd0Fo5T2n" role="1aUNEU">
                  <node concept="3oM_SD" id="3Vcd0Fo5T2o" role="1PaTwD">
                    <property role="3oM_SC" value="return" />
                  </node>
                  <node concept="3oM_SD" id="3Vcd0Fo5T2p" role="1PaTwD">
                    <property role="3oM_SC" value="an" />
                  </node>
                  <node concept="3oM_SD" id="3Vcd0Fo5T2q" role="1PaTwD">
                    <property role="3oM_SC" value="empty" />
                  </node>
                  <node concept="3oM_SD" id="3Vcd0Fo5T2r" role="1PaTwD">
                    <property role="3oM_SC" value="clique" />
                  </node>
                  <node concept="3oM_SD" id="3Vcd0Fo5T2s" role="1PaTwD">
                    <property role="3oM_SC" value="in" />
                  </node>
                  <node concept="3oM_SD" id="3Vcd0Fo5T2t" role="1PaTwD">
                    <property role="3oM_SC" value="case" />
                  </node>
                  <node concept="3oM_SD" id="3Vcd0Fo5T2u" role="1PaTwD">
                    <property role="3oM_SC" value="no" />
                  </node>
                  <node concept="3oM_SD" id="3Vcd0Fo5T2v" role="1PaTwD">
                    <property role="3oM_SC" value="aspects" />
                  </node>
                  <node concept="3oM_SD" id="3Vcd0Fo5T2w" role="1PaTwD">
                    <property role="3oM_SC" value="discovered" />
                  </node>
                  <node concept="3oM_SD" id="3Vcd0Fo5T2x" role="1PaTwD">
                    <property role="3oM_SC" value="or" />
                  </node>
                  <node concept="3oM_SD" id="3Vcd0Fo5T2y" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="3Vcd0Fo5T2z" role="1PaTwD">
                    <property role="3oM_SC" value="invariant" />
                  </node>
                  <node concept="3oM_SD" id="3Vcd0Fo5T2$" role="1PaTwD">
                    <property role="3oM_SC" value="fails" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4nDRG5_hSsn" role="3cqZAp">
                <node concept="2ShNRf" id="4nDRG5_i2bN" role="3cqZAk">
                  <node concept="1pGfFk" id="4nDRG5_i2bO" role="2ShVmc">
                    <ref role="37wK5l" node="7u0sJ20M14I" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6nx4rRkO54v" role="3clF45">
        <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
        <node concept="16syzq" id="6nx4rRkO54w" role="11_B2D">
          <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6nx4rRkQytB" role="jymVt" />
    <node concept="3clFb_" id="3Vcd0Fo3q2C" role="jymVt">
      <property role="TrG5h" value="topoSort" />
      <node concept="3clFbS" id="3Vcd0Fo3j_f" role="3clF47">
        <node concept="3SKdUt" id="3Vcd0Fo3j_g" role="3cqZAp">
          <node concept="1PaTwC" id="3Vcd0Fo3j_h" role="1aUNEU">
            <node concept="3oM_SD" id="3Vcd0Fo3j_i" role="1PaTwD">
              <property role="3oM_SC" value="depth-first" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo3j_j" role="1PaTwD">
              <property role="3oM_SC" value="search." />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo3j_k" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo3j_l" role="1PaTwD">
              <property role="3oM_SC" value="vertex" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo3j_m" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo3j_n" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo3j_o" role="1PaTwD">
              <property role="3oM_SC" value="visited" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo3j_p" role="1PaTwD">
              <property role="3oM_SC" value="last" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2TBKtozZhrr" role="3cqZAp">
          <node concept="1PaTwC" id="3Vcd0Fo3j_q" role="1aUNEU">
            <node concept="3oM_SD" id="3Vcd0Fo3j_r" role="1PaTwD">
              <property role="3oM_SC" value="(after" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo3j_s" role="1PaTwD">
              <property role="3oM_SC" value="all" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo3j_t" role="1PaTwD">
              <property role="3oM_SC" value="dependencies)" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo3j_u" role="1PaTwD">
              <property role="3oM_SC" value="moves" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo3j_v" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo3j_w" role="1PaTwD">
              <property role="3oM_SC" value="front" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo3j_x" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo3j_y" role="1PaTwD">
              <property role="3oM_SC" value="others" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3Vcd0Fo3j_z" role="3cqZAp">
          <node concept="3cpWsn" id="3Vcd0Fo3j_$" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="3Vcd0Fo3j__" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~LinkedList" resolve="LinkedList" />
              <node concept="3uibUv" id="3Vcd0Fo3zEw" role="11_B2D">
                <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="3Vcd0Fo3j_B" role="33vP2m">
              <node concept="1pGfFk" id="3Vcd0Fo3j_C" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~LinkedList.&lt;init&gt;()" resolve="LinkedList" />
                <node concept="3uibUv" id="3Vcd0Fo3_aC" role="1pMfVU">
                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3Vcd0Fo3j_E" role="3cqZAp">
          <node concept="3cpWsn" id="3Vcd0Fo3j_F" role="3cpWs9">
            <property role="TrG5h" value="stack" />
            <node concept="oyxx6" id="3Vcd0Fo3j_G" role="1tU5fm">
              <node concept="3uibUv" id="3Vcd0Fo3AEh" role="3O5elw">
                <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="3Vcd0Fo3j_I" role="33vP2m">
              <node concept="2Jqq0_" id="3Vcd0Fo3j_J" role="2ShVmc">
                <node concept="3uibUv" id="3Vcd0Fo3DGz" role="HW$YZ">
                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3Vcd0Fo3j_L" role="3cqZAp">
          <node concept="3cpWsn" id="3Vcd0Fo3j_M" role="3cpWs9">
            <property role="TrG5h" value="finished" />
            <node concept="2hMVRd" id="3Vcd0Fo3j_N" role="1tU5fm">
              <node concept="3uibUv" id="3Vcd0Fo3HzB" role="2hN53Y">
                <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="3Vcd0Fo3j_P" role="33vP2m">
              <node concept="2i4dXS" id="3Vcd0Fo3j_Q" role="2ShVmc">
                <node concept="3uibUv" id="3Vcd0Fo3J82" role="HW$YZ">
                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3Vcd0Fo3j_S" role="3cqZAp">
          <node concept="3cpWsn" id="3Vcd0Fo3j_T" role="3cpWs9">
            <property role="TrG5h" value="visited" />
            <node concept="2hMVRd" id="3Vcd0Fo3j_U" role="1tU5fm">
              <node concept="3uibUv" id="3Vcd0Fo3KF_" role="2hN53Y">
                <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="3Vcd0Fo3j_W" role="33vP2m">
              <node concept="2i4dXS" id="3Vcd0Fo3j_X" role="2ShVmc">
                <node concept="3uibUv" id="3Vcd0Fo3NfV" role="HW$YZ">
                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3Vcd0Fo3j_Z" role="3cqZAp" />
        <node concept="3cpWs8" id="1LBj9wAGJhL" role="3cqZAp">
          <node concept="3cpWsn" id="1LBj9wAGJhM" role="3cpWs9">
            <property role="TrG5h" value="orderedVts" />
            <node concept="A3Dl8" id="1LBj9wAGF$L" role="1tU5fm">
              <node concept="3uibUv" id="1LBj9wAGF$O" role="A3Ik2">
                <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
              </node>
            </node>
            <node concept="2OqwBi" id="1LBj9wAGOzt" role="33vP2m">
              <node concept="2OqwBi" id="1LBj9wAGLFF" role="2Oq$k0">
                <node concept="2OqwBi" id="1LBj9wAGJhN" role="2Oq$k0">
                  <node concept="37vLTw" id="1LBj9wAGJhO" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Vcd0Fo3j_a" resolve="graph" />
                  </node>
                  <node concept="T8wYR" id="1LBj9wAGJhP" role="2OqNvi" />
                </node>
                <node concept="2S7cBI" id="1LBj9wAGNox" role="2OqNvi">
                  <node concept="1bVj0M" id="1LBj9wAGNoz" role="23t8la">
                    <node concept="3clFbS" id="1LBj9wAGNo$" role="1bW5cS">
                      <node concept="3clFbF" id="1LBj9wAL8AV" role="3cqZAp">
                        <node concept="2YIFZM" id="1LBj9wAL8Og" role="3clFbG">
                          <ref role="37wK5l" to="wyt6:~System.identityHashCode(java.lang.Object)" resolve="identityHashCode" />
                          <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                          <node concept="2OqwBi" id="1LBj9wAL9oI" role="37wK5m">
                            <node concept="37vLTw" id="1LBj9wAL97J" role="2Oq$k0">
                              <ref role="3cqZAo" node="6E5fMGvfKTi" resolve="it" />
                            </node>
                            <node concept="2OwXpG" id="1LBj9wAL9QC" role="2OqNvi">
                              <ref role="2Oxat5" node="3KN3A4uUwms" resolve="lang" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="gl6BB" id="6E5fMGvfKTi" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6E5fMGvfKTj" role="1tU5fm" />
                    </node>
                  </node>
                  <node concept="1nlBCl" id="1LBj9wAGNoB" role="2S7zOq">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="1LBj9wAGPwX" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3Vcd0Fo3jA0" role="3cqZAp">
          <node concept="3clFbS" id="3Vcd0Fo3jA1" role="2LFqv$">
            <node concept="3clFbJ" id="3Vcd0Fo3jA2" role="3cqZAp">
              <node concept="3fqX7Q" id="3Vcd0Fo3jA3" role="3clFbw">
                <node concept="2OqwBi" id="3Vcd0Fo3jA4" role="3fr31v">
                  <node concept="37vLTw" id="3Vcd0Fo3jA5" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Vcd0Fo3j_M" resolve="finished" />
                  </node>
                  <node concept="3JPx81" id="3Vcd0Fo3jA6" role="2OqNvi">
                    <node concept="37vLTw" id="3Vcd0Fo3jA7" role="25WWJ7">
                      <ref role="3cqZAo" node="3Vcd0Fo3jBC" resolve="vtx" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="3Vcd0Fo3jA8" role="3clFbx">
                <node concept="3clFbF" id="3Vcd0Fo3jA9" role="3cqZAp">
                  <node concept="2OqwBi" id="3Vcd0Fo3jAa" role="3clFbG">
                    <node concept="37vLTw" id="3Vcd0Fo3jAb" role="2Oq$k0">
                      <ref role="3cqZAo" node="3Vcd0Fo3j_F" resolve="stack" />
                    </node>
                    <node concept="2ArzE6" id="3Vcd0Fo3jAc" role="2OqNvi">
                      <node concept="37vLTw" id="3Vcd0Fo3jAd" role="25WWJ7">
                        <ref role="3cqZAo" node="3Vcd0Fo3jBC" resolve="vtx" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3Vcd0Fo3jAe" role="3cqZAp" />
                <node concept="2$JKZl" id="3Vcd0Fo3jAf" role="3cqZAp">
                  <node concept="3clFbS" id="3Vcd0Fo3jAg" role="2LFqv$">
                    <node concept="3cpWs8" id="3Vcd0Fo3jAh" role="3cqZAp">
                      <node concept="3cpWsn" id="3Vcd0Fo3jAi" role="3cpWs9">
                        <property role="TrG5h" value="v" />
                        <node concept="3uibUv" id="3Vcd0Fo3RxN" role="1tU5fm">
                          <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
                        </node>
                        <node concept="2OqwBi" id="3Vcd0Fo3jAk" role="33vP2m">
                          <node concept="37vLTw" id="3Vcd0Fo3jAl" role="2Oq$k0">
                            <ref role="3cqZAo" node="3Vcd0Fo3j_F" resolve="stack" />
                          </node>
                          <node concept="2oR75g" id="3Vcd0Fo3jAm" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="3Vcd0Fo3jAn" role="3cqZAp">
                      <node concept="3clFbS" id="3Vcd0Fo3jAo" role="3clFbx">
                        <node concept="3clFbF" id="3Vcd0Fo3jAp" role="3cqZAp">
                          <node concept="2OqwBi" id="3Vcd0Fo3jAq" role="3clFbG">
                            <node concept="37vLTw" id="3Vcd0Fo3jAr" role="2Oq$k0">
                              <ref role="3cqZAo" node="3Vcd0Fo3j_F" resolve="stack" />
                            </node>
                            <node concept="2AryhJ" id="3Vcd0Fo3jAs" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="3N13vt" id="3Vcd0Fo3jAt" role="3cqZAp" />
                      </node>
                      <node concept="2OqwBi" id="3Vcd0Fo3jAu" role="3clFbw">
                        <node concept="37vLTw" id="3Vcd0Fo3jAv" role="2Oq$k0">
                          <ref role="3cqZAo" node="3Vcd0Fo3j_M" resolve="finished" />
                        </node>
                        <node concept="3JPx81" id="3Vcd0Fo3jAw" role="2OqNvi">
                          <node concept="37vLTw" id="3Vcd0Fo3jAx" role="25WWJ7">
                            <ref role="3cqZAo" node="3Vcd0Fo3jAi" resolve="v" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3SKdUt" id="3Vcd0Fo3jAy" role="3cqZAp">
                      <node concept="1PaTwC" id="3Vcd0Fo3jAz" role="1aUNEU">
                        <node concept="3oM_SD" id="3Vcd0Fo3jA$" role="1PaTwD">
                          <property role="3oM_SC" value="when" />
                        </node>
                        <node concept="3oM_SD" id="3Vcd0Fo3jA_" role="1PaTwD">
                          <property role="3oM_SC" value="all" />
                        </node>
                        <node concept="3oM_SD" id="3Vcd0Fo3jAA" role="1PaTwD">
                          <property role="3oM_SC" value="descendants" />
                        </node>
                        <node concept="3oM_SD" id="3Vcd0Fo3jAB" role="1PaTwD">
                          <property role="3oM_SC" value="of" />
                        </node>
                        <node concept="3oM_SD" id="3Vcd0Fo3jAC" role="1PaTwD">
                          <property role="3oM_SC" value="v" />
                        </node>
                        <node concept="3oM_SD" id="3Vcd0Fo3jAD" role="1PaTwD">
                          <property role="3oM_SC" value="are" />
                        </node>
                        <node concept="3oM_SD" id="3Vcd0Fo3jAE" role="1PaTwD">
                          <property role="3oM_SC" value="processed" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="3Vcd0Fo3jAF" role="3cqZAp">
                      <node concept="3clFbS" id="3Vcd0Fo3jAG" role="3clFbx">
                        <node concept="3clFbF" id="3Vcd0Fo3jAH" role="3cqZAp">
                          <node concept="2OqwBi" id="3Vcd0Fo3jAI" role="3clFbG">
                            <node concept="37vLTw" id="3Vcd0Fo3jAJ" role="2Oq$k0">
                              <ref role="3cqZAo" node="3Vcd0Fo3j_$" resolve="result" />
                            </node>
                            <node concept="liA8E" id="3Vcd0Fo3jAK" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~LinkedList.addFirst(java.lang.Object)" resolve="addFirst" />
                              <node concept="37vLTw" id="3Vcd0Fo3jAL" role="37wK5m">
                                <ref role="3cqZAo" node="3Vcd0Fo3jAi" resolve="v" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="3Vcd0Fo3jAM" role="3cqZAp">
                          <node concept="2OqwBi" id="3Vcd0Fo3jAN" role="3clFbG">
                            <node concept="37vLTw" id="3Vcd0Fo3jAO" role="2Oq$k0">
                              <ref role="3cqZAo" node="3Vcd0Fo3j_M" resolve="finished" />
                            </node>
                            <node concept="TSZUe" id="3Vcd0Fo3jAP" role="2OqNvi">
                              <node concept="37vLTw" id="3Vcd0Fo3jAQ" role="25WWJ7">
                                <ref role="3cqZAo" node="3Vcd0Fo3jAi" resolve="v" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="3Vcd0Fo3jAR" role="3cqZAp">
                          <node concept="2OqwBi" id="3Vcd0Fo3jAS" role="3clFbG">
                            <node concept="37vLTw" id="3Vcd0Fo3jAT" role="2Oq$k0">
                              <ref role="3cqZAo" node="3Vcd0Fo3j_T" resolve="visited" />
                            </node>
                            <node concept="3dhRuq" id="3Vcd0Fo3jAU" role="2OqNvi">
                              <node concept="37vLTw" id="3Vcd0Fo3jAV" role="25WWJ7">
                                <ref role="3cqZAo" node="3Vcd0Fo3jAi" resolve="v" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="3Vcd0Fo3jAW" role="3cqZAp">
                          <node concept="2OqwBi" id="3Vcd0Fo3jAX" role="3clFbG">
                            <node concept="37vLTw" id="3Vcd0Fo3jAY" role="2Oq$k0">
                              <ref role="3cqZAo" node="3Vcd0Fo3j_F" resolve="stack" />
                            </node>
                            <node concept="2AryhJ" id="3Vcd0Fo3jAZ" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="3N13vt" id="3Vcd0Fo3jB0" role="3cqZAp" />
                      </node>
                      <node concept="2OqwBi" id="3Vcd0Fo3jB1" role="3clFbw">
                        <node concept="37vLTw" id="3Vcd0Fo3jB2" role="2Oq$k0">
                          <ref role="3cqZAo" node="3Vcd0Fo3j_T" resolve="visited" />
                        </node>
                        <node concept="3JPx81" id="3Vcd0Fo3jB3" role="2OqNvi">
                          <node concept="37vLTw" id="3Vcd0Fo3jB4" role="25WWJ7">
                            <ref role="3cqZAo" node="3Vcd0Fo3jAi" resolve="v" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3Vcd0Fo3jB5" role="3cqZAp">
                      <node concept="2OqwBi" id="3Vcd0Fo3jB6" role="3clFbG">
                        <node concept="37vLTw" id="3Vcd0Fo3jB7" role="2Oq$k0">
                          <ref role="3cqZAo" node="3Vcd0Fo3j_T" resolve="visited" />
                        </node>
                        <node concept="TSZUe" id="3Vcd0Fo3jB8" role="2OqNvi">
                          <node concept="37vLTw" id="3Vcd0Fo3jB9" role="25WWJ7">
                            <ref role="3cqZAo" node="3Vcd0Fo3jAi" resolve="v" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="3Vcd0Fo3jBa" role="3cqZAp" />
                    <node concept="3cpWs8" id="1LBj9wAJNTy" role="3cqZAp">
                      <node concept="3cpWsn" id="1LBj9wAJNTz" role="3cpWs9">
                        <property role="TrG5h" value="orderedExtends" />
                        <node concept="_YKpA" id="1LBj9wAJNS1" role="1tU5fm">
                          <node concept="3uibUv" id="1LBj9wAJNS4" role="_ZDj9">
                            <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1LBj9wAJNT$" role="33vP2m">
                          <node concept="2OqwBi" id="1LBj9wAJNT_" role="2Oq$k0">
                            <node concept="1eOMI4" id="1LBj9wAJQAw" role="2Oq$k0">
                              <node concept="2OqwBi" id="1LBj9wAJQAt" role="1eOMHV">
                                <node concept="37vLTw" id="1LBj9wAJQAu" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3Vcd0Fo3jAi" resolve="v" />
                                </node>
                                <node concept="2OwXpG" id="1LBj9wAJQAv" role="2OqNvi">
                                  <ref role="2Oxat5" node="3KN3A4uUwmv" resolve="allExtends" />
                                </node>
                              </node>
                            </node>
                            <node concept="2S7cBI" id="1LBj9wAJNTB" role="2OqNvi">
                              <node concept="1bVj0M" id="1LBj9wAJNTC" role="23t8la">
                                <node concept="3clFbS" id="1LBj9wAJNTD" role="1bW5cS">
                                  <node concept="3clFbF" id="1LBj9wAJNTE" role="3cqZAp">
                                    <node concept="2YIFZM" id="1LBj9wAJNTF" role="3clFbG">
                                      <ref role="37wK5l" to="wyt6:~System.identityHashCode(java.lang.Object)" resolve="identityHashCode" />
                                      <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                                      <node concept="2OqwBi" id="1LBj9wALar6" role="37wK5m">
                                        <node concept="37vLTw" id="1LBj9wAJNTG" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6E5fMGvfKTk" resolve="it" />
                                        </node>
                                        <node concept="2OwXpG" id="1LBj9wALb3d" role="2OqNvi">
                                          <ref role="2Oxat5" node="3KN3A4uUwms" resolve="lang" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="gl6BB" id="6E5fMGvfKTk" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="6E5fMGvfKTl" role="1tU5fm" />
                                </node>
                              </node>
                              <node concept="1nlBCl" id="1LBj9wAJNTJ" role="2S7zOq">
                                <property role="3clFbU" value="true" />
                              </node>
                            </node>
                          </node>
                          <node concept="ANE8D" id="1LBj9wAJNTK" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="1DcWWT" id="3Vcd0Fo3jBb" role="3cqZAp">
                      <node concept="3clFbS" id="3Vcd0Fo3jBc" role="2LFqv$">
                        <node concept="3clFbJ" id="3Vcd0Fo3jBd" role="3cqZAp">
                          <node concept="3clFbS" id="3Vcd0Fo3jBe" role="3clFbx">
                            <node concept="3clFbJ" id="3Vcd0Fo3jBf" role="3cqZAp">
                              <node concept="3fqX7Q" id="3Vcd0Fo3jBg" role="3clFbw">
                                <node concept="2OqwBi" id="3Vcd0Fo3jBh" role="3fr31v">
                                  <node concept="37vLTw" id="3Vcd0Fo3jBi" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3Vcd0Fo3j_T" resolve="visited" />
                                  </node>
                                  <node concept="3JPx81" id="3Vcd0Fo3jBj" role="2OqNvi">
                                    <node concept="37vLTw" id="3Vcd0Fo3jBk" role="25WWJ7">
                                      <ref role="3cqZAo" node="3Vcd0Fo3jBw" resolve="vext" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="3Vcd0Fo3jBl" role="3clFbx">
                                <node concept="3clFbF" id="3Vcd0Fo3jBm" role="3cqZAp">
                                  <node concept="2OqwBi" id="3Vcd0Fo3jBn" role="3clFbG">
                                    <node concept="37vLTw" id="3Vcd0Fo3jBo" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3Vcd0Fo3j_F" resolve="stack" />
                                    </node>
                                    <node concept="2ArzE6" id="3Vcd0Fo3jBp" role="2OqNvi">
                                      <node concept="37vLTw" id="3Vcd0Fo3jBq" role="25WWJ7">
                                        <ref role="3cqZAo" node="3Vcd0Fo3jBw" resolve="vext" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="3Vcd0Fo3jBr" role="3clFbw">
                            <node concept="2OqwBi" id="3Vcd0Fo3jBs" role="3fr31v">
                              <node concept="37vLTw" id="3Vcd0Fo3jBt" role="2Oq$k0">
                                <ref role="3cqZAo" node="3Vcd0Fo3j_M" resolve="finished" />
                              </node>
                              <node concept="3JPx81" id="3Vcd0Fo3jBu" role="2OqNvi">
                                <node concept="37vLTw" id="3Vcd0Fo3jBv" role="25WWJ7">
                                  <ref role="3cqZAo" node="3Vcd0Fo3jBw" resolve="vext" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWsn" id="3Vcd0Fo3jBw" role="1Duv9x">
                        <property role="TrG5h" value="vext" />
                        <node concept="3uibUv" id="3Vcd0Fo3ZSL" role="1tU5fm">
                          <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1LBj9wAJNTL" role="1DdaDG">
                        <ref role="3cqZAo" node="1LBj9wAJNTz" resolve="orderedExtends" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3Vcd0Fo3jB_" role="2$JKZa">
                    <node concept="37vLTw" id="3Vcd0Fo3jBA" role="2Oq$k0">
                      <ref role="3cqZAo" node="3Vcd0Fo3j_F" resolve="stack" />
                    </node>
                    <node concept="3GX2aA" id="3Vcd0Fo3jBB" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3Vcd0Fo3jBC" role="1Duv9x">
            <property role="TrG5h" value="vtx" />
            <node concept="3uibUv" id="3Vcd0Fo3PY_" role="1tU5fm">
              <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
            </node>
          </node>
          <node concept="37vLTw" id="1LBj9wAGJhQ" role="1DdaDG">
            <ref role="3cqZAo" node="1LBj9wAGJhM" resolve="orderedVts" />
          </node>
        </node>
        <node concept="3clFbF" id="3Vcd0Fo3jBH" role="3cqZAp">
          <node concept="37vLTw" id="3Vcd0Fo3jBI" role="3clFbG">
            <ref role="3cqZAo" node="3Vcd0Fo3j_$" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3Vcd0Fo3j_a" role="3clF46">
        <property role="TrG5h" value="graph" />
        <node concept="3rvAFt" id="3Vcd0Fo3j_b" role="1tU5fm">
          <node concept="16syzq" id="3Vcd0Fo4i47" role="3rvQeY">
            <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
          </node>
          <node concept="3uibUv" id="3Vcd0Fo3y8w" role="3rvSg0">
            <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3Vcd0Fo3jBJ" role="3clF45">
        <ref role="3uigEE" to="33ny:~LinkedList" resolve="LinkedList" />
        <node concept="3uibUv" id="3Vcd0Fo3wCK" role="11_B2D">
          <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3Vcd0Fo3j_e" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3Vcd0Fo3gRk" role="jymVt" />
    <node concept="3clFb_" id="3Vcd0Fo4Gbu" role="jymVt">
      <property role="TrG5h" value="findAspectCliques" />
      <node concept="3clFbS" id="3Vcd0Fo4yLI" role="3clF47">
        <node concept="3SKdUt" id="3Vcd0Fo4yLJ" role="3cqZAp">
          <node concept="1PaTwC" id="3Vcd0Fo4yLK" role="1aUNEU">
            <node concept="3oM_SD" id="3Vcd0Fo4yLL" role="1PaTwD">
              <property role="3oM_SC" value="assuming" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yLM" role="1PaTwD">
              <property role="3oM_SC" value="graph" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yLN" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yLO" role="1PaTwD">
              <property role="3oM_SC" value="topologically" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yLP" role="1PaTwD">
              <property role="3oM_SC" value="sorted" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yLQ" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yLR" role="1PaTwD">
              <property role="3oM_SC" value="leaves" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yLS" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yLT" role="1PaTwD">
              <property role="3oM_SC" value="roots" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3Vcd0Fo4yLU" role="3cqZAp" />
        <node concept="3cpWs8" id="3Vcd0Fo4yLV" role="3cqZAp">
          <node concept="3cpWsn" id="3Vcd0Fo4yLW" role="3cpWs9">
            <property role="TrG5h" value="stack" />
            <node concept="oyxx6" id="3Vcd0Fo4yLX" role="1tU5fm">
              <node concept="3uibUv" id="3Vcd0Fo50iB" role="3O5elw">
                <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="3Vcd0Fo4yLZ" role="33vP2m">
              <node concept="2Jqq0_" id="3Vcd0Fo4yM0" role="2ShVmc">
                <node concept="3uibUv" id="3Vcd0Fo53iI" role="HW$YZ">
                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3Vcd0Fo4yM2" role="3cqZAp">
          <node concept="3cpWsn" id="3Vcd0Fo4yM3" role="3cpWs9">
            <property role="TrG5h" value="visited" />
            <node concept="2hMVRd" id="3Vcd0Fo4yM4" role="1tU5fm">
              <node concept="3uibUv" id="3Vcd0Fo55Yb" role="2hN53Y">
                <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="3Vcd0Fo4yM6" role="33vP2m">
              <node concept="2i4dXS" id="3Vcd0Fo4yM7" role="2ShVmc">
                <node concept="3uibUv" id="3Vcd0Fo58dg" role="HW$YZ">
                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3Vcd0Fo4yM9" role="3cqZAp">
          <node concept="3cpWsn" id="3Vcd0Fo4yMa" role="3cpWs9">
            <property role="TrG5h" value="nextClique" />
            <node concept="10Oyi0" id="3Vcd0Fo4yMb" role="1tU5fm" />
            <node concept="3cmrfG" id="3Vcd0Fo4yMc" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3Vcd0Fo4yMd" role="3cqZAp" />
        <node concept="3SKdUt" id="3Vcd0Fo4yMe" role="3cqZAp">
          <node concept="1PaTwC" id="3Vcd0Fo4yMf" role="1aUNEU">
            <node concept="3oM_SD" id="3Vcd0Fo4yMg" role="1PaTwD">
              <property role="3oM_SC" value="first" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yMh" role="1PaTwD">
              <property role="3oM_SC" value="bottom-up" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yMi" role="1PaTwD">
              <property role="3oM_SC" value="pass:" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yMj" role="1PaTwD">
              <property role="3oM_SC" value="assign" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yMk" role="1PaTwD">
              <property role="3oM_SC" value="initial" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yMl" role="1PaTwD">
              <property role="3oM_SC" value="clique" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yMm" role="1PaTwD">
              <property role="3oM_SC" value="ids" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yMn" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3Vcd0Fo4yMo" role="3cqZAp">
          <node concept="3clFbS" id="3Vcd0Fo4yMp" role="2LFqv$">
            <node concept="3clFbJ" id="3Vcd0Fo4yMq" role="3cqZAp">
              <node concept="3clFbS" id="3Vcd0Fo4yMr" role="3clFbx">
                <node concept="3clFbF" id="3Vcd0Fo4yMs" role="3cqZAp">
                  <node concept="2OqwBi" id="3Vcd0Fo4yMt" role="3clFbG">
                    <node concept="37vLTw" id="3Vcd0Fo4yMu" role="2Oq$k0">
                      <ref role="3cqZAo" node="3Vcd0Fo4yLW" resolve="stack" />
                    </node>
                    <node concept="2ArzE6" id="3Vcd0Fo4yMv" role="2OqNvi">
                      <node concept="37vLTw" id="3Vcd0Fo4yMw" role="25WWJ7">
                        <ref role="3cqZAo" node="3Vcd0Fo4yO6" resolve="vtx" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3Vcd0Fo4yMx" role="3cqZAp">
                  <node concept="2OqwBi" id="3Vcd0Fo4yMy" role="3clFbG">
                    <node concept="37vLTw" id="3Vcd0Fo4yMz" role="2Oq$k0">
                      <ref role="3cqZAo" node="3Vcd0Fo4yM3" resolve="visited" />
                    </node>
                    <node concept="TSZUe" id="3Vcd0Fo4yM$" role="2OqNvi">
                      <node concept="37vLTw" id="3Vcd0Fo4yM_" role="25WWJ7">
                        <ref role="3cqZAo" node="3Vcd0Fo4yO6" resolve="vtx" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3Vcd0Fo4yMA" role="3cqZAp" />
                <node concept="2$JKZl" id="3Vcd0Fo4yMB" role="3cqZAp">
                  <node concept="3clFbS" id="3Vcd0Fo4yMC" role="2LFqv$">
                    <node concept="3cpWs8" id="3Vcd0Fo4yMD" role="3cqZAp">
                      <node concept="3cpWsn" id="3Vcd0Fo4yME" role="3cpWs9">
                        <property role="TrG5h" value="v" />
                        <node concept="3uibUv" id="3Vcd0Fo5dpT" role="1tU5fm">
                          <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
                        </node>
                        <node concept="2OqwBi" id="3Vcd0Fo4yMG" role="33vP2m">
                          <node concept="37vLTw" id="3Vcd0Fo4yMH" role="2Oq$k0">
                            <ref role="3cqZAo" node="3Vcd0Fo4yLW" resolve="stack" />
                          </node>
                          <node concept="2oR75g" id="3Vcd0Fo4yMI" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="_tf6vzfPKg" role="3cqZAp">
                      <node concept="3cpWsn" id="_tf6vzfPKh" role="3cpWs9">
                        <property role="TrG5h" value="allExtendedBy" />
                        <node concept="2hMVRd" id="_tf6v$f9Kg" role="1tU5fm">
                          <node concept="3uibUv" id="_tf6v$f9Ki" role="2hN53Y">
                            <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="_tf6vzfPKi" role="33vP2m">
                          <node concept="37vLTw" id="_tf6vzfPKj" role="2Oq$k0">
                            <ref role="3cqZAo" node="3Vcd0Fo4yME" resolve="v" />
                          </node>
                          <node concept="2OwXpG" id="_tf6vzfPKk" role="2OqNvi">
                            <ref role="2Oxat5" node="3KN3A4w3GWQ" resolve="allExtendedBy" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1DcWWT" id="3Vcd0Fo4yMJ" role="3cqZAp">
                      <node concept="3clFbS" id="3Vcd0Fo4yMK" role="2LFqv$">
                        <node concept="3clFbJ" id="3Vcd0Fo4yML" role="3cqZAp">
                          <node concept="2d3UOw" id="3Vcd0Fo4yMM" role="3clFbw">
                            <node concept="2OqwBi" id="3Vcd0Fo4yMN" role="3uHU7B">
                              <node concept="37vLTw" id="3Vcd0Fo4yMO" role="2Oq$k0">
                                <ref role="3cqZAo" node="3Vcd0Fo4yNh" resolve="vsupr" />
                              </node>
                              <node concept="2OwXpG" id="3Vcd0Fo5ibZ" role="2OqNvi">
                                <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                              </node>
                            </node>
                            <node concept="3cmrfG" id="3Vcd0Fo4yMQ" role="3uHU7w">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="3Vcd0Fo4yMR" role="3clFbx">
                            <node concept="3clFbF" id="3Vcd0Fo4yMS" role="3cqZAp">
                              <node concept="37vLTI" id="3Vcd0Fo4yMT" role="3clFbG">
                                <node concept="2OqwBi" id="3Vcd0Fo4yMU" role="37vLTx">
                                  <node concept="37vLTw" id="3Vcd0Fo4yMV" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3Vcd0Fo4yNh" resolve="vsupr" />
                                  </node>
                                  <node concept="2OwXpG" id="3Vcd0Fo5i$0" role="2OqNvi">
                                    <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="3Vcd0Fo4yMX" role="37vLTJ">
                                  <node concept="37vLTw" id="3Vcd0Fo4yMY" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3Vcd0Fo4yME" resolve="v" />
                                  </node>
                                  <node concept="2OwXpG" id="3Vcd0Fo5ijF" role="2OqNvi">
                                    <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="3Vcd0Fo4yN0" role="3cqZAp">
                          <node concept="3fqX7Q" id="3Vcd0Fo4yN1" role="3clFbw">
                            <node concept="2OqwBi" id="3Vcd0Fo4yN2" role="3fr31v">
                              <node concept="37vLTw" id="3Vcd0Fo4yN3" role="2Oq$k0">
                                <ref role="3cqZAo" node="3Vcd0Fo4yM3" resolve="visited" />
                              </node>
                              <node concept="3JPx81" id="3Vcd0Fo4yN4" role="2OqNvi">
                                <node concept="37vLTw" id="3Vcd0Fo4yN5" role="25WWJ7">
                                  <ref role="3cqZAo" node="3Vcd0Fo4yNh" resolve="vsupr" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="3Vcd0Fo4yN6" role="3clFbx">
                            <node concept="3clFbF" id="3Vcd0Fo4yN7" role="3cqZAp">
                              <node concept="2OqwBi" id="3Vcd0Fo4yN8" role="3clFbG">
                                <node concept="37vLTw" id="3Vcd0Fo4yN9" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3Vcd0Fo4yLW" resolve="stack" />
                                </node>
                                <node concept="2ArzE6" id="3Vcd0Fo4yNa" role="2OqNvi">
                                  <node concept="37vLTw" id="3Vcd0Fo4yNb" role="25WWJ7">
                                    <ref role="3cqZAo" node="3Vcd0Fo4yNh" resolve="vsupr" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="3Vcd0Fo4yNc" role="3cqZAp">
                              <node concept="2OqwBi" id="3Vcd0Fo4yNd" role="3clFbG">
                                <node concept="37vLTw" id="3Vcd0Fo4yNe" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3Vcd0Fo4yM3" resolve="visited" />
                                </node>
                                <node concept="TSZUe" id="3Vcd0Fo4yNf" role="2OqNvi">
                                  <node concept="37vLTw" id="3Vcd0Fo4yNg" role="25WWJ7">
                                    <ref role="3cqZAo" node="3Vcd0Fo4yNh" resolve="vsupr" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWsn" id="3Vcd0Fo4yNh" role="1Duv9x">
                        <property role="TrG5h" value="vsupr" />
                        <node concept="3uibUv" id="3Vcd0Fo5fmv" role="1tU5fm">
                          <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="_tf6vzfPKl" role="1DdaDG">
                        <ref role="3cqZAo" node="_tf6vzfPKh" resolve="allExtendedBy" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="3Vcd0Fo4yNm" role="3cqZAp" />
                    <node concept="3clFbJ" id="3Vcd0Fo4yNn" role="3cqZAp">
                      <node concept="3clFbS" id="3Vcd0Fo4yNo" role="3clFbx">
                        <node concept="3clFbF" id="3Vcd0Fo4yNp" role="3cqZAp">
                          <node concept="2OqwBi" id="3Vcd0Fo4yNq" role="3clFbG">
                            <node concept="37vLTw" id="3Vcd0Fo4yNr" role="2Oq$k0">
                              <ref role="3cqZAo" node="3Vcd0Fo4yLW" resolve="stack" />
                            </node>
                            <node concept="2AryhJ" id="3Vcd0Fo4yNs" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="3Vcd0Fo4yNt" role="3clFbw">
                        <node concept="37vLTw" id="3Vcd0Fo4yNu" role="3uHU7w">
                          <ref role="3cqZAo" node="3Vcd0Fo4yME" resolve="v" />
                        </node>
                        <node concept="2OqwBi" id="3Vcd0Fo4yNv" role="3uHU7B">
                          <node concept="37vLTw" id="3Vcd0Fo4yNw" role="2Oq$k0">
                            <ref role="3cqZAo" node="3Vcd0Fo4yLW" resolve="stack" />
                          </node>
                          <node concept="2oR75g" id="3Vcd0Fo4yNx" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3Vcd0Fo4yNy" role="2$JKZa">
                    <node concept="37vLTw" id="3Vcd0Fo4yNz" role="2Oq$k0">
                      <ref role="3cqZAo" node="3Vcd0Fo4yLW" resolve="stack" />
                    </node>
                    <node concept="3GX2aA" id="3Vcd0Fo4yN$" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="3Vcd0Fo4yN_" role="3clFbw">
                <node concept="2OqwBi" id="3Vcd0Fo4yNA" role="3fr31v">
                  <node concept="37vLTw" id="3Vcd0Fo4yNB" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Vcd0Fo4yM3" resolve="visited" />
                  </node>
                  <node concept="3JPx81" id="3Vcd0Fo4yNC" role="2OqNvi">
                    <node concept="37vLTw" id="3Vcd0Fo4yND" role="25WWJ7">
                      <ref role="3cqZAo" node="3Vcd0Fo4yO6" resolve="vtx" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3Vcd0Fo4yNE" role="3cqZAp">
              <node concept="3clFbS" id="3Vcd0Fo4yNF" role="3clFbx">
                <node concept="3clFbJ" id="3Vcd0Fo4yNP" role="3cqZAp">
                  <node concept="3clFbS" id="3Vcd0Fo4yNQ" role="3clFbx">
                    <node concept="3clFbF" id="3Vcd0Fo4yNR" role="3cqZAp">
                      <node concept="37vLTI" id="3Vcd0Fo4yNS" role="3clFbG">
                        <node concept="2OqwBi" id="3Vcd0Fo4yNT" role="37vLTJ">
                          <node concept="37vLTw" id="3Vcd0Fo4yNU" role="2Oq$k0">
                            <ref role="3cqZAo" node="3Vcd0Fo4yO6" resolve="vtx" />
                          </node>
                          <node concept="2OwXpG" id="3Vcd0Fo5jMc" role="2OqNvi">
                            <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                          </node>
                        </node>
                        <node concept="3uNrnE" id="3Vcd0Fo4yNW" role="37vLTx">
                          <node concept="37vLTw" id="3Vcd0Fo4yNX" role="2$L3a6">
                            <ref role="3cqZAo" node="3Vcd0Fo4yMa" resolve="nextClique" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="3Vcd0Fo4yNY" role="3clFbw">
                    <node concept="10Nm6u" id="3Vcd0Fo4yNZ" role="3uHU7w" />
                    <node concept="2OqwBi" id="_tf6vzg00v" role="3uHU7B">
                      <node concept="37vLTw" id="_tf6vzfZT0" role="2Oq$k0">
                        <ref role="3cqZAo" node="3Vcd0Fo4yO6" resolve="vtx" />
                      </node>
                      <node concept="2OwXpG" id="_tf6vzg05o" role="2OqNvi">
                        <ref role="2Oxat5" node="_tf6vzc$Qe" resolve="aspect" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOVzh" id="3Vcd0Fo4yO1" role="3clFbw">
                <node concept="3cmrfG" id="3Vcd0Fo4yO2" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="3Vcd0Fo4yO3" role="3uHU7B">
                  <node concept="37vLTw" id="3Vcd0Fo4yO4" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Vcd0Fo4yO6" resolve="vtx" />
                  </node>
                  <node concept="2OwXpG" id="3Vcd0Fo5iFH" role="2OqNvi">
                    <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3Vcd0Fo4yO6" role="1Duv9x">
            <property role="TrG5h" value="vtx" />
            <node concept="3uibUv" id="3Vcd0Fo5aph" role="1tU5fm">
              <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
            </node>
          </node>
          <node concept="37vLTw" id="3Vcd0Fo4yO8" role="1DdaDG">
            <ref role="3cqZAo" node="3Vcd0Fo4yR6" resolve="sortedGraph" />
          </node>
        </node>
        <node concept="3clFbH" id="_tf6vz0DGX" role="3cqZAp" />
        <node concept="3SKdUt" id="3Vcd0Fo4yOa" role="3cqZAp">
          <node concept="1PaTwC" id="3Vcd0Fo4yOb" role="1aUNEU">
            <node concept="3oM_SD" id="3Vcd0Fo4yOc" role="1PaTwD">
              <property role="3oM_SC" value="second" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yOd" role="1PaTwD">
              <property role="3oM_SC" value="top-down" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yOe" role="1PaTwD">
              <property role="3oM_SC" value="pass:" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2TBKtozZhrx" role="3cqZAp">
          <node concept="1PaTwC" id="3Vcd0Fo4yOf" role="1aUNEU">
            <node concept="3oM_SD" id="3Vcd0Fo4yOg" role="1PaTwD">
              <property role="3oM_SC" value="find" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yOh" role="1PaTwD">
              <property role="3oM_SC" value="upper" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yOi" role="1PaTwD">
              <property role="3oM_SC" value="bound" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yOj" role="1PaTwD">
              <property role="3oM_SC" value="(top" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yOk" role="1PaTwD">
              <property role="3oM_SC" value="nodes" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yOl" role="1PaTwD">
              <property role="3oM_SC" value="where" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yOm" role="1PaTwD">
              <property role="3oM_SC" value="aspects" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yOn" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yOo" role="1PaTwD">
              <property role="3oM_SC" value="defined)" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2TBKtozZhru" role="3cqZAp">
          <node concept="1PaTwC" id="3Vcd0Fo4yOp" role="1aUNEU">
            <node concept="3oM_SD" id="3Vcd0Fo4yOq" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yOr" role="1PaTwD">
              <property role="3oM_SC" value="starting" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yOs" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yOt" role="1PaTwD">
              <property role="3oM_SC" value="there" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yOu" role="1PaTwD">
              <property role="3oM_SC" value="merge" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yOv" role="1PaTwD">
              <property role="3oM_SC" value="possible" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yOw" role="1PaTwD">
              <property role="3oM_SC" value="branches" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yOx" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="3Vcd0Fo4yOy" role="1PaTwD">
              <property role="3oM_SC" value="cliques" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Vcd0Fo4yOz" role="3cqZAp">
          <node concept="2OqwBi" id="3Vcd0Fo4yO$" role="3clFbG">
            <node concept="37vLTw" id="3Vcd0Fo4yO_" role="2Oq$k0">
              <ref role="3cqZAo" node="3Vcd0Fo4yM3" resolve="visited" />
            </node>
            <node concept="2EZike" id="3Vcd0Fo4yOA" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="3Vcd0Fo4yOB" role="3cqZAp">
          <node concept="3cpWsn" id="3Vcd0Fo4yOC" role="3cpWs9">
            <property role="TrG5h" value="it" />
            <node concept="uOF1S" id="3Vcd0Fo4yOD" role="1tU5fm">
              <node concept="3uibUv" id="3Vcd0Fo5t9A" role="uOL27">
                <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
              </node>
            </node>
            <node concept="2OqwBi" id="3Vcd0Fo4yOF" role="33vP2m">
              <node concept="37vLTw" id="3Vcd0Fo4yOG" role="2Oq$k0">
                <ref role="3cqZAo" node="3Vcd0Fo4yR6" resolve="sortedGraph" />
              </node>
              <node concept="liA8E" id="3Vcd0Fo4yOH" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~LinkedList.descendingIterator()" resolve="descendingIterator" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="3Vcd0Fo4yOI" role="3cqZAp">
          <node concept="3clFbS" id="3Vcd0Fo4yOJ" role="2LFqv$">
            <node concept="3cpWs8" id="3Vcd0Fo4yOK" role="3cqZAp">
              <node concept="3cpWsn" id="3Vcd0Fo4yOL" role="3cpWs9">
                <property role="TrG5h" value="vtx" />
                <node concept="3uibUv" id="3Vcd0Fo5uVq" role="1tU5fm">
                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
                </node>
                <node concept="2OqwBi" id="3Vcd0Fo4yON" role="33vP2m">
                  <node concept="37vLTw" id="3Vcd0Fo4yOO" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Vcd0Fo4yOC" resolve="it" />
                  </node>
                  <node concept="v1n4t" id="3Vcd0Fo4yOP" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3Vcd0Fo4yOQ" role="3cqZAp">
              <node concept="3clFbS" id="3Vcd0Fo4yOR" role="3clFbx">
                <node concept="3clFbF" id="3Vcd0Fo4yOS" role="3cqZAp">
                  <node concept="2OqwBi" id="3Vcd0Fo4yOT" role="3clFbG">
                    <node concept="37vLTw" id="3Vcd0Fo4yOU" role="2Oq$k0">
                      <ref role="3cqZAo" node="3Vcd0Fo4yM3" resolve="visited" />
                    </node>
                    <node concept="TSZUe" id="3Vcd0Fo4yOV" role="2OqNvi">
                      <node concept="37vLTw" id="3Vcd0Fo4yOW" role="25WWJ7">
                        <ref role="3cqZAo" node="3Vcd0Fo4yOL" resolve="vtx" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3Vcd0Fo4yOX" role="3cqZAp">
                  <node concept="2OqwBi" id="3Vcd0Fo4yOY" role="3clFbG">
                    <node concept="37vLTw" id="3Vcd0Fo4yOZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="3Vcd0Fo4yLW" resolve="stack" />
                    </node>
                    <node concept="2ArzE6" id="3Vcd0Fo4yP0" role="2OqNvi">
                      <node concept="37vLTw" id="3Vcd0Fo4yP1" role="25WWJ7">
                        <ref role="3cqZAo" node="3Vcd0Fo4yOL" resolve="vtx" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3Vcd0Fo4yP2" role="3cqZAp">
                  <node concept="3cpWsn" id="3Vcd0Fo4yP3" role="3cpWs9">
                    <property role="TrG5h" value="cliqueUpperBoundFound" />
                    <node concept="10P_77" id="3Vcd0Fo4yP4" role="1tU5fm" />
                    <node concept="3clFbT" id="3Vcd0Fo4yP5" role="33vP2m" />
                  </node>
                </node>
                <node concept="3clFbH" id="3Vcd0Fo4yP6" role="3cqZAp" />
                <node concept="2$JKZl" id="3Vcd0Fo4yP7" role="3cqZAp">
                  <node concept="3clFbS" id="3Vcd0Fo4yP8" role="2LFqv$">
                    <node concept="3cpWs8" id="3Vcd0Fo4yP9" role="3cqZAp">
                      <node concept="3cpWsn" id="3Vcd0Fo4yPa" role="3cpWs9">
                        <property role="TrG5h" value="v" />
                        <node concept="3uibUv" id="3Vcd0Fo5w_z" role="1tU5fm">
                          <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
                        </node>
                        <node concept="2OqwBi" id="3Vcd0Fo4yPc" role="33vP2m">
                          <node concept="37vLTw" id="3Vcd0Fo4yPd" role="2Oq$k0">
                            <ref role="3cqZAo" node="3Vcd0Fo4yLW" resolve="stack" />
                          </node>
                          <node concept="2oR75g" id="3Vcd0Fo4yPe" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="3Vcd0Fo4yPf" role="3cqZAp">
                      <node concept="3clFbS" id="3Vcd0Fo4yPg" role="3clFbx">
                        <node concept="3clFbF" id="3Vcd0Fo4yPn" role="3cqZAp">
                          <node concept="37vLTI" id="3Vcd0Fo4yPo" role="3clFbG">
                            <node concept="3clFbT" id="3Vcd0Fo4yPp" role="37vLTx">
                              <property role="3clFbU" value="true" />
                            </node>
                            <node concept="37vLTw" id="3Vcd0Fo4yPq" role="37vLTJ">
                              <ref role="3cqZAo" node="3Vcd0Fo4yP3" resolve="cliqueUpperBoundFound" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="3Vcd0Fo4yPr" role="3cqZAp" />
                        <node concept="3cpWs8" id="3Vcd0Fo7Ou2" role="3cqZAp">
                          <node concept="3cpWsn" id="3Vcd0Fo7Ou3" role="3cpWs9">
                            <property role="TrG5h" value="allExtendedBy" />
                            <node concept="2hMVRd" id="_tf6v$fb4n" role="1tU5fm">
                              <node concept="3uibUv" id="_tf6v$fb4p" role="2hN53Y">
                                <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="3Vcd0Fo7Ou4" role="33vP2m">
                              <node concept="37vLTw" id="3Vcd0Fo7Ou5" role="2Oq$k0">
                                <ref role="3cqZAo" node="3Vcd0Fo4yPa" resolve="v" />
                              </node>
                              <node concept="2OwXpG" id="3Vcd0Fo7Ou6" role="2OqNvi">
                                <ref role="2Oxat5" node="3KN3A4w3GWQ" resolve="allExtendedBy" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1DcWWT" id="3Vcd0Fo4yPs" role="3cqZAp">
                          <node concept="3clFbS" id="3Vcd0Fo4yPt" role="2LFqv$">
                            <node concept="3clFbJ" id="3Vcd0Fo4yPu" role="3cqZAp">
                              <node concept="3clFbS" id="3Vcd0Fo4yPv" role="3clFbx">
                                <node concept="3SKdUt" id="3Vcd0Fo4yPw" role="3cqZAp">
                                  <node concept="1PaTwC" id="3Vcd0Fo4yPx" role="1aUNEU">
                                    <node concept="3oM_SD" id="3Vcd0Fo4yPy" role="1PaTwD">
                                      <property role="3oM_SC" value="align" />
                                    </node>
                                    <node concept="3oM_SD" id="3Vcd0Fo4yPz" role="1PaTwD">
                                      <property role="3oM_SC" value="children" />
                                    </node>
                                    <node concept="3oM_SD" id="3Vcd0Fo4yP$" role="1PaTwD">
                                      <property role="3oM_SC" value="ids" />
                                    </node>
                                    <node concept="3oM_SD" id="3Vcd0Fo4yP_" role="1PaTwD">
                                      <property role="3oM_SC" value="with" />
                                    </node>
                                    <node concept="3oM_SD" id="3Vcd0Fo4yPA" role="1PaTwD">
                                      <property role="3oM_SC" value="definitive" />
                                    </node>
                                    <node concept="3oM_SD" id="3Vcd0Fo4yPB" role="1PaTwD">
                                      <property role="3oM_SC" value="id" />
                                    </node>
                                    <node concept="3oM_SD" id="3Vcd0Fo4yPC" role="1PaTwD">
                                      <property role="3oM_SC" value="of" />
                                    </node>
                                    <node concept="3oM_SD" id="3Vcd0Fo4yPD" role="1PaTwD">
                                      <property role="3oM_SC" value="parent" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="3Vcd0Fo4yPE" role="3cqZAp">
                                  <node concept="37vLTI" id="3Vcd0Fo4yPF" role="3clFbG">
                                    <node concept="2OqwBi" id="3Vcd0Fo4yPG" role="37vLTx">
                                      <node concept="37vLTw" id="3Vcd0Fo4yPH" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3Vcd0Fo4yPa" resolve="v" />
                                      </node>
                                      <node concept="2OwXpG" id="3Vcd0Fo5DtM" role="2OqNvi">
                                        <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="3Vcd0Fo4yPJ" role="37vLTJ">
                                      <node concept="37vLTw" id="3Vcd0Fo4yPK" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3Vcd0Fo4yQ8" resolve="vsub" />
                                      </node>
                                      <node concept="2OwXpG" id="3Vcd0Fo5Dm5" role="2OqNvi">
                                        <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2d3UOw" id="3Vcd0Fo4yPM" role="3clFbw">
                                <node concept="2OqwBi" id="3Vcd0Fo4yPN" role="3uHU7B">
                                  <node concept="37vLTw" id="3Vcd0Fo4yPO" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3Vcd0Fo4yQ8" resolve="vsub" />
                                  </node>
                                  <node concept="2OwXpG" id="3Vcd0Fo5Dep" role="2OqNvi">
                                    <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                                  </node>
                                </node>
                                <node concept="3cmrfG" id="3Vcd0Fo4yPQ" role="3uHU7w">
                                  <property role="3cmrfH" value="0" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="3Vcd0Fo4yPR" role="3cqZAp">
                              <node concept="3clFbS" id="3Vcd0Fo4yPS" role="3clFbx">
                                <node concept="3clFbF" id="3Vcd0Fo4yPT" role="3cqZAp">
                                  <node concept="2OqwBi" id="3Vcd0Fo4yPU" role="3clFbG">
                                    <node concept="37vLTw" id="3Vcd0Fo4yPV" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3Vcd0Fo4yLW" resolve="stack" />
                                    </node>
                                    <node concept="2ArzE6" id="3Vcd0Fo4yPW" role="2OqNvi">
                                      <node concept="37vLTw" id="3Vcd0Fo4yPX" role="25WWJ7">
                                        <ref role="3cqZAo" node="3Vcd0Fo4yQ8" resolve="vsub" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="3Vcd0Fo4yPY" role="3cqZAp">
                                  <node concept="2OqwBi" id="3Vcd0Fo4yPZ" role="3clFbG">
                                    <node concept="37vLTw" id="3Vcd0Fo4yQ0" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3Vcd0Fo4yM3" resolve="visited" />
                                    </node>
                                    <node concept="TSZUe" id="3Vcd0Fo4yQ1" role="2OqNvi">
                                      <node concept="37vLTw" id="3Vcd0Fo4yQ2" role="25WWJ7">
                                        <ref role="3cqZAo" node="3Vcd0Fo4yQ8" resolve="vsub" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3fqX7Q" id="3Vcd0Fo4yQ3" role="3clFbw">
                                <node concept="2OqwBi" id="3Vcd0Fo4yQ4" role="3fr31v">
                                  <node concept="37vLTw" id="3Vcd0Fo4yQ5" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3Vcd0Fo4yM3" resolve="visited" />
                                  </node>
                                  <node concept="3JPx81" id="3Vcd0Fo4yQ6" role="2OqNvi">
                                    <node concept="37vLTw" id="3Vcd0Fo4yQ7" role="25WWJ7">
                                      <ref role="3cqZAo" node="3Vcd0Fo4yQ8" resolve="vsub" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWsn" id="3Vcd0Fo4yQ8" role="1Duv9x">
                            <property role="TrG5h" value="vsub" />
                            <node concept="3uibUv" id="3Vcd0Fo5zHX" role="1tU5fm">
                              <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="3Vcd0Fo7Ou7" role="1DdaDG">
                            <ref role="3cqZAo" node="3Vcd0Fo7Ou3" resolve="allExtendedBy" />
                          </node>
                        </node>
                        <node concept="3clFbH" id="3Vcd0Fo4yQd" role="3cqZAp" />
                      </node>
                      <node concept="1Wc70l" id="_tf6vzvg7q" role="3clFbw">
                        <node concept="2d3UOw" id="_tf6vzvhjJ" role="3uHU7B">
                          <node concept="3cmrfG" id="_tf6vzvhwf" role="3uHU7w">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="_tf6vzvgIm" role="3uHU7B">
                            <node concept="37vLTw" id="_tf6vzvgBi" role="2Oq$k0">
                              <ref role="3cqZAo" node="3Vcd0Fo4yPa" resolve="v" />
                            </node>
                            <node concept="2OwXpG" id="_tf6vzvgVS" role="2OqNvi">
                              <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                            </node>
                          </node>
                        </node>
                        <node concept="1eOMI4" id="_tf6vzvfEi" role="3uHU7w">
                          <node concept="22lmx$" id="3Vcd0Fo4yQe" role="1eOMHV">
                            <node concept="37vLTw" id="3Vcd0Fo4yQf" role="3uHU7B">
                              <ref role="3cqZAo" node="3Vcd0Fo4yP3" resolve="cliqueUpperBoundFound" />
                            </node>
                            <node concept="3y3z36" id="3Vcd0Fo4yQg" role="3uHU7w">
                              <node concept="10Nm6u" id="3Vcd0Fo4yQh" role="3uHU7w" />
                              <node concept="2OqwBi" id="_tf6vzjbh9" role="3uHU7B">
                                <node concept="37vLTw" id="_tf6vzjbcr" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3Vcd0Fo4yPa" resolve="v" />
                                </node>
                                <node concept="2OwXpG" id="_tf6vzjbn9" role="2OqNvi">
                                  <ref role="2Oxat5" node="_tf6vzc$Qe" resolve="aspect" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="9aQIb" id="3Vcd0Fo4yQo" role="9aQIa">
                        <node concept="3clFbS" id="3Vcd0Fo4yQp" role="9aQI4">
                          <node concept="3SKdUt" id="3Vcd0Fo4yQq" role="3cqZAp">
                            <node concept="1PaTwC" id="3Vcd0Fo4yQr" role="1aUNEU">
                              <node concept="3oM_SD" id="3Vcd0Fo4yQs" role="1PaTwD">
                                <property role="3oM_SC" value="exclude" />
                              </node>
                              <node concept="3oM_SD" id="3Vcd0Fo4yQt" role="1PaTwD">
                                <property role="3oM_SC" value="nodes" />
                              </node>
                              <node concept="3oM_SD" id="3Vcd0Fo4yQu" role="1PaTwD">
                                <property role="3oM_SC" value="above" />
                              </node>
                              <node concept="3oM_SD" id="3Vcd0Fo4yQv" role="1PaTwD">
                                <property role="3oM_SC" value="upper" />
                              </node>
                              <node concept="3oM_SD" id="3Vcd0Fo4yQw" role="1PaTwD">
                                <property role="3oM_SC" value="bound" />
                              </node>
                              <node concept="3oM_SD" id="3Vcd0Fo4yQx" role="1PaTwD">
                                <property role="3oM_SC" value="from" />
                              </node>
                              <node concept="3oM_SD" id="3Vcd0Fo4yQy" role="1PaTwD">
                                <property role="3oM_SC" value="cliques" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="3Vcd0Fo4yQz" role="3cqZAp">
                            <node concept="37vLTI" id="3Vcd0Fo4yQ$" role="3clFbG">
                              <node concept="3cmrfG" id="3Vcd0Fo4yQ_" role="37vLTx">
                                <property role="3cmrfH" value="-1" />
                              </node>
                              <node concept="2OqwBi" id="3Vcd0Fo4yQA" role="37vLTJ">
                                <node concept="37vLTw" id="3Vcd0Fo4yQB" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3Vcd0Fo4yPa" resolve="v" />
                                </node>
                                <node concept="2OwXpG" id="3Vcd0Fo5DQR" role="2OqNvi">
                                  <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="3Vcd0Fo4yQD" role="3cqZAp">
                      <node concept="3clFbS" id="3Vcd0Fo4yQE" role="3clFbx">
                        <node concept="3clFbF" id="3Vcd0Fo4yQF" role="3cqZAp">
                          <node concept="2OqwBi" id="3Vcd0Fo4yQG" role="3clFbG">
                            <node concept="37vLTw" id="3Vcd0Fo4yQH" role="2Oq$k0">
                              <ref role="3cqZAo" node="3Vcd0Fo4yLW" resolve="stack" />
                            </node>
                            <node concept="2AryhJ" id="3Vcd0Fo4yQI" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="3Vcd0Fo4yQJ" role="3clFbw">
                        <node concept="37vLTw" id="3Vcd0Fo4yQK" role="3uHU7w">
                          <ref role="3cqZAo" node="3Vcd0Fo4yPa" resolve="v" />
                        </node>
                        <node concept="2OqwBi" id="3Vcd0Fo4yQL" role="3uHU7B">
                          <node concept="37vLTw" id="3Vcd0Fo4yQM" role="2Oq$k0">
                            <ref role="3cqZAo" node="3Vcd0Fo4yLW" resolve="stack" />
                          </node>
                          <node concept="2oR75g" id="3Vcd0Fo4yQN" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3Vcd0Fo4yQO" role="2$JKZa">
                    <node concept="37vLTw" id="3Vcd0Fo4yQP" role="2Oq$k0">
                      <ref role="3cqZAo" node="3Vcd0Fo4yLW" resolve="stack" />
                    </node>
                    <node concept="3GX2aA" id="3Vcd0Fo4yQQ" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="3Vcd0Fo4yQR" role="3clFbw">
                <node concept="2OqwBi" id="3Vcd0Fo4yQS" role="3fr31v">
                  <node concept="37vLTw" id="3Vcd0Fo4yQT" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Vcd0Fo4yM3" resolve="visited" />
                  </node>
                  <node concept="3JPx81" id="3Vcd0Fo4yQU" role="2OqNvi">
                    <node concept="37vLTw" id="3Vcd0Fo4yQV" role="25WWJ7">
                      <ref role="3cqZAo" node="3Vcd0Fo4yOL" resolve="vtx" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3Vcd0Fo4yQW" role="2$JKZa">
            <node concept="37vLTw" id="3Vcd0Fo4yQX" role="2Oq$k0">
              <ref role="3cqZAo" node="3Vcd0Fo4yOC" resolve="it" />
            </node>
            <node concept="v0PNk" id="3Vcd0Fo4yQY" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3Vcd0Fo4yR6" role="3clF46">
        <property role="TrG5h" value="sortedGraph" />
        <node concept="3uibUv" id="3Vcd0Fo4yR7" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~LinkedList" resolve="LinkedList" />
          <node concept="3uibUv" id="3Vcd0Fo4X6R" role="11_B2D">
            <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="9UUIHMDlJk" role="3clF45" />
      <node concept="3Tm6S6" id="3Vcd0Fo4yR9" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3Vcd0Fo4vyx" role="jymVt" />
    <node concept="3clFb_" id="6nx4rRkQTd3" role="jymVt">
      <property role="TrG5h" value="addToGraph" />
      <node concept="3clFbS" id="3KN3A4uUxNp" role="3clF47">
        <node concept="3cpWs8" id="3KN3A4uUxNq" role="3cqZAp">
          <node concept="3cpWsn" id="3KN3A4uUxNr" role="3cpWs9">
            <property role="TrG5h" value="vtx" />
            <node concept="3uibUv" id="3KN3A4uUBAj" role="1tU5fm">
              <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
            </node>
            <node concept="3EllGN" id="9UUIHMxJ1u" role="33vP2m">
              <node concept="37vLTw" id="9UUIHMxVWs" role="3ElVtu">
                <ref role="3cqZAo" node="3KN3A4uUxNh" resolve="lang" />
              </node>
              <node concept="37vLTw" id="9UUIHMxyF3" role="3ElQJh">
                <ref role="3cqZAo" node="3KN3A4uUxNj" resolve="graph" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3KN3A4w4Ohr" role="3cqZAp">
          <node concept="3clFbC" id="9UUIHMyqAI" role="3clFbw">
            <node concept="10Nm6u" id="9UUIHMyqN1" role="3uHU7w" />
            <node concept="37vLTw" id="9UUIHMygtX" role="3uHU7B">
              <ref role="3cqZAo" node="3KN3A4uUxNr" resolve="vtx" />
            </node>
          </node>
          <node concept="3clFbS" id="3KN3A4w4Oht" role="3clFbx">
            <node concept="3clFbF" id="9UUIHMwOip" role="3cqZAp">
              <node concept="37vLTI" id="9UUIHMwOir" role="3clFbG">
                <node concept="2ShNRf" id="3KN3A4uUxNt" role="37vLTx">
                  <node concept="1pGfFk" id="3KN3A4uUxNu" role="2ShVmc">
                    <ref role="37wK5l" node="3KN3A4uUwlm" resolve="CliqueBuilder.Vtx" />
                    <node concept="37vLTw" id="3KN3A4uUxNv" role="37wK5m">
                      <ref role="3cqZAo" node="3KN3A4uUxNh" resolve="lang" />
                    </node>
                    <node concept="37vLTw" id="_tf6vz7xFB" role="37wK5m">
                      <ref role="3cqZAo" node="_tf6vz5jDN" resolve="sidekick" />
                    </node>
                    <node concept="37vLTw" id="_tf6vze8pR" role="37wK5m">
                      <ref role="3cqZAo" node="_tf6vzdT9x" resolve="aspect" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="9UUIHMwOiv" role="37vLTJ">
                  <ref role="3cqZAo" node="3KN3A4uUxNr" resolve="vtx" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3KN3A4uUxNw" role="3cqZAp">
              <node concept="37vLTI" id="3KN3A4uUxNx" role="3clFbG">
                <node concept="3EllGN" id="3KN3A4uUxNy" role="37vLTJ">
                  <node concept="37vLTw" id="3KN3A4uUxNz" role="3ElVtu">
                    <ref role="3cqZAo" node="3KN3A4uUxNh" resolve="lang" />
                  </node>
                  <node concept="37vLTw" id="3KN3A4uUxN$" role="3ElQJh">
                    <ref role="3cqZAo" node="3KN3A4uUxNj" resolve="graph" />
                  </node>
                </node>
                <node concept="37vLTw" id="3KN3A4uUxN_" role="37vLTx">
                  <ref role="3cqZAo" node="3KN3A4uUxNr" resolve="vtx" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="_tf6vzr$yv" role="3cqZAp">
              <node concept="3clFbS" id="_tf6vzr$yx" role="3clFbx">
                <node concept="3clFbF" id="_tf6vzr_qy" role="3cqZAp">
                  <node concept="37vLTI" id="_tf6vzr_qz" role="3clFbG">
                    <node concept="3EllGN" id="_tf6vzr_q$" role="37vLTJ">
                      <node concept="37vLTw" id="_tf6vzrAan" role="3ElVtu">
                        <ref role="3cqZAo" node="_tf6vz5jDN" resolve="sidekick" />
                      </node>
                      <node concept="37vLTw" id="_tf6vzr_qA" role="3ElQJh">
                        <ref role="3cqZAo" node="3KN3A4uUxNj" resolve="graph" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="_tf6vzr_qB" role="37vLTx">
                      <ref role="3cqZAo" node="3KN3A4uUxNr" resolve="vtx" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="_tf6vzr$JC" role="3clFbw">
                <node concept="10Nm6u" id="_tf6vzr$VT" role="3uHU7w" />
                <node concept="37vLTw" id="_tf6vzr$E$" role="3uHU7B">
                  <ref role="3cqZAo" node="_tf6vz5jDN" resolve="sidekick" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="_tf6vz6kXy" role="3cqZAp">
              <node concept="2OqwBi" id="_tf6vzhsrz" role="3clFbG">
                <node concept="37vLTw" id="_tf6vzhtfB" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KN3A4uUxNr" resolve="vtx" />
                </node>
                <node concept="liA8E" id="_tf6vzhsrA" role="2OqNvi">
                  <ref role="37wK5l" node="_tf6vz5GKU" resolve="updateGraph" />
                  <node concept="37vLTw" id="_tf6vz6mgc" role="37wK5m">
                    <ref role="3cqZAo" node="3KN3A4uUxNj" resolve="graph" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9UUIHMyKxD" role="3cqZAp">
          <node concept="37vLTw" id="9UUIHMyKxB" role="3clFbG">
            <ref role="3cqZAo" node="3KN3A4uUxNr" resolve="vtx" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3KN3A4uUxNh" role="3clF46">
        <property role="TrG5h" value="lang" />
        <node concept="16syzq" id="6nx4rRkQWya" role="1tU5fm">
          <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
        </node>
      </node>
      <node concept="37vLTG" id="_tf6vz5jDN" role="3clF46">
        <property role="TrG5h" value="sidekick" />
        <node concept="16syzq" id="_tf6vz5sz5" role="1tU5fm">
          <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
        </node>
      </node>
      <node concept="37vLTG" id="_tf6vzdT9x" role="3clF46">
        <property role="TrG5h" value="aspect" />
        <node concept="16syzq" id="_tf6vze4A6" role="1tU5fm">
          <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="3KN3A4uUxNj" role="3clF46">
        <property role="TrG5h" value="graph" />
        <node concept="3rvAFt" id="3KN3A4uUxNk" role="1tU5fm">
          <node concept="16syzq" id="6nx4rRkQXdZ" role="3rvQeY">
            <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
          </node>
          <node concept="3uibUv" id="3KN3A4uUBo1" role="3rvSg0">
            <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="9UUIHMwDly" role="3clF45">
        <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
      </node>
      <node concept="3Tm6S6" id="3KN3A4uUxNo" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="_tf6vz5xac" role="jymVt" />
    <node concept="312cEu" id="3KN3A4uUwll" role="jymVt">
      <property role="TrG5h" value="Vtx" />
      <property role="2bfB8j" value="true" />
      <node concept="3clFbW" id="3KN3A4uUwlm" role="jymVt">
        <node concept="37vLTG" id="3KN3A4uUwln" role="3clF46">
          <property role="TrG5h" value="lang" />
          <node concept="16syzq" id="_tf6vzc5Wu" role="1tU5fm">
            <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
          </node>
        </node>
        <node concept="37vLTG" id="_tf6vz5vn8" role="3clF46">
          <property role="TrG5h" value="sidekick" />
          <node concept="16syzq" id="_tf6vzc5WE" role="1tU5fm">
            <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
          </node>
        </node>
        <node concept="37vLTG" id="_tf6vze6E3" role="3clF46">
          <property role="TrG5h" value="aspect" />
          <node concept="16syzq" id="_tf6vze6H2" role="1tU5fm">
            <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
          </node>
        </node>
        <node concept="3cqZAl" id="3KN3A4uUwlp" role="3clF45" />
        <node concept="3Tm6S6" id="6nx4rRkTZXj" role="1B3o_S" />
        <node concept="3clFbS" id="3KN3A4uUwlr" role="3clF47">
          <node concept="3clFbF" id="3KN3A4uUwls" role="3cqZAp">
            <node concept="37vLTI" id="3KN3A4uUwlt" role="3clFbG">
              <node concept="37vLTw" id="3KN3A4uUwlu" role="37vLTx">
                <ref role="3cqZAo" node="3KN3A4uUwln" resolve="lang" />
              </node>
              <node concept="2OqwBi" id="3KN3A4uUwlv" role="37vLTJ">
                <node concept="Xjq3P" id="3KN3A4uUwlw" role="2Oq$k0" />
                <node concept="2OwXpG" id="3KN3A4uUwlx" role="2OqNvi">
                  <ref role="2Oxat5" node="3KN3A4uUwms" resolve="lang" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="_tf6vz5wpg" role="3cqZAp">
            <node concept="37vLTI" id="_tf6vz5wDF" role="3clFbG">
              <node concept="37vLTw" id="_tf6vz5wMU" role="37vLTx">
                <ref role="3cqZAo" node="_tf6vz5vn8" resolve="sidekick" />
              </node>
              <node concept="2OqwBi" id="_tf6vz5wtX" role="37vLTJ">
                <node concept="Xjq3P" id="_tf6vz5wpe" role="2Oq$k0" />
                <node concept="2OwXpG" id="_tf6vz5wyU" role="2OqNvi">
                  <ref role="2Oxat5" node="_tf6vz1OM3" resolve="sidekick" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="_tf6vze7Rg" role="3cqZAp">
            <node concept="37vLTI" id="_tf6vze8gY" role="3clFbG">
              <node concept="37vLTw" id="_tf6vze8ll" role="37vLTx">
                <ref role="3cqZAo" node="_tf6vze6E3" resolve="aspect" />
              </node>
              <node concept="2OqwBi" id="_tf6vze827" role="37vLTJ">
                <node concept="Xjq3P" id="_tf6vze7Re" role="2Oq$k0" />
                <node concept="2OwXpG" id="_tf6vze87K" role="2OqNvi">
                  <ref role="2Oxat5" node="_tf6vzc$Qe" resolve="aspect" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3KN3A4uUxNH" role="jymVt" />
      <node concept="3clFb_" id="_tf6vz5GKU" role="jymVt">
        <property role="TrG5h" value="updateGraph" />
        <node concept="37vLTG" id="_tf6vz5GKV" role="3clF46">
          <property role="TrG5h" value="graph" />
          <node concept="3rvAFt" id="_tf6vz5GKW" role="1tU5fm">
            <node concept="16syzq" id="_tf6vz5GKX" role="3rvQeY">
              <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
            </node>
            <node concept="3uibUv" id="_tf6vz5GKY" role="3rvSg0">
              <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="_tf6vz5GKZ" role="3clF45" />
        <node concept="3Tm6S6" id="_tf6vz5GL0" role="1B3o_S" />
        <node concept="3clFbS" id="_tf6vz5GL1" role="3clF47">
          <node concept="3SKdUt" id="_tf6vz5GL2" role="3cqZAp">
            <node concept="1PaTwC" id="_tf6vz5GL3" role="1aUNEU">
              <node concept="3oM_SD" id="_tf6vz5GL4" role="1PaTwD">
                <property role="3oM_SC" value="update" />
              </node>
              <node concept="3oM_SD" id="_tf6vz5GL5" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="_tf6vz5GL6" role="1PaTwD">
                <property role="3oM_SC" value="graph" />
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="_tf6vz5GL7" role="3cqZAp">
            <node concept="3clFbS" id="_tf6vz5GL8" role="2LFqv$">
              <node concept="3clFbF" id="_tf6v$eAaS" role="3cqZAp">
                <node concept="1rXfSq" id="_tf6v$eAaQ" role="3clFbG">
                  <ref role="37wK5l" node="_tf6v$dzIW" resolve="updateExtends" />
                  <node concept="Xjq3P" id="_tf6v$eADS" role="37wK5m" />
                  <node concept="3EllGN" id="_tf6v$eBHP" role="37wK5m">
                    <node concept="37vLTw" id="_tf6v$eBHQ" role="3ElVtu">
                      <ref role="3cqZAo" node="_tf6vz5GLx" resolve="abs" />
                    </node>
                    <node concept="37vLTw" id="_tf6v$eBHR" role="3ElQJh">
                      <ref role="3cqZAo" node="_tf6vz5GKV" resolve="graph" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="_tf6v$eBo4" role="37wK5m">
                    <ref role="3cqZAo" node="_tf6vz5GKV" resolve="graph" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="_tf6vz5GLx" role="1Duv9x">
              <property role="TrG5h" value="abs" />
              <node concept="16syzq" id="_tf6vz5GLy" role="1tU5fm">
                <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
              </node>
            </node>
            <node concept="2OqwBi" id="_tf6vz5GLz" role="1DdaDG">
              <node concept="37vLTw" id="_tf6vz5GL$" role="2Oq$k0">
                <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
              </node>
              <node concept="liA8E" id="_tf6vz5GL_" role="2OqNvi">
                <ref role="37wK5l" node="6nx4rRkOj1Y" resolve="getExtended" />
                <node concept="10QFUN" id="_tf6vzg5ZW" role="37wK5m">
                  <node concept="2OqwBi" id="_tf6vzg5ZT" role="10QFUP">
                    <node concept="Xjq3P" id="_tf6vzhrAM" role="2Oq$k0" />
                    <node concept="2OwXpG" id="_tf6vzg5ZV" role="2OqNvi">
                      <ref role="2Oxat5" node="3KN3A4uUwms" resolve="lang" />
                    </node>
                  </node>
                  <node concept="16syzq" id="_tf6vzg5ZS" role="10QFUM">
                    <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="_tf6v$eEj8" role="3cqZAp">
            <node concept="3clFbS" id="_tf6v$eEja" role="3clFbx">
              <node concept="1DcWWT" id="_tf6v$eCah" role="3cqZAp">
                <node concept="3clFbS" id="_tf6v$eCai" role="2LFqv$">
                  <node concept="3clFbF" id="_tf6v$eCaj" role="3cqZAp">
                    <node concept="1rXfSq" id="_tf6v$eCak" role="3clFbG">
                      <ref role="37wK5l" node="_tf6v$dzIW" resolve="updateExtends" />
                      <node concept="Xjq3P" id="_tf6v$eCal" role="37wK5m" />
                      <node concept="3EllGN" id="_tf6v$eCam" role="37wK5m">
                        <node concept="37vLTw" id="_tf6v$eCan" role="3ElVtu">
                          <ref role="3cqZAo" node="_tf6v$eCaq" resolve="abs" />
                        </node>
                        <node concept="37vLTw" id="_tf6v$eCao" role="3ElQJh">
                          <ref role="3cqZAo" node="_tf6vz5GKV" resolve="graph" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="_tf6v$eCap" role="37wK5m">
                        <ref role="3cqZAo" node="_tf6vz5GKV" resolve="graph" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="_tf6v$eCaq" role="1Duv9x">
                  <property role="TrG5h" value="abs" />
                  <node concept="16syzq" id="_tf6v$eCar" role="1tU5fm">
                    <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                  </node>
                </node>
                <node concept="2OqwBi" id="_tf6v$eCas" role="1DdaDG">
                  <node concept="37vLTw" id="_tf6v$eCat" role="2Oq$k0">
                    <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
                  </node>
                  <node concept="liA8E" id="_tf6v$eCau" role="2OqNvi">
                    <ref role="37wK5l" node="6nx4rRkOj1Y" resolve="getExtended" />
                    <node concept="10QFUN" id="_tf6v$eCav" role="37wK5m">
                      <node concept="2OqwBi" id="_tf6v$eCaw" role="10QFUP">
                        <node concept="Xjq3P" id="_tf6v$eCax" role="2Oq$k0" />
                        <node concept="2OwXpG" id="_tf6v$eHxg" role="2OqNvi">
                          <ref role="2Oxat5" node="_tf6vz1OM3" resolve="sidekick" />
                        </node>
                      </node>
                      <node concept="16syzq" id="_tf6v$eCaz" role="10QFUM">
                        <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="_tf6v$eFzh" role="3clFbw">
              <node concept="10Nm6u" id="_tf6v$eFVS" role="3uHU7w" />
              <node concept="37vLTw" id="_tf6v$eFbz" role="3uHU7B">
                <ref role="3cqZAo" node="_tf6vz1OM3" resolve="sidekick" />
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="_tf6vz5GLB" role="3cqZAp">
            <node concept="3clFbS" id="_tf6vz5GLC" role="2LFqv$">
              <node concept="3clFbF" id="_tf6v$eIpZ" role="3cqZAp">
                <node concept="1rXfSq" id="_tf6v$eIpX" role="3clFbG">
                  <ref role="37wK5l" node="_tf6v$dzIW" resolve="updateExtends" />
                  <node concept="3EllGN" id="_tf6v$eISg" role="37wK5m">
                    <node concept="37vLTw" id="_tf6v$eISh" role="3ElVtu">
                      <ref role="3cqZAo" node="_tf6vz5GM1" resolve="spec" />
                    </node>
                    <node concept="37vLTw" id="_tf6v$eISi" role="3ElQJh">
                      <ref role="3cqZAo" node="_tf6vz5GKV" resolve="graph" />
                    </node>
                  </node>
                  <node concept="Xjq3P" id="_tf6v$eJ7m" role="37wK5m" />
                  <node concept="37vLTw" id="_tf6v$eJh5" role="37wK5m">
                    <ref role="3cqZAo" node="_tf6vz5GKV" resolve="graph" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="_tf6vz5GM1" role="1Duv9x">
              <property role="TrG5h" value="spec" />
              <node concept="16syzq" id="_tf6vz5GM2" role="1tU5fm">
                <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
              </node>
            </node>
            <node concept="2OqwBi" id="_tf6vz5GM3" role="1DdaDG">
              <node concept="37vLTw" id="_tf6vz5GM4" role="2Oq$k0">
                <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
              </node>
              <node concept="liA8E" id="_tf6vz5GM5" role="2OqNvi">
                <ref role="37wK5l" node="6nx4rRkOiUG" resolve="getExtending" />
                <node concept="10QFUN" id="_tf6vzg70V" role="37wK5m">
                  <node concept="2OqwBi" id="_tf6vzg70S" role="10QFUP">
                    <node concept="Xjq3P" id="_tf6vzhs1W" role="2Oq$k0" />
                    <node concept="2OwXpG" id="_tf6vzg70U" role="2OqNvi">
                      <ref role="2Oxat5" node="3KN3A4uUwms" resolve="lang" />
                    </node>
                  </node>
                  <node concept="16syzq" id="_tf6vzg70R" role="10QFUM">
                    <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="_tf6v$eLWr" role="3cqZAp">
            <node concept="3clFbS" id="_tf6v$eLWs" role="3clFbx">
              <node concept="1DcWWT" id="_tf6v$eLWt" role="3cqZAp">
                <node concept="3clFbS" id="_tf6v$eLWu" role="2LFqv$">
                  <node concept="3clFbF" id="_tf6v$eLWv" role="3cqZAp">
                    <node concept="1rXfSq" id="_tf6v$eLWw" role="3clFbG">
                      <ref role="37wK5l" node="_tf6v$dzIW" resolve="updateExtends" />
                      <node concept="3EllGN" id="_tf6v$eLWy" role="37wK5m">
                        <node concept="37vLTw" id="_tf6v$eLWz" role="3ElVtu">
                          <ref role="3cqZAo" node="_tf6v$eLWA" resolve="spec" />
                        </node>
                        <node concept="37vLTw" id="_tf6v$eLW$" role="3ElQJh">
                          <ref role="3cqZAo" node="_tf6vz5GKV" resolve="graph" />
                        </node>
                      </node>
                      <node concept="Xjq3P" id="_tf6v$eLWx" role="37wK5m" />
                      <node concept="37vLTw" id="_tf6v$eLW_" role="37wK5m">
                        <ref role="3cqZAo" node="_tf6vz5GKV" resolve="graph" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="_tf6v$eLWA" role="1Duv9x">
                  <property role="TrG5h" value="spec" />
                  <node concept="16syzq" id="_tf6v$eLWB" role="1tU5fm">
                    <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                  </node>
                </node>
                <node concept="2OqwBi" id="_tf6v$eLWC" role="1DdaDG">
                  <node concept="37vLTw" id="_tf6v$eLWD" role="2Oq$k0">
                    <ref role="3cqZAo" node="6nx4rRkNR$i" resolve="discoverable" />
                  </node>
                  <node concept="liA8E" id="_tf6v$eLWE" role="2OqNvi">
                    <ref role="37wK5l" node="6nx4rRkOiUG" resolve="getExtending" />
                    <node concept="10QFUN" id="_tf6v$eLWF" role="37wK5m">
                      <node concept="2OqwBi" id="_tf6v$eLWG" role="10QFUP">
                        <node concept="Xjq3P" id="_tf6v$eLWH" role="2Oq$k0" />
                        <node concept="2OwXpG" id="_tf6v$eLWI" role="2OqNvi">
                          <ref role="2Oxat5" node="_tf6vz1OM3" resolve="sidekick" />
                        </node>
                      </node>
                      <node concept="16syzq" id="_tf6v$eLWJ" role="10QFUM">
                        <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="_tf6v$eLWK" role="3clFbw">
              <node concept="10Nm6u" id="_tf6v$eLWL" role="3uHU7w" />
              <node concept="37vLTw" id="_tf6v$eLWM" role="3uHU7B">
                <ref role="3cqZAo" node="_tf6vz1OM3" resolve="sidekick" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="_tf6v$dpEZ" role="jymVt" />
      <node concept="3clFb_" id="_tf6v$dzIW" role="jymVt">
        <property role="TrG5h" value="updateExtends" />
        <node concept="37vLTG" id="_tf6v$ef3_" role="3clF46">
          <property role="TrG5h" value="spec" />
          <node concept="3uibUv" id="_tf6v$euNW" role="1tU5fm">
            <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
          </node>
        </node>
        <node concept="37vLTG" id="_tf6v$ef3t" role="3clF46">
          <property role="TrG5h" value="abs" />
          <node concept="3uibUv" id="_tf6v$eu0f" role="1tU5fm">
            <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
          </node>
        </node>
        <node concept="37vLTG" id="_tf6v$dSLk" role="3clF46">
          <property role="TrG5h" value="graph" />
          <node concept="3rvAFt" id="_tf6v$edky" role="1tU5fm">
            <node concept="16syzq" id="_tf6v$edqq" role="3rvQeY">
              <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
            </node>
            <node concept="3uibUv" id="_tf6v$eebV" role="3rvSg0">
              <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="_tf6v$dzIY" role="3clF45" />
        <node concept="3Tm6S6" id="_tf6v$dzIZ" role="1B3o_S" />
        <node concept="3clFbS" id="_tf6v$dzJ0" role="3clF47">
          <node concept="3clFbJ" id="_tf6v$ews_" role="3cqZAp">
            <node concept="3clFbS" id="_tf6v$ewsB" role="3clFbx">
              <node concept="3clFbF" id="_tf6v$exN0" role="3cqZAp">
                <node concept="2OqwBi" id="_tf6v$eyHK" role="3clFbG">
                  <node concept="2OqwBi" id="_tf6v$exQo" role="2Oq$k0">
                    <node concept="37vLTw" id="_tf6v$exMY" role="2Oq$k0">
                      <ref role="3cqZAo" node="_tf6v$ef3_" resolve="spec" />
                    </node>
                    <node concept="2OwXpG" id="_tf6v$ey2h" role="2OqNvi">
                      <ref role="2Oxat5" node="3KN3A4uUwmv" resolve="allExtends" />
                    </node>
                  </node>
                  <node concept="TSZUe" id="_tf6v$ezsw" role="2OqNvi">
                    <node concept="37vLTw" id="_tf6v$ezN3" role="25WWJ7">
                      <ref role="3cqZAo" node="_tf6v$ef3t" resolve="abs" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="_tf6v$ezUq" role="3cqZAp">
                <node concept="2OqwBi" id="_tf6v$ezUr" role="3clFbG">
                  <node concept="2OqwBi" id="_tf6v$ezUs" role="2Oq$k0">
                    <node concept="37vLTw" id="_tf6v$e$nM" role="2Oq$k0">
                      <ref role="3cqZAo" node="_tf6v$ef3t" resolve="abs" />
                    </node>
                    <node concept="2OwXpG" id="_tf6v$e$Lh" role="2OqNvi">
                      <ref role="2Oxat5" node="3KN3A4w3GWQ" resolve="allExtendedBy" />
                    </node>
                  </node>
                  <node concept="TSZUe" id="_tf6v$ezUv" role="2OqNvi">
                    <node concept="37vLTw" id="_tf6v$e_cu" role="25WWJ7">
                      <ref role="3cqZAo" node="_tf6v$ef3_" resolve="spec" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="_tf6v$exeR" role="3clFbw">
              <node concept="3y3z36" id="_tf6v$ex_O" role="3uHU7w">
                <node concept="10Nm6u" id="_tf6v$exDx" role="3uHU7w" />
                <node concept="37vLTw" id="_tf6v$exnw" role="3uHU7B">
                  <ref role="3cqZAo" node="_tf6v$ef3_" resolve="spec" />
                </node>
              </node>
              <node concept="3y3z36" id="_tf6v$ex29" role="3uHU7B">
                <node concept="37vLTw" id="_tf6v$ewOK" role="3uHU7B">
                  <ref role="3cqZAo" node="_tf6v$ef3t" resolve="abs" />
                </node>
                <node concept="10Nm6u" id="_tf6v$ex6r" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="_tf6vzgVU8" role="jymVt" />
      <node concept="312cEg" id="3KN3A4uUwms" role="jymVt">
        <property role="TrG5h" value="lang" />
        <node concept="3Tm6S6" id="3KN3A4uUwmt" role="1B3o_S" />
        <node concept="16syzq" id="_tf6vzc75$" role="1tU5fm">
          <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
        </node>
      </node>
      <node concept="312cEg" id="_tf6vz1OM3" role="jymVt">
        <property role="TrG5h" value="sidekick" />
        <node concept="3Tm6S6" id="_tf6vz1OM4" role="1B3o_S" />
        <node concept="16syzq" id="_tf6vzc9B6" role="1tU5fm">
          <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
        </node>
      </node>
      <node concept="312cEg" id="_tf6vzc$Qe" role="jymVt">
        <property role="TrG5h" value="aspect" />
        <node concept="3Tm6S6" id="_tf6vzc$Qf" role="1B3o_S" />
        <node concept="16syzq" id="_tf6vzcO4E" role="1tU5fm">
          <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
        </node>
      </node>
      <node concept="312cEg" id="3KN3A4uUwmv" role="jymVt">
        <property role="TrG5h" value="allExtends" />
        <node concept="3Tm6S6" id="3KN3A4uUwmw" role="1B3o_S" />
        <node concept="2hMVRd" id="_tf6v$d83J" role="1tU5fm">
          <node concept="3uibUv" id="_tf6v$d83L" role="2hN53Y">
            <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
          </node>
        </node>
        <node concept="2ShNRf" id="3KN3A4uUwmz" role="33vP2m">
          <node concept="2i4dXS" id="_tf6v$dc_X" role="2ShVmc">
            <node concept="3uibUv" id="_tf6v$dc_Z" role="HW$YZ">
              <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="3KN3A4w3GWQ" role="jymVt">
        <property role="TrG5h" value="allExtendedBy" />
        <node concept="3Tm6S6" id="3KN3A4w3GWR" role="1B3o_S" />
        <node concept="2hMVRd" id="_tf6v$daed" role="1tU5fm">
          <node concept="3uibUv" id="_tf6v$daef" role="2hN53Y">
            <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
          </node>
        </node>
        <node concept="2ShNRf" id="3KN3A4w3GWU" role="33vP2m">
          <node concept="2i4dXS" id="_tf6v$deku" role="2ShVmc">
            <node concept="3uibUv" id="_tf6v$dekw" role="HW$YZ">
              <ref role="3uigEE" node="3KN3A4uUwll" resolve="CliqueBuilder.Vtx" />
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="3KN3A4uVa13" role="jymVt">
        <property role="TrG5h" value="clique" />
        <node concept="3Tm6S6" id="3KN3A4uVa14" role="1B3o_S" />
        <node concept="10Oyi0" id="3KN3A4uVbNU" role="1tU5fm" />
        <node concept="3cmrfG" id="3KN3A4uVc1H" role="33vP2m">
          <property role="3cmrfH" value="-1" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3KN3A4uUwmA" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6nx4rRkPnQV" role="jymVt" />
    <node concept="312cEg" id="6nx4rRkNR$i" role="jymVt">
      <property role="TrG5h" value="discoverable" />
      <node concept="3Tm6S6" id="6nx4rRkNR$j" role="1B3o_S" />
      <node concept="3uibUv" id="6nx4rRkNR$l" role="1tU5fm">
        <ref role="3uigEE" node="NKt6ynom3d" resolve="AspectDiscoverable" />
        <node concept="16syzq" id="6nx4rRkNR$m" role="11_B2D">
          <ref role="16sUi3" node="6nx4rRkNLdo" resolve="L" />
        </node>
        <node concept="16syzq" id="6nx4rRkNR$n" role="11_B2D">
          <ref role="16sUi3" node="6nx4rRkNQt3" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="16euLQ" id="6nx4rRkNLdo" role="16eVyc">
      <property role="TrG5h" value="L" />
    </node>
    <node concept="16euLQ" id="6nx4rRkNQt3" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3uibUv" id="6nx4rRkNQZk" role="3ztrMU">
        <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5Zr$fBZogsP" role="1B3o_S" />
  </node>
</model>

