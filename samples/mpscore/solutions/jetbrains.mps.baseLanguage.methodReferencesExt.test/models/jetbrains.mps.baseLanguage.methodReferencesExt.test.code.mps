<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:52289f93-d3b0-44e3-80db-59c6b6a2adb6(jetbrains.mps.baseLanguage.methodReferencesExt.test.code)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="2" />
    <use id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences" version="0" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
  </languages>
  <imports>
    <import index="xlxw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.math(JDK/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="urs3" ref="r:fc76aa36-3cff-41c7-b94b-eee0e8341932(jetbrains.mps.internal.collections.runtime)" />
    <import index="i5cy" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent.atomic(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1153422105332" name="jetbrains.mps.baseLanguage.structure.RemExpression" flags="nn" index="2dk9JS" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
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
      <concept id="1171903862077" name="jetbrains.mps.baseLanguage.structure.LowerBoundType" flags="in" index="3qUtgH">
        <child id="1171903869531" name="bound" index="3qUvdb" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e" />
    </language>
    <language id="acfc188d-d5d6-4598-b370-6f4a983f05b2" name="jetbrains.mps.baseLanguage.methodReferences">
      <concept id="3427250980008952233" name="jetbrains.mps.baseLanguage.methodReferences.structure.MethodReferenceSuperExpression" flags="ng" index="2c6KGM" />
      <concept id="7915009415671748557" name="jetbrains.mps.baseLanguage.methodReferences.structure.MethodReferenceTypeTargetExpression" flags="ng" index="2FaPjH">
        <child id="7915009415671751864" name="type" index="2FaQuo" />
      </concept>
      <concept id="237887375562511215" name="jetbrains.mps.baseLanguage.methodReferences.structure.MethodReference" flags="ng" index="37Ijox" />
      <concept id="3507059745126391419" name="jetbrains.mps.baseLanguage.methodReferences.structure.IMethodReference" flags="ngI" index="3UZKCU">
        <reference id="237887375562511297" name="method" index="37Ijqf" />
        <child id="962278442658307079" name="target" index="wWaWy" />
        <child id="2387148066272788270" name="typeParameters" index="3_kYmE" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="8427750732757990717" name="jetbrains.mps.baseLanguage.unitTest.structure.BinaryAssert" flags="nn" index="3tpDYu">
        <child id="8427750732757990725" name="actual" index="3tpDZA" />
        <child id="8427750732757990724" name="expected" index="3tpDZB" />
      </concept>
      <concept id="1171978097730" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertEquals" flags="nn" index="3vlDli" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
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
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414456414" name="elementType" index="kMuH3" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="312cEu" id="6ZRhjsGychG">
    <property role="TrG5h" value="BoundsTypes" />
    <node concept="2tJIrI" id="6ZRhjsGycoG" role="jymVt" />
    <node concept="312cEu" id="6ZRhjsGycro" role="jymVt">
      <property role="TrG5h" value="LowerBounded" />
      <node concept="2YIFZL" id="6ZRhjsGycrp" role="jymVt">
        <property role="TrG5h" value="identity" />
        <node concept="3clFbS" id="6ZRhjsGycrq" role="3clF47">
          <node concept="3clFbF" id="6ZRhjsGycrr" role="3cqZAp">
            <node concept="37vLTw" id="6ZRhjsGycrs" role="3clFbG">
              <ref role="3cqZAo" node="6ZRhjsGycru" resolve="number" />
            </node>
          </node>
        </node>
        <node concept="16syzq" id="6ZRhjsGycrt" role="3clF45">
          <ref role="16sUi3" node="6ZRhjsGycrw" resolve="U" />
        </node>
        <node concept="37vLTG" id="6ZRhjsGycru" role="3clF46">
          <property role="TrG5h" value="number" />
          <node concept="16syzq" id="6ZRhjsGycrv" role="1tU5fm">
            <ref role="16sUi3" node="6ZRhjsGycrw" resolve="U" />
          </node>
        </node>
        <node concept="16euLQ" id="6ZRhjsGycrw" role="16eVyc">
          <property role="TrG5h" value="U" />
          <node concept="3uibUv" id="6ZRhjsGycrx" role="3ztrMU">
            <ref role="3uigEE" to="wyt6:~Number" resolve="Number" />
          </node>
        </node>
        <node concept="3Tm1VV" id="6ZRhjsGycry" role="1B3o_S" />
      </node>
      <node concept="3Tm1VV" id="6ZRhjsGycrz" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6ZRhjsGycr$" role="jymVt" />
    <node concept="312cEu" id="6ZRhjsGycr_" role="jymVt">
      <property role="TrG5h" value="UpperBounded" />
      <node concept="2YIFZL" id="6ZRhjsGycrA" role="jymVt">
        <property role="TrG5h" value="process" />
        <node concept="3clFbS" id="6ZRhjsGycrB" role="3clF47">
          <node concept="3clFbF" id="6ZRhjsGycrC" role="3cqZAp">
            <node concept="0kSF2" id="6ZRhjsGycrD" role="3clFbG">
              <node concept="3uibUv" id="6ZRhjsGycrE" role="0kSFW">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
              <node concept="2OqwBi" id="6ZRhjsGycrF" role="0kSFX">
                <node concept="37vLTw" id="6ZRhjsGycrG" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ZRhjsGycrK" resolve="number" />
                </node>
                <node concept="liA8E" id="6ZRhjsGycrH" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                  <node concept="3cmrfG" id="6ZRhjsGycrI" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="6ZRhjsGycrJ" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="37vLTG" id="6ZRhjsGycrK" role="3clF46">
          <property role="TrG5h" value="number" />
          <node concept="3uibUv" id="6ZRhjsGycrL" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3qUtgH" id="6ZRhjsGycrM" role="11_B2D">
              <node concept="3uibUv" id="6ZRhjsGycrN" role="3qUvdb">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="6ZRhjsGycrO" role="1B3o_S" />
      </node>
      <node concept="3Tm1VV" id="6ZRhjsGycrP" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6ZRhjsGycYJ" role="jymVt" />
    <node concept="3clFb_" id="6ZRhjsGydws" role="jymVt">
      <property role="TrG5h" value="lowerBoundType" />
      <node concept="3cqZAl" id="6ZRhjsGydwu" role="3clF45" />
      <node concept="3Tm1VV" id="6ZRhjsGydwv" role="1B3o_S" />
      <node concept="3clFbS" id="6ZRhjsGydww" role="3clF47">
        <node concept="3cpWs8" id="6ZRhjsGydYK" role="3cqZAp">
          <node concept="3cpWsn" id="6ZRhjsGydYL" role="3cpWs9">
            <property role="TrG5h" value="seqInt" />
            <node concept="A3Dl8" id="6ZRhjsGydYM" role="1tU5fm">
              <node concept="3uibUv" id="6ZRhjsGydYN" role="A3Ik2">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="2OqwBi" id="6ZRhjsGydYO" role="33vP2m">
              <node concept="2ShNRf" id="6ZRhjsGydYP" role="2Oq$k0">
                <node concept="kMnCb" id="6ZRhjsGydYQ" role="2ShVmc">
                  <node concept="3uibUv" id="6ZRhjsGydYR" role="kMuH3">
                    <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                  </node>
                </node>
              </node>
              <node concept="3$u5V9" id="6ZRhjsGydYS" role="2OqNvi">
                <node concept="37Ijox" id="6ZRhjsGydYT" role="23t8la">
                  <ref role="37Ijqf" node="6ZRhjsGycrp" resolve="identity" />
                  <node concept="2FaPjH" id="6ZRhjsGydYU" role="wWaWy">
                    <node concept="3uibUv" id="6ZRhjsGydYV" role="2FaQuo">
                      <ref role="3uigEE" node="6ZRhjsGycro" resolve="BoundsTypes.LowerBounded" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ZRhjsGydYW" role="3cqZAp">
          <node concept="3cpWsn" id="6ZRhjsGydYX" role="3cpWs9">
            <property role="TrG5h" value="seqNum" />
            <node concept="A3Dl8" id="6ZRhjsGydYY" role="1tU5fm">
              <node concept="3uibUv" id="6ZRhjsGydYZ" role="A3Ik2">
                <ref role="3uigEE" to="wyt6:~Number" resolve="Number" />
              </node>
            </node>
            <node concept="2OqwBi" id="6ZRhjsGydZ0" role="33vP2m">
              <node concept="2ShNRf" id="6ZRhjsGydZ1" role="2Oq$k0">
                <node concept="kMnCb" id="6ZRhjsGydZ2" role="2ShVmc">
                  <node concept="3uibUv" id="6ZRhjsGydZ3" role="kMuH3">
                    <ref role="3uigEE" to="wyt6:~Number" resolve="Number" />
                  </node>
                </node>
              </node>
              <node concept="3$u5V9" id="6ZRhjsGydZ4" role="2OqNvi">
                <node concept="37Ijox" id="6ZRhjsGydZ5" role="23t8la">
                  <ref role="37Ijqf" node="6ZRhjsGycrp" resolve="identity" />
                  <node concept="2FaPjH" id="6ZRhjsGydZ6" role="wWaWy">
                    <node concept="3uibUv" id="6ZRhjsGydZ7" role="2FaQuo">
                      <ref role="3uigEE" node="6ZRhjsGycro" resolve="BoundsTypes.LowerBounded" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ZRhjsGydZ8" role="3cqZAp">
          <node concept="3cpWsn" id="6ZRhjsGydZ9" role="3cpWs9">
            <property role="TrG5h" value="seqDouble" />
            <node concept="A3Dl8" id="6ZRhjsGydZa" role="1tU5fm">
              <node concept="3uibUv" id="6ZRhjsGydZb" role="A3Ik2">
                <ref role="3uigEE" to="wyt6:~Double" resolve="Double" />
              </node>
            </node>
            <node concept="2OqwBi" id="6ZRhjsGydZc" role="33vP2m">
              <node concept="2ShNRf" id="6ZRhjsGydZd" role="2Oq$k0">
                <node concept="kMnCb" id="6ZRhjsGydZe" role="2ShVmc">
                  <node concept="3uibUv" id="6ZRhjsGydZf" role="kMuH3">
                    <ref role="3uigEE" to="wyt6:~Double" resolve="Double" />
                  </node>
                </node>
              </node>
              <node concept="3$u5V9" id="6ZRhjsGydZg" role="2OqNvi">
                <node concept="37Ijox" id="6ZRhjsGydZh" role="23t8la">
                  <ref role="37Ijqf" node="6ZRhjsGycrp" resolve="identity" />
                  <node concept="2FaPjH" id="6ZRhjsGydZi" role="wWaWy">
                    <node concept="3uibUv" id="6ZRhjsGydZj" role="2FaQuo">
                      <ref role="3uigEE" node="6ZRhjsGycro" resolve="BoundsTypes.LowerBounded" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ZRhjsGycoI" role="jymVt" />
    <node concept="3clFb_" id="6ZRhjsGyeoa" role="jymVt">
      <property role="TrG5h" value="upperBoundType" />
      <node concept="3cqZAl" id="6ZRhjsGyeoc" role="3clF45" />
      <node concept="3Tm1VV" id="6ZRhjsGyeod" role="1B3o_S" />
      <node concept="3clFbS" id="6ZRhjsGyeoe" role="3clF47">
        <node concept="3cpWs8" id="6ZRhjsGyf28" role="3cqZAp">
          <node concept="3cpWsn" id="6ZRhjsGyf29" role="3cpWs9">
            <property role="TrG5h" value="list" />
            <node concept="_YKpA" id="6ZRhjsGyf2a" role="1tU5fm">
              <node concept="_YKpA" id="6ZRhjsGyf2b" role="_ZDj9">
                <node concept="3uibUv" id="6ZRhjsGyf2c" role="_ZDj9">
                  <ref role="3uigEE" to="wyt6:~Number" resolve="Number" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="6ZRhjsGyf2d" role="33vP2m">
              <node concept="Tc6Ow" id="6ZRhjsGyf2e" role="2ShVmc">
                <node concept="2ShNRf" id="6ZRhjsGyf2f" role="HW$Y0">
                  <node concept="Tc6Ow" id="6ZRhjsGyf2g" role="2ShVmc">
                    <node concept="3cmrfG" id="6ZRhjsGyf2h" role="HW$Y0">
                      <property role="3cmrfH" value="3" />
                    </node>
                    <node concept="2ShNRf" id="6ZRhjsGyf2i" role="HW$Y0">
                      <node concept="1pGfFk" id="6ZRhjsGyf2j" role="2ShVmc">
                        <ref role="37wK5l" to="xlxw:~BigInteger.&lt;init&gt;(java.lang.String)" resolve="BigInteger" />
                        <node concept="Xl_RD" id="6ZRhjsGyf2k" role="37wK5m">
                          <property role="Xl_RC" value="7" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="6ZRhjsGyf2l" role="HW$YZ">
                      <ref role="3uigEE" to="wyt6:~Number" resolve="Number" />
                    </node>
                  </node>
                </node>
                <node concept="_YKpA" id="6ZRhjsGyf2m" role="HW$YZ">
                  <node concept="3uibUv" id="6ZRhjsGyf2n" role="_ZDj9">
                    <ref role="3uigEE" to="wyt6:~Number" resolve="Number" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ZRhjsGyf2o" role="3cqZAp">
          <node concept="3cpWsn" id="6ZRhjsGyf2p" role="3cpWs9">
            <property role="TrG5h" value="seqNum" />
            <node concept="A3Dl8" id="6ZRhjsGyf2q" role="1tU5fm">
              <node concept="3uibUv" id="6ZRhjsGyf2r" role="A3Ik2">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2OqwBi" id="6ZRhjsGyf2s" role="33vP2m">
              <node concept="37vLTw" id="6ZRhjsGyf2t" role="2Oq$k0">
                <ref role="3cqZAo" node="6ZRhjsGyf29" resolve="list" />
              </node>
              <node concept="3$u5V9" id="6ZRhjsGyf2u" role="2OqNvi">
                <node concept="37Ijox" id="6ZRhjsGyf2v" role="23t8la">
                  <ref role="37Ijqf" node="6ZRhjsGycrA" resolve="process" />
                  <node concept="2FaPjH" id="6ZRhjsGyf2w" role="wWaWy">
                    <node concept="3uibUv" id="6ZRhjsGyf2x" role="2FaQuo">
                      <ref role="3uigEE" node="6ZRhjsGycr_" resolve="BoundsTypes.UpperBounded" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3vlDli" id="6ZRhjsGyf2y" role="3cqZAp">
          <node concept="2OqwBi" id="6ZRhjsGyf2z" role="3tpDZB">
            <node concept="37vLTw" id="6ZRhjsGyf2$" role="2Oq$k0">
              <ref role="3cqZAo" node="6ZRhjsGyf2p" resolve="seqNum" />
            </node>
            <node concept="1uHKPH" id="6ZRhjsGyf2_" role="2OqNvi" />
          </node>
          <node concept="3cmrfG" id="6ZRhjsGyf2A" role="3tpDZA">
            <property role="3cmrfH" value="3" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6ZRhjsGychH" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6ZRhjsGyfBW">
    <property role="TrG5h" value="MethodReferences" />
    <node concept="312cEu" id="6ZRhjsGymwy" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="AbstractVisited" />
      <property role="1sVAO0" value="true" />
      <node concept="3clFbW" id="6ZRhjsGymwz" role="jymVt">
        <node concept="3cqZAl" id="6ZRhjsGymw$" role="3clF45" />
        <node concept="3clFbS" id="6ZRhjsGymw_" role="3clF47">
          <node concept="3SKdUt" id="6ZRhjsGymwA" role="3cqZAp">
            <node concept="1PaTwC" id="6ZRhjsGymwB" role="1aUNEU">
              <node concept="3oM_SD" id="6ZRhjsGymwC" role="1PaTwD">
                <property role="3oM_SC" value="Constructor" />
              </node>
              <node concept="3oM_SD" id="6ZRhjsGymwD" role="1PaTwD">
                <property role="3oM_SC" value="needed" />
              </node>
              <node concept="3oM_SD" id="6ZRhjsGymwE" role="1PaTwD">
                <property role="3oM_SC" value="for" />
              </node>
              <node concept="3oM_SD" id="6ZRhjsGymwF" role="1PaTwD">
                <property role="3oM_SC" value="generation" />
              </node>
              <node concept="3oM_SD" id="6ZRhjsGymwG" role="1PaTwD">
                <property role="3oM_SC" value="to" />
              </node>
              <node concept="3oM_SD" id="6ZRhjsGymwH" role="1PaTwD">
                <property role="3oM_SC" value="work" />
              </node>
              <node concept="3oM_SD" id="6ZRhjsGymwI" role="1PaTwD">
                <property role="3oM_SC" value="if" />
              </node>
              <node concept="3oM_SD" id="6ZRhjsGymwJ" role="1PaTwD">
                <property role="3oM_SC" value="instanciated" />
              </node>
              <node concept="3oM_SD" id="6ZRhjsGymwK" role="1PaTwD">
                <property role="3oM_SC" value="with" />
              </node>
              <node concept="3oM_SD" id="6ZRhjsGymwL" role="1PaTwD">
                <property role="3oM_SC" value="method" />
              </node>
              <node concept="3oM_SD" id="6ZRhjsGymwM" role="1PaTwD">
                <property role="3oM_SC" value="ref" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="6ZRhjsGymwN" role="1B3o_S" />
      </node>
      <node concept="3clFbW" id="6ZRhjsGymwO" role="jymVt">
        <node concept="3cqZAl" id="6ZRhjsGymwP" role="3clF45" />
        <node concept="3clFbS" id="6ZRhjsGymwQ" role="3clF47" />
        <node concept="37vLTG" id="6ZRhjsGymwR" role="3clF46">
          <property role="TrG5h" value="b" />
          <node concept="3uibUv" id="6ZRhjsGymwS" role="1tU5fm">
            <ref role="3uigEE" node="6ZRhjsGymxk" resolve="MethodReferences.AbstractBuilder" />
            <node concept="16syzq" id="6ZRhjsGymwT" role="11_B2D">
              <ref role="16sUi3" node="6ZRhjsGymx1" resolve="U" />
            </node>
            <node concept="16syzq" id="6ZRhjsGymwU" role="11_B2D">
              <ref role="16sUi3" node="6ZRhjsGymx1" resolve="U" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="6ZRhjsGymwV" role="1B3o_S" />
      </node>
      <node concept="3clFb_" id="6ZRhjsGymwW" role="jymVt">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="visit" />
        <node concept="3clFbS" id="6ZRhjsGymwX" role="3clF47" />
        <node concept="3cqZAl" id="6ZRhjsGymwY" role="3clF45" />
        <node concept="37vLTG" id="6ZRhjsGymwZ" role="3clF46">
          <property role="TrG5h" value="item" />
          <node concept="16syzq" id="6ZRhjsGymx0" role="1tU5fm">
            <ref role="16sUi3" node="6ZRhjsGymx1" resolve="U" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6ZRhjsGymx1" role="16eVyc">
        <property role="TrG5h" value="U" />
      </node>
    </node>
    <node concept="3HP615" id="6ZRhjsGymx2" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Builder" />
      <node concept="3clFb_" id="6ZRhjsGymx3" role="jymVt">
        <property role="TrG5h" value="make" />
        <node concept="3clFbS" id="6ZRhjsGymx4" role="3clF47" />
        <node concept="3Tm1VV" id="6ZRhjsGymx5" role="1B3o_S" />
        <node concept="16syzq" id="6ZRhjsGymx6" role="3clF45">
          <ref role="16sUi3" node="6ZRhjsGymxi" resolve="T" />
        </node>
        <node concept="37vLTG" id="6ZRhjsGymx7" role="3clF46">
          <property role="TrG5h" value="capacity" />
          <node concept="16syzq" id="6ZRhjsGymx8" role="1tU5fm">
            <ref role="16sUi3" node="6ZRhjsGymxj" resolve="U" />
          </node>
        </node>
      </node>
      <node concept="2YIFZL" id="6ZRhjsGymx9" role="jymVt">
        <property role="TrG5h" value="copy" />
        <node concept="3clFbS" id="6ZRhjsGymxa" role="3clF47">
          <node concept="3cpWs6" id="6ZRhjsGymxb" role="3cqZAp">
            <node concept="37vLTw" id="6ZRhjsGymxc" role="3cqZAk">
              <ref role="3cqZAo" node="6ZRhjsGymxg" resolve="item" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="6ZRhjsGymxd" role="1B3o_S" />
        <node concept="16euLQ" id="6ZRhjsGymxe" role="16eVyc">
          <property role="TrG5h" value="M" />
        </node>
        <node concept="16syzq" id="6ZRhjsGymxf" role="3clF45">
          <ref role="16sUi3" node="6ZRhjsGymxe" resolve="M" />
        </node>
        <node concept="37vLTG" id="6ZRhjsGymxg" role="3clF46">
          <property role="TrG5h" value="item" />
          <node concept="16syzq" id="6ZRhjsGymxh" role="1tU5fm">
            <ref role="16sUi3" node="6ZRhjsGymxe" resolve="M" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6ZRhjsGymxi" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="16euLQ" id="6ZRhjsGymxj" role="16eVyc">
        <property role="TrG5h" value="U" />
      </node>
    </node>
    <node concept="312cEu" id="6ZRhjsGymxk" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="1sVAO0" value="true" />
      <property role="TrG5h" value="AbstractBuilder" />
      <node concept="3clFb_" id="6ZRhjsGymxl" role="jymVt">
        <property role="TrG5h" value="make" />
        <property role="1EzhhJ" value="true" />
        <node concept="3clFbS" id="6ZRhjsGymxm" role="3clF47" />
        <node concept="3Tm1VV" id="6ZRhjsGymxn" role="1B3o_S" />
        <node concept="16syzq" id="6ZRhjsGymxo" role="3clF45">
          <ref role="16sUi3" node="6ZRhjsGymxr" resolve="T" />
        </node>
        <node concept="37vLTG" id="6ZRhjsGymxp" role="3clF46">
          <property role="TrG5h" value="capacity" />
          <node concept="16syzq" id="6ZRhjsGymxq" role="1tU5fm">
            <ref role="16sUi3" node="6ZRhjsGymxs" resolve="U" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6ZRhjsGymxr" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="16euLQ" id="6ZRhjsGymxs" role="16eVyc">
        <property role="TrG5h" value="U" />
      </node>
    </node>
    <node concept="3clFb_" id="6ZRhjsGymxt" role="jymVt">
      <property role="TrG5h" value="forEachInList" />
      <node concept="3clFbS" id="6ZRhjsGymxu" role="3clF47">
        <node concept="3clFbF" id="6ZRhjsGymxv" role="3cqZAp">
          <node concept="2OqwBi" id="6ZRhjsGymxw" role="3clFbG">
            <node concept="37vLTw" id="6ZRhjsGymxx" role="2Oq$k0">
              <ref role="3cqZAo" node="6ZRhjsGymxA" resolve="items" />
            </node>
            <node concept="2es0OD" id="6ZRhjsGymxy" role="2OqNvi">
              <node concept="37Ijox" id="6ZRhjsGymxz" role="23t8la">
                <ref role="37Ijqf" node="6ZRhjsGymwW" resolve="visit" />
                <node concept="37vLTw" id="6ZRhjsGymx$" role="wWaWy">
                  <ref role="3cqZAo" node="6ZRhjsGymxD" resolve="action" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6ZRhjsGymx_" role="3clF45" />
      <node concept="37vLTG" id="6ZRhjsGymxA" role="3clF46">
        <property role="TrG5h" value="items" />
        <node concept="_YKpA" id="6ZRhjsGymxB" role="1tU5fm">
          <node concept="16syzq" id="6ZRhjsGymxC" role="_ZDj9">
            <ref role="16sUi3" node="6ZRhjsGymxG" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6ZRhjsGymxD" role="3clF46">
        <property role="TrG5h" value="action" />
        <node concept="3uibUv" id="6ZRhjsGymxE" role="1tU5fm">
          <ref role="3uigEE" node="6ZRhjsGymwy" resolve="MethodReferences.AbstractVisited" />
          <node concept="16syzq" id="6ZRhjsGymxF" role="11_B2D">
            <ref role="16sUi3" node="6ZRhjsGymxG" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6ZRhjsGymxG" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="312cEu" id="6ZRhjsGymxH" role="jymVt">
      <property role="TrG5h" value="ItemContainer" />
      <node concept="312cEg" id="6ZRhjsGymxI" role="jymVt">
        <property role="TrG5h" value="item" />
        <node concept="3Tm6S6" id="6ZRhjsGymxJ" role="1B3o_S" />
        <node concept="16syzq" id="6ZRhjsGymxK" role="1tU5fm">
          <ref role="16sUi3" node="6ZRhjsGymyi" resolve="E" />
        </node>
      </node>
      <node concept="3clFbW" id="6ZRhjsGymxL" role="jymVt">
        <node concept="3cqZAl" id="6ZRhjsGymxM" role="3clF45" />
        <node concept="3clFbS" id="6ZRhjsGymxN" role="3clF47">
          <node concept="3clFbF" id="6ZRhjsGymxO" role="3cqZAp">
            <node concept="37vLTI" id="6ZRhjsGymxP" role="3clFbG">
              <node concept="37vLTw" id="6ZRhjsGymxQ" role="37vLTx">
                <ref role="3cqZAo" node="6ZRhjsGymxU" resolve="item" />
              </node>
              <node concept="2OqwBi" id="6ZRhjsGymxR" role="37vLTJ">
                <node concept="Xjq3P" id="6ZRhjsGymxS" role="2Oq$k0" />
                <node concept="2OwXpG" id="6ZRhjsGymxT" role="2OqNvi">
                  <ref role="2Oxat5" node="6ZRhjsGymxI" resolve="item" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="6ZRhjsGymxU" role="3clF46">
          <property role="TrG5h" value="item" />
          <node concept="16syzq" id="6ZRhjsGymxV" role="1tU5fm">
            <ref role="16sUi3" node="6ZRhjsGymyi" resolve="E" />
          </node>
        </node>
      </node>
      <node concept="2YIFZL" id="6ZRhjsGymxW" role="jymVt">
        <property role="TrG5h" value="init" />
        <node concept="3clFbS" id="6ZRhjsGymxX" role="3clF47">
          <node concept="3cpWs6" id="6ZRhjsGymxY" role="3cqZAp">
            <node concept="2ShNRf" id="6ZRhjsGymxZ" role="3cqZAk">
              <node concept="1pGfFk" id="6ZRhjsGymy0" role="2ShVmc">
                <ref role="37wK5l" node="6ZRhjsGymxL" resolve="MethodReferences.ItemContainer" />
                <node concept="37vLTw" id="6ZRhjsGymy1" role="37wK5m">
                  <ref role="3cqZAo" node="6ZRhjsGymy5" resolve="content" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="6ZRhjsGymy2" role="16eVyc">
          <property role="TrG5h" value="W" />
        </node>
        <node concept="3uibUv" id="6ZRhjsGymy3" role="3clF45">
          <ref role="3uigEE" node="6ZRhjsGymxH" resolve="MethodReferences.ItemContainer" />
          <node concept="16syzq" id="6ZRhjsGymy4" role="11_B2D">
            <ref role="16sUi3" node="6ZRhjsGymy2" resolve="W" />
          </node>
        </node>
        <node concept="37vLTG" id="6ZRhjsGymy5" role="3clF46">
          <property role="TrG5h" value="content" />
          <node concept="16syzq" id="6ZRhjsGymy6" role="1tU5fm">
            <ref role="16sUi3" node="6ZRhjsGymy2" resolve="W" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="6ZRhjsGymy7" role="jymVt">
        <property role="TrG5h" value="get" />
        <node concept="3clFbS" id="6ZRhjsGymy8" role="3clF47">
          <node concept="3cpWs6" id="6ZRhjsGymy9" role="3cqZAp">
            <node concept="37vLTw" id="6ZRhjsGymya" role="3cqZAk">
              <ref role="3cqZAo" node="6ZRhjsGymxI" resolve="item" />
            </node>
          </node>
        </node>
        <node concept="16syzq" id="6ZRhjsGymyb" role="3clF45">
          <ref role="16sUi3" node="6ZRhjsGymyi" resolve="E" />
        </node>
      </node>
      <node concept="3clFb_" id="6ZRhjsGymyc" role="jymVt">
        <property role="TrG5h" value="self" />
        <node concept="3clFbS" id="6ZRhjsGymyd" role="3clF47">
          <node concept="3cpWs6" id="6ZRhjsGymye" role="3cqZAp">
            <node concept="Xjq3P" id="6ZRhjsGymyf" role="3cqZAk" />
          </node>
        </node>
        <node concept="3uibUv" id="6ZRhjsGymyg" role="3clF45">
          <ref role="3uigEE" node="6ZRhjsGymxH" resolve="MethodReferences.ItemContainer" />
          <node concept="16syzq" id="6ZRhjsGymyh" role="11_B2D">
            <ref role="16sUi3" node="6ZRhjsGymyi" resolve="E" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6ZRhjsGymyi" role="16eVyc">
        <property role="TrG5h" value="E" />
      </node>
    </node>
    <node concept="2tJIrI" id="6ZRhjsGymyo" role="jymVt" />
    <node concept="3clFb_" id="6ZRhjsGymyp" role="jymVt">
      <property role="TrG5h" value="returnContext" />
      <node concept="3clFbS" id="6ZRhjsGymyq" role="3clF47">
        <node concept="3clFbJ" id="6ZRhjsGymyr" role="3cqZAp">
          <node concept="3clFbS" id="6ZRhjsGymys" role="3clFbx">
            <node concept="3cpWs6" id="6ZRhjsGymyt" role="3cqZAp">
              <node concept="37Ijox" id="6ZRhjsGymyu" role="3cqZAk">
                <ref role="37Ijqf" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                <node concept="2FaPjH" id="6ZRhjsGymyv" role="wWaWy">
                  <node concept="17QB3L" id="6ZRhjsGymyw" role="2FaQuo" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6ZRhjsGymyx" role="3clFbw">
            <node concept="3cmrfG" id="6ZRhjsGymyy" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2dk9JS" id="6ZRhjsGymyz" role="3uHU7B">
              <node concept="2YIFZM" id="6ZRhjsGymy$" role="3uHU7B">
                <ref role="37wK5l" to="wyt6:~System.currentTimeMillis()" resolve="currentTimeMillis" />
                <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
              </node>
              <node concept="3cmrfG" id="6ZRhjsGymy_" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ZRhjsGymyA" role="3cqZAp">
          <node concept="37Ijox" id="6ZRhjsGymyB" role="3clFbG">
            <ref role="37Ijqf" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
            <node concept="2FaPjH" id="6ZRhjsGymyC" role="wWaWy">
              <node concept="17QB3L" id="6ZRhjsGymyD" role="2FaQuo" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6ZRhjsGymyE" role="3clF45">
        <ref role="3uigEE" to="urs3:25RNw_Cdl$e" resolve="ISelector" />
        <node concept="3uibUv" id="6ZRhjsGymyF" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
        <node concept="17QB3L" id="6ZRhjsGymyG" role="11_B2D" />
      </node>
    </node>
    <node concept="2tJIrI" id="6ZRhjsGymyH" role="jymVt" />
    <node concept="3HP615" id="6ZRhjsGymyI" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="SelectorProvider" />
      <node concept="3clFb_" id="6ZRhjsGymyJ" role="jymVt">
        <property role="TrG5h" value="get" />
        <node concept="3clFbS" id="6ZRhjsGymyK" role="3clF47" />
        <node concept="3Tm1VV" id="6ZRhjsGymyL" role="1B3o_S" />
        <node concept="3uibUv" id="6ZRhjsGymyM" role="3clF45">
          <ref role="3uigEE" to="urs3:25RNw_Cdl$e" resolve="ISelector" />
          <node concept="3uibUv" id="6ZRhjsGymyN" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
          <node concept="17QB3L" id="6ZRhjsGymyO" role="11_B2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6ZRhjsGymyP" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6ZRhjsGymyQ" role="jymVt" />
    <node concept="3clFb_" id="6ZRhjsGyslS" role="jymVt">
      <property role="TrG5h" value="consumerProvider" />
      <node concept="3cqZAl" id="6ZRhjsGyslU" role="3clF45" />
      <node concept="3Tm1VV" id="6ZRhjsGyslV" role="1B3o_S" />
      <node concept="3clFbS" id="6ZRhjsGyslW" role="3clF47">
        <node concept="3cpWs8" id="6ZRhjsGysqJ" role="3cqZAp">
          <node concept="3cpWsn" id="6ZRhjsGysqK" role="3cpWs9">
            <property role="TrG5h" value="provider" />
            <node concept="3uibUv" id="6ZRhjsGysqL" role="1tU5fm">
              <ref role="3uigEE" node="6ZRhjsGymyI" resolve="MethodReferences.SelectorProvider" />
            </node>
            <node concept="1bVj0M" id="6ZRhjsGysqM" role="33vP2m">
              <node concept="3clFbS" id="6ZRhjsGysqN" role="1bW5cS">
                <node concept="3clFbF" id="6ZRhjsGysqO" role="3cqZAp">
                  <node concept="37Ijox" id="6ZRhjsGysqP" role="3clFbG">
                    <ref role="37Ijqf" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                    <node concept="2FaPjH" id="6ZRhjsGysqQ" role="wWaWy">
                      <node concept="17QB3L" id="6ZRhjsGysqR" role="2FaQuo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ZRhjsGyuTt" role="3cqZAp">
          <node concept="3cpWsn" id="6ZRhjsGyuTu" role="3cpWs9">
            <property role="TrG5h" value="consumer" />
            <node concept="3uibUv" id="6ZRhjsGyuTv" role="1tU5fm">
              <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
              <node concept="3uibUv" id="6ZRhjsGyuTw" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="2OqwBi" id="6ZRhjsGyuTx" role="33vP2m">
              <node concept="1bVj0M" id="6ZRhjsGyuTy" role="2Oq$k0">
                <node concept="3clFbS" id="6ZRhjsGyuTz" role="1bW5cS">
                  <node concept="3clFbF" id="6ZRhjsGyuT$" role="3cqZAp">
                    <node concept="37Ijox" id="6ZRhjsGyuT_" role="3clFbG">
                      <ref role="37Ijqf" to="wyt6:~Integer.bitCount(int)" resolve="bitCount" />
                      <node concept="2FaPjH" id="6ZRhjsGyuTA" role="wWaWy">
                        <node concept="3uibUv" id="6ZRhjsGyuTB" role="2FaQuo">
                          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Bd96e" id="6ZRhjsGyuTC" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ZRhjsGyBAU" role="jymVt" />
    <node concept="3clFb_" id="6ZRhjsGyBLY" role="jymVt">
      <property role="TrG5h" value="instanceMethod" />
      <node concept="3cqZAl" id="6ZRhjsGyBM0" role="3clF45" />
      <node concept="3Tm1VV" id="6ZRhjsGyBM1" role="1B3o_S" />
      <node concept="3clFbS" id="6ZRhjsGyBM2" role="3clF47">
        <node concept="3cpWs8" id="6ZRhjsGyG9i" role="3cqZAp">
          <node concept="3cpWsn" id="6ZRhjsGyG9j" role="3cpWs9">
            <property role="TrG5h" value="integers" />
            <node concept="_YKpA" id="6ZRhjsGyG9k" role="1tU5fm">
              <node concept="10Oyi0" id="6ZRhjsGyG9l" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="6ZRhjsGyG9m" role="33vP2m">
              <node concept="Tc6Ow" id="6ZRhjsGyG9n" role="2ShVmc">
                <node concept="10Oyi0" id="6ZRhjsGyG9o" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ZRhjsGyISc" role="3cqZAp">
          <node concept="3cpWsn" id="6ZRhjsGyISd" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="6ZRhjsGyISe" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="6ZRhjsGyISf" role="33vP2m">
              <node concept="1pGfFk" id="6ZRhjsGyISg" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6ZRhjsGyISh" role="3cqZAp">
          <node concept="1PaTwC" id="6ZRhjsGyISi" role="1aUNEU">
            <node concept="3oM_SD" id="6ZRhjsGyISj" role="1PaTwD">
              <property role="3oM_SC" value="Here" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGyISk" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGyISl" role="1PaTwD">
              <property role="3oM_SC" value="instance" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGyISm" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGyISn" role="1PaTwD">
              <property role="3oM_SC" value="provided" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGyISo" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGyISp" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGyISq" role="1PaTwD">
              <property role="3oM_SC" value="builder" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGyISr" role="1PaTwD">
              <property role="3oM_SC" value="expression:" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGyISs" role="1PaTwD">
              <property role="3oM_SC" value="(a)" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGyISt" role="1PaTwD">
              <property role="3oM_SC" value="=&gt;" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGyISu" role="1PaTwD">
              <property role="3oM_SC" value="builder.append(a)" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ZRhjsGyISv" role="3cqZAp">
          <node concept="2OqwBi" id="6ZRhjsGyISw" role="3clFbG">
            <node concept="37vLTw" id="6ZRhjsGyISx" role="2Oq$k0">
              <ref role="3cqZAo" node="6ZRhjsGyG9j" resolve="integers" />
            </node>
            <node concept="2es0OD" id="6ZRhjsGyISy" role="2OqNvi">
              <node concept="37Ijox" id="6ZRhjsGyISz" role="23t8la">
                <ref role="37Ijqf" to="wyt6:~StringBuilder.append(int)" resolve="append" />
                <node concept="37vLTw" id="6ZRhjsGyIS$" role="wWaWy">
                  <ref role="3cqZAo" node="6ZRhjsGyISd" resolve="builder" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ZRhjsGyMdH" role="3cqZAp" />
        <node concept="3cpWs8" id="6ZRhjsGyMj9" role="3cqZAp">
          <node concept="3cpWsn" id="6ZRhjsGyMja" role="3cpWs9">
            <property role="TrG5h" value="content" />
            <node concept="10Q1$e" id="6ZRhjsGyMjb" role="1tU5fm">
              <node concept="17QB3L" id="6ZRhjsGyMjc" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="6ZRhjsGyMjd" role="33vP2m">
              <node concept="3g6Rrh" id="6ZRhjsGyMje" role="2ShVmc">
                <node concept="Xl_RD" id="6ZRhjsGyMjf" role="3g7hyw">
                  <property role="Xl_RC" value="A" />
                </node>
                <node concept="Xl_RD" id="6ZRhjsGyMjg" role="3g7hyw">
                  <property role="Xl_RC" value="D" />
                </node>
                <node concept="Xl_RD" id="6ZRhjsGyMjh" role="3g7hyw">
                  <property role="Xl_RC" value="C" />
                </node>
                <node concept="Xl_RD" id="6ZRhjsGyMji" role="3g7hyw">
                  <property role="Xl_RC" value="B" />
                </node>
                <node concept="17QB3L" id="6ZRhjsGyMjj" role="3g7fb8" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6ZRhjsGyMjk" role="3cqZAp">
          <node concept="1PaTwC" id="6ZRhjsGyMjl" role="1aUNEU">
            <node concept="3oM_SD" id="6ZRhjsGyMjm" role="1PaTwD">
              <property role="3oM_SC" value="Here" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGyMjn" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGyMjo" role="1PaTwD">
              <property role="3oM_SC" value="instance" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGyMjp" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGyMjq" role="1PaTwD">
              <property role="3oM_SC" value="provided" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGyMjr" role="1PaTwD">
              <property role="3oM_SC" value="by" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGyMjs" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGyMjt" role="1PaTwD">
              <property role="3oM_SC" value="callee:" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGyMju" role="1PaTwD">
              <property role="3oM_SC" value="(a," />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGyMjv" role="1PaTwD">
              <property role="3oM_SC" value="b)" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGyMjw" role="1PaTwD">
              <property role="3oM_SC" value="=&gt;" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGyMjx" role="1PaTwD">
              <property role="3oM_SC" value="a.compareToIgnoreCase(b)" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ZRhjsGyMjy" role="3cqZAp">
          <node concept="2YIFZM" id="6ZRhjsGyMjz" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Arrays.sort(java.lang.Object[],java.util.Comparator)" resolve="sort" />
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <node concept="37vLTw" id="6ZRhjsGyMj$" role="37wK5m">
              <ref role="3cqZAo" node="6ZRhjsGyMja" resolve="content" />
            </node>
            <node concept="37Ijox" id="6ZRhjsGyMj_" role="37wK5m">
              <ref role="37Ijqf" to="wyt6:~CharSequence.compare(java.lang.CharSequence,java.lang.CharSequence)" resolve="compare" />
              <node concept="2FaPjH" id="6ZRhjsGyMjA" role="wWaWy">
                <node concept="3uibUv" id="6ZRhjsGz0FD" role="2FaQuo">
                  <ref role="3uigEE" to="wyt6:~CharSequence" resolve="CharSequence" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ZRhjsGyNpN" role="3cqZAp">
          <node concept="2YIFZM" id="6ZRhjsGyNpO" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Arrays.sort(java.lang.Object[],java.util.Comparator)" resolve="sort" />
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <node concept="37vLTw" id="6ZRhjsGyNpP" role="37wK5m">
              <ref role="3cqZAo" node="6ZRhjsGyMja" resolve="content" />
            </node>
            <node concept="37Ijox" id="6ZRhjsGyNpQ" role="37wK5m">
              <ref role="37Ijqf" to="wyt6:~String.compareToIgnoreCase(java.lang.String)" resolve="compareToIgnoreCase" />
              <node concept="2FaPjH" id="6ZRhjsGyNpR" role="wWaWy">
                <node concept="17QB3L" id="6ZRhjsGyNpS" role="2FaQuo" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ZRhjsGzwb6" role="jymVt" />
    <node concept="3clFb_" id="6ZRhjsGzwwe" role="jymVt">
      <property role="TrG5h" value="constructor" />
      <node concept="3cqZAl" id="6ZRhjsGzwwg" role="3clF45" />
      <node concept="3Tm1VV" id="6ZRhjsGzwwh" role="1B3o_S" />
      <node concept="3clFbS" id="6ZRhjsGzwwi" role="3clF47">
        <node concept="3cpWs8" id="6ZRhjsGzyRF" role="3cqZAp">
          <node concept="3cpWsn" id="6ZRhjsGzyRG" role="3cpWs9">
            <property role="TrG5h" value="intBuider" />
            <node concept="37Ijox" id="6ZRhjsGzyRH" role="33vP2m">
              <ref role="37Ijqf" to="i5cy:~AtomicInteger.&lt;init&gt;(int)" resolve="AtomicInteger" />
              <node concept="2FaPjH" id="6ZRhjsGzyRI" role="wWaWy">
                <node concept="3uibUv" id="6ZRhjsGzyRJ" role="2FaQuo">
                  <ref role="3uigEE" to="i5cy:~AtomicInteger" resolve="AtomicInteger" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="6ZRhjsGzyRK" role="1tU5fm">
              <ref role="3uigEE" node="6ZRhjsGymx2" resolve="MethodReferences.Builder" />
              <node concept="3uibUv" id="6ZRhjsGzyRL" role="11_B2D">
                <ref role="3uigEE" to="i5cy:~AtomicInteger" resolve="AtomicInteger" />
              </node>
              <node concept="3uibUv" id="6ZRhjsGzyRM" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ZRhjsGzzuv" role="jymVt" />
    <node concept="3clFb_" id="6ZRhjsGzA3p" role="jymVt">
      <property role="TrG5h" value="staticMethod" />
      <node concept="3cqZAl" id="6ZRhjsGzA3r" role="3clF45" />
      <node concept="3Tm1VV" id="6ZRhjsGzA3s" role="1B3o_S" />
      <node concept="3clFbS" id="6ZRhjsGzA3t" role="3clF47">
        <node concept="3cpWs8" id="6ZRhjsG$JAc" role="3cqZAp">
          <node concept="3cpWsn" id="6ZRhjsG$JAd" role="3cpWs9">
            <property role="TrG5h" value="list" />
            <node concept="_YKpA" id="6ZRhjsG$JAb" role="1tU5fm">
              <node concept="17QB3L" id="6ZRhjsG$K1z" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="6ZRhjsG$JAe" role="33vP2m">
              <node concept="Tc6Ow" id="6ZRhjsG$JAf" role="2ShVmc">
                <node concept="17QB3L" id="6ZRhjsG$JAg" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ZRhjsGzCXG" role="3cqZAp">
          <node concept="2OqwBi" id="6ZRhjsGzCXI" role="3clFbG">
            <node concept="3$u5V9" id="6ZRhjsGzCXK" role="2OqNvi">
              <node concept="37Ijox" id="6ZRhjsGzCXL" role="23t8la">
                <ref role="37Ijqf" to="wyt6:~Double.parseDouble(java.lang.String)" resolve="parseDouble" />
                <node concept="2FaPjH" id="6ZRhjsGzCXM" role="wWaWy">
                  <node concept="3uibUv" id="6ZRhjsGzCXN" role="2FaQuo">
                    <ref role="3uigEE" to="wyt6:~Double" resolve="Double" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6ZRhjsG$JAh" role="2Oq$k0">
              <ref role="3cqZAo" node="6ZRhjsG$JAd" resolve="list" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ZRhjsG_4cq" role="3cqZAp">
          <node concept="3cpWsn" id="6ZRhjsG_4cr" role="3cpWs9">
            <property role="TrG5h" value="seq1" />
            <node concept="A3Dl8" id="6ZRhjsG_4cp" role="1tU5fm">
              <node concept="3uibUv" id="6ZRhjsG_4co" role="A3Ik2">
                <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
              </node>
            </node>
            <node concept="2OqwBi" id="6ZRhjsG_4cs" role="33vP2m">
              <node concept="2ShNRf" id="6ZRhjsG_4ct" role="2Oq$k0">
                <node concept="kMnCb" id="6ZRhjsG_4cu" role="2ShVmc">
                  <node concept="3uibUv" id="6ZRhjsG_4cv" role="kMuH3">
                    <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                  </node>
                </node>
              </node>
              <node concept="3$u5V9" id="6ZRhjsG_4cw" role="2OqNvi">
                <node concept="37Ijox" id="6ZRhjsG_4cx" role="23t8la">
                  <ref role="37Ijqf" node="6ZRhjsGymx9" resolve="copy" />
                  <node concept="2FaPjH" id="6ZRhjsG_4cy" role="wWaWy">
                    <node concept="3uibUv" id="6ZRhjsG_4cz" role="2FaQuo">
                      <ref role="3uigEE" node="6ZRhjsGymx2" resolve="MethodReferences.Builder" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ZRhjsG_4F4" role="3cqZAp">
          <node concept="3cpWsn" id="6ZRhjsG_4F5" role="3cpWs9">
            <property role="TrG5h" value="seq2" />
            <node concept="A3Dl8" id="6ZRhjsG_4F6" role="1tU5fm">
              <node concept="3uibUv" id="6ZRhjsG_4F7" role="A3Ik2">
                <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
              </node>
            </node>
            <node concept="2OqwBi" id="6ZRhjsG_4F8" role="33vP2m">
              <node concept="2ShNRf" id="6ZRhjsG_4F9" role="2Oq$k0">
                <node concept="kMnCb" id="6ZRhjsG_4Fa" role="2ShVmc">
                  <node concept="3uibUv" id="6ZRhjsG_4Fb" role="kMuH3">
                    <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                  </node>
                </node>
              </node>
              <node concept="3$u5V9" id="6ZRhjsG_4Fc" role="2OqNvi">
                <node concept="37Ijox" id="6ZRhjsG_4Fd" role="23t8la">
                  <ref role="37Ijqf" node="6ZRhjsGymx9" resolve="copy" />
                  <node concept="2FaPjH" id="6ZRhjsG_4Fe" role="wWaWy">
                    <node concept="3uibUv" id="6ZRhjsG_4Ff" role="2FaQuo">
                      <ref role="3uigEE" node="6ZRhjsGymx2" resolve="MethodReferences.Builder" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="6ZRhjsG_5oO" role="3_kYmE">
                    <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ZRhjsG_aA3" role="3cqZAp">
          <node concept="3cpWsn" id="6ZRhjsG_aA4" role="3cpWs9">
            <property role="TrG5h" value="seq3" />
            <node concept="A3Dl8" id="6ZRhjsG_aA2" role="1tU5fm">
              <node concept="3uibUv" id="6ZRhjsG_aA1" role="A3Ik2">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2OqwBi" id="6ZRhjsG_aA5" role="33vP2m">
              <node concept="2OqwBi" id="6ZRhjsG_aA6" role="2Oq$k0">
                <node concept="2OqwBi" id="6ZRhjsG_aA7" role="2Oq$k0">
                  <node concept="2ShNRf" id="6ZRhjsG_aA8" role="2Oq$k0">
                    <node concept="kMnCb" id="6ZRhjsG_aA9" role="2ShVmc">
                      <node concept="3uibUv" id="6ZRhjsG_aAa" role="kMuH3">
                        <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                      </node>
                    </node>
                  </node>
                  <node concept="3$u5V9" id="6ZRhjsG_aAb" role="2OqNvi">
                    <node concept="37Ijox" id="6ZRhjsG_aAc" role="23t8la">
                      <ref role="37Ijqf" node="6ZRhjsGymxW" resolve="init" />
                      <node concept="2FaPjH" id="6ZRhjsG_aAd" role="wWaWy">
                        <node concept="3uibUv" id="6ZRhjsG_aAe" role="2FaQuo">
                          <ref role="3uigEE" node="6ZRhjsGymxH" resolve="MethodReferences.ItemContainer" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3$u5V9" id="6ZRhjsG_aAf" role="2OqNvi">
                  <node concept="37Ijox" id="6ZRhjsG_aAg" role="23t8la">
                    <ref role="37Ijqf" node="6ZRhjsGymy7" resolve="get" />
                    <node concept="2FaPjH" id="6ZRhjsG_aAh" role="wWaWy">
                      <node concept="3uibUv" id="6ZRhjsG_aAi" role="2FaQuo">
                        <ref role="3uigEE" node="6ZRhjsGymxH" resolve="MethodReferences.ItemContainer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3$u5V9" id="6ZRhjsG_aAj" role="2OqNvi">
                <node concept="37Ijox" id="6ZRhjsG_aAk" role="23t8la">
                  <ref role="37Ijqf" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                  <node concept="2FaPjH" id="6ZRhjsG_aAl" role="wWaWy">
                    <node concept="3uibUv" id="6ZRhjsG_aAm" role="2FaQuo">
                      <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ZRhjsG_vtN" role="3cqZAp">
          <node concept="3cpWsn" id="6ZRhjsG_vtO" role="3cpWs9">
            <property role="TrG5h" value="stream" />
            <node concept="3uibUv" id="6ZRhjsG_vtM" role="1tU5fm">
              <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
              <node concept="3uibUv" id="6ZRhjsG_vtL" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2OqwBi" id="6ZRhjsG_vtP" role="33vP2m">
              <node concept="2OqwBi" id="6ZRhjsG_vtQ" role="2Oq$k0">
                <node concept="2OqwBi" id="6ZRhjsG_vtR" role="2Oq$k0">
                  <node concept="2OqwBi" id="6ZRhjsG_vtS" role="2Oq$k0">
                    <node concept="2OqwBi" id="6ZRhjsG_vtT" role="2Oq$k0">
                      <node concept="2ShNRf" id="6ZRhjsG_vtU" role="2Oq$k0">
                        <node concept="1pGfFk" id="6ZRhjsG_vtV" role="2ShVmc">
                          <property role="373rjd" value="true" />
                          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                          <node concept="3uibUv" id="6ZRhjsG_vtW" role="1pMfVU">
                            <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="6ZRhjsG_vtX" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6ZRhjsG_vtY" role="2OqNvi">
                      <ref role="37wK5l" to="1ctc:~Stream.map(java.util.function.Function)" resolve="map" />
                      <node concept="37Ijox" id="6ZRhjsG_vtZ" role="37wK5m">
                        <ref role="37Ijqf" node="6ZRhjsGymxW" resolve="init" />
                        <node concept="2FaPjH" id="6ZRhjsG_vu0" role="wWaWy">
                          <node concept="3uibUv" id="6ZRhjsG_vu1" role="2FaQuo">
                            <ref role="3uigEE" node="6ZRhjsGymxH" resolve="MethodReferences.ItemContainer" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6ZRhjsG_vu2" role="2OqNvi">
                    <ref role="37wK5l" to="1ctc:~Stream.map(java.util.function.Function)" resolve="map" />
                    <node concept="37Ijox" id="6ZRhjsG_vu3" role="37wK5m">
                      <ref role="37Ijqf" node="6ZRhjsGymyc" resolve="self" />
                      <node concept="2FaPjH" id="6ZRhjsG_vu4" role="wWaWy">
                        <node concept="3uibUv" id="6ZRhjsG_vu5" role="2FaQuo">
                          <ref role="3uigEE" node="6ZRhjsGymxH" resolve="MethodReferences.ItemContainer" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6ZRhjsG_vu6" role="2OqNvi">
                  <ref role="37wK5l" to="1ctc:~Stream.map(java.util.function.Function)" resolve="map" />
                  <node concept="37Ijox" id="6ZRhjsG_vu7" role="37wK5m">
                    <ref role="37Ijqf" node="6ZRhjsGymy7" resolve="get" />
                    <node concept="2FaPjH" id="6ZRhjsG_vu8" role="wWaWy">
                      <node concept="3uibUv" id="6ZRhjsG_vu9" role="2FaQuo">
                        <ref role="3uigEE" node="6ZRhjsGymxH" resolve="MethodReferences.ItemContainer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6ZRhjsG_vua" role="2OqNvi">
                <ref role="37wK5l" to="1ctc:~Stream.map(java.util.function.Function)" resolve="map" />
                <node concept="37Ijox" id="6ZRhjsG_vub" role="37wK5m">
                  <ref role="37Ijqf" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                  <node concept="2FaPjH" id="6ZRhjsG_vuc" role="wWaWy">
                    <node concept="3uibUv" id="6ZRhjsG_vud" role="2FaQuo">
                      <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ZRhjsG_YuL" role="3cqZAp">
          <node concept="3cpWsn" id="6ZRhjsG_YuM" role="3cpWs9">
            <property role="TrG5h" value="iseq" />
            <node concept="3uibUv" id="6ZRhjsG_YuK" role="1tU5fm">
              <ref role="3uigEE" to="urs3:5Ffu4tBUx5R" resolve="ISequence" />
              <node concept="3uibUv" id="6ZRhjsG_YuJ" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2OqwBi" id="6ZRhjsG_YuN" role="33vP2m">
              <node concept="2OqwBi" id="6ZRhjsG_YuO" role="2Oq$k0">
                <node concept="2OqwBi" id="6ZRhjsG_YuP" role="2Oq$k0">
                  <node concept="2OqwBi" id="6ZRhjsG_YuQ" role="2Oq$k0">
                    <node concept="2YIFZM" id="6ZRhjsG_YuR" role="2Oq$k0">
                      <ref role="37wK5l" to="urs3:5Ffu4tBUwUt" resolve="fromArray" />
                      <ref role="1Pybhc" to="urs3:5Ffu4tBUwT$" resolve="Sequence" />
                      <node concept="2ShNRf" id="6ZRhjsG_YuS" role="37wK5m">
                        <node concept="3g6Rrh" id="6ZRhjsG_YuT" role="2ShVmc">
                          <node concept="3uibUv" id="6ZRhjsG_YuU" role="3g7fb8">
                            <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="6ZRhjsG_YuV" role="2OqNvi">
                      <ref role="37wK5l" to="urs3:5Ffu4tBUx6Q" resolve="select" />
                      <node concept="37Ijox" id="6ZRhjsG_YuW" role="37wK5m">
                        <ref role="37Ijqf" node="6ZRhjsGymxW" resolve="init" />
                        <node concept="2FaPjH" id="6ZRhjsG_YuX" role="wWaWy">
                          <node concept="3uibUv" id="6ZRhjsG_YuY" role="2FaQuo">
                            <ref role="3uigEE" node="6ZRhjsGymxH" resolve="MethodReferences.ItemContainer" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6ZRhjsG_YuZ" role="2OqNvi">
                    <ref role="37wK5l" to="urs3:5Ffu4tBUx6Q" resolve="select" />
                    <node concept="37Ijox" id="6ZRhjsG_Yv0" role="37wK5m">
                      <ref role="37Ijqf" node="6ZRhjsGymyc" resolve="self" />
                      <node concept="2FaPjH" id="6ZRhjsG_Yv1" role="wWaWy">
                        <node concept="3uibUv" id="6ZRhjsG_Yv2" role="2FaQuo">
                          <ref role="3uigEE" node="6ZRhjsGymxH" resolve="MethodReferences.ItemContainer" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6ZRhjsG_Yv3" role="2OqNvi">
                  <ref role="37wK5l" to="urs3:5Ffu4tBUx6Q" resolve="select" />
                  <node concept="37Ijox" id="6ZRhjsG_Yv4" role="37wK5m">
                    <ref role="37Ijqf" node="6ZRhjsGymy7" resolve="get" />
                    <node concept="2FaPjH" id="6ZRhjsG_Yv5" role="wWaWy">
                      <node concept="3uibUv" id="6ZRhjsG_Yv6" role="2FaQuo">
                        <ref role="3uigEE" node="6ZRhjsGymxH" resolve="MethodReferences.ItemContainer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6ZRhjsG_Yv7" role="2OqNvi">
                <ref role="37wK5l" to="urs3:5Ffu4tBUx6Q" resolve="select" />
                <node concept="37Ijox" id="6ZRhjsG_Yv8" role="37wK5m">
                  <ref role="37Ijqf" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                  <node concept="2FaPjH" id="6ZRhjsG_Yv9" role="wWaWy">
                    <node concept="3uibUv" id="6ZRhjsG_Yva" role="2FaQuo">
                      <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ZRhjsG$$Mo" role="jymVt" />
    <node concept="3clFb_" id="6ZRhjsG$_3S" role="jymVt">
      <property role="TrG5h" value="abstractClass" />
      <node concept="3cqZAl" id="6ZRhjsG$_3U" role="3clF45" />
      <node concept="3Tm1VV" id="6ZRhjsG$_3V" role="1B3o_S" />
      <node concept="3clFbS" id="6ZRhjsG$_3W" role="3clF47">
        <node concept="3cpWs8" id="6ZRhjsG$_eZ" role="3cqZAp">
          <node concept="3cpWsn" id="6ZRhjsG$_f0" role="3cpWs9">
            <property role="TrG5h" value="integers" />
            <node concept="_YKpA" id="6ZRhjsG$_f1" role="1tU5fm">
              <node concept="10Oyi0" id="6ZRhjsG$_f2" role="_ZDj9" />
            </node>
            <node concept="2ShNRf" id="6ZRhjsG$_f3" role="33vP2m">
              <node concept="Tc6Ow" id="6ZRhjsG$_f4" role="2ShVmc">
                <node concept="10Oyi0" id="6ZRhjsG$_f5" role="HW$YZ" />
                <node concept="3cmrfG" id="6ZRhjsG$_f6" role="HW$Y0">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="3cmrfG" id="6ZRhjsG$_f7" role="HW$Y0">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="3cmrfG" id="6ZRhjsG$_f8" role="HW$Y0">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="3cmrfG" id="6ZRhjsG$_f9" role="HW$Y0">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="3cmrfG" id="6ZRhjsG$_fa" role="HW$Y0">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ZRhjsG$_fb" role="3cqZAp">
          <node concept="3cpWsn" id="6ZRhjsG$_fc" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="6ZRhjsG$_fd" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="6ZRhjsG$_fe" role="33vP2m">
              <node concept="1pGfFk" id="6ZRhjsG$_ff" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6ZRhjsG$_fg" role="3cqZAp">
          <node concept="1PaTwC" id="6ZRhjsG$_fh" role="1aUNEU">
            <node concept="3oM_SD" id="6ZRhjsG$_fi" role="1PaTwD">
              <property role="3oM_SC" value="Method" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsG$_fj" role="1PaTwD">
              <property role="3oM_SC" value="reference" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsG$_fk" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsG$_fl" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsG$_fm" role="1PaTwD">
              <property role="3oM_SC" value="used" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsG$_fn" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsG$_fo" role="1PaTwD">
              <property role="3oM_SC" value="replace" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsG$_fp" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsG$_fq" role="1PaTwD">
              <property role="3oM_SC" value="abstract" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsG$_fr" role="1PaTwD">
              <property role="3oM_SC" value="class" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6ZRhjsG$PN6" role="3cqZAp">
          <node concept="1PaTwC" id="6ZRhjsG$PN7" role="1aUNEU">
            <node concept="3oM_SD" id="6ZRhjsG$QgG" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsG$QgI" role="1PaTwD">
              <property role="3oM_SC" value="this" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsG$QgL" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsG$QgP" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsG$QgU" role="1PaTwD">
              <property role="3oM_SC" value="possible" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsG$Qh0" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsG$Qh7" role="1PaTwD">
              <property role="3oM_SC" value="auto-fix" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ZRhjsG$_fs" role="3cqZAp">
          <node concept="1rXfSq" id="6ZRhjsG$_ft" role="3clFbG">
            <ref role="37wK5l" node="6ZRhjsGymxt" resolve="forEachInList" />
            <node concept="37vLTw" id="6ZRhjsG$_fu" role="37wK5m">
              <ref role="3cqZAo" node="6ZRhjsG$_f0" resolve="integers" />
            </node>
            <node concept="37Ijox" id="6ZRhjsG$_fv" role="37wK5m">
              <ref role="37Ijqf" to="wyt6:~StringBuilder.append(int)" resolve="append" />
              <node concept="37vLTw" id="6ZRhjsG$_fw" role="wWaWy">
                <ref role="3cqZAo" node="6ZRhjsG$_fc" resolve="builder" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ZRhjsG$Qhf" role="jymVt" />
    <node concept="3clFb_" id="6ZRhjsG$QxM" role="jymVt">
      <property role="TrG5h" value="context" />
      <node concept="3cqZAl" id="6ZRhjsG$QxO" role="3clF45" />
      <node concept="3Tm1VV" id="6ZRhjsG$QxP" role="1B3o_S" />
      <node concept="3clFbS" id="6ZRhjsG$QxQ" role="3clF47">
        <node concept="3SKdUt" id="6ZRhjsGIX_N" role="3cqZAp">
          <node concept="1PaTwC" id="6ZRhjsGIX_O" role="1aUNEU">
            <node concept="3oM_SD" id="6ZRhjsGIZEh" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGIZEq" role="1PaTwD">
              <property role="3oM_SC" value="provide" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGIZEt" role="1PaTwD">
              <property role="3oM_SC" value="possibility" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGIZEx" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGIZEA" role="1PaTwD">
              <property role="3oM_SC" value="auto-fix" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGIZEV" role="1PaTwD">
              <property role="3oM_SC" value="reference" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGIZF2" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGIZFa" role="1PaTwD">
              <property role="3oM_SC" value="constructor" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGIZFj" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGIZFO" role="1PaTwD">
              <property role="3oM_SC" value="cast" />
            </node>
            <node concept="3oM_SD" id="6ZRhjsGIZFZ" role="1PaTwD">
              <property role="3oM_SC" value="context" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ZRhjsG$S0Y" role="3cqZAp">
          <node concept="3cpWsn" id="6ZRhjsG$S0Z" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="6ZRhjsG$S0X" role="1tU5fm">
              <ref role="3uigEE" node="6ZRhjsGymx2" resolve="MethodReferences.Builder" />
              <node concept="3uibUv" id="6ZRhjsG$S0V" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3uibUv" id="6ZRhjsG$S0W" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="10QFUN" id="6ZRhjsG$S10" role="33vP2m">
              <node concept="37Ijox" id="6ZRhjsG$S11" role="10QFUP">
                <ref role="37Ijqf" to="wyt6:~String.&lt;init&gt;(java.lang.String)" resolve="String" />
                <node concept="2FaPjH" id="6ZRhjsG$S12" role="wWaWy">
                  <node concept="3uibUv" id="6ZRhjsG$S13" role="2FaQuo">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="6ZRhjsG$S14" role="10QFUM">
                <ref role="3uigEE" node="6ZRhjsGymx2" resolve="MethodReferences.Builder" />
                <node concept="17QB3L" id="6ZRhjsG$S15" role="11_B2D" />
                <node concept="17QB3L" id="6ZRhjsG$S16" role="11_B2D" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6ZRhjsG$T9r" role="3cqZAp">
          <node concept="3cpWsn" id="6ZRhjsG$T9s" role="3cpWs9">
            <property role="TrG5h" value="abuilder" />
            <node concept="3uibUv" id="6ZRhjsG$T9q" role="1tU5fm">
              <ref role="3uigEE" node="6ZRhjsGymxk" resolve="MethodReferences.AbstractBuilder" />
              <node concept="3uibUv" id="6ZRhjsG$T9o" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3uibUv" id="6ZRhjsG$T9p" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="10QFUN" id="6ZRhjsG$T9t" role="33vP2m">
              <node concept="37Ijox" id="6ZRhjsG$T9u" role="10QFUP">
                <ref role="37Ijqf" to="wyt6:~String.&lt;init&gt;(java.lang.String)" resolve="String" />
                <node concept="2FaPjH" id="6ZRhjsG$T9v" role="wWaWy">
                  <node concept="3uibUv" id="6ZRhjsG$T9w" role="2FaQuo">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="6ZRhjsG$T9x" role="10QFUM">
                <ref role="3uigEE" node="6ZRhjsGymxk" resolve="MethodReferences.AbstractBuilder" />
                <node concept="17QB3L" id="6ZRhjsG$T9y" role="11_B2D" />
                <node concept="17QB3L" id="6ZRhjsG$T9z" role="11_B2D" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ZRhjsG$UAe" role="3cqZAp">
          <node concept="2ShNRf" id="6ZRhjsG$UAa" role="3clFbG">
            <node concept="YeOm9" id="6ZRhjsG$Wg$" role="2ShVmc">
              <node concept="1Y3b0j" id="6ZRhjsG$WgB" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="6ZRhjsGymwO" resolve="MethodReferences.AbstractVisited" />
                <ref role="1Y3XeK" node="6ZRhjsGymwy" resolve="MethodReferences.AbstractVisited" />
                <node concept="3Tm1VV" id="6ZRhjsG$WgC" role="1B3o_S" />
                <node concept="37Ijox" id="6ZRhjsG$VPs" role="37wK5m">
                  <ref role="37Ijqf" to="wyt6:~String.intern()" resolve="intern" />
                  <node concept="2FaPjH" id="6ZRhjsG$VPu" role="wWaWy">
                    <node concept="3uibUv" id="6ZRhjsG$VPv" role="2FaQuo">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                  </node>
                </node>
                <node concept="3clFb_" id="6ZRhjsG$WlP" role="jymVt">
                  <property role="TrG5h" value="visit" />
                  <node concept="3cqZAl" id="6ZRhjsG$WlR" role="3clF45" />
                  <node concept="37vLTG" id="6ZRhjsG$WlS" role="3clF46">
                    <property role="TrG5h" value="item" />
                    <node concept="17QB3L" id="6ZRhjsG$XSx" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="6ZRhjsG$Wm6" role="3clF47" />
                  <node concept="2AHcQZ" id="6ZRhjsG$Wm7" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="17QB3L" id="6ZRhjsG$Yp2" role="2Ghqu4" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ZRhjsG$LEB" role="jymVt" />
    <node concept="2tJIrI" id="6ZRhjsG$SFX" role="jymVt" />
    <node concept="2tJIrI" id="6ZRhjsG$LJ_" role="jymVt" />
    <node concept="2tJIrI" id="6ZRhjsGymww" role="jymVt" />
    <node concept="3Tm1VV" id="6ZRhjsGyfBX" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6ZRhjsGAf4Y">
    <property role="TrG5h" value="SuperReference" />
    <node concept="312cEu" id="6ZRhjsGAfcd" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Computer" />
      <property role="1sVAO0" value="true" />
      <node concept="312cEg" id="6ZRhjsGAfce" role="jymVt">
        <property role="TrG5h" value="sum" />
        <node concept="3uibUv" id="6ZRhjsGAfcf" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
        <node concept="3Tmbuc" id="6ZRhjsGAfcg" role="1B3o_S" />
        <node concept="3cmrfG" id="6ZRhjsGAfch" role="33vP2m">
          <property role="3cmrfH" value="0" />
        </node>
      </node>
      <node concept="2tJIrI" id="6ZRhjsGAfci" role="jymVt" />
      <node concept="3clFb_" id="6ZRhjsGAfcj" role="jymVt">
        <property role="TrG5h" value="compute" />
        <node concept="3clFbS" id="6ZRhjsGAfck" role="3clF47">
          <node concept="3clFbF" id="6ZRhjsGAfcl" role="3cqZAp">
            <node concept="2OqwBi" id="6ZRhjsGAfcm" role="3clFbG">
              <node concept="37vLTw" id="6ZRhjsGAfcn" role="2Oq$k0">
                <ref role="3cqZAo" node="6ZRhjsGAfcu" resolve="intConsumer" />
              </node>
              <node concept="liA8E" id="6ZRhjsGAfco" role="2OqNvi">
                <ref role="37wK5l" to="82uw:~Consumer.accept(java.lang.Object)" resolve="accept" />
                <node concept="3cmrfG" id="6ZRhjsGAfcp" role="37wK5m">
                  <property role="3cmrfH" value="4545" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6ZRhjsGAfcq" role="3cqZAp">
            <node concept="37vLTw" id="6ZRhjsGAfcr" role="3clFbG">
              <ref role="3cqZAo" node="6ZRhjsGAfce" resolve="sum" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="6ZRhjsGAfcs" role="1B3o_S" />
        <node concept="3uibUv" id="6ZRhjsGAfct" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
        <node concept="37vLTG" id="6ZRhjsGAfcu" role="3clF46">
          <property role="TrG5h" value="intConsumer" />
          <node concept="3uibUv" id="6ZRhjsGAfcv" role="1tU5fm">
            <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
            <node concept="3uibUv" id="6ZRhjsGAfcw" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="6ZRhjsGAfcx" role="jymVt">
        <property role="TrG5h" value="process" />
        <node concept="3clFbS" id="6ZRhjsGAfcy" role="3clF47">
          <node concept="3clFbF" id="6ZRhjsGAfcz" role="3cqZAp">
            <node concept="d57v9" id="6ZRhjsGAfc$" role="3clFbG">
              <node concept="37vLTw" id="6ZRhjsGAfc_" role="37vLTx">
                <ref role="3cqZAo" node="6ZRhjsGAfcD" resolve="thing" />
              </node>
              <node concept="37vLTw" id="6ZRhjsGAfcA" role="37vLTJ">
                <ref role="3cqZAo" node="6ZRhjsGAfce" resolve="sum" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="6ZRhjsGAfcB" role="1B3o_S" />
        <node concept="3cqZAl" id="6ZRhjsGAfcC" role="3clF45" />
        <node concept="37vLTG" id="6ZRhjsGAfcD" role="3clF46">
          <property role="TrG5h" value="thing" />
          <node concept="3uibUv" id="6ZRhjsGAfcE" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6ZRhjsGAfcF" role="1B3o_S" />
    </node>
    <node concept="312cEu" id="6ZRhjsGAfcG" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="ComputerImpl" />
      <node concept="3clFb_" id="6ZRhjsGAfcH" role="jymVt">
        <property role="TrG5h" value="computeInternal" />
        <node concept="3clFbS" id="6ZRhjsGAfcI" role="3clF47">
          <node concept="3clFbF" id="6ZRhjsGAfcJ" role="3cqZAp">
            <node concept="1rXfSq" id="6ZRhjsGAfcK" role="3clFbG">
              <ref role="37wK5l" node="6ZRhjsGAfcj" resolve="compute" />
              <node concept="37Ijox" id="6ZRhjsGAfcL" role="37wK5m">
                <ref role="37Ijqf" node="6ZRhjsGAfcx" resolve="process" />
                <node concept="2c6KGM" id="6ZRhjsGAfcM" role="wWaWy" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="6ZRhjsGAfcN" role="1B3o_S" />
        <node concept="3uibUv" id="6ZRhjsGAfcO" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="2tJIrI" id="6ZRhjsGAfcP" role="jymVt" />
      <node concept="3Tm1VV" id="6ZRhjsGAfcQ" role="1B3o_S" />
      <node concept="3uibUv" id="6ZRhjsGAfcR" role="1zkMxy">
        <ref role="3uigEE" node="6ZRhjsGAfcd" resolve="SuperReference.Computer" />
      </node>
      <node concept="3clFb_" id="6ZRhjsGAfcS" role="jymVt">
        <property role="TrG5h" value="process" />
        <node concept="3Tm1VV" id="6ZRhjsGAfcT" role="1B3o_S" />
        <node concept="3cqZAl" id="6ZRhjsGAfcU" role="3clF45" />
        <node concept="37vLTG" id="6ZRhjsGAfcV" role="3clF46">
          <property role="TrG5h" value="thing" />
          <node concept="3uibUv" id="6ZRhjsGAfcW" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
          </node>
        </node>
        <node concept="3clFbS" id="6ZRhjsGAfcX" role="3clF47">
          <node concept="3clFbF" id="6ZRhjsGAfcY" role="3cqZAp">
            <node concept="d57v9" id="6ZRhjsGAfcZ" role="3clFbG">
              <node concept="17qRlL" id="6ZRhjsGAfd0" role="37vLTx">
                <node concept="3cmrfG" id="6ZRhjsGAfd1" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="37vLTw" id="6ZRhjsGAfd2" role="3uHU7B">
                  <ref role="3cqZAo" node="6ZRhjsGAfcV" resolve="thing" />
                </node>
              </node>
              <node concept="37vLTw" id="6ZRhjsGAfd3" role="37vLTJ">
                <ref role="3cqZAo" node="6ZRhjsGAfce" resolve="sum" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6ZRhjsGAfd4" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ZRhjsGAfc1" role="jymVt" />
    <node concept="3Tm1VV" id="6ZRhjsGAf4Z" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6ZRhjsGAgSm">
    <property role="TrG5h" value="VariableArity" />
    <node concept="3HP615" id="6ZRhjsGAgZy" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MultiProcessor" />
      <node concept="3clFb_" id="6ZRhjsGAgZz" role="jymVt">
        <property role="TrG5h" value="accept" />
        <node concept="3clFbS" id="6ZRhjsGAgZ$" role="3clF47" />
        <node concept="3Tm1VV" id="6ZRhjsGAgZ_" role="1B3o_S" />
        <node concept="16syzq" id="6ZRhjsGAgZA" role="3clF45">
          <ref role="16sUi3" node="6ZRhjsGAgZQ" resolve="R" />
        </node>
        <node concept="37vLTG" id="6ZRhjsGAgZB" role="3clF46">
          <property role="TrG5h" value="items" />
          <node concept="8X2XB" id="6ZRhjsGAgZC" role="1tU5fm">
            <node concept="16syzq" id="6ZRhjsGAgZD" role="8Xvag">
              <ref role="16sUi3" node="6ZRhjsGAgZP" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZL" id="6ZRhjsGAgZE" role="jymVt">
        <property role="TrG5h" value="processStrings" />
        <node concept="3clFbS" id="6ZRhjsGAgZF" role="3clF47">
          <node concept="3clFbF" id="6ZRhjsGAgZG" role="3cqZAp">
            <node concept="2OqwBi" id="6ZRhjsGAgZH" role="3clFbG">
              <node concept="37vLTw" id="6ZRhjsGAgZI" role="2Oq$k0">
                <ref role="3cqZAo" node="6ZRhjsGAgZM" resolve="values" />
              </node>
              <node concept="1Rwk04" id="6ZRhjsGAgZJ" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="6ZRhjsGAgZK" role="1B3o_S" />
        <node concept="10Oyi0" id="6ZRhjsGAgZL" role="3clF45" />
        <node concept="37vLTG" id="6ZRhjsGAgZM" role="3clF46">
          <property role="TrG5h" value="values" />
          <node concept="8X2XB" id="6ZRhjsGAgZN" role="1tU5fm">
            <node concept="17QB3L" id="6ZRhjsGAgZO" role="8Xvag" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6ZRhjsGAgZP" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="16euLQ" id="6ZRhjsGAgZQ" role="16eVyc">
        <property role="TrG5h" value="R" />
      </node>
    </node>
    <node concept="2tJIrI" id="6ZRhjsGAgZR" role="jymVt" />
    <node concept="312cEu" id="6ZRhjsGAgZS" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="ArrayHolder" />
      <node concept="312cEg" id="6ZRhjsGAgZT" role="jymVt">
        <property role="TrG5h" value="items" />
        <node concept="10Q1$e" id="6ZRhjsGAgZU" role="1tU5fm">
          <node concept="16syzq" id="6ZRhjsGAgZV" role="10Q1$1">
            <ref role="16sUi3" node="6ZRhjsGAh0n" resolve="J" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6ZRhjsGAgZW" role="jymVt" />
      <node concept="3clFbW" id="6ZRhjsGAgZX" role="jymVt">
        <node concept="3cqZAl" id="6ZRhjsGAgZY" role="3clF45" />
        <node concept="3Tm1VV" id="6ZRhjsGAgZZ" role="1B3o_S" />
        <node concept="3clFbS" id="6ZRhjsGAh00" role="3clF47">
          <node concept="3clFbF" id="6ZRhjsGAh01" role="3cqZAp">
            <node concept="37vLTI" id="6ZRhjsGAh02" role="3clFbG">
              <node concept="37vLTw" id="6ZRhjsGAh03" role="37vLTx">
                <ref role="3cqZAo" node="6ZRhjsGAh07" resolve="items" />
              </node>
              <node concept="2OqwBi" id="6ZRhjsGAh04" role="37vLTJ">
                <node concept="Xjq3P" id="6ZRhjsGAh05" role="2Oq$k0" />
                <node concept="2OwXpG" id="6ZRhjsGAh06" role="2OqNvi">
                  <ref role="2Oxat5" node="6ZRhjsGAgZT" resolve="items" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="6ZRhjsGAh07" role="3clF46">
          <property role="TrG5h" value="items" />
          <node concept="8X2XB" id="6ZRhjsGAh08" role="1tU5fm">
            <node concept="16syzq" id="6ZRhjsGAh09" role="8Xvag">
              <ref role="16sUi3" node="6ZRhjsGAh0n" resolve="J" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="6ZRhjsGAh0a" role="jymVt">
        <property role="TrG5h" value="handle" />
        <node concept="3clFbS" id="6ZRhjsGAh0b" role="3clF47">
          <node concept="3clFbF" id="6ZRhjsGAh0c" role="3cqZAp">
            <node concept="2OqwBi" id="6ZRhjsGAh0d" role="3clFbG">
              <node concept="37vLTw" id="6ZRhjsGAh0e" role="2Oq$k0">
                <ref role="3cqZAo" node="6ZRhjsGAh0i" resolve="processor" />
              </node>
              <node concept="liA8E" id="6ZRhjsGAh0f" role="2OqNvi">
                <ref role="37wK5l" node="6ZRhjsGAgZz" resolve="accept" />
                <node concept="37vLTw" id="6ZRhjsGAh0g" role="37wK5m">
                  <ref role="3cqZAo" node="6ZRhjsGAgZT" resolve="items" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="16syzq" id="6ZRhjsGAh0h" role="3clF45">
          <ref role="16sUi3" node="6ZRhjsGAh0m" resolve="L" />
        </node>
        <node concept="37vLTG" id="6ZRhjsGAh0i" role="3clF46">
          <property role="TrG5h" value="processor" />
          <node concept="3uibUv" id="6ZRhjsGAh0j" role="1tU5fm">
            <ref role="3uigEE" node="6ZRhjsGAgZy" resolve="VariableArity.MultiProcessor" />
            <node concept="16syzq" id="6ZRhjsGAh0k" role="11_B2D">
              <ref role="16sUi3" node="6ZRhjsGAh0n" resolve="J" />
            </node>
            <node concept="16syzq" id="6ZRhjsGAh0l" role="11_B2D">
              <ref role="16sUi3" node="6ZRhjsGAh0m" resolve="L" />
            </node>
          </node>
        </node>
        <node concept="16euLQ" id="6ZRhjsGAh0m" role="16eVyc">
          <property role="TrG5h" value="L" />
        </node>
      </node>
      <node concept="16euLQ" id="6ZRhjsGAh0n" role="16eVyc">
        <property role="TrG5h" value="J" />
      </node>
    </node>
    <node concept="312cEu" id="6ZRhjsGAh0w" role="jymVt">
      <property role="TrG5h" value="IntegerUtil" />
      <node concept="2YIFZL" id="6ZRhjsGAh0x" role="jymVt">
        <property role="TrG5h" value="sumOf" />
        <node concept="3clFbS" id="6ZRhjsGAh0y" role="3clF47">
          <node concept="3cpWs8" id="6ZRhjsGAh0z" role="3cqZAp">
            <node concept="3cpWsn" id="6ZRhjsGAh0$" role="3cpWs9">
              <property role="TrG5h" value="sum" />
              <node concept="10P55v" id="6ZRhjsGAh0_" role="1tU5fm" />
              <node concept="3cmrfG" id="6ZRhjsGAh0A" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="6ZRhjsGAh0B" role="3cqZAp">
            <node concept="3cpWsn" id="6ZRhjsGAh0C" role="1Duv9x">
              <property role="TrG5h" value="item" />
              <node concept="3uibUv" id="6ZRhjsGAh0D" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
            </node>
            <node concept="3clFbS" id="6ZRhjsGAh0E" role="2LFqv$">
              <node concept="3clFbF" id="6ZRhjsGAh0F" role="3cqZAp">
                <node concept="d57v9" id="6ZRhjsGAh0G" role="3clFbG">
                  <node concept="37vLTw" id="6ZRhjsGAh0H" role="37vLTx">
                    <ref role="3cqZAo" node="6ZRhjsGAh0C" resolve="item" />
                  </node>
                  <node concept="37vLTw" id="6ZRhjsGAh0I" role="37vLTJ">
                    <ref role="3cqZAo" node="6ZRhjsGAh0$" resolve="sum" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6ZRhjsGAh0J" role="1DdaDG">
              <ref role="3cqZAo" node="6ZRhjsGAh0R" resolve="values" />
            </node>
          </node>
          <node concept="3clFbF" id="6ZRhjsGAh0K" role="3cqZAp">
            <node concept="FJ1c_" id="6ZRhjsGAh0L" role="3clFbG">
              <node concept="2OqwBi" id="6ZRhjsGAh0M" role="3uHU7w">
                <node concept="37vLTw" id="6ZRhjsGAh0N" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ZRhjsGAh0R" resolve="values" />
                </node>
                <node concept="1Rwk04" id="6ZRhjsGAh0O" role="2OqNvi" />
              </node>
              <node concept="37vLTw" id="6ZRhjsGAh0P" role="3uHU7B">
                <ref role="3cqZAo" node="6ZRhjsGAh0$" resolve="sum" />
              </node>
            </node>
          </node>
        </node>
        <node concept="10P55v" id="6ZRhjsGAh0Q" role="3clF45" />
        <node concept="37vLTG" id="6ZRhjsGAh0R" role="3clF46">
          <property role="TrG5h" value="values" />
          <node concept="8X2XB" id="6ZRhjsGAh0S" role="1tU5fm">
            <node concept="3uibUv" id="6ZRhjsGAh0T" role="8Xvag">
              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZL" id="6ZRhjsGAh0U" role="jymVt">
        <property role="TrG5h" value="sumOfArray" />
        <node concept="3clFbS" id="6ZRhjsGAh0V" role="3clF47">
          <node concept="3clFbF" id="6ZRhjsGAh0W" role="3cqZAp">
            <node concept="1rXfSq" id="6ZRhjsGAh0X" role="3clFbG">
              <ref role="37wK5l" node="6ZRhjsGAh0x" resolve="sumOf" />
              <node concept="37vLTw" id="6ZRhjsGAh0Y" role="37wK5m">
                <ref role="3cqZAo" node="6ZRhjsGAh10" resolve="values" />
              </node>
            </node>
          </node>
        </node>
        <node concept="10P55v" id="6ZRhjsGAh0Z" role="3clF45" />
        <node concept="37vLTG" id="6ZRhjsGAh10" role="3clF46">
          <property role="TrG5h" value="values" />
          <node concept="10Q1$e" id="6ZRhjsGAh11" role="1tU5fm">
            <node concept="3uibUv" id="6ZRhjsGAh12" role="10Q1$1">
              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6ZRhjsGAh13" role="jymVt" />
    </node>
    <node concept="2tJIrI" id="6ZRhjsGAgZm" role="jymVt" />
    <node concept="3clFb_" id="6ZRhjsGAi85" role="jymVt">
      <property role="TrG5h" value="arrayHolder" />
      <node concept="3cqZAl" id="6ZRhjsGAi87" role="3clF45" />
      <node concept="3Tm1VV" id="6ZRhjsGAi88" role="1B3o_S" />
      <node concept="3clFbS" id="6ZRhjsGAi89" role="3clF47">
        <node concept="3clFbF" id="6ZRhjsGAicw" role="3cqZAp">
          <node concept="2OqwBi" id="6ZRhjsGAk3g" role="3clFbG">
            <node concept="2ShNRf" id="6ZRhjsGAicu" role="2Oq$k0">
              <node concept="1pGfFk" id="6ZRhjsGAjfu" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="6ZRhjsGAgZX" resolve="VariableArity.ArrayHolder" />
                <node concept="3uibUv" id="6ZRhjsGAjgI" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6ZRhjsGAk9R" role="2OqNvi">
              <ref role="37wK5l" node="6ZRhjsGAh0a" resolve="handle" />
              <node concept="37Ijox" id="6ZRhjsGAkXP" role="37wK5m">
                <ref role="37Ijqf" node="6ZRhjsGAh0x" resolve="sumOf" />
                <node concept="2FaPjH" id="6ZRhjsGAkXR" role="wWaWy">
                  <node concept="3uibUv" id="6ZRhjsGAkXS" role="2FaQuo">
                    <ref role="3uigEE" node="6ZRhjsGAh0w" resolve="VariableArity.IntegerUtil" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ZRhjsGAnfm" role="3cqZAp">
          <node concept="2OqwBi" id="6ZRhjsGAnfn" role="3clFbG">
            <node concept="2ShNRf" id="6ZRhjsGAnfo" role="2Oq$k0">
              <node concept="1pGfFk" id="6ZRhjsGAnfp" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="6ZRhjsGAgZX" resolve="VariableArity.ArrayHolder" />
                <node concept="3uibUv" id="6ZRhjsGAnfq" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6ZRhjsGAnfr" role="2OqNvi">
              <ref role="37wK5l" node="6ZRhjsGAh0a" resolve="handle" />
              <node concept="37Ijox" id="6ZRhjsGAnfs" role="37wK5m">
                <ref role="37Ijqf" node="6ZRhjsGAh0U" resolve="sumOfArray" />
                <node concept="2FaPjH" id="6ZRhjsGAnft" role="wWaWy">
                  <node concept="3uibUv" id="6ZRhjsGAnfu" role="2FaQuo">
                    <ref role="3uigEE" node="6ZRhjsGAh0w" resolve="VariableArity.IntegerUtil" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6ZRhjsGApmZ" role="jymVt" />
    <node concept="3clFb_" id="6ZRhjsGApsT" role="jymVt">
      <property role="TrG5h" value="multiProcessor" />
      <node concept="3cqZAl" id="6ZRhjsGApsV" role="3clF45" />
      <node concept="3Tm1VV" id="6ZRhjsGApsW" role="1B3o_S" />
      <node concept="3clFbS" id="6ZRhjsGApsX" role="3clF47">
        <node concept="3clFbF" id="6ZRhjsGApz2" role="3cqZAp">
          <node concept="2ShNRf" id="6ZRhjsGApyY" role="3clFbG">
            <node concept="1pGfFk" id="6ZRhjsGArM8" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="wyt6:~Thread.&lt;init&gt;(java.lang.Runnable)" resolve="Thread" />
              <node concept="37Ijox" id="6ZRhjsGArW8" role="37wK5m">
                <ref role="37Ijqf" node="6ZRhjsGAgZE" resolve="processStrings" />
                <node concept="2FaPjH" id="6ZRhjsGArWa" role="wWaWy">
                  <node concept="3uibUv" id="6ZRhjsGArWb" role="2FaQuo">
                    <ref role="3uigEE" node="6ZRhjsGAgZy" resolve="VariableArity.MultiProcessor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ZRhjsGAt8C" role="3cqZAp">
          <node concept="2OqwBi" id="6ZRhjsGAuzx" role="3clFbG">
            <node concept="2ShNRf" id="6ZRhjsGAt8$" role="2Oq$k0">
              <node concept="Tc6Ow" id="6ZRhjsGAtJz" role="2ShVmc">
                <node concept="17QB3L" id="6ZRhjsGAup5" role="HW$YZ" />
              </node>
            </node>
            <node concept="3$u5V9" id="6ZRhjsGAwf_" role="2OqNvi">
              <node concept="37Ijox" id="6ZRhjsGAwnZ" role="23t8la">
                <ref role="37Ijqf" node="6ZRhjsGAgZE" resolve="processStrings" />
                <node concept="2FaPjH" id="6ZRhjsGAwo1" role="wWaWy">
                  <node concept="3uibUv" id="6ZRhjsGAwo2" role="2FaQuo">
                    <ref role="3uigEE" node="6ZRhjsGAgZy" resolve="VariableArity.MultiProcessor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ZRhjsGAwuq" role="3cqZAp">
          <node concept="2YIFZM" id="6ZRhjsGAx1k" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Arrays.sort(java.lang.Object[],java.util.Comparator)" resolve="sort" />
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <node concept="2ShNRf" id="6ZRhjsGAx3n" role="37wK5m">
              <node concept="3g6Rrh" id="6ZRhjsGAyD4" role="2ShVmc">
                <node concept="17QB3L" id="6ZRhjsGAyxi" role="3g7fb8" />
              </node>
            </node>
            <node concept="37Ijox" id="6ZRhjsGAz2k" role="37wK5m">
              <ref role="37Ijqf" node="6ZRhjsGAgZE" resolve="processStrings" />
              <node concept="2FaPjH" id="6ZRhjsGAz2m" role="wWaWy">
                <node concept="3uibUv" id="6ZRhjsGAz2n" role="2FaQuo">
                  <ref role="3uigEE" node="6ZRhjsGAgZy" resolve="VariableArity.MultiProcessor" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6ZRhjsGAgSn" role="1B3o_S" />
  </node>
</model>

