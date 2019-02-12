<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:81151157-4aa6-41ac-acda-128bb1020041(jetbrains.mps.lang.coderules.constraints)">
  <persistence version="9" />
  <languages>
    <use id="d4615e3b-d671-4ba9-af01-2b78369b0ba7" name="jetbrains.mps.lang.pattern" version="1" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="fnmy" ref="r:89c0fb70-0977-4113-a076-5906f9d8630f(jetbrains.mps.baseLanguage.scopes)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.coderules.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="hy7p" ref="r:01ee26d6-df00-4ffb-931c-1ddec5984886(jetbrains.mps.lang.coderules.util)" />
    <import index="i348" ref="r:42a15dec-83a9-4fe1-80d6-3bf898c512bd(jetbrains.mps.lang.coderules.template)" />
    <import index="x5bw" ref="r:15ea4f4e-2f41-4ce3-b7e4-a4e0737f0171(jetbrains.mps.lang.coderules.behavior)" implicit="true" />
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
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
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
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
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
      <concept id="7024111702304501416" name="jetbrains.mps.baseLanguage.structure.OrAssignmentExpression" flags="nn" index="3vZ8r8" />
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
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="6702802731807351367" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAChild" flags="in" index="9S07l" />
      <concept id="1202989658459" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_parentNode" flags="nn" index="nLn13" />
      <concept id="8966504967485224688" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" flags="nn" index="2rP1CM" />
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1147468630220" name="propertyGetter" index="EtsB7" />
        <child id="1152963095733" name="propertySetter" index="1LXaQT" />
      </concept>
      <concept id="1147467790433" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyGetter" flags="in" index="Eqf_E" />
      <concept id="1147468365020" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" flags="nn" index="EsrRn" />
      <concept id="5564765827938091039" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope" flags="ig" index="3dgokm" />
      <concept id="1159285995602" name="jetbrains.mps.lang.constraints.structure.NodeDefaultSearchScope" flags="ng" index="3EP7_v">
        <child id="1159286114227" name="searchScopeFactory" index="3EP$qY" />
      </concept>
      <concept id="1152959968041" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertySetter" flags="in" index="1LLf8_" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <reference id="1213106917431" name="defaultConcreteConcept" index="1MND4H" />
        <child id="6702802731807737306" name="canBeChild" index="9Vyp8" />
        <child id="1213098023997" name="property" index="1MhHOB" />
        <child id="1213100494875" name="referent" index="1Mr941" />
        <child id="1213101058038" name="defaultScope" index="1MtirG" />
      </concept>
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1154546920561" name="jetbrains.mps.lang.smodel.structure.OperationParm_ConceptList" flags="ng" index="3gmYPX">
        <child id="1154546920563" name="concept" index="3gmYPZ" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1182511038748" name="jetbrains.mps.lang.smodel.structure.Model_NodesIncludingImportedOperation" flags="nn" index="1j9C0f">
        <reference id="1182511038750" name="concept" index="1j9C0d" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
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
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="1176923520476" name="jetbrains.mps.baseLanguage.collections.structure.ExcludeOperation" flags="nn" index="66VNe" />
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
    </language>
  </registry>
  <node concept="1M2fIO" id="6ntBQ9KM5bM">
    <property role="3GE5qa" value="rule.input" />
    <ref role="1M2myG" to="wq2x:6p0DfM0ia8T" resolve="RuleInputDeclaration" />
    <node concept="3EP7_v" id="6ntBQ9KM5jK" role="1MtirG">
      <node concept="3dgokm" id="6fXjIfxgfU_" role="3EP$qY">
        <node concept="3clFbS" id="6fXjIfxgfUA" role="2VODD2">
          <node concept="3clFbH" id="36tQV5AKtGx" role="3cqZAp" />
          <node concept="3cpWs8" id="36tQV5AKyUH" role="3cqZAp">
            <node concept="3cpWsn" id="36tQV5AKyUI" role="3cpWs9">
              <property role="TrG5h" value="rt" />
              <node concept="3Tqbb2" id="36tQV5AKyUF" role="1tU5fm">
                <ref role="ehGHo" to="wq2x:36tQV5AmIsf" resolve="RuleTemplate" />
              </node>
              <node concept="2OqwBi" id="36tQV5AKyUJ" role="33vP2m">
                <node concept="2rP1CM" id="36tQV5AKyUK" role="2Oq$k0" />
                <node concept="2Xjw5R" id="36tQV5AKyUL" role="2OqNvi">
                  <node concept="1xMEDy" id="36tQV5AKyUM" role="1xVPHs">
                    <node concept="chp4Y" id="36tQV5AKyUN" role="ri$Ld">
                      <ref role="cht4Q" to="wq2x:36tQV5AmIsf" resolve="RuleTemplate" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="36tQV5AKyUO" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="36tQV5AKxYj" role="3cqZAp">
            <node concept="3cpWsn" id="36tQV5AKxYk" role="3cpWs9">
              <property role="TrG5h" value="scope" />
              <node concept="3uibUv" id="36tQV5AKxYl" role="1tU5fm">
                <ref role="3uigEE" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              </node>
              <node concept="2ShNRf" id="36tQV5AKxYm" role="33vP2m">
                <node concept="YeOm9" id="36tQV5AKxYn" role="2ShVmc">
                  <node concept="1Y3b0j" id="36tQV5AKxYo" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                    <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                    <node concept="2YIFZM" id="36tQV5AKxYp" role="37wK5m">
                      <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object):java.util.List" resolve="singletonList" />
                      <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                      <node concept="2OqwBi" id="36tQV5AKxYq" role="37wK5m">
                        <node concept="2OqwBi" id="36tQV5AKxYr" role="2Oq$k0">
                          <node concept="37vLTw" id="36tQV5AK$eh" role="2Oq$k0">
                            <ref role="3cqZAo" node="36tQV5AKyUI" resolve="rt" />
                          </node>
                          <node concept="3TrEf2" id="36tQV5AK$PU" role="2OqNvi">
                            <ref role="3Tt5mk" to="wq2x:36tQV5AmIsx" resolve="input" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="36tQV5AKxYu" role="2OqNvi">
                          <ref role="3Tt5mk" to="wq2x:5NuEpF1ihrB" resolve="input" />
                        </node>
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="36tQV5AKxYv" role="1B3o_S" />
                    <node concept="3clFb_" id="36tQV5AKxYw" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="getName" />
                      <node concept="17QB3L" id="36tQV5AKxYx" role="3clF45" />
                      <node concept="3Tm1VV" id="36tQV5AKxYy" role="1B3o_S" />
                      <node concept="37vLTG" id="36tQV5AKxYz" role="3clF46">
                        <property role="TrG5h" value="child" />
                        <node concept="3Tqbb2" id="36tQV5AKxY$" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="36tQV5AKxY_" role="3clF47">
                        <node concept="3clFbF" id="36tQV5AKxYA" role="3cqZAp">
                          <node concept="2OqwBi" id="36tQV5AKxYB" role="3clFbG">
                            <node concept="1PxgMI" id="36tQV5AKxYC" role="2Oq$k0">
                              <property role="1BlNFB" value="true" />
                              <node concept="37vLTw" id="36tQV5AKxYD" role="1m5AlR">
                                <ref role="3cqZAo" node="36tQV5AKxYz" resolve="child" />
                              </node>
                              <node concept="chp4Y" id="36tQV5AKxYE" role="3oSUPX">
                                <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="36tQV5AKxYF" role="2OqNvi">
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
          <node concept="3clFbF" id="6tPOoeTmT_0" role="3cqZAp">
            <node concept="37vLTw" id="6tPOoeTmT$Y" role="3clFbG">
              <ref role="3cqZAo" node="36tQV5AKxYk" resolve="scope" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="7IysFeA1vGZ">
    <property role="3GE5qa" value="macro.decl" />
    <ref role="1M2myG" to="wq2x:7IysFeA1uPa" resolve="MacroParameterReference" />
    <node concept="1N5Pfh" id="7IysFeA1vHe" role="1Mr941">
      <ref role="1N5Vy1" to="wq2x:7IysFeA1uTj" resolve="parameter" />
      <node concept="3dgokm" id="6fXjIfxgfVL" role="1N6uqs">
        <node concept="3clFbS" id="6fXjIfxgfVM" role="2VODD2">
          <node concept="3clFbF" id="6fXjIfxgfVN" role="3cqZAp">
            <node concept="2ShNRf" id="6fXjIfxgfVO" role="3clFbG">
              <node concept="YeOm9" id="6fXjIfxgfVP" role="2ShVmc">
                <node concept="1Y3b0j" id="6fXjIfxgfVQ" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                  <node concept="2OqwBi" id="6fXjIfxgfVR" role="37wK5m">
                    <node concept="2OqwBi" id="6fXjIfxgfVS" role="2Oq$k0">
                      <node concept="2rP1CM" id="6fXjIfxgfVT" role="2Oq$k0" />
                      <node concept="2Xjw5R" id="6fXjIfxgfVU" role="2OqNvi">
                        <node concept="1xMEDy" id="6fXjIfxgfVV" role="1xVPHs">
                          <node concept="chp4Y" id="6fXjIfxgfVW" role="ri$Ld">
                            <ref role="cht4Q" to="wq2x:1pPth$m5Bbz" resolve="MacroDeclaration" />
                          </node>
                        </node>
                        <node concept="1xIGOp" id="6fXjIfxgfVX" role="1xVPHs" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="6fXjIfxgfVY" role="2OqNvi">
                      <ref role="3TtcxE" to="wq2x:7IysFeA0yca" resolve="parameter" />
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="6fXjIfxgfVZ" role="1B3o_S" />
                  <node concept="3clFb_" id="6fXjIfxgfW0" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getName" />
                    <node concept="17QB3L" id="6fXjIfxgfW1" role="3clF45" />
                    <node concept="3Tm1VV" id="6fXjIfxgfW2" role="1B3o_S" />
                    <node concept="37vLTG" id="6fXjIfxgfW3" role="3clF46">
                      <property role="TrG5h" value="child" />
                      <node concept="3Tqbb2" id="6fXjIfxgfW4" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="6fXjIfxgfW5" role="3clF47">
                      <node concept="3clFbF" id="6fXjIfxgfW6" role="3cqZAp">
                        <node concept="2OqwBi" id="6fXjIfxgfW7" role="3clFbG">
                          <node concept="1PxgMI" id="6fXjIfxgfW8" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <node concept="37vLTw" id="6fXjIfxgfW9" role="1m5AlR">
                              <ref role="3cqZAo" node="6fXjIfxgfW3" resolve="child" />
                            </node>
                            <node concept="chp4Y" id="6fXjIfxgneK" role="3oSUPX">
                              <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="6fXjIfxgfWa" role="2OqNvi">
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
    </node>
  </node>
  <node concept="1M2fIO" id="3TnYLtqfhA9">
    <property role="3GE5qa" value="macro.code.with" />
    <ref role="1M2myG" to="wq2x:3TnYLtqfh$J" resolve="ContextParameterReference" />
    <node concept="1N5Pfh" id="3TnYLtqfhNA" role="1Mr941">
      <ref role="1N5Vy1" to="wq2x:3TnYLtqfh$T" resolve="parameter" />
      <node concept="3dgokm" id="6fXjIfxgfWM" role="1N6uqs">
        <node concept="3clFbS" id="6fXjIfxgfWN" role="2VODD2">
          <node concept="3clFbF" id="63PS1WF10NC" role="3cqZAp">
            <node concept="2ShNRf" id="63PS1WF10NE" role="3clFbG">
              <node concept="1pGfFk" id="63PS1WF10NF" role="2ShVmc">
                <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                <node concept="2OqwBi" id="63PS1WF10NG" role="37wK5m">
                  <node concept="2rP1CM" id="63PS1WF10NH" role="2Oq$k0" />
                  <node concept="I4A8Y" id="63PS1WF10NI" role="2OqNvi" />
                </node>
                <node concept="3clFbT" id="63PS1WF10NJ" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
                <node concept="35c_gC" id="63PS1WF10NK" role="37wK5m">
                  <ref role="35c_gD" to="wq2x:3TnYLtqfhzx" resolve="ContextParameterDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3TnYLtqgRGO">
    <property role="3GE5qa" value="macro.code.with" />
    <ref role="1M2myG" to="wq2x:3TnYLtqgQYU" resolve="WithContextStatement" />
    <node concept="1N5Pfh" id="3TnYLtqgRGP" role="1Mr941">
      <ref role="1N5Vy1" to="wq2x:3TnYLtqgRY3" resolve="parameter" />
      <node concept="3dgokm" id="6fXjIfxgfWb" role="1N6uqs">
        <node concept="3clFbS" id="6fXjIfxgfWc" role="2VODD2">
          <node concept="3clFbF" id="6fXjIfxgfWd" role="3cqZAp">
            <node concept="2ShNRf" id="6fXjIfxgfWe" role="3clFbG">
              <node concept="1pGfFk" id="6fXjIfxgfWf" role="2ShVmc">
                <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                <node concept="2OqwBi" id="6fXjIfxgfWj" role="37wK5m">
                  <node concept="2rP1CM" id="6fXjIfxgfWk" role="2Oq$k0" />
                  <node concept="I4A8Y" id="6fXjIfxgfWl" role="2OqNvi" />
                </node>
                <node concept="3clFbT" id="6fXjIfxgfWh" role="37wK5m" />
                <node concept="35c_gC" id="6fXjIfxgfWi" role="37wK5m">
                  <ref role="35c_gD" to="wq2x:3TnYLtqfhzx" resolve="ContextParameterDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="1L74NXEmG0V">
    <property role="3GE5qa" value="macro.invoke" />
    <ref role="1M2myG" to="wq2x:1L74NXEmF9s" resolve="MacroParameterBinding" />
    <node concept="1N5Pfh" id="1L74NXEmG0W" role="1Mr941">
      <ref role="1N5Vy1" to="wq2x:1L74NXEmG0t" resolve="parameter" />
      <node concept="3dgokm" id="6fXjIfxgfWm" role="1N6uqs">
        <node concept="3clFbS" id="6fXjIfxgfWn" role="2VODD2">
          <node concept="3clFbF" id="6fXjIfxgfWo" role="3cqZAp">
            <node concept="2ShNRf" id="6fXjIfxgfWp" role="3clFbG">
              <node concept="YeOm9" id="6fXjIfxgfWq" role="2ShVmc">
                <node concept="1Y3b0j" id="6fXjIfxgfWr" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                  <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <node concept="3Tm1VV" id="6fXjIfxgfWs" role="1B3o_S" />
                  <node concept="3clFb_" id="6fXjIfxgfWt" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getName" />
                    <node concept="17QB3L" id="6fXjIfxgfWu" role="3clF45" />
                    <node concept="3Tm1VV" id="6fXjIfxgfWv" role="1B3o_S" />
                    <node concept="37vLTG" id="6fXjIfxgfWw" role="3clF46">
                      <property role="TrG5h" value="child" />
                      <node concept="3Tqbb2" id="6fXjIfxgfWx" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="6fXjIfxgfWy" role="3clF47">
                      <node concept="3clFbF" id="6fXjIfxgfWz" role="3cqZAp">
                        <node concept="2OqwBi" id="6fXjIfxgfW$" role="3clFbG">
                          <node concept="1PxgMI" id="6fXjIfxgfW_" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <node concept="37vLTw" id="6fXjIfxgfWA" role="1m5AlR">
                              <ref role="3cqZAo" node="6fXjIfxgfWw" resolve="child" />
                            </node>
                            <node concept="chp4Y" id="6fXjIfxgnfc" role="3oSUPX">
                              <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="6fXjIfxgfWB" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6fXjIfxgfWC" role="37wK5m">
                    <node concept="2OqwBi" id="6fXjIfxgfWD" role="2Oq$k0">
                      <node concept="2OqwBi" id="6fXjIfxgfWE" role="2Oq$k0">
                        <node concept="2rP1CM" id="6fXjIfxgfWF" role="2Oq$k0" />
                        <node concept="2Xjw5R" id="6fXjIfxgfWG" role="2OqNvi">
                          <node concept="1xMEDy" id="6fXjIfxgfWH" role="1xVPHs">
                            <node concept="chp4Y" id="6fXjIfxgfWI" role="ri$Ld">
                              <ref role="cht4Q" to="wq2x:1L74NXEmF9t" resolve="MacroInvocation" />
                            </node>
                          </node>
                          <node concept="1xIGOp" id="6fXjIfxgfWJ" role="1xVPHs" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="6fXjIfxgfWK" role="2OqNvi">
                        <ref role="37wK5l" to="x5bw:1L74NXEmFa8" resolve="getTypeDeclaration" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="6fXjIfxgfWL" role="2OqNvi">
                      <ref role="3TtcxE" to="wq2x:7IysFeA0yca" resolve="parameter" />
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
  <node concept="1M2fIO" id="2vGNdoJFT55">
    <property role="3GE5qa" value="constraint.template" />
    <ref role="1M2myG" to="wq2x:6p0DfM0asBO" resolve="ConstraintDeclaration" />
    <node concept="EnEH3" id="2vGNdoJFT56" role="1MhHOB">
      <ref role="EomxK" to="wq2x:6p0DfM0azKj" resolve="arity" />
      <node concept="Eqf_E" id="2vGNdoJFT58" role="EtsB7">
        <node concept="3clFbS" id="2vGNdoJFT59" role="2VODD2">
          <node concept="3clFbF" id="2vGNdoJFTmc" role="3cqZAp">
            <node concept="2OqwBi" id="2vGNdoJFWAa" role="3clFbG">
              <node concept="2OqwBi" id="2vGNdoJFTDI" role="2Oq$k0">
                <node concept="EsrRn" id="2vGNdoJFTmb" role="2Oq$k0" />
                <node concept="3Tsc0h" id="2vGNdoJFUe5" role="2OqNvi">
                  <ref role="3TtcxE" to="wq2x:1CgWc1TyPxy" resolve="parameters" />
                </node>
              </node>
              <node concept="34oBXx" id="2vGNdoJFZxL" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1LLf8_" id="2vGNdoJFZPZ" role="1LXaQT">
        <node concept="3clFbS" id="2vGNdoJFZQ0" role="2VODD2">
          <node concept="3SKdUt" id="2vGNdoJG0a_" role="3cqZAp">
            <node concept="3SKdUq" id="2vGNdoJG0aB" role="3SKWNk">
              <property role="3SKdUp" value="can't be set" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="6DOfTm$zRn6">
    <property role="3GE5qa" value="macro.decl" />
    <ref role="1M2myG" to="wq2x:6DOfTm$zRmf" resolve="MacroInputDeclaration" />
    <node concept="3EP7_v" id="6DOfTm$zRDR" role="1MtirG">
      <node concept="3dgokm" id="6DOfTm$zRDV" role="3EP$qY">
        <node concept="3clFbS" id="6DOfTm$zRDX" role="2VODD2">
          <node concept="3cpWs8" id="6DOfTm$zRGQ" role="3cqZAp">
            <node concept="3cpWsn" id="6DOfTm$zRGR" role="3cpWs9">
              <property role="TrG5h" value="macroDecl" />
              <node concept="3Tqbb2" id="6DOfTm$zRGS" role="1tU5fm">
                <ref role="ehGHo" to="wq2x:1pPth$m5Bbz" resolve="MacroDeclaration" />
              </node>
              <node concept="2OqwBi" id="6DOfTm$zRGT" role="33vP2m">
                <node concept="2rP1CM" id="6DOfTm$zRGU" role="2Oq$k0" />
                <node concept="2Xjw5R" id="6DOfTm$zRGV" role="2OqNvi">
                  <node concept="1xMEDy" id="6DOfTm$zRGW" role="1xVPHs">
                    <node concept="chp4Y" id="6DOfTm$zTa_" role="ri$Ld">
                      <ref role="cht4Q" to="wq2x:1pPth$m5Bbz" resolve="MacroDeclaration" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="6DOfTm$zRGY" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6DOfTm$zRGZ" role="3cqZAp">
            <node concept="2ShNRf" id="6DOfTm$zRH0" role="3clFbG">
              <node concept="YeOm9" id="6DOfTm$zRH1" role="2ShVmc">
                <node concept="1Y3b0j" id="6DOfTm$zRH2" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                  <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <node concept="2YIFZM" id="6DOfTm$zRH3" role="37wK5m">
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                    <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object):java.util.List" resolve="singletonList" />
                    <node concept="2OqwBi" id="6DOfTm$zUuH" role="37wK5m">
                      <node concept="37vLTw" id="6DOfTm$zRH6" role="2Oq$k0">
                        <ref role="3cqZAo" node="6DOfTm$zRGR" resolve="macroDecl" />
                      </node>
                      <node concept="3TrEf2" id="6DOfTm$zVFy" role="2OqNvi">
                        <ref role="3Tt5mk" to="wq2x:6DOfTm$zUE3" resolve="input" />
                      </node>
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="6DOfTm$zRH9" role="1B3o_S" />
                  <node concept="3clFb_" id="6DOfTm$zRHa" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getName" />
                    <node concept="17QB3L" id="6DOfTm$zRHb" role="3clF45" />
                    <node concept="3Tm1VV" id="6DOfTm$zRHc" role="1B3o_S" />
                    <node concept="37vLTG" id="6DOfTm$zRHd" role="3clF46">
                      <property role="TrG5h" value="child" />
                      <node concept="3Tqbb2" id="6DOfTm$zRHe" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="6DOfTm$zRHf" role="3clF47">
                      <node concept="3clFbF" id="6DOfTm$zRHg" role="3cqZAp">
                        <node concept="2OqwBi" id="6DOfTm$zRHh" role="3clFbG">
                          <node concept="1PxgMI" id="6DOfTm$zRHi" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <node concept="37vLTw" id="6DOfTm$zRHj" role="1m5AlR">
                              <ref role="3cqZAo" node="6DOfTm$zRHd" resolve="child" />
                            </node>
                            <node concept="chp4Y" id="6DOfTm$zRHk" role="3oSUPX">
                              <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="6DOfTm$zRHl" role="2OqNvi">
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
    </node>
  </node>
  <node concept="1M2fIO" id="6DOfTm$$Xzc">
    <property role="3GE5qa" value="macro.code" />
    <ref role="1M2myG" to="wq2x:6DOfTm$$CHj" resolve="MacroInputReference" />
    <node concept="1N5Pfh" id="6DOfTm$$Xzd" role="1Mr941">
      <ref role="1N5Vy1" to="wq2x:6DOfTm$$CHk" resolve="declaration" />
      <node concept="3dgokm" id="6DOfTm$$ZXM" role="1N6uqs">
        <node concept="3clFbS" id="6DOfTm$$ZXN" role="2VODD2">
          <node concept="3cpWs8" id="6DOfTm$$ZXO" role="3cqZAp">
            <node concept="3cpWsn" id="6DOfTm$$ZXP" role="3cpWs9">
              <property role="TrG5h" value="md" />
              <node concept="3Tqbb2" id="6DOfTm$$ZXQ" role="1tU5fm">
                <ref role="ehGHo" to="wq2x:1pPth$m5Bbz" resolve="MacroDeclaration" />
              </node>
              <node concept="2OqwBi" id="6DOfTm$$ZXR" role="33vP2m">
                <node concept="2rP1CM" id="6DOfTm$$ZXS" role="2Oq$k0" />
                <node concept="2Xjw5R" id="6DOfTm$$ZXT" role="2OqNvi">
                  <node concept="1xMEDy" id="6DOfTm$$ZXU" role="1xVPHs">
                    <node concept="chp4Y" id="6EY0p2x1LUm" role="ri$Ld">
                      <ref role="cht4Q" to="wq2x:1pPth$m5Bbz" resolve="MacroDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6DOfTm$$ZXW" role="3cqZAp">
            <node concept="3clFbS" id="6DOfTm$$ZXX" role="3clFbx">
              <node concept="3cpWs6" id="6DOfTm$$ZXY" role="3cqZAp">
                <node concept="2ShNRf" id="6DOfTm$$ZXZ" role="3cqZAk">
                  <node concept="YeOm9" id="6DOfTm$$ZY0" role="2ShVmc">
                    <node concept="1Y3b0j" id="6DOfTm$$ZY1" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                      <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                      <node concept="3Tm1VV" id="6DOfTm$$ZY2" role="1B3o_S" />
                      <node concept="3clFb_" id="6DOfTm$$ZY3" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="getName" />
                        <node concept="17QB3L" id="6DOfTm$$ZY4" role="3clF45" />
                        <node concept="3Tm1VV" id="6DOfTm$$ZY5" role="1B3o_S" />
                        <node concept="37vLTG" id="6DOfTm$$ZY6" role="3clF46">
                          <property role="TrG5h" value="child" />
                          <node concept="3Tqbb2" id="6DOfTm$$ZY7" role="1tU5fm" />
                        </node>
                        <node concept="3clFbS" id="6DOfTm$$ZY8" role="3clF47">
                          <node concept="3clFbF" id="6DOfTm$_1nK" role="3cqZAp">
                            <node concept="2OqwBi" id="6DOfTm$_208" role="3clFbG">
                              <node concept="1PxgMI" id="6DOfTm$_1KV" role="2Oq$k0">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="6DOfTm$_1Nh" role="3oSUPX">
                                  <ref role="cht4Q" to="wq2x:6DOfTm$zRmf" resolve="MacroInputDeclaration" />
                                </node>
                                <node concept="37vLTw" id="6DOfTm$_1nJ" role="1m5AlR">
                                  <ref role="3cqZAo" node="6DOfTm$$ZY6" resolve="child" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="6DOfTm$_2f8" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2ShNRf" id="6DOfTm$$ZYd" role="37wK5m">
                        <node concept="Tc6Ow" id="6DOfTm$$ZYe" role="2ShVmc">
                          <node concept="3Tqbb2" id="6DOfTm$$ZYf" role="HW$YZ" />
                          <node concept="2OqwBi" id="6DOfTm$_0_g" role="HW$Y0">
                            <node concept="1PxgMI" id="6DOfTm$$ZYg" role="2Oq$k0">
                              <property role="1BlNFB" value="true" />
                              <node concept="37vLTw" id="6DOfTm$$ZYi" role="1m5AlR">
                                <ref role="3cqZAo" node="6DOfTm$$ZXP" resolve="md" />
                              </node>
                              <node concept="chp4Y" id="6DOfTm$$ZYk" role="3oSUPX">
                                <ref role="cht4Q" to="wq2x:1pPth$m5Bbz" resolve="MacroDeclaration" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="6DOfTm$_17v" role="2OqNvi">
                              <ref role="3Tt5mk" to="wq2x:6DOfTm$zUE3" resolve="input" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6DOfTm$$ZYl" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="6DOfTm$$ZYm" role="3clFbw">
              <node concept="37vLTw" id="6DOfTm$$ZYn" role="2Oq$k0">
                <ref role="3cqZAo" node="6DOfTm$$ZXP" resolve="md" />
              </node>
              <node concept="3x8VRR" id="6DOfTm$$ZYo" role="2OqNvi" />
            </node>
            <node concept="9aQIb" id="6DOfTm$$ZYp" role="9aQIa">
              <node concept="3clFbS" id="6DOfTm$$ZYq" role="9aQI4">
                <node concept="3cpWs6" id="6DOfTm$$ZYr" role="3cqZAp">
                  <node concept="2ShNRf" id="6DOfTm$$ZYs" role="3cqZAk">
                    <node concept="1pGfFk" id="6DOfTm$$ZYt" role="2ShVmc">
                      <ref role="37wK5l" to="o8zo:7ipADkTfAzT" resolve="EmptyScope" />
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
  <node concept="1M2fIO" id="1090FxOSDK0">
    <ref role="1M2myG" to="wq2x:60zk4o7reud" resolve="LogicalContextExpression" />
    <node concept="9S07l" id="1090FxOSDK1" role="9Vyp8">
      <node concept="3clFbS" id="1090FxOSDK2" role="2VODD2">
        <node concept="3clFbF" id="1090FxOSDRl" role="3cqZAp">
          <node concept="2OqwBi" id="1090FxOSEW_" role="3clFbG">
            <node concept="2OqwBi" id="1090FxOSE6N" role="2Oq$k0">
              <node concept="nLn13" id="1090FxOSDRk" role="2Oq$k0" />
              <node concept="2Xjw5R" id="1090FxOSEow" role="2OqNvi">
                <node concept="1xMEDy" id="1090FxOSEoy" role="1xVPHs">
                  <node concept="chp4Y" id="1090FxOSEDO" role="ri$Ld">
                    <ref role="cht4Q" to="wq2x:4EfgX2EvF4i" resolve="ExpressionConstraint" />
                  </node>
                </node>
                <node concept="1xIGOp" id="1090FxOSFFO" role="1xVPHs" />
              </node>
            </node>
            <node concept="3x8VRR" id="1090FxOSFoA" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="1mdVbTRXPKb">
    <property role="3GE5qa" value="constraint" />
    <ref role="1M2myG" to="wq2x:4EfgX2EvF4i" resolve="ExpressionConstraint" />
    <node concept="9S07l" id="1mdVbTRXPKc" role="9Vyp8">
      <node concept="3clFbS" id="1mdVbTRXPKd" role="2VODD2">
        <node concept="3cpWs8" id="1mdVbTSoaPu" role="3cqZAp">
          <node concept="3cpWsn" id="1mdVbTSoaPv" role="3cpWs9">
            <property role="TrG5h" value="acceptable" />
            <node concept="10P_77" id="1mdVbTSoaPw" role="1tU5fm" />
            <node concept="2OqwBi" id="1mdVbTSoaPx" role="33vP2m">
              <node concept="2OqwBi" id="1mdVbTSoaPy" role="2Oq$k0">
                <node concept="nLn13" id="1mdVbTSoaPz" role="2Oq$k0" />
                <node concept="2Xjw5R" id="1mdVbTSoaP$" role="2OqNvi">
                  <node concept="3gmYPX" id="1mdVbTSoaP_" role="1xVPHs">
                    <node concept="3gn64h" id="1mdVbTSoaPA" role="3gmYPZ">
                      <ref role="3gnhBz" to="wq2x:6p0DfM0a3Qe" resolve="Guard" />
                    </node>
                    <node concept="3gn64h" id="1mdVbTSoaPB" role="3gmYPZ">
                      <ref role="3gnhBz" to="wq2x:6p0DfM0a3TO" resolve="Body" />
                    </node>
                    <node concept="3gn64h" id="1mdVbTSoaPC" role="3gmYPZ">
                      <ref role="3gnhBz" to="wq2x:7IysFe_ZPX_" resolve="MacroBody" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="1mdVbTSoaPD" role="1xVPHs" />
                </node>
              </node>
              <node concept="3x8VRR" id="1mdVbTSoaPE" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1mdVbTSoaPF" role="3cqZAp" />
        <node concept="3cpWs8" id="1mdVbTSoaPG" role="3cqZAp">
          <node concept="3cpWsn" id="1mdVbTSoaPH" role="3cpWs9">
            <property role="TrG5h" value="methk" />
            <node concept="3uibUv" id="1mdVbTSoaPI" role="1tU5fm">
              <ref role="3uigEE" to="i348:4OKkcnfu_Ag" resolve="RuleTemplateMehodKind" />
            </node>
            <node concept="2YIFZM" id="1mdVbTSoaPJ" role="33vP2m">
              <ref role="37wK5l" to="hy7p:746Sd4ujSOx" resolve="templateMethodKind" />
              <ref role="1Pybhc" to="hy7p:746Sd4ujSKb" resolve="RuleTemplateUtil" />
              <node concept="2OqwBi" id="1mdVbTSoaPK" role="37wK5m">
                <node concept="nLn13" id="1mdVbTSoaPL" role="2Oq$k0" />
                <node concept="2Xjw5R" id="1mdVbTSoaPM" role="2OqNvi">
                  <node concept="1xMEDy" id="1mdVbTSoaPN" role="1xVPHs">
                    <node concept="chp4Y" id="1mdVbTSoaPO" role="ri$Ld">
                      <ref role="cht4Q" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1mdVbTSoaPP" role="3cqZAp">
          <node concept="3vZ8r8" id="1mdVbTSoaPQ" role="3clFbG">
            <node concept="22lmx$" id="1mdVbTSoaPR" role="37vLTx">
              <node concept="3clFbC" id="1mdVbTSoaPS" role="3uHU7w">
                <node concept="Rm8GO" id="1mdVbTSoaPT" role="3uHU7w">
                  <ref role="1Px2BO" to="i348:4OKkcnfu_Ag" resolve="RuleTemplateMehodKind" />
                  <ref role="Rm8GQ" to="i348:4OKkcnfu_Aj" resolve="GUARD" />
                </node>
                <node concept="37vLTw" id="1mdVbTSoaPU" role="3uHU7B">
                  <ref role="3cqZAo" node="1mdVbTSoaPH" resolve="methk" />
                </node>
              </node>
              <node concept="3clFbC" id="1mdVbTSoaPV" role="3uHU7B">
                <node concept="37vLTw" id="1mdVbTSoaPW" role="3uHU7B">
                  <ref role="3cqZAo" node="1mdVbTSoaPH" resolve="methk" />
                </node>
                <node concept="Rm8GO" id="1mdVbTSoaPX" role="3uHU7w">
                  <ref role="1Px2BO" to="i348:4OKkcnfu_Ag" resolve="RuleTemplateMehodKind" />
                  <ref role="Rm8GQ" to="i348:4OKkcnfu_Ak" resolve="BODY" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1mdVbTSoaPY" role="37vLTJ">
              <ref role="3cqZAo" node="1mdVbTSoaPv" resolve="acceptable" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1mdVbTSoaPZ" role="3cqZAp" />
        <node concept="3clFbF" id="1mdVbTSoaQ0" role="3cqZAp">
          <node concept="37vLTw" id="1mdVbTSoaQ1" role="3clFbG">
            <ref role="3cqZAo" node="1mdVbTSoaPv" resolve="acceptable" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="1mdVbTRYYZ0">
    <property role="3GE5qa" value="constraint" />
    <ref role="1M2myG" to="wq2x:1CcQBrQdzwG" resolve="EqualsConstraint" />
    <node concept="9S07l" id="1mdVbTRYYZ1" role="9Vyp8">
      <node concept="3clFbS" id="1mdVbTRYYZ2" role="2VODD2">
        <node concept="3cpWs8" id="1mdVbTSocwF" role="3cqZAp">
          <node concept="3cpWsn" id="1mdVbTSocwG" role="3cpWs9">
            <property role="TrG5h" value="acceptable" />
            <node concept="10P_77" id="1mdVbTSocwH" role="1tU5fm" />
            <node concept="2OqwBi" id="1mdVbTSocwI" role="33vP2m">
              <node concept="2OqwBi" id="1mdVbTSocwJ" role="2Oq$k0">
                <node concept="nLn13" id="1mdVbTSocwK" role="2Oq$k0" />
                <node concept="2Xjw5R" id="1mdVbTSocwL" role="2OqNvi">
                  <node concept="3gmYPX" id="1mdVbTSocwM" role="1xVPHs">
                    <node concept="3gn64h" id="1mdVbTSocwN" role="3gmYPZ">
                      <ref role="3gnhBz" to="wq2x:6p0DfM0a3Qe" resolve="Guard" />
                    </node>
                    <node concept="3gn64h" id="1mdVbTSocwO" role="3gmYPZ">
                      <ref role="3gnhBz" to="wq2x:6p0DfM0a3TO" resolve="Body" />
                    </node>
                    <node concept="3gn64h" id="1mdVbTSocwP" role="3gmYPZ">
                      <ref role="3gnhBz" to="wq2x:7IysFe_ZPX_" resolve="MacroBody" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="1mdVbTSocwQ" role="1xVPHs" />
                </node>
              </node>
              <node concept="3x8VRR" id="1mdVbTSocwR" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1mdVbTSocwS" role="3cqZAp" />
        <node concept="3cpWs8" id="1mdVbTSocwT" role="3cqZAp">
          <node concept="3cpWsn" id="1mdVbTSocwU" role="3cpWs9">
            <property role="TrG5h" value="methk" />
            <node concept="3uibUv" id="1mdVbTSocwV" role="1tU5fm">
              <ref role="3uigEE" to="i348:4OKkcnfu_Ag" resolve="RuleTemplateMehodKind" />
            </node>
            <node concept="2YIFZM" id="1mdVbTSocwW" role="33vP2m">
              <ref role="37wK5l" to="hy7p:746Sd4ujSOx" resolve="templateMethodKind" />
              <ref role="1Pybhc" to="hy7p:746Sd4ujSKb" resolve="RuleTemplateUtil" />
              <node concept="2OqwBi" id="1mdVbTSocwX" role="37wK5m">
                <node concept="nLn13" id="1mdVbTSocwY" role="2Oq$k0" />
                <node concept="2Xjw5R" id="1mdVbTSocwZ" role="2OqNvi">
                  <node concept="1xMEDy" id="1mdVbTSocx0" role="1xVPHs">
                    <node concept="chp4Y" id="1mdVbTSocx1" role="ri$Ld">
                      <ref role="cht4Q" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1mdVbTSocx2" role="3cqZAp">
          <node concept="3vZ8r8" id="1mdVbTSocx3" role="3clFbG">
            <node concept="22lmx$" id="1mdVbTSocx4" role="37vLTx">
              <node concept="3clFbC" id="1mdVbTSocx5" role="3uHU7w">
                <node concept="Rm8GO" id="1mdVbTSocx6" role="3uHU7w">
                  <ref role="1Px2BO" to="i348:4OKkcnfu_Ag" resolve="RuleTemplateMehodKind" />
                  <ref role="Rm8GQ" to="i348:4OKkcnfu_Aj" resolve="GUARD" />
                </node>
                <node concept="37vLTw" id="1mdVbTSocx7" role="3uHU7B">
                  <ref role="3cqZAo" node="1mdVbTSocwU" resolve="methk" />
                </node>
              </node>
              <node concept="3clFbC" id="1mdVbTSocx8" role="3uHU7B">
                <node concept="37vLTw" id="1mdVbTSocx9" role="3uHU7B">
                  <ref role="3cqZAo" node="1mdVbTSocwU" resolve="methk" />
                </node>
                <node concept="Rm8GO" id="1mdVbTSocxa" role="3uHU7w">
                  <ref role="Rm8GQ" to="i348:4OKkcnfu_Ak" resolve="BODY" />
                  <ref role="1Px2BO" to="i348:4OKkcnfu_Ag" resolve="RuleTemplateMehodKind" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1mdVbTSocxb" role="37vLTJ">
              <ref role="3cqZAo" node="1mdVbTSocwG" resolve="acceptable" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1mdVbTSocxc" role="3cqZAp" />
        <node concept="3clFbF" id="1mdVbTSocxd" role="3cqZAp">
          <node concept="37vLTw" id="1mdVbTSocxe" role="3clFbG">
            <ref role="3cqZAo" node="1mdVbTSocwG" resolve="acceptable" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="1mdVbTRZ1VT">
    <property role="3GE5qa" value="constraint" />
    <ref role="1M2myG" to="wq2x:6p0DfM0oBcI" resolve="UnifiesConstraint" />
    <node concept="9S07l" id="1mdVbTRZ1VU" role="9Vyp8">
      <node concept="3clFbS" id="1mdVbTRZ1VV" role="2VODD2">
        <node concept="3cpWs8" id="1mdVbTSnWeh" role="3cqZAp">
          <node concept="3cpWsn" id="1mdVbTSnWei" role="3cpWs9">
            <property role="TrG5h" value="acceptable" />
            <node concept="10P_77" id="1mdVbTSnWec" role="1tU5fm" />
            <node concept="2OqwBi" id="1mdVbTSnWej" role="33vP2m">
              <node concept="2OqwBi" id="1mdVbTSnWek" role="2Oq$k0">
                <node concept="nLn13" id="1mdVbTSnWel" role="2Oq$k0" />
                <node concept="2Xjw5R" id="1mdVbTSnWem" role="2OqNvi">
                  <node concept="3gmYPX" id="1mdVbTSnWen" role="1xVPHs">
                    <node concept="3gn64h" id="1mdVbTSnWeo" role="3gmYPZ">
                      <ref role="3gnhBz" to="wq2x:6p0DfM0a3Qe" resolve="Guard" />
                    </node>
                    <node concept="3gn64h" id="1mdVbTSnWep" role="3gmYPZ">
                      <ref role="3gnhBz" to="wq2x:6p0DfM0a3TO" resolve="Body" />
                    </node>
                    <node concept="3gn64h" id="1mdVbTSnWeq" role="3gmYPZ">
                      <ref role="3gnhBz" to="wq2x:7IysFe_ZPX_" resolve="MacroBody" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="1mdVbTSnWer" role="1xVPHs" />
                </node>
              </node>
              <node concept="3x8VRR" id="1mdVbTSnWes" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1mdVbTSo0bt" role="3cqZAp" />
        <node concept="3cpWs8" id="1mdVbTSo18c" role="3cqZAp">
          <node concept="3cpWsn" id="1mdVbTSo18d" role="3cpWs9">
            <property role="TrG5h" value="methk" />
            <node concept="3uibUv" id="1mdVbTSo187" role="1tU5fm">
              <ref role="3uigEE" to="i348:4OKkcnfu_Ag" resolve="RuleTemplateMehodKind" />
            </node>
            <node concept="2YIFZM" id="1mdVbTSo18e" role="33vP2m">
              <ref role="37wK5l" to="hy7p:746Sd4ujSOx" resolve="templateMethodKind" />
              <ref role="1Pybhc" to="hy7p:746Sd4ujSKb" resolve="RuleTemplateUtil" />
              <node concept="2OqwBi" id="1mdVbTSo18f" role="37wK5m">
                <node concept="nLn13" id="1mdVbTSo18g" role="2Oq$k0" />
                <node concept="2Xjw5R" id="1mdVbTSo18h" role="2OqNvi">
                  <node concept="1xMEDy" id="1mdVbTSo18i" role="1xVPHs">
                    <node concept="chp4Y" id="1mdVbTSo18j" role="ri$Ld">
                      <ref role="cht4Q" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1mdVbTSo2et" role="3cqZAp">
          <node concept="3vZ8r8" id="1mdVbTSo2Ce" role="3clFbG">
            <node concept="22lmx$" id="1mdVbTSo5zK" role="37vLTx">
              <node concept="3clFbC" id="1mdVbTSo6uw" role="3uHU7w">
                <node concept="Rm8GO" id="1mdVbTSo7iY" role="3uHU7w">
                  <ref role="Rm8GQ" to="i348:4OKkcnfu_Aj" resolve="GUARD" />
                  <ref role="1Px2BO" to="i348:4OKkcnfu_Ag" resolve="RuleTemplateMehodKind" />
                </node>
                <node concept="37vLTw" id="1mdVbTSo5Oz" role="3uHU7B">
                  <ref role="3cqZAo" node="1mdVbTSo18d" resolve="methk" />
                </node>
              </node>
              <node concept="3clFbC" id="1mdVbTSo45X" role="3uHU7B">
                <node concept="37vLTw" id="1mdVbTSo2Sk" role="3uHU7B">
                  <ref role="3cqZAo" node="1mdVbTSo18d" resolve="methk" />
                </node>
                <node concept="Rm8GO" id="1mdVbTSo4Yh" role="3uHU7w">
                  <ref role="Rm8GQ" to="i348:4OKkcnfu_Ak" resolve="BODY" />
                  <ref role="1Px2BO" to="i348:4OKkcnfu_Ag" resolve="RuleTemplateMehodKind" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1mdVbTSo2er" role="37vLTJ">
              <ref role="3cqZAo" node="1mdVbTSnWei" resolve="acceptable" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1mdVbTSo2K5" role="3cqZAp" />
        <node concept="3clFbF" id="1mdVbTRZ23e" role="3cqZAp">
          <node concept="37vLTw" id="1mdVbTSnWet" role="3clFbG">
            <ref role="3cqZAo" node="1mdVbTSnWei" resolve="acceptable" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="34$A1Mf2tex">
    <property role="3GE5qa" value="constraint" />
    <ref role="1M2myG" to="wq2x:6p0DfM0ang5" resolve="UserConstraint" />
    <node concept="1N5Pfh" id="34$A1Mf2tey" role="1Mr941">
      <ref role="1N5Vy1" to="wq2x:6p0DfM0aywA" resolve="template" />
      <node concept="3dgokm" id="34$A1Mf2teA" role="1N6uqs">
        <node concept="3clFbS" id="34$A1Mf2teC" role="2VODD2">
          <node concept="3cpWs8" id="3xe5rkWX5aY" role="3cqZAp">
            <node concept="3cpWsn" id="3xe5rkWX5b1" role="3cpWs9">
              <property role="TrG5h" value="handler" />
              <node concept="3Tqbb2" id="3xe5rkWX5aW" role="1tU5fm">
                <ref role="ehGHo" to="wq2x:7eGEHDlgPKk" resolve="Handler" />
              </node>
              <node concept="2OqwBi" id="3xe5rkWX9Eo" role="33vP2m">
                <node concept="2rP1CM" id="3xe5rkWX98a" role="2Oq$k0" />
                <node concept="2Xjw5R" id="3xe5rkWXa_v" role="2OqNvi">
                  <node concept="1xMEDy" id="3xe5rkWXa_x" role="1xVPHs">
                    <node concept="chp4Y" id="3xe5rkWXbhe" role="ri$Ld">
                      <ref role="cht4Q" to="wq2x:7eGEHDlgPKk" resolve="Handler" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3xe5rkWYpZW" role="3cqZAp">
            <node concept="3cpWsn" id="3xe5rkWYpZZ" role="3cpWs9">
              <property role="TrG5h" value="localCtrs" />
              <node concept="A3Dl8" id="3xe5rkWYpZT" role="1tU5fm">
                <node concept="3Tqbb2" id="3xe5rkWYqJf" role="A3Ik2" />
              </node>
              <node concept="2OqwBi" id="3xe5rkWYvRC" role="33vP2m">
                <node concept="37vLTw" id="3xe5rkWYvf2" role="2Oq$k0">
                  <ref role="3cqZAo" node="3xe5rkWX5b1" resolve="handler" />
                </node>
                <node concept="3Tsc0h" id="3xe5rkWYxRM" role="2OqNvi">
                  <ref role="3TtcxE" to="wq2x:1HWyn8jEsaE" resolve="constraint" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3xe5rkX2$1J" role="3cqZAp" />
          <node concept="3SKdUt" id="3xe5rkWUrRn" role="3cqZAp">
            <node concept="3SKdUq" id="3xe5rkWUrRp" role="3SKWNk">
              <property role="3SKdUp" value="Scope for Head: private from here, protected from extended, and public from them" />
            </node>
          </node>
          <node concept="3cpWs8" id="3xe5rkWWNSe" role="3cqZAp">
            <node concept="3cpWsn" id="3xe5rkWWNSh" role="3cpWs9">
              <property role="TrG5h" value="extendedCtrs" />
              <node concept="2OqwBi" id="3xe5rkWWQ_d" role="33vP2m">
                <node concept="2OqwBi" id="3xe5rkWWQ_e" role="2Oq$k0">
                  <node concept="2qgKlT" id="3xe5rkWZskB" role="2OqNvi">
                    <ref role="37wK5l" to="x5bw:3xe5rkWZczF" resolve="handlerExtends" />
                  </node>
                  <node concept="37vLTw" id="3xe5rkWXc_u" role="2Oq$k0">
                    <ref role="3cqZAo" node="3xe5rkWX5b1" resolve="handler" />
                  </node>
                </node>
                <node concept="3goQfb" id="3xe5rkWWQ_l" role="2OqNvi">
                  <node concept="1bVj0M" id="3xe5rkWWQ_m" role="23t8la">
                    <node concept="3clFbS" id="3xe5rkWWQ_n" role="1bW5cS">
                      <node concept="3clFbF" id="3xe5rkWWQ_o" role="3cqZAp">
                        <node concept="2OqwBi" id="3xe5rkX2quB" role="3clFbG">
                          <node concept="2OqwBi" id="3xe5rkWWQ_p" role="2Oq$k0">
                            <node concept="37vLTw" id="3xe5rkWWQ_q" role="2Oq$k0">
                              <ref role="3cqZAo" node="3xe5rkWWQ_s" resolve="it" />
                            </node>
                            <node concept="3Tsc0h" id="3xe5rkWWQ_r" role="2OqNvi">
                              <ref role="3TtcxE" to="wq2x:1HWyn8jEsaE" resolve="constraint" />
                            </node>
                          </node>
                          <node concept="3zZkjj" id="3xe5rkX2x2z" role="2OqNvi">
                            <node concept="1bVj0M" id="3xe5rkWXXPn" role="23t8la">
                              <node concept="3clFbS" id="3xe5rkWXXPo" role="1bW5cS">
                                <node concept="3clFbF" id="3xe5rkWXYyi" role="3cqZAp">
                                  <node concept="2OqwBi" id="3xe5rkWXZam" role="3clFbG">
                                    <node concept="37vLTw" id="3xe5rkWXYyh" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3xe5rkWXXPp" resolve="it" />
                                    </node>
                                    <node concept="2qgKlT" id="3xe5rkWYjsg" role="2OqNvi">
                                      <ref role="37wK5l" to="x5bw:3xe5rkWUWD1" resolve="atLeastVisibleAs" />
                                      <node concept="35c_gC" id="3xe5rkWYk9i" role="37wK5m">
                                        <ref role="35c_gD" to="wq2x:3xe5rkWUrcO" resolve="ProtectedVisibility" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="3xe5rkWXXPp" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="3xe5rkWXXPq" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="3xe5rkWWQ_s" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="3xe5rkWWQ_t" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="A3Dl8" id="3xe5rkWWSHT" role="1tU5fm">
                <node concept="3Tqbb2" id="3xe5rkWWTpP" role="A3Ik2" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3xe5rkX2SXV" role="3cqZAp">
            <node concept="3cpWsn" id="3xe5rkX2SXY" role="3cpWs9">
              <property role="TrG5h" value="headVisibleCtrs" />
              <node concept="A3Dl8" id="3xe5rkX2SXS" role="1tU5fm">
                <node concept="3Tqbb2" id="3xe5rkX2Tvd" role="A3Ik2" />
              </node>
              <node concept="2OqwBi" id="3xe5rkWZxNL" role="33vP2m">
                <node concept="37vLTw" id="3xe5rkX1ioX" role="2Oq$k0">
                  <ref role="3cqZAo" node="3xe5rkWYpZZ" resolve="localCtrs" />
                </node>
                <node concept="3QWeyG" id="3xe5rkX0c2E" role="2OqNvi">
                  <node concept="37vLTw" id="3xe5rkX1jaG" role="576Qk">
                    <ref role="3cqZAo" node="3xe5rkWWNSh" resolve="extendedCtrs" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3xe5rkWYQTh" role="3cqZAp">
            <node concept="3cpWsn" id="3xe5rkWYQTi" role="3cpWs9">
              <property role="TrG5h" value="headContext" />
              <node concept="3Tqbb2" id="3xe5rkWYQTj" role="1tU5fm">
                <ref role="ehGHo" to="wq2x:6p0DfM0a3gA" resolve="Head" />
              </node>
              <node concept="2OqwBi" id="3xe5rkWYQTk" role="33vP2m">
                <node concept="2rP1CM" id="3xe5rkWYQTl" role="2Oq$k0" />
                <node concept="2Xjw5R" id="3xe5rkWYQTm" role="2OqNvi">
                  <node concept="1xMEDy" id="3xe5rkWYQTn" role="1xVPHs">
                    <node concept="chp4Y" id="3xe5rkWYQTo" role="ri$Ld">
                      <ref role="cht4Q" to="wq2x:6p0DfM0a3gA" resolve="Head" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3xe5rkWYQTp" role="3cqZAp">
            <node concept="3clFbS" id="3xe5rkWYQTq" role="3clFbx">
              <node concept="3cpWs6" id="3xe5rkWYQTr" role="3cqZAp">
                <node concept="2ShNRf" id="3xe5rkWYQTs" role="3cqZAk">
                  <node concept="YeOm9" id="3xe5rkWYQTt" role="2ShVmc">
                    <node concept="1Y3b0j" id="3xe5rkWYQTu" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                      <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                      <node concept="3Tm1VV" id="3xe5rkWYQTK" role="1B3o_S" />
                      <node concept="3clFb_" id="3xe5rkWYQTL" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="getName" />
                        <node concept="17QB3L" id="3xe5rkWYQTM" role="3clF45" />
                        <node concept="3Tm1VV" id="3xe5rkWYQTN" role="1B3o_S" />
                        <node concept="37vLTG" id="3xe5rkWYQTO" role="3clF46">
                          <property role="TrG5h" value="child" />
                          <node concept="3Tqbb2" id="3xe5rkWYQTP" role="1tU5fm" />
                        </node>
                        <node concept="3clFbS" id="3xe5rkWYQTQ" role="3clF47">
                          <node concept="3clFbF" id="3xe5rkWYQTR" role="3cqZAp">
                            <node concept="2OqwBi" id="3xe5rkWYQTS" role="3clFbG">
                              <node concept="1PxgMI" id="3xe5rkWYQTT" role="2Oq$k0">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="3xe5rkWYQTU" role="3oSUPX">
                                  <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                                </node>
                                <node concept="37vLTw" id="3xe5rkWYQTV" role="1m5AlR">
                                  <ref role="3cqZAo" node="3xe5rkWYQTO" resolve="child" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="3xe5rkWYQTW" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="3xe5rkX2YRT" role="37wK5m">
                        <ref role="3cqZAo" node="3xe5rkX2SXY" resolve="headVisibleCtrs" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3xe5rkWYQTX" role="3clFbw">
              <node concept="37vLTw" id="3xe5rkWYQTY" role="2Oq$k0">
                <ref role="3cqZAo" node="3xe5rkWYQTi" resolve="headContext" />
              </node>
              <node concept="3x8VRR" id="3xe5rkWYQTZ" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbH" id="34$A1Mf4EiK" role="3cqZAp" />
          <node concept="3SKdUt" id="3xe5rkWUsHu" role="3cqZAp">
            <node concept="3SKdUq" id="3xe5rkWUsHw" role="3SKWNk">
              <property role="3SKdUp" value="Scope for Body: additionally all public" />
            </node>
          </node>
          <node concept="3cpWs8" id="3xe5rkX0hCg" role="3cqZAp">
            <node concept="3cpWsn" id="3xe5rkX0hCj" role="3cpWs9">
              <property role="TrG5h" value="publicCtrs" />
              <node concept="A3Dl8" id="3xe5rkX0hCd" role="1tU5fm">
                <node concept="3Tqbb2" id="3xe5rkX0iry" role="A3Ik2" />
              </node>
              <node concept="2OqwBi" id="3xe5rkWWsCd" role="33vP2m">
                <node concept="2OqwBi" id="34$A1Mf4M41" role="2Oq$k0">
                  <node concept="2OqwBi" id="34$A1Mf4Ldm" role="2Oq$k0">
                    <node concept="2rP1CM" id="34$A1Mf4KMY" role="2Oq$k0" />
                    <node concept="I4A8Y" id="34$A1Mf4L$4" role="2OqNvi" />
                  </node>
                  <node concept="1j9C0f" id="34$A1Mf4MvR" role="2OqNvi">
                    <ref role="1j9C0d" to="wq2x:6p0DfM0asBO" resolve="ConstraintDeclaration" />
                  </node>
                </node>
                <node concept="3zZkjj" id="3xe5rkWWvtU" role="2OqNvi">
                  <node concept="1bVj0M" id="3xe5rkWWvtW" role="23t8la">
                    <node concept="3clFbS" id="3xe5rkWWvtX" role="1bW5cS">
                      <node concept="3clFbF" id="3xe5rkWWvWF" role="3cqZAp">
                        <node concept="2OqwBi" id="3xe5rkWWwpH" role="3clFbG">
                          <node concept="37vLTw" id="3xe5rkWWvWE" role="2Oq$k0">
                            <ref role="3cqZAo" node="3xe5rkWWvtY" resolve="it" />
                          </node>
                          <node concept="2qgKlT" id="3xe5rkWWyjY" role="2OqNvi">
                            <ref role="37wK5l" to="x5bw:3xe5rkWUWD1" resolve="atLeastVisibleAs" />
                            <node concept="35c_gC" id="3xe5rkWWAh2" role="37wK5m">
                              <ref role="35c_gD" to="wq2x:3xe5rkWUrcN" resolve="PublicVisibility" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="3xe5rkWWvtY" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="3xe5rkWWvtZ" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="34$A1Mf3Rh7" role="3cqZAp">
            <node concept="2ShNRf" id="34$A1Mf3Rh5" role="3clFbG">
              <node concept="YeOm9" id="34$A1Mf3Ry2" role="2ShVmc">
                <node concept="1Y3b0j" id="34$A1Mf3Ry5" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                  <node concept="3Tm1VV" id="34$A1Mf3Ry6" role="1B3o_S" />
                  <node concept="3clFb_" id="34$A1Mf3Ryl" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getName" />
                    <node concept="17QB3L" id="34$A1Mf3Rym" role="3clF45" />
                    <node concept="3Tm1VV" id="34$A1Mf3Ryn" role="1B3o_S" />
                    <node concept="37vLTG" id="34$A1Mf3Ryp" role="3clF46">
                      <property role="TrG5h" value="child" />
                      <node concept="3Tqbb2" id="34$A1Mf3Ryq" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="34$A1Mf3Ryr" role="3clF47">
                      <node concept="3clFbF" id="34$A1Mf3Thk" role="3cqZAp">
                        <node concept="2OqwBi" id="34$A1Mf3TZN" role="3clFbG">
                          <node concept="1PxgMI" id="34$A1Mf3TM6" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <node concept="chp4Y" id="34$A1Mf4Wiq" role="3oSUPX">
                              <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                            </node>
                            <node concept="37vLTw" id="34$A1Mf3Thj" role="1m5AlR">
                              <ref role="3cqZAo" node="34$A1Mf3Ryp" resolve="child" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="34$A1Mf3UsF" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3xe5rkX1mXK" role="37wK5m">
                    <node concept="37vLTw" id="3xe5rkX2Zq6" role="2Oq$k0">
                      <ref role="3cqZAo" node="3xe5rkX2SXY" resolve="headVisibleCtrs" />
                    </node>
                    <node concept="3QWeyG" id="3xe5rkX1SbK" role="2OqNvi">
                      <node concept="2OqwBi" id="3xe5rkX2$Kn" role="576Qk">
                        <node concept="37vLTw" id="3xe5rkX1SU0" role="2Oq$k0">
                          <ref role="3cqZAo" node="3xe5rkX0hCj" resolve="publicCtrs" />
                        </node>
                        <node concept="66VNe" id="3xe5rkX2Ouw" role="2OqNvi">
                          <node concept="37vLTw" id="3xe5rkX2ZUu" role="576Qk">
                            <ref role="3cqZAo" node="3xe5rkX2SXY" resolve="headVisibleCtrs" />
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
    </node>
  </node>
  <node concept="1M2fIO" id="2BZXJecNbHu">
    <property role="3GE5qa" value="query" />
    <ref role="1M2myG" to="wq2x:2BZXJecNbEw" resolve="QueryParameterDeclaration" />
  </node>
  <node concept="1M2fIO" id="2BZXJecNhWC">
    <property role="3GE5qa" value="query" />
    <ref role="1M2myG" to="wq2x:2BZXJecNhT3" resolve="QueryParameterReference" />
    <node concept="1N5Pfh" id="2BZXJecNhWD" role="1Mr941">
      <ref role="1N5Vy1" to="wq2x:2BZXJecNhVS" resolve="declaration" />
      <node concept="3dgokm" id="2BZXJecNhWN" role="1N6uqs">
        <node concept="3clFbS" id="2BZXJecNhWP" role="2VODD2">
          <node concept="3clFbF" id="2BZXJecNi6J" role="3cqZAp">
            <node concept="2ShNRf" id="2BZXJecNi6K" role="3clFbG">
              <node concept="YeOm9" id="2BZXJecNi6L" role="2ShVmc">
                <node concept="1Y3b0j" id="2BZXJecNi6M" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                  <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <node concept="2OqwBi" id="2BZXJecNi6N" role="37wK5m">
                    <node concept="2OqwBi" id="2BZXJecNi6O" role="2Oq$k0">
                      <node concept="2rP1CM" id="2BZXJecNi6P" role="2Oq$k0" />
                      <node concept="2Xjw5R" id="2BZXJecNi6Q" role="2OqNvi">
                        <node concept="1xMEDy" id="2BZXJecNi6R" role="1xVPHs">
                          <node concept="chp4Y" id="2BZXJecNi6S" role="ri$Ld">
                            <ref role="cht4Q" to="wq2x:6OXbTD$dU7b" resolve="Query" />
                          </node>
                        </node>
                        <node concept="1xIGOp" id="2BZXJecNi6T" role="1xVPHs" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="2BZXJecNi6U" role="2OqNvi">
                      <ref role="3TtcxE" to="wq2x:2BZXJecNeMM" resolve="parameter" />
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="2BZXJecNi6V" role="1B3o_S" />
                  <node concept="3clFb_" id="2BZXJecNi6W" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getName" />
                    <node concept="17QB3L" id="2BZXJecNi6X" role="3clF45" />
                    <node concept="3Tm1VV" id="2BZXJecNi6Y" role="1B3o_S" />
                    <node concept="37vLTG" id="2BZXJecNi6Z" role="3clF46">
                      <property role="TrG5h" value="child" />
                      <node concept="3Tqbb2" id="2BZXJecNi70" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="2BZXJecNi71" role="3clF47">
                      <node concept="3clFbF" id="2BZXJecNi72" role="3cqZAp">
                        <node concept="2OqwBi" id="2BZXJecNi73" role="3clFbG">
                          <node concept="1PxgMI" id="2BZXJecNi74" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <node concept="chp4Y" id="2BZXJecNi75" role="3oSUPX">
                              <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                            </node>
                            <node concept="37vLTw" id="2BZXJecNi76" role="1m5AlR">
                              <ref role="3cqZAo" node="2BZXJecNi6Z" resolve="child" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="2BZXJecNi77" role="2OqNvi">
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
    </node>
  </node>
  <node concept="1M2fIO" id="72RDgINqIIa">
    <ref role="1M2myG" to="wq2x:72RDgINeSQJ" resolve="ContextRepositoryExpression" />
    <node concept="9S07l" id="72RDgINqIIb" role="9Vyp8">
      <node concept="3clFbS" id="72RDgINqIIc" role="2VODD2">
        <node concept="3clFbF" id="72RDgINqIPv" role="3cqZAp">
          <node concept="2OqwBi" id="72RDgINqL2s" role="3clFbG">
            <node concept="2OqwBi" id="72RDgINqJ4X" role="2Oq$k0">
              <node concept="nLn13" id="72RDgINqIPu" role="2Oq$k0" />
              <node concept="2Xjw5R" id="72RDgINqJmE" role="2OqNvi">
                <node concept="3gmYPX" id="72RDgINqJKj" role="1xVPHs">
                  <node concept="3gn64h" id="72RDgINqJKk" role="3gmYPZ">
                    <ref role="3gnhBz" to="wq2x:36tQV5AmIsf" resolve="RuleTemplate" />
                  </node>
                  <node concept="3gn64h" id="72RDgINqKsI" role="3gmYPZ">
                    <ref role="3gnhBz" to="wq2x:7IysFe_ZPX_" resolve="MacroBody" />
                  </node>
                </node>
                <node concept="1xIGOp" id="72RDgINqK6n" role="1xVPHs" />
              </node>
            </node>
            <node concept="3x8VRR" id="72RDgINqMNk" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3xe5rkX5uDC">
    <property role="3GE5qa" value="constraint.visibility" />
    <ref role="1M2myG" to="wq2x:3xe5rkWUnVB" resolve="Visibility" />
    <ref role="1MND4H" to="wq2x:3xe5rkWUrcN" resolve="PublicVisibility" />
  </node>
</model>

