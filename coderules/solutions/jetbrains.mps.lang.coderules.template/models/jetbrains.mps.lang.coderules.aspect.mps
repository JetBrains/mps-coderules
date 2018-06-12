<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2cc226a9-8a78-4010-b962-823343fd28ff(jetbrains.mps.lang.coderules.aspect)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="6" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="11" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
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
        <child id="1068431790190" name="initializer" index="33vP2m" />
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
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
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
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
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
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
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
    </language>
  </registry>
  <node concept="312cEu" id="7km57Pkjxf4">
    <property role="TrG5h" value="TypeAspectDescriptor" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="2hteS6CndfK" role="jymVt" />
    <node concept="2YIFZL" id="2hteS6Cndm6" role="jymVt">
      <property role="TrG5h" value="forLanguage" />
      <node concept="37vLTG" id="2hteS6Cndm7" role="3clF46">
        <property role="TrG5h" value="slang" />
        <node concept="3uibUv" id="2hteS6Cndm8" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
      <node concept="37vLTG" id="2hteS6Cndm9" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="3GlpCDS_m$F" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3uibUv" id="2hteS6Cndt5" role="3clF45">
        <ref role="3uigEE" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
      </node>
      <node concept="3Tm1VV" id="2hteS6Cndmc" role="1B3o_S" />
      <node concept="3clFbS" id="2hteS6Cndmd" role="3clF47">
        <node concept="3cpWs8" id="2hteS6Cndme" role="3cqZAp">
          <node concept="3cpWsn" id="2hteS6Cndmf" role="3cpWs9">
            <property role="TrG5h" value="langrt" />
            <node concept="3uibUv" id="2hteS6Cndmg" role="1tU5fm">
              <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
            </node>
            <node concept="2OqwBi" id="2hteS6Cndmh" role="33vP2m">
              <node concept="2YIFZM" id="2hteS6Cndmi" role="2Oq$k0">
                <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository):jetbrains.mps.smodel.language.LanguageRegistry" resolve="getInstance" />
                <node concept="37vLTw" id="2hteS6Cndmk" role="37wK5m">
                  <ref role="3cqZAo" node="2hteS6Cndm9" resolve="repository" />
                </node>
              </node>
              <node concept="liA8E" id="2hteS6Cndmm" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getLanguage(org.jetbrains.mps.openapi.language.SLanguage):jetbrains.mps.smodel.language.LanguageRuntime" resolve="getLanguage" />
                <node concept="37vLTw" id="2hteS6Cndmn" role="37wK5m">
                  <ref role="3cqZAo" node="2hteS6Cndm7" resolve="slang" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2hteS6Cndmo" role="3cqZAp">
          <node concept="3clFbS" id="2hteS6Cndmp" role="3clFbx">
            <node concept="3cpWs6" id="2hteS6Cndmq" role="3cqZAp">
              <node concept="10Nm6u" id="2hteS6Cndmr" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="2hteS6Cndms" role="3clFbw">
            <node concept="10Nm6u" id="2hteS6Cndmt" role="3uHU7w" />
            <node concept="37vLTw" id="2hteS6Cndmu" role="3uHU7B">
              <ref role="3cqZAo" node="2hteS6Cndmf" resolve="langrt" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2hteS6CndyK" role="3cqZAp">
          <node concept="2OqwBi" id="2hteS6CndB7" role="3clFbG">
            <node concept="37vLTw" id="2hteS6CndB8" role="2Oq$k0">
              <ref role="3cqZAo" node="2hteS6Cndmf" resolve="langrt" />
            </node>
            <node concept="liA8E" id="2hteS6CndB9" role="2OqNvi">
              <ref role="37wK5l" to="vndm:~LanguageRuntime.getAspect(java.lang.Class):jetbrains.mps.smodel.runtime.ILanguageAspect" resolve="getAspect" />
              <node concept="3VsKOn" id="2hteS6CndBa" role="37wK5m">
                <ref role="3VsUkX" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6UWSvq5bjXg" role="jymVt" />
    <node concept="2YIFZL" id="7P_FdVPW9uU" role="jymVt">
      <property role="TrG5h" value="allForModel" />
      <node concept="37vLTG" id="7P_FdVPWb2y" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="7P_FdVPWp2I" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7P_FdVPWb2$" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="7P_FdVPWb2_" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3vKaQO" id="7P_FdVPWaUF" role="3clF45">
        <node concept="3uibUv" id="7P_FdVPWaWw" role="3O5elw">
          <ref role="3uigEE" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7P_FdVPW9uX" role="1B3o_S" />
      <node concept="3clFbS" id="7P_FdVPW9uY" role="3clF47">
        <node concept="3cpWs8" id="7P_FdVPWeqT" role="3cqZAp">
          <node concept="3cpWsn" id="7P_FdVPWeqU" role="3cpWs9">
            <property role="TrG5h" value="allAspects" />
            <node concept="_YKpA" id="7P_FdVPWeqP" role="1tU5fm">
              <node concept="3uibUv" id="7P_FdVPWeqS" role="_ZDj9">
                <ref role="3uigEE" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
              </node>
            </node>
            <node concept="2ShNRf" id="7P_FdVPWeqV" role="33vP2m">
              <node concept="Tc6Ow" id="7P_FdVPWeqW" role="2ShVmc">
                <node concept="3uibUv" id="7P_FdVPWeqX" role="HW$YZ">
                  <ref role="3uigEE" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7P_FdVPWdk$" role="3cqZAp">
          <node concept="3clFbS" id="7P_FdVPWcTN" role="2LFqv$">
            <node concept="3clFbF" id="7P_FdVQ33Wp" role="3cqZAp">
              <node concept="2YIFZM" id="7P_FdVQ33Wo" role="3clFbG">
                <ref role="1Pybhc" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
                <ref role="37wK5l" node="7P_FdVQ33Wj" resolve="getAndInitAspect" />
                <node concept="2GrUjf" id="7P_FdVQ33Wm" role="37wK5m">
                  <ref role="2Gs0qQ" node="7P_FdVPWdlg" resolve="lr" />
                </node>
                <node concept="37vLTw" id="7P_FdVQ33Wn" role="37wK5m">
                  <ref role="3cqZAo" node="7P_FdVPWeqU" resolve="allAspects" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="7P_FdVPWcTT" role="2GsD0m">
            <ref role="37wK5l" node="6UWSvq5cIj4" resolve="extendedLangClosure" />
            <node concept="2YIFZM" id="6UWSvq5cOo_" role="37wK5m">
              <ref role="37wK5l" to="w1kc:~SModelOperations.getAllLanguageImports(org.jetbrains.mps.openapi.model.SModel):java.util.Set" resolve="getAllLanguageImports" />
              <ref role="1Pybhc" to="w1kc:~SModelOperations" resolve="SModelOperations" />
              <node concept="37vLTw" id="6UWSvq5cOoA" role="37wK5m">
                <ref role="3cqZAo" node="7P_FdVPWb2y" resolve="model" />
              </node>
            </node>
            <node concept="37vLTw" id="7P_FdVPWcTY" role="37wK5m">
              <ref role="3cqZAo" node="7P_FdVPWb2$" resolve="repository" />
            </node>
          </node>
          <node concept="2GrKxI" id="7P_FdVPWdlg" role="2Gsz3X">
            <property role="TrG5h" value="lr" />
          </node>
        </node>
        <node concept="3clFbF" id="7P_FdVPWhm5" role="3cqZAp">
          <node concept="2OqwBi" id="7P_FdVPWhYA" role="3clFbG">
            <node concept="37vLTw" id="7P_FdVPWhm3" role="2Oq$k0">
              <ref role="3cqZAo" node="7P_FdVPWeqU" resolve="allAspects" />
            </node>
            <node concept="26Dbio" id="7P_FdVPWjai" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7P_FdVQ35vN" role="jymVt" />
    <node concept="2YIFZL" id="7P_FdVPWn7D" role="jymVt">
      <property role="TrG5h" value="allForLanguage" />
      <node concept="37vLTG" id="7P_FdVPWn7E" role="3clF46">
        <property role="TrG5h" value="slang" />
        <node concept="3uibUv" id="7P_FdVPWn7F" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
        </node>
      </node>
      <node concept="37vLTG" id="7P_FdVPWn7G" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="7P_FdVPWn7H" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3vKaQO" id="7P_FdVPWn7I" role="3clF45">
        <node concept="3uibUv" id="7P_FdVPWn7J" role="3O5elw">
          <ref role="3uigEE" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7P_FdVPWn7K" role="1B3o_S" />
      <node concept="3clFbS" id="7P_FdVPWn7L" role="3clF47">
        <node concept="3cpWs8" id="7P_FdVPWn7M" role="3cqZAp">
          <node concept="3cpWsn" id="7P_FdVPWn7N" role="3cpWs9">
            <property role="TrG5h" value="allAspects" />
            <node concept="_YKpA" id="7P_FdVPWn7O" role="1tU5fm">
              <node concept="3uibUv" id="7P_FdVPWn7P" role="_ZDj9">
                <ref role="3uigEE" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
              </node>
            </node>
            <node concept="2ShNRf" id="7P_FdVPWn7Q" role="33vP2m">
              <node concept="Tc6Ow" id="7P_FdVPWn7R" role="2ShVmc">
                <node concept="3uibUv" id="7P_FdVPWn7S" role="HW$YZ">
                  <ref role="3uigEE" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7P_FdVPWn7T" role="3cqZAp">
          <node concept="3clFbS" id="7P_FdVPWn7U" role="2LFqv$">
            <node concept="3clFbF" id="7P_FdVQ39Vc" role="3cqZAp">
              <node concept="2YIFZM" id="7P_FdVQ39Vd" role="3clFbG">
                <ref role="1Pybhc" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
                <ref role="37wK5l" node="7P_FdVQ33Wj" resolve="getAndInitAspect" />
                <node concept="2GrUjf" id="7P_FdVQ39Ve" role="37wK5m">
                  <ref role="2Gs0qQ" node="7P_FdVPWn8i" resolve="lr" />
                </node>
                <node concept="37vLTw" id="7P_FdVQ39Vf" role="37wK5m">
                  <ref role="3cqZAo" node="7P_FdVPWn7N" resolve="allAspects" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="7P_FdVPWn8c" role="2GsD0m">
            <ref role="37wK5l" node="6UWSvq5cIj4" resolve="extendedLangClosure" />
            <node concept="2ShNRf" id="7P_FdVPWn8d" role="37wK5m">
              <node concept="2HTt$P" id="7P_FdVPWn8e" role="2ShVmc">
                <node concept="3uibUv" id="7P_FdVPWn8f" role="2HTBi0">
                  <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                </node>
                <node concept="37vLTw" id="7P_FdVPWn8g" role="2HTEbv">
                  <ref role="3cqZAo" node="7P_FdVPWn7E" resolve="slang" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7P_FdVPWn8h" role="37wK5m">
              <ref role="3cqZAo" node="7P_FdVPWn7G" resolve="repository" />
            </node>
          </node>
          <node concept="2GrKxI" id="7P_FdVPWn8i" role="2Gsz3X">
            <property role="TrG5h" value="lr" />
          </node>
        </node>
        <node concept="3clFbF" id="7P_FdVPWn8j" role="3cqZAp">
          <node concept="2OqwBi" id="7P_FdVPWn8k" role="3clFbG">
            <node concept="37vLTw" id="7P_FdVPWn8l" role="2Oq$k0">
              <ref role="3cqZAo" node="7P_FdVPWn7N" resolve="allAspects" />
            </node>
            <node concept="26Dbio" id="7P_FdVPWn8m" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7P_FdVPWn7C" role="jymVt" />
    <node concept="2YIFZL" id="7P_FdVPWjGf" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="allForLanguage" />
      <node concept="37vLTG" id="7P_FdVPWjGg" role="3clF46">
        <property role="TrG5h" value="langrt" />
        <node concept="3uibUv" id="7P_FdVPWjGh" role="1tU5fm">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="3clFbS" id="7P_FdVPWjGi" role="3clF47">
        <node concept="3cpWs8" id="7P_FdVPWls1" role="3cqZAp">
          <node concept="3cpWsn" id="7P_FdVPWls2" role="3cpWs9">
            <property role="TrG5h" value="allAspects" />
            <node concept="_YKpA" id="7P_FdVPWls3" role="1tU5fm">
              <node concept="3uibUv" id="7P_FdVPWls4" role="_ZDj9">
                <ref role="3uigEE" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
              </node>
            </node>
            <node concept="2ShNRf" id="7P_FdVPWls5" role="33vP2m">
              <node concept="Tc6Ow" id="7P_FdVPWls6" role="2ShVmc">
                <node concept="3uibUv" id="7P_FdVPWls7" role="HW$YZ">
                  <ref role="3uigEE" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7P_FdVPWls8" role="3cqZAp">
          <node concept="3clFbS" id="7P_FdVPWls9" role="2LFqv$">
            <node concept="3clFbF" id="7P_FdVQ3aiG" role="3cqZAp">
              <node concept="2YIFZM" id="7P_FdVQ3aiH" role="3clFbG">
                <ref role="1Pybhc" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
                <ref role="37wK5l" node="7P_FdVQ33Wj" resolve="getAndInitAspect" />
                <node concept="2GrUjf" id="7P_FdVQ3aiI" role="37wK5m">
                  <ref role="2Gs0qQ" node="7P_FdVPWlsx" resolve="lr" />
                </node>
                <node concept="37vLTw" id="7P_FdVQ3aiJ" role="37wK5m">
                  <ref role="3cqZAo" node="7P_FdVPWls2" resolve="allAspects" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="7P_FdVPWlsr" role="2GsD0m">
            <ref role="37wK5l" node="7P_FdVPV_6P" resolve="extendedLangClosure" />
            <node concept="2ShNRf" id="7P_FdVPWmnN" role="37wK5m">
              <node concept="2HTt$P" id="7P_FdVPWm__" role="2ShVmc">
                <node concept="3uibUv" id="7P_FdVPWmDv" role="2HTBi0">
                  <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                </node>
                <node concept="37vLTw" id="7P_FdVPWmJU" role="2HTEbv">
                  <ref role="3cqZAo" node="7P_FdVPWjGg" resolve="langrt" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2GrKxI" id="7P_FdVPWlsx" role="2Gsz3X">
            <property role="TrG5h" value="lr" />
          </node>
        </node>
        <node concept="3clFbF" id="7P_FdVPWlsy" role="3cqZAp">
          <node concept="2OqwBi" id="7P_FdVPWlsz" role="3clFbG">
            <node concept="37vLTw" id="7P_FdVPWls$" role="2Oq$k0">
              <ref role="3cqZAo" node="7P_FdVPWls2" resolve="allAspects" />
            </node>
            <node concept="26Dbio" id="7P_FdVPWls_" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3vKaQO" id="7P_FdVPWlen" role="3clF45">
        <node concept="3uibUv" id="7P_FdVPWleo" role="3O5elw">
          <ref role="3uigEE" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7P_FdVPWjGp" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7P_FdVPWjGe" role="jymVt" />
    <node concept="2YIFZL" id="7P_FdVQ33Wj" role="jymVt">
      <property role="TrG5h" value="getAndInitAspect" />
      <node concept="3Tm6S6" id="7P_FdVQ33Wk" role="1B3o_S" />
      <node concept="3cqZAl" id="7P_FdVQ33Wl" role="3clF45" />
      <node concept="37vLTG" id="7P_FdVQ33Wa" role="3clF46">
        <property role="TrG5h" value="lr" />
        <node concept="3uibUv" id="7P_FdVQ33Wb" role="1tU5fm">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="37vLTG" id="7P_FdVQ33Wc" role="3clF46">
        <property role="TrG5h" value="allAspects" />
        <node concept="_YKpA" id="7P_FdVQ33Wd" role="1tU5fm">
          <node concept="3uibUv" id="7P_FdVQ33We" role="_ZDj9">
            <ref role="3uigEE" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7P_FdVQ33VS" role="3clF47">
        <node concept="3cpWs8" id="7P_FdVQ33VT" role="3cqZAp">
          <node concept="3cpWsn" id="7P_FdVQ33VU" role="3cpWs9">
            <property role="TrG5h" value="aspect" />
            <node concept="3uibUv" id="7P_FdVQ33VV" role="1tU5fm">
              <ref role="3uigEE" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
            </node>
            <node concept="2OqwBi" id="7P_FdVQ33VW" role="33vP2m">
              <node concept="37vLTw" id="7P_FdVQ33Wf" role="2Oq$k0">
                <ref role="3cqZAo" node="7P_FdVQ33Wa" resolve="lr" />
              </node>
              <node concept="liA8E" id="7P_FdVQ33VY" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~LanguageRuntime.getAspect(java.lang.Class):jetbrains.mps.smodel.runtime.ILanguageAspect" resolve="getAspect" />
                <node concept="3VsKOn" id="7P_FdVQ33VZ" role="37wK5m">
                  <ref role="3VsUkX" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7P_FdVQ33W0" role="3cqZAp">
          <node concept="3clFbS" id="7P_FdVQ33W1" role="3clFbx">
            <node concept="3clFbF" id="7P_FdVQ3wau" role="3cqZAp">
              <node concept="2YIFZM" id="7P_FdVQ3wat" role="3clFbG">
                <ref role="1Pybhc" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
                <ref role="37wK5l" node="7P_FdVQ3wao" resolve="init" />
                <node concept="37vLTw" id="7P_FdVQ3war" role="37wK5m">
                  <ref role="3cqZAo" node="7P_FdVQ33VU" resolve="aspect" />
                </node>
                <node concept="37vLTw" id="7P_FdVQ3was" role="37wK5m">
                  <ref role="3cqZAo" node="7P_FdVQ33Wa" resolve="lr" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7P_FdVQ33W2" role="3cqZAp">
              <node concept="2OqwBi" id="7P_FdVQ33W3" role="3clFbG">
                <node concept="37vLTw" id="7P_FdVQ33Wg" role="2Oq$k0">
                  <ref role="3cqZAo" node="7P_FdVQ33Wc" resolve="allAspects" />
                </node>
                <node concept="TSZUe" id="7P_FdVQ33W5" role="2OqNvi">
                  <node concept="37vLTw" id="7P_FdVQ33W6" role="25WWJ7">
                    <ref role="3cqZAo" node="7P_FdVQ33VU" resolve="aspect" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7P_FdVQ33W7" role="3clFbw">
            <node concept="10Nm6u" id="7P_FdVQ33W8" role="3uHU7w" />
            <node concept="37vLTw" id="7P_FdVQ33W9" role="3uHU7B">
              <ref role="3cqZAo" node="7P_FdVQ33VU" resolve="aspect" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7P_FdVQ3xMH" role="jymVt" />
    <node concept="3clFb_" id="2hteS6ClmbE" role="jymVt">
      <property role="TrG5h" value="createMacroManifest" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="2hteS6ClmeA" role="3clF45">
        <ref role="3uigEE" to="psr6:2N2MQGCMVqD" resolve="AbstractMacroManifest" />
      </node>
      <node concept="3Tm1VV" id="2hteS6ClmbH" role="1B3o_S" />
      <node concept="3clFbS" id="2hteS6ClmbI" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2hteS6Clmfw" role="jymVt" />
    <node concept="3clFb_" id="2hteS6ClmfS" role="jymVt">
      <property role="TrG5h" value="createRuleManifest" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="2hteS6Clmgy" role="3clF45">
        <ref role="3uigEE" to="i348:4OKkcnfu_xe" resolve="AbstractRuleTemplateManifest" />
      </node>
      <node concept="3Tm1VV" id="2hteS6ClmfV" role="1B3o_S" />
      <node concept="3clFbS" id="2hteS6ClmfW" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2hteS6Cleqc" role="jymVt" />
    <node concept="3clFb_" id="7P_FdVQ2VEI" role="jymVt">
      <property role="TrG5h" value="languageRuntime" />
      <node concept="3uibUv" id="7P_FdVQ2ZEv" role="3clF45">
        <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
      </node>
      <node concept="3Tm1VV" id="7P_FdVQ2VEL" role="1B3o_S" />
      <node concept="3clFbS" id="7P_FdVQ2VEM" role="3clF47">
        <node concept="3clFbF" id="7P_FdVQ33FW" role="3cqZAp">
          <node concept="2OqwBi" id="7P_FdVQ4dGp" role="3clFbG">
            <node concept="37vLTw" id="7P_FdVQ33FV" role="2Oq$k0">
              <ref role="3cqZAo" node="7P_FdVQ2BHb" resolve="languageRuntime" />
            </node>
            <node concept="liA8E" id="7P_FdVQ4e7J" role="2OqNvi">
              <ref role="37wK5l" to="i5cy:~AtomicReference.get():java.lang.Object" resolve="get" />
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
      <node concept="3Tm6S6" id="7P_FdVQ2Gsd" role="1B3o_S" />
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
              <ref role="37wK5l" to="i5cy:~AtomicReference.compareAndSet(java.lang.Object,java.lang.Object):boolean" resolve="compareAndSet" />
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
    <node concept="2YIFZL" id="6UWSvq5cIj4" role="jymVt">
      <property role="TrG5h" value="extendedLangClosure" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="6UWSvq5b73$" role="3clF47">
        <node concept="3cpWs8" id="6UWSvq5bdBO" role="3cqZAp">
          <node concept="3cpWsn" id="6UWSvq5bdBR" role="3cpWs9">
            <property role="TrG5h" value="closure" />
            <node concept="2hMVRd" id="6UWSvq5bdBK" role="1tU5fm">
              <node concept="3uibUv" id="6UWSvq5bdFo" role="2hN53Y">
                <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
              </node>
            </node>
            <node concept="2ShNRf" id="6UWSvq5bdJp" role="33vP2m">
              <node concept="2i4dXS" id="6UWSvq5bdI6" role="2ShVmc">
                <node concept="3uibUv" id="6UWSvq5bdI7" role="HW$YZ">
                  <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="6UWSvq5ba91" role="3cqZAp">
          <node concept="3clFbS" id="6UWSvq5ba94" role="2LFqv$">
            <node concept="3cpWs8" id="7P_FdVPVueQ" role="3cqZAp">
              <node concept="3cpWsn" id="7P_FdVPVueR" role="3cpWs9">
                <property role="TrG5h" value="langrt" />
                <node concept="3uibUv" id="7P_FdVPVueS" role="1tU5fm">
                  <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                </node>
                <node concept="2OqwBi" id="7P_FdVPVueT" role="33vP2m">
                  <node concept="2YIFZM" id="7P_FdVPVueU" role="2Oq$k0">
                    <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository):jetbrains.mps.smodel.language.LanguageRegistry" resolve="getInstance" />
                    <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                    <node concept="37vLTw" id="6UWSvq5bdbd" role="37wK5m">
                      <ref role="3cqZAo" node="6UWSvq5bb8I" resolve="repository" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7P_FdVPVueV" role="2OqNvi">
                    <ref role="37wK5l" to="vndm:~LanguageRegistry.getLanguage(org.jetbrains.mps.openapi.language.SLanguage):jetbrains.mps.smodel.language.LanguageRuntime" resolve="getLanguage" />
                    <node concept="37vLTw" id="6UWSvq5bdd2" role="37wK5m">
                      <ref role="3cqZAo" node="6UWSvq5ba95" resolve="slang" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6UWSvq5cnO9" role="3cqZAp">
              <node concept="3clFbS" id="6UWSvq5cnOb" role="3clFbx">
                <node concept="RRSsy" id="6UWSvq5cobt" role="3cqZAp">
                  <property role="RRSoG" value="warn" />
                  <node concept="3cpWs3" id="6UWSvq5cq08" role="RRSoy">
                    <node concept="Xl_RD" id="6UWSvq5cq1k" role="3uHU7w">
                      <property role="Xl_RC" value="\&quot;" />
                    </node>
                    <node concept="3cpWs3" id="6UWSvq5coLv" role="3uHU7B">
                      <node concept="Xl_RD" id="6UWSvq5cobv" role="3uHU7B">
                        <property role="Xl_RC" value="no language runtime for \&quot;" />
                      </node>
                      <node concept="2OqwBi" id="6UWSvq5coXi" role="3uHU7w">
                        <node concept="37vLTw" id="6UWSvq5coNc" role="2Oq$k0">
                          <ref role="3cqZAo" node="6UWSvq5ba95" resolve="slang" />
                        </node>
                        <node concept="liA8E" id="6UWSvq5cp5A" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName():java.lang.String" resolve="getQualifiedName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6UWSvq5cqBt" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="6UWSvq5co6d" role="3clFbw">
                <node concept="10Nm6u" id="6UWSvq5co7t" role="3uHU7w" />
                <node concept="37vLTw" id="6UWSvq5cnWM" role="3uHU7B">
                  <ref role="3cqZAo" node="7P_FdVPVueR" resolve="langrt" />
                </node>
              </node>
              <node concept="9aQIb" id="6UWSvq5cqkU" role="9aQIa">
                <node concept="3clFbS" id="6UWSvq5cqkV" role="9aQI4">
                  <node concept="3clFbF" id="6UWSvq5hKi9" role="3cqZAp">
                    <node concept="2OqwBi" id="6UWSvq5hLpW" role="3clFbG">
                      <node concept="37vLTw" id="6UWSvq5hKi7" role="2Oq$k0">
                        <ref role="3cqZAo" node="6UWSvq5bdBR" resolve="closure" />
                      </node>
                      <node concept="TSZUe" id="6UWSvq5hMof" role="2OqNvi">
                        <node concept="37vLTw" id="6UWSvq5hMoe" role="25WWJ7">
                          <ref role="3cqZAo" node="7P_FdVPVueR" resolve="langrt" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6UWSvq5bdNn" role="3cqZAp">
                    <node concept="2OqwBi" id="6UWSvq5beo8" role="3clFbG">
                      <node concept="37vLTw" id="6UWSvq5bdNl" role="2Oq$k0">
                        <ref role="3cqZAo" node="6UWSvq5bdBR" resolve="closure" />
                      </node>
                      <node concept="X8dFx" id="6UWSvq5hGgr" role="2OqNvi">
                        <node concept="2OqwBi" id="6UWSvq5hGgo" role="25WWJ7">
                          <node concept="37vLTw" id="6UWSvq5hGgp" role="2Oq$k0">
                            <ref role="3cqZAo" node="7P_FdVPVueR" resolve="langrt" />
                          </node>
                          <node concept="liA8E" id="6UWSvq5hGgq" role="2OqNvi">
                            <ref role="37wK5l" to="vndm:~LanguageRuntime.getExtendedLanguages():java.util.Collection" resolve="getExtendedLanguages" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6UWSvq5ba95" role="1Duv9x">
            <property role="TrG5h" value="slang" />
            <node concept="3uibUv" id="6UWSvq5ba99" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
            </node>
          </node>
          <node concept="37vLTw" id="6UWSvq5ba9a" role="1DdaDG">
            <ref role="3cqZAo" node="6UWSvq5b76q" resolve="slanguages" />
          </node>
        </node>
        <node concept="3clFbF" id="6UWSvq5cnwi" role="3cqZAp">
          <node concept="1rXfSq" id="6UWSvq5cnwg" role="3clFbG">
            <ref role="37wK5l" node="6UWSvq5cKtf" resolve="topoSort" />
            <node concept="37vLTw" id="6UWSvq5cnDM" role="37wK5m">
              <ref role="3cqZAo" node="6UWSvq5bdBR" resolve="closure" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6UWSvq5b76q" role="3clF46">
        <property role="TrG5h" value="slanguages" />
        <node concept="A3Dl8" id="7P_FdVPWckH" role="1tU5fm">
          <node concept="3uibUv" id="7P_FdVPWckJ" role="A3Ik2">
            <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6UWSvq5bb8I" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="6UWSvq5bbCv" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3vKaQO" id="6UWSvq5b7_$" role="3clF45">
        <node concept="3uibUv" id="6UWSvq5bgmd" role="3O5elw">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6UWSvq5bgnS" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7P_FdVPVzZA" role="jymVt" />
    <node concept="2YIFZL" id="7P_FdVPV_6P" role="jymVt">
      <property role="TrG5h" value="extendedLangClosure" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="7P_FdVPV_6Q" role="3clF47">
        <node concept="3cpWs8" id="7P_FdVPV_6R" role="3cqZAp">
          <node concept="3cpWsn" id="7P_FdVPV_6S" role="3cpWs9">
            <property role="TrG5h" value="closure" />
            <node concept="2hMVRd" id="7P_FdVPV_6T" role="1tU5fm">
              <node concept="3uibUv" id="7P_FdVPV_6U" role="2hN53Y">
                <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
              </node>
            </node>
            <node concept="2ShNRf" id="7P_FdVPV_6V" role="33vP2m">
              <node concept="2i4dXS" id="7P_FdVPV_6W" role="2ShVmc">
                <node concept="3uibUv" id="7P_FdVPV_6X" role="HW$YZ">
                  <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="7P_FdVPV_6Y" role="3cqZAp">
          <node concept="3clFbS" id="7P_FdVPV_6Z" role="2LFqv$">
            <node concept="3clFbF" id="7P_FdVPV_7o" role="3cqZAp">
              <node concept="2OqwBi" id="7P_FdVPV_7p" role="3clFbG">
                <node concept="37vLTw" id="7P_FdVPV_7q" role="2Oq$k0">
                  <ref role="3cqZAo" node="7P_FdVPV_6S" resolve="closure" />
                </node>
                <node concept="TSZUe" id="7P_FdVPV_7r" role="2OqNvi">
                  <node concept="37vLTw" id="7P_FdVPVM89" role="25WWJ7">
                    <ref role="3cqZAo" node="7P_FdVPV_7$" resolve="langrt" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7P_FdVPV_7t" role="3cqZAp">
              <node concept="2OqwBi" id="7P_FdVPV_7u" role="3clFbG">
                <node concept="37vLTw" id="7P_FdVPV_7v" role="2Oq$k0">
                  <ref role="3cqZAo" node="7P_FdVPV_6S" resolve="closure" />
                </node>
                <node concept="X8dFx" id="7P_FdVPV_7w" role="2OqNvi">
                  <node concept="2OqwBi" id="7P_FdVPV_7x" role="25WWJ7">
                    <node concept="37vLTw" id="7P_FdVPVMtb" role="2Oq$k0">
                      <ref role="3cqZAo" node="7P_FdVPV_7$" resolve="langrt" />
                    </node>
                    <node concept="liA8E" id="7P_FdVPV_7z" role="2OqNvi">
                      <ref role="37wK5l" to="vndm:~LanguageRuntime.getExtendedLanguages():java.util.Collection" resolve="getExtendedLanguages" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7P_FdVPV_7$" role="1Duv9x">
            <property role="TrG5h" value="langrt" />
            <node concept="3uibUv" id="7P_FdVPVE4m" role="1tU5fm">
              <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
            </node>
          </node>
          <node concept="37vLTw" id="7P_FdVPV_7A" role="1DdaDG">
            <ref role="3cqZAo" node="7P_FdVPV_7E" resolve="langRuntimes" />
          </node>
        </node>
        <node concept="3clFbF" id="7P_FdVPV_7B" role="3cqZAp">
          <node concept="1rXfSq" id="7P_FdVPV_7C" role="3clFbG">
            <ref role="37wK5l" node="6UWSvq5cKtf" resolve="topoSort" />
            <node concept="37vLTw" id="7P_FdVPV_7D" role="37wK5m">
              <ref role="3cqZAo" node="7P_FdVPV_6S" resolve="closure" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7P_FdVPV_7E" role="3clF46">
        <property role="TrG5h" value="langRuntimes" />
        <node concept="A3Dl8" id="7P_FdVPWcuQ" role="1tU5fm">
          <node concept="3uibUv" id="7P_FdVPWcuS" role="A3Ik2">
            <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
          </node>
        </node>
      </node>
      <node concept="3vKaQO" id="7P_FdVPV_7J" role="3clF45">
        <node concept="3uibUv" id="7P_FdVPV_7K" role="3O5elw">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7P_FdVPV_7L" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6UWSvq5b6xS" role="jymVt" />
    <node concept="2YIFZL" id="6UWSvq5cKtf" role="jymVt">
      <property role="TrG5h" value="topoSort" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="6UWSvq5b4Zu" role="3clF47">
        <node concept="3cpWs8" id="6UWSvq5bi2y" role="3cqZAp">
          <node concept="3cpWsn" id="6UWSvq5bi2C" role="3cpWs9">
            <property role="TrG5h" value="graph" />
            <node concept="3rvAFt" id="6UWSvq5bi2E" role="1tU5fm">
              <node concept="3uibUv" id="6UWSvq5bi3D" role="3rvQeY">
                <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
              </node>
              <node concept="3uibUv" id="6UWSvq5bi4t" role="3rvSg0">
                <ref role="3uigEE" node="6UWSvq5b2YZ" resolve="TypeAspectDescriptor.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="6UWSvq5bi98" role="33vP2m">
              <node concept="3rGOSV" id="6UWSvq5bi7Q" role="2ShVmc">
                <node concept="3uibUv" id="6UWSvq5bi7R" role="3rHrn6">
                  <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                </node>
                <node concept="3uibUv" id="6UWSvq5bi7S" role="3rHtpV">
                  <ref role="3uigEE" node="6UWSvq5b2YZ" resolve="TypeAspectDescriptor.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6UWSvq5bjVG" role="3cqZAp" />
        <node concept="3SKdUt" id="6UWSvq5ciUe" role="3cqZAp">
          <node concept="3SKdUq" id="6UWSvq5ciUg" role="3SKWNk">
            <property role="3SKdUp" value="build a subgraph of language dependencies containing only languages with Type aspect" />
          </node>
        </node>
        <node concept="1DcWWT" id="6UWSvq5blpe" role="3cqZAp">
          <node concept="3clFbS" id="6UWSvq5blph" role="2LFqv$">
            <node concept="3clFbJ" id="6UWSvq5bmUr" role="3cqZAp">
              <node concept="3clFbS" id="6UWSvq5bmUt" role="3clFbx">
                <node concept="3cpWs8" id="6UWSvq5bs7n" role="3cqZAp">
                  <node concept="3cpWsn" id="6UWSvq5bs7o" role="3cpWs9">
                    <property role="TrG5h" value="vtx" />
                    <node concept="3uibUv" id="6UWSvq5bs7l" role="1tU5fm">
                      <ref role="3uigEE" node="6UWSvq5b2YZ" resolve="TypeAspectDescriptor.Vtx" />
                    </node>
                    <node concept="2ShNRf" id="6UWSvq5bs7p" role="33vP2m">
                      <node concept="1pGfFk" id="6UWSvq5bs7q" role="2ShVmc">
                        <ref role="37wK5l" node="6UWSvq5bnwr" resolve="TypeAspectDescriptor.Vtx" />
                        <node concept="37vLTw" id="6UWSvq5bs7r" role="37wK5m">
                          <ref role="3cqZAo" node="6UWSvq5blpi" resolve="langDesc" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6UWSvq5borz" role="3cqZAp">
                  <node concept="37vLTI" id="6UWSvq5bp_x" role="3clFbG">
                    <node concept="3EllGN" id="6UWSvq5bpls" role="37vLTJ">
                      <node concept="37vLTw" id="6UWSvq5bpoP" role="3ElVtu">
                        <ref role="3cqZAo" node="6UWSvq5blpi" resolve="langDesc" />
                      </node>
                      <node concept="37vLTw" id="6UWSvq5borx" role="3ElQJh">
                        <ref role="3cqZAo" node="6UWSvq5bi2C" resolve="graph" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="6UWSvq5bs7s" role="37vLTx">
                      <ref role="3cqZAo" node="6UWSvq5bs7o" resolve="vtx" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6UWSvq5bEvg" role="3cqZAp">
                  <node concept="2OqwBi" id="6UWSvq5bEMY" role="3clFbG">
                    <node concept="37vLTw" id="6UWSvq5bEve" role="2Oq$k0">
                      <ref role="3cqZAo" node="6UWSvq5bs7o" resolve="vtx" />
                    </node>
                    <node concept="liA8E" id="6UWSvq5bEUp" role="2OqNvi">
                      <ref role="37wK5l" node="6UWSvq5bCMn" resolve="update" />
                      <node concept="37vLTw" id="6UWSvq5bEYs" role="37wK5m">
                        <ref role="3cqZAo" node="6UWSvq5bi2C" resolve="graph" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="6UWSvq5bpIy" role="3clFbw">
                <node concept="3fqX7Q" id="6UWSvq5bpMb" role="3uHU7w">
                  <node concept="2OqwBi" id="6UWSvq5bqdu" role="3fr31v">
                    <node concept="37vLTw" id="6UWSvq5bpO7" role="2Oq$k0">
                      <ref role="3cqZAo" node="6UWSvq5bi2C" resolve="graph" />
                    </node>
                    <node concept="2Nt0df" id="6UWSvq5bqJ9" role="2OqNvi">
                      <node concept="37vLTw" id="6UWSvq5bqMH" role="38cxEo">
                        <ref role="3cqZAo" node="6UWSvq5blpi" resolve="langDesc" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="6UWSvq5bn8R" role="3uHU7B">
                  <node concept="2YIFZM" id="6UWSvq5bokN" role="3uHU7B">
                    <ref role="1Pybhc" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
                    <ref role="37wK5l" node="6UWSvq5bk3i" resolve="forLanguage" />
                    <node concept="37vLTw" id="6UWSvq5bokO" role="37wK5m">
                      <ref role="3cqZAo" node="6UWSvq5blpi" resolve="langDesc" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="6UWSvq5bna7" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6UWSvq5blpi" role="1Duv9x">
            <property role="TrG5h" value="langDesc" />
            <node concept="3uibUv" id="6UWSvq5blpm" role="1tU5fm">
              <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
            </node>
          </node>
          <node concept="37vLTw" id="6UWSvq5blpn" role="1DdaDG">
            <ref role="3cqZAo" node="6UWSvq5b52d" resolve="unsorted" />
          </node>
        </node>
        <node concept="3clFbH" id="6UWSvq5bqZk" role="3cqZAp" />
        <node concept="3SKdUt" id="6UWSvq5bYkw" role="3cqZAp">
          <node concept="3SKdUq" id="6UWSvq5bYky" role="3SKWNk">
            <property role="3SKdUp" value="depth-first search. the vertex that is visited last moves in front of others" />
          </node>
        </node>
        <node concept="3cpWs8" id="6UWSvq5bI2Y" role="3cqZAp">
          <node concept="3cpWsn" id="6UWSvq5bI31" role="3cpWs9">
            <property role="TrG5h" value="stack" />
            <node concept="oyxx6" id="6UWSvq5bI2V" role="1tU5fm">
              <node concept="3uibUv" id="6UWSvq5bIaN" role="3O5elw">
                <ref role="3uigEE" node="6UWSvq5b2YZ" resolve="TypeAspectDescriptor.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="6UWSvq5bId8" role="33vP2m">
              <node concept="2Jqq0_" id="6UWSvq5bIbX" role="2ShVmc">
                <node concept="3uibUv" id="6UWSvq5bIbY" role="HW$YZ">
                  <ref role="3uigEE" node="6UWSvq5b2YZ" resolve="TypeAspectDescriptor.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6UWSvq5bIpb" role="3cqZAp">
          <node concept="3cpWsn" id="6UWSvq5bIpe" role="3cpWs9">
            <property role="TrG5h" value="sorted" />
            <node concept="2BANLN" id="6UWSvq5bIp7" role="1tU5fm">
              <node concept="3uibUv" id="6UWSvq5bIs_" role="_ZDj9">
                <ref role="3uigEE" node="6UWSvq5b2YZ" resolve="TypeAspectDescriptor.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="6UWSvq5bIyo" role="33vP2m">
              <node concept="2Jqq0_" id="6UWSvq5bIxd" role="2ShVmc">
                <node concept="3uibUv" id="6UWSvq5bIxe" role="HW$YZ">
                  <ref role="3uigEE" node="6UWSvq5b2YZ" resolve="TypeAspectDescriptor.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6UWSvq5bICu" role="3cqZAp">
          <node concept="3cpWsn" id="6UWSvq5bICx" role="3cpWs9">
            <property role="TrG5h" value="visited" />
            <node concept="2hMVRd" id="6UWSvq5bICq" role="1tU5fm">
              <node concept="3uibUv" id="6UWSvq5bIG0" role="2hN53Y">
                <ref role="3uigEE" node="6UWSvq5b2YZ" resolve="TypeAspectDescriptor.Vtx" />
              </node>
            </node>
            <node concept="2ShNRf" id="6UWSvq5bIKR" role="33vP2m">
              <node concept="2i4dXS" id="6UWSvq5bIJD" role="2ShVmc">
                <node concept="3uibUv" id="6UWSvq5bIJE" role="HW$YZ">
                  <ref role="3uigEE" node="6UWSvq5b2YZ" resolve="TypeAspectDescriptor.Vtx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="6UWSvq5bJJz" role="3cqZAp">
          <node concept="3clFbS" id="6UWSvq5bJJA" role="2LFqv$">
            <node concept="3clFbJ" id="6UWSvq5bK74" role="3cqZAp">
              <node concept="3clFbS" id="6UWSvq5bK76" role="3clFbx">
                <node concept="3N13vt" id="6UWSvq5bLNu" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="6UWSvq5bKO5" role="3clFbw">
                <node concept="37vLTw" id="6UWSvq5bK8A" role="2Oq$k0">
                  <ref role="3cqZAo" node="6UWSvq5bICx" resolve="visited" />
                </node>
                <node concept="3JPx81" id="6UWSvq5bLHD" role="2OqNvi">
                  <node concept="37vLTw" id="6UWSvq5bLKk" role="25WWJ7">
                    <ref role="3cqZAo" node="6UWSvq5bJJB" resolve="vtx" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6UWSvq5bK5C" role="3cqZAp" />
            <node concept="3clFbF" id="6UWSvq5bLQm" role="3cqZAp">
              <node concept="2OqwBi" id="6UWSvq5bMEe" role="3clFbG">
                <node concept="37vLTw" id="6UWSvq5bLQk" role="2Oq$k0">
                  <ref role="3cqZAo" node="6UWSvq5bI31" resolve="stack" />
                </node>
                <node concept="2ArzE6" id="6UWSvq5bOkq" role="2OqNvi">
                  <node concept="37vLTw" id="6UWSvq5bOmK" role="25WWJ7">
                    <ref role="3cqZAo" node="6UWSvq5bJJB" resolve="vtx" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2$JKZl" id="6UWSvq5bOrf" role="3cqZAp">
              <node concept="3clFbS" id="6UWSvq5bOrh" role="2LFqv$">
                <node concept="3cpWs8" id="6UWSvq5bSiU" role="3cqZAp">
                  <node concept="3cpWsn" id="6UWSvq5bSiV" role="3cpWs9">
                    <property role="TrG5h" value="v" />
                    <node concept="3uibUv" id="6UWSvq5bSiH" role="1tU5fm">
                      <ref role="3uigEE" node="6UWSvq5b2YZ" resolve="TypeAspectDescriptor.Vtx" />
                    </node>
                    <node concept="2OqwBi" id="6UWSvq5bSiW" role="33vP2m">
                      <node concept="37vLTw" id="6UWSvq5bSiX" role="2Oq$k0">
                        <ref role="3cqZAo" node="6UWSvq5bI31" resolve="stack" />
                      </node>
                      <node concept="2oR75g" id="6UWSvq5bSiY" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="1DcWWT" id="6UWSvq5bT4_" role="3cqZAp">
                  <node concept="3clFbS" id="6UWSvq5bT4C" role="2LFqv$">
                    <node concept="3clFbJ" id="6UWSvq5c9fo" role="3cqZAp">
                      <node concept="3clFbS" id="6UWSvq5c9fq" role="3clFbx">
                        <node concept="3clFbF" id="6UWSvq5bW0v" role="3cqZAp">
                          <node concept="2OqwBi" id="6UWSvq5bWOg" role="3clFbG">
                            <node concept="37vLTw" id="6UWSvq5bW0u" role="2Oq$k0">
                              <ref role="3cqZAo" node="6UWSvq5bI31" resolve="stack" />
                            </node>
                            <node concept="2ArzE6" id="6UWSvq5bXVm" role="2OqNvi">
                              <node concept="37vLTw" id="6UWSvq5bXX$" role="25WWJ7">
                                <ref role="3cqZAo" node="6UWSvq5bT4D" resolve="e" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="6UWSvq5cb6V" role="3clFbw">
                        <node concept="2OqwBi" id="6UWSvq5cb6X" role="3fr31v">
                          <node concept="37vLTw" id="6UWSvq5cb6Y" role="2Oq$k0">
                            <ref role="3cqZAo" node="6UWSvq5bICx" resolve="visited" />
                          </node>
                          <node concept="3JPx81" id="6UWSvq5cb6Z" role="2OqNvi">
                            <node concept="37vLTw" id="6UWSvq5cb70" role="25WWJ7">
                              <ref role="3cqZAo" node="6UWSvq5bT4D" resolve="e" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="6UWSvq5bT4D" role="1Duv9x">
                    <property role="TrG5h" value="e" />
                    <node concept="3uibUv" id="6UWSvq5bT4H" role="1tU5fm">
                      <ref role="3uigEE" node="6UWSvq5b2YZ" resolve="TypeAspectDescriptor.Vtx" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6UWSvq5bT4I" role="1DdaDG">
                    <node concept="37vLTw" id="6UWSvq5bT4J" role="2Oq$k0">
                      <ref role="3cqZAo" node="6UWSvq5bSiV" resolve="v" />
                    </node>
                    <node concept="2OwXpG" id="6UWSvq5bT4K" role="2OqNvi">
                      <ref role="2Oxat5" node="6UWSvq5brPb" resolve="extended" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6UWSvq5cbeO" role="3cqZAp">
                  <node concept="3clFbS" id="6UWSvq5cbeQ" role="3clFbx">
                    <node concept="3clFbF" id="6UWSvq5c2dx" role="3cqZAp">
                      <node concept="2OqwBi" id="6UWSvq5c3gn" role="3clFbG">
                        <node concept="37vLTw" id="6UWSvq5c2dw" role="2Oq$k0">
                          <ref role="3cqZAo" node="6UWSvq5bIpe" resolve="sorted" />
                        </node>
                        <node concept="2Ke4WJ" id="6UWSvq5c5jG" role="2OqNvi">
                          <node concept="37vLTw" id="6UWSvq5c5nO" role="25WWJ7">
                            <ref role="3cqZAo" node="6UWSvq5bSiV" resolve="v" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6UWSvq5c6Xb" role="3cqZAp">
                      <node concept="2OqwBi" id="6UWSvq5c7xp" role="3clFbG">
                        <node concept="37vLTw" id="6UWSvq5c6X9" role="2Oq$k0">
                          <ref role="3cqZAo" node="6UWSvq5bICx" resolve="visited" />
                        </node>
                        <node concept="TSZUe" id="6UWSvq5cj_a" role="2OqNvi">
                          <node concept="37vLTw" id="6UWSvq5cjGN" role="25WWJ7">
                            <ref role="3cqZAo" node="6UWSvq5bSiV" resolve="v" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6UWSvq5c5uM" role="3cqZAp">
                      <node concept="2OqwBi" id="6UWSvq5c6js" role="3clFbG">
                        <node concept="37vLTw" id="6UWSvq5c5uK" role="2Oq$k0">
                          <ref role="3cqZAo" node="6UWSvq5bI31" resolve="stack" />
                        </node>
                        <node concept="2AryhJ" id="6UWSvq5c6Ss" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="6UWSvq5cdZ2" role="3clFbw">
                    <node concept="37vLTw" id="6UWSvq5ce42" role="3uHU7w">
                      <ref role="3cqZAo" node="6UWSvq5bSiV" resolve="v" />
                    </node>
                    <node concept="2OqwBi" id="6UWSvq5cch3" role="3uHU7B">
                      <node concept="37vLTw" id="6UWSvq5cbis" role="2Oq$k0">
                        <ref role="3cqZAo" node="6UWSvq5bI31" resolve="stack" />
                      </node>
                      <node concept="2oR75g" id="6UWSvq5ccPO" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6UWSvq5bPqG" role="2$JKZa">
                <node concept="37vLTw" id="6UWSvq5bOsV" role="2Oq$k0">
                  <ref role="3cqZAo" node="6UWSvq5bI31" resolve="stack" />
                </node>
                <node concept="3GX2aA" id="6UWSvq5bQxO" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6UWSvq5bJJB" role="1Duv9x">
            <property role="TrG5h" value="vtx" />
            <node concept="3uibUv" id="6UWSvq5bJJF" role="1tU5fm">
              <ref role="3uigEE" node="6UWSvq5b2YZ" resolve="TypeAspectDescriptor.Vtx" />
            </node>
          </node>
          <node concept="2OqwBi" id="6UWSvq5bJJG" role="1DdaDG">
            <node concept="37vLTw" id="6UWSvq5bJJH" role="2Oq$k0">
              <ref role="3cqZAo" node="6UWSvq5bi2C" resolve="graph" />
            </node>
            <node concept="T8wYR" id="6UWSvq5bJJI" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="6UWSvq5br1f" role="3cqZAp" />
        <node concept="3clFbF" id="6UWSvq5ceJn" role="3cqZAp">
          <node concept="2OqwBi" id="6UWSvq5ci1O" role="3clFbG">
            <node concept="2OqwBi" id="6UWSvq5cg1e" role="2Oq$k0">
              <node concept="37vLTw" id="6UWSvq5ceJl" role="2Oq$k0">
                <ref role="3cqZAo" node="6UWSvq5bIpe" resolve="sorted" />
              </node>
              <node concept="3$u5V9" id="6UWSvq5ch8$" role="2OqNvi">
                <node concept="1bVj0M" id="6UWSvq5ch8A" role="23t8la">
                  <node concept="3clFbS" id="6UWSvq5ch8B" role="1bW5cS">
                    <node concept="3clFbF" id="6UWSvq5chh3" role="3cqZAp">
                      <node concept="2OqwBi" id="6UWSvq5chts" role="3clFbG">
                        <node concept="37vLTw" id="6UWSvq5chh2" role="2Oq$k0">
                          <ref role="3cqZAo" node="6UWSvq5ch8C" resolve="it" />
                        </node>
                        <node concept="2OwXpG" id="6UWSvq5chFA" role="2OqNvi">
                          <ref role="2Oxat5" node="6UWSvq5b30P" resolve="langDesc" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6UWSvq5ch8C" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6UWSvq5ch8D" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="6UWSvq5ciKw" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6UWSvq5b52d" role="3clF46">
        <property role="TrG5h" value="unsorted" />
        <node concept="3vKaQO" id="6UWSvq5bhsn" role="1tU5fm">
          <node concept="3uibUv" id="6UWSvq5bhsK" role="3O5elw">
            <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
          </node>
        </node>
      </node>
      <node concept="3vKaQO" id="6UWSvq5bgWN" role="3clF45">
        <node concept="3uibUv" id="6UWSvq5bhs4" role="3O5elw">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6UWSvq5irkL" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6UWSvq5b3aO" role="jymVt" />
    <node concept="2YIFZL" id="6UWSvq5bk3i" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="forLanguage" />
      <node concept="37vLTG" id="6UWSvq5bk7O" role="3clF46">
        <property role="TrG5h" value="lr" />
        <node concept="3uibUv" id="6UWSvq5bk8e" role="1tU5fm">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="3clFbS" id="6UWSvq5bk0u" role="3clF47">
        <node concept="3cpWs8" id="7P_FdVQ3aAZ" role="3cqZAp">
          <node concept="3cpWsn" id="7P_FdVQ3aB0" role="3cpWs9">
            <property role="TrG5h" value="aspect" />
            <node concept="3uibUv" id="7P_FdVQ3aB1" role="1tU5fm">
              <ref role="3uigEE" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
            </node>
            <node concept="2OqwBi" id="7P_FdVQ3aB2" role="33vP2m">
              <node concept="37vLTw" id="7P_FdVQ3aB3" role="2Oq$k0">
                <ref role="3cqZAo" node="6UWSvq5bk7O" resolve="lr" />
              </node>
              <node concept="liA8E" id="7P_FdVQ3aB4" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~LanguageRuntime.getAspect(java.lang.Class):jetbrains.mps.smodel.runtime.ILanguageAspect" resolve="getAspect" />
                <node concept="3VsKOn" id="7P_FdVQ3aB5" role="37wK5m">
                  <ref role="3VsUkX" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7P_FdVQ3aB6" role="3cqZAp">
          <node concept="3clFbS" id="7P_FdVQ3aB7" role="3clFbx">
            <node concept="3clFbF" id="7P_FdVQ3xJE" role="3cqZAp">
              <node concept="2YIFZM" id="7P_FdVQ3xJD" role="3clFbG">
                <ref role="1Pybhc" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
                <ref role="37wK5l" node="7P_FdVQ3wao" resolve="init" />
                <node concept="37vLTw" id="7P_FdVQ3xJB" role="37wK5m">
                  <ref role="3cqZAo" node="7P_FdVQ3aB0" resolve="aspect" />
                </node>
                <node concept="37vLTw" id="7P_FdVQ3xJC" role="37wK5m">
                  <ref role="3cqZAo" node="6UWSvq5bk7O" resolve="lr" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7P_FdVQ3aBp" role="3clFbw">
            <node concept="10Nm6u" id="7P_FdVQ3aBq" role="3uHU7w" />
            <node concept="37vLTw" id="7P_FdVQ3aBr" role="3uHU7B">
              <ref role="3cqZAo" node="7P_FdVQ3aB0" resolve="aspect" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7P_FdVQ3q$w" role="3cqZAp">
          <node concept="37vLTw" id="7P_FdVQ3q$u" role="3clFbG">
            <ref role="3cqZAo" node="7P_FdVQ3aB0" resolve="aspect" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6UWSvq5bk65" role="3clF45">
        <ref role="3uigEE" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
      </node>
      <node concept="3Tm1VV" id="6UWSvq5bk0t" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7km57Pkjxhg" role="jymVt" />
    <node concept="2YIFZL" id="7P_FdVQ3wao" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="3Tm6S6" id="7P_FdVQ3wap" role="1B3o_S" />
      <node concept="3cqZAl" id="7P_FdVQ3waq" role="3clF45" />
      <node concept="37vLTG" id="7P_FdVQ3w8i" role="3clF46">
        <property role="TrG5h" value="aspect" />
        <node concept="3uibUv" id="7P_FdVQ3w8j" role="1tU5fm">
          <ref role="3uigEE" node="7km57Pkjxf4" resolve="TypeAspectDescriptor" />
        </node>
      </node>
      <node concept="37vLTG" id="7P_FdVQ3w8k" role="3clF46">
        <property role="TrG5h" value="lr" />
        <node concept="3uibUv" id="7P_FdVQ3w8l" role="1tU5fm">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="3clFbS" id="7P_FdVQ3w85" role="3clF47">
        <node concept="3clFbJ" id="7P_FdVQ3w86" role="3cqZAp">
          <node concept="3clFbS" id="7P_FdVQ3w87" role="3clFbx">
            <node concept="3clFbF" id="7P_FdVQ3w88" role="3cqZAp">
              <node concept="2OqwBi" id="7P_FdVQ3w89" role="3clFbG">
                <node concept="37vLTw" id="7P_FdVQ3wal" role="2Oq$k0">
                  <ref role="3cqZAo" node="7P_FdVQ3w8i" resolve="aspect" />
                </node>
                <node concept="liA8E" id="7P_FdVQ3w8b" role="2OqNvi">
                  <ref role="37wK5l" node="7P_FdVQ2EWw" resolve="setLanguageRuntime" />
                  <node concept="37vLTw" id="7P_FdVQ3waj" role="37wK5m">
                    <ref role="3cqZAo" node="7P_FdVQ3w8k" resolve="lr" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7P_FdVQ3w8d" role="3clFbw">
            <node concept="10Nm6u" id="7P_FdVQ3w8e" role="3uHU7w" />
            <node concept="2OqwBi" id="7P_FdVQ3w8f" role="3uHU7B">
              <node concept="37vLTw" id="7P_FdVQ3wak" role="2Oq$k0">
                <ref role="3cqZAo" node="7P_FdVQ3w8i" resolve="aspect" />
              </node>
              <node concept="liA8E" id="7P_FdVQ3w8h" role="2OqNvi">
                <ref role="37wK5l" node="7P_FdVQ2VEI" resolve="languageRuntime" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7P_FdVPW85u" role="jymVt" />
    <node concept="312cEu" id="6UWSvq5b2YZ" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="Vtx" />
      <node concept="3clFbW" id="6UWSvq5bnwr" role="jymVt">
        <node concept="37vLTG" id="6UWSvq5bny4" role="3clF46">
          <property role="TrG5h" value="langDesc" />
          <node concept="3uibUv" id="6UWSvq5bnyg" role="1tU5fm">
            <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
          </node>
        </node>
        <node concept="3cqZAl" id="6UWSvq5bnwt" role="3clF45" />
        <node concept="3Tm1VV" id="6UWSvq5bnwu" role="1B3o_S" />
        <node concept="3clFbS" id="6UWSvq5bnwv" role="3clF47">
          <node concept="3clFbF" id="6UWSvq5bn$q" role="3cqZAp">
            <node concept="37vLTI" id="6UWSvq5bo16" role="3clFbG">
              <node concept="37vLTw" id="6UWSvq5bo4H" role="37vLTx">
                <ref role="3cqZAo" node="6UWSvq5bny4" resolve="langDesc" />
              </node>
              <node concept="2OqwBi" id="6UWSvq5bnE0" role="37vLTJ">
                <node concept="Xjq3P" id="6UWSvq5bn$p" role="2Oq$k0" />
                <node concept="2OwXpG" id="6UWSvq5bnOZ" role="2OqNvi">
                  <ref role="2Oxat5" node="6UWSvq5b30P" resolve="langDesc" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="6UWSvq5bCMn" role="jymVt">
        <property role="TrG5h" value="update" />
        <node concept="37vLTG" id="6UWSvq5bCMP" role="3clF46">
          <property role="TrG5h" value="graph" />
          <node concept="3rvAFt" id="6UWSvq5bDiX" role="1tU5fm">
            <node concept="3uibUv" id="6UWSvq5bDiY" role="3rvQeY">
              <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
            </node>
            <node concept="3uibUv" id="6UWSvq5bDiZ" role="3rvSg0">
              <ref role="3uigEE" node="6UWSvq5b2YZ" resolve="TypeAspectDescriptor.Vtx" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="6UWSvq5bCMp" role="3clF45" />
        <node concept="3Tm1VV" id="6UWSvq5bCMq" role="1B3o_S" />
        <node concept="3clFbS" id="6UWSvq5bCMr" role="3clF47">
          <node concept="3SKdUt" id="6UWSvq5bDkW" role="3cqZAp">
            <node concept="3SKdUq" id="6UWSvq5bDkX" role="3SKWNk">
              <property role="3SKdUp" value="update the graph" />
            </node>
          </node>
          <node concept="1DcWWT" id="6UWSvq5bDkY" role="3cqZAp">
            <node concept="3clFbS" id="6UWSvq5bDkZ" role="2LFqv$">
              <node concept="3clFbJ" id="6UWSvq5bDl0" role="3cqZAp">
                <node concept="2OqwBi" id="6UWSvq5bDl1" role="3clFbw">
                  <node concept="37vLTw" id="6UWSvq5bDl2" role="2Oq$k0">
                    <ref role="3cqZAo" node="6UWSvq5bCMP" resolve="graph" />
                  </node>
                  <node concept="2Nt0df" id="6UWSvq5bDl3" role="2OqNvi">
                    <node concept="37vLTw" id="6UWSvq5bDl4" role="38cxEo">
                      <ref role="3cqZAo" node="6UWSvq5bDlf" resolve="extends_" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="6UWSvq5bDl5" role="3clFbx">
                  <node concept="3clFbF" id="6UWSvq5bDl6" role="3cqZAp">
                    <node concept="2OqwBi" id="6UWSvq5bDl7" role="3clFbG">
                      <node concept="2OqwBi" id="6UWSvq5bDl8" role="2Oq$k0">
                        <node concept="Xjq3P" id="6UWSvq5bDWo" role="2Oq$k0" />
                        <node concept="2OwXpG" id="6UWSvq5bDla" role="2OqNvi">
                          <ref role="2Oxat5" node="6UWSvq5brPb" resolve="extended" />
                        </node>
                      </node>
                      <node concept="TSZUe" id="6UWSvq5bDlb" role="2OqNvi">
                        <node concept="3EllGN" id="6UWSvq5bDlc" role="25WWJ7">
                          <node concept="37vLTw" id="6UWSvq5bDld" role="3ElVtu">
                            <ref role="3cqZAo" node="6UWSvq5bDlf" resolve="extends_" />
                          </node>
                          <node concept="37vLTw" id="6UWSvq5bDle" role="3ElQJh">
                            <ref role="3cqZAo" node="6UWSvq5bCMP" resolve="graph" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="6UWSvq5bDlf" role="1Duv9x">
              <property role="TrG5h" value="extends_" />
              <node concept="3uibUv" id="6UWSvq5bDlg" role="1tU5fm">
                <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
              </node>
            </node>
            <node concept="2OqwBi" id="6UWSvq5bDlh" role="1DdaDG">
              <node concept="37vLTw" id="6UWSvq5bDli" role="2Oq$k0">
                <ref role="3cqZAo" node="6UWSvq5b30P" resolve="langDesc" />
              </node>
              <node concept="liA8E" id="6UWSvq5bDlj" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~LanguageRuntime.getExtendedLanguages():java.util.Collection" resolve="getExtendedLanguages" />
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="6UWSvq5bDlk" role="3cqZAp">
            <node concept="3clFbS" id="6UWSvq5bDll" role="2LFqv$">
              <node concept="3clFbJ" id="6UWSvq5bDlm" role="3cqZAp">
                <node concept="2OqwBi" id="6UWSvq5bDln" role="3clFbw">
                  <node concept="37vLTw" id="6UWSvq5bDlo" role="2Oq$k0">
                    <ref role="3cqZAo" node="6UWSvq5bCMP" resolve="graph" />
                  </node>
                  <node concept="2Nt0df" id="6UWSvq5bDlp" role="2OqNvi">
                    <node concept="37vLTw" id="6UWSvq5bDlq" role="38cxEo">
                      <ref role="3cqZAo" node="6UWSvq5bDl_" resolve="extendedBy" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="6UWSvq5bDlr" role="3clFbx">
                  <node concept="3clFbF" id="6UWSvq5bDls" role="3cqZAp">
                    <node concept="2OqwBi" id="6UWSvq5bDlt" role="3clFbG">
                      <node concept="2OqwBi" id="6UWSvq5bDlu" role="2Oq$k0">
                        <node concept="3EllGN" id="6UWSvq5bDlv" role="2Oq$k0">
                          <node concept="37vLTw" id="6UWSvq5bDlw" role="3ElVtu">
                            <ref role="3cqZAo" node="6UWSvq5bDl_" resolve="extendedBy" />
                          </node>
                          <node concept="37vLTw" id="6UWSvq5bDlx" role="3ElQJh">
                            <ref role="3cqZAo" node="6UWSvq5bCMP" resolve="graph" />
                          </node>
                        </node>
                        <node concept="2OwXpG" id="6UWSvq5bDly" role="2OqNvi">
                          <ref role="2Oxat5" node="6UWSvq5brPb" resolve="extended" />
                        </node>
                      </node>
                      <node concept="TSZUe" id="6UWSvq5bDlz" role="2OqNvi">
                        <node concept="Xjq3P" id="6UWSvq5bE6d" role="25WWJ7" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="6UWSvq5bDl_" role="1Duv9x">
              <property role="TrG5h" value="extendedBy" />
              <node concept="3uibUv" id="6UWSvq5bDlA" role="1tU5fm">
                <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
              </node>
            </node>
            <node concept="2OqwBi" id="6UWSvq5bDlB" role="1DdaDG">
              <node concept="37vLTw" id="6UWSvq5bDlC" role="2Oq$k0">
                <ref role="3cqZAo" node="6UWSvq5b30P" resolve="langDesc" />
              </node>
              <node concept="liA8E" id="6UWSvq5bDlD" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~LanguageRuntime.getExtendingLanguages():java.lang.Iterable" resolve="getExtendingLanguages" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6UWSvq5bCxc" role="jymVt" />
      <node concept="312cEg" id="6UWSvq5b30P" role="jymVt">
        <property role="TrG5h" value="langDesc" />
        <node concept="3Tm6S6" id="6UWSvq5b30Q" role="1B3o_S" />
        <node concept="3uibUv" id="6UWSvq5bjln" role="1tU5fm">
          <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
        </node>
      </node>
      <node concept="312cEg" id="6UWSvq5brPb" role="jymVt">
        <property role="TrG5h" value="extended" />
        <node concept="3Tm6S6" id="6UWSvq5brPc" role="1B3o_S" />
        <node concept="_YKpA" id="6UWSvq5bs2U" role="1tU5fm">
          <node concept="3uibUv" id="6UWSvq5bs3c" role="_ZDj9">
            <ref role="3uigEE" node="6UWSvq5b2YZ" resolve="TypeAspectDescriptor.Vtx" />
          </node>
        </node>
        <node concept="2ShNRf" id="6UWSvq5cmEt" role="33vP2m">
          <node concept="Tc6Ow" id="6UWSvq5cmCP" role="2ShVmc">
            <node concept="3uibUv" id="6UWSvq5cmCQ" role="HW$YZ">
              <ref role="3uigEE" node="6UWSvq5b2YZ" resolve="TypeAspectDescriptor.Vtx" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6UWSvq5cjOk" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7P_FdVPVubi" role="jymVt" />
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
    <node concept="3Tm1VV" id="7km57Pkjxf5" role="1B3o_S" />
    <node concept="3uibUv" id="7km57PkjxgV" role="EKbjA">
      <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
    </node>
    <node concept="3UR2Jj" id="7P_FdVPWD2k" role="lGtFl">
      <node concept="TZ5HA" id="7P_FdVPWD2l" role="TZ5H$">
        <node concept="1dT_AC" id="7P_FdVPWD2m" role="1dT_Ay">
          <property role="1dT_AB" value="All allFor* methods return the list sorted in topological order, so that the extending" />
        </node>
      </node>
      <node concept="TZ5HA" id="7P_FdVPWEBW" role="TZ5H$">
        <node concept="1dT_AC" id="7P_FdVPWEBX" role="1dT_Ay">
          <property role="1dT_AB" value="aspects come first. " />
        </node>
      </node>
    </node>
  </node>
</model>

