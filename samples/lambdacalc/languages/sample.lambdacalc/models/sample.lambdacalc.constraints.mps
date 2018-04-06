<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:49af371c-e432-4e5a-a3df-e689ebe20a8d(sample.lambdacalc.constraints)">
  <persistence version="9" />
  <languages>
    <use id="d4615e3b-d671-4ba9-af01-2b78369b0ba7" name="jetbrains.mps.lang.pattern" version="1" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="8tt8" ref="r:e74c1bfc-387b-4b4b-abee-2eb77ee510ec(sample.lambdacalc.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
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
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
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
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="8966504967485224688" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" flags="nn" index="2rP1CM" />
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1212097481299" name="propertyValidator" index="QCWH9" />
      </concept>
      <concept id="1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" flags="in" index="QB0g5" />
      <concept id="5564765827938091039" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope" flags="ig" index="3dgokm" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213098023997" name="property" index="1MhHOB" />
        <child id="1213100494875" name="referent" index="1Mr941" />
      </concept>
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
      <concept id="1153138554286" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" flags="nn" index="1Wqviy" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204851882688" name="jetbrains.mps.lang.smodel.structure.LinkRefQualifier" flags="ng" index="26LbJo">
        <reference id="1204851882689" name="link" index="26LbJp" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1143511969223" name="jetbrains.mps.lang.smodel.structure.Node_GetPrevSiblingOperation" flags="nn" index="YBYNd" />
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="1154546920561" name="jetbrains.mps.lang.smodel.structure.OperationParm_ConceptList" flags="ng" index="3gmYPX">
        <child id="1154546920563" name="concept" index="3gmYPZ" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="6039268229364358244" name="jetbrains.mps.lang.smodel.structure.ExactConceptCase" flags="ng" index="1pnPoh">
        <child id="6039268229364358388" name="body" index="1pnPq1" />
        <child id="6039268229364358387" name="concept" index="1pnPq6" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="5944356402132808749" name="jetbrains.mps.lang.smodel.structure.ConceptSwitchStatement" flags="nn" index="1_3QMa">
        <child id="6039268229365417680" name="defaultBlock" index="1prKM_" />
        <child id="5944356402132808753" name="case" index="1_3QMm" />
        <child id="5944356402132808752" name="expression" index="1_3QMn" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
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
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1226592602759" name="jetbrains.mps.baseLanguage.collections.structure.AddAllSetElementsOperation" flags="nn" index="2mBsIq">
        <child id="1226592623721" name="argument" index="2mBxPO" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="1M2fIO" id="7_8aRkgG6CD">
    <property role="3GE5qa" value="expr" />
    <ref role="1M2myG" to="8tt8:7_8aRkgDGPo" resolve="Var" />
    <node concept="EnEH3" id="7_8aRkgG6CE" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="7_8aRkgG6CG" role="QCWH9">
        <node concept="3clFbS" id="7_8aRkgG6CH" role="2VODD2">
          <node concept="3clFbF" id="7_8aRkgG6JP" role="3cqZAp">
            <node concept="2OqwBi" id="hDMFLSy" role="3clFbG">
              <node concept="1Wqviy" id="hDMFLSz" role="2Oq$k0" />
              <node concept="liA8E" id="hDMFLS$" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String):boolean" resolve="matches" />
                <node concept="Xl_RD" id="hDMFLS_" role="37wK5m">
                  <property role="Xl_RC" value="[a-zA-Z$[_]][a-zA-Z0-9$[_]]*" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="7_zMfd$oopc">
    <property role="3GE5qa" value="expr" />
    <ref role="1M2myG" to="8tt8:7_zMfd$ooor" resolve="VarRef" />
    <node concept="1N5Pfh" id="7_zMfd$oopd" role="1Mr941">
      <ref role="1N5Vy1" to="8tt8:7_zMfd$ooos" resolve="def" />
      <node concept="3dgokm" id="7_zMfd$oopf" role="1N6uqs">
        <node concept="3clFbS" id="7_zMfd$oopg" role="2VODD2">
          <node concept="3clFbF" id="7_zMfd$rcG9" role="3cqZAp">
            <node concept="2YIFZM" id="7_zMfd$rcQI" role="3clFbG">
              <ref role="37wK5l" node="7_zMfd$r3p6" resolve="varScope" />
              <ref role="1Pybhc" node="7_zMfd$r3on" resolve="ScopeUtil" />
              <node concept="2rP1CM" id="7_zMfd$rcZ2" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7_zMfd$r3on">
    <property role="3GE5qa" value="expr" />
    <property role="TrG5h" value="ScopeUtil" />
    <node concept="2tJIrI" id="7_zMfd$r3oL" role="jymVt" />
    <node concept="2YIFZL" id="7_zMfd$r3p6" role="jymVt">
      <property role="TrG5h" value="varScope" />
      <node concept="37vLTG" id="7_zMfd$r3s7" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="7_zMfd$r3sJ" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7_zMfd$r3tq" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3Tm1VV" id="7_zMfd$r3p9" role="1B3o_S" />
      <node concept="3clFbS" id="7_zMfd$r3pa" role="3clF47">
        <node concept="3cpWs8" id="3TFdEPZgA8C" role="3cqZAp">
          <node concept="3cpWsn" id="3TFdEPZgA8D" role="3cpWs9">
            <property role="TrG5h" value="collector" />
            <node concept="3uibUv" id="3TFdEPZgA8B" role="1tU5fm">
              <ref role="3uigEE" node="3TFdEPZgfzP" resolve="ScopeUtil.VarCollector" />
            </node>
            <node concept="2ShNRf" id="3TFdEPZgA8E" role="33vP2m">
              <node concept="HV5vD" id="3TFdEPZgA8F" role="2ShVmc">
                <ref role="HV5vE" node="3TFdEPZgfzP" resolve="ScopeUtil.VarCollector" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3TFdEPZgAsY" role="3cqZAp" />
        <node concept="3cpWs8" id="7_zMfd$r3us" role="3cqZAp">
          <node concept="3cpWsn" id="7_zMfd$r3ut" role="3cpWs9">
            <property role="TrG5h" value="current" />
            <node concept="3Tqbb2" id="7_zMfd$r3uu" role="1tU5fm" />
            <node concept="37vLTw" id="6NUaKj0XACM" role="33vP2m">
              <ref role="3cqZAo" node="7_zMfd$r3s7" resolve="contextNode" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="7_zMfd$r3uw" role="3cqZAp">
          <node concept="3clFbS" id="7_zMfd$r3ux" role="2LFqv$">
            <node concept="1_3QMa" id="7_zMfd$r3uN" role="3cqZAp">
              <node concept="2OqwBi" id="7_zMfd$r3uO" role="1_3QMn">
                <node concept="37vLTw" id="3TFdEPZcaSs" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_zMfd$r3ut" resolve="current" />
                </node>
                <node concept="2yIwOk" id="7_zMfd$r3uQ" role="2OqNvi" />
              </node>
              <node concept="1pnPoh" id="7_zMfd$r3uR" role="1_3QMm">
                <node concept="3gn64h" id="7_zMfd$r3uS" role="1pnPq6">
                  <ref role="3gnhBz" to="8tt8:7_8aRkgDGQf" resolve="Lam" />
                </node>
                <node concept="3clFbS" id="7_zMfd$r3uT" role="1pnPq1">
                  <node concept="3clFbF" id="3TFdEPZgAEx" role="3cqZAp">
                    <node concept="2OqwBi" id="3TFdEPZgANt" role="3clFbG">
                      <node concept="37vLTw" id="3TFdEPZgAEv" role="2Oq$k0">
                        <ref role="3cqZAo" node="3TFdEPZgA8D" resolve="collector" />
                      </node>
                      <node concept="liA8E" id="3TFdEPZgB5m" role="2OqNvi">
                        <ref role="37wK5l" node="3TFdEPZgi0y" resolve="collect" />
                        <node concept="2OqwBi" id="3TFdEPZgB8D" role="37wK5m">
                          <node concept="2OqwBi" id="3TFdEPZgB8E" role="2Oq$k0">
                            <node concept="1PxgMI" id="3TFdEPZgB8F" role="2Oq$k0">
                              <node concept="37vLTw" id="3TFdEPZgB8G" role="1m5AlR">
                                <ref role="3cqZAo" node="7_zMfd$r3ut" resolve="current" />
                              </node>
                              <node concept="chp4Y" id="3TFdEPZgB8H" role="3oSUPX">
                                <ref role="cht4Q" to="8tt8:7_8aRkgDGQf" resolve="Lam" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="3TFdEPZgB8I" role="2OqNvi">
                              <ref role="3Tt5mk" to="8tt8:7_8aRkgDGQg" resolve="binding" />
                            </node>
                          </node>
                          <node concept="32TBzR" id="3TFdEPZgB8J" role="2OqNvi">
                            <node concept="1aIX9F" id="3TFdEPZgB8K" role="1xVPHs">
                              <node concept="26LbJo" id="3TFdEPZgB8L" role="1aIX9E">
                                <ref role="26LbJp" to="8tt8:7_8aRkgDGQj" resolve="var" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="7_zMfd$r3v7" role="3cqZAp" />
                </node>
              </node>
              <node concept="1pnPoh" id="3TFdEPZe9Nt" role="1_3QMm">
                <node concept="3gn64h" id="3TFdEPZe9R2" role="1pnPq6">
                  <ref role="3gnhBz" to="8tt8:7_8aRkgDGQp" resolve="LetVarBind" />
                </node>
                <node concept="3clFbS" id="3TFdEPZe9Nx" role="1pnPq1">
                  <node concept="3SKdUt" id="3TFdEPZe9Y1" role="3cqZAp">
                    <node concept="3SKdUq" id="3TFdEPZe9Y3" role="3SKWNk">
                      <property role="3SKdUp" value="skip the variable in the let, disallow let rec" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="3TFdEPZh33g" role="3cqZAp">
                    <node concept="37vLTI" id="3TFdEPZh33h" role="3clFbG">
                      <node concept="37vLTw" id="3TFdEPZh33i" role="37vLTJ">
                        <ref role="3cqZAo" node="7_zMfd$r3ut" resolve="current" />
                      </node>
                      <node concept="2OqwBi" id="3TFdEPZh33j" role="37vLTx">
                        <node concept="37vLTw" id="3TFdEPZh33k" role="2Oq$k0">
                          <ref role="3cqZAo" node="7_zMfd$r3ut" resolve="current" />
                        </node>
                        <node concept="1mfA1w" id="3TFdEPZhjQC" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="3TFdEPZhf4$" role="3cqZAp">
                    <node concept="3clFbS" id="3TFdEPZhf4A" role="3clFbx">
                      <node concept="3clFbF" id="3TFdEPZhf$S" role="3cqZAp">
                        <node concept="37vLTI" id="3TFdEPZhf$T" role="3clFbG">
                          <node concept="37vLTw" id="3TFdEPZhf$U" role="37vLTJ">
                            <ref role="3cqZAo" node="7_zMfd$r3ut" resolve="current" />
                          </node>
                          <node concept="2OqwBi" id="3TFdEPZhf$V" role="37vLTx">
                            <node concept="37vLTw" id="3TFdEPZhf$W" role="2Oq$k0">
                              <ref role="3cqZAo" node="7_zMfd$r3ut" resolve="current" />
                            </node>
                            <node concept="1mfA1w" id="3TFdEPZhk07" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3TFdEPZhfdB" role="3clFbw">
                      <node concept="37vLTw" id="3TFdEPZhf5n" role="2Oq$k0">
                        <ref role="3cqZAo" node="7_zMfd$r3ut" resolve="current" />
                      </node>
                      <node concept="1mIQ4w" id="3TFdEPZhfsR" role="2OqNvi">
                        <node concept="chp4Y" id="3TFdEPZhfuO" role="cj9EA">
                          <ref role="cht4Q" to="8tt8:7_8aRkgDGQo" resolve="LetExpr" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3N13vt" id="3TFdEPZh4cY" role="3cqZAp" />
                  <node concept="3clFbH" id="3TFdEPZh0R0" role="3cqZAp" />
                </node>
              </node>
              <node concept="1pnPoh" id="7_zMfd$r3v8" role="1_3QMm">
                <node concept="3gn64h" id="7_zMfd$r3v9" role="1pnPq6">
                  <ref role="3gnhBz" to="8tt8:7_8aRkgDGQo" resolve="LetExpr" />
                </node>
                <node concept="3clFbS" id="7_zMfd$r3va" role="1pnPq1">
                  <node concept="3clFbF" id="3TFdEPZgBro" role="3cqZAp">
                    <node concept="2OqwBi" id="3TFdEPZgBzu" role="3clFbG">
                      <node concept="37vLTw" id="3TFdEPZgBrm" role="2Oq$k0">
                        <ref role="3cqZAo" node="3TFdEPZgA8D" resolve="collector" />
                      </node>
                      <node concept="liA8E" id="3TFdEPZgBPe" role="2OqNvi">
                        <ref role="37wK5l" node="3TFdEPZgi0y" resolve="collect" />
                        <node concept="2OqwBi" id="3TFdEPZgBSz" role="37wK5m">
                          <node concept="2OqwBi" id="3TFdEPZgBS$" role="2Oq$k0">
                            <node concept="1PxgMI" id="3TFdEPZgBS_" role="2Oq$k0">
                              <node concept="37vLTw" id="3TFdEPZgBSA" role="1m5AlR">
                                <ref role="3cqZAo" node="7_zMfd$r3ut" resolve="current" />
                              </node>
                              <node concept="chp4Y" id="3TFdEPZgBSB" role="3oSUPX">
                                <ref role="cht4Q" to="8tt8:7_8aRkgDGQo" resolve="LetExpr" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="3TFdEPZgBSC" role="2OqNvi">
                              <ref role="3Tt5mk" to="8tt8:7_8aRkgDGQv" resolve="binding" />
                            </node>
                          </node>
                          <node concept="32TBzR" id="3TFdEPZgBSD" role="2OqNvi">
                            <node concept="1aIX9F" id="3TFdEPZgBSE" role="1xVPHs">
                              <node concept="26LbJo" id="3TFdEPZgBSF" role="1aIX9E">
                                <ref role="26LbJp" to="8tt8:7_8aRkgDGQq" resolve="var" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="7_zMfd$r3vo" role="3cqZAp" />
                </node>
              </node>
              <node concept="1pnPoh" id="7_zMfd$r3vp" role="1_3QMm">
                <node concept="3gn64h" id="7_zMfd$r3vq" role="1pnPq6">
                  <ref role="3gnhBz" to="8tt8:7_8aRkgDHAe" resolve="LetClause" />
                </node>
                <node concept="3clFbS" id="7_zMfd$r3vr" role="1pnPq1">
                  <node concept="3cpWs8" id="7_zMfd$r3vy" role="3cqZAp">
                    <node concept="3cpWsn" id="7_zMfd$r3vz" role="3cpWs9">
                      <property role="TrG5h" value="prevSibling" />
                      <node concept="3Tqbb2" id="7_zMfd$r3v$" role="1tU5fm" />
                      <node concept="2OqwBi" id="7_zMfd$rmlT" role="33vP2m">
                        <node concept="37vLTw" id="3TFdEPZcaSv" role="2Oq$k0">
                          <ref role="3cqZAo" node="7_zMfd$r3ut" resolve="current" />
                        </node>
                        <node concept="YBYNd" id="7_zMfd$rmU_" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="2$JKZl" id="7_zMfd$r3vA" role="3cqZAp">
                    <node concept="3clFbS" id="7_zMfd$r3vB" role="2LFqv$">
                      <node concept="3clFbJ" id="7_zMfd$r3vC" role="3cqZAp">
                        <node concept="3clFbS" id="7_zMfd$r3vD" role="3clFbx">
                          <node concept="3clFbF" id="3TFdEPZgC9O" role="3cqZAp">
                            <node concept="2OqwBi" id="3TFdEPZgChF" role="3clFbG">
                              <node concept="37vLTw" id="3TFdEPZgC9M" role="2Oq$k0">
                                <ref role="3cqZAo" node="3TFdEPZgA8D" resolve="collector" />
                              </node>
                              <node concept="liA8E" id="3TFdEPZgCzj" role="2OqNvi">
                                <ref role="37wK5l" node="3TFdEPZgi0y" resolve="collect" />
                                <node concept="2OqwBi" id="3TFdEPZgCEu" role="37wK5m">
                                  <node concept="2OqwBi" id="3TFdEPZgCEv" role="2Oq$k0">
                                    <node concept="1PxgMI" id="3TFdEPZgCEw" role="2Oq$k0">
                                      <node concept="chp4Y" id="3TFdEPZgCEx" role="3oSUPX">
                                        <ref role="cht4Q" to="8tt8:7_8aRkgDHAe" resolve="LetClause" />
                                      </node>
                                      <node concept="37vLTw" id="3TFdEPZgCEy" role="1m5AlR">
                                        <ref role="3cqZAo" node="7_zMfd$r3vz" resolve="prevSibling" />
                                      </node>
                                    </node>
                                    <node concept="3TrEf2" id="3TFdEPZgCEz" role="2OqNvi">
                                      <ref role="3Tt5mk" to="8tt8:2jleysRWVqE" resolve="binding" />
                                    </node>
                                  </node>
                                  <node concept="32TBzR" id="3TFdEPZgCE$" role="2OqNvi">
                                    <node concept="1aIX9F" id="3TFdEPZgCE_" role="1xVPHs">
                                      <node concept="26LbJo" id="3TFdEPZgCEA" role="1aIX9E">
                                        <ref role="26LbJp" to="8tt8:7_8aRkgDGQq" resolve="var" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="7_zMfd$r3vR" role="3clFbw">
                          <node concept="37vLTw" id="7_zMfd$r3vS" role="2Oq$k0">
                            <ref role="3cqZAo" node="7_zMfd$r3vz" resolve="prevSibling" />
                          </node>
                          <node concept="1mIQ4w" id="7_zMfd$r3vT" role="2OqNvi">
                            <node concept="chp4Y" id="7_zMfd$r3vU" role="cj9EA">
                              <ref role="cht4Q" to="8tt8:7_8aRkgDHAe" resolve="LetClause" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="7_zMfd$r3vV" role="3cqZAp">
                        <node concept="37vLTI" id="7_zMfd$r3vW" role="3clFbG">
                          <node concept="2OqwBi" id="7_zMfd$r3vX" role="37vLTx">
                            <node concept="37vLTw" id="7_zMfd$r3vY" role="2Oq$k0">
                              <ref role="3cqZAo" node="7_zMfd$r3vz" resolve="prevSibling" />
                            </node>
                            <node concept="YBYNd" id="7_zMfd$r3vZ" role="2OqNvi" />
                          </node>
                          <node concept="37vLTw" id="7_zMfd$r3w0" role="37vLTJ">
                            <ref role="3cqZAo" node="7_zMfd$r3vz" resolve="prevSibling" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7_zMfd$r3w1" role="2$JKZa">
                      <node concept="37vLTw" id="7_zMfd$r3w2" role="2Oq$k0">
                        <ref role="3cqZAo" node="7_zMfd$r3vz" resolve="prevSibling" />
                      </node>
                      <node concept="3x8VRR" id="7_zMfd$r3w3" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="7_zMfd$r3w4" role="3cqZAp" />
                </node>
              </node>
              <node concept="3clFbS" id="7_zMfd$r3w5" role="1prKM_" />
            </node>
            <node concept="3clFbH" id="7_zMfd$r3w9" role="3cqZAp" />
            <node concept="3clFbF" id="7_zMfd$r3wa" role="3cqZAp">
              <node concept="37vLTI" id="7_zMfd$r3wb" role="3clFbG">
                <node concept="37vLTw" id="7_zMfd$r3wd" role="37vLTJ">
                  <ref role="3cqZAo" node="7_zMfd$r3ut" resolve="current" />
                </node>
                <node concept="2OqwBi" id="3TFdEPZc47e" role="37vLTx">
                  <node concept="37vLTw" id="3TFdEPZc47f" role="2Oq$k0">
                    <ref role="3cqZAo" node="7_zMfd$r3ut" resolve="current" />
                  </node>
                  <node concept="2Xjw5R" id="3TFdEPZc47g" role="2OqNvi">
                    <node concept="3gmYPX" id="3TFdEPZc47h" role="1xVPHs">
                      <node concept="3gn64h" id="3TFdEPZc47i" role="3gmYPZ">
                        <ref role="3gnhBz" to="8tt8:7_8aRkgDGQf" resolve="Lam" />
                      </node>
                      <node concept="3gn64h" id="3TFdEPZc47j" role="3gmYPZ">
                        <ref role="3gnhBz" to="8tt8:7_8aRkgDGQo" resolve="LetExpr" />
                      </node>
                      <node concept="3gn64h" id="3TFdEPZc47k" role="3gmYPZ">
                        <ref role="3gnhBz" to="8tt8:7_8aRkgDHAe" resolve="LetClause" />
                      </node>
                      <node concept="3gn64h" id="3TFdEPZeeAv" role="3gmYPZ">
                        <ref role="3gnhBz" to="8tt8:7_8aRkgDGQp" resolve="LetVarBind" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3TFdEPZch7x" role="2$JKZa">
            <node concept="10Nm6u" id="3TFdEPZchab" role="3uHU7w" />
            <node concept="37vLTw" id="3TFdEPZcgXi" role="3uHU7B">
              <ref role="3cqZAo" node="7_zMfd$r3ut" resolve="current" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3TFdEPZgVsh" role="3cqZAp" />
        <node concept="3cpWs6" id="3TFdEPZgUb9" role="3cqZAp">
          <node concept="2OqwBi" id="3TFdEPZgUK6" role="3cqZAk">
            <node concept="37vLTw" id="3TFdEPZgU$w" role="2Oq$k0">
              <ref role="3cqZAo" node="3TFdEPZgA8D" resolve="collector" />
            </node>
            <node concept="liA8E" id="3TFdEPZgV95" role="2OqNvi">
              <ref role="37wK5l" node="3TFdEPZgIFd" resolve="toScope" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3TFdEPZgfna" role="jymVt" />
    <node concept="312cEu" id="3TFdEPZgfzP" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="VarCollector" />
      <node concept="2tJIrI" id="3TFdEPZghTp" role="jymVt" />
      <node concept="312cEg" id="3TFdEPZghTH" role="jymVt">
        <property role="TrG5h" value="allBoundVars" />
        <node concept="3Tm6S6" id="3TFdEPZghTI" role="1B3o_S" />
        <node concept="2I9FWS" id="3TFdEPZghU4" role="1tU5fm">
          <ref role="2I9WkF" to="8tt8:7_8aRkgDGPo" resolve="Var" />
        </node>
        <node concept="2ShNRf" id="3TFdEPZghV$" role="33vP2m">
          <node concept="2T8Vx0" id="3TFdEPZghVf" role="2ShVmc">
            <node concept="2I9FWS" id="3TFdEPZghVg" role="2T96Bj">
              <ref role="2I9WkF" to="8tt8:7_8aRkgDGPo" resolve="Var" />
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="3TFdEPZghWb" role="jymVt">
        <property role="TrG5h" value="allVarNames" />
        <node concept="3Tm6S6" id="3TFdEPZghWc" role="1B3o_S" />
        <node concept="2hMVRd" id="3TFdEPZghWC" role="1tU5fm">
          <node concept="17QB3L" id="3TFdEPZghWQ" role="2hN53Y" />
        </node>
        <node concept="2ShNRf" id="3TFdEPZghZh" role="33vP2m">
          <node concept="2i4dXS" id="3TFdEPZghYS" role="2ShVmc">
            <node concept="17QB3L" id="3TFdEPZghYT" role="HW$YZ" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3TFdEPZghZO" role="jymVt" />
      <node concept="3clFb_" id="3TFdEPZgi0y" role="jymVt">
        <property role="TrG5h" value="collect" />
        <node concept="37vLTG" id="3TFdEPZgi1O" role="3clF46">
          <property role="TrG5h" value="vars" />
          <node concept="A3Dl8" id="3TFdEPZgi2m" role="1tU5fm">
            <node concept="3Tqbb2" id="3TFdEPZgi2M" role="A3Ik2">
              <ref role="ehGHo" to="8tt8:7_8aRkgDGPo" resolve="Var" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="3TFdEPZgi0$" role="3clF45" />
        <node concept="3Tm6S6" id="3TFdEPZgi0_" role="1B3o_S" />
        <node concept="3clFbS" id="3TFdEPZgi0A" role="3clF47">
          <node concept="3cpWs8" id="3TFdEPZgrue" role="3cqZAp">
            <node concept="3cpWsn" id="3TFdEPZgruf" role="3cpWs9">
              <property role="TrG5h" value="available" />
              <node concept="_YKpA" id="3TFdEPZgrtW" role="1tU5fm">
                <node concept="3Tqbb2" id="3TFdEPZgrtZ" role="_ZDj9">
                  <ref role="ehGHo" to="8tt8:7_8aRkgDGPo" resolve="Var" />
                </node>
              </node>
              <node concept="2OqwBi" id="3TFdEPZgrug" role="33vP2m">
                <node concept="2OqwBi" id="3TFdEPZgruh" role="2Oq$k0">
                  <node concept="37vLTw" id="3TFdEPZgrui" role="2Oq$k0">
                    <ref role="3cqZAo" node="3TFdEPZgi1O" resolve="vars" />
                  </node>
                  <node concept="3zZkjj" id="3TFdEPZgruj" role="2OqNvi">
                    <node concept="1bVj0M" id="3TFdEPZgruk" role="23t8la">
                      <node concept="3clFbS" id="3TFdEPZgrul" role="1bW5cS">
                        <node concept="3clFbF" id="3TFdEPZgrum" role="3cqZAp">
                          <node concept="3fqX7Q" id="3TFdEPZgrun" role="3clFbG">
                            <node concept="2OqwBi" id="3TFdEPZgruo" role="3fr31v">
                              <node concept="37vLTw" id="3TFdEPZgumM" role="2Oq$k0">
                                <ref role="3cqZAo" node="3TFdEPZghWb" resolve="allVarNames" />
                              </node>
                              <node concept="3JPx81" id="3TFdEPZgruq" role="2OqNvi">
                                <node concept="2OqwBi" id="3TFdEPZgrur" role="25WWJ7">
                                  <node concept="37vLTw" id="3TFdEPZgrus" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3TFdEPZgruu" resolve="it" />
                                  </node>
                                  <node concept="3TrcHB" id="3TFdEPZgrut" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3TFdEPZgruu" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="3TFdEPZgruv" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="3TFdEPZgruw" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3TFdEPZgi4a" role="3cqZAp">
            <node concept="2OqwBi" id="3TFdEPZgi4b" role="3clFbG">
              <node concept="37vLTw" id="3TFdEPZgiq8" role="2Oq$k0">
                <ref role="3cqZAo" node="3TFdEPZghTH" resolve="allBoundVars" />
              </node>
              <node concept="X8dFx" id="3TFdEPZgi4d" role="2OqNvi">
                <node concept="37vLTw" id="3TFdEPZgyQ_" role="25WWJ7">
                  <ref role="3cqZAo" node="3TFdEPZgruf" resolve="available" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3TFdEPZgi4f" role="3cqZAp">
            <node concept="2OqwBi" id="3TFdEPZgi4g" role="3clFbG">
              <node concept="37vLTw" id="3TFdEPZgobm" role="2Oq$k0">
                <ref role="3cqZAo" node="3TFdEPZghWb" resolve="allVarNames" />
              </node>
              <node concept="2mBsIq" id="3TFdEPZgi4i" role="2OqNvi">
                <node concept="2OqwBi" id="3TFdEPZgi4j" role="2mBxPO">
                  <node concept="37vLTw" id="3TFdEPZgzrZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="3TFdEPZgruf" resolve="available" />
                  </node>
                  <node concept="3$u5V9" id="3TFdEPZgi4l" role="2OqNvi">
                    <node concept="1bVj0M" id="3TFdEPZgi4m" role="23t8la">
                      <node concept="3clFbS" id="3TFdEPZgi4n" role="1bW5cS">
                        <node concept="3clFbF" id="3TFdEPZgi4o" role="3cqZAp">
                          <node concept="2OqwBi" id="3TFdEPZgi4p" role="3clFbG">
                            <node concept="37vLTw" id="3TFdEPZgi4q" role="2Oq$k0">
                              <ref role="3cqZAo" node="3TFdEPZgi4s" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="3TFdEPZgi4r" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3TFdEPZgi4s" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="3TFdEPZgi4t" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3TFdEPZgGuf" role="jymVt" />
      <node concept="3clFb_" id="3TFdEPZgIFd" role="jymVt">
        <property role="TrG5h" value="toScope" />
        <node concept="3uibUv" id="3TFdEPZgL_$" role="3clF45">
          <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
        </node>
        <node concept="3Tm6S6" id="3TFdEPZgIFg" role="1B3o_S" />
        <node concept="3clFbS" id="3TFdEPZgIFh" role="3clF47">
          <node concept="3cpWs6" id="3TFdEPZgTEW" role="3cqZAp">
            <node concept="2ShNRf" id="3TFdEPZgTEX" role="3cqZAk">
              <node concept="YeOm9" id="3TFdEPZgTEY" role="2ShVmc">
                <node concept="1Y3b0j" id="3TFdEPZgTEZ" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                  <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <node concept="37vLTw" id="3TFdEPZgTF0" role="37wK5m">
                    <ref role="3cqZAo" node="3TFdEPZghTH" resolve="allBoundVars" />
                  </node>
                  <node concept="3Tm1VV" id="3TFdEPZgTF1" role="1B3o_S" />
                  <node concept="3clFb_" id="3TFdEPZgTF2" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getName" />
                    <node concept="17QB3L" id="3TFdEPZgTF3" role="3clF45" />
                    <node concept="3Tm1VV" id="3TFdEPZgTF4" role="1B3o_S" />
                    <node concept="37vLTG" id="3TFdEPZgTF5" role="3clF46">
                      <property role="TrG5h" value="child" />
                      <node concept="3Tqbb2" id="3TFdEPZgTF6" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="3TFdEPZgTF7" role="3clF47">
                      <node concept="3clFbF" id="3TFdEPZgTF8" role="3cqZAp">
                        <node concept="2OqwBi" id="3TFdEPZgTF9" role="3clFbG">
                          <node concept="1PxgMI" id="3TFdEPZgTFa" role="2Oq$k0">
                            <node concept="chp4Y" id="3TFdEPZgTFb" role="3oSUPX">
                              <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                            </node>
                            <node concept="37vLTw" id="3TFdEPZgTFc" role="1m5AlR">
                              <ref role="3cqZAo" node="3TFdEPZgTF5" resolve="child" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="3TFdEPZgTFd" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3TFdEPZgfHQ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7_zMfd$r3oW" role="jymVt" />
    <node concept="3Tm1VV" id="7_zMfd$r3oo" role="1B3o_S" />
  </node>
</model>

