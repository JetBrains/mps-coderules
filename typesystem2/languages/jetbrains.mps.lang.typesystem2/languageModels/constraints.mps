<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:81151157-4aa6-41ac-acda-128bb1020041(jetbrains.mps.lang.typesystem2.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="0" />
    <use id="d4615e3b-d671-4ba9-af01-2b78369b0ba7" name="jetbrains.mps.lang.pattern" version="1" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="fnmy" ref="r:89c0fb70-0977-4113-a076-5906f9d8630f(jetbrains.mps.baseLanguage.scopes)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="wq2x" ref="r:83137295-aa87-45e8-b0c0-ede2adf2a396(jetbrains.mps.lang.typesystem2.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="6exd" ref="r:0f9b1fb3-00f9-4480-b235-1a906a087ab2(jetbrains.mps.logic.treeform)" />
    <import index="x5bw" ref="r:15ea4f4e-2f41-4ce3-b7e4-a4e0737f0171(jetbrains.mps.lang.typesystem2.behavior)" implicit="true" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1161622665029" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_model" flags="nn" index="1Q6Npb" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
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
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
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
      <concept id="1202989531578" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAChild" flags="in" index="nKS2y" />
      <concept id="1202989658459" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_parentNode" flags="nn" index="nLn13" />
      <concept id="8966504967485224688" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_contextNode" flags="nn" index="2rP1CM" />
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1147468630220" name="propertyGetter" index="EtsB7" />
        <child id="1152963095733" name="propertySetter" index="1LXaQT" />
      </concept>
      <concept id="1147467790433" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyGetter" flags="in" index="Eqf_E" />
      <concept id="1147468365020" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" flags="nn" index="EsrRn" />
      <concept id="5676632058862809931" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope" flags="in" index="13QW63" />
      <concept id="1159285995602" name="jetbrains.mps.lang.constraints.structure.NodeDefaultSearchScope" flags="ng" index="3EP7_v">
        <child id="1159286114227" name="searchScopeFactory" index="3EP$qY" />
      </concept>
      <concept id="1152959968041" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertySetter" flags="in" index="1LLf8_" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213098023997" name="property" index="1MhHOB" />
        <child id="1213100494875" name="referent" index="1Mr941" />
        <child id="1213101058038" name="defaultScope" index="1MtirG" />
        <child id="1213106463729" name="canBeChild" index="1MLUbF" />
      </concept>
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1176543928247" name="jetbrains.mps.lang.typesystem.structure.IsSubtypeExpression" flags="nn" index="3JuTUA">
        <child id="1176543945045" name="subtypeExpression" index="3JuY14" />
        <child id="1176543950311" name="supertypeExpression" index="3JuZjQ" />
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
        <reference id="6733348108486823428" name="concept" index="1m5ApE" />
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="6870613620390542976" name="jetbrains.mps.lang.smodel.structure.ConceptAliasOperation" flags="ng" index="3n3YKJ" />
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
    </language>
  </registry>
  <node concept="1M2fIO" id="6ntBQ9KM5bM">
    <property role="3GE5qa" value="rule.input" />
    <ref role="1M2myG" to="wq2x:6p0DfM0ia8T" resolve="RuleInputDeclaration" />
    <node concept="3EP7_v" id="6ntBQ9KM5jK" role="1MtirG">
      <node concept="13QW63" id="6ntBQ9KM6eb" role="3EP$qY">
        <node concept="3clFbS" id="6ntBQ9KM6ed" role="2VODD2">
          <node concept="3cpWs8" id="6ntBQ9KM$Fo" role="3cqZAp">
            <node concept="3cpWsn" id="6ntBQ9KM$Fp" role="3cpWs9">
              <property role="TrG5h" value="rule" />
              <node concept="3Tqbb2" id="6ntBQ9KM$Fk" role="1tU5fm">
                <ref role="ehGHo" to="wq2x:4EfgX2ET3GH" resolve="AbstractRule" />
              </node>
              <node concept="2OqwBi" id="6ntBQ9KM$Fq" role="33vP2m">
                <node concept="2rP1CM" id="6ntBQ9KM$Fr" role="2Oq$k0" />
                <node concept="2Xjw5R" id="6ntBQ9KM$Fs" role="2OqNvi">
                  <node concept="1xMEDy" id="6ntBQ9KM$Ft" role="1xVPHs">
                    <node concept="chp4Y" id="3KXGt7X4HHo" role="ri$Ld">
                      <ref role="cht4Q" to="wq2x:4EfgX2ET3GH" resolve="AbstractRule" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="6ntBQ9KM$Fv" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6ntBQ9KM82u" role="3cqZAp">
            <node concept="2ShNRf" id="6ntBQ9KM82q" role="3clFbG">
              <node concept="YeOm9" id="6ntBQ9KM8cc" role="2ShVmc">
                <node concept="1Y3b0j" id="6ntBQ9KM8cf" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                  <node concept="2YIFZM" id="6ntBQ9KM$lM" role="37wK5m">
                    <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object):java.util.List" resolve="singletonList" />
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                    <node concept="2OqwBi" id="6ntBQ9KM_jA" role="37wK5m">
                      <node concept="2OqwBi" id="5NuEpF1jBOR" role="2Oq$k0">
                        <node concept="37vLTw" id="6ntBQ9KM_a3" role="2Oq$k0">
                          <ref role="3cqZAo" node="6ntBQ9KM$Fp" resolve="rule" />
                        </node>
                        <node concept="3TrEf2" id="6wQEDbCDRK7" role="2OqNvi">
                          <ref role="3Tt5mk" to="wq2x:6wQEDbCCPyR" resolve="input" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="5NuEpF1jCoN" role="2OqNvi">
                        <ref role="3Tt5mk" to="wq2x:5NuEpF1ihrB" resolve="input" />
                      </node>
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="6ntBQ9KM8cg" role="1B3o_S" />
                  <node concept="3clFb_" id="6ntBQ9KM8cr" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getName" />
                    <node concept="17QB3L" id="6ntBQ9KM8cs" role="3clF45" />
                    <node concept="3Tm1VV" id="6ntBQ9KM8ct" role="1B3o_S" />
                    <node concept="37vLTG" id="6ntBQ9KM8cv" role="3clF46">
                      <property role="TrG5h" value="child" />
                      <node concept="3Tqbb2" id="6ntBQ9KM8cw" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="6ntBQ9KM8cx" role="3clF47">
                      <node concept="3clFbF" id="6ntBQ9KM8n0" role="3cqZAp">
                        <node concept="2OqwBi" id="6ntBQ9KM8_$" role="3clFbG">
                          <node concept="1PxgMI" id="6ntBQ9KM8uP" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <ref role="1m5ApE" to="tpck:h0TrEE$" resolve="INamedConcept" />
                            <node concept="37vLTw" id="6ntBQ9KM8mZ" role="1m5AlR">
                              <ref role="3cqZAo" node="6ntBQ9KM8cv" resolve="child" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="6ntBQ9KM8Im" role="2OqNvi">
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
  <node concept="1M2fIO" id="5MHpiylEtrK">
    <property role="3GE5qa" value="rule.code.parameter" />
    <ref role="1M2myG" to="wq2x:5MHpiylEsuT" resolve="RuleParameterDeclaration" />
    <node concept="3EP7_v" id="5MHpiylEttA" role="1MtirG">
      <node concept="13QW63" id="5MHpiylEu44" role="3EP$qY">
        <node concept="3clFbS" id="5MHpiylEu45" role="2VODD2">
          <node concept="3cpWs8" id="5MHpiylEu46" role="3cqZAp">
            <node concept="3cpWsn" id="5MHpiylEu47" role="3cpWs9">
              <property role="TrG5h" value="rule" />
              <node concept="3Tqbb2" id="5MHpiylEu48" role="1tU5fm">
                <ref role="ehGHo" to="wq2x:4EfgX2ET3GH" resolve="AbstractRule" />
              </node>
              <node concept="2OqwBi" id="5MHpiylEu49" role="33vP2m">
                <node concept="2rP1CM" id="5MHpiylEu4a" role="2Oq$k0" />
                <node concept="2Xjw5R" id="5MHpiylEu4b" role="2OqNvi">
                  <node concept="1xMEDy" id="5MHpiylEu4c" role="1xVPHs">
                    <node concept="chp4Y" id="30XHGaOOk7n" role="ri$Ld">
                      <ref role="cht4Q" to="wq2x:4EfgX2ET3GH" resolve="AbstractRule" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="5MHpiylEu4e" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2JQZWxF8s89" role="3cqZAp">
            <node concept="3cpWsn" id="2JQZWxF8s8a" role="3cpWs9">
              <property role="TrG5h" value="ruleParams" />
              <node concept="_YKpA" id="2JQZWxF8s7X" role="1tU5fm">
                <node concept="3Tqbb2" id="2JQZWxF8s80" role="_ZDj9" />
              </node>
              <node concept="2ShNRf" id="2JQZWxF8s8b" role="33vP2m">
                <node concept="Tc6Ow" id="2JQZWxF8s8c" role="2ShVmc">
                  <node concept="2OqwBi" id="2JQZWxF8s8i" role="HW$Y0">
                    <node concept="2OqwBi" id="2JQZWxF8s8j" role="2Oq$k0">
                      <node concept="37vLTw" id="2JQZWxF8s8k" role="2Oq$k0">
                        <ref role="3cqZAo" node="5MHpiylEu47" resolve="rule" />
                      </node>
                      <node concept="3TrEf2" id="2JQZWxF8s8l" role="2OqNvi">
                        <ref role="3Tt5mk" to="wq2x:6wQEDbCHGnY" resolve="letBlock" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="2JQZWxF8s8m" role="2OqNvi">
                      <ref role="3Tt5mk" to="wq2x:5MHpiylFI5Z" resolve="parameter" />
                    </node>
                  </node>
                  <node concept="3Tqbb2" id="2JQZWxF8s8n" role="HW$YZ" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="30XHGaOP6z0" role="3cqZAp">
            <node concept="3clFbS" id="30XHGaOP6z2" role="3clFbx">
              <node concept="3clFbF" id="30XHGaOP723" role="3cqZAp">
                <node concept="2OqwBi" id="30XHGaOP7gW" role="3clFbG">
                  <node concept="37vLTw" id="30XHGaOP721" role="2Oq$k0">
                    <ref role="3cqZAo" node="2JQZWxF8s8a" resolve="ruleParams" />
                  </node>
                  <node concept="TSZUe" id="30XHGaOP8jN" role="2OqNvi">
                    <node concept="2OqwBi" id="30XHGaOP8nE" role="25WWJ7">
                      <node concept="2OqwBi" id="30XHGaOP8nF" role="2Oq$k0">
                        <node concept="1PxgMI" id="30XHGaOP8ys" role="2Oq$k0">
                          <ref role="1m5ApE" to="wq2x:7eGEHDlgPU4" resolve="Rule" />
                          <node concept="37vLTw" id="30XHGaOP8nG" role="1m5AlR">
                            <ref role="3cqZAo" node="5MHpiylEu47" resolve="rule" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="30XHGaOP8nH" role="2OqNvi">
                          <ref role="3Tt5mk" to="wq2x:5MHpiylGjt8" resolve="iterateParameterBlock" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="30XHGaOP8nI" role="2OqNvi">
                        <ref role="3Tt5mk" to="wq2x:5MHpiylFI5Z" resolve="parameter" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="30XHGaOP6Hp" role="3clFbw">
              <node concept="37vLTw" id="30XHGaOP6B5" role="2Oq$k0">
                <ref role="3cqZAo" node="5MHpiylEu47" resolve="rule" />
              </node>
              <node concept="1mIQ4w" id="30XHGaOP6Tp" role="2OqNvi">
                <node concept="chp4Y" id="30XHGaOP6Xh" role="cj9EA">
                  <ref role="cht4Q" to="wq2x:7eGEHDlgPU4" resolve="Rule" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2JQZWxF8sqw" role="3cqZAp">
            <node concept="3clFbS" id="2JQZWxF8sqy" role="3clFbx">
              <node concept="3clFbF" id="2JQZWxF8v46" role="3cqZAp">
                <node concept="2OqwBi" id="2JQZWxF8vse" role="3clFbG">
                  <node concept="37vLTw" id="2JQZWxF8v44" role="2Oq$k0">
                    <ref role="3cqZAo" node="2JQZWxF8s8a" resolve="ruleParams" />
                  </node>
                  <node concept="TSZUe" id="2JQZWxF8wYb" role="2OqNvi">
                    <node concept="2OqwBi" id="2JQZWxF8xVo" role="25WWJ7">
                      <node concept="2OqwBi" id="2JQZWxF8xja" role="2Oq$k0">
                        <node concept="2OqwBi" id="2JQZWxF8x4l" role="2Oq$k0">
                          <node concept="2OqwBi" id="2JQZWxF8x4m" role="2Oq$k0">
                            <node concept="1PxgMI" id="2JQZWxF8x4n" role="2Oq$k0">
                              <property role="1BlNFB" value="true" />
                              <ref role="1m5ApE" to="wq2x:7eGEHDlgPU4" resolve="Rule" />
                              <node concept="37vLTw" id="2JQZWxF8x4o" role="1m5AlR">
                                <ref role="3cqZAo" node="5MHpiylEu47" resolve="rule" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="2JQZWxF8x4p" role="2OqNvi">
                              <ref role="3Tt5mk" to="wq2x:6wQEDbCLoaZ" resolve="includeClause" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="2JQZWxF8x4q" role="2OqNvi">
                            <ref role="3Tt5mk" to="wq2x:6wQEDbCL4Fj" resolve="fragment" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="2JQZWxF8xAc" role="2OqNvi">
                          <ref role="3Tt5mk" to="wq2x:6wQEDbCHGnY" resolve="letBlock" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="2JQZWxF8yv2" role="2OqNvi">
                        <ref role="3Tt5mk" to="wq2x:5MHpiylFI5Z" resolve="parameter" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2JQZWxF8uyT" role="3clFbw">
              <node concept="2OqwBi" id="2JQZWxF8udr" role="2Oq$k0">
                <node concept="2OqwBi" id="2JQZWxF8tsz" role="2Oq$k0">
                  <node concept="1PxgMI" id="2JQZWxF8tfD" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <ref role="1m5ApE" to="wq2x:7eGEHDlgPU4" resolve="Rule" />
                    <node concept="37vLTw" id="2JQZWxF8stM" role="1m5AlR">
                      <ref role="3cqZAo" node="5MHpiylEu47" resolve="rule" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="2JQZWxF8tUH" role="2OqNvi">
                    <ref role="3Tt5mk" to="wq2x:6wQEDbCLoaZ" resolve="includeClause" />
                  </node>
                </node>
                <node concept="3TrEf2" id="2JQZWxF8unF" role="2OqNvi">
                  <ref role="3Tt5mk" to="wq2x:6wQEDbCL4Fj" resolve="fragment" />
                </node>
              </node>
              <node concept="3x8VRR" id="2JQZWxF8uYQ" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="5MHpiylEu4f" role="3cqZAp">
            <node concept="2ShNRf" id="5MHpiylEu4g" role="3clFbG">
              <node concept="YeOm9" id="5MHpiylEu4h" role="2ShVmc">
                <node concept="1Y3b0j" id="5MHpiylEu4i" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                  <node concept="37vLTw" id="2JQZWxF8s8o" role="37wK5m">
                    <ref role="3cqZAo" node="2JQZWxF8s8a" resolve="ruleParams" />
                  </node>
                  <node concept="3Tm1VV" id="5MHpiylEu4n" role="1B3o_S" />
                  <node concept="3clFb_" id="5MHpiylEu4o" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getName" />
                    <node concept="17QB3L" id="5MHpiylEu4p" role="3clF45" />
                    <node concept="3Tm1VV" id="5MHpiylEu4q" role="1B3o_S" />
                    <node concept="37vLTG" id="5MHpiylEu4r" role="3clF46">
                      <property role="TrG5h" value="child" />
                      <node concept="3Tqbb2" id="5MHpiylEu4s" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="5MHpiylEu4t" role="3clF47">
                      <node concept="3clFbF" id="5MHpiylEu4u" role="3cqZAp">
                        <node concept="2OqwBi" id="5MHpiylEu4v" role="3clFbG">
                          <node concept="1PxgMI" id="5MHpiylEu4w" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <ref role="1m5ApE" to="tpck:h0TrEE$" resolve="INamedConcept" />
                            <node concept="37vLTw" id="5MHpiylEu4x" role="1m5AlR">
                              <ref role="3cqZAo" node="5MHpiylEu4r" resolve="child" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="5MHpiylEu4y" role="2OqNvi">
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
  <node concept="1M2fIO" id="1hX44vMIQ9K">
    <property role="3GE5qa" value="type.code" />
    <ref role="1M2myG" to="wq2x:1hX44vMEjQr" resolve="TypeNodeExpression" />
    <node concept="1N5Pfh" id="1hX44vMIQ9L" role="1Mr941">
      <ref role="1N5Vy1" to="wq2x:1hX44vMIQ6F" resolve="declaration" />
      <node concept="13QW63" id="1hX44vMIQ9P" role="1N6uqs">
        <node concept="3clFbS" id="1hX44vMIQ9R" role="2VODD2">
          <node concept="3cpWs8" id="7IysFeA8w5P" role="3cqZAp">
            <node concept="3cpWsn" id="7IysFeA8w5Q" role="3cpWs9">
              <property role="TrG5h" value="tpd" />
              <node concept="3Tqbb2" id="7IysFeA8w5M" role="1tU5fm">
                <ref role="ehGHo" to="wq2x:7IysFeA0yb0" resolve="TypeDeclarationParameter" />
              </node>
              <node concept="2OqwBi" id="7IysFeA8w5R" role="33vP2m">
                <node concept="2rP1CM" id="7IysFeA8w5S" role="2Oq$k0" />
                <node concept="2Xjw5R" id="7IysFeA8w5T" role="2OqNvi">
                  <node concept="1xMEDy" id="7IysFeA8w5U" role="1xVPHs">
                    <node concept="chp4Y" id="7IysFeA8w5V" role="ri$Ld">
                      <ref role="cht4Q" to="wq2x:7IysFeA0yb0" resolve="TypeDeclarationParameter" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1hX44vMIS2R" role="3cqZAp">
            <node concept="3clFbS" id="1hX44vMIS2T" role="3clFbx">
              <node concept="3cpWs6" id="1hX44vMIXyO" role="3cqZAp">
                <node concept="2ShNRf" id="1hX44vMITbU" role="3cqZAk">
                  <node concept="YeOm9" id="1hX44vMITsf" role="2ShVmc">
                    <node concept="1Y3b0j" id="1hX44vMITsi" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                      <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                      <node concept="3Tm1VV" id="1hX44vMITsj" role="1B3o_S" />
                      <node concept="3clFb_" id="1hX44vMITsk" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="getName" />
                        <node concept="17QB3L" id="1hX44vMITsl" role="3clF45" />
                        <node concept="3Tm1VV" id="1hX44vMITsm" role="1B3o_S" />
                        <node concept="37vLTG" id="1hX44vMITso" role="3clF46">
                          <property role="TrG5h" value="child" />
                          <node concept="3Tqbb2" id="1hX44vMITsp" role="1tU5fm" />
                        </node>
                        <node concept="3clFbS" id="1hX44vMITsq" role="3clF47">
                          <node concept="3clFbF" id="1hX44vML04f" role="3cqZAp">
                            <node concept="2OqwBi" id="1hX44vML0ns" role="3clFbG">
                              <node concept="35c_gC" id="1hX44vML04e" role="2Oq$k0">
                                <ref role="35c_gD" to="wq2x:1hX44vMEjQr" resolve="TypeNodeExpression" />
                              </node>
                              <node concept="3n3YKJ" id="1hX44vML0Pm" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2ShNRf" id="1hX44vMITGC" role="37wK5m">
                        <node concept="Tc6Ow" id="1hX44vMITZG" role="2ShVmc">
                          <node concept="3Tqbb2" id="1hX44vMIUxJ" role="HW$YZ" />
                          <node concept="1PxgMI" id="7IysFeA8ywX" role="HW$Y0">
                            <property role="1BlNFB" value="true" />
                            <ref role="1m5ApE" to="wq2x:1pPth$m5Bbz" resolve="TypeDeclaration" />
                            <node concept="2OqwBi" id="7IysFeA8xnn" role="1m5AlR">
                              <node concept="37vLTw" id="7IysFeA8x8h" role="2Oq$k0">
                                <ref role="3cqZAo" node="7IysFeA8w5Q" resolve="tpd" />
                              </node>
                              <node concept="1mfA1w" id="7IysFeA8xGj" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1hX44vMIXRx" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="1hX44vMISJ8" role="3clFbw">
              <node concept="37vLTw" id="7IysFeA8wVa" role="2Oq$k0">
                <ref role="3cqZAo" node="7IysFeA8w5Q" resolve="tpd" />
              </node>
              <node concept="3x8VRR" id="1hX44vMIT4L" role="2OqNvi" />
            </node>
            <node concept="9aQIb" id="1hX44vMIX8V" role="9aQIa">
              <node concept="3clFbS" id="1hX44vMIX8W" role="9aQI4">
                <node concept="3cpWs6" id="1hX44vMIY1J" role="3cqZAp">
                  <node concept="2ShNRf" id="1hX44vMIYlE" role="3cqZAk">
                    <node concept="1pGfFk" id="1hX44vMIY_s" role="2ShVmc">
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
  <node concept="1M2fIO" id="7IysFeA1vGZ">
    <property role="3GE5qa" value="type.decl" />
    <ref role="1M2myG" to="wq2x:7IysFeA1uPa" resolve="TypeDeclarationParameterReference" />
    <node concept="1N5Pfh" id="7IysFeA1vHe" role="1Mr941">
      <ref role="1N5Vy1" to="wq2x:7IysFeA1uTj" resolve="parameter" />
      <node concept="13QW63" id="7IysFeA1vHj" role="1N6uqs">
        <node concept="3clFbS" id="7IysFeA1vHm" role="2VODD2">
          <node concept="3clFbF" id="7IysFeA1y_v" role="3cqZAp">
            <node concept="2ShNRf" id="7IysFeA1y_t" role="3clFbG">
              <node concept="YeOm9" id="7IysFeA1zMX" role="2ShVmc">
                <node concept="1Y3b0j" id="7IysFeA1zN0" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                  <node concept="2OqwBi" id="7IysFeA1A0p" role="37wK5m">
                    <node concept="2OqwBi" id="7IysFeA1A0q" role="2Oq$k0">
                      <node concept="2rP1CM" id="7IysFeA1A0r" role="2Oq$k0" />
                      <node concept="2Xjw5R" id="7IysFeA1A0s" role="2OqNvi">
                        <node concept="1xMEDy" id="7IysFeA1A0t" role="1xVPHs">
                          <node concept="chp4Y" id="7IysFeA1A0u" role="ri$Ld">
                            <ref role="cht4Q" to="wq2x:1pPth$m5Bbz" resolve="TypeDeclaration" />
                          </node>
                        </node>
                        <node concept="1xIGOp" id="7IysFeA1A0v" role="1xVPHs" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="7IysFeA1A0w" role="2OqNvi">
                      <ref role="3TtcxE" to="wq2x:7IysFeA0yca" resolve="parameter" />
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="7IysFeA1zN1" role="1B3o_S" />
                  <node concept="3clFb_" id="7IysFeA1zNg" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getName" />
                    <node concept="17QB3L" id="7IysFeA1zNh" role="3clF45" />
                    <node concept="3Tm1VV" id="7IysFeA1zNi" role="1B3o_S" />
                    <node concept="37vLTG" id="7IysFeA1zNk" role="3clF46">
                      <property role="TrG5h" value="child" />
                      <node concept="3Tqbb2" id="7IysFeA1zNl" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="7IysFeA1zNm" role="3clF47">
                      <node concept="3clFbF" id="7IysFeA1AeC" role="3cqZAp">
                        <node concept="2OqwBi" id="7IysFeA1Bq9" role="3clFbG">
                          <node concept="1PxgMI" id="7IysFeA1AMY" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <ref role="1m5ApE" to="tpck:h0TrEE$" resolve="INamedConcept" />
                            <node concept="37vLTw" id="7IysFeA1AeB" role="1m5AlR">
                              <ref role="3cqZAo" node="7IysFeA1zNk" resolve="child" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7IysFeA1Bya" role="2OqNvi">
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
  <node concept="1M2fIO" id="7IysFeA4rFo">
    <property role="3GE5qa" value="constraint.typespecific" />
    <ref role="1M2myG" to="wq2x:7IysFeA4qCy" resolve="NewTypeParameterBinding" />
    <node concept="1N5Pfh" id="7IysFeA4rFr" role="1Mr941">
      <ref role="1N5Vy1" to="wq2x:7IysFeA4qCz" resolve="parameter" />
      <node concept="13QW63" id="7IysFeA4rFw" role="1N6uqs">
        <node concept="3clFbS" id="7IysFeA4rFz" role="2VODD2">
          <node concept="3clFbF" id="7IysFeA4rIv" role="3cqZAp">
            <node concept="2ShNRf" id="7IysFeA4rIt" role="3clFbG">
              <node concept="YeOm9" id="7IysFeA4rWK" role="2ShVmc">
                <node concept="1Y3b0j" id="7IysFeA4rWN" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                  <node concept="3Tm1VV" id="7IysFeA4rWO" role="1B3o_S" />
                  <node concept="3clFb_" id="7IysFeA4rX3" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getName" />
                    <node concept="17QB3L" id="7IysFeA4rX4" role="3clF45" />
                    <node concept="3Tm1VV" id="7IysFeA4rX5" role="1B3o_S" />
                    <node concept="37vLTG" id="7IysFeA4rX7" role="3clF46">
                      <property role="TrG5h" value="child" />
                      <node concept="3Tqbb2" id="7IysFeA4rX8" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="7IysFeA4rX9" role="3clF47">
                      <node concept="3clFbF" id="7IysFeA4uMo" role="3cqZAp">
                        <node concept="2OqwBi" id="7IysFeA4vGE" role="3clFbG">
                          <node concept="1PxgMI" id="7IysFeA4vx9" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <ref role="1m5ApE" to="tpck:h0TrEE$" resolve="INamedConcept" />
                            <node concept="37vLTw" id="7IysFeA4uMn" role="1m5AlR">
                              <ref role="3cqZAo" node="7IysFeA4rX7" resolve="child" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="7IysFeA4vMI" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7IysFeA4u4c" role="37wK5m">
                    <node concept="2OqwBi" id="7IysFeA4tnU" role="2Oq$k0">
                      <node concept="2OqwBi" id="7IysFeA4soG" role="2Oq$k0">
                        <node concept="2rP1CM" id="7IysFeA4s8I" role="2Oq$k0" />
                        <node concept="2Xjw5R" id="7IysFeA4sDF" role="2OqNvi">
                          <node concept="1xMEDy" id="7IysFeA4sDH" role="1xVPHs">
                            <node concept="chp4Y" id="7IysFeA4sNf" role="ri$Ld">
                              <ref role="cht4Q" to="wq2x:7eGEHDlgPU1" resolve="NewTypeConstraint" />
                            </node>
                          </node>
                          <node concept="1xIGOp" id="7IysFeA4t7s" role="1xVPHs" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="7IysFeA4tDw" role="2OqNvi">
                        <ref role="3Tt5mk" to="wq2x:YGS68N6UU4" resolve="typeDeclaration" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="7IysFeA4uze" role="2OqNvi">
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
  <node concept="1M2fIO" id="3TnYLtqfhA9">
    <property role="3GE5qa" value="type.code.with" />
    <ref role="1M2myG" to="wq2x:3TnYLtqfh$J" resolve="ContextParameterReference" />
    <node concept="1N5Pfh" id="3TnYLtqfhNA" role="1Mr941">
      <ref role="1N5Vy1" to="wq2x:3TnYLtqfh$T" resolve="parameter" />
      <node concept="13QW63" id="3TnYLtqfhNE" role="1N6uqs">
        <node concept="3clFbS" id="3TnYLtqfhNH" role="2VODD2">
          <node concept="3clFbF" id="3TnYLtqfhS5" role="3cqZAp">
            <node concept="2ShNRf" id="3TnYLtqfhS3" role="3clFbG">
              <node concept="YeOm9" id="3TnYLtqfj71" role="2ShVmc">
                <node concept="1Y3b0j" id="3TnYLtqfj74" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                  <node concept="2OqwBi" id="3TnYLtqfkUT" role="37wK5m">
                    <node concept="2OqwBi" id="3TnYLtqfjRJ" role="2Oq$k0">
                      <node concept="2rP1CM" id="3TnYLtqfj$F" role="2Oq$k0" />
                      <node concept="2Xjw5R" id="3TnYLtqfkbN" role="2OqNvi">
                        <node concept="1xMEDy" id="3TnYLtqfkbP" role="1xVPHs">
                          <node concept="chp4Y" id="3TnYLtqfkl$" role="ri$Ld">
                            <ref role="cht4Q" to="wq2x:1pPth$m5B4X" resolve="TypeTable" />
                          </node>
                        </node>
                        <node concept="1xIGOp" id="3TnYLtqfkEe" role="1xVPHs" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="3TnYLtqfpsM" role="2OqNvi">
                      <ref role="3TtcxE" to="wq2x:3TnYLtqfp9N" resolve="parameter" />
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="3TnYLtqfj75" role="1B3o_S" />
                  <node concept="3clFb_" id="3TnYLtqfj7k" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getName" />
                    <node concept="17QB3L" id="3TnYLtqfj7l" role="3clF45" />
                    <node concept="3Tm1VV" id="3TnYLtqfj7m" role="1B3o_S" />
                    <node concept="37vLTG" id="3TnYLtqfj7o" role="3clF46">
                      <property role="TrG5h" value="child" />
                      <node concept="3Tqbb2" id="3TnYLtqfj7p" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="3TnYLtqfj7q" role="3clF47">
                      <node concept="3clFbF" id="3TnYLtqfliu" role="3cqZAp">
                        <node concept="2OqwBi" id="3TnYLtqflMj" role="3clFbG">
                          <node concept="1PxgMI" id="3TnYLtqflAa" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <ref role="1m5ApE" to="tpck:h0TrEE$" resolve="INamedConcept" />
                            <node concept="37vLTw" id="3TnYLtqflit" role="1m5AlR">
                              <ref role="3cqZAo" node="3TnYLtqfj7o" resolve="child" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="3TnYLtqflUC" role="2OqNvi">
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
  <node concept="1M2fIO" id="3TnYLtqgRGO">
    <property role="3GE5qa" value="type.code.with" />
    <ref role="1M2myG" to="wq2x:3TnYLtqgQYU" resolve="WithContextStatement" />
    <node concept="1N5Pfh" id="3TnYLtqgRGP" role="1Mr941">
      <ref role="1N5Vy1" to="wq2x:3TnYLtqgRY3" resolve="parameter" />
      <node concept="13QW63" id="3TnYLtqgS00" role="1N6uqs">
        <node concept="3clFbS" id="3TnYLtqgS03" role="2VODD2">
          <node concept="3clFbF" id="3TnYLtqh7i9" role="3cqZAp">
            <node concept="2ShNRf" id="3TnYLtqh7ib" role="3clFbG">
              <node concept="1pGfFk" id="3TnYLtqh7ic" role="2ShVmc">
                <ref role="37wK5l" to="o8zo:4k9eBec$QVW" resolve="ModelPlusImportedScope" />
                <node concept="1Q6Npb" id="3TnYLtqh7id" role="37wK5m" />
                <node concept="3clFbT" id="3TnYLtqh7ie" role="37wK5m" />
                <node concept="35c_gC" id="3TnYLtqh7if" role="37wK5m">
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
    <property role="3GE5qa" value="type.invoke" />
    <ref role="1M2myG" to="wq2x:1L74NXEmF9s" resolve="TypeParameterBinding" />
    <node concept="1N5Pfh" id="1L74NXEmG0W" role="1Mr941">
      <ref role="1N5Vy1" to="wq2x:1L74NXEmG0t" resolve="parameter" />
      <node concept="13QW63" id="1L74NXEmGch" role="1N6uqs">
        <node concept="3clFbS" id="1L74NXEmGci" role="2VODD2">
          <node concept="3clFbF" id="1L74NXEmGr8" role="3cqZAp">
            <node concept="2ShNRf" id="1L74NXEmGr9" role="3clFbG">
              <node concept="YeOm9" id="1L74NXEmGra" role="2ShVmc">
                <node concept="1Y3b0j" id="1L74NXEmGrb" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                  <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <node concept="3Tm1VV" id="1L74NXEmGrc" role="1B3o_S" />
                  <node concept="3clFb_" id="1L74NXEmGrd" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getName" />
                    <node concept="17QB3L" id="1L74NXEmGre" role="3clF45" />
                    <node concept="3Tm1VV" id="1L74NXEmGrf" role="1B3o_S" />
                    <node concept="37vLTG" id="1L74NXEmGrg" role="3clF46">
                      <property role="TrG5h" value="child" />
                      <node concept="3Tqbb2" id="1L74NXEmGrh" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="1L74NXEmGri" role="3clF47">
                      <node concept="3clFbF" id="1L74NXEmGrj" role="3cqZAp">
                        <node concept="2OqwBi" id="1L74NXEmGrk" role="3clFbG">
                          <node concept="1PxgMI" id="1L74NXEmGrl" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <ref role="1m5ApE" to="tpck:h0TrEE$" resolve="INamedConcept" />
                            <node concept="37vLTw" id="1L74NXEmGrm" role="1m5AlR">
                              <ref role="3cqZAo" node="1L74NXEmGrg" resolve="child" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="1L74NXEmGrn" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1L74NXEmGro" role="37wK5m">
                    <node concept="2OqwBi" id="1L74NXEmGrp" role="2Oq$k0">
                      <node concept="2OqwBi" id="1L74NXEmGrq" role="2Oq$k0">
                        <node concept="2rP1CM" id="1L74NXEmGrr" role="2Oq$k0" />
                        <node concept="2Xjw5R" id="1L74NXEmGrs" role="2OqNvi">
                          <node concept="1xMEDy" id="1L74NXEmGrt" role="1xVPHs">
                            <node concept="chp4Y" id="1L74NXEmGQf" role="ri$Ld">
                              <ref role="cht4Q" to="wq2x:1L74NXEmF9t" resolve="TypeInvocation" />
                            </node>
                          </node>
                          <node concept="1xIGOp" id="1L74NXEmGrv" role="1xVPHs" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="1L74NXEmH8N" role="2OqNvi">
                        <ref role="37wK5l" to="x5bw:1L74NXEmFa8" resolve="getTypeDeclaration" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="1L74NXEmGrx" role="2OqNvi">
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
  <node concept="1M2fIO" id="1L74NXFMz8h">
    <property role="3GE5qa" value="type.term" />
    <ref role="1M2myG" to="wq2x:1L74NXFMz6j" resolve="TypeFeatureOverride" />
    <node concept="1N5Pfh" id="1L74NXFMz8i" role="1Mr941">
      <ref role="1N5Vy1" to="wq2x:1L74NXFMz74" resolve="feature" />
      <node concept="13QW63" id="1L74NXFMz8m" role="1N6uqs">
        <node concept="3clFbS" id="1L74NXFMz8o" role="2VODD2">
          <node concept="3cpWs8" id="1L74NXFM$r3" role="3cqZAp">
            <node concept="3cpWsn" id="1L74NXFM$r4" role="3cpWs9">
              <property role="TrG5h" value="td" />
              <node concept="3Tqbb2" id="1L74NXFM$r2" role="1tU5fm">
                <ref role="ehGHo" to="wq2x:1pPth$m5Bbz" resolve="TypeDeclaration" />
              </node>
              <node concept="2OqwBi" id="1L74NXFM$r5" role="33vP2m">
                <node concept="2OqwBi" id="1L74NXFM$r6" role="2Oq$k0">
                  <node concept="2rP1CM" id="1L74NXFM$r7" role="2Oq$k0" />
                  <node concept="2Xjw5R" id="1L74NXFM$r8" role="2OqNvi">
                    <node concept="1xMEDy" id="1L74NXFM$r9" role="1xVPHs">
                      <node concept="chp4Y" id="1L74NXFM$ra" role="ri$Ld">
                        <ref role="cht4Q" to="wq2x:1L74NXElX0R" resolve="TypeTerm" />
                      </node>
                    </node>
                    <node concept="1xIGOp" id="1L74NXFM$rb" role="1xVPHs" />
                  </node>
                </node>
                <node concept="3TrEf2" id="1L74NXFM$rc" role="2OqNvi">
                  <ref role="3Tt5mk" to="wq2x:1L74NXElX1C" resolve="declaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1L74NXFM$In" role="3cqZAp">
            <node concept="2ShNRf" id="1L74NXFM$Ij" role="3clFbG">
              <node concept="YeOm9" id="1L74NXFM$WN" role="2ShVmc">
                <node concept="1Y3b0j" id="1L74NXFM$WQ" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                  <node concept="2OqwBi" id="1L74NXFMAdz" role="37wK5m">
                    <node concept="2OqwBi" id="1L74NXFM_uv" role="2Oq$k0">
                      <node concept="37vLTw" id="1L74NXFM_eO" role="2Oq$k0">
                        <ref role="3cqZAo" node="1L74NXFM$r4" resolve="td" />
                      </node>
                      <node concept="3TrEf2" id="1L74NXFM_Ln" role="2OqNvi">
                        <ref role="3Tt5mk" to="wq2x:1pPth$m5BbA" resolve="term" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="1L74NXFMAA_" role="2OqNvi">
                      <ref role="3TtcxE" to="wq2x:1pPth$m5oa9" resolve="feature" />
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="1L74NXFM$WR" role="1B3o_S" />
                  <node concept="3clFb_" id="1L74NXFM$X6" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getName" />
                    <node concept="17QB3L" id="1L74NXFM$X7" role="3clF45" />
                    <node concept="3Tm1VV" id="1L74NXFM$X8" role="1B3o_S" />
                    <node concept="37vLTG" id="1L74NXFM$Xa" role="3clF46">
                      <property role="TrG5h" value="child" />
                      <node concept="3Tqbb2" id="1L74NXFM$Xb" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="1L74NXFM$Xc" role="3clF47">
                      <node concept="3clFbF" id="1L74NXFMAQ0" role="3cqZAp">
                        <node concept="2OqwBi" id="1L74NXFMBGQ" role="3clFbG">
                          <node concept="1PxgMI" id="1L74NXFMBxl" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <ref role="1m5ApE" to="tpck:h0TrEE$" resolve="INamedConcept" />
                            <node concept="37vLTw" id="1L74NXFMAPZ" role="1m5AlR">
                              <ref role="3cqZAo" node="1L74NXFM$Xa" resolve="child" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="1L74NXFMBOR" role="2OqNvi">
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
  <node concept="1M2fIO" id="2V8TwD0E9XC">
    <property role="3GE5qa" value="type.term" />
    <ref role="1M2myG" to="wq2x:2V8TwD0E9Wq" resolve="TypeFeatureExpression" />
    <node concept="1N5Pfh" id="2V8TwD0E9XD" role="1Mr941">
      <ref role="1N5Vy1" to="wq2x:2V8TwD0E9Wr" resolve="feature" />
      <node concept="13QW63" id="2V8TwD0E9XF" role="1N6uqs">
        <node concept="3clFbS" id="2V8TwD0E9XG" role="2VODD2">
          <node concept="3clFbF" id="2V8TwD0Ect5" role="3cqZAp">
            <node concept="2ShNRf" id="2V8TwD0Ect1" role="3clFbG">
              <node concept="YeOm9" id="2V8TwD0EcJW" role="2ShVmc">
                <node concept="1Y3b0j" id="2V8TwD0EcJZ" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                  <node concept="2OqwBi" id="2V8TwD0EcWX" role="37wK5m">
                    <node concept="2OqwBi" id="2V8TwD0EcWY" role="2Oq$k0">
                      <node concept="2OqwBi" id="2V8TwD0EcWZ" role="2Oq$k0">
                        <node concept="2rP1CM" id="2V8TwD0EcX0" role="2Oq$k0" />
                        <node concept="2Xjw5R" id="2V8TwD0EcX1" role="2OqNvi">
                          <node concept="1xMEDy" id="2V8TwD0EcX2" role="1xVPHs">
                            <node concept="chp4Y" id="2V8TwD0EcX3" role="ri$Ld">
                              <ref role="cht4Q" to="wq2x:1pPth$m5Bbz" resolve="TypeDeclaration" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3TrEf2" id="2V8TwD0EcX4" role="2OqNvi">
                        <ref role="3Tt5mk" to="wq2x:1pPth$m5BbA" resolve="term" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="2V8TwD0EcX5" role="2OqNvi">
                      <ref role="3TtcxE" to="wq2x:1pPth$m5oa9" resolve="feature" />
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="2V8TwD0EcK0" role="1B3o_S" />
                  <node concept="3clFb_" id="2V8TwD0EcKf" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="getName" />
                    <node concept="17QB3L" id="2V8TwD0EcKg" role="3clF45" />
                    <node concept="3Tm1VV" id="2V8TwD0EcKh" role="1B3o_S" />
                    <node concept="37vLTG" id="2V8TwD0EcKj" role="3clF46">
                      <property role="TrG5h" value="child" />
                      <node concept="3Tqbb2" id="2V8TwD0EcKk" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="2V8TwD0EcKl" role="3clF47">
                      <node concept="3clFbF" id="2V8TwD0EdeI" role="3cqZAp">
                        <node concept="2OqwBi" id="2V8TwD0EdIJ" role="3clFbG">
                          <node concept="1PxgMI" id="2V8TwD0Edzp" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <ref role="1m5ApE" to="tpck:h0TrEE$" resolve="INamedConcept" />
                            <node concept="37vLTw" id="2V8TwD0EdeH" role="1m5AlR">
                              <ref role="3cqZAo" node="2V8TwD0EcKj" resolve="child" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="2V8TwD0EdQJ" role="2OqNvi">
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
  <node concept="1M2fIO" id="4cKdPpqF4Rp">
    <property role="3GE5qa" value="type.term" />
    <ref role="1M2myG" to="wq2x:2V8TwD148$8" resolve="RecoverOperation" />
    <node concept="nKS2y" id="4cKdPpqF4Yz" role="1MLUbF">
      <node concept="3clFbS" id="4cKdPpqF4Y$" role="2VODD2">
        <node concept="3clFbF" id="4cKdPpqF8Vb" role="3cqZAp">
          <node concept="3JuTUA" id="4cKdPpqF8V5" role="3clFbG">
            <node concept="2c44tf" id="4cKdPpqF9sh" role="3JuZjQ">
              <node concept="3uibUv" id="4cKdPpqF9QL" role="2c44tc">
                <ref role="3uigEE" to="6exd:1bm7a6EXvsP" resolve="TreeForm" />
              </node>
            </node>
            <node concept="2OqwBi" id="4cKdPpqF98e" role="3JuY14">
              <node concept="1PxgMI" id="4cKdPpqF98f" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <ref role="1m5ApE" to="tpee:hqOqwz4" resolve="DotExpression" />
                <node concept="nLn13" id="4cKdPpqF98g" role="1m5AlR" />
              </node>
              <node concept="2qgKlT" id="4cKdPpqF98h" role="2OqNvi">
                <ref role="37wK5l" to="tpek:7GulAc9z0dN" resolve="getOperandType" />
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
</model>

