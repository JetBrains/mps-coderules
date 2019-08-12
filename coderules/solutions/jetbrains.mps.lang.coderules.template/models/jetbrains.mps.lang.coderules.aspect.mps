<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2cc226a9-8a78-4010-b962-823343fd28ff(jetbrains.mps.lang.coderules.aspect)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
  </languages>
  <imports>
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="psr6" ref="r:ce187d46-c94b-47d6-8d77-26aa6af239e8(jetbrains.mps.lang.coderules.macro)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.coderules.template)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="i5cy" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent.atomic(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" implicit="true" />
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
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
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="1350122676458893092" name="text" index="3ndbpf" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
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
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="ng" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="ng" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="6801639034384703212" name="jetbrains.mps.baseLanguage.collections.structure.StackType" flags="in" index="oyxx6" />
      <concept id="5784983078884872741" name="jetbrains.mps.baseLanguage.collections.structure.PeekOperation" flags="nn" index="2oR75g" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="3358009230508699637" name="jetbrains.mps.baseLanguage.collections.structure.PopOperation" flags="nn" index="2AryhJ" />
      <concept id="3358009230508699932" name="jetbrains.mps.baseLanguage.collections.structure.PushOperation" flags="nn" index="2ArzE6" />
      <concept id="3358009230509553641" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListType" flags="in" index="2BANLN" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1227022159410" name="jetbrains.mps.baseLanguage.collections.structure.AddFirstElementOperation" flags="nn" index="2Ke4WJ" />
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1237909114519" name="jetbrains.mps.baseLanguage.collections.structure.GetValuesOperation" flags="nn" index="T8wYR" />
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
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
    </language>
  </registry>
  <node concept="3HP615" id="NKt6ynom3d">
    <property role="TrG5h" value="AspectDiscoverable" />
    <node concept="2tJIrI" id="NKt6ynombm" role="jymVt" />
    <node concept="3clFb_" id="NKt6ynombB" role="jymVt">
      <property role="TrG5h" value="discover" />
      <node concept="37vLTG" id="NKt6ynomn_" role="3clF46">
        <property role="TrG5h" value="lr" />
        <node concept="3uibUv" id="NKt6ynomnA" role="1tU5fm">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="16syzq" id="NKt6ynpjex" role="3clF45">
        <ref role="16sUi3" node="NKt6ynomvO" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="NKt6ynombE" role="1B3o_S" />
      <node concept="3clFbS" id="NKt6ynombF" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="NKt6ynombr" role="jymVt" />
    <node concept="3Tm1VV" id="NKt6ynom3e" role="1B3o_S" />
    <node concept="16euLQ" id="NKt6ynomvO" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3uibUv" id="NKt6ynorR7" role="3ztrMU">
        <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="NKt6ynorWQ">
    <property role="TrG5h" value="AspectLookup" />
    <node concept="2tJIrI" id="NKt6ynosjc" role="jymVt" />
    <node concept="2YIFZL" id="78H58oefSjC" role="jymVt">
      <property role="TrG5h" value="lookup" />
      <node concept="37vLTG" id="78H58oefUc4" role="3clF46">
        <property role="TrG5h" value="discoverable" />
        <node concept="3uibUv" id="78H58oefUcY" role="1tU5fm">
          <ref role="3uigEE" node="NKt6ynom3d" resolve="AspectDiscoverable" />
          <node concept="16syzq" id="78H58oefUf$" role="11_B2D">
            <ref role="16sUi3" node="78H58oefU3u" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3KN3A4v3cQn" role="3clF46">
        <property role="TrG5h" value="sidekickDetectable" />
        <node concept="3uibUv" id="3KN3A4v3ew4" role="1tU5fm">
          <ref role="3uigEE" node="3KN3A4uUig2" resolve="SidekickDetectable" />
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
        <node concept="3clFbF" id="78H58oefUrm" role="3cqZAp">
          <node concept="2ShNRf" id="78H58oefUrk" role="3clFbG">
            <node concept="1pGfFk" id="78H58oefUNA" role="2ShVmc">
              <ref role="37wK5l" node="NKt6yno$sR" resolve="AspectLookup" />
              <node concept="37vLTw" id="78H58oefUXe" role="37wK5m">
                <ref role="3cqZAo" node="78H58oefUc4" resolve="discoverable" />
              </node>
              <node concept="37vLTw" id="3KN3A4v3pRc" role="37wK5m">
                <ref role="3cqZAo" node="3KN3A4v3cQn" resolve="sidekickDetectable" />
              </node>
              <node concept="16syzq" id="78H58oefV3C" role="1pMfVU">
                <ref role="16sUi3" node="78H58oefU3u" resolve="T" />
              </node>
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
    <node concept="3clFbW" id="NKt6yno$sR" role="jymVt">
      <node concept="37vLTG" id="NKt6yno_xa" role="3clF46">
        <property role="TrG5h" value="discoverable" />
        <node concept="3uibUv" id="NKt6yno_y0" role="1tU5fm">
          <ref role="3uigEE" node="NKt6ynom3d" resolve="AspectDiscoverable" />
          <node concept="16syzq" id="NKt6ynoFZ$" role="11_B2D">
            <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3KN3A4v34qi" role="3clF46">
        <property role="TrG5h" value="sidekickDetectable" />
        <node concept="3uibUv" id="3KN3A4v357v" role="1tU5fm">
          <ref role="3uigEE" node="3KN3A4uUig2" resolve="SidekickDetectable" />
        </node>
      </node>
      <node concept="3cqZAl" id="NKt6yno$sT" role="3clF45" />
      <node concept="3Tm1VV" id="NKt6yno$sU" role="1B3o_S" />
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
        <node concept="3clFbF" id="3KN3A4v369a" role="3cqZAp">
          <node concept="37vLTI" id="3KN3A4v369c" role="3clFbG">
            <node concept="2OqwBi" id="3KN3A4v3ajR" role="37vLTJ">
              <node concept="Xjq3P" id="3KN3A4v3ank" role="2Oq$k0" />
              <node concept="2OwXpG" id="3KN3A4v3ajU" role="2OqNvi">
                <ref role="2Oxat5" node="3KN3A4v3696" resolve="sidekickDetectable" />
              </node>
            </node>
            <node concept="37vLTw" id="3KN3A4v369g" role="37vLTx">
              <ref role="3cqZAo" node="3KN3A4v34qi" resolve="sidekickDetectable" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="NKt6ynoPYt" role="jymVt" />
    <node concept="3clFb_" id="7mB3viLmii2" role="jymVt">
      <property role="TrG5h" value="allForNodes" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="7mB3viLmii3" role="3clF47">
        <node concept="3cpWs8" id="7mB3viLmGMo" role="3cqZAp">
          <node concept="3cpWsn" id="7mB3viLmGMp" role="3cpWs9">
            <property role="TrG5h" value="imports" />
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
            <node concept="3clFbF" id="7mB3viLmLZG" role="3cqZAp">
              <node concept="2OqwBi" id="7mB3viLmMLT" role="3clFbG">
                <node concept="37vLTw" id="7mB3viLmLZE" role="2Oq$k0">
                  <ref role="3cqZAo" node="7mB3viLmGMp" resolve="imports" />
                </node>
                <node concept="TSZUe" id="7mB3viLmRQd" role="2OqNvi">
                  <node concept="2OqwBi" id="7mB3viLmPLf" role="25WWJ7">
                    <node concept="2OqwBi" id="7mB3viLmPms" role="2Oq$k0">
                      <node concept="2JrnkZ" id="7mB3viLmOTh" role="2Oq$k0">
                        <node concept="37vLTw" id="3KN3A4vE$SW" role="2JrQYb">
                          <ref role="3cqZAo" node="3KN3A4vEzi5" resolve="node" />
                        </node>
                      </node>
                      <node concept="liA8E" id="3KN3A4vE_b$" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7mB3viLmQ23" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
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
            <ref role="3cqZAo" node="7mB3viLmiiz" resolve="nodes" />
          </node>
        </node>
        <node concept="3clFbF" id="3KN3A4v5e$l" role="3cqZAp">
          <node concept="2YIFZM" id="3KN3A4v5e$m" role="3clFbG">
            <ref role="37wK5l" node="3KN3A4uV0IR" resolve="discoverAspects" />
            <ref role="1Pybhc" node="3KN3A4uUhmW" resolve="AspectClique" />
            <node concept="1rXfSq" id="3KN3A4v5e$n" role="37wK5m">
              <ref role="37wK5l" node="4pwDyRBwQ_v" resolve="languages" />
              <node concept="37vLTw" id="3KN3A4v5glt" role="37wK5m">
                <ref role="3cqZAo" node="7mB3viLmGMp" resolve="imports" />
              </node>
              <node concept="37vLTw" id="3KN3A4v5e$p" role="37wK5m">
                <ref role="3cqZAo" node="7mB3viLmii_" resolve="repository" />
              </node>
            </node>
            <node concept="37vLTw" id="3KN3A4v5e$q" role="37wK5m">
              <ref role="3cqZAo" node="3KN3A4v3696" resolve="sidekickDetectable" />
            </node>
            <node concept="37vLTw" id="3KN3A4v5e$r" role="37wK5m">
              <ref role="3cqZAo" node="NKt6yno_yM" resolve="discoverable" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7mB3viLmiiz" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="A3Dl8" id="3KN3A4vEFRB" role="1tU5fm">
          <node concept="3Tqbb2" id="3KN3A4vEFRD" role="A3Ik2" />
        </node>
      </node>
      <node concept="37vLTG" id="7mB3viLmii_" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="7mB3viLmiiA" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3vKaQO" id="7mB3viLmiiB" role="3clF45">
        <node concept="3uibUv" id="3KN3A4v5gxH" role="3O5elw">
          <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
          <node concept="16syzq" id="3KN3A4v5h_n" role="11_B2D">
            <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7mB3viLmiiD" role="1B3o_S" />
      <node concept="P$JXv" id="3KN3A4vEWb2" role="lGtFl">
        <node concept="TZ5HA" id="3KN3A4vEWb3" role="TZ5H$">
          <node concept="1dT_AC" id="3KN3A4vEWb4" role="1dT_Ay">
            <property role="1dT_AB" value="Discover aspects belonging to the language(s) that define the concepts of nodes. " />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KN3A4v4fUL" role="jymVt" />
    <node concept="3clFb_" id="NKt6ynoYr0" role="jymVt">
      <property role="TrG5h" value="allForModel" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="NKt6ynoWQg" role="3clF47">
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
                  <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                  <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
                  <node concept="37vLTw" id="3KN3A4v3Kah" role="37wK5m">
                    <ref role="3cqZAo" node="NKt6ynoWQb" resolve="repository" />
                  </node>
                </node>
                <node concept="37vLTw" id="3KN3A4v3Kai" role="37wK5m">
                  <ref role="3cqZAo" node="NKt6ynoWQb" resolve="repository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3KN3A4v48sd" role="3cqZAp">
          <node concept="3cpWsn" id="3KN3A4v48se" role="3cpWs9">
            <property role="TrG5h" value="usedLanguages" />
            <node concept="3uibUv" id="3KN3A4v48rs" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
              <node concept="3uibUv" id="3KN3A4v48rv" role="11_B2D">
                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
              </node>
            </node>
            <node concept="2OqwBi" id="3KN3A4v48sf" role="33vP2m">
              <node concept="37vLTw" id="3KN3A4v48sg" role="2Oq$k0">
                <ref role="3cqZAo" node="3KN3A4v3Kad" resolve="resolver" />
              </node>
              <node concept="liA8E" id="3KN3A4v48sh" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelDependencyResolver.usedLanguages(org.jetbrains.mps.openapi.model.SModel)" resolve="usedLanguages" />
                <node concept="37vLTw" id="3KN3A4v48si" role="37wK5m">
                  <ref role="3cqZAo" node="NKt6ynoWQ9" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3KN3A4v3NmM" role="3cqZAp">
          <node concept="2YIFZM" id="3KN3A4v3NEw" role="3clFbG">
            <ref role="37wK5l" node="3KN3A4uV0IR" resolve="discoverAspects" />
            <ref role="1Pybhc" node="3KN3A4uUhmW" resolve="AspectClique" />
            <node concept="1rXfSq" id="3KN3A4v4bsC" role="37wK5m">
              <ref role="37wK5l" node="4pwDyRBwQ_v" resolve="languages" />
              <node concept="37vLTw" id="3KN3A4v4cCr" role="37wK5m">
                <ref role="3cqZAo" node="3KN3A4v48se" resolve="usedLanguages" />
              </node>
              <node concept="37vLTw" id="3KN3A4v4dbc" role="37wK5m">
                <ref role="3cqZAo" node="NKt6ynoWQb" resolve="repository" />
              </node>
            </node>
            <node concept="37vLTw" id="3KN3A4v3Qvg" role="37wK5m">
              <ref role="3cqZAo" node="3KN3A4v3696" resolve="sidekickDetectable" />
            </node>
            <node concept="37vLTw" id="3KN3A4v3Pk3" role="37wK5m">
              <ref role="3cqZAo" node="NKt6yno_yM" resolve="discoverable" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="NKt6ynoWQ9" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="NKt6ynoWQa" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="NKt6ynoWQb" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="NKt6ynoWQc" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3vKaQO" id="NKt6ynoWQd" role="3clF45">
        <node concept="3uibUv" id="3KN3A4v3Dpo" role="3O5elw">
          <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
          <node concept="16syzq" id="3KN3A4v3Ev5" role="11_B2D">
            <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="NKt6ynoWQf" role="1B3o_S" />
      <node concept="P$JXv" id="3KN3A4vEWNE" role="lGtFl">
        <node concept="TZ5HA" id="3KN3A4vEWNF" role="TZ5H$">
          <node concept="1dT_AC" id="3KN3A4vEWNG" role="1dT_Ay">
            <property role="1dT_AB" value="Discover aspects that belong to languages that are imported in the model." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7mB3viLm$_H" role="jymVt" />
    <node concept="3clFb_" id="4pwDyRBwQ_v" role="jymVt">
      <property role="TrG5h" value="languages" />
      <node concept="37vLTG" id="4pwDyRBx4tZ" role="3clF46">
        <property role="TrG5h" value="slanguages" />
        <node concept="A3Dl8" id="4pwDyRBx4u0" role="1tU5fm">
          <node concept="3uibUv" id="4pwDyRBx4u1" role="A3Ik2">
            <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4pwDyRBwQOt" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="4pwDyRBx8d3" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3Tm6S6" id="4pwDyRBwWaj" role="1B3o_S" />
      <node concept="3clFbS" id="4pwDyRBwQ_z" role="3clF47">
        <node concept="3cpWs8" id="4pwDyRBxhgL" role="3cqZAp">
          <node concept="3cpWsn" id="4pwDyRBxhgM" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2hMVRd" id="4pwDyRBxhgN" role="1tU5fm">
              <node concept="3uibUv" id="4pwDyRBxhgO" role="2hN53Y">
                <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
              </node>
            </node>
            <node concept="2ShNRf" id="4pwDyRBxhgP" role="33vP2m">
              <node concept="2i4dXS" id="4pwDyRBxhgQ" role="2ShVmc">
                <node concept="3uibUv" id="4pwDyRBxhgR" role="HW$YZ">
                  <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="4pwDyRBxlY0" role="3cqZAp">
          <node concept="3clFbS" id="4pwDyRBxlY1" role="2LFqv$">
            <node concept="3cpWs8" id="4pwDyRBxlY2" role="3cqZAp">
              <node concept="3cpWsn" id="4pwDyRBxlY3" role="3cpWs9">
                <property role="TrG5h" value="langrt" />
                <node concept="3uibUv" id="4pwDyRBxlY4" role="1tU5fm">
                  <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                </node>
                <node concept="2OqwBi" id="4pwDyRBxlY5" role="33vP2m">
                  <node concept="2YIFZM" id="4pwDyRBxlY6" role="2Oq$k0">
                    <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
                    <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                    <node concept="37vLTw" id="4pwDyRBxlY7" role="37wK5m">
                      <ref role="3cqZAo" node="4pwDyRBwQOt" resolve="repository" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4pwDyRBxlY8" role="2OqNvi">
                    <ref role="37wK5l" to="vndm:~LanguageRegistry.getLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="getLanguage" />
                    <node concept="37vLTw" id="4pwDyRBxlY9" role="37wK5m">
                      <ref role="3cqZAo" node="4pwDyRBxlYA" resolve="slang" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4pwDyRBxlYa" role="3cqZAp">
              <node concept="3clFbS" id="4pwDyRBxlYb" role="3clFbx">
                <node concept="RRSsy" id="4pwDyRBxlYc" role="3cqZAp">
                  <property role="RRSoG" value="gZ5fksE/warn" />
                  <node concept="3cpWs3" id="4pwDyRBxlYd" role="RRSoy">
                    <node concept="Xl_RD" id="4pwDyRBxlYe" role="3uHU7w">
                      <property role="Xl_RC" value="\&quot;" />
                    </node>
                    <node concept="3cpWs3" id="4pwDyRBxlYf" role="3uHU7B">
                      <node concept="Xl_RD" id="4pwDyRBxlYg" role="3uHU7B">
                        <property role="Xl_RC" value="no language runtime for \&quot;" />
                      </node>
                      <node concept="2OqwBi" id="4pwDyRBxlYh" role="3uHU7w">
                        <node concept="37vLTw" id="4pwDyRBxlYi" role="2Oq$k0">
                          <ref role="3cqZAo" node="4pwDyRBxlYA" resolve="slang" />
                        </node>
                        <node concept="liA8E" id="4pwDyRBxlYj" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName()" resolve="getQualifiedName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4pwDyRBxlYk" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="4pwDyRBxlYl" role="3clFbw">
                <node concept="10Nm6u" id="4pwDyRBxlYm" role="3uHU7w" />
                <node concept="37vLTw" id="4pwDyRBxlYn" role="3uHU7B">
                  <ref role="3cqZAo" node="4pwDyRBxlY3" resolve="langrt" />
                </node>
              </node>
              <node concept="9aQIb" id="4pwDyRBxlYo" role="9aQIa">
                <node concept="3clFbS" id="4pwDyRBxlYp" role="9aQI4">
                  <node concept="3clFbF" id="4pwDyRBxlYq" role="3cqZAp">
                    <node concept="2OqwBi" id="4pwDyRBxlYr" role="3clFbG">
                      <node concept="37vLTw" id="4pwDyRBxnUf" role="2Oq$k0">
                        <ref role="3cqZAo" node="4pwDyRBxhgM" resolve="result" />
                      </node>
                      <node concept="TSZUe" id="4pwDyRBxlYt" role="2OqNvi">
                        <node concept="37vLTw" id="4pwDyRBxlYu" role="25WWJ7">
                          <ref role="3cqZAo" node="4pwDyRBxlY3" resolve="langrt" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4pwDyRBxlYA" role="1Duv9x">
            <property role="TrG5h" value="slang" />
            <node concept="3uibUv" id="4pwDyRBxlYB" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
            </node>
          </node>
          <node concept="37vLTw" id="4pwDyRBxlYC" role="1DdaDG">
            <ref role="3cqZAo" node="4pwDyRBx4tZ" resolve="slanguages" />
          </node>
        </node>
        <node concept="3clFbF" id="4pwDyRBxlUf" role="3cqZAp">
          <node concept="37vLTw" id="4pwDyRBxlUd" role="3clFbG">
            <ref role="3cqZAo" node="4pwDyRBxhgM" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3vKaQO" id="4pwDyRBxi7F" role="3clF45">
        <node concept="3uibUv" id="4pwDyRBxi7G" role="3O5elw">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="NKt6ynosjl" role="jymVt" />
    <node concept="3Tm1VV" id="NKt6ynorWR" role="1B3o_S" />
    <node concept="312cEg" id="NKt6yno_yM" role="jymVt">
      <property role="TrG5h" value="discoverable" />
      <node concept="3Tm6S6" id="NKt6yno_yN" role="1B3o_S" />
      <node concept="3uibUv" id="NKt6yno_yP" role="1tU5fm">
        <ref role="3uigEE" node="NKt6ynom3d" resolve="AspectDiscoverable" />
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
    <node concept="312cEg" id="3KN3A4v3696" role="jymVt">
      <property role="TrG5h" value="sidekickDetectable" />
      <node concept="3Tm6S6" id="3KN3A4v3697" role="1B3o_S" />
      <node concept="3uibUv" id="3KN3A4v3699" role="1tU5fm">
        <ref role="3uigEE" node="3KN3A4uUig2" resolve="SidekickDetectable" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="NKt6yomNZE">
    <property role="TrG5h" value="CoderulesAspect" />
    <node concept="2tJIrI" id="NKt6yomOnF" role="jymVt" />
    <node concept="3clFb_" id="NKt6yomP6t" role="jymVt">
      <property role="TrG5h" value="createMacroManifest" />
      <node concept="3uibUv" id="NKt6yomP6u" role="3clF45">
        <ref role="3uigEE" to="psr6:2N2MQGCMVqD" resolve="AbstractMacroManifest" />
      </node>
      <node concept="3Tm1VV" id="NKt6yomP6v" role="1B3o_S" />
      <node concept="3clFbS" id="NKt6yomP6w" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="NKt6yomP6x" role="jymVt" />
    <node concept="3clFb_" id="NKt6yomP6y" role="jymVt">
      <property role="TrG5h" value="createRuleManifest" />
      <node concept="3uibUv" id="NKt6yomP6z" role="3clF45">
        <ref role="3uigEE" to="i348:4OKkcnfu_xe" resolve="AbstractRuleTemplateManifest" />
      </node>
      <node concept="3Tm1VV" id="NKt6yomP6$" role="1B3o_S" />
      <node concept="3clFbS" id="NKt6yomP6_" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="NKt6yomOnK" role="jymVt" />
    <node concept="3Tm1VV" id="NKt6yomNZF" role="1B3o_S" />
    <node concept="3uibUv" id="NKt6yomOn_" role="3HQHJm">
      <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
    </node>
  </node>
  <node concept="312cEu" id="NKt6yp1COZ">
    <property role="TrG5h" value="DefaultCoderulesAspect" />
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
                <node concept="3clFb_" id="78H58oefpDL" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="discover" />
                  <node concept="37vLTG" id="78H58oefpDM" role="3clF46">
                    <property role="TrG5h" value="lr" />
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
                            <ref role="3cqZAo" node="78H58oefpDM" resolve="lr" />
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
                                    <ref role="3cqZAo" node="78H58oefpDM" resolve="lr" />
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
                <node concept="16syzq" id="78H58oefpTf" role="2Ghqu4">
                  <ref role="16sUi3" node="78H58oefoAe" resolve="T" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="78H58oefoRF" role="3cqZAp" />
      </node>
      <node concept="3uibUv" id="78H58oefqi0" role="3clF45">
        <ref role="3uigEE" node="NKt6ynom3d" resolve="AspectDiscoverable" />
        <node concept="16syzq" id="78H58oefqAI" role="11_B2D">
          <ref role="16sUi3" node="78H58oefoAe" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="78H58oefnLi" role="1B3o_S" />
      <node concept="16euLQ" id="78H58oefoAe" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="78H58oefoCM" role="3ztrMU">
          <ref role="3uigEE" node="NKt6yp1COZ" resolve="DefaultCoderulesAspect" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KN3A4uZLGZ" role="jymVt" />
    <node concept="2YIFZL" id="3KN3A4uZLWT" role="jymVt">
      <property role="TrG5h" value="sidekickDetectable" />
      <node concept="3uibUv" id="3KN3A4uZMaY" role="3clF45">
        <ref role="3uigEE" node="3KN3A4uUig2" resolve="SidekickDetectable" />
      </node>
      <node concept="3Tm1VV" id="3KN3A4uZLWW" role="1B3o_S" />
      <node concept="3clFbS" id="3KN3A4uZLWX" role="3clF47">
        <node concept="3clFbH" id="3KN3A4uZMyt" role="3cqZAp" />
        <node concept="3clFbF" id="3KN3A4uZMzf" role="3cqZAp">
          <node concept="2ShNRf" id="3KN3A4uZMzb" role="3clFbG">
            <node concept="YeOm9" id="3KN3A4v2JsL" role="2ShVmc">
              <node concept="1Y3b0j" id="3KN3A4v2JsO" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" node="3KN3A4uUig2" resolve="SidekickDetectable" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <node concept="3Tm1VV" id="3KN3A4v2JsP" role="1B3o_S" />
                <node concept="3clFb_" id="3KN3A4v2JsU" role="jymVt">
                  <property role="TrG5h" value="isSidekick" />
                  <node concept="37vLTG" id="3KN3A4v2JsV" role="3clF46">
                    <property role="TrG5h" value="sidekick" />
                    <node concept="3uibUv" id="3KN3A4v2JsW" role="1tU5fm">
                      <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="3KN3A4v2JsX" role="3clF46">
                    <property role="TrG5h" value="authority" />
                    <node concept="3uibUv" id="3KN3A4v2JsY" role="1tU5fm">
                      <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                    </node>
                  </node>
                  <node concept="10P_77" id="3KN3A4v2JsZ" role="3clF45" />
                  <node concept="3Tm1VV" id="3KN3A4v2Jt0" role="1B3o_S" />
                  <node concept="3clFbS" id="3KN3A4v2Jt2" role="3clF47">
                    <node concept="3SKdUt" id="3KN3A4v2LDD" role="3cqZAp">
                      <node concept="1PaTwC" id="3KN3A4v2LDE" role="3ndbpf">
                        <node concept="3oM_SD" id="3KN3A4v2LDF" role="1PaTwD">
                          <property role="3oM_SC" value="assuming" />
                        </node>
                        <node concept="3oM_SD" id="3KN3A4v2LDG" role="1PaTwD">
                          <property role="3oM_SC" value="`sidekick`" />
                        </node>
                        <node concept="3oM_SD" id="3KN3A4v2LDH" role="1PaTwD">
                          <property role="3oM_SC" value="extends" />
                        </node>
                        <node concept="3oM_SD" id="3KN3A4v2LDI" role="1PaTwD">
                          <property role="3oM_SC" value="`authority`" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="3KN3A4v2LDJ" role="3cqZAp">
                      <node concept="3cpWsn" id="3KN3A4v2LDK" role="3cpWs9">
                        <property role="TrG5h" value="ans" />
                        <node concept="3uibUv" id="3KN3A4v2LDL" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                        <node concept="2OqwBi" id="3KN3A4v2LDM" role="33vP2m">
                          <node concept="37vLTw" id="3KN3A4v2LDN" role="2Oq$k0">
                            <ref role="3cqZAo" node="3KN3A4v2JsX" resolve="authority" />
                          </node>
                          <node concept="liA8E" id="3KN3A4v2LDO" role="2OqNvi">
                            <ref role="37wK5l" to="vndm:~LanguageRuntime.getNamespace()" resolve="getNamespace" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="3KN3A4v2LDP" role="3cqZAp">
                      <node concept="3cpWsn" id="3KN3A4v2LDQ" role="3cpWs9">
                        <property role="TrG5h" value="sns" />
                        <node concept="3uibUv" id="3KN3A4v2LDR" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                        <node concept="2OqwBi" id="3KN3A4v2LDS" role="33vP2m">
                          <node concept="37vLTw" id="3KN3A4v2LDT" role="2Oq$k0">
                            <ref role="3cqZAo" node="3KN3A4v2JsV" resolve="sidekick" />
                          </node>
                          <node concept="liA8E" id="3KN3A4v2LDU" role="2OqNvi">
                            <ref role="37wK5l" to="vndm:~LanguageRuntime.getNamespace()" resolve="getNamespace" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="3KN3A4v2LDV" role="3cqZAp">
                      <node concept="1Wc70l" id="3KN3A4v2LDW" role="3cqZAk">
                        <node concept="2OqwBi" id="3KN3A4v2LDX" role="3uHU7B">
                          <node concept="37vLTw" id="3KN3A4v2LDY" role="2Oq$k0">
                            <ref role="3cqZAo" node="3KN3A4v2LDQ" resolve="sns" />
                          </node>
                          <node concept="liA8E" id="3KN3A4v2LDZ" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                            <node concept="37vLTw" id="3KN3A4v2LE0" role="37wK5m">
                              <ref role="3cqZAo" node="3KN3A4v2LDK" resolve="ans" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="3KN3A4v2LE1" role="3uHU7w">
                          <node concept="Xl_RD" id="3KN3A4v2LE2" role="2Oq$k0">
                            <property role="Xl_RC" value="Ext" />
                          </node>
                          <node concept="liA8E" id="3KN3A4v2LE3" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                            <node concept="2OqwBi" id="3KN3A4v2LE4" role="37wK5m">
                              <node concept="37vLTw" id="3KN3A4v2LE5" role="2Oq$k0">
                                <ref role="3cqZAo" node="3KN3A4v2LDQ" resolve="sns" />
                              </node>
                              <node concept="liA8E" id="3KN3A4v2LE6" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                                <node concept="2OqwBi" id="3KN3A4v2LE7" role="37wK5m">
                                  <node concept="37vLTw" id="3KN3A4v2LE8" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3KN3A4v2LDK" resolve="ans" />
                                  </node>
                                  <node concept="liA8E" id="3KN3A4v2LE9" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="3KN3A4v2Jt4" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3KN3A4uZMyy" role="3cqZAp" />
      </node>
    </node>
    <node concept="2tJIrI" id="NKt6yp1Fd6" role="jymVt" />
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
    <node concept="2tJIrI" id="3KN3A4uUhpo" role="jymVt" />
    <node concept="3clFb_" id="3KN3A4uUhpW" role="jymVt">
      <property role="TrG5h" value="aspects" />
      <node concept="_YKpA" id="3KN3A4uUhtj" role="3clF45">
        <node concept="16syzq" id="3KN3A4uUhtl" role="_ZDj9">
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
    <node concept="2tJIrI" id="3KN3A4uUhpt" role="jymVt" />
    <node concept="3clFb_" id="3KN3A4vz0wG" role="jymVt">
      <property role="TrG5h" value="namespaces" />
      <node concept="_YKpA" id="QpMEos6bHN" role="3clF45">
        <node concept="17QB3L" id="QpMEos6bHO" role="_ZDj9" />
      </node>
      <node concept="3Tm1VV" id="3KN3A4vz0wJ" role="1B3o_S" />
      <node concept="3clFbS" id="3KN3A4vz0wK" role="3clF47">
        <node concept="3clFbF" id="3KN3A4vz8XV" role="3cqZAp">
          <node concept="37vLTw" id="3KN3A4vz8XU" role="3clFbG">
            <ref role="3cqZAo" node="3KN3A4vyV7j" resolve="namespaces" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KN3A4vyYmz" role="jymVt" />
    <node concept="3clFbW" id="3KN3A4uXEXp" role="jymVt">
      <node concept="37vLTG" id="3KN3A4uXGrt" role="3clF46">
        <property role="TrG5h" value="aspects" />
        <node concept="_YKpA" id="3KN3A4uXG_y" role="1tU5fm">
          <node concept="16syzq" id="3KN3A4uXGCX" role="_ZDj9">
            <ref role="16sUi3" node="3KN3A4uUhop" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3KN3A4vyU9k" role="3clF46">
        <property role="TrG5h" value="namespaces" />
        <node concept="_YKpA" id="QpMEos6art" role="1tU5fm">
          <node concept="17QB3L" id="QpMEos6aru" role="_ZDj9" />
        </node>
      </node>
      <node concept="3cqZAl" id="3KN3A4uXEXr" role="3clF45" />
      <node concept="3Tm6S6" id="3KN3A4uXGh$" role="1B3o_S" />
      <node concept="3clFbS" id="3KN3A4uXEXt" role="3clF47">
        <node concept="3clFbF" id="3KN3A4uXGOu" role="3cqZAp">
          <node concept="37vLTI" id="3KN3A4uXGOw" role="3clFbG">
            <node concept="2OqwBi" id="3KN3A4uXKFr" role="37vLTJ">
              <node concept="Xjq3P" id="3KN3A4uXKGU" role="2Oq$k0" />
              <node concept="2OwXpG" id="3KN3A4uXKFu" role="2OqNvi">
                <ref role="2Oxat5" node="3KN3A4uXGOp" resolve="aspects" />
              </node>
            </node>
            <node concept="37vLTw" id="3KN3A4uXGO$" role="37vLTx">
              <ref role="3cqZAo" node="3KN3A4uXGrt" resolve="aspects" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3KN3A4vyV7n" role="3cqZAp">
          <node concept="37vLTI" id="3KN3A4vyV7p" role="3clFbG">
            <node concept="2OqwBi" id="3KN3A4vyXpM" role="37vLTJ">
              <node concept="Xjq3P" id="3KN3A4vyXsy" role="2Oq$k0" />
              <node concept="2OwXpG" id="3KN3A4vyXpP" role="2OqNvi">
                <ref role="2Oxat5" node="3KN3A4vyV7j" resolve="namespaces" />
              </node>
            </node>
            <node concept="37vLTw" id="3KN3A4vyV7t" role="37vLTx">
              <ref role="3cqZAo" node="3KN3A4vyU9k" resolve="namespaces" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KN3A4uV5kV" role="jymVt" />
    <node concept="2YIFZL" id="3KN3A4uV0IR" role="jymVt">
      <property role="TrG5h" value="discoverAspects" />
      <node concept="37vLTG" id="3KN3A4uXs_t" role="3clF46">
        <property role="TrG5h" value="langs" />
        <node concept="3vKaQO" id="3KN3A4uXs_u" role="1tU5fm">
          <node concept="3uibUv" id="3KN3A4uXs_v" role="3O5elw">
            <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3KN3A4uY0Cj" role="3clF46">
        <property role="TrG5h" value="sd" />
        <node concept="3uibUv" id="3KN3A4uY21r" role="1tU5fm">
          <ref role="3uigEE" node="3KN3A4uUig2" resolve="SidekickDetectable" />
        </node>
      </node>
      <node concept="37vLTG" id="3KN3A4uZbi0" role="3clF46">
        <property role="TrG5h" value="ad" />
        <node concept="3uibUv" id="3KN3A4uZbi1" role="1tU5fm">
          <ref role="3uigEE" node="NKt6ynom3d" resolve="AspectDiscoverable" />
          <node concept="16syzq" id="3KN3A4uZdw8" role="11_B2D">
            <ref role="16sUi3" node="3KN3A4uXOFp" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="3KN3A4uUxNQ" role="3clF47">
        <node concept="3clFbH" id="3KN3A4uXfqf" role="3cqZAp" />
        <node concept="3SKdUt" id="3KN3A4uY8wz" role="3cqZAp">
          <node concept="1PaTwC" id="3KN3A4uY8w$" role="3ndbpf">
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
          </node>
        </node>
        <node concept="3cpWs8" id="3KN3A4uXg$y" role="3cqZAp">
          <node concept="3cpWsn" id="3KN3A4uXg$_" role="3cpWs9">
            <property role="TrG5h" value="graph" />
            <node concept="3rvAFt" id="3KN3A4uXg$B" role="1tU5fm">
              <node concept="3uibUv" id="3KN3A4uXg$C" role="3rvQeY">
                <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
              </node>
              <node concept="3uibUv" id="3KN3A4uXg$D" role="3rvSg0">
                <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="3KN3A4uXoWl" role="33vP2m">
              <node concept="3rGOSV" id="3KN3A4uXiv9" role="2ShVmc">
                <node concept="3uibUv" id="3KN3A4uXiva" role="3rHrn6">
                  <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                </node>
                <node concept="3uibUv" id="3KN3A4uXivb" role="3rHtpV">
                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3KN3A4uXwVD" role="3cqZAp">
          <node concept="3clFbS" id="3KN3A4uXwVG" role="2LFqv$">
            <node concept="3clFbF" id="3KN3A4uXzuM" role="3cqZAp">
              <node concept="1rXfSq" id="3KN3A4uXzuL" role="3clFbG">
                <ref role="37wK5l" node="3KN3A4uV3rF" resolve="addToGraph" />
                <node concept="37vLTw" id="3KN3A4uXzCd" role="37wK5m">
                  <ref role="3cqZAo" node="3KN3A4uXwVH" resolve="rtm" />
                </node>
                <node concept="37vLTw" id="3KN3A4uXzIU" role="37wK5m">
                  <ref role="3cqZAo" node="3KN3A4uXg$_" resolve="graph" />
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="3KN3A4uXTzU" role="3cqZAp">
              <node concept="3clFbS" id="3KN3A4uXTzX" role="2LFqv$">
                <node concept="3clFbF" id="3KN3A4uXVRr" role="3cqZAp">
                  <node concept="1rXfSq" id="3KN3A4uXVRq" role="3clFbG">
                    <ref role="37wK5l" node="3KN3A4uV3rF" resolve="addToGraph" />
                    <node concept="37vLTw" id="3KN3A4uXWbU" role="37wK5m">
                      <ref role="3cqZAo" node="3KN3A4uXTzY" resolve="ertm" />
                    </node>
                    <node concept="37vLTw" id="3KN3A4uXWj6" role="37wK5m">
                      <ref role="3cqZAo" node="3KN3A4uXg$_" resolve="graph" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="3KN3A4uXTzY" role="1Duv9x">
                <property role="TrG5h" value="ertm" />
                <node concept="3uibUv" id="3KN3A4uXT$2" role="1tU5fm">
                  <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                </node>
              </node>
              <node concept="2OqwBi" id="3KN3A4uXT$3" role="1DdaDG">
                <node concept="37vLTw" id="3KN3A4uXT$4" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KN3A4uXwVH" resolve="rtm" />
                </node>
                <node concept="liA8E" id="3KN3A4uXT$5" role="2OqNvi">
                  <ref role="37wK5l" to="vndm:~LanguageRuntime.getExtendedLanguages()" resolve="getExtendedLanguages" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="3KN3A4uXY7l" role="3cqZAp">
              <node concept="1PaTwC" id="3KN3A4uXYn3" role="3ndbpf">
                <node concept="3oM_SD" id="3KN3A4uXYlq" role="1PaTwD">
                  <property role="3oM_SC" value="add" />
                </node>
                <node concept="3oM_SD" id="3KN3A4uXYlV" role="1PaTwD">
                  <property role="3oM_SC" value="&quot;sidekick&quot;" />
                </node>
                <node concept="3oM_SD" id="3KN3A4uXYnq" role="1PaTwD">
                  <property role="3oM_SC" value="languages" />
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="3KN3A4uXZlN" role="3cqZAp">
              <node concept="3clFbS" id="3KN3A4uXZlQ" role="2LFqv$">
                <node concept="3clFbJ" id="3KN3A4uY0BR" role="3cqZAp">
                  <node concept="2OqwBi" id="3KN3A4uY2q8" role="3clFbw">
                    <node concept="37vLTw" id="3KN3A4uY2iW" role="2Oq$k0">
                      <ref role="3cqZAo" node="3KN3A4uY0Cj" resolve="sd" />
                    </node>
                    <node concept="liA8E" id="3KN3A4uY2C6" role="2OqNvi">
                      <ref role="37wK5l" node="3KN3A4uUiiC" resolve="isSidekick" />
                      <node concept="37vLTw" id="3KN3A4uY2Fq" role="37wK5m">
                        <ref role="3cqZAo" node="3KN3A4uXZlR" resolve="xrtm" />
                      </node>
                      <node concept="37vLTw" id="3KN3A4uY2Ie" role="37wK5m">
                        <ref role="3cqZAo" node="3KN3A4uXwVH" resolve="rtm" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="3KN3A4uY0BT" role="3clFbx">
                    <node concept="3clFbF" id="3KN3A4uY5y1" role="3cqZAp">
                      <node concept="1rXfSq" id="3KN3A4uY5y0" role="3clFbG">
                        <ref role="37wK5l" node="3KN3A4uV3rF" resolve="addToGraph" />
                        <node concept="37vLTw" id="3KN3A4uY5Hn" role="37wK5m">
                          <ref role="3cqZAo" node="3KN3A4uXZlR" resolve="xrtm" />
                        </node>
                        <node concept="37vLTw" id="3KN3A4uY5Pt" role="37wK5m">
                          <ref role="3cqZAo" node="3KN3A4uXg$_" resolve="graph" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="3KN3A4uXZlR" role="1Duv9x">
                <property role="TrG5h" value="xrtm" />
                <node concept="3uibUv" id="3KN3A4uXZlV" role="1tU5fm">
                  <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                </node>
              </node>
              <node concept="2OqwBi" id="3KN3A4uXZlW" role="1DdaDG">
                <node concept="37vLTw" id="3KN3A4uXZlX" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KN3A4uXwVH" resolve="rtm" />
                </node>
                <node concept="liA8E" id="3KN3A4uXZlY" role="2OqNvi">
                  <ref role="37wK5l" to="vndm:~LanguageRuntime.getExtendingLanguages()" resolve="getExtendingLanguages" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3KN3A4uXwVH" role="1Duv9x">
            <property role="TrG5h" value="rtm" />
            <node concept="3uibUv" id="3KN3A4uXwVL" role="1tU5fm">
              <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
            </node>
          </node>
          <node concept="37vLTw" id="3KN3A4uXwVM" role="1DdaDG">
            <ref role="3cqZAo" node="3KN3A4uXs_t" resolve="langs" />
          </node>
        </node>
        <node concept="3clFbH" id="3KN3A4uXfvG" role="3cqZAp" />
        <node concept="3cpWs8" id="3KN3A4uUxOd" role="3cqZAp">
          <node concept="3cpWsn" id="3KN3A4uUxOe" role="3cpWs9">
            <property role="TrG5h" value="sorted" />
            <node concept="2BANLN" id="3KN3A4uUxOf" role="1tU5fm">
              <node concept="3uibUv" id="3KN3A4uUKUB" role="_ZDj9">
                <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="3KN3A4uUxOh" role="33vP2m">
              <node concept="2Jqq0_" id="3KN3A4uUxOi" role="2ShVmc">
                <node concept="3uibUv" id="3KN3A4uUMnR" role="HW$YZ">
                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3KN3A4uVeK_" role="3cqZAp">
          <node concept="3cpWsn" id="3KN3A4uVeKC" role="3cpWs9">
            <property role="TrG5h" value="nextClique" />
            <node concept="10Oyi0" id="3KN3A4uVeKz" role="1tU5fm" />
            <node concept="1rXfSq" id="3KN3A4uZ3ot" role="33vP2m">
              <ref role="37wK5l" node="3KN3A4uYR89" resolve="topoSort" />
              <node concept="37vLTw" id="3KN3A4uZ3PW" role="37wK5m">
                <ref role="3cqZAo" node="3KN3A4uXg$_" resolve="graph" />
              </node>
              <node concept="37vLTw" id="3KN3A4uZ49h" role="37wK5m">
                <ref role="3cqZAo" node="3KN3A4uUxOe" resolve="sorted" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3KN3A4uZ69v" role="3cqZAp" />
        <node concept="3cpWs8" id="3KN3A4uVyep" role="3cqZAp">
          <node concept="3cpWsn" id="3KN3A4uVyes" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="3KN3A4uVyel" role="1tU5fm">
              <node concept="3uibUv" id="3KN3A4uVz6e" role="_ZDj9">
                <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
                <node concept="16syzq" id="3KN3A4v6kMw" role="11_B2D">
                  <ref role="16sUi3" node="3KN3A4uXOFp" resolve="T" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="3KN3A4uVEg2" role="33vP2m">
              <node concept="Tc6Ow" id="3KN3A4uWj_I" role="2ShVmc">
                <node concept="3uibUv" id="3KN3A4uWk0l" role="HW$YZ">
                  <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
                  <node concept="16syzq" id="3KN3A4v6mql" role="11_B2D">
                    <ref role="16sUi3" node="3KN3A4uXOFp" resolve="T" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="3KN3A4uWl9m" role="3cqZAp">
          <node concept="3clFbS" id="3KN3A4uWl9o" role="2LFqv$">
            <node concept="3cpWs8" id="3KN3A4uWnnW" role="3cqZAp">
              <node concept="3cpWsn" id="3KN3A4uWnnZ" role="3cpWs9">
                <property role="TrG5h" value="aspects" />
                <node concept="_YKpA" id="3KN3A4uWnnS" role="1tU5fm">
                  <node concept="16syzq" id="3KN3A4uZiwc" role="_ZDj9">
                    <ref role="16sUi3" node="3KN3A4uXOFp" resolve="T" />
                  </node>
                </node>
                <node concept="2ShNRf" id="3KN3A4uWuqG" role="33vP2m">
                  <node concept="Tc6Ow" id="3KN3A4uWonR" role="2ShVmc">
                    <node concept="16syzq" id="3KN3A4uZj1P" role="HW$YZ">
                      <ref role="16sUi3" node="3KN3A4uXOFp" resolve="T" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3KN3A4vyRyq" role="3cqZAp">
              <node concept="3cpWsn" id="3KN3A4vyRyt" role="3cpWs9">
                <property role="TrG5h" value="ns" />
                <node concept="_YKpA" id="QpMEos73K8" role="1tU5fm">
                  <node concept="17QB3L" id="QpMEos73K9" role="_ZDj9" />
                </node>
                <node concept="2ShNRf" id="QpMEos74_b" role="33vP2m">
                  <node concept="Tc6Ow" id="QpMEos74yC" role="2ShVmc">
                    <node concept="17QB3L" id="QpMEos74yD" role="HW$YZ" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="3KN3A4uZBAM" role="3cqZAp">
              <node concept="1PaTwC" id="3KN3A4uZBAN" role="3ndbpf">
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
                <node concept="3clFbJ" id="3KN3A4uWx86" role="3cqZAp">
                  <node concept="3clFbS" id="3KN3A4uWx88" role="3clFbx">
                    <node concept="3cpWs8" id="3KN3A4uZhPx" role="3cqZAp">
                      <node concept="3cpWsn" id="3KN3A4uZhPy" role="3cpWs9">
                        <property role="TrG5h" value="aspect" />
                        <node concept="16syzq" id="3KN3A4uZhLh" role="1tU5fm">
                          <ref role="16sUi3" node="3KN3A4uXOFp" resolve="T" />
                        </node>
                        <node concept="2OqwBi" id="3KN3A4uZhPz" role="33vP2m">
                          <node concept="37vLTw" id="3KN3A4uZhP$" role="2Oq$k0">
                            <ref role="3cqZAo" node="3KN3A4uZbi0" resolve="ad" />
                          </node>
                          <node concept="liA8E" id="3KN3A4uZhP_" role="2OqNvi">
                            <ref role="37wK5l" node="NKt6ynombB" resolve="discover" />
                            <node concept="2OqwBi" id="3KN3A4uZhPA" role="37wK5m">
                              <node concept="37vLTw" id="3KN3A4uZhPB" role="2Oq$k0">
                                <ref role="3cqZAo" node="3KN3A4uWvqt" resolve="v" />
                              </node>
                              <node concept="2OwXpG" id="3KN3A4uZhPC" role="2OqNvi">
                                <ref role="2Oxat5" node="3KN3A4uUwms" resolve="langRtm" />
                              </node>
                            </node>
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
                        <node concept="3clFbF" id="3KN3A4vyS9K" role="3cqZAp">
                          <node concept="2OqwBi" id="QpMEos75sS" role="3clFbG">
                            <node concept="37vLTw" id="3KN3A4vyS9I" role="2Oq$k0">
                              <ref role="3cqZAo" node="3KN3A4vyRyt" resolve="ns" />
                            </node>
                            <node concept="TSZUe" id="QpMEos76v4" role="2OqNvi">
                              <node concept="2OqwBi" id="3KN3A4vyTyt" role="25WWJ7">
                                <node concept="2OqwBi" id="3KN3A4vyT7I" role="2Oq$k0">
                                  <node concept="37vLTw" id="3KN3A4vyT33" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3KN3A4uWvqt" resolve="v" />
                                  </node>
                                  <node concept="2OwXpG" id="3KN3A4vyTmN" role="2OqNvi">
                                    <ref role="2Oxat5" node="3KN3A4uUwms" resolve="langRtm" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="3KN3A4vyTOV" role="2OqNvi">
                                  <ref role="37wK5l" to="vndm:~LanguageRuntime.getNamespace()" resolve="getNamespace" />
                                </node>
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
                  <node concept="3clFbC" id="3KN3A4uWxPZ" role="3clFbw">
                    <node concept="2OqwBi" id="3KN3A4uWyoX" role="3uHU7w">
                      <node concept="37vLTw" id="3KN3A4uWyaq" role="2Oq$k0">
                        <ref role="3cqZAo" node="3KN3A4uWvqt" resolve="v" />
                      </node>
                      <node concept="2OwXpG" id="3KN3A4uWyyp" role="2OqNvi">
                        <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3KN3A4uWx9Q" role="3uHU7B">
                      <ref role="3cqZAo" node="3KN3A4uWl9p" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="3KN3A4uWvqt" role="1Duv9x">
                <property role="TrG5h" value="v" />
                <node concept="3uibUv" id="3KN3A4uWvtm" role="1tU5fm">
                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.Vtx" />
                </node>
              </node>
              <node concept="37vLTw" id="3KN3A4uWwq8" role="1DdaDG">
                <ref role="3cqZAo" node="3KN3A4uUxOe" resolve="sorted" />
              </node>
            </node>
            <node concept="3clFbJ" id="3KN3A4uZkOb" role="3cqZAp">
              <node concept="3clFbS" id="3KN3A4uZkOd" role="3clFbx">
                <node concept="3clFbF" id="3KN3A4uZmqr" role="3cqZAp">
                  <node concept="2OqwBi" id="3KN3A4uZn1Y" role="3clFbG">
                    <node concept="37vLTw" id="3KN3A4uZmqp" role="2Oq$k0">
                      <ref role="3cqZAo" node="3KN3A4uVyes" resolve="result" />
                    </node>
                    <node concept="TSZUe" id="3KN3A4uZnDE" role="2OqNvi">
                      <node concept="2ShNRf" id="3KN3A4uZo6i" role="25WWJ7">
                        <node concept="1pGfFk" id="3KN3A4uZok5" role="2ShVmc">
                          <ref role="37wK5l" node="3KN3A4uXEXp" resolve="AspectClique" />
                          <node concept="37vLTw" id="3KN3A4uZoJe" role="37wK5m">
                            <ref role="3cqZAo" node="3KN3A4uWnnZ" resolve="aspects" />
                          </node>
                          <node concept="37vLTw" id="3KN3A4vyU4k" role="37wK5m">
                            <ref role="3cqZAo" node="3KN3A4vyRyt" resolve="ns" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3KN3A4uZlGF" role="3clFbw">
                <node concept="37vLTw" id="3KN3A4uZkYH" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KN3A4uWnnZ" resolve="aspects" />
                </node>
                <node concept="3GX2aA" id="3KN3A4uZmnp" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3KN3A4uWl9p" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="3KN3A4uWm6D" role="1tU5fm" />
            <node concept="3cmrfG" id="3KN3A4uWma6" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="3KN3A4uWmSM" role="1Dwp0S">
            <node concept="37vLTw" id="3KN3A4uWmWe" role="3uHU7w">
              <ref role="3cqZAo" node="3KN3A4uVeKC" resolve="nextClique" />
            </node>
            <node concept="37vLTw" id="3KN3A4uWmc9" role="3uHU7B">
              <ref role="3cqZAo" node="3KN3A4uWl9p" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="3KN3A4uWnlb" role="1Dwrff">
            <node concept="37vLTw" id="3KN3A4uWnld" role="2$L3a6">
              <ref role="3cqZAo" node="3KN3A4uWl9p" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3KN3A4uVsyP" role="3cqZAp" />
        <node concept="3cpWs6" id="3KN3A4uUxPy" role="3cqZAp">
          <node concept="37vLTw" id="3KN3A4uZpdU" role="3cqZAk">
            <ref role="3cqZAo" node="3KN3A4uVyes" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="3KN3A4uZr8O" role="3clF45">
        <node concept="3uibUv" id="3KN3A4uZtra" role="_ZDj9">
          <ref role="3uigEE" node="3KN3A4uUhmW" resolve="AspectClique" />
          <node concept="16syzq" id="3KN3A4v3XKe" role="11_B2D">
            <ref role="16sUi3" node="3KN3A4uXOFp" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3KN3A4uZv9Z" role="1B3o_S" />
      <node concept="16euLQ" id="3KN3A4uXOFp" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3uibUv" id="3KN3A4uXPAE" role="3ztrMU">
          <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
        </node>
      </node>
      <node concept="P$JXv" id="3KN3A4uY2Ly" role="lGtFl">
        <node concept="TZ5HA" id="3KN3A4uY2Lz" role="TZ5H$">
          <node concept="1dT_AC" id="3KN3A4uY2L$" role="1dT_Ay">
            <property role="1dT_AB" value="Languages here are expected to be directly imported." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KN3A4uYPy1" role="jymVt" />
    <node concept="2YIFZL" id="3KN3A4uYR89" role="jymVt">
      <property role="TrG5h" value="topoSort" />
      <node concept="37vLTG" id="3KN3A4uYTVp" role="3clF46">
        <property role="TrG5h" value="graph" />
        <node concept="3rvAFt" id="3KN3A4uYU45" role="1tU5fm">
          <node concept="3uibUv" id="3KN3A4uYU46" role="3rvQeY">
            <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
          </node>
          <node concept="3uibUv" id="3KN3A4uYU47" role="3rvSg0">
            <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.Vtx" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3KN3A4uYV7S" role="3clF46">
        <property role="TrG5h" value="result" />
        <node concept="2BANLN" id="3KN3A4uYVk2" role="1tU5fm">
          <node concept="3uibUv" id="3KN3A4uYVk3" role="_ZDj9">
            <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.Vtx" />
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="3KN3A4uYToY" role="3clF45" />
      <node concept="3Tm6S6" id="3KN3A4uZIg9" role="1B3o_S" />
      <node concept="3clFbS" id="3KN3A4uYR8d" role="3clF47">
        <node concept="3SKdUt" id="3KN3A4uUxNR" role="3cqZAp">
          <node concept="1PaTwC" id="3KN3A4uUxNS" role="3ndbpf">
            <node concept="3oM_SD" id="3KN3A4uUxNT" role="1PaTwD">
              <property role="3oM_SC" value="depth-first" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uUxNU" role="1PaTwD">
              <property role="3oM_SC" value="search." />
            </node>
            <node concept="3oM_SD" id="3KN3A4uUxNV" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uUxNW" role="1PaTwD">
              <property role="3oM_SC" value="vertex" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uUxNX" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uUxNY" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uUxNZ" role="1PaTwD">
              <property role="3oM_SC" value="visited" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uUxO0" role="1PaTwD">
              <property role="3oM_SC" value="last" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uUxO1" role="1PaTwD">
              <property role="3oM_SC" value="moves" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uUxO2" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uUxO3" role="1PaTwD">
              <property role="3oM_SC" value="front" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uUxO4" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="3KN3A4uUxO5" role="1PaTwD">
              <property role="3oM_SC" value="others" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3KN3A4uYVSa" role="3cqZAp">
          <node concept="3cpWsn" id="3KN3A4uYVSb" role="3cpWs9">
            <property role="TrG5h" value="stack" />
            <node concept="oyxx6" id="3KN3A4uYVSc" role="1tU5fm">
              <node concept="3uibUv" id="3KN3A4uYVSd" role="3O5elw">
                <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="3KN3A4uYVSe" role="33vP2m">
              <node concept="2Jqq0_" id="3KN3A4uYVSf" role="2ShVmc">
                <node concept="3uibUv" id="3KN3A4uYVSg" role="HW$YZ">
                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3KN3A4w1Wxt" role="3cqZAp">
          <node concept="3cpWsn" id="3KN3A4w1Wxw" role="3cpWs9">
            <property role="TrG5h" value="visited" />
            <node concept="2hMVRd" id="3KN3A4w1Wxp" role="1tU5fm">
              <node concept="3uibUv" id="3KN3A4w1WWo" role="2hN53Y">
                <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="3KN3A4w1Xzi" role="33vP2m">
              <node concept="2i4dXS" id="3KN3A4w1Xwj" role="2ShVmc">
                <node concept="3uibUv" id="3KN3A4w1Xwk" role="HW$YZ">
                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3KN3A4uYVSl" role="3cqZAp">
          <node concept="3clFbS" id="3KN3A4uYVSm" role="2LFqv$">
            <node concept="3clFbJ" id="3KN3A4uYVSn" role="3cqZAp">
              <node concept="3fqX7Q" id="3KN3A4w2eHW" role="3clFbw">
                <node concept="2OqwBi" id="3KN3A4w2eHX" role="3fr31v">
                  <node concept="37vLTw" id="3KN3A4w2eHY" role="2Oq$k0">
                    <ref role="3cqZAo" node="3KN3A4w1Wxw" resolve="visited" />
                  </node>
                  <node concept="3JPx81" id="3KN3A4w2eHZ" role="2OqNvi">
                    <node concept="37vLTw" id="3KN3A4w2eI0" role="25WWJ7">
                      <ref role="3cqZAo" node="3KN3A4uYVTy" resolve="vtx" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="3KN3A4w2eI3" role="3clFbx">
                <node concept="3clFbF" id="3KN3A4w24zs" role="3cqZAp">
                  <node concept="2OqwBi" id="3KN3A4w24zt" role="3clFbG">
                    <node concept="37vLTw" id="3KN3A4w24zu" role="2Oq$k0">
                      <ref role="3cqZAo" node="3KN3A4w1Wxw" resolve="visited" />
                    </node>
                    <node concept="TSZUe" id="3KN3A4w24zv" role="2OqNvi">
                      <node concept="37vLTw" id="3KN3A4w24Pd" role="25WWJ7">
                        <ref role="3cqZAo" node="3KN3A4uYVTy" resolve="vtx" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3KN3A4uYVSA" role="3cqZAp">
                  <node concept="2OqwBi" id="3KN3A4uYVSB" role="3clFbG">
                    <node concept="37vLTw" id="3KN3A4uYVSC" role="2Oq$k0">
                      <ref role="3cqZAo" node="3KN3A4uYVSb" resolve="stack" />
                    </node>
                    <node concept="2ArzE6" id="3KN3A4uYVSD" role="2OqNvi">
                      <node concept="37vLTw" id="3KN3A4uYVSE" role="25WWJ7">
                        <ref role="3cqZAo" node="3KN3A4uYVTy" resolve="vtx" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3KN3A4uYVSF" role="3cqZAp" />
                <node concept="2$JKZl" id="3KN3A4uYVSG" role="3cqZAp">
                  <node concept="3clFbS" id="3KN3A4uYVSH" role="2LFqv$">
                    <node concept="3cpWs8" id="3KN3A4uYVSI" role="3cqZAp">
                      <node concept="3cpWsn" id="3KN3A4uYVSJ" role="3cpWs9">
                        <property role="TrG5h" value="v" />
                        <node concept="3uibUv" id="3KN3A4uYVSK" role="1tU5fm">
                          <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.Vtx" />
                        </node>
                        <node concept="2OqwBi" id="3KN3A4uYVSL" role="33vP2m">
                          <node concept="37vLTw" id="3KN3A4uYVSM" role="2Oq$k0">
                            <ref role="3cqZAo" node="3KN3A4uYVSb" resolve="stack" />
                          </node>
                          <node concept="2oR75g" id="3KN3A4uYVSN" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="1DcWWT" id="3KN3A4uYVSO" role="3cqZAp">
                      <node concept="3clFbS" id="3KN3A4uYVSP" role="2LFqv$">
                        <node concept="3clFbJ" id="3KN3A4uYVSQ" role="3cqZAp">
                          <node concept="3clFbS" id="3KN3A4uYVSR" role="3clFbx">
                            <node concept="3clFbF" id="3KN3A4w20u0" role="3cqZAp">
                              <node concept="2OqwBi" id="3KN3A4w20XO" role="3clFbG">
                                <node concept="37vLTw" id="3KN3A4w20tY" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3KN3A4w1Wxw" resolve="visited" />
                                </node>
                                <node concept="TSZUe" id="3KN3A4w21xn" role="2OqNvi">
                                  <node concept="37vLTw" id="3KN3A4w22gI" role="25WWJ7">
                                    <ref role="3cqZAo" node="3KN3A4uYVTa" resolve="vext" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="3KN3A4uYVT0" role="3cqZAp">
                              <node concept="2OqwBi" id="3KN3A4uYVT1" role="3clFbG">
                                <node concept="37vLTw" id="3KN3A4uYVT2" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3KN3A4uYVSb" resolve="stack" />
                                </node>
                                <node concept="2ArzE6" id="3KN3A4uYVT3" role="2OqNvi">
                                  <node concept="37vLTw" id="3KN3A4uYVT4" role="25WWJ7">
                                    <ref role="3cqZAo" node="3KN3A4uYVTa" resolve="vext" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="3KN3A4w209S" role="3clFbw">
                            <node concept="2OqwBi" id="3KN3A4w209U" role="3fr31v">
                              <node concept="37vLTw" id="3KN3A4w209V" role="2Oq$k0">
                                <ref role="3cqZAo" node="3KN3A4w1Wxw" resolve="visited" />
                              </node>
                              <node concept="3JPx81" id="3KN3A4w209W" role="2OqNvi">
                                <node concept="37vLTw" id="3KN3A4w209X" role="25WWJ7">
                                  <ref role="3cqZAo" node="3KN3A4uYVTa" resolve="vext" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWsn" id="3KN3A4uYVTa" role="1Duv9x">
                        <property role="TrG5h" value="vext" />
                        <node concept="3uibUv" id="3KN3A4uYVTb" role="1tU5fm">
                          <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.Vtx" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3KN3A4uYVTc" role="1DdaDG">
                        <node concept="37vLTw" id="3KN3A4uYVTd" role="2Oq$k0">
                          <ref role="3cqZAo" node="3KN3A4uYVSJ" resolve="v" />
                        </node>
                        <node concept="2OwXpG" id="3KN3A4uYVTe" role="2OqNvi">
                          <ref role="2Oxat5" node="3KN3A4uUwmv" resolve="extends_" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="3KN3A4uYVTf" role="3cqZAp">
                      <node concept="3clFbS" id="3KN3A4uYVTg" role="3clFbx">
                        <node concept="3clFbF" id="3KN3A4uYVTh" role="3cqZAp">
                          <node concept="2OqwBi" id="3KN3A4uYVTi" role="3clFbG">
                            <node concept="37vLTw" id="3KN3A4uYXMN" role="2Oq$k0">
                              <ref role="3cqZAo" node="3KN3A4uYV7S" resolve="result" />
                            </node>
                            <node concept="2Ke4WJ" id="3KN3A4uYVTk" role="2OqNvi">
                              <node concept="37vLTw" id="3KN3A4uYVTl" role="25WWJ7">
                                <ref role="3cqZAo" node="3KN3A4uYVSJ" resolve="v" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="3KN3A4uYVTm" role="3cqZAp">
                          <node concept="2OqwBi" id="3KN3A4uYVTn" role="3clFbG">
                            <node concept="37vLTw" id="3KN3A4uYVTo" role="2Oq$k0">
                              <ref role="3cqZAo" node="3KN3A4uYVSb" resolve="stack" />
                            </node>
                            <node concept="2AryhJ" id="3KN3A4uYVTp" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="3KN3A4uYVTq" role="3clFbw">
                        <node concept="37vLTw" id="3KN3A4uYVTr" role="3uHU7w">
                          <ref role="3cqZAo" node="3KN3A4uYVSJ" resolve="v" />
                        </node>
                        <node concept="2OqwBi" id="3KN3A4uYVTs" role="3uHU7B">
                          <node concept="37vLTw" id="3KN3A4uYVTt" role="2Oq$k0">
                            <ref role="3cqZAo" node="3KN3A4uYVSb" resolve="stack" />
                          </node>
                          <node concept="2oR75g" id="3KN3A4uYVTu" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3KN3A4uYVTv" role="2$JKZa">
                    <node concept="37vLTw" id="3KN3A4uYVTw" role="2Oq$k0">
                      <ref role="3cqZAo" node="3KN3A4uYVSb" resolve="stack" />
                    </node>
                    <node concept="3GX2aA" id="3KN3A4uYVTx" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3KN3A4uYVTy" role="1Duv9x">
            <property role="TrG5h" value="vtx" />
            <node concept="3uibUv" id="3KN3A4uYVTz" role="1tU5fm">
              <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.Vtx" />
            </node>
          </node>
          <node concept="2OqwBi" id="3KN3A4uYVT$" role="1DdaDG">
            <node concept="37vLTw" id="3KN3A4uYVT_" role="2Oq$k0">
              <ref role="3cqZAo" node="3KN3A4uYTVp" resolve="graph" />
            </node>
            <node concept="T8wYR" id="3KN3A4uYVTA" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="3KN3A4w1SVP" role="3cqZAp" />
        <node concept="3SKdUt" id="3KN3A4w2e3F" role="3cqZAp">
          <node concept="1PaTwC" id="3KN3A4w2e3G" role="3ndbpf">
            <node concept="3oM_SD" id="3KN3A4w2ew2" role="1PaTwD">
              <property role="3oM_SC" value="second" />
            </node>
            <node concept="3oM_SD" id="3KN3A4w2ewc" role="1PaTwD">
              <property role="3oM_SC" value="depth-first" />
            </node>
            <node concept="3oM_SD" id="3KN3A4w2exl" role="1PaTwD">
              <property role="3oM_SC" value="search," />
            </node>
            <node concept="3oM_SD" id="3KN3A4w2eyv" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="3KN3A4w2eyZ" role="1PaTwD">
              <property role="3oM_SC" value="time" />
            </node>
            <node concept="3oM_SD" id="3KN3A4w2ezZ" role="1PaTwD">
              <property role="3oM_SC" value="going" />
            </node>
            <node concept="3oM_SD" id="3KN3A4w2e_c" role="1PaTwD">
              <property role="3oM_SC" value="through" />
            </node>
            <node concept="3oM_SD" id="3KN3A4w2eAq" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="3KN3A4w2eAN" role="1PaTwD">
              <property role="3oM_SC" value="sorted" />
            </node>
            <node concept="3oM_SD" id="3KN3A4w2eBo" role="1PaTwD">
              <property role="3oM_SC" value="list" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3KN3A4uYVSh" role="3cqZAp">
          <node concept="3cpWsn" id="3KN3A4uYVSi" role="3cpWs9">
            <property role="TrG5h" value="nextClique" />
            <node concept="10Oyi0" id="3KN3A4uYVSj" role="1tU5fm" />
            <node concept="3cmrfG" id="3KN3A4uYVSk" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="3KN3A4w264C" role="3cqZAp">
          <node concept="3clFbS" id="3KN3A4w264F" role="2LFqv$">
            <node concept="3clFbJ" id="3KN3A4w29ER" role="3cqZAp">
              <node concept="3clFbS" id="3KN3A4w29ET" role="3clFbx">
                <node concept="3clFbF" id="3KN3A4w2m0k" role="3cqZAp">
                  <node concept="2OqwBi" id="3KN3A4w2m0l" role="3clFbG">
                    <node concept="37vLTw" id="3KN3A4w2m0m" role="2Oq$k0">
                      <ref role="3cqZAo" node="3KN3A4uYVSb" resolve="stack" />
                    </node>
                    <node concept="2ArzE6" id="3KN3A4w2m0n" role="2OqNvi">
                      <node concept="37vLTw" id="3KN3A4w2m0o" role="25WWJ7">
                        <ref role="3cqZAo" node="3KN3A4w264G" resolve="vtx" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3KN3A4w2m0p" role="3cqZAp" />
                <node concept="2$JKZl" id="3KN3A4w2m0q" role="3cqZAp">
                  <node concept="3clFbS" id="3KN3A4w2m0r" role="2LFqv$">
                    <node concept="3cpWs8" id="3KN3A4w2m0s" role="3cqZAp">
                      <node concept="3cpWsn" id="3KN3A4w2m0t" role="3cpWs9">
                        <property role="TrG5h" value="v" />
                        <node concept="3uibUv" id="3KN3A4w2m0u" role="1tU5fm">
                          <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.Vtx" />
                        </node>
                        <node concept="2OqwBi" id="3KN3A4w2m0v" role="33vP2m">
                          <node concept="37vLTw" id="3KN3A4w2m0w" role="2Oq$k0">
                            <ref role="3cqZAo" node="3KN3A4uYVSb" resolve="stack" />
                          </node>
                          <node concept="2oR75g" id="3KN3A4w2m0x" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="QpMEos4Sui" role="3cqZAp">
                      <node concept="3clFbS" id="QpMEos4Suk" role="3clFbx">
                        <node concept="1DcWWT" id="3KN3A4w2m0y" role="3cqZAp">
                          <node concept="3clFbS" id="3KN3A4w2m0z" role="2LFqv$">
                            <node concept="3clFbJ" id="3KN3A4w2nSC" role="3cqZAp">
                              <node concept="3clFbS" id="3KN3A4w2nSE" role="3clFbx">
                                <node concept="3clFbF" id="3KN3A4w3SB6" role="3cqZAp">
                                  <node concept="37vLTI" id="3KN3A4w3TCS" role="3clFbG">
                                    <node concept="2OqwBi" id="3KN3A4w3SFn" role="37vLTJ">
                                      <node concept="37vLTw" id="3KN3A4w3SB4" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3KN3A4w2m0t" resolve="v" />
                                      </node>
                                      <node concept="2OwXpG" id="3KN3A4w3SOm" role="2OqNvi">
                                        <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="3KN3A4w3Uel" role="37vLTx">
                                      <node concept="37vLTw" id="3KN3A4w3U7U" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3KN3A4w2m0P" resolve="vsub" />
                                      </node>
                                      <node concept="2OwXpG" id="3KN3A4w3UgJ" role="2OqNvi">
                                        <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="QpMEos4XWT" role="3cqZAp" />
                              </node>
                              <node concept="2d3UOw" id="3KN3A4w3Sug" role="3clFbw">
                                <node concept="2OqwBi" id="3KN3A4w2o6S" role="3uHU7B">
                                  <node concept="37vLTw" id="3KN3A4w2nWB" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3KN3A4w2m0P" resolve="vsub" />
                                  </node>
                                  <node concept="2OwXpG" id="3KN3A4w2og1" role="2OqNvi">
                                    <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                                  </node>
                                </node>
                                <node concept="3cmrfG" id="3KN3A4w2pxd" role="3uHU7w">
                                  <property role="3cmrfH" value="0" />
                                </node>
                              </node>
                              <node concept="9aQIb" id="3KN3A4w3UEJ" role="9aQIa">
                                <node concept="3clFbS" id="3KN3A4w3UEK" role="9aQI4">
                                  <node concept="3clFbF" id="3KN3A4w2m0F" role="3cqZAp">
                                    <node concept="2OqwBi" id="3KN3A4w2m0G" role="3clFbG">
                                      <node concept="37vLTw" id="3KN3A4w2m0H" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3KN3A4uYVSb" resolve="stack" />
                                      </node>
                                      <node concept="2ArzE6" id="3KN3A4w2m0I" role="2OqNvi">
                                        <node concept="37vLTw" id="3KN3A4w2m0J" role="25WWJ7">
                                          <ref role="3cqZAo" node="3KN3A4w2m0P" resolve="vsub" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWsn" id="3KN3A4w2m0P" role="1Duv9x">
                            <property role="TrG5h" value="vsub" />
                            <node concept="3uibUv" id="3KN3A4w2m0Q" role="1tU5fm">
                              <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.Vtx" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="3KN3A4w2m0R" role="1DdaDG">
                            <node concept="37vLTw" id="3KN3A4w2m0S" role="2Oq$k0">
                              <ref role="3cqZAo" node="3KN3A4w2m0t" resolve="v" />
                            </node>
                            <node concept="2OwXpG" id="3KN3A4w3QNH" role="2OqNvi">
                              <ref role="2Oxat5" node="3KN3A4w3GWQ" resolve="extendedBy" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3eOVzh" id="QpMEos4UL8" role="3clFbw">
                        <node concept="3cmrfG" id="QpMEos4V6H" role="3uHU7w">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="2OqwBi" id="QpMEos4SEF" role="3uHU7B">
                          <node concept="37vLTw" id="QpMEos4S_3" role="2Oq$k0">
                            <ref role="3cqZAo" node="3KN3A4w2m0t" resolve="v" />
                          </node>
                          <node concept="2OwXpG" id="QpMEos4U3S" role="2OqNvi">
                            <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="QpMEos4Y4p" role="3cqZAp" />
                    <node concept="3clFbJ" id="3KN3A4w2m0U" role="3cqZAp">
                      <node concept="3clFbS" id="3KN3A4w2m0V" role="3clFbx">
                        <node concept="3clFbF" id="3KN3A4w2m11" role="3cqZAp">
                          <node concept="2OqwBi" id="3KN3A4w2m12" role="3clFbG">
                            <node concept="37vLTw" id="3KN3A4w2m13" role="2Oq$k0">
                              <ref role="3cqZAo" node="3KN3A4uYVSb" resolve="stack" />
                            </node>
                            <node concept="2AryhJ" id="3KN3A4w2m14" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="3KN3A4w2m15" role="3clFbw">
                        <node concept="37vLTw" id="3KN3A4w2m16" role="3uHU7w">
                          <ref role="3cqZAo" node="3KN3A4w2m0t" resolve="v" />
                        </node>
                        <node concept="2OqwBi" id="3KN3A4w2m17" role="3uHU7B">
                          <node concept="37vLTw" id="3KN3A4w2m18" role="2Oq$k0">
                            <ref role="3cqZAo" node="3KN3A4uYVSb" resolve="stack" />
                          </node>
                          <node concept="2oR75g" id="3KN3A4w2m19" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3KN3A4w2m1a" role="2$JKZa">
                    <node concept="37vLTw" id="3KN3A4w2m1b" role="2Oq$k0">
                      <ref role="3cqZAo" node="3KN3A4uYVSb" resolve="stack" />
                    </node>
                    <node concept="3GX2aA" id="3KN3A4w2m1c" role="2OqNvi" />
                  </node>
                </node>
                <node concept="3clFbH" id="3KN3A4w3Vam" role="3cqZAp" />
                <node concept="3clFbJ" id="3KN3A4w3Vih" role="3cqZAp">
                  <node concept="3clFbS" id="3KN3A4w3Vij" role="3clFbx">
                    <node concept="3clFbF" id="3KN3A4w3WHm" role="3cqZAp">
                      <node concept="37vLTI" id="3KN3A4w3XF0" role="3clFbG">
                        <node concept="3uNrnE" id="3KN3A4w3XSq" role="37vLTx">
                          <node concept="37vLTw" id="3KN3A4w3XSs" role="2$L3a6">
                            <ref role="3cqZAo" node="3KN3A4uYVSi" resolve="nextClique" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="3KN3A4w3WO8" role="37vLTJ">
                          <node concept="37vLTw" id="3KN3A4w3WHk" role="2Oq$k0">
                            <ref role="3cqZAo" node="3KN3A4w264G" resolve="vtx" />
                          </node>
                          <node concept="2OwXpG" id="3KN3A4w3WV4" role="2OqNvi">
                            <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eOVzh" id="3KN3A4w3WvC" role="3clFbw">
                    <node concept="3cmrfG" id="3KN3A4w3WEg" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="3KN3A4w3VvN" role="3uHU7B">
                      <node concept="37vLTw" id="3KN3A4w3VnF" role="2Oq$k0">
                        <ref role="3cqZAo" node="3KN3A4w264G" resolve="vtx" />
                      </node>
                      <node concept="2OwXpG" id="3KN3A4w3VF6" role="2OqNvi">
                        <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eOVzh" id="3KN3A4w2b9l" role="3clFbw">
                <node concept="3cmrfG" id="3KN3A4w2bbR" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="3KN3A4w29Qr" role="3uHU7B">
                  <node concept="37vLTw" id="3KN3A4w29Ij" role="2Oq$k0">
                    <ref role="3cqZAo" node="3KN3A4w264G" resolve="vtx" />
                  </node>
                  <node concept="2OwXpG" id="3KN3A4w2b3M" role="2OqNvi">
                    <ref role="2Oxat5" node="3KN3A4uVa13" resolve="clique" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3KN3A4w264G" role="1Duv9x">
            <property role="TrG5h" value="vtx" />
            <node concept="3uibUv" id="3KN3A4w264K" role="1tU5fm">
              <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.Vtx" />
            </node>
          </node>
          <node concept="37vLTw" id="3KN3A4w264L" role="1DdaDG">
            <ref role="3cqZAo" node="3KN3A4uYV7S" resolve="result" />
          </node>
        </node>
        <node concept="3clFbH" id="QpMEos9BpH" role="3cqZAp" />
        <node concept="3cpWs6" id="3KN3A4uYYdb" role="3cqZAp">
          <node concept="37vLTw" id="3KN3A4uYYGL" role="3cqZAk">
            <ref role="3cqZAo" node="3KN3A4uYVSi" resolve="nextClique" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KN3A4uYPJe" role="jymVt" />
    <node concept="2YIFZL" id="3KN3A4uV3rF" role="jymVt">
      <property role="TrG5h" value="addToGraph" />
      <node concept="3clFbS" id="3KN3A4uUxNp" role="3clF47">
        <node concept="3clFbJ" id="3KN3A4w4Ohr" role="3cqZAp">
          <node concept="3fqX7Q" id="QpMEos4OQV" role="3clFbw">
            <node concept="2OqwBi" id="QpMEos4OQW" role="3fr31v">
              <node concept="37vLTw" id="QpMEos4OQX" role="2Oq$k0">
                <ref role="3cqZAo" node="3KN3A4uUxNj" resolve="graph" />
              </node>
              <node concept="2Nt0df" id="QpMEos4OQY" role="2OqNvi">
                <node concept="37vLTw" id="QpMEos4OQZ" role="38cxEo">
                  <ref role="3cqZAo" node="3KN3A4uUxNh" resolve="lr" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3KN3A4w4Oht" role="3clFbx">
            <node concept="3cpWs8" id="3KN3A4uUxNq" role="3cqZAp">
              <node concept="3cpWsn" id="3KN3A4uUxNr" role="3cpWs9">
                <property role="TrG5h" value="vtx" />
                <node concept="3uibUv" id="3KN3A4uUBAj" role="1tU5fm">
                  <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.Vtx" />
                </node>
                <node concept="2ShNRf" id="3KN3A4uUxNt" role="33vP2m">
                  <node concept="1pGfFk" id="3KN3A4uUxNu" role="2ShVmc">
                    <ref role="37wK5l" node="3KN3A4uUwlm" resolve="AspectClique.Vtx" />
                    <node concept="37vLTw" id="3KN3A4uUxNv" role="37wK5m">
                      <ref role="3cqZAo" node="3KN3A4uUxNh" resolve="lr" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3KN3A4uUxNw" role="3cqZAp">
              <node concept="37vLTI" id="3KN3A4uUxNx" role="3clFbG">
                <node concept="3EllGN" id="3KN3A4uUxNy" role="37vLTJ">
                  <node concept="37vLTw" id="3KN3A4uUxNz" role="3ElVtu">
                    <ref role="3cqZAo" node="3KN3A4uUxNh" resolve="lr" />
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
            <node concept="3clFbF" id="3KN3A4uUxNA" role="3cqZAp">
              <node concept="2OqwBi" id="3KN3A4uUxNB" role="3clFbG">
                <node concept="37vLTw" id="3KN3A4uUxNC" role="2Oq$k0">
                  <ref role="3cqZAo" node="3KN3A4uUxNr" resolve="vtx" />
                </node>
                <node concept="liA8E" id="3KN3A4uUxND" role="2OqNvi">
                  <ref role="37wK5l" node="3KN3A4uUwly" resolve="update" />
                  <node concept="37vLTw" id="3KN3A4uUxNE" role="37wK5m">
                    <ref role="3cqZAo" node="3KN3A4uUxNj" resolve="graph" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3KN3A4uUxNh" role="3clF46">
        <property role="TrG5h" value="lr" />
        <node concept="3uibUv" id="3KN3A4uUxNi" role="1tU5fm">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="37vLTG" id="3KN3A4uUxNj" role="3clF46">
        <property role="TrG5h" value="graph" />
        <node concept="3rvAFt" id="3KN3A4uUxNk" role="1tU5fm">
          <node concept="3uibUv" id="3KN3A4uUxNl" role="3rvQeY">
            <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
          </node>
          <node concept="3uibUv" id="3KN3A4uUBo1" role="3rvSg0">
            <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.Vtx" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="QpMEos4OgU" role="3clF45" />
      <node concept="3Tm6S6" id="3KN3A4uUxNo" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3KN3A4uUxNH" role="jymVt" />
    <node concept="312cEu" id="3KN3A4uUwll" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Vtx" />
      <node concept="3clFbW" id="3KN3A4uUwlm" role="jymVt">
        <node concept="37vLTG" id="3KN3A4uUwln" role="3clF46">
          <property role="TrG5h" value="langDesc" />
          <node concept="3uibUv" id="3KN3A4uUwlo" role="1tU5fm">
            <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
          </node>
        </node>
        <node concept="3cqZAl" id="3KN3A4uUwlp" role="3clF45" />
        <node concept="3Tm1VV" id="3KN3A4uUwlq" role="1B3o_S" />
        <node concept="3clFbS" id="3KN3A4uUwlr" role="3clF47">
          <node concept="3clFbF" id="3KN3A4uUwls" role="3cqZAp">
            <node concept="37vLTI" id="3KN3A4uUwlt" role="3clFbG">
              <node concept="37vLTw" id="3KN3A4uUwlu" role="37vLTx">
                <ref role="3cqZAo" node="3KN3A4uUwln" resolve="langDesc" />
              </node>
              <node concept="2OqwBi" id="3KN3A4uUwlv" role="37vLTJ">
                <node concept="Xjq3P" id="3KN3A4uUwlw" role="2Oq$k0" />
                <node concept="2OwXpG" id="3KN3A4uUwlx" role="2OqNvi">
                  <ref role="2Oxat5" node="3KN3A4uUwms" resolve="langRtm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="3KN3A4uUwly" role="jymVt">
        <property role="TrG5h" value="update" />
        <node concept="37vLTG" id="3KN3A4uUwlz" role="3clF46">
          <property role="TrG5h" value="graph" />
          <node concept="3rvAFt" id="3KN3A4uUwl$" role="1tU5fm">
            <node concept="3uibUv" id="3KN3A4uUwl_" role="3rvQeY">
              <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
            </node>
            <node concept="3uibUv" id="3KN3A4uUwlA" role="3rvSg0">
              <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.Vtx" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="3KN3A4uUwlB" role="3clF45" />
        <node concept="3Tm1VV" id="3KN3A4uUwlC" role="1B3o_S" />
        <node concept="3clFbS" id="3KN3A4uUwlD" role="3clF47">
          <node concept="3SKdUt" id="3KN3A4uUwlE" role="3cqZAp">
            <node concept="1PaTwC" id="3KN3A4uUwlF" role="3ndbpf">
              <node concept="3oM_SD" id="3KN3A4uUwlG" role="1PaTwD">
                <property role="3oM_SC" value="update" />
              </node>
              <node concept="3oM_SD" id="3KN3A4uUwlH" role="1PaTwD">
                <property role="3oM_SC" value="the" />
              </node>
              <node concept="3oM_SD" id="3KN3A4uUwlI" role="1PaTwD">
                <property role="3oM_SC" value="graph" />
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="3KN3A4uUwlJ" role="3cqZAp">
            <node concept="3clFbS" id="3KN3A4uUwlK" role="2LFqv$">
              <node concept="3clFbJ" id="3KN3A4uUwlL" role="3cqZAp">
                <node concept="2OqwBi" id="3KN3A4uUwlM" role="3clFbw">
                  <node concept="37vLTw" id="3KN3A4uUwlN" role="2Oq$k0">
                    <ref role="3cqZAo" node="3KN3A4uUwlz" resolve="graph" />
                  </node>
                  <node concept="2Nt0df" id="3KN3A4uUwlO" role="2OqNvi">
                    <node concept="37vLTw" id="3KN3A4uUwlP" role="38cxEo">
                      <ref role="3cqZAo" node="3KN3A4uUwm0" resolve="extends_" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="3KN3A4uUwlQ" role="3clFbx">
                  <node concept="3clFbF" id="3KN3A4uUwlR" role="3cqZAp">
                    <node concept="2OqwBi" id="3KN3A4uUwlS" role="3clFbG">
                      <node concept="2OqwBi" id="3KN3A4uUwlT" role="2Oq$k0">
                        <node concept="Xjq3P" id="3KN3A4uUwlU" role="2Oq$k0" />
                        <node concept="2OwXpG" id="3KN3A4uUwlV" role="2OqNvi">
                          <ref role="2Oxat5" node="3KN3A4uUwmv" resolve="extends_" />
                        </node>
                      </node>
                      <node concept="TSZUe" id="3KN3A4uUwlW" role="2OqNvi">
                        <node concept="3EllGN" id="3KN3A4uUwlX" role="25WWJ7">
                          <node concept="37vLTw" id="3KN3A4uUwlY" role="3ElVtu">
                            <ref role="3cqZAo" node="3KN3A4uUwm0" resolve="extends_" />
                          </node>
                          <node concept="37vLTw" id="3KN3A4uUwlZ" role="3ElQJh">
                            <ref role="3cqZAo" node="3KN3A4uUwlz" resolve="graph" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3KN3A4w3MdD" role="3cqZAp">
                    <node concept="2OqwBi" id="3KN3A4w3NiI" role="3clFbG">
                      <node concept="2OqwBi" id="3KN3A4w3MvN" role="2Oq$k0">
                        <node concept="3EllGN" id="3KN3A4w3MdF" role="2Oq$k0">
                          <node concept="37vLTw" id="3KN3A4w3MdG" role="3ElVtu">
                            <ref role="3cqZAo" node="3KN3A4uUwm0" resolve="extends_" />
                          </node>
                          <node concept="37vLTw" id="3KN3A4w3MdH" role="3ElQJh">
                            <ref role="3cqZAo" node="3KN3A4uUwlz" resolve="graph" />
                          </node>
                        </node>
                        <node concept="2OwXpG" id="3KN3A4w3MGs" role="2OqNvi">
                          <ref role="2Oxat5" node="3KN3A4w3GWQ" resolve="extendedBy" />
                        </node>
                      </node>
                      <node concept="TSZUe" id="3KN3A4w3O87" role="2OqNvi">
                        <node concept="Xjq3P" id="3KN3A4w3OdK" role="25WWJ7" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="3KN3A4uUwm0" role="1Duv9x">
              <property role="TrG5h" value="extends_" />
              <node concept="3uibUv" id="3KN3A4uUwm1" role="1tU5fm">
                <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
              </node>
            </node>
            <node concept="2OqwBi" id="3KN3A4uUwm2" role="1DdaDG">
              <node concept="37vLTw" id="3KN3A4uUwm3" role="2Oq$k0">
                <ref role="3cqZAo" node="3KN3A4uUwms" resolve="langRtm" />
              </node>
              <node concept="liA8E" id="3KN3A4uUwm4" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~LanguageRuntime.getExtendedLanguages()" resolve="getExtendedLanguages" />
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="3KN3A4uUwm5" role="3cqZAp">
            <node concept="3clFbS" id="3KN3A4uUwm6" role="2LFqv$">
              <node concept="3clFbJ" id="3KN3A4uUwm7" role="3cqZAp">
                <node concept="2OqwBi" id="3KN3A4uUwm8" role="3clFbw">
                  <node concept="37vLTw" id="3KN3A4uUwm9" role="2Oq$k0">
                    <ref role="3cqZAo" node="3KN3A4uUwlz" resolve="graph" />
                  </node>
                  <node concept="2Nt0df" id="3KN3A4uUwma" role="2OqNvi">
                    <node concept="37vLTw" id="3KN3A4uUwmb" role="38cxEo">
                      <ref role="3cqZAo" node="3KN3A4uUwmm" resolve="extendedBy" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="3KN3A4uUwmc" role="3clFbx">
                  <node concept="3clFbF" id="3KN3A4uUwmd" role="3cqZAp">
                    <node concept="2OqwBi" id="3KN3A4uUwme" role="3clFbG">
                      <node concept="2OqwBi" id="3KN3A4uUwmf" role="2Oq$k0">
                        <node concept="3EllGN" id="3KN3A4uUwmg" role="2Oq$k0">
                          <node concept="37vLTw" id="3KN3A4uUwmh" role="3ElVtu">
                            <ref role="3cqZAo" node="3KN3A4uUwmm" resolve="extendedBy" />
                          </node>
                          <node concept="37vLTw" id="3KN3A4uUwmi" role="3ElQJh">
                            <ref role="3cqZAo" node="3KN3A4uUwlz" resolve="graph" />
                          </node>
                        </node>
                        <node concept="2OwXpG" id="3KN3A4uUwmj" role="2OqNvi">
                          <ref role="2Oxat5" node="3KN3A4uUwmv" resolve="extends_" />
                        </node>
                      </node>
                      <node concept="TSZUe" id="3KN3A4uUwmk" role="2OqNvi">
                        <node concept="Xjq3P" id="3KN3A4uUwml" role="25WWJ7" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3KN3A4w3Oq2" role="3cqZAp">
                    <node concept="2OqwBi" id="3KN3A4w3Pra" role="3clFbG">
                      <node concept="2OqwBi" id="3KN3A4w3OCt" role="2Oq$k0">
                        <node concept="Xjq3P" id="3KN3A4w3Oq0" role="2Oq$k0" />
                        <node concept="2OwXpG" id="3KN3A4w3OJP" role="2OqNvi">
                          <ref role="2Oxat5" node="3KN3A4w3GWQ" resolve="extendedBy" />
                        </node>
                      </node>
                      <node concept="TSZUe" id="3KN3A4w3Q7P" role="2OqNvi">
                        <node concept="3EllGN" id="3KN3A4w3QaJ" role="25WWJ7">
                          <node concept="37vLTw" id="3KN3A4w3QaK" role="3ElVtu">
                            <ref role="3cqZAo" node="3KN3A4uUwmm" resolve="extendedBy" />
                          </node>
                          <node concept="37vLTw" id="3KN3A4w3QaL" role="3ElQJh">
                            <ref role="3cqZAo" node="3KN3A4uUwlz" resolve="graph" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="3KN3A4uUwmm" role="1Duv9x">
              <property role="TrG5h" value="extendedBy" />
              <node concept="3uibUv" id="3KN3A4uUwmn" role="1tU5fm">
                <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
              </node>
            </node>
            <node concept="2OqwBi" id="3KN3A4uUwmo" role="1DdaDG">
              <node concept="37vLTw" id="3KN3A4uUwmp" role="2Oq$k0">
                <ref role="3cqZAo" node="3KN3A4uUwms" resolve="langRtm" />
              </node>
              <node concept="liA8E" id="3KN3A4uUwmq" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~LanguageRuntime.getExtendingLanguages()" resolve="getExtendingLanguages" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="QpMEos5KyH" role="jymVt" />
      <node concept="312cEg" id="3KN3A4uUwms" role="jymVt">
        <property role="TrG5h" value="langRtm" />
        <node concept="3Tm6S6" id="3KN3A4uUwmt" role="1B3o_S" />
        <node concept="3uibUv" id="3KN3A4uUwmu" role="1tU5fm">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="312cEg" id="3KN3A4uUwmv" role="jymVt">
        <property role="TrG5h" value="extends_" />
        <node concept="3Tm6S6" id="3KN3A4uUwmw" role="1B3o_S" />
        <node concept="_YKpA" id="QpMEos9BvX" role="1tU5fm">
          <node concept="3uibUv" id="QpMEos9BvZ" role="_ZDj9">
            <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.Vtx" />
          </node>
        </node>
        <node concept="2ShNRf" id="3KN3A4uUwmz" role="33vP2m">
          <node concept="Tc6Ow" id="QpMEos9ESI" role="2ShVmc">
            <node concept="3uibUv" id="QpMEos9ESK" role="HW$YZ">
              <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.Vtx" />
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="3KN3A4w3GWQ" role="jymVt">
        <property role="TrG5h" value="extendedBy" />
        <node concept="3Tm6S6" id="3KN3A4w3GWR" role="1B3o_S" />
        <node concept="_YKpA" id="QpMEos9Goc" role="1tU5fm">
          <node concept="3uibUv" id="QpMEos9Goe" role="_ZDj9">
            <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.Vtx" />
          </node>
        </node>
        <node concept="2ShNRf" id="3KN3A4w3GWU" role="33vP2m">
          <node concept="Tc6Ow" id="QpMEos9HtF" role="2ShVmc">
            <node concept="3uibUv" id="QpMEos9HtH" role="HW$YZ">
              <ref role="3uigEE" node="3KN3A4uUwll" resolve="AspectClique.Vtx" />
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
    <node concept="2tJIrI" id="3KN3A4uUwkP" role="jymVt" />
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
        <node concept="16syzq" id="3KN3A4uXGOt" role="_ZDj9">
          <ref role="16sUi3" node="3KN3A4uUhop" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3KN3A4vyV7j" role="jymVt">
      <property role="TrG5h" value="namespaces" />
      <node concept="3Tm6S6" id="3KN3A4vyV7k" role="1B3o_S" />
      <node concept="_YKpA" id="QpMEos6aLT" role="1tU5fm">
        <node concept="17QB3L" id="QpMEos6aLU" role="_ZDj9" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="3KN3A4uUig2">
    <property role="TrG5h" value="SidekickDetectable" />
    <node concept="2tJIrI" id="3KN3A4uUiic" role="jymVt" />
    <node concept="3clFb_" id="3KN3A4uUiiC" role="jymVt">
      <property role="TrG5h" value="isSidekick" />
      <node concept="37vLTG" id="3KN3A4uUj7j" role="3clF46">
        <property role="TrG5h" value="sidekick" />
        <node concept="3uibUv" id="3KN3A4uUj7k" role="1tU5fm">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="37vLTG" id="3KN3A4uUj7l" role="3clF46">
        <property role="TrG5h" value="authority" />
        <node concept="3uibUv" id="3KN3A4uUj7m" role="1tU5fm">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="10P_77" id="3KN3A4uUijs" role="3clF45" />
      <node concept="3Tm1VV" id="3KN3A4uUiiF" role="1B3o_S" />
      <node concept="3clFbS" id="3KN3A4uUiiG" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="3KN3A4uUiih" role="jymVt" />
    <node concept="3Tm1VV" id="3KN3A4uUig3" role="1B3o_S" />
    <node concept="3UR2Jj" id="3KN3A4uUjb1" role="lGtFl">
      <node concept="TZ5HA" id="3KN3A4uUjb2" role="TZ5H$">
        <node concept="1dT_AC" id="3KN3A4uUjb3" role="1dT_Ay">
          <property role="1dT_AB" value="A &quot;sidekick&quot; is a language that contributes some aspect(s) to the &quot;authority&quot; language. " />
        </node>
      </node>
    </node>
  </node>
</model>

