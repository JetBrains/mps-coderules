<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4caa22a9-5195-4617-8800-5f9f74cc4480(jetbrains.mps.lang.typesystem2.helper.plugin)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="8" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
  </languages>
  <imports>
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="4it6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.loading(MPS.Core/)" />
    <import index="w0gx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.structure.modules(MPS.Core/)" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1204478074808" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_MPSProject" flags="nn" index="1KvdUw" />
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178834" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDeclaration" flags="ng" index="2uRRBy">
        <child id="481983775135178836" name="initBlock" index="2uRRB$" />
        <child id="481983775135178837" name="disposeBlock" index="2uRRB_" />
      </concept>
      <concept id="481983775135178819" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDisposeBlock" flags="in" index="2uRRBN" />
      <concept id="481983775135178825" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginInitBlock" flags="in" index="2uRRBT" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
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
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
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
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
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
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
    </language>
  </registry>
  <node concept="2DaZZR" id="2zU3cYqx4HT" />
  <node concept="2uRRBy" id="2zU3cYqx4HU">
    <property role="TrG5h" value="TypesModelManagerLifecycle" />
    <node concept="2uRRBT" id="2zU3cYqx4Pl" role="2uRRB$">
      <node concept="3clFbS" id="2zU3cYqx4Pm" role="2VODD2">
        <node concept="3clFbF" id="2zU3cYqyvdE" role="3cqZAp">
          <node concept="2YIFZM" id="2zU3cYqyvud" role="3clFbG">
            <ref role="37wK5l" node="2zU3cYqyaC9" resolve="init" />
            <ref role="1Pybhc" node="2zU3cYqxbbL" resolve="TypesModelManager" />
            <node concept="2OqwBi" id="4Z$O9mrR9Ws" role="37wK5m">
              <node concept="1KvdUw" id="2zU3cYqyvuE" role="2Oq$k0" />
              <node concept="liA8E" id="4Z$O9mrRaYX" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="2zU3cYqx4PF" role="2uRRB_">
      <node concept="3clFbS" id="2zU3cYqx4PG" role="2VODD2">
        <node concept="3clFbF" id="2zU3cYqyvxL" role="3cqZAp">
          <node concept="2YIFZM" id="2zU3cYqyvCY" role="3clFbG">
            <ref role="37wK5l" node="2zU3cYqyg2V" resolve="dispose" />
            <ref role="1Pybhc" node="2zU3cYqxbbL" resolve="TypesModelManager" />
            <node concept="2OqwBi" id="4Z$O9mrRbwd" role="37wK5m">
              <node concept="1KvdUw" id="2zU3cYqyvCZ" role="2Oq$k0" />
              <node concept="liA8E" id="4Z$O9mrRcyI" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2zU3cYqxbbL">
    <property role="TrG5h" value="TypesModelManager" />
    <node concept="2tJIrI" id="2zU3cYq$gq1" role="jymVt" />
    <node concept="Wx3nA" id="2zU3cYqxbiF" role="jymVt">
      <property role="TrG5h" value="ourInstances" />
      <node concept="3Tm6S6" id="2zU3cYqxbiH" role="1B3o_S" />
      <node concept="_YKpA" id="2zU3cYqxblW" role="1tU5fm">
        <node concept="3uibUv" id="2zU3cYqxbs4" role="_ZDj9">
          <ref role="3uigEE" node="2zU3cYqxbbL" resolve="TypesModelManager" />
        </node>
      </node>
      <node concept="2ShNRf" id="2zU3cYqxbtJ" role="33vP2m">
        <node concept="Tc6Ow" id="2zU3cYqxbtt" role="2ShVmc">
          <node concept="3uibUv" id="2zU3cYqxbtu" role="HW$YZ">
            <ref role="3uigEE" node="2zU3cYqxbbL" resolve="TypesModelManager" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2zU3cYqxbcn" role="jymVt" />
    <node concept="2YIFZL" id="2zU3cYqxb_u" role="jymVt">
      <property role="TrG5h" value="get" />
      <node concept="3uibUv" id="2zU3cYqxbIi" role="3clF45">
        <ref role="3uigEE" node="2zU3cYqxbbL" resolve="TypesModelManager" />
      </node>
      <node concept="3Tm1VV" id="2zU3cYqxb_x" role="1B3o_S" />
      <node concept="3clFbS" id="2zU3cYqxb_y" role="3clF47">
        <node concept="3clFbF" id="2zU3cYqyglL" role="3cqZAp">
          <node concept="2OqwBi" id="2zU3cYqyhHU" role="3clFbG">
            <node concept="37vLTw" id="2zU3cYqyglK" role="2Oq$k0">
              <ref role="3cqZAo" node="2zU3cYqxbiF" resolve="ourInstances" />
            </node>
            <node concept="1z4cxt" id="2zU3cYqyjeL" role="2OqNvi">
              <node concept="1bVj0M" id="2zU3cYqyjeN" role="23t8la">
                <node concept="3clFbS" id="2zU3cYqyjeO" role="1bW5cS">
                  <node concept="3clFbF" id="2zU3cYqyjmD" role="3cqZAp">
                    <node concept="3clFbC" id="2zU3cYqyk6M" role="3clFbG">
                      <node concept="37vLTw" id="2zU3cYqykdZ" role="3uHU7w">
                        <ref role="3cqZAo" node="2zU3cYqxbOL" resolve="repository" />
                      </node>
                      <node concept="2OqwBi" id="2zU3cYqyjwi" role="3uHU7B">
                        <node concept="37vLTw" id="2zU3cYqyjmC" role="2Oq$k0">
                          <ref role="3cqZAo" node="2zU3cYqyjeP" resolve="it" />
                        </node>
                        <node concept="2OwXpG" id="4Z$O9mrR2Gp" role="2OqNvi">
                          <ref role="2Oxat5" node="4Z$O9mrQQ_h" resolve="repository" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2zU3cYqyjeP" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2zU3cYqyjeQ" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2zU3cYqxbOL" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="4Z$O9mrR0Fd" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2zU3cYqxbuM" role="jymVt" />
    <node concept="2YIFZL" id="2zU3cYqyaC9" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="37vLTG" id="2zU3cYqyaDO" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="4Z$O9mrR0sF" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3cqZAl" id="2zU3cYqyg0Y" role="3clF45" />
      <node concept="3Tm1VV" id="6$7vuu2xw$0" role="1B3o_S" />
      <node concept="3clFbS" id="2zU3cYqyaCd" role="3clF47">
        <node concept="3clFbF" id="2zU3cYqyaX5" role="3cqZAp">
          <node concept="2OqwBi" id="2zU3cYqycW6" role="3clFbG">
            <node concept="37vLTw" id="2zU3cYqyaX4" role="2Oq$k0">
              <ref role="3cqZAo" node="2zU3cYqxbiF" resolve="ourInstances" />
            </node>
            <node concept="TSZUe" id="2zU3cYqyesI" role="2OqNvi">
              <node concept="2ShNRf" id="2zU3cYqyevC" role="25WWJ7">
                <node concept="1pGfFk" id="2zU3cYqyeYl" role="2ShVmc">
                  <ref role="37wK5l" node="2zU3cYqyeVe" resolve="TypesModelManager" />
                  <node concept="37vLTw" id="2zU3cYqyfIU" role="37wK5m">
                    <ref role="3cqZAo" node="2zU3cYqyaDO" resolve="repository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="6$7vuu2xyFT" role="lGtFl">
        <node concept="TZ5HA" id="6$7vuu2xyFU" role="TZ5H$">
          <node concept="1dT_AC" id="6$7vuu2xyFV" role="1dT_Ay">
            <property role="1dT_AB" value="Made public only for tests." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2zU3cYqyg8C" role="jymVt" />
    <node concept="2YIFZL" id="2zU3cYqyg2V" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="37vLTG" id="2zU3cYqyg2W" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="4Z$O9mrR2UR" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3cqZAl" id="2zU3cYqyg2Y" role="3clF45" />
      <node concept="3Tm1VV" id="6$7vuu2xw$l" role="1B3o_S" />
      <node concept="3clFbS" id="2zU3cYqyg30" role="3clF47">
        <node concept="3cpWs8" id="2zU3cYqykZ4" role="3cqZAp">
          <node concept="3cpWsn" id="2zU3cYqykZ5" role="3cpWs9">
            <property role="TrG5h" value="instance" />
            <node concept="3uibUv" id="2zU3cYqykZ3" role="1tU5fm">
              <ref role="3uigEE" node="2zU3cYqxbbL" resolve="TypesModelManager" />
            </node>
            <node concept="1rXfSq" id="2zU3cYqykZ6" role="33vP2m">
              <ref role="37wK5l" node="2zU3cYqxb_u" resolve="get" />
              <node concept="37vLTw" id="2zU3cYqykZ7" role="37wK5m">
                <ref role="3cqZAo" node="2zU3cYqyg2W" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2zU3cYqyl4W" role="3cqZAp">
          <node concept="3clFbS" id="2zU3cYqyl4Y" role="3clFbx">
            <node concept="3clFbF" id="2zU3cYqylkA" role="3cqZAp">
              <node concept="2OqwBi" id="2zU3cYqyq2M" role="3clFbG">
                <node concept="37vLTw" id="2zU3cYqylk$" role="2Oq$k0">
                  <ref role="3cqZAo" node="2zU3cYqykZ5" resolve="instance" />
                </node>
                <node concept="liA8E" id="2zU3cYqyqfQ" role="2OqNvi">
                  <ref role="37wK5l" node="2zU3cYqyp0Z" resolve="dispose" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2zU3cYqylxI" role="3cqZAp">
              <node concept="2OqwBi" id="2zU3cYqym9K" role="3clFbG">
                <node concept="37vLTw" id="2zU3cYqylxG" role="2Oq$k0">
                  <ref role="3cqZAo" node="2zU3cYqxbiF" resolve="ourInstances" />
                </node>
                <node concept="3dhRuq" id="2zU3cYqynEC" role="2OqNvi">
                  <node concept="37vLTw" id="2zU3cYqynYJ" role="25WWJ7">
                    <ref role="3cqZAo" node="2zU3cYqykZ5" resolve="instance" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2zU3cYqyldc" role="3clFbw">
            <node concept="10Nm6u" id="2zU3cYqyldQ" role="3uHU7w" />
            <node concept="37vLTw" id="2zU3cYqyl65" role="3uHU7B">
              <ref role="3cqZAo" node="2zU3cYqykZ5" resolve="instance" />
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="6$7vuu2x$ze" role="lGtFl">
        <node concept="TZ5HA" id="6$7vuu2x$zf" role="TZ5H$">
          <node concept="1dT_AC" id="6$7vuu2x$zg" role="1dT_Ay">
            <property role="1dT_AB" value="Made public only for tests." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2zU3cYqyfSs" role="jymVt" />
    <node concept="3clFbW" id="2zU3cYqyeVe" role="jymVt">
      <node concept="3cqZAl" id="2zU3cYqyeVg" role="3clF45" />
      <node concept="3Tm6S6" id="6$7vuu2vnJv" role="1B3o_S" />
      <node concept="3clFbS" id="2zU3cYqyeVi" role="3clF47">
        <node concept="3clFbF" id="2zU3cYqyfkU" role="3cqZAp">
          <node concept="37vLTI" id="2zU3cYqyfkW" role="3clFbG">
            <node concept="2OqwBi" id="2zU3cYqyfrQ" role="37vLTJ">
              <node concept="Xjq3P" id="2zU3cYqyfsn" role="2Oq$k0" />
              <node concept="2OwXpG" id="4Z$O9mrR0iM" role="2OqNvi">
                <ref role="2Oxat5" node="4Z$O9mrQQ_h" resolve="repository" />
              </node>
            </node>
            <node concept="37vLTw" id="2zU3cYqyfl0" role="37vLTx">
              <ref role="3cqZAo" node="2zU3cYqyf38" resolve="repository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2zU3cYqyf38" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="4Z$O9mrQZWD" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2zU3cYqyePB" role="jymVt" />
    <node concept="3clFb_" id="2zU3cYqyp0Z" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="2zU3cYqyp11" role="3clF45" />
      <node concept="3Tm6S6" id="2zU3cYqypbP" role="1B3o_S" />
      <node concept="3clFbS" id="2zU3cYqyp13" role="3clF47">
        <node concept="3clFbF" id="2zU3cYqC6I2" role="3cqZAp">
          <node concept="2OqwBi" id="2zU3cYqC8iB" role="3clFbG">
            <node concept="37vLTw" id="2zU3cYqC6I0" role="2Oq$k0">
              <ref role="3cqZAo" node="WJyfsglZQI" resolve="modelOwners" />
            </node>
            <node concept="2Kehj3" id="2zU3cYqC9TW" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2zU3cYqyojD" role="jymVt" />
    <node concept="3clFb_" id="2zU3cYq$52j" role="jymVt">
      <property role="TrG5h" value="emptyModel" />
      <node concept="3uibUv" id="2zU3cYq$b4C" role="3clF45">
        <ref role="3uigEE" node="2zU3cYq$91A" resolve="TypesModelManager.ModelOwner" />
      </node>
      <node concept="3Tm1VV" id="2zU3cYq$52m" role="1B3o_S" />
      <node concept="3clFbS" id="2zU3cYq$52n" role="3clF47">
        <node concept="3SKdUt" id="6IQb_RxL8zH" role="3cqZAp">
          <node concept="3SKdUq" id="6IQb_RxL8zJ" role="3SKWNk">
            <property role="3SKdUp" value="TODO: record the owner?" />
          </node>
        </node>
        <node concept="3clFbF" id="2zU3cYq$Xcz" role="3cqZAp">
          <node concept="2ShNRf" id="2zU3cYq$Xcx" role="3clFbG">
            <node concept="1pGfFk" id="2zU3cYq$XlI" role="2ShVmc">
              <ref role="37wK5l" node="2zU3cYq$cD9" resolve="TypesModelManager.ModelOwner" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2zU3cYq$4xa" role="jymVt" />
    <node concept="312cEu" id="2zU3cYq$91A" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="ModelOwner" />
      <node concept="2tJIrI" id="2zU3cYq$93r" role="jymVt" />
      <node concept="3clFbW" id="2zU3cYq$cD9" role="jymVt">
        <node concept="3cqZAl" id="2zU3cYq$cDb" role="3clF45" />
        <node concept="3Tm6S6" id="2zU3cYq$cDJ" role="1B3o_S" />
        <node concept="3clFbS" id="2zU3cYq$cDd" role="3clF47">
          <node concept="3clFbF" id="2zU3cYq$lFV" role="3cqZAp">
            <node concept="1rXfSq" id="2zU3cYq$lFT" role="3clFbG">
              <ref role="37wK5l" node="2zU3cYq$jOk" resolve="createModel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2zU3cYq$ezj" role="jymVt" />
      <node concept="3clFb_" id="2zU3cYq$9HD" role="jymVt">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="2zU3cYq$aYq" role="3clF45" />
        <node concept="3Tm1VV" id="2zU3cYq$9HG" role="1B3o_S" />
        <node concept="3clFbS" id="2zU3cYq$9HH" role="3clF47">
          <node concept="3clFbF" id="2zU3cYq$lNV" role="3cqZAp">
            <node concept="37vLTw" id="2zU3cYq$lNU" role="3clFbG">
              <ref role="3cqZAo" node="2zU3cYq$jg9" resolve="model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2zU3cYq$cyl" role="jymVt" />
      <node concept="3clFb_" id="2zU3cYq$pNG" role="jymVt">
        <property role="TrG5h" value="register" />
        <node concept="3cqZAl" id="2zU3cYq$pNI" role="3clF45" />
        <node concept="3Tm1VV" id="2zU3cYq$pNJ" role="1B3o_S" />
        <node concept="3clFbS" id="2zU3cYq$pNK" role="3clF47">
          <node concept="3clFbJ" id="4Z$O9mrSNIe" role="3cqZAp">
            <node concept="3clFbS" id="4Z$O9mrSNIg" role="3clFbx">
              <node concept="YS8fn" id="4Z$O9mrSOc9" role="3cqZAp">
                <node concept="2ShNRf" id="4Z$O9mrSOcN" role="YScLw">
                  <node concept="1pGfFk" id="4Z$O9mrSPSo" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                    <node concept="Xl_RD" id="4Z$O9mrSPVy" role="37wK5m">
                      <property role="Xl_RC" value="already registered" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4Z$O9mrSO00" role="3clFbw">
              <ref role="3cqZAo" node="4Z$O9mrSM0j" resolve="registered" />
            </node>
          </node>
          <node concept="3clFbH" id="4Z$O9mrSQcC" role="3cqZAp" />
          <node concept="3clFbF" id="4Z$O9mrT3Vl" role="3cqZAp">
            <node concept="37vLTI" id="4Z$O9mrT5ew" role="3clFbG">
              <node concept="3clFbT" id="4Z$O9mrT5kv" role="37vLTx">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="4Z$O9mrT4$d" role="37vLTJ">
                <node concept="Xjq3P" id="4Z$O9mrT3Vj" role="2Oq$k0" />
                <node concept="2OwXpG" id="4Z$O9mrT4PK" role="2OqNvi">
                  <ref role="2Oxat5" node="4Z$O9mrSM0j" resolve="registered" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2zU3cYq$pt_" role="jymVt" />
      <node concept="3clFb_" id="2zU3cYq$eDA" role="jymVt">
        <property role="TrG5h" value="unregister" />
        <node concept="3cqZAl" id="2zU3cYq$eDC" role="3clF45" />
        <node concept="3Tm1VV" id="2zU3cYq$eDD" role="1B3o_S" />
        <node concept="3clFbS" id="2zU3cYq$eDE" role="3clF47">
          <node concept="3clFbJ" id="4Z$O9mrSQps" role="3cqZAp">
            <node concept="3clFbS" id="4Z$O9mrSQpt" role="3clFbx">
              <node concept="YS8fn" id="4Z$O9mrSQpu" role="3cqZAp">
                <node concept="2ShNRf" id="4Z$O9mrSQpv" role="YScLw">
                  <node concept="1pGfFk" id="4Z$O9mrSQpw" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                    <node concept="Xl_RD" id="4Z$O9mrSQpx" role="37wK5m">
                      <property role="Xl_RC" value="not registered" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="4Z$O9mrSQzL" role="3clFbw">
              <node concept="37vLTw" id="4Z$O9mrSQzN" role="3fr31v">
                <ref role="3cqZAo" node="4Z$O9mrSM0j" resolve="registered" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6IQb_RxJaL9" role="3cqZAp" />
          <node concept="3clFbF" id="4Z$O9mrT5ui" role="3cqZAp">
            <node concept="37vLTI" id="4Z$O9mrT5uj" role="3clFbG">
              <node concept="3clFbT" id="4Z$O9mrT5uk" role="37vLTx" />
              <node concept="2OqwBi" id="4Z$O9mrT5ul" role="37vLTJ">
                <node concept="Xjq3P" id="4Z$O9mrT5um" role="2Oq$k0" />
                <node concept="2OwXpG" id="4Z$O9mrT5un" role="2OqNvi">
                  <ref role="2Oxat5" node="4Z$O9mrSM0j" resolve="registered" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4Z$O9mrSQFS" role="jymVt" />
      <node concept="3clFb_" id="2zU3cYq$$V4" role="jymVt">
        <property role="TrG5h" value="clear" />
        <node concept="3cqZAl" id="2zU3cYq$$V6" role="3clF45" />
        <node concept="3Tm1VV" id="4Z$O9mrSW4J" role="1B3o_S" />
        <node concept="3clFbS" id="2zU3cYq$$V8" role="3clF47">
          <node concept="3clFbJ" id="4Z$O9mrSVHF" role="3cqZAp">
            <node concept="3clFbS" id="4Z$O9mrSVHG" role="3clFbx">
              <node concept="YS8fn" id="4Z$O9mrSVHH" role="3cqZAp">
                <node concept="2ShNRf" id="4Z$O9mrSVHI" role="YScLw">
                  <node concept="1pGfFk" id="4Z$O9mrSVHJ" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                    <node concept="Xl_RD" id="4Z$O9mrSVHK" role="37wK5m">
                      <property role="Xl_RC" value="must unregister before clear" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4Z$O9mrSVHL" role="3clFbw">
              <ref role="3cqZAo" node="4Z$O9mrSM0j" resolve="registered" />
            </node>
          </node>
          <node concept="3clFbH" id="4Z$O9mrSZDe" role="3cqZAp" />
          <node concept="3clFbF" id="2zU3cYq$CQ1" role="3cqZAp">
            <node concept="37vLTI" id="2zU3cYq$DGE" role="3clFbG">
              <node concept="10Nm6u" id="2zU3cYq$DQ8" role="37vLTx" />
              <node concept="2OqwBi" id="2zU3cYq$CX7" role="37vLTJ">
                <node concept="Xjq3P" id="2zU3cYq$CPZ" role="2Oq$k0" />
                <node concept="2OwXpG" id="2zU3cYq$Db5" role="2OqNvi">
                  <ref role="2Oxat5" node="2zU3cYq$jg9" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2zU3cYq$xyA" role="jymVt" />
      <node concept="3clFb_" id="2zU3cYq$jOk" role="jymVt">
        <property role="TrG5h" value="createModel" />
        <node concept="3cqZAl" id="2zU3cYq$jOm" role="3clF45" />
        <node concept="3Tm6S6" id="2zU3cYq$jP8" role="1B3o_S" />
        <node concept="3clFbS" id="2zU3cYq$jOo" role="3clF47">
          <node concept="3cpWs8" id="6IQb_RxKX90" role="3cqZAp">
            <node concept="3cpWsn" id="6IQb_RxKX91" role="3cpWs9">
              <property role="TrG5h" value="moduleRef" />
              <node concept="3uibUv" id="6IQb_RxKX8W" role="1tU5fm">
                <ref role="3uigEE" to="w0gx:~ModuleReference" resolve="ModuleReference" />
              </node>
              <node concept="2ShNRf" id="6IQb_RxKX92" role="33vP2m">
                <node concept="1pGfFk" id="6IQb_RxKX93" role="2ShVmc">
                  <ref role="37wK5l" to="w0gx:~ModuleReference.&lt;init&gt;(java.lang.String,org.jetbrains.mps.openapi.module.SModuleId)" resolve="ModuleReference" />
                  <node concept="Xl_RD" id="6IQb_RxKX94" role="37wK5m">
                    <property role="Xl_RC" value="TYPES" />
                  </node>
                  <node concept="2YIFZM" id="6IQb_RxKX95" role="37wK5m">
                    <ref role="37wK5l" to="z1c3:~ModuleId.regular():jetbrains.mps.project.ModuleId" resolve="regular" />
                    <ref role="1Pybhc" to="z1c3:~ModuleId" resolve="ModuleId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6IQb_RxKZ4s" role="3cqZAp">
            <node concept="3cpWsn" id="6IQb_RxKZ4t" role="3cpWs9">
              <property role="TrG5h" value="modelRef" />
              <node concept="3uibUv" id="6IQb_RxKZ4i" role="1tU5fm">
                <ref role="3uigEE" to="w1kc:~SModelReference" resolve="SModelReference" />
              </node>
              <node concept="2ShNRf" id="6IQb_RxKZ4u" role="33vP2m">
                <node concept="1pGfFk" id="6IQb_RxKZ4v" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~SModelReference.&lt;init&gt;(org.jetbrains.mps.openapi.module.SModuleReference,org.jetbrains.mps.openapi.model.SModelId,java.lang.String)" resolve="SModelReference" />
                  <node concept="37vLTw" id="6IQb_RxKZ4w" role="37wK5m">
                    <ref role="3cqZAo" node="6IQb_RxKX91" resolve="moduleRef" />
                  </node>
                  <node concept="2YIFZM" id="6IQb_RxKZ4x" role="37wK5m">
                    <ref role="37wK5l" to="w1kc:~SModelId.generate():jetbrains.mps.smodel.SModelId" resolve="generate" />
                    <ref role="1Pybhc" to="w1kc:~SModelId" resolve="SModelId" />
                  </node>
                  <node concept="Xl_RD" id="6IQb_RxKZ4y" role="37wK5m">
                    <property role="Xl_RC" value="types-model" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6IQb_RxL0KR" role="3cqZAp">
            <node concept="3cpWsn" id="6IQb_RxL0KS" role="3cpWs9">
              <property role="TrG5h" value="modelData" />
              <node concept="3uibUv" id="6IQb_RxL0KP" role="1tU5fm">
                <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
              </node>
              <node concept="2ShNRf" id="6IQb_RxL0KT" role="33vP2m">
                <node concept="1pGfFk" id="6IQb_RxL0KU" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~SModel.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference)" resolve="SModel" />
                  <node concept="37vLTw" id="6IQb_RxL0KV" role="37wK5m">
                    <ref role="3cqZAo" node="6IQb_RxKZ4t" resolve="modelRef" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6IQb_RxKQDu" role="3cqZAp">
            <node concept="37vLTI" id="6IQb_RxKS7D" role="3clFbG">
              <node concept="2ShNRf" id="6IQb_RxKSkD" role="37vLTx">
                <node concept="1pGfFk" id="6IQb_RxKSRh" role="2ShVmc">
                  <ref role="37wK5l" node="6IQb_RxJsDG" resolve="TypesModelManager.TypesModelBase" />
                  <node concept="37vLTw" id="6IQb_RxL1eS" role="37wK5m">
                    <ref role="3cqZAo" node="6IQb_RxL0KS" resolve="modelData" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6IQb_RxKQQb" role="37vLTJ">
                <node concept="Xjq3P" id="6IQb_RxKQDs" role="2Oq$k0" />
                <node concept="2OwXpG" id="6IQb_RxKRn5" role="2OqNvi">
                  <ref role="2Oxat5" node="2zU3cYq$jg9" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2zU3cYq$jHQ" role="jymVt" />
      <node concept="312cEg" id="2zU3cYq$jg9" role="jymVt">
        <property role="TrG5h" value="model" />
        <node concept="3Tm6S6" id="2zU3cYq$jga" role="1B3o_S" />
        <node concept="3uibUv" id="2zU3cYq$juT" role="1tU5fm">
          <ref role="3uigEE" to="g3l6:~SModelBase" resolve="SModelBase" />
        </node>
      </node>
      <node concept="312cEg" id="4Z$O9mrSM0j" role="jymVt">
        <property role="TrG5h" value="registered" />
        <node concept="3Tm6S6" id="4Z$O9mrSM0k" role="1B3o_S" />
        <node concept="10P_77" id="4Z$O9mrSN$Y" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="2zU3cYq$91B" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6IQb_RxKDA5" role="jymVt" />
    <node concept="312cEu" id="6IQb_RxJsD_" role="jymVt">
      <property role="TrG5h" value="TypesModelBase" />
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <node concept="3Tm6S6" id="6IQb_RxJsDA" role="1B3o_S" />
      <node concept="3uibUv" id="6IQb_RxPHMV" role="1zkMxy">
        <ref role="3uigEE" to="g3l6:~EditableSModelBase" resolve="EditableSModelBase" />
      </node>
      <node concept="312cEg" id="6IQb_RxJsDC" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myModelData" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="6IQb_RxJsDE" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
        </node>
        <node concept="3Tm6S6" id="6IQb_RxJsDF" role="1B3o_S" />
      </node>
      <node concept="3clFbW" id="6IQb_RxJsDG" role="jymVt">
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3cqZAl" id="6IQb_RxJsDH" role="3clF45" />
        <node concept="37vLTG" id="6IQb_RxJsDI" role="3clF46">
          <property role="TrG5h" value="modelData" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="6IQb_RxJsDJ" role="1tU5fm">
            <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
          </node>
        </node>
        <node concept="3clFbS" id="6IQb_RxJsDK" role="3clF47">
          <node concept="XkiVB" id="6IQb_RxKzd2" role="3cqZAp">
            <ref role="37wK5l" to="g3l6:~EditableSModelBase.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference,org.jetbrains.mps.openapi.persistence.DataSource)" resolve="EditableSModelBase" />
            <node concept="2OqwBi" id="6IQb_RxKyx7" role="37wK5m">
              <node concept="37vLTw" id="6IQb_RxKyx6" role="2Oq$k0">
                <ref role="3cqZAo" node="6IQb_RxJsDI" resolve="modelData" />
              </node>
              <node concept="liA8E" id="6IQb_RxKyx8" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~SModel.getReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getReference" />
              </node>
            </node>
            <node concept="2ShNRf" id="6IQb_RxK_LH" role="37wK5m">
              <node concept="1pGfFk" id="6IQb_RxKAE2" role="2ShVmc">
                <ref role="37wK5l" to="dush:~NullDataSource.&lt;init&gt;()" resolve="NullDataSource" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6IQb_RxJsDL" role="3cqZAp">
            <node concept="37vLTI" id="6IQb_RxJsDM" role="3clFbG">
              <node concept="37vLTw" id="6IQb_RxJsDN" role="37vLTJ">
                <ref role="3cqZAo" node="6IQb_RxJsDC" resolve="myModelData" />
              </node>
              <node concept="37vLTw" id="6IQb_RxJsDO" role="37vLTx">
                <ref role="3cqZAo" node="6IQb_RxJsDI" resolve="modelData" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6IQb_RxJsDP" role="3cqZAp">
            <node concept="2OqwBi" id="6IQb_RxJvBe" role="3clFbG">
              <node concept="37vLTw" id="6IQb_RxJvBd" role="2Oq$k0">
                <ref role="3cqZAo" node="6IQb_RxJsDC" resolve="myModelData" />
              </node>
              <node concept="liA8E" id="6IQb_RxJvBf" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~SModel.setModelDescriptor(org.jetbrains.mps.openapi.model.SModel):void" resolve="setModelDescriptor" />
                <node concept="Xjq3P" id="6IQb_RxJvBg" role="37wK5m" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6IQb_RxJsDS" role="3cqZAp">
            <node concept="1rXfSq" id="6IQb_RxJsDT" role="3clFbG">
              <ref role="37wK5l" to="g3l6:~SModelBase.setLoadingState(jetbrains.mps.smodel.loading.ModelLoadingState):void" resolve="setLoadingState" />
              <node concept="Rm8GO" id="6IQb_RxKBlx" role="37wK5m">
                <ref role="Rm8GQ" to="4it6:~ModelLoadingState.FULLY_LOADED" resolve="FULLY_LOADED" />
                <ref role="1Px2BO" to="4it6:~ModelLoadingState" resolve="ModelLoadingState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="6IQb_RxJsDY" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="6IQb_RxKBok" role="jymVt" />
      <node concept="3clFb_" id="6IQb_RxJsDZ" role="jymVt">
        <property role="TrG5h" value="getSModelInternal" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="2AHcQZ" id="6IQb_RxJsE0" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="6IQb_RxJsE1" role="3clF47">
          <node concept="3cpWs6" id="6IQb_RxJsE2" role="3cqZAp">
            <node concept="37vLTw" id="6IQb_RxJsE3" role="3cqZAk">
              <ref role="3cqZAo" node="6IQb_RxJsDC" resolve="myModelData" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="6IQb_RxJsE4" role="1B3o_S" />
        <node concept="3uibUv" id="6IQb_RxJsE5" role="3clF45">
          <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="2tJIrI" id="6IQb_RxKBJ_" role="jymVt" />
      <node concept="3clFb_" id="6IQb_RxJsE6" role="jymVt">
        <property role="TrG5h" value="getCurrentModelInternal" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="2AHcQZ" id="6IQb_RxJsE7" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="2AHcQZ" id="6IQb_RxJsE8" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="6IQb_RxJsE9" role="3clF47">
          <node concept="3cpWs6" id="6IQb_RxJsEa" role="3cqZAp">
            <node concept="37vLTw" id="6IQb_RxJsEb" role="3cqZAk">
              <ref role="3cqZAo" node="6IQb_RxJsDC" resolve="myModelData" />
            </node>
          </node>
        </node>
        <node concept="3Tmbuc" id="6IQb_RxJsEc" role="1B3o_S" />
        <node concept="3uibUv" id="6IQb_RxJsEd" role="3clF45">
          <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="2tJIrI" id="6IQb_RxKC6R" role="jymVt" />
      <node concept="3clFb_" id="6IQb_RxJsEe" role="jymVt">
        <property role="TrG5h" value="doUnload" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="2AHcQZ" id="6IQb_RxJsEf" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="6IQb_RxJsEg" role="3clF47">
          <node concept="3SKdUt" id="6IQb_RxJsEy" role="3cqZAp">
            <node concept="3SKdUq" id="6IQb_RxJsEx" role="3SKWNk">
              <property role="3SKdUp" value="no-op" />
            </node>
          </node>
        </node>
        <node concept="3Tmbuc" id="6IQb_RxJsEh" role="1B3o_S" />
        <node concept="3cqZAl" id="6IQb_RxJsEi" role="3clF45" />
      </node>
      <node concept="2tJIrI" id="6IQb_RxPIQC" role="jymVt" />
      <node concept="3clFb_" id="6IQb_RxPI6f" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="reloadContents" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tmbuc" id="6IQb_RxPI6g" role="1B3o_S" />
        <node concept="3cqZAl" id="6IQb_RxPI6i" role="3clF45" />
        <node concept="3clFbS" id="6IQb_RxPI6j" role="3clF47">
          <node concept="YS8fn" id="6IQb_RxPJlJ" role="3cqZAp">
            <node concept="2ShNRf" id="6IQb_RxPJns" role="YScLw">
              <node concept="1pGfFk" id="6IQb_RxPJNI" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6IQb_RxPI6k" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6IQb_RxPIws" role="jymVt" />
      <node concept="3clFb_" id="6IQb_RxPI6l" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="saveModel" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tmbuc" id="6IQb_RxPI6m" role="1B3o_S" />
        <node concept="10P_77" id="6IQb_RxPI6o" role="3clF45" />
        <node concept="3uibUv" id="6IQb_RxPI6p" role="Sfmx6">
          <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
        </node>
        <node concept="3uibUv" id="6IQb_RxPI6q" role="Sfmx6">
          <ref role="3uigEE" to="dush:~ModelSaveException" resolve="ModelSaveException" />
        </node>
        <node concept="3clFbS" id="6IQb_RxPI6r" role="3clF47">
          <node concept="3clFbF" id="6IQb_RxPI6u" role="3cqZAp">
            <node concept="3clFbT" id="6IQb_RxPI6t" role="3clFbG" />
          </node>
        </node>
        <node concept="2AHcQZ" id="6IQb_RxPI6s" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3UR2Jj" id="6IQb_RxPLQu" role="lGtFl">
        <node concept="TZ5HA" id="6IQb_RxPLQv" role="TZ5H$">
          <node concept="1dT_AC" id="6IQb_RxPLQw" role="1dT_Ay">
            <property role="1dT_AB" value="Copied from TestModelFactory.TestModelBase." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6IQb_RxIEBJ" role="jymVt" />
    <node concept="312cEg" id="WJyfsglZQI" role="jymVt">
      <property role="TrG5h" value="modelOwners" />
      <node concept="3Tm6S6" id="WJyfsglZQJ" role="1B3o_S" />
      <node concept="_YKpA" id="WJyfsgm1UD" role="1tU5fm">
        <node concept="3uibUv" id="2zU3cYq$tPm" role="_ZDj9">
          <ref role="3uigEE" node="2zU3cYq$91A" resolve="TypesModelManager.ModelOwner" />
        </node>
      </node>
      <node concept="2ShNRf" id="WJyfsgolKP" role="33vP2m">
        <node concept="Tc6Ow" id="WJyfsgolxe" role="2ShVmc">
          <node concept="3uibUv" id="2zU3cYq$u_n" role="HW$YZ">
            <ref role="3uigEE" node="2zU3cYq$91A" resolve="TypesModelManager.ModelOwner" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4Z$O9mrQQ_h" role="jymVt">
      <property role="TrG5h" value="repository" />
      <node concept="3Tm6S6" id="4Z$O9mrQQ_i" role="1B3o_S" />
      <node concept="3uibUv" id="4Z$O9mrQTsz" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2zU3cYqxbbM" role="1B3o_S" />
  </node>
</model>

