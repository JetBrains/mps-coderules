<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2cc226a9-8a78-4010-b962-823343fd28ff(jetbrains.mps.lang.coderules.aspect)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="15" />
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
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
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
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
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
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
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
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="3358009230509553641" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListType" flags="in" index="2BANLN" />
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1227022159410" name="jetbrains.mps.baseLanguage.collections.structure.AddFirstElementOperation" flags="nn" index="2Ke4WJ" />
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1237909114519" name="jetbrains.mps.baseLanguage.collections.structure.GetValuesOperation" flags="nn" index="T8wYR" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
      <concept id="1178894719932" name="jetbrains.mps.baseLanguage.collections.structure.DistinctOperation" flags="nn" index="1VAtEI" />
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
      </node>
    </node>
    <node concept="2tJIrI" id="NKt6ynoPYt" role="jymVt" />
    <node concept="3clFb_" id="NKt6ynp3Wc" role="jymVt">
      <property role="TrG5h" value="forLanguage" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="NKt6ynp2kD" role="3clF47">
        <node concept="3cpWs8" id="NKt6ynp2kE" role="3cqZAp">
          <node concept="3cpWsn" id="NKt6ynp2kF" role="3cpWs9">
            <property role="TrG5h" value="langrt" />
            <node concept="3uibUv" id="NKt6ynp2kG" role="1tU5fm">
              <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
            </node>
            <node concept="2OqwBi" id="NKt6ynp2kH" role="33vP2m">
              <node concept="2YIFZM" id="NKt6ynp2kI" role="2Oq$k0">
                <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
                <node concept="37vLTw" id="NKt6ynp2kJ" role="37wK5m">
                  <ref role="3cqZAo" node="NKt6ynp2k_" resolve="repository" />
                </node>
              </node>
              <node concept="liA8E" id="NKt6ynp2kK" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="getLanguage" />
                <node concept="37vLTw" id="NKt6ynp2kL" role="37wK5m">
                  <ref role="3cqZAo" node="NKt6ynp2kz" resolve="slang" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="NKt6ynp2kM" role="3cqZAp">
          <node concept="3clFbS" id="NKt6ynp2kN" role="3clFbx">
            <node concept="3cpWs6" id="NKt6ynp2kO" role="3cqZAp">
              <node concept="10Nm6u" id="NKt6ynp2kP" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="NKt6ynp2kQ" role="3clFbw">
            <node concept="10Nm6u" id="NKt6ynp2kR" role="3uHU7w" />
            <node concept="37vLTw" id="NKt6ynp2kS" role="3uHU7B">
              <ref role="3cqZAo" node="NKt6ynp2kF" resolve="langrt" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="NKt6ynpca7" role="3cqZAp">
          <node concept="2OqwBi" id="NKt6ynpdD5" role="3clFbG">
            <node concept="37vLTw" id="NKt6ynpca5" role="2Oq$k0">
              <ref role="3cqZAo" node="NKt6yno_yM" resolve="discoverable" />
            </node>
            <node concept="liA8E" id="NKt6ynpdP9" role="2OqNvi">
              <ref role="37wK5l" node="NKt6ynombB" resolve="discover" />
              <node concept="37vLTw" id="NKt6ynpe51" role="37wK5m">
                <ref role="3cqZAo" node="NKt6ynp2kF" resolve="langrt" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="NKt6ynp2kz" role="3clF46">
        <property role="TrG5h" value="slang" />
        <node concept="3uibUv" id="NKt6ynp2k$" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
      <node concept="37vLTG" id="NKt6ynp2k_" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="NKt6ynp2kA" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="16syzq" id="NKt6ynp5vS" role="3clF45">
        <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="NKt6ynp2kC" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="NKt6ynp0PF" role="jymVt" />
    <node concept="3clFb_" id="7mB3viLmii2" role="jymVt">
      <property role="TrG5h" value="allForNode" />
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
        <node concept="3clFbJ" id="52Js5TEzSBG" role="3cqZAp">
          <node concept="3clFbS" id="52Js5TEzSBI" role="3clFbx">
            <node concept="3clFbF" id="52Js5TEzYMa" role="3cqZAp">
              <node concept="2OqwBi" id="52Js5TEzZC9" role="3clFbG">
                <node concept="37vLTw" id="52Js5TEzYM8" role="2Oq$k0">
                  <ref role="3cqZAo" node="7mB3viLmGMp" resolve="imports" />
                </node>
                <node concept="X8dFx" id="52Js5TE$0yw" role="2OqNvi">
                  <node concept="2YIFZM" id="52Js5TE$0D7" role="25WWJ7">
                    <ref role="1Pybhc" to="w1kc:~SModelOperations" resolve="SModelOperations" />
                    <ref role="37wK5l" to="w1kc:~SModelOperations.getAllLanguageImports(org.jetbrains.mps.openapi.model.SModel)" resolve="getAllLanguageImports" />
                    <node concept="2OqwBi" id="52Js5TE$1LH" role="37wK5m">
                      <node concept="37vLTw" id="52Js5TE$1LI" role="2Oq$k0">
                        <ref role="3cqZAo" node="7mB3viLmiiz" resolve="node" />
                      </node>
                      <node concept="I4A8Y" id="52Js5TE$1LJ" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="52Js5TEzYGV" role="3clFbw">
            <node concept="10Nm6u" id="52Js5TEzYIu" role="3uHU7w" />
            <node concept="1eOMI4" id="52Js5TE$1LG" role="3uHU7B">
              <node concept="2OqwBi" id="52Js5TE$1LD" role="1eOMHV">
                <node concept="37vLTw" id="52Js5TE$1LE" role="2Oq$k0">
                  <ref role="3cqZAo" node="7mB3viLmiiz" resolve="node" />
                </node>
                <node concept="I4A8Y" id="52Js5TE$1LF" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7mB3viLmLZG" role="3cqZAp">
          <node concept="2OqwBi" id="7mB3viLmMLT" role="3clFbG">
            <node concept="37vLTw" id="7mB3viLmLZE" role="2Oq$k0">
              <ref role="3cqZAo" node="7mB3viLmGMp" resolve="imports" />
            </node>
            <node concept="TSZUe" id="7mB3viLmRQd" role="2OqNvi">
              <node concept="2OqwBi" id="7mB3viLmPLf" role="25WWJ7">
                <node concept="2OqwBi" id="7mB3viLmPms" role="2Oq$k0">
                  <node concept="2JrnkZ" id="7mB3viLmOTh" role="2Oq$k0">
                    <node concept="37vLTw" id="7mB3viLmO97" role="2JrQYb">
                      <ref role="3cqZAo" node="7mB3viLmiiz" resolve="node" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7mB3viLmPxl" role="2OqNvi">
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
        <node concept="3clFbF" id="7mB3viLmii4" role="3cqZAp">
          <node concept="2OqwBi" id="7mB3viLmii5" role="3clFbG">
            <node concept="2OqwBi" id="7mB3viLmii6" role="2Oq$k0">
              <node concept="2OqwBi" id="2rIdnPuG_nl" role="2Oq$k0">
                <node concept="2OqwBi" id="7mB3viLmii7" role="2Oq$k0">
                  <node concept="2OqwBi" id="7mB3viLmii8" role="2Oq$k0">
                    <node concept="1rXfSq" id="7mB3viLmii9" role="2Oq$k0">
                      <ref role="37wK5l" node="NKt6ynq5W5" resolve="extendedLangClosure" />
                      <node concept="37vLTw" id="7mB3viLmGMu" role="37wK5m">
                        <ref role="3cqZAo" node="7mB3viLmGMp" resolve="imports" />
                      </node>
                      <node concept="37vLTw" id="7mB3viLmiic" role="37wK5m">
                        <ref role="3cqZAo" node="7mB3viLmii_" resolve="repository" />
                      </node>
                    </node>
                    <node concept="3$u5V9" id="7mB3viLmiid" role="2OqNvi">
                      <node concept="1bVj0M" id="7mB3viLmiie" role="23t8la">
                        <node concept="3clFbS" id="7mB3viLmiif" role="1bW5cS">
                          <node concept="3clFbF" id="7mB3viLmiig" role="3cqZAp">
                            <node concept="2OqwBi" id="7mB3viLmiih" role="3clFbG">
                              <node concept="37vLTw" id="7mB3viLmiii" role="2Oq$k0">
                                <ref role="3cqZAo" node="NKt6yno_yM" resolve="discoverable" />
                              </node>
                              <node concept="liA8E" id="7mB3viLmiij" role="2OqNvi">
                                <ref role="37wK5l" node="NKt6ynombB" resolve="discover" />
                                <node concept="37vLTw" id="7mB3viLmiik" role="37wK5m">
                                  <ref role="3cqZAo" node="7mB3viLmiim" resolve="lr" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="7mB3viLmiil" role="3cqZAp" />
                        </node>
                        <node concept="Rh6nW" id="7mB3viLmiim" role="1bW2Oz">
                          <property role="TrG5h" value="lr" />
                          <node concept="2jxLKc" id="7mB3viLmiin" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3zZkjj" id="7mB3viLmiio" role="2OqNvi">
                    <node concept="1bVj0M" id="7mB3viLmiip" role="23t8la">
                      <node concept="3clFbS" id="7mB3viLmiiq" role="1bW5cS">
                        <node concept="3clFbF" id="7mB3viLmiir" role="3cqZAp">
                          <node concept="3y3z36" id="7mB3viLmiis" role="3clFbG">
                            <node concept="10Nm6u" id="7mB3viLmiit" role="3uHU7w" />
                            <node concept="37vLTw" id="7mB3viLmiiu" role="3uHU7B">
                              <ref role="3cqZAo" node="7mB3viLmiiv" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="7mB3viLmiiv" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="7mB3viLmiiw" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1VAtEI" id="2rIdnPuH2S$" role="2OqNvi" />
              </node>
              <node concept="ANE8D" id="7mB3viLmiix" role="2OqNvi" />
            </node>
            <node concept="26Dbio" id="7mB3viLmiiy" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7mB3viLmiiz" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7mB3viLmDn0" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7mB3viLmii_" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="7mB3viLmiiA" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3vKaQO" id="7mB3viLmiiB" role="3clF45">
        <node concept="16syzq" id="7mB3viLmiiC" role="3O5elw">
          <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7mB3viLmiiD" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7mB3viLmswh" role="jymVt" />
    <node concept="3clFb_" id="NKt6ynoYr0" role="jymVt">
      <property role="TrG5h" value="allForModel" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="NKt6ynoWQg" role="3clF47">
        <node concept="3clFbF" id="NKt6ynpjDP" role="3cqZAp">
          <node concept="2OqwBi" id="NKt6ynpuDM" role="3clFbG">
            <node concept="2OqwBi" id="NKt6ynpsEf" role="2Oq$k0">
              <node concept="2OqwBi" id="2rIdnPuHEXu" role="2Oq$k0">
                <node concept="2OqwBi" id="NKt6ynpqDC" role="2Oq$k0">
                  <node concept="2OqwBi" id="NKt6ynpkbn" role="2Oq$k0">
                    <node concept="1rXfSq" id="NKt6ynpjDR" role="2Oq$k0">
                      <ref role="37wK5l" node="NKt6ynq5W5" resolve="extendedLangClosure" />
                      <node concept="2YIFZM" id="NKt6ynpjDS" role="37wK5m">
                        <ref role="37wK5l" to="w1kc:~SModelOperations.getAllLanguageImports(org.jetbrains.mps.openapi.model.SModel)" resolve="getAllLanguageImports" />
                        <ref role="1Pybhc" to="w1kc:~SModelOperations" resolve="SModelOperations" />
                        <node concept="37vLTw" id="NKt6ynpjDT" role="37wK5m">
                          <ref role="3cqZAo" node="NKt6ynoWQ9" resolve="model" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="NKt6ynpjDU" role="37wK5m">
                        <ref role="3cqZAo" node="NKt6ynoWQb" resolve="repository" />
                      </node>
                    </node>
                    <node concept="3$u5V9" id="NKt6ynpl4f" role="2OqNvi">
                      <node concept="1bVj0M" id="NKt6ynpl4h" role="23t8la">
                        <node concept="3clFbS" id="NKt6ynpl4i" role="1bW5cS">
                          <node concept="3clFbF" id="NKt6ynplhw" role="3cqZAp">
                            <node concept="2OqwBi" id="NKt6ynpl$N" role="3clFbG">
                              <node concept="37vLTw" id="NKt6ynplhv" role="2Oq$k0">
                                <ref role="3cqZAo" node="NKt6yno_yM" resolve="discoverable" />
                              </node>
                              <node concept="liA8E" id="NKt6ynplTV" role="2OqNvi">
                                <ref role="37wK5l" node="NKt6ynombB" resolve="discover" />
                                <node concept="37vLTw" id="NKt6ynpm9b" role="37wK5m">
                                  <ref role="3cqZAo" node="NKt6ynpl4j" resolve="lr" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="NKt6ynpmCt" role="3cqZAp" />
                        </node>
                        <node concept="Rh6nW" id="NKt6ynpl4j" role="1bW2Oz">
                          <property role="TrG5h" value="lr" />
                          <node concept="2jxLKc" id="NKt6ynpl4k" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3zZkjj" id="NKt6ynprqj" role="2OqNvi">
                    <node concept="1bVj0M" id="NKt6ynprql" role="23t8la">
                      <node concept="3clFbS" id="NKt6ynprqm" role="1bW5cS">
                        <node concept="3clFbF" id="NKt6ynprJQ" role="3cqZAp">
                          <node concept="3y3z36" id="NKt6ynps39" role="3clFbG">
                            <node concept="10Nm6u" id="NKt6ynpshX" role="3uHU7w" />
                            <node concept="37vLTw" id="NKt6ynprJP" role="3uHU7B">
                              <ref role="3cqZAo" node="NKt6ynprqn" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="NKt6ynprqn" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="NKt6ynprqo" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1VAtEI" id="2rIdnPuIjf1" role="2OqNvi" />
              </node>
              <node concept="ANE8D" id="NKt6ynpt$1" role="2OqNvi" />
            </node>
            <node concept="26Dbio" id="NKt6ynpwm5" role="2OqNvi" />
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
        <node concept="16syzq" id="NKt6ynoZVl" role="3O5elw">
          <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="NKt6ynoWQf" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7mB3viLm$_H" role="jymVt" />
    <node concept="3clFb_" id="NKt6ynoU4W" role="jymVt">
      <property role="TrG5h" value="allForLanguage" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="NKt6ynoRr_" role="3clF47">
        <node concept="3clFbF" id="NKt6ynpzhY" role="3cqZAp">
          <node concept="2OqwBi" id="NKt6ynpDyw" role="3clFbG">
            <node concept="2OqwBi" id="NKt6ynpBJb" role="2Oq$k0">
              <node concept="2OqwBi" id="2rIdnPuIjB9" role="2Oq$k0">
                <node concept="2OqwBi" id="NKt6ynpAmF" role="2Oq$k0">
                  <node concept="2OqwBi" id="NKt6ynpzKJ" role="2Oq$k0">
                    <node concept="1rXfSq" id="NKt6ynpzi0" role="2Oq$k0">
                      <ref role="37wK5l" node="NKt6ynq5W5" resolve="extendedLangClosure" />
                      <node concept="2ShNRf" id="NKt6ynpzi1" role="37wK5m">
                        <node concept="2HTt$P" id="NKt6ynpzi2" role="2ShVmc">
                          <node concept="3uibUv" id="NKt6ynpzi3" role="2HTBi0">
                            <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                          </node>
                          <node concept="37vLTw" id="NKt6ynpzi4" role="2HTEbv">
                            <ref role="3cqZAo" node="NKt6ynoRru" resolve="slang" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="NKt6ynpzi5" role="37wK5m">
                        <ref role="3cqZAo" node="NKt6ynoRrw" resolve="repository" />
                      </node>
                    </node>
                    <node concept="3$u5V9" id="NKt6ynp$_O" role="2OqNvi">
                      <node concept="1bVj0M" id="NKt6ynp$_Q" role="23t8la">
                        <node concept="3clFbS" id="NKt6ynp$_R" role="1bW5cS">
                          <node concept="3clFbF" id="NKt6ynp$Yi" role="3cqZAp">
                            <node concept="2OqwBi" id="NKt6ynp_gw" role="3clFbG">
                              <node concept="37vLTw" id="NKt6ynp$Yg" role="2Oq$k0">
                                <ref role="3cqZAo" node="NKt6yno_yM" resolve="discoverable" />
                              </node>
                              <node concept="liA8E" id="NKt6ynp_Ek" role="2OqNvi">
                                <ref role="37wK5l" node="NKt6ynombB" resolve="discover" />
                                <node concept="37vLTw" id="NKt6ynp_RU" role="37wK5m">
                                  <ref role="3cqZAo" node="NKt6ynp$_S" resolve="lr" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="NKt6ynpA53" role="3cqZAp" />
                        </node>
                        <node concept="Rh6nW" id="NKt6ynp$_S" role="1bW2Oz">
                          <property role="TrG5h" value="lr" />
                          <node concept="2jxLKc" id="NKt6ynp$_T" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3zZkjj" id="NKt6ynpAMp" role="2OqNvi">
                    <node concept="1bVj0M" id="NKt6ynpAMr" role="23t8la">
                      <node concept="3clFbS" id="NKt6ynpAMs" role="1bW5cS">
                        <node concept="3clFbF" id="NKt6ynpB8_" role="3cqZAp">
                          <node concept="3y3z36" id="NKt6ynpBqk" role="3clFbG">
                            <node concept="10Nm6u" id="NKt6ynpBrK" role="3uHU7w" />
                            <node concept="37vLTw" id="NKt6ynpB8$" role="3uHU7B">
                              <ref role="3cqZAo" node="NKt6ynpAMt" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="NKt6ynpAMt" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="NKt6ynpAMu" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1VAtEI" id="2rIdnPuIGuO" role="2OqNvi" />
              </node>
              <node concept="ANE8D" id="NKt6ynpC_a" role="2OqNvi" />
            </node>
            <node concept="26Dbio" id="NKt6ynpFcr" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="NKt6ynoRru" role="3clF46">
        <property role="TrG5h" value="slang" />
        <node concept="3uibUv" id="NKt6ynoRrv" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
      <node concept="37vLTG" id="NKt6ynoRrw" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="NKt6ynoRrx" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3vKaQO" id="NKt6ynoRry" role="3clF45">
        <node concept="16syzq" id="NKt6ynoVus" role="3O5elw">
          <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="NKt6ynoRr$" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="NKt6ynoQcy" role="jymVt" />
    <node concept="3clFb_" id="NKt6ynoAJU" role="jymVt">
      <property role="TrG5h" value="allForLanguage" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="NKt6ynowSt" role="3clF47">
        <node concept="3clFbF" id="NKt6ynpFS1" role="3cqZAp">
          <node concept="2OqwBi" id="NKt6ynpM_n" role="3clFbG">
            <node concept="2OqwBi" id="NKt6ynpKMl" role="2Oq$k0">
              <node concept="2OqwBi" id="2rIdnPuIGMa" role="2Oq$k0">
                <node concept="2OqwBi" id="NKt6ynpIND" role="2Oq$k0">
                  <node concept="2OqwBi" id="NKt6ynpGmK" role="2Oq$k0">
                    <node concept="1rXfSq" id="NKt6ynpFS3" role="2Oq$k0">
                      <ref role="37wK5l" node="NKt6ynq3lC" resolve="extendedLangClosure" />
                      <node concept="2ShNRf" id="NKt6ynpFS4" role="37wK5m">
                        <node concept="2HTt$P" id="NKt6ynpFS5" role="2ShVmc">
                          <node concept="3uibUv" id="NKt6ynpFS6" role="2HTBi0">
                            <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                          </node>
                          <node concept="37vLTw" id="NKt6ynpFS7" role="2HTEbv">
                            <ref role="3cqZAo" node="NKt6ynowSr" resolve="langrt" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3$u5V9" id="NKt6ynpHbt" role="2OqNvi">
                      <node concept="1bVj0M" id="NKt6ynpHbv" role="23t8la">
                        <node concept="3clFbS" id="NKt6ynpHbw" role="1bW5cS">
                          <node concept="3clFbF" id="NKt6ynpHsz" role="3cqZAp">
                            <node concept="2OqwBi" id="NKt6ynpHIP" role="3clFbG">
                              <node concept="37vLTw" id="NKt6ynpHsy" role="2Oq$k0">
                                <ref role="3cqZAo" node="NKt6yno_yM" resolve="discoverable" />
                              </node>
                              <node concept="liA8E" id="NKt6ynpI8H" role="2OqNvi">
                                <ref role="37wK5l" node="NKt6ynombB" resolve="discover" />
                                <node concept="37vLTw" id="NKt6ynpImn" role="37wK5m">
                                  <ref role="3cqZAo" node="NKt6ynpHbx" resolve="lr" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="NKt6ynpIy6" role="3cqZAp" />
                        </node>
                        <node concept="Rh6nW" id="NKt6ynpHbx" role="1bW2Oz">
                          <property role="TrG5h" value="lr" />
                          <node concept="2jxLKc" id="NKt6ynpHby" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3zZkjj" id="NKt6ynpJkc" role="2OqNvi">
                    <node concept="1bVj0M" id="NKt6ynpJke" role="23t8la">
                      <node concept="3clFbS" id="NKt6ynpJkf" role="1bW5cS">
                        <node concept="3clFbF" id="NKt6ynpJzU" role="3cqZAp">
                          <node concept="3y3z36" id="NKt6ynpKjg" role="3clFbG">
                            <node concept="10Nm6u" id="NKt6ynpKuZ" role="3uHU7w" />
                            <node concept="37vLTw" id="NKt6ynpJzT" role="3uHU7B">
                              <ref role="3cqZAo" node="NKt6ynpJkg" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="NKt6ynpJkg" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="NKt6ynpJkh" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1VAtEI" id="2rIdnPuJ5mf" role="2OqNvi" />
              </node>
              <node concept="ANE8D" id="NKt6ynpLE0" role="2OqNvi" />
            </node>
            <node concept="26Dbio" id="NKt6ynpOff" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="NKt6ynowSr" role="3clF46">
        <property role="TrG5h" value="langrt" />
        <node concept="3uibUv" id="NKt6ynowSs" role="1tU5fm">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="3vKaQO" id="NKt6ynowSP" role="3clF45">
        <node concept="16syzq" id="NKt6ynoG4c" role="3O5elw">
          <ref role="16sUi3" node="NKt6ynoBYL" resolve="T" />
        </node>
      </node>
      <node concept="3Tm1VV" id="NKt6ynowSR" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="NKt6ynoIgC" role="jymVt" />
    <node concept="3clFb_" id="NKt6ynq5W5" role="jymVt">
      <property role="TrG5h" value="extendedLangClosure" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="NKt6ynosjP" role="3clF47">
        <node concept="3cpWs8" id="NKt6ynosjQ" role="3cqZAp">
          <node concept="3cpWsn" id="NKt6ynosjR" role="3cpWs9">
            <property role="TrG5h" value="closure" />
            <node concept="2hMVRd" id="NKt6ynosjS" role="1tU5fm">
              <node concept="3uibUv" id="NKt6ynosjT" role="2hN53Y">
                <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
              </node>
            </node>
            <node concept="2ShNRf" id="NKt6ynosjU" role="33vP2m">
              <node concept="2i4dXS" id="NKt6ynosjV" role="2ShVmc">
                <node concept="3uibUv" id="NKt6ynosjW" role="HW$YZ">
                  <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="NKt6ynosjX" role="3cqZAp">
          <node concept="3clFbS" id="NKt6ynosjY" role="2LFqv$">
            <node concept="3cpWs8" id="NKt6ynosjZ" role="3cqZAp">
              <node concept="3cpWsn" id="NKt6ynosk0" role="3cpWs9">
                <property role="TrG5h" value="langrt" />
                <node concept="3uibUv" id="NKt6ynosk1" role="1tU5fm">
                  <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                </node>
                <node concept="2OqwBi" id="NKt6ynosk2" role="33vP2m">
                  <node concept="2YIFZM" id="NKt6ynosk3" role="2Oq$k0">
                    <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
                    <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                    <node concept="37vLTw" id="NKt6ynosk4" role="37wK5m">
                      <ref role="3cqZAo" node="NKt6ynoskG" resolve="repository" />
                    </node>
                  </node>
                  <node concept="liA8E" id="NKt6ynosk5" role="2OqNvi">
                    <ref role="37wK5l" to="vndm:~LanguageRegistry.getLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="getLanguage" />
                    <node concept="37vLTw" id="NKt6ynosk6" role="37wK5m">
                      <ref role="3cqZAo" node="NKt6ynoskz" resolve="slang" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="NKt6ynosk7" role="3cqZAp">
              <node concept="3clFbS" id="NKt6ynosk8" role="3clFbx">
                <node concept="RRSsy" id="NKt6ynosk9" role="3cqZAp">
                  <property role="RRSoG" value="warn" />
                  <node concept="3cpWs3" id="NKt6ynoska" role="RRSoy">
                    <node concept="Xl_RD" id="NKt6ynoskb" role="3uHU7w">
                      <property role="Xl_RC" value="\&quot;" />
                    </node>
                    <node concept="3cpWs3" id="NKt6ynoskc" role="3uHU7B">
                      <node concept="Xl_RD" id="NKt6ynoskd" role="3uHU7B">
                        <property role="Xl_RC" value="no language runtime for \&quot;" />
                      </node>
                      <node concept="2OqwBi" id="NKt6ynoske" role="3uHU7w">
                        <node concept="37vLTw" id="NKt6ynoskf" role="2Oq$k0">
                          <ref role="3cqZAo" node="NKt6ynoskz" resolve="slang" />
                        </node>
                        <node concept="liA8E" id="NKt6ynoskg" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName()" resolve="getQualifiedName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="NKt6ynoskh" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="NKt6ynoski" role="3clFbw">
                <node concept="10Nm6u" id="NKt6ynoskj" role="3uHU7w" />
                <node concept="37vLTw" id="NKt6ynoskk" role="3uHU7B">
                  <ref role="3cqZAo" node="NKt6ynosk0" resolve="langrt" />
                </node>
              </node>
              <node concept="9aQIb" id="NKt6ynoskl" role="9aQIa">
                <node concept="3clFbS" id="NKt6ynoskm" role="9aQI4">
                  <node concept="3clFbF" id="NKt6ynoskn" role="3cqZAp">
                    <node concept="2OqwBi" id="NKt6ynosko" role="3clFbG">
                      <node concept="37vLTw" id="NKt6ynoskp" role="2Oq$k0">
                        <ref role="3cqZAo" node="NKt6ynosjR" resolve="closure" />
                      </node>
                      <node concept="TSZUe" id="NKt6ynoskq" role="2OqNvi">
                        <node concept="37vLTw" id="NKt6ynoskr" role="25WWJ7">
                          <ref role="3cqZAo" node="NKt6ynosk0" resolve="langrt" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="NKt6ynosks" role="3cqZAp">
                    <node concept="2OqwBi" id="NKt6ynoskt" role="3clFbG">
                      <node concept="37vLTw" id="NKt6ynosku" role="2Oq$k0">
                        <ref role="3cqZAo" node="NKt6ynosjR" resolve="closure" />
                      </node>
                      <node concept="X8dFx" id="NKt6ynoskv" role="2OqNvi">
                        <node concept="2OqwBi" id="NKt6ynoskw" role="25WWJ7">
                          <node concept="37vLTw" id="NKt6ynoskx" role="2Oq$k0">
                            <ref role="3cqZAo" node="NKt6ynosk0" resolve="langrt" />
                          </node>
                          <node concept="liA8E" id="NKt6ynosky" role="2OqNvi">
                            <ref role="37wK5l" to="vndm:~LanguageRuntime.getExtendedLanguages()" resolve="getExtendedLanguages" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="NKt6ynoskz" role="1Duv9x">
            <property role="TrG5h" value="slang" />
            <node concept="3uibUv" id="NKt6ynosk$" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
            </node>
          </node>
          <node concept="37vLTw" id="NKt6ynosk_" role="1DdaDG">
            <ref role="3cqZAo" node="NKt6ynoskD" resolve="slanguages" />
          </node>
        </node>
        <node concept="3clFbF" id="NKt6ynoskA" role="3cqZAp">
          <node concept="1rXfSq" id="NKt6ynoskB" role="3clFbG">
            <ref role="37wK5l" node="NKt6ynpYdl" resolve="topoSort" />
            <node concept="37vLTw" id="NKt6ynoskC" role="37wK5m">
              <ref role="3cqZAo" node="NKt6ynosjR" resolve="closure" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="NKt6ynoskD" role="3clF46">
        <property role="TrG5h" value="slanguages" />
        <node concept="A3Dl8" id="NKt6ynoskE" role="1tU5fm">
          <node concept="3uibUv" id="NKt6ynoskF" role="A3Ik2">
            <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="NKt6ynoskG" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="NKt6ynoskH" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3vKaQO" id="NKt6ynoskI" role="3clF45">
        <node concept="3uibUv" id="NKt6ynoskJ" role="3O5elw">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="3Tm6S6" id="NKt6ynoskK" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="NKt6ynoskL" role="jymVt" />
    <node concept="3clFb_" id="NKt6ynq3lC" role="jymVt">
      <property role="TrG5h" value="extendedLangClosure" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="NKt6ynoskN" role="3clF47">
        <node concept="3cpWs8" id="NKt6ynoskO" role="3cqZAp">
          <node concept="3cpWsn" id="NKt6ynoskP" role="3cpWs9">
            <property role="TrG5h" value="closure" />
            <node concept="2hMVRd" id="NKt6ynoskQ" role="1tU5fm">
              <node concept="3uibUv" id="NKt6ynoskR" role="2hN53Y">
                <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
              </node>
            </node>
            <node concept="2ShNRf" id="NKt6ynoskS" role="33vP2m">
              <node concept="2i4dXS" id="NKt6ynoskT" role="2ShVmc">
                <node concept="3uibUv" id="NKt6ynoskU" role="HW$YZ">
                  <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="NKt6ynoskV" role="3cqZAp">
          <node concept="3clFbS" id="NKt6ynoskW" role="2LFqv$">
            <node concept="3clFbF" id="NKt6ynoskX" role="3cqZAp">
              <node concept="2OqwBi" id="NKt6ynoskY" role="3clFbG">
                <node concept="37vLTw" id="NKt6ynoskZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="NKt6ynoskP" resolve="closure" />
                </node>
                <node concept="TSZUe" id="NKt6ynosl0" role="2OqNvi">
                  <node concept="37vLTw" id="NKt6ynosl1" role="25WWJ7">
                    <ref role="3cqZAo" node="NKt6ynosl9" resolve="langrt" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="NKt6ynosl2" role="3cqZAp">
              <node concept="2OqwBi" id="NKt6ynosl3" role="3clFbG">
                <node concept="37vLTw" id="NKt6ynosl4" role="2Oq$k0">
                  <ref role="3cqZAo" node="NKt6ynoskP" resolve="closure" />
                </node>
                <node concept="X8dFx" id="NKt6ynosl5" role="2OqNvi">
                  <node concept="2OqwBi" id="NKt6ynosl6" role="25WWJ7">
                    <node concept="37vLTw" id="NKt6ynosl7" role="2Oq$k0">
                      <ref role="3cqZAo" node="NKt6ynosl9" resolve="langrt" />
                    </node>
                    <node concept="liA8E" id="NKt6ynosl8" role="2OqNvi">
                      <ref role="37wK5l" to="vndm:~LanguageRuntime.getExtendedLanguages()" resolve="getExtendedLanguages" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="NKt6ynosl9" role="1Duv9x">
            <property role="TrG5h" value="langrt" />
            <node concept="3uibUv" id="NKt6ynosla" role="1tU5fm">
              <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
            </node>
          </node>
          <node concept="37vLTw" id="NKt6ynoslb" role="1DdaDG">
            <ref role="3cqZAo" node="NKt6ynoslf" resolve="langRuntimes" />
          </node>
        </node>
        <node concept="3clFbF" id="NKt6ynoslc" role="3cqZAp">
          <node concept="1rXfSq" id="NKt6ynosld" role="3clFbG">
            <ref role="37wK5l" node="NKt6ynpYdl" resolve="topoSort" />
            <node concept="37vLTw" id="NKt6ynosle" role="37wK5m">
              <ref role="3cqZAo" node="NKt6ynoskP" resolve="closure" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="NKt6ynoslf" role="3clF46">
        <property role="TrG5h" value="langRuntimes" />
        <node concept="A3Dl8" id="NKt6ynoslg" role="1tU5fm">
          <node concept="3uibUv" id="NKt6ynoslh" role="A3Ik2">
            <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
          </node>
        </node>
      </node>
      <node concept="3vKaQO" id="NKt6ynosli" role="3clF45">
        <node concept="3uibUv" id="NKt6ynoslj" role="3O5elw">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="3Tm6S6" id="NKt6ynoslk" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="NKt6ynosll" role="jymVt" />
    <node concept="3clFb_" id="NKt6ynpYdl" role="jymVt">
      <property role="TrG5h" value="topoSort" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="NKt6ynosln" role="3clF47">
        <node concept="3cpWs8" id="NKt6ynoslo" role="3cqZAp">
          <node concept="3cpWsn" id="NKt6ynoslp" role="3cpWs9">
            <property role="TrG5h" value="graph" />
            <node concept="3rvAFt" id="NKt6ynoslq" role="1tU5fm">
              <node concept="3uibUv" id="NKt6ynoslr" role="3rvQeY">
                <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
              </node>
              <node concept="3uibUv" id="NKt6ynosls" role="3rvSg0">
                <ref role="3uigEE" node="NKt6ynosoD" resolve="AspectLookup.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="NKt6ynoslt" role="33vP2m">
              <node concept="3rGOSV" id="NKt6ynoslu" role="2ShVmc">
                <node concept="3uibUv" id="NKt6ynoslv" role="3rHrn6">
                  <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                </node>
                <node concept="3uibUv" id="NKt6ynoslw" role="3rHtpV">
                  <ref role="3uigEE" node="NKt6ynosoD" resolve="AspectLookup.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="NKt6ynoslx" role="3cqZAp" />
        <node concept="3SKdUt" id="NKt6ynosly" role="3cqZAp">
          <node concept="3SKdUq" id="NKt6ynoslz" role="3SKWNk">
            <property role="3SKdUp" value="build a subgraph of language dependencies containing only languages with Type aspect" />
          </node>
        </node>
        <node concept="1DcWWT" id="NKt6ynosl$" role="3cqZAp">
          <node concept="3clFbS" id="NKt6ynosl_" role="2LFqv$">
            <node concept="3clFbJ" id="NKt6ynoslA" role="3cqZAp">
              <node concept="3clFbS" id="NKt6ynoslB" role="3clFbx">
                <node concept="3cpWs8" id="NKt6ynoslC" role="3cqZAp">
                  <node concept="3cpWsn" id="NKt6ynoslD" role="3cpWs9">
                    <property role="TrG5h" value="vtx" />
                    <node concept="3uibUv" id="NKt6ynoslE" role="1tU5fm">
                      <ref role="3uigEE" node="NKt6ynosoD" resolve="AspectLookup.Vtx" />
                    </node>
                    <node concept="2ShNRf" id="NKt6ynoslF" role="33vP2m">
                      <node concept="1pGfFk" id="NKt6ynoslG" role="2ShVmc">
                        <ref role="37wK5l" node="NKt6ynosoE" resolve="AspectLookup.Vtx" />
                        <node concept="37vLTw" id="NKt6ynoslH" role="37wK5m">
                          <ref role="3cqZAo" node="NKt6ynosm3" resolve="lr" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="NKt6ynoslI" role="3cqZAp">
                  <node concept="37vLTI" id="NKt6ynoslJ" role="3clFbG">
                    <node concept="3EllGN" id="NKt6ynoslK" role="37vLTJ">
                      <node concept="37vLTw" id="NKt6ynoslL" role="3ElVtu">
                        <ref role="3cqZAo" node="NKt6ynosm3" resolve="lr" />
                      </node>
                      <node concept="37vLTw" id="NKt6ynoslM" role="3ElQJh">
                        <ref role="3cqZAo" node="NKt6ynoslp" resolve="graph" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="NKt6ynoslN" role="37vLTx">
                      <ref role="3cqZAo" node="NKt6ynoslD" resolve="vtx" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="NKt6ynoslO" role="3cqZAp">
                  <node concept="2OqwBi" id="NKt6ynoslP" role="3clFbG">
                    <node concept="37vLTw" id="NKt6ynoslQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="NKt6ynoslD" resolve="vtx" />
                    </node>
                    <node concept="liA8E" id="NKt6ynoslR" role="2OqNvi">
                      <ref role="37wK5l" node="NKt6ynosoQ" resolve="update" />
                      <node concept="37vLTw" id="NKt6ynoslS" role="37wK5m">
                        <ref role="3cqZAo" node="NKt6ynoslp" resolve="graph" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="NKt6ynoslT" role="3clFbw">
                <node concept="3fqX7Q" id="NKt6ynoslU" role="3uHU7w">
                  <node concept="2OqwBi" id="NKt6ynoslV" role="3fr31v">
                    <node concept="37vLTw" id="NKt6ynoslW" role="2Oq$k0">
                      <ref role="3cqZAo" node="NKt6ynoslp" resolve="graph" />
                    </node>
                    <node concept="2Nt0df" id="NKt6ynoslX" role="2OqNvi">
                      <node concept="37vLTw" id="NKt6ynoslY" role="38cxEo">
                        <ref role="3cqZAo" node="NKt6ynosm3" resolve="lr" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="NKt6ynoslZ" role="3uHU7B">
                  <node concept="10Nm6u" id="NKt6ynosm2" role="3uHU7w" />
                  <node concept="2OqwBi" id="NKt6ynq91p" role="3uHU7B">
                    <node concept="37vLTw" id="NKt6ynq8OC" role="2Oq$k0">
                      <ref role="3cqZAo" node="NKt6yno_yM" resolve="discoverable" />
                    </node>
                    <node concept="liA8E" id="NKt6ynq9p5" role="2OqNvi">
                      <ref role="37wK5l" node="NKt6ynombB" resolve="discover" />
                      <node concept="37vLTw" id="NKt6ynq9zu" role="37wK5m">
                        <ref role="3cqZAo" node="NKt6ynosm3" resolve="lr" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="NKt6ynosm3" role="1Duv9x">
            <property role="TrG5h" value="lr" />
            <node concept="3uibUv" id="NKt6ynosm4" role="1tU5fm">
              <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
            </node>
          </node>
          <node concept="37vLTw" id="NKt6ynosm5" role="1DdaDG">
            <ref role="3cqZAo" node="NKt6ynosnO" resolve="unsorted" />
          </node>
        </node>
        <node concept="3clFbH" id="NKt6ynosm6" role="3cqZAp" />
        <node concept="3SKdUt" id="NKt6ynosm7" role="3cqZAp">
          <node concept="3SKdUq" id="NKt6ynosm8" role="3SKWNk">
            <property role="3SKdUp" value="depth-first search. the vertex that is visited last moves in front of others" />
          </node>
        </node>
        <node concept="3cpWs8" id="NKt6ynosm9" role="3cqZAp">
          <node concept="3cpWsn" id="NKt6ynosma" role="3cpWs9">
            <property role="TrG5h" value="stack" />
            <node concept="oyxx6" id="NKt6ynosmb" role="1tU5fm">
              <node concept="3uibUv" id="NKt6ynosmc" role="3O5elw">
                <ref role="3uigEE" node="NKt6ynosoD" resolve="AspectLookup.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="NKt6ynosmd" role="33vP2m">
              <node concept="2Jqq0_" id="NKt6ynosme" role="2ShVmc">
                <node concept="3uibUv" id="NKt6ynosmf" role="HW$YZ">
                  <ref role="3uigEE" node="NKt6ynosoD" resolve="AspectLookup.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="NKt6ynosmg" role="3cqZAp">
          <node concept="3cpWsn" id="NKt6ynosmh" role="3cpWs9">
            <property role="TrG5h" value="sorted" />
            <node concept="2BANLN" id="NKt6ynosmi" role="1tU5fm">
              <node concept="3uibUv" id="NKt6ynosmj" role="_ZDj9">
                <ref role="3uigEE" node="NKt6ynosoD" resolve="AspectLookup.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="NKt6ynosmk" role="33vP2m">
              <node concept="2Jqq0_" id="NKt6ynosml" role="2ShVmc">
                <node concept="3uibUv" id="NKt6ynosmm" role="HW$YZ">
                  <ref role="3uigEE" node="NKt6ynosoD" resolve="AspectLookup.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="NKt6ynosmn" role="3cqZAp">
          <node concept="3cpWsn" id="NKt6ynosmo" role="3cpWs9">
            <property role="TrG5h" value="visited" />
            <node concept="2hMVRd" id="NKt6ynosmp" role="1tU5fm">
              <node concept="3uibUv" id="NKt6ynosmq" role="2hN53Y">
                <ref role="3uigEE" node="NKt6ynosoD" resolve="AspectLookup.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="NKt6ynosmr" role="33vP2m">
              <node concept="2i4dXS" id="NKt6ynosms" role="2ShVmc">
                <node concept="3uibUv" id="NKt6ynosmt" role="HW$YZ">
                  <ref role="3uigEE" node="NKt6ynosoD" resolve="AspectLookup.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="NKt6ynosmu" role="3cqZAp">
          <node concept="3clFbS" id="NKt6ynosmv" role="2LFqv$">
            <node concept="3clFbJ" id="NKt6ynosmw" role="3cqZAp">
              <node concept="3clFbS" id="NKt6ynosmx" role="3clFbx">
                <node concept="3N13vt" id="NKt6ynosmy" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="NKt6ynosmz" role="3clFbw">
                <node concept="37vLTw" id="NKt6ynosm$" role="2Oq$k0">
                  <ref role="3cqZAo" node="NKt6ynosmo" resolve="visited" />
                </node>
                <node concept="3JPx81" id="NKt6ynosm_" role="2OqNvi">
                  <node concept="37vLTw" id="NKt6ynosmA" role="25WWJ7">
                    <ref role="3cqZAo" node="NKt6ynosnw" resolve="vtx" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="NKt6ynosmB" role="3cqZAp" />
            <node concept="3clFbF" id="NKt6ynosmC" role="3cqZAp">
              <node concept="2OqwBi" id="NKt6ynosmD" role="3clFbG">
                <node concept="37vLTw" id="NKt6ynosmE" role="2Oq$k0">
                  <ref role="3cqZAo" node="NKt6ynosma" resolve="stack" />
                </node>
                <node concept="2ArzE6" id="NKt6ynosmF" role="2OqNvi">
                  <node concept="37vLTw" id="NKt6ynosmG" role="25WWJ7">
                    <ref role="3cqZAo" node="NKt6ynosnw" resolve="vtx" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2$JKZl" id="NKt6ynosmH" role="3cqZAp">
              <node concept="3clFbS" id="NKt6ynosmI" role="2LFqv$">
                <node concept="3cpWs8" id="NKt6ynosmJ" role="3cqZAp">
                  <node concept="3cpWsn" id="NKt6ynosmK" role="3cpWs9">
                    <property role="TrG5h" value="v" />
                    <node concept="3uibUv" id="NKt6ynosmL" role="1tU5fm">
                      <ref role="3uigEE" node="NKt6ynosoD" resolve="AspectLookup.Vtx" />
                    </node>
                    <node concept="2OqwBi" id="NKt6ynosmM" role="33vP2m">
                      <node concept="37vLTw" id="NKt6ynosmN" role="2Oq$k0">
                        <ref role="3cqZAo" node="NKt6ynosma" resolve="stack" />
                      </node>
                      <node concept="2oR75g" id="NKt6ynosmO" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="1DcWWT" id="NKt6ynosmP" role="3cqZAp">
                  <node concept="3clFbS" id="NKt6ynosmQ" role="2LFqv$">
                    <node concept="3clFbJ" id="NKt6ynosmR" role="3cqZAp">
                      <node concept="3clFbS" id="NKt6ynosmS" role="3clFbx">
                        <node concept="3clFbF" id="NKt6ynosmT" role="3cqZAp">
                          <node concept="2OqwBi" id="NKt6ynosmU" role="3clFbG">
                            <node concept="37vLTw" id="NKt6ynosmV" role="2Oq$k0">
                              <ref role="3cqZAo" node="NKt6ynosma" resolve="stack" />
                            </node>
                            <node concept="2ArzE6" id="NKt6ynosmW" role="2OqNvi">
                              <node concept="37vLTw" id="NKt6ynosmX" role="25WWJ7">
                                <ref role="3cqZAo" node="NKt6ynosn3" resolve="e" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="NKt6ynosmY" role="3clFbw">
                        <node concept="2OqwBi" id="NKt6ynosmZ" role="3fr31v">
                          <node concept="37vLTw" id="NKt6ynosn0" role="2Oq$k0">
                            <ref role="3cqZAo" node="NKt6ynosmo" resolve="visited" />
                          </node>
                          <node concept="3JPx81" id="NKt6ynosn1" role="2OqNvi">
                            <node concept="37vLTw" id="NKt6ynosn2" role="25WWJ7">
                              <ref role="3cqZAo" node="NKt6ynosn3" resolve="e" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="NKt6ynosn3" role="1Duv9x">
                    <property role="TrG5h" value="e" />
                    <node concept="3uibUv" id="NKt6ynosn4" role="1tU5fm">
                      <ref role="3uigEE" node="NKt6ynosoD" resolve="AspectLookup.Vtx" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="NKt6ynosn5" role="1DdaDG">
                    <node concept="37vLTw" id="NKt6ynosn6" role="2Oq$k0">
                      <ref role="3cqZAo" node="NKt6ynosmK" resolve="v" />
                    </node>
                    <node concept="2OwXpG" id="NKt6ynosn7" role="2OqNvi">
                      <ref role="2Oxat5" node="NKt6ynospK" resolve="extended" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="NKt6ynosn8" role="3cqZAp">
                  <node concept="3clFbS" id="NKt6ynosn9" role="3clFbx">
                    <node concept="3clFbF" id="NKt6ynosna" role="3cqZAp">
                      <node concept="2OqwBi" id="NKt6ynosnb" role="3clFbG">
                        <node concept="37vLTw" id="NKt6ynosnc" role="2Oq$k0">
                          <ref role="3cqZAo" node="NKt6ynosmh" resolve="sorted" />
                        </node>
                        <node concept="2Ke4WJ" id="NKt6ynosnd" role="2OqNvi">
                          <node concept="37vLTw" id="NKt6ynosne" role="25WWJ7">
                            <ref role="3cqZAo" node="NKt6ynosmK" resolve="v" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="NKt6ynosnf" role="3cqZAp">
                      <node concept="2OqwBi" id="NKt6ynosng" role="3clFbG">
                        <node concept="37vLTw" id="NKt6ynosnh" role="2Oq$k0">
                          <ref role="3cqZAo" node="NKt6ynosmo" resolve="visited" />
                        </node>
                        <node concept="TSZUe" id="NKt6ynosni" role="2OqNvi">
                          <node concept="37vLTw" id="NKt6ynosnj" role="25WWJ7">
                            <ref role="3cqZAo" node="NKt6ynosmK" resolve="v" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="NKt6ynosnk" role="3cqZAp">
                      <node concept="2OqwBi" id="NKt6ynosnl" role="3clFbG">
                        <node concept="37vLTw" id="NKt6ynosnm" role="2Oq$k0">
                          <ref role="3cqZAo" node="NKt6ynosma" resolve="stack" />
                        </node>
                        <node concept="2AryhJ" id="NKt6ynosnn" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="NKt6ynosno" role="3clFbw">
                    <node concept="37vLTw" id="NKt6ynosnp" role="3uHU7w">
                      <ref role="3cqZAo" node="NKt6ynosmK" resolve="v" />
                    </node>
                    <node concept="2OqwBi" id="NKt6ynosnq" role="3uHU7B">
                      <node concept="37vLTw" id="NKt6ynosnr" role="2Oq$k0">
                        <ref role="3cqZAo" node="NKt6ynosma" resolve="stack" />
                      </node>
                      <node concept="2oR75g" id="NKt6ynosns" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="NKt6ynosnt" role="2$JKZa">
                <node concept="37vLTw" id="NKt6ynosnu" role="2Oq$k0">
                  <ref role="3cqZAo" node="NKt6ynosma" resolve="stack" />
                </node>
                <node concept="3GX2aA" id="NKt6ynosnv" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="NKt6ynosnw" role="1Duv9x">
            <property role="TrG5h" value="vtx" />
            <node concept="3uibUv" id="NKt6ynosnx" role="1tU5fm">
              <ref role="3uigEE" node="NKt6ynosoD" resolve="AspectLookup.Vtx" />
            </node>
          </node>
          <node concept="2OqwBi" id="NKt6ynosny" role="1DdaDG">
            <node concept="37vLTw" id="NKt6ynosnz" role="2Oq$k0">
              <ref role="3cqZAo" node="NKt6ynoslp" resolve="graph" />
            </node>
            <node concept="T8wYR" id="NKt6ynosn$" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="NKt6ynosn_" role="3cqZAp" />
        <node concept="3clFbF" id="NKt6ynosnA" role="3cqZAp">
          <node concept="2OqwBi" id="NKt6ynosnB" role="3clFbG">
            <node concept="2OqwBi" id="NKt6ynosnC" role="2Oq$k0">
              <node concept="37vLTw" id="NKt6ynosnD" role="2Oq$k0">
                <ref role="3cqZAo" node="NKt6ynosmh" resolve="sorted" />
              </node>
              <node concept="3$u5V9" id="NKt6ynosnE" role="2OqNvi">
                <node concept="1bVj0M" id="NKt6ynosnF" role="23t8la">
                  <node concept="3clFbS" id="NKt6ynosnG" role="1bW5cS">
                    <node concept="3clFbF" id="NKt6ynosnH" role="3cqZAp">
                      <node concept="2OqwBi" id="NKt6ynosnI" role="3clFbG">
                        <node concept="37vLTw" id="NKt6ynosnJ" role="2Oq$k0">
                          <ref role="3cqZAo" node="NKt6ynosnL" resolve="it" />
                        </node>
                        <node concept="2OwXpG" id="NKt6ynosnK" role="2OqNvi">
                          <ref role="2Oxat5" node="NKt6ynospH" resolve="langDesc" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="NKt6ynosnL" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="NKt6ynosnM" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="NKt6ynosnN" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="NKt6ynosnO" role="3clF46">
        <property role="TrG5h" value="unsorted" />
        <node concept="3vKaQO" id="NKt6ynosnP" role="1tU5fm">
          <node concept="3uibUv" id="NKt6ynosnQ" role="3O5elw">
            <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
          </node>
        </node>
      </node>
      <node concept="3vKaQO" id="NKt6ynosnR" role="3clF45">
        <node concept="3uibUv" id="NKt6ynosnS" role="3O5elw">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="3Tm6S6" id="NKt6ynosnT" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="NKt6ynosnU" role="jymVt" />
    <node concept="312cEu" id="NKt6ynosoD" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Vtx" />
      <node concept="3clFbW" id="NKt6ynosoE" role="jymVt">
        <node concept="37vLTG" id="NKt6ynosoF" role="3clF46">
          <property role="TrG5h" value="langDesc" />
          <node concept="3uibUv" id="NKt6ynosoG" role="1tU5fm">
            <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
          </node>
        </node>
        <node concept="3cqZAl" id="NKt6ynosoH" role="3clF45" />
        <node concept="3Tm1VV" id="NKt6ynosoI" role="1B3o_S" />
        <node concept="3clFbS" id="NKt6ynosoJ" role="3clF47">
          <node concept="3clFbF" id="NKt6ynosoK" role="3cqZAp">
            <node concept="37vLTI" id="NKt6ynosoL" role="3clFbG">
              <node concept="37vLTw" id="NKt6ynosoM" role="37vLTx">
                <ref role="3cqZAo" node="NKt6ynosoF" resolve="langDesc" />
              </node>
              <node concept="2OqwBi" id="NKt6ynosoN" role="37vLTJ">
                <node concept="Xjq3P" id="NKt6ynosoO" role="2Oq$k0" />
                <node concept="2OwXpG" id="NKt6ynosoP" role="2OqNvi">
                  <ref role="2Oxat5" node="NKt6ynospH" resolve="langDesc" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="NKt6ynosoQ" role="jymVt">
        <property role="TrG5h" value="update" />
        <node concept="37vLTG" id="NKt6ynosoR" role="3clF46">
          <property role="TrG5h" value="graph" />
          <node concept="3rvAFt" id="NKt6ynosoS" role="1tU5fm">
            <node concept="3uibUv" id="NKt6ynosoT" role="3rvQeY">
              <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
            </node>
            <node concept="3uibUv" id="NKt6ynosoU" role="3rvSg0">
              <ref role="3uigEE" node="NKt6ynosoD" resolve="AspectLookup.Vtx" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="NKt6ynosoV" role="3clF45" />
        <node concept="3Tm1VV" id="NKt6ynosoW" role="1B3o_S" />
        <node concept="3clFbS" id="NKt6ynosoX" role="3clF47">
          <node concept="3SKdUt" id="NKt6ynosoY" role="3cqZAp">
            <node concept="3SKdUq" id="NKt6ynosoZ" role="3SKWNk">
              <property role="3SKdUp" value="update the graph" />
            </node>
          </node>
          <node concept="1DcWWT" id="NKt6ynosp0" role="3cqZAp">
            <node concept="3clFbS" id="NKt6ynosp1" role="2LFqv$">
              <node concept="3clFbJ" id="NKt6ynosp2" role="3cqZAp">
                <node concept="2OqwBi" id="NKt6ynosp3" role="3clFbw">
                  <node concept="37vLTw" id="NKt6ynosp4" role="2Oq$k0">
                    <ref role="3cqZAo" node="NKt6ynosoR" resolve="graph" />
                  </node>
                  <node concept="2Nt0df" id="NKt6ynosp5" role="2OqNvi">
                    <node concept="37vLTw" id="NKt6ynosp6" role="38cxEo">
                      <ref role="3cqZAo" node="NKt6ynosph" resolve="extends_" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="NKt6ynosp7" role="3clFbx">
                  <node concept="3clFbF" id="NKt6ynosp8" role="3cqZAp">
                    <node concept="2OqwBi" id="NKt6ynosp9" role="3clFbG">
                      <node concept="2OqwBi" id="NKt6ynospa" role="2Oq$k0">
                        <node concept="Xjq3P" id="NKt6ynospb" role="2Oq$k0" />
                        <node concept="2OwXpG" id="NKt6ynospc" role="2OqNvi">
                          <ref role="2Oxat5" node="NKt6ynospK" resolve="extended" />
                        </node>
                      </node>
                      <node concept="TSZUe" id="NKt6ynospd" role="2OqNvi">
                        <node concept="3EllGN" id="NKt6ynospe" role="25WWJ7">
                          <node concept="37vLTw" id="NKt6ynospf" role="3ElVtu">
                            <ref role="3cqZAo" node="NKt6ynosph" resolve="extends_" />
                          </node>
                          <node concept="37vLTw" id="NKt6ynospg" role="3ElQJh">
                            <ref role="3cqZAo" node="NKt6ynosoR" resolve="graph" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="NKt6ynosph" role="1Duv9x">
              <property role="TrG5h" value="extends_" />
              <node concept="3uibUv" id="NKt6ynospi" role="1tU5fm">
                <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
              </node>
            </node>
            <node concept="2OqwBi" id="NKt6ynospj" role="1DdaDG">
              <node concept="37vLTw" id="NKt6ynospk" role="2Oq$k0">
                <ref role="3cqZAo" node="NKt6ynospH" resolve="langDesc" />
              </node>
              <node concept="liA8E" id="NKt6ynospl" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~LanguageRuntime.getExtendedLanguages()" resolve="getExtendedLanguages" />
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="NKt6ynospm" role="3cqZAp">
            <node concept="3clFbS" id="NKt6ynospn" role="2LFqv$">
              <node concept="3clFbJ" id="NKt6ynospo" role="3cqZAp">
                <node concept="2OqwBi" id="NKt6ynospp" role="3clFbw">
                  <node concept="37vLTw" id="NKt6ynospq" role="2Oq$k0">
                    <ref role="3cqZAo" node="NKt6ynosoR" resolve="graph" />
                  </node>
                  <node concept="2Nt0df" id="NKt6ynospr" role="2OqNvi">
                    <node concept="37vLTw" id="NKt6ynosps" role="38cxEo">
                      <ref role="3cqZAo" node="NKt6ynospB" resolve="extendedBy" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="NKt6ynospt" role="3clFbx">
                  <node concept="3clFbF" id="NKt6ynospu" role="3cqZAp">
                    <node concept="2OqwBi" id="NKt6ynospv" role="3clFbG">
                      <node concept="2OqwBi" id="NKt6ynospw" role="2Oq$k0">
                        <node concept="3EllGN" id="NKt6ynospx" role="2Oq$k0">
                          <node concept="37vLTw" id="NKt6ynospy" role="3ElVtu">
                            <ref role="3cqZAo" node="NKt6ynospB" resolve="extendedBy" />
                          </node>
                          <node concept="37vLTw" id="NKt6ynospz" role="3ElQJh">
                            <ref role="3cqZAo" node="NKt6ynosoR" resolve="graph" />
                          </node>
                        </node>
                        <node concept="2OwXpG" id="NKt6ynosp$" role="2OqNvi">
                          <ref role="2Oxat5" node="NKt6ynospK" resolve="extended" />
                        </node>
                      </node>
                      <node concept="TSZUe" id="NKt6ynosp_" role="2OqNvi">
                        <node concept="Xjq3P" id="NKt6ynospA" role="25WWJ7" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="NKt6ynospB" role="1Duv9x">
              <property role="TrG5h" value="extendedBy" />
              <node concept="3uibUv" id="NKt6ynospC" role="1tU5fm">
                <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
              </node>
            </node>
            <node concept="2OqwBi" id="NKt6ynospD" role="1DdaDG">
              <node concept="37vLTw" id="NKt6ynospE" role="2Oq$k0">
                <ref role="3cqZAo" node="NKt6ynospH" resolve="langDesc" />
              </node>
              <node concept="liA8E" id="NKt6ynospF" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~LanguageRuntime.getExtendingLanguages()" resolve="getExtendingLanguages" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="NKt6ynospG" role="jymVt" />
      <node concept="312cEg" id="NKt6ynospH" role="jymVt">
        <property role="TrG5h" value="langDesc" />
        <node concept="3Tm6S6" id="NKt6ynospI" role="1B3o_S" />
        <node concept="3uibUv" id="NKt6ynospJ" role="1tU5fm">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="312cEg" id="NKt6ynospK" role="jymVt">
        <property role="TrG5h" value="extended" />
        <node concept="3Tm6S6" id="NKt6ynospL" role="1B3o_S" />
        <node concept="_YKpA" id="NKt6ynospM" role="1tU5fm">
          <node concept="3uibUv" id="NKt6ynospN" role="_ZDj9">
            <ref role="3uigEE" node="NKt6ynosoD" resolve="AspectLookup.Vtx" />
          </node>
        </node>
        <node concept="2ShNRf" id="NKt6ynospO" role="33vP2m">
          <node concept="Tc6Ow" id="NKt6ynospP" role="2ShVmc">
            <node concept="3uibUv" id="NKt6ynospQ" role="HW$YZ">
              <ref role="3uigEE" node="NKt6ynosoD" resolve="AspectLookup.Vtx" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="NKt6ynospR" role="1B3o_S" />
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
</model>

