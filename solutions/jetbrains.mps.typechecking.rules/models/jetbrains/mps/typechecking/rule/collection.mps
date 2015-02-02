<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d390cf6e-3a05-4c9d-8eb3-bcdfbfd3bf8f(jetbrains.mps.typechecking.rule.collection)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="qiww" ref="r:7e0616dc-e55e-4c35-beca-da14b0c8f8bd(jetbrains.mps.lang.typesystem2.runtime.template)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
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
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5858074156537516430" name="jetbrains.mps.baseLanguage.javadoc.structure.ReturnBlockDocTag" flags="ng" index="x79VA">
        <property id="5858074156537516431" name="text" index="x79VB" />
      </concept>
      <concept id="6832197706140518104" name="jetbrains.mps.baseLanguage.javadoc.structure.DocMethodParameterReference" flags="ng" index="zr_55" />
      <concept id="6832197706140518103" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseParameterReference" flags="ng" index="zr_5a">
        <reference id="6832197706140518108" name="param" index="zr_51" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv">
        <child id="5858074156537516440" name="return" index="x79VK" />
        <child id="8465538089690917625" name="param" index="TUOzN" />
      </concept>
      <concept id="8465538089690881930" name="jetbrains.mps.baseLanguage.javadoc.structure.ParameterBlockDocTag" flags="ng" index="TUZQ0">
        <property id="8465538089690881934" name="text" index="TUZQ4" />
        <child id="6832197706140518123" name="parameter" index="zr_5Q" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="6612597108003615641" name="jetbrains.mps.baseLanguage.javadoc.structure.HTMLElement" flags="ng" index="2U$1Ah">
        <property id="6612597108003615642" name="name" index="2U$1Ai" />
        <child id="6612597108003615643" name="line" index="2U$1Aj" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1180457458947" name="jetbrains.mps.lang.smodel.structure.Concept_GetAllSuperConcepts" flags="nn" index="3oJPKh" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1172323065820" name="jetbrains.mps.lang.smodel.structure.Node_GetConceptOperation" flags="nn" index="3NT_Vc" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1172420572800" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3THzug" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="6fdr4UgftiG">
    <property role="TrG5h" value="RuleTemplateCollection" />
    <node concept="2tJIrI" id="6fdr4UgftDX" role="jymVt" />
    <node concept="3clFbW" id="6fdr4UgfyCL" role="jymVt">
      <node concept="37vLTG" id="12yN8DyL4MP" role="3clF46">
        <property role="TrG5h" value="token" />
        <node concept="3uibUv" id="12yN8DyL5r3" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3cqZAl" id="6fdr4UgfyCN" role="3clF45" />
      <node concept="3Tm1VV" id="6fdr4UgfyCO" role="1B3o_S" />
      <node concept="3clFbS" id="6fdr4UgfyCP" role="3clF47">
        <node concept="3clFbF" id="12yN8DyvDx5" role="3cqZAp">
          <node concept="37vLTI" id="12yN8DyvDT0" role="3clFbG">
            <node concept="2ShNRf" id="12yN8DyvEcM" role="37vLTx">
              <node concept="Tc6Ow" id="12yN8DyFGVe" role="2ShVmc">
                <node concept="3uibUv" id="12yN8DyFHPi" role="HW$YZ">
                  <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateCollection" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="12yN8DyvDx4" role="37vLTJ">
              <ref role="3cqZAo" node="12yN8DyvDuc" resolve="myDelegates" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="12yN8DyL5us" role="3cqZAp">
          <node concept="37vLTI" id="12yN8DyL5uu" role="3clFbG">
            <node concept="37vLTw" id="12yN8DyL7P0" role="37vLTJ">
              <ref role="3cqZAo" node="12yN8DyL5uo" resolve="myToken" />
            </node>
            <node concept="37vLTw" id="12yN8DyL5uA" role="37vLTx">
              <ref role="3cqZAo" node="12yN8DyL4MP" resolve="token" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="12yN8DyFDMw" role="jymVt" />
    <node concept="3clFbW" id="12yN8DyFBRf" role="jymVt">
      <node concept="37vLTG" id="12yN8DyFBRg" role="3clF46">
        <property role="TrG5h" value="delegates" />
        <node concept="A3Dl8" id="12yN8DyFBRh" role="1tU5fm">
          <node concept="3uibUv" id="12yN8DyFBRi" role="A3Ik2">
            <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateCollection" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="12yN8DyFBRj" role="3clF45" />
      <node concept="3Tm1VV" id="12yN8DyFBRk" role="1B3o_S" />
      <node concept="3clFbS" id="12yN8DyFBRl" role="3clF47">
        <node concept="3clFbF" id="12yN8DyFBRm" role="3cqZAp">
          <node concept="37vLTI" id="12yN8DyFBRn" role="3clFbG">
            <node concept="2ShNRf" id="12yN8DyFBRo" role="37vLTx">
              <node concept="Tc6Ow" id="12yN8DyFBRp" role="2ShVmc">
                <node concept="3uibUv" id="12yN8DyFBRq" role="HW$YZ">
                  <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateCollection" />
                </node>
                <node concept="37vLTw" id="12yN8DyFBRr" role="I$8f6">
                  <ref role="3cqZAo" node="12yN8DyFBRg" resolve="delegates" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="12yN8DyFBRs" role="37vLTJ">
              <ref role="3cqZAo" node="12yN8DyvDuc" resolve="myDelegates" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6fdr4UgfyzL" role="jymVt" />
    <node concept="3clFb_" id="12yN8Dyvwxx" role="jymVt">
      <property role="TrG5h" value="updateDelegates" />
      <node concept="37vLTG" id="12yN8DyvwDp" role="3clF46">
        <property role="TrG5h" value="delegates" />
        <node concept="A3Dl8" id="12yN8DyvypT" role="1tU5fm">
          <node concept="3uibUv" id="12yN8DyvypU" role="A3Ik2">
            <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateCollection" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="12yN8Dyvwxz" role="3clF45" />
      <node concept="3Tm1VV" id="12yN8Dyvwx$" role="1B3o_S" />
      <node concept="3clFbS" id="12yN8Dyvwx_" role="3clF47">
        <node concept="3clFbF" id="12yN8DyvFSc" role="3cqZAp">
          <node concept="37vLTI" id="12yN8DyvGg7" role="3clFbG">
            <node concept="2ShNRf" id="12yN8DyvGzZ" role="37vLTx">
              <node concept="Tc6Ow" id="12yN8DyvGq3" role="2ShVmc">
                <node concept="3uibUv" id="12yN8DyvGq4" role="HW$YZ">
                  <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateCollection" />
                </node>
                <node concept="37vLTw" id="12yN8DyvHGu" role="I$8f6">
                  <ref role="3cqZAo" node="12yN8DyvwDp" resolve="delegates" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="12yN8DyvFSb" role="37vLTJ">
              <ref role="3cqZAo" node="12yN8DyvDuc" resolve="myDelegates" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="12yN8Dyvyv6" role="jymVt" />
    <node concept="3clFb_" id="12yN8Dyvyy6" role="jymVt">
      <property role="TrG5h" value="collectTemplates" />
      <node concept="37vLTG" id="12yN8DyvyEA" role="3clF46">
        <property role="TrG5h" value="ruleTemplateManifest" />
        <node concept="3uibUv" id="12yN8Dyvz58" role="1tU5fm">
          <ref role="3uigEE" to="qiww:6w6CYIRh9BG" resolve="AbstractRuleTemplateManifest" />
        </node>
      </node>
      <node concept="3cqZAl" id="12yN8Dyvyy8" role="3clF45" />
      <node concept="3Tm1VV" id="12yN8Dyvyy9" role="1B3o_S" />
      <node concept="3clFbS" id="12yN8Dyvyya" role="3clF47">
        <node concept="3clFbF" id="12yN8DyFk_Y" role="3cqZAp">
          <node concept="37vLTI" id="12yN8DyFkX6" role="3clFbG">
            <node concept="2ShNRf" id="12yN8DyFldw" role="37vLTx">
              <node concept="3rGOSV" id="12yN8DyFl3t" role="2ShVmc">
                <node concept="3THzug" id="12yN8DyFl3u" role="3rHrn6" />
                <node concept="3vKaQO" id="12yN8DyFl3v" role="3rHtpV">
                  <node concept="3uibUv" id="12yN8DyFl3w" role="3O5elw">
                    <ref role="3uigEE" to="qiww:5k_shARMpxh" resolve="AbstractRuleTemplate" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="12yN8DyFk_X" role="37vLTJ">
              <ref role="3cqZAo" node="12yN8DyvDfi" resolve="myTemplates" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="12yN8DyFw_S" role="3cqZAp">
          <node concept="3SKdUq" id="12yN8DyFwRk" role="3SKWNk">
            <property role="3SKdUp" value="TODO user code" />
          </node>
        </node>
        <node concept="3clFbF" id="12yN8DyFlwl" role="3cqZAp">
          <node concept="2OqwBi" id="12yN8DyFlDG" role="3clFbG">
            <node concept="37vLTw" id="12yN8DyFlwj" role="2Oq$k0">
              <ref role="3cqZAo" node="12yN8DyvyEA" resolve="ruleTemplateManifest" />
            </node>
            <node concept="liA8E" id="12yN8DyFmfD" role="2OqNvi">
              <ref role="37wK5l" to="qiww:6w6CYIRhc3I" resolve="collectTemplates" />
              <node concept="2ShNRf" id="12yN8DyFmgA" role="37wK5m">
                <node concept="HV5vD" id="12yN8DyFtMn" role="2ShVmc">
                  <ref role="HV5vE" node="6fdr4Ugfypo" resolve="RuleTemplateCollection.Collector" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6fdr4UgftJ4" role="jymVt" />
    <node concept="3clFb_" id="6fdr4UgfuGk" role="jymVt">
      <property role="TrG5h" value="allTemplates" />
      <node concept="37vLTG" id="12yN8DyvzeF" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="12yN8Dyv_JV" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="12yN8DyF0Te" role="3clF46">
        <property role="TrG5h" value="visited" />
        <node concept="2hMVRd" id="12yN8DyF250" role="1tU5fm">
          <node concept="3uibUv" id="12yN8DyF2bi" role="2hN53Y">
            <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateCollection" />
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="6fdr4UgfxqC" role="3clF45">
        <node concept="3uibUv" id="6fdr4Ugfxr3" role="A3Ik2">
          <ref role="3uigEE" to="qiww:5k_shARMpxh" resolve="AbstractRuleTemplate" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6fdr4UgfuGn" role="1B3o_S" />
      <node concept="3clFbS" id="6fdr4UgfuGo" role="3clF47">
        <node concept="3cpWs8" id="12yN8DyvAUh" role="3cqZAp">
          <node concept="3cpWsn" id="12yN8DyvAUk" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="12yN8DyvAUd" role="1tU5fm">
              <node concept="3uibUv" id="12yN8DyvAUJ" role="_ZDj9">
                <ref role="3uigEE" to="qiww:5k_shARMpxh" resolve="AbstractRuleTemplate" />
              </node>
            </node>
            <node concept="2ShNRf" id="12yN8DyvD8g" role="33vP2m">
              <node concept="Tc6Ow" id="12yN8DyvD72" role="2ShVmc">
                <node concept="3uibUv" id="12yN8DyvD73" role="HW$YZ">
                  <ref role="3uigEE" to="qiww:5k_shARMpxh" resolve="AbstractRuleTemplate" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="12yN8DyvIhk" role="3cqZAp" />
        <node concept="3cpWs8" id="12yN8Dywgfn" role="3cqZAp">
          <node concept="3cpWsn" id="12yN8Dywgfo" role="3cpWs9">
            <property role="TrG5h" value="allConcepts" />
            <node concept="_YKpA" id="12yN8Dywgf4" role="1tU5fm">
              <node concept="3THzug" id="12yN8Dywgf7" role="_ZDj9" />
            </node>
            <node concept="2OqwBi" id="12yN8Dywgfp" role="33vP2m">
              <node concept="3oJPKh" id="12yN8Dywj2R" role="2OqNvi">
                <node concept="1xIGOp" id="12yN8DywjuM" role="1xVPHs" />
              </node>
              <node concept="2OqwBi" id="12yN8DyDCrL" role="2Oq$k0">
                <node concept="37vLTw" id="12yN8DyDC2y" role="2Oq$k0">
                  <ref role="3cqZAo" node="12yN8DyvzeF" resolve="node" />
                </node>
                <node concept="3NT_Vc" id="12yN8DyDDjS" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="12yN8DywVrZ" role="3cqZAp" />
        <node concept="3SKdUt" id="12yN8Dywh_Q" role="3cqZAp">
          <node concept="3SKdUq" id="12yN8DywhDX" role="3SKWNk">
            <property role="3SKdUp" value="assuming the list is sorted from most specific to most abstract" />
          </node>
        </node>
        <node concept="1Dw8fO" id="12yN8Dywu8N" role="3cqZAp">
          <node concept="3cpWsn" id="12yN8Dywu8Q" role="1Duv9x">
            <property role="TrG5h" value="cptIdx" />
            <node concept="10Oyi0" id="12yN8Dywu8U" role="1tU5fm" />
            <node concept="3cmrfG" id="12yN8Dywu8V" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="12yN8Dywu8W" role="1Dwp0S">
            <node concept="37vLTw" id="12yN8Dywu8Z" role="3uHU7B">
              <ref role="3cqZAo" node="12yN8Dywu8Q" resolve="cptIdx" />
            </node>
            <node concept="2OqwBi" id="12yN8Dywug9" role="3uHU7w">
              <node concept="34oBXx" id="12yN8Dywuge" role="2OqNvi" />
              <node concept="37vLTw" id="12yN8Dywugg" role="2Oq$k0">
                <ref role="3cqZAo" node="12yN8Dywgfo" resolve="allConcepts" />
              </node>
            </node>
          </node>
          <node concept="3uNrnE" id="12yN8Dywugh" role="1Dwrff">
            <node concept="37vLTw" id="12yN8Dywugj" role="2$L3a6">
              <ref role="3cqZAo" node="12yN8Dywu8Q" resolve="cptIdx" />
            </node>
          </node>
          <node concept="3clFbS" id="12yN8Dywi36" role="2LFqv$">
            <node concept="3cpWs8" id="12yN8Dywugk" role="3cqZAp">
              <node concept="3cpWsn" id="12yN8Dywugn" role="3cpWs9">
                <property role="TrG5h" value="cpt" />
                <node concept="3THzug" id="12yN8Dywi3d" role="1tU5fm" />
                <node concept="1y4W85" id="12yN8Dywul8" role="33vP2m">
                  <node concept="37vLTw" id="12yN8Dywulb" role="1y566C">
                    <ref role="3cqZAo" node="12yN8Dywgfo" resolve="allConcepts" />
                  </node>
                  <node concept="37vLTw" id="12yN8Dywugp" role="1y58nS">
                    <ref role="3cqZAo" node="12yN8Dywu8Q" resolve="cptIdx" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="12yN8DywsEn" role="3cqZAp" />
            <node concept="3clFbJ" id="12yN8Dyw79t" role="3cqZAp">
              <node concept="3clFbS" id="12yN8Dyw79w" role="3clFbx">
                <node concept="3cpWs8" id="12yN8DywoJ8" role="3cqZAp">
                  <node concept="3cpWsn" id="12yN8DywoJ9" role="3cpWs9">
                    <property role="TrG5h" value="matching" />
                    <node concept="3vKaQO" id="12yN8DyD$_b" role="1tU5fm">
                      <node concept="3uibUv" id="12yN8DyD_eV" role="3O5elw">
                        <ref role="3uigEE" to="qiww:5k_shARMpxh" resolve="AbstractRuleTemplate" />
                      </node>
                    </node>
                    <node concept="3EllGN" id="12yN8DywoJa" role="33vP2m">
                      <node concept="37vLTw" id="12yN8Dywulc" role="3ElVtu">
                        <ref role="3cqZAo" node="12yN8Dywugn" resolve="cpt" />
                      </node>
                      <node concept="37vLTw" id="12yN8DywoJc" role="3ElQJh">
                        <ref role="3cqZAo" node="12yN8DyvDfi" resolve="myTemplates" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="12yN8Dywsy6" role="3cqZAp" />
                <node concept="1DcWWT" id="12yN8DyDOdI" role="3cqZAp">
                  <node concept="3clFbS" id="12yN8DyDOdJ" role="2LFqv$">
                    <node concept="3clFbJ" id="12yN8DyDPmt" role="3cqZAp">
                      <node concept="3clFbS" id="12yN8DyDPmw" role="3clFbx">
                        <node concept="3N13vt" id="12yN8DyDQvt" role="3cqZAp" />
                      </node>
                      <node concept="1Wc70l" id="12yN8DyDQ3G" role="3clFbw">
                        <node concept="2OqwBi" id="12yN8DyDQ9Y" role="3uHU7w">
                          <node concept="37vLTw" id="12yN8DyDQ7A" role="2Oq$k0">
                            <ref role="3cqZAo" node="12yN8DyDOdM" resolve="tpl" />
                          </node>
                          <node concept="liA8E" id="12yN8DyDQnA" role="2OqNvi">
                            <ref role="37wK5l" to="qiww:12yN8DyCjfX" resolve="isExactMatch" />
                          </node>
                        </node>
                        <node concept="3y3z36" id="12yN8DyDPMo" role="3uHU7B">
                          <node concept="37vLTw" id="12yN8DyDPny" role="3uHU7B">
                            <ref role="3cqZAo" node="12yN8Dywu8Q" resolve="cptIdx" />
                          </node>
                          <node concept="3cmrfG" id="12yN8DyDPNL" role="3uHU7w">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="12yN8DyDQw1" role="3cqZAp" />
                    <node concept="3clFbJ" id="12yN8DyDQBv" role="3cqZAp">
                      <node concept="3clFbS" id="12yN8DyDQBy" role="3clFbx">
                        <node concept="3clFbF" id="12yN8DywprF" role="3cqZAp">
                          <node concept="2OqwBi" id="12yN8DywpEM" role="3clFbG">
                            <node concept="37vLTw" id="12yN8DywprE" role="2Oq$k0">
                              <ref role="3cqZAo" node="12yN8DyvAUk" resolve="result" />
                            </node>
                            <node concept="TSZUe" id="12yN8DywrHc" role="2OqNvi">
                              <node concept="37vLTw" id="12yN8DyDRLu" role="25WWJ7">
                                <ref role="3cqZAo" node="12yN8DyDOdM" resolve="tpl" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1rXfSq" id="12yN8DyDZBR" role="3clFbw">
                        <ref role="37wK5l" node="12yN8DywHOS" resolve="testApplicable" />
                        <node concept="37vLTw" id="12yN8DyDZLk" role="37wK5m">
                          <ref role="3cqZAo" node="12yN8DyDOdM" resolve="tpl" />
                        </node>
                        <node concept="37vLTw" id="12yN8DyDZDK" role="37wK5m">
                          <ref role="3cqZAo" node="12yN8DyvzeF" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="12yN8DyDOdM" role="1Duv9x">
                    <property role="TrG5h" value="tpl" />
                    <node concept="3uibUv" id="12yN8DyDOdQ" role="1tU5fm">
                      <ref role="3uigEE" to="qiww:5k_shARMpxh" resolve="AbstractRuleTemplate" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="12yN8DyDOdR" role="1DdaDG">
                    <ref role="3cqZAo" node="12yN8DywoJ9" resolve="matching" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="12yN8DywaUF" role="3clFbw">
                <node concept="37vLTw" id="12yN8Dyw7ap" role="2Oq$k0">
                  <ref role="3cqZAo" node="12yN8DyvDfi" resolve="myTemplates" />
                </node>
                <node concept="2Nt0df" id="12yN8Dywmhb" role="2OqNvi">
                  <node concept="37vLTw" id="12yN8Dywuld" role="38cxEo">
                    <ref role="3cqZAo" node="12yN8Dywugn" resolve="cpt" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="12yN8DyDSJK" role="3cqZAp" />
        <node concept="1DcWWT" id="12yN8DyDU1e" role="3cqZAp">
          <node concept="3clFbS" id="12yN8DyDU1f" role="2LFqv$">
            <node concept="3clFbJ" id="12yN8DyF2Cx" role="3cqZAp">
              <node concept="3clFbS" id="12yN8DyF2C$" role="3clFbx">
                <node concept="3clFbF" id="12yN8DyDUWB" role="3cqZAp">
                  <node concept="2OqwBi" id="12yN8DyDVc7" role="3clFbG">
                    <node concept="37vLTw" id="12yN8DyDUWA" role="2Oq$k0">
                      <ref role="3cqZAo" node="12yN8DyvAUk" resolve="result" />
                    </node>
                    <node concept="X8dFx" id="12yN8DyDWdX" role="2OqNvi">
                      <node concept="2OqwBi" id="12yN8DyDWs4" role="25WWJ7">
                        <node concept="37vLTw" id="12yN8DyDWme" role="2Oq$k0">
                          <ref role="3cqZAo" node="12yN8DyDU1i" resolve="dlg" />
                        </node>
                        <node concept="liA8E" id="12yN8DyDWHw" role="2OqNvi">
                          <ref role="37wK5l" node="6fdr4UgfuGk" resolve="allTemplates" />
                          <node concept="37vLTw" id="12yN8DyDWOB" role="37wK5m">
                            <ref role="3cqZAo" node="12yN8DyvzeF" resolve="node" />
                          </node>
                          <node concept="37vLTw" id="12yN8DyF5mI" role="37wK5m">
                            <ref role="3cqZAo" node="12yN8DyF0Te" resolve="visited" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="12yN8DyF2K$" role="3clFbw">
                <node concept="2OqwBi" id="12yN8DyF39B" role="3fr31v">
                  <node concept="37vLTw" id="12yN8DyF2Mg" role="2Oq$k0">
                    <ref role="3cqZAo" node="12yN8DyF0Te" resolve="visited" />
                  </node>
                  <node concept="3JPx81" id="12yN8DyF4YX" role="2OqNvi">
                    <node concept="37vLTw" id="12yN8DyF51H" role="25WWJ7">
                      <ref role="3cqZAo" node="12yN8DyDU1i" resolve="dlg" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="12yN8DyF5DE" role="3cqZAp">
              <node concept="2OqwBi" id="12yN8DyF5Vo" role="3clFbG">
                <node concept="37vLTw" id="12yN8DyF5DC" role="2Oq$k0">
                  <ref role="3cqZAo" node="12yN8DyF0Te" resolve="visited" />
                </node>
                <node concept="TSZUe" id="12yN8DyF6Vo" role="2OqNvi">
                  <node concept="37vLTw" id="12yN8DyF77D" role="25WWJ7">
                    <ref role="3cqZAo" node="12yN8DyDU1i" resolve="dlg" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="12yN8DyDU1i" role="1Duv9x">
            <property role="TrG5h" value="dlg" />
            <node concept="3uibUv" id="12yN8DyDU1m" role="1tU5fm">
              <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateCollection" />
            </node>
          </node>
          <node concept="37vLTw" id="12yN8DyDU1n" role="1DdaDG">
            <ref role="3cqZAo" node="12yN8DyvDuc" resolve="myDelegates" />
          </node>
        </node>
        <node concept="3clFbH" id="12yN8DyDXQZ" role="3cqZAp" />
        <node concept="3cpWs6" id="12yN8DyDYJd" role="3cqZAp">
          <node concept="37vLTw" id="12yN8DyDYJe" role="3cqZAk">
            <ref role="3cqZAo" node="12yN8DyvAUk" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="12yN8Dyv_NV" role="lGtFl">
        <node concept="TZ5HA" id="12yN8Dyv_NW" role="TZ5H$">
          <node concept="1dT_AC" id="12yN8Dyv_NX" role="1dT_Ay">
            <property role="1dT_AB" value="Searches and returns all rule templates applicable to the specified node. Extracts the node's concept to search for matching templates." />
          </node>
        </node>
        <node concept="TZ5HA" id="12yN8DyvA3F" role="TZ5H$">
          <node concept="1dT_AC" id="12yN8DyvA3G" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
          <node concept="2U$1Ah" id="12yN8DyE1vx" role="1dT_Ay">
            <property role="2U$1Ai" value="p" />
            <node concept="TZ5HA" id="12yN8DyE1vy" role="2U$1Aj" />
          </node>
          <node concept="1dT_AC" id="12yN8DyE1vw" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="12yN8DyvA3p" role="TZ5H$">
          <node concept="1dT_AC" id="12yN8DyvA3q" role="1dT_Ay">
            <property role="1dT_AB" value="First, searches own template collection for the exact and inexact match(-es)." />
          </node>
        </node>
        <node concept="TZ5HA" id="12yN8DyvA54" role="TZ5H$">
          <node concept="1dT_AC" id="12yN8DyvA55" role="1dT_Ay">
            <property role="1dT_AB" value="Calls &quot;isApplicable&quot; on each found template, skips not applicable. " />
          </node>
        </node>
        <node concept="TZ5HA" id="12yN8DyvA7q" role="TZ5H$">
          <node concept="1dT_AC" id="12yN8DyvA7r" role="1dT_Ay">
            <property role="1dT_AB" value="Recursively calls allTemplates on the delegates. " />
          </node>
        </node>
        <node concept="TUZQ0" id="12yN8Dyv_NY" role="TUOzN">
          <property role="TUZQ4" value="node to search templates for" />
          <node concept="zr_55" id="12yN8Dyv_O0" role="zr_5Q">
            <ref role="zr_51" node="12yN8DyvzeF" resolve="node" />
          </node>
        </node>
        <node concept="x79VA" id="12yN8Dyv_O1" role="x79VK">
          <property role="x79VB" value="all templates applicable to node" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5NuEpF1qqA9" role="jymVt" />
    <node concept="3clFb_" id="5NuEpF1qn9x" role="jymVt">
      <property role="TrG5h" value="allTemplatesWithNoInput" />
      <node concept="37vLTG" id="5NuEpF1qn9$" role="3clF46">
        <property role="TrG5h" value="visited" />
        <node concept="2hMVRd" id="5NuEpF1qn9_" role="1tU5fm">
          <node concept="3uibUv" id="5NuEpF1qn9A" role="2hN53Y">
            <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateCollection" />
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="5NuEpF1qn9B" role="3clF45">
        <node concept="3uibUv" id="5NuEpF1qn9C" role="A3Ik2">
          <ref role="3uigEE" to="qiww:5k_shARMpxh" resolve="AbstractRuleTemplate" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5NuEpF1qn9D" role="1B3o_S" />
      <node concept="3clFbS" id="5NuEpF1qn9E" role="3clF47">
        <node concept="3cpWs8" id="5NuEpF1qn9F" role="3cqZAp">
          <node concept="3cpWsn" id="5NuEpF1qn9G" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="5NuEpF1qn9H" role="1tU5fm">
              <node concept="3uibUv" id="5NuEpF1qn9I" role="_ZDj9">
                <ref role="3uigEE" to="qiww:5k_shARMpxh" resolve="AbstractRuleTemplate" />
              </node>
            </node>
            <node concept="2ShNRf" id="5NuEpF1qn9J" role="33vP2m">
              <node concept="Tc6Ow" id="5NuEpF1qn9K" role="2ShVmc">
                <node concept="3uibUv" id="5NuEpF1qn9L" role="HW$YZ">
                  <ref role="3uigEE" to="qiww:5k_shARMpxh" resolve="AbstractRuleTemplate" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5NuEpF1qn9M" role="3cqZAp" />
        <node concept="3clFbJ" id="5NuEpF1qnaj" role="3cqZAp">
          <node concept="3clFbS" id="5NuEpF1qnak" role="3clFbx">
            <node concept="3cpWs8" id="5NuEpF1qnal" role="3cqZAp">
              <node concept="3cpWsn" id="5NuEpF1qnam" role="3cpWs9">
                <property role="TrG5h" value="matching" />
                <node concept="3vKaQO" id="5NuEpF1qnan" role="1tU5fm">
                  <node concept="3uibUv" id="5NuEpF1qnao" role="3O5elw">
                    <ref role="3uigEE" to="qiww:5k_shARMpxh" resolve="AbstractRuleTemplate" />
                  </node>
                </node>
                <node concept="3EllGN" id="5NuEpF1qnap" role="33vP2m">
                  <node concept="10Nm6u" id="5NuEpF1qPk$" role="3ElVtu" />
                  <node concept="37vLTw" id="5NuEpF1qnar" role="3ElQJh">
                    <ref role="3cqZAo" node="12yN8DyvDfi" resolve="myTemplates" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5NuEpF1qnas" role="3cqZAp" />
            <node concept="1DcWWT" id="5NuEpF1qnat" role="3cqZAp">
              <node concept="3clFbS" id="5NuEpF1qnau" role="2LFqv$">
                <node concept="3clFbJ" id="5NuEpF1qnaE" role="3cqZAp">
                  <node concept="3clFbS" id="5NuEpF1qnaF" role="3clFbx">
                    <node concept="3clFbF" id="5NuEpF1qnaG" role="3cqZAp">
                      <node concept="2OqwBi" id="5NuEpF1qnaH" role="3clFbG">
                        <node concept="37vLTw" id="5NuEpF1qnaI" role="2Oq$k0">
                          <ref role="3cqZAo" node="5NuEpF1qn9G" resolve="result" />
                        </node>
                        <node concept="TSZUe" id="5NuEpF1qnaJ" role="2OqNvi">
                          <node concept="37vLTw" id="5NuEpF1qnaK" role="25WWJ7">
                            <ref role="3cqZAo" node="5NuEpF1qnaO" resolve="tpl" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="5NuEpF1qnaL" role="3clFbw">
                    <ref role="37wK5l" node="12yN8DywHOS" resolve="testApplicable" />
                    <node concept="37vLTw" id="5NuEpF1qnaM" role="37wK5m">
                      <ref role="3cqZAo" node="5NuEpF1qnaO" resolve="tpl" />
                    </node>
                    <node concept="10Nm6u" id="5NuEpF1qPKH" role="37wK5m" />
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="5NuEpF1qnaO" role="1Duv9x">
                <property role="TrG5h" value="tpl" />
                <node concept="3uibUv" id="5NuEpF1qnaP" role="1tU5fm">
                  <ref role="3uigEE" to="qiww:5k_shARMpxh" resolve="AbstractRuleTemplate" />
                </node>
              </node>
              <node concept="37vLTw" id="5NuEpF1qnaQ" role="1DdaDG">
                <ref role="3cqZAo" node="5NuEpF1qnam" resolve="matching" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5NuEpF1qnaR" role="3clFbw">
            <node concept="37vLTw" id="5NuEpF1qnaS" role="2Oq$k0">
              <ref role="3cqZAo" node="12yN8DyvDfi" resolve="myTemplates" />
            </node>
            <node concept="2Nt0df" id="5NuEpF1qnaT" role="2OqNvi">
              <node concept="10Nm6u" id="5NuEpF1qPa2" role="38cxEo" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5NuEpF1qnaV" role="3cqZAp" />
        <node concept="1DcWWT" id="5NuEpF1qnaW" role="3cqZAp">
          <node concept="3clFbS" id="5NuEpF1qnaX" role="2LFqv$">
            <node concept="3clFbJ" id="5NuEpF1qnaY" role="3cqZAp">
              <node concept="3clFbS" id="5NuEpF1qnaZ" role="3clFbx">
                <node concept="3clFbF" id="5NuEpF1qnb0" role="3cqZAp">
                  <node concept="2OqwBi" id="5NuEpF1qnb1" role="3clFbG">
                    <node concept="37vLTw" id="5NuEpF1qnb2" role="2Oq$k0">
                      <ref role="3cqZAo" node="5NuEpF1qn9G" resolve="result" />
                    </node>
                    <node concept="X8dFx" id="5NuEpF1qnb3" role="2OqNvi">
                      <node concept="2OqwBi" id="5NuEpF1qnb4" role="25WWJ7">
                        <node concept="37vLTw" id="5NuEpF1qnb5" role="2Oq$k0">
                          <ref role="3cqZAo" node="5NuEpF1qnbj" resolve="dlg" />
                        </node>
                        <node concept="liA8E" id="5NuEpF1qnb6" role="2OqNvi">
                          <ref role="37wK5l" node="5NuEpF1qn9x" resolve="allTemplatesWithNoInput" />
                          <node concept="37vLTw" id="5NuEpF1qnb8" role="37wK5m">
                            <ref role="3cqZAo" node="5NuEpF1qn9$" resolve="visited" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="5NuEpF1qnb9" role="3clFbw">
                <node concept="2OqwBi" id="5NuEpF1qnba" role="3fr31v">
                  <node concept="37vLTw" id="5NuEpF1qnbb" role="2Oq$k0">
                    <ref role="3cqZAo" node="5NuEpF1qn9$" resolve="visited" />
                  </node>
                  <node concept="3JPx81" id="5NuEpF1qnbc" role="2OqNvi">
                    <node concept="37vLTw" id="5NuEpF1qnbd" role="25WWJ7">
                      <ref role="3cqZAo" node="5NuEpF1qnbj" resolve="dlg" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5NuEpF1qnbe" role="3cqZAp">
              <node concept="2OqwBi" id="5NuEpF1qnbf" role="3clFbG">
                <node concept="37vLTw" id="5NuEpF1qnbg" role="2Oq$k0">
                  <ref role="3cqZAo" node="5NuEpF1qn9$" resolve="visited" />
                </node>
                <node concept="TSZUe" id="5NuEpF1qnbh" role="2OqNvi">
                  <node concept="37vLTw" id="5NuEpF1qnbi" role="25WWJ7">
                    <ref role="3cqZAo" node="5NuEpF1qnbj" resolve="dlg" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5NuEpF1qnbj" role="1Duv9x">
            <property role="TrG5h" value="dlg" />
            <node concept="3uibUv" id="5NuEpF1qnbk" role="1tU5fm">
              <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateCollection" />
            </node>
          </node>
          <node concept="37vLTw" id="5NuEpF1qnbl" role="1DdaDG">
            <ref role="3cqZAo" node="12yN8DyvDuc" resolve="myDelegates" />
          </node>
        </node>
        <node concept="3clFbH" id="5NuEpF1qnbm" role="3cqZAp" />
        <node concept="3cpWs6" id="5NuEpF1qnbn" role="3cqZAp">
          <node concept="37vLTw" id="5NuEpF1qnbo" role="3cqZAk">
            <ref role="3cqZAo" node="5NuEpF1qn9G" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="5NuEpF1qnbp" role="lGtFl">
        <node concept="TZ5HA" id="5NuEpF1qnbq" role="TZ5H$">
          <node concept="1dT_AC" id="5NuEpF1qnbr" role="1dT_Ay">
            <property role="1dT_AB" value="Searches and returns all rule templates applicable without the node." />
          </node>
        </node>
        <node concept="TZ5HA" id="5NuEpF1qnbs" role="TZ5H$">
          <node concept="1dT_AC" id="5NuEpF1qnbt" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
          <node concept="2U$1Ah" id="5NuEpF1qnbu" role="1dT_Ay">
            <property role="2U$1Ai" value="p" />
            <node concept="TZ5HA" id="5NuEpF1qnbv" role="2U$1Aj" />
          </node>
          <node concept="1dT_AC" id="5NuEpF1qnbw" role="1dT_Ay">
            <property role="1dT_AB" value="" />
          </node>
        </node>
        <node concept="TZ5HA" id="5NuEpF1qnbx" role="TZ5H$" />
        <node concept="TZ5HA" id="5NuEpF1qnbz" role="TZ5H$">
          <node concept="1dT_AC" id="5NuEpF1qnb$" role="1dT_Ay">
            <property role="1dT_AB" value="Calls &quot;isApplicable&quot; on each found template, skips not applicable. " />
          </node>
        </node>
        <node concept="TZ5HA" id="5NuEpF1qnb_" role="TZ5H$">
          <node concept="1dT_AC" id="5NuEpF1qnbA" role="1dT_Ay">
            <property role="1dT_AB" value="Recursively calls allTemplatesWithNoInput on the delegates. " />
          </node>
        </node>
        <node concept="x79VA" id="5NuEpF1qnbD" role="x79VK">
          <property role="x79VB" value="all templates applicable to node" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6fdr4UgfyxB" role="jymVt" />
    <node concept="2tJIrI" id="5NuEpF1qkS_" role="jymVt" />
    <node concept="2tJIrI" id="12yN8DyLelu" role="jymVt" />
    <node concept="3clFb_" id="12yN8DyLgB9" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="12yN8DyLgBa" role="1B3o_S" />
      <node concept="17QB3L" id="2pvEdqukxI0" role="3clF45" />
      <node concept="3clFbS" id="12yN8DyLgBd" role="3clF47">
        <node concept="3clFbF" id="12yN8DyLiTf" role="3cqZAp">
          <node concept="3cpWs3" id="12yN8DyMfYl" role="3clFbG">
            <node concept="3cpWs3" id="12yN8DyMg_a" role="3uHU7B">
              <node concept="2OqwBi" id="12yN8DyMhuP" role="3uHU7w">
                <node concept="37vLTw" id="12yN8DyMgOv" role="2Oq$k0">
                  <ref role="3cqZAo" node="12yN8DyvDuc" resolve="myDelegates" />
                </node>
                <node concept="34oBXx" id="12yN8DyMiEC" role="2OqNvi" />
              </node>
              <node concept="3cpWs3" id="12yN8DyLkca" role="3uHU7B">
                <node concept="3cpWs3" id="12yN8DyLkCn" role="3uHU7B">
                  <node concept="3cpWs3" id="12yN8DyLiXM" role="3uHU7B">
                    <node concept="3cpWs3" id="12yN8DyLjfC" role="3uHU7B">
                      <node concept="2YIFZM" id="12yN8DyLjnT" role="3uHU7w">
                        <ref role="37wK5l" to="e2lb:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                        <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                        <node concept="37vLTw" id="12yN8DyLjvN" role="37wK5m">
                          <ref role="3cqZAo" node="12yN8DyL5uo" resolve="myToken" />
                        </node>
                      </node>
                      <node concept="3cpWs3" id="7Oc59RSEaWh" role="3uHU7B">
                        <node concept="2OqwBi" id="7Oc59RSEbhU" role="3uHU7B">
                          <node concept="1rXfSq" id="7Oc59RSEaXF" role="2Oq$k0">
                            <ref role="37wK5l" to="e2lb:~Object.getClass():java.lang.Class" resolve="getClass" />
                          </node>
                          <node concept="liA8E" id="7Oc59RSEbW0" role="2OqNvi">
                            <ref role="37wK5l" to="e2lb:~Class.getSimpleName():java.lang.String" resolve="getSimpleName" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="12yN8DyLiXS" role="3uHU7w">
                          <property role="Xl_RC" value="(" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="12yN8DyLiXU" role="3uHU7w">
                      <property role="Xl_RC" value=") {" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="12yN8DyMeDH" role="3uHU7w">
                    <node concept="37vLTw" id="12yN8DyMeg9" role="2Oq$k0">
                      <ref role="3cqZAo" node="12yN8DyvDfi" resolve="myTemplates" />
                    </node>
                    <node concept="34oBXx" id="12yN8DyMfS1" role="2OqNvi" />
                  </node>
                </node>
                <node concept="Xl_RD" id="12yN8DyMfYr" role="3uHU7w">
                  <property role="Xl_RC" value=" templates, " />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="12yN8DyMfYt" role="3uHU7w">
              <property role="Xl_RC" value=" delegates}" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="12yN8DyLgBe" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="12yN8DywF8F" role="jymVt" />
    <node concept="3clFb_" id="12yN8DywHOS" role="jymVt">
      <property role="TrG5h" value="testApplicable" />
      <node concept="37vLTG" id="12yN8DywN3_" role="3clF46">
        <property role="TrG5h" value="template" />
        <node concept="3uibUv" id="12yN8DywNYQ" role="1tU5fm">
          <ref role="3uigEE" to="qiww:5k_shARMpxh" resolve="AbstractRuleTemplate" />
        </node>
      </node>
      <node concept="37vLTG" id="12yN8DywO11" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="12yN8DywOWo" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="12yN8DywJJa" role="3clF45" />
      <node concept="3Tm6S6" id="12yN8DywIOC" role="1B3o_S" />
      <node concept="3clFbS" id="12yN8DywHOW" role="3clF47">
        <node concept="3SKdUt" id="12yN8Dywplp" role="3cqZAp">
          <node concept="3SKdUq" id="12yN8DywpqY" role="3SKWNk">
            <property role="3SKdUp" value="TODO user code" />
          </node>
        </node>
        <node concept="3clFbF" id="12yN8DywPWF" role="3cqZAp">
          <node concept="2OqwBi" id="12yN8DywPWH" role="3clFbG">
            <node concept="37vLTw" id="12yN8DywPWI" role="2Oq$k0">
              <ref role="3cqZAo" node="12yN8DywN3_" resolve="template" />
            </node>
            <node concept="liA8E" id="12yN8DywPWJ" role="2OqNvi">
              <ref role="37wK5l" to="qiww:5k_shARM_y2" resolve="isApplicable" />
              <node concept="37vLTw" id="12yN8DywPWK" role="37wK5m">
                <ref role="3cqZAo" node="12yN8DywO11" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="12yN8DywOXd" role="jymVt" />
    <node concept="312cEu" id="6fdr4Ugfypo" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Collector" />
      <node concept="2tJIrI" id="12yN8DyFmwH" role="jymVt" />
      <node concept="3clFb_" id="6fdr4Ugfypq" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="addTemplate" />
        <node concept="37vLTG" id="6fdr4Ugfypr" role="3clF46">
          <property role="TrG5h" value="ruleTemplate" />
          <node concept="3uibUv" id="6fdr4Ugfyps" role="1tU5fm">
            <ref role="3uigEE" to="qiww:5k_shARMpxh" resolve="AbstractRuleTemplate" />
          </node>
        </node>
        <node concept="3cqZAl" id="6fdr4Ugfypt" role="3clF45" />
        <node concept="3Tm1VV" id="6fdr4Ugfypu" role="1B3o_S" />
        <node concept="3clFbS" id="6fdr4Ugfypv" role="3clF47">
          <node concept="3cpWs8" id="12yN8DyF8dC" role="3cqZAp">
            <node concept="3cpWsn" id="12yN8DyF8dD" role="3cpWs9">
              <property role="TrG5h" value="templates" />
              <node concept="3vKaQO" id="12yN8DyF8dz" role="1tU5fm">
                <node concept="3uibUv" id="12yN8DyF8dA" role="3O5elw">
                  <ref role="3uigEE" to="qiww:5k_shARMpxh" resolve="AbstractRuleTemplate" />
                </node>
              </node>
              <node concept="3EllGN" id="12yN8DyF8dE" role="33vP2m">
                <node concept="2OqwBi" id="12yN8DyF8dF" role="3ElVtu">
                  <node concept="37vLTw" id="12yN8DyF8dG" role="2Oq$k0">
                    <ref role="3cqZAo" node="6fdr4Ugfypr" resolve="ruleTemplate" />
                  </node>
                  <node concept="liA8E" id="12yN8DyF8dH" role="2OqNvi">
                    <ref role="37wK5l" to="qiww:5k_shARMCYi" resolve="applicableConcept" />
                  </node>
                </node>
                <node concept="37vLTw" id="12yN8DyF8dI" role="3ElQJh">
                  <ref role="3cqZAo" node="12yN8DyvDfi" resolve="myTemplates" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="12yN8DyF8Lh" role="3cqZAp">
            <node concept="3clFbS" id="12yN8DyF8Lk" role="3clFbx">
              <node concept="3clFbF" id="12yN8DyFb4a" role="3cqZAp">
                <node concept="37vLTI" id="12yN8DyFb$s" role="3clFbG">
                  <node concept="1eOMI4" id="12yN8DyFbPy" role="37vLTx">
                    <node concept="37vLTI" id="12yN8DyFcW3" role="1eOMHV">
                      <node concept="2ShNRf" id="12yN8DyFd3p" role="37vLTx">
                        <node concept="Tc6Ow" id="12yN8DyFgDP" role="2ShVmc">
                          <node concept="3uibUv" id="12yN8DyFhs0" role="HW$YZ">
                            <ref role="3uigEE" to="qiww:5k_shARMpxh" resolve="AbstractRuleTemplate" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="12yN8DyFcwR" role="37vLTJ">
                        <ref role="3cqZAo" node="12yN8DyF8dD" resolve="templates" />
                      </node>
                    </node>
                  </node>
                  <node concept="3EllGN" id="12yN8DyFb4c" role="37vLTJ">
                    <node concept="2OqwBi" id="12yN8DyFb4d" role="3ElVtu">
                      <node concept="37vLTw" id="12yN8DyFb4e" role="2Oq$k0">
                        <ref role="3cqZAo" node="6fdr4Ugfypr" resolve="ruleTemplate" />
                      </node>
                      <node concept="liA8E" id="12yN8DyFb4f" role="2OqNvi">
                        <ref role="37wK5l" to="qiww:5k_shARMCYi" resolve="applicableConcept" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="12yN8DyFb4g" role="3ElQJh">
                      <ref role="3cqZAo" node="12yN8DyvDfi" resolve="myTemplates" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="12yN8DyF9ku" role="3clFbw">
              <node concept="10Nm6u" id="12yN8DyF9rO" role="3uHU7w" />
              <node concept="37vLTw" id="12yN8DyF8Ts" role="3uHU7B">
                <ref role="3cqZAo" node="12yN8DyF8dD" resolve="templates" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="12yN8DyF7fx" role="3cqZAp">
            <node concept="2OqwBi" id="12yN8DyFhYa" role="3clFbG">
              <node concept="37vLTw" id="12yN8DyF8dJ" role="2Oq$k0">
                <ref role="3cqZAo" node="12yN8DyF8dD" resolve="templates" />
              </node>
              <node concept="TSZUe" id="12yN8DyFjVE" role="2OqNvi">
                <node concept="37vLTw" id="12yN8DyFjYm" role="25WWJ7">
                  <ref role="3cqZAo" node="6fdr4Ugfypr" resolve="ruleTemplate" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="12yN8DyFtSY" role="jymVt" />
      <node concept="3Tm6S6" id="12yN8DyF9w7" role="1B3o_S" />
      <node concept="3uibUv" id="6fdr4Ugfypy" role="EKbjA">
        <ref role="3uigEE" to="qiww:6w6CYIRhcpa" resolve="RuleTemplateCollector" />
      </node>
    </node>
    <node concept="2tJIrI" id="6fdr4UgfynW" role="jymVt" />
    <node concept="312cEg" id="12yN8DyvDfi" role="jymVt">
      <property role="TrG5h" value="myTemplates" />
      <node concept="3Tm6S6" id="12yN8DyvDfj" role="1B3o_S" />
      <node concept="3rvAFt" id="12yN8Dyw7uY" role="1tU5fm">
        <node concept="3THzug" id="12yN8Dywani" role="3rvQeY" />
        <node concept="3vKaQO" id="12yN8DyDzne" role="3rvSg0">
          <node concept="3uibUv" id="12yN8DyDzVW" role="3O5elw">
            <ref role="3uigEE" to="qiww:5k_shARMpxh" resolve="AbstractRuleTemplate" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="12yN8DyvDd7" role="jymVt" />
    <node concept="312cEg" id="12yN8DyvDuc" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myDelegates" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="12yN8DyvDnh" role="1B3o_S" />
      <node concept="_YKpA" id="12yN8DyvDpz" role="1tU5fm">
        <node concept="3uibUv" id="12yN8DyvDtI" role="_ZDj9">
          <ref role="3uigEE" node="6fdr4UgftiG" resolve="RuleTemplateCollection" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="12yN8DyL7Uu" role="jymVt" />
    <node concept="3Tm1VV" id="6fdr4UgftiH" role="1B3o_S" />
    <node concept="312cEg" id="12yN8DyL5uo" role="jymVt">
      <property role="TrG5h" value="myToken" />
      <node concept="3Tm6S6" id="12yN8DyL5up" role="1B3o_S" />
      <node concept="3uibUv" id="12yN8DyL5ur" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
      </node>
    </node>
  </node>
</model>

