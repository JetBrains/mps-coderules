<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3e3289bd-0103-48e0-beb3-89796cdeaf7c(samples.fitch.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="6" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="jfgh" ref="r:2003997c-f9a6-418f-99d4-03e1285a3e13(samples.fitch.structure)" />
    <import index="qd7f" ref="r:6e0181fc-40ea-4aea-a8b0-3ba2d104ddef(samples.fitch.behavior)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
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
      </concept>
      <concept id="1147467790433" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyGetter" flags="in" index="Eqf_E" />
      <concept id="1147468365020" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" flags="nn" index="EsrRn" />
      <concept id="5564765827938091039" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Scope" flags="ig" index="3dgokm" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="6702802731807737306" name="canBeChild" index="9Vyp8" />
        <child id="1213098023997" name="property" index="1MhHOB" />
        <child id="1213100494875" name="referent" index="1Mr941" />
      </concept>
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
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
      <concept id="1145572800087" name="jetbrains.mps.lang.smodel.structure.Node_GetPrevSiblingsOperation" flags="nn" index="2Ttrtt" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
      <concept id="1522217801069396578" name="jetbrains.mps.baseLanguage.collections.structure.FoldLeftOperation" flags="nn" index="1MD8d$">
        <child id="1522217801069421796" name="seed" index="1MDeny" />
      </concept>
    </language>
  </registry>
  <node concept="1M2fIO" id="3JXBM6C4nv1">
    <property role="3GE5qa" value="proof" />
    <ref role="1M2myG" to="jfgh:3JXBM6C3UQB" resolve="Node" />
    <node concept="EnEH3" id="3JXBM6C54BH" role="1MhHOB">
      <ref role="EomxK" to="jfgh:3JXBM6C54BE" resolve="sequenceNum" />
      <node concept="Eqf_E" id="3JXBM6C54BJ" role="EtsB7">
        <node concept="3clFbS" id="3JXBM6C54BK" role="2VODD2">
          <node concept="3cpWs8" id="3JXBM6C5wNe" role="3cqZAp">
            <node concept="3cpWsn" id="3JXBM6C5wNf" role="3cpWs9">
              <property role="TrG5h" value="siblingsSize" />
              <node concept="10Oyi0" id="3JXBM6C5wN1" role="1tU5fm" />
              <node concept="2OqwBi" id="3JXBM6C5wNg" role="33vP2m">
                <node concept="2OqwBi" id="3JXBM6C5wNh" role="2Oq$k0">
                  <node concept="EsrRn" id="3JXBM6C5wNi" role="2Oq$k0" />
                  <node concept="2Ttrtt" id="3JXBM6C5wNj" role="2OqNvi" />
                </node>
                <node concept="1MD8d$" id="3JXBM6C5wNk" role="2OqNvi">
                  <node concept="1bVj0M" id="3JXBM6C5wNl" role="23t8la">
                    <node concept="3clFbS" id="3JXBM6C5wNm" role="1bW5cS">
                      <node concept="3clFbF" id="3JXBM6C5wNn" role="3cqZAp">
                        <node concept="3cpWs3" id="3JXBM6C5wNo" role="3clFbG">
                          <node concept="37vLTw" id="3JXBM6C5wNp" role="3uHU7B">
                            <ref role="3cqZAo" node="3JXBM6C5wNv" resolve="s" />
                          </node>
                          <node concept="2OqwBi" id="3JXBM6C5wNq" role="3uHU7w">
                            <node concept="1PxgMI" id="3JXBM6C5wNr" role="2Oq$k0">
                              <property role="1BlNFB" value="true" />
                              <node concept="chp4Y" id="3JXBM6C5wNs" role="3oSUPX">
                                <ref role="cht4Q" to="jfgh:3JXBM6C3UQB" resolve="Node" />
                              </node>
                              <node concept="37vLTw" id="3JXBM6C5wNt" role="1m5AlR">
                                <ref role="3cqZAo" node="6E5fMGvfKOu" resolve="it" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="3JXBM6C5wNu" role="2OqNvi">
                              <ref role="3TsBF5" to="jfgh:3JXBM6C4nuA" resolve="contentSize" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="3JXBM6C5wNv" role="1bW2Oz">
                      <property role="TrG5h" value="s" />
                      <node concept="10Oyi0" id="3JXBM6C5wNw" role="1tU5fm" />
                    </node>
                    <node concept="gl6BB" id="6E5fMGvfKOu" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6E5fMGvfKOv" role="1tU5fm" />
                    </node>
                  </node>
                  <node concept="3cmrfG" id="3JXBM6C5wNz" role="1MDeny">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3JXBM6C5E1D" role="3cqZAp">
            <node concept="3K4zz7" id="3JXBM6C5F0l" role="3clFbG">
              <node concept="37vLTw" id="3JXBM6C5FAv" role="3K4E3e">
                <ref role="3cqZAo" node="3JXBM6C5wNf" resolve="siblingsSize" />
              </node>
              <node concept="3cpWs3" id="3JXBM6C5Niw" role="3K4GZi">
                <node concept="37vLTw" id="3JXBM6C5NT7" role="3uHU7B">
                  <ref role="3cqZAo" node="3JXBM6C5wNf" resolve="siblingsSize" />
                </node>
                <node concept="2OqwBi" id="3JXBM6C5LSR" role="3uHU7w">
                  <node concept="1PxgMI" id="3JXBM6C5JQc" role="2Oq$k0">
                    <property role="1BlNFB" value="true" />
                    <node concept="chp4Y" id="3JXBM6C5Ksw" role="3oSUPX">
                      <ref role="cht4Q" to="jfgh:3JXBM6C3UQB" resolve="Node" />
                    </node>
                    <node concept="2OqwBi" id="3JXBM6C5HCt" role="1m5AlR">
                      <node concept="EsrRn" id="3JXBM6C5Gcn" role="2Oq$k0" />
                      <node concept="1mfA1w" id="3JXBM6C5I7Z" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="3JXBM6C5MFT" role="2OqNvi">
                    <ref role="3TsBF5" to="jfgh:3JXBM6C54BE" resolve="sequenceNum" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3JXBM6C5E1F" role="3K4Cdx">
                <node concept="2OqwBi" id="3JXBM6C5E1G" role="2Oq$k0">
                  <node concept="EsrRn" id="3JXBM6C5E1H" role="2Oq$k0" />
                  <node concept="1mfA1w" id="3JXBM6C5E1I" role="2OqNvi" />
                </node>
                <node concept="1mIQ4w" id="3JXBM6C5E1J" role="2OqNvi">
                  <node concept="chp4Y" id="3JXBM6C5E1K" role="cj9EA">
                    <ref role="cht4Q" to="jfgh:3JXBM6C5urr" resolve="Root" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3JXBM6C4nvv">
    <property role="3GE5qa" value="proof" />
    <ref role="1M2myG" to="jfgh:3JXBM6C4ntZ" resolve="Leaf" />
    <node concept="EnEH3" id="3JXBM6C4nvw" role="1MhHOB">
      <ref role="EomxK" to="jfgh:3JXBM6C4nuA" resolve="contentSize" />
      <node concept="Eqf_E" id="3JXBM6C4nvy" role="EtsB7">
        <node concept="3clFbS" id="3JXBM6C4nvz" role="2VODD2">
          <node concept="3clFbF" id="3JXBM6C4nKA" role="3cqZAp">
            <node concept="3cmrfG" id="3JXBM6C4nK_" role="3clFbG">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3JXBM6C4zzT">
    <property role="3GE5qa" value="proof" />
    <ref role="1M2myG" to="jfgh:3JXBM6C3UQ$" resolve="SubProof" />
    <node concept="EnEH3" id="3JXBM6C4zzU" role="1MhHOB">
      <ref role="EomxK" to="jfgh:3JXBM6C4nuA" resolve="contentSize" />
      <node concept="Eqf_E" id="3JXBM6C4zzW" role="EtsB7">
        <node concept="3clFbS" id="3JXBM6C4zzX" role="2VODD2">
          <node concept="3clFbF" id="3JXBM6C4zP0" role="3cqZAp">
            <node concept="2OqwBi" id="3JXBM6C4AoV" role="3clFbG">
              <node concept="2OqwBi" id="3JXBM6C4$6U" role="2Oq$k0">
                <node concept="EsrRn" id="3JXBM6C4zOZ" role="2Oq$k0" />
                <node concept="3Tsc0h" id="3JXBM6C4$AH" role="2OqNvi">
                  <ref role="3TtcxE" to="jfgh:3JXBM6C3UQ_" resolve="content" />
                </node>
              </node>
              <node concept="1MD8d$" id="3JXBM6C4Dvf" role="2OqNvi">
                <node concept="1bVj0M" id="3JXBM6C4Dvh" role="23t8la">
                  <node concept="3clFbS" id="3JXBM6C4Dvi" role="1bW5cS">
                    <node concept="3clFbF" id="3JXBM6C4EM9" role="3cqZAp">
                      <node concept="3cpWs3" id="3JXBM6C4GzK" role="3clFbG">
                        <node concept="2OqwBi" id="3JXBM6C4H4O" role="3uHU7w">
                          <node concept="37vLTw" id="3JXBM6C4GzU" role="2Oq$k0">
                            <ref role="3cqZAo" node="6E5fMGvfKOw" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="3JXBM6C4Hw1" role="2OqNvi">
                            <ref role="3TsBF5" to="jfgh:3JXBM6C4nuA" resolve="contentSize" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="3JXBM6C4EM8" role="3uHU7B">
                          <ref role="3cqZAo" node="3JXBM6C4Dvj" resolve="s" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTG" id="3JXBM6C4Dvj" role="1bW2Oz">
                    <property role="TrG5h" value="s" />
                    <node concept="10Oyi0" id="3JXBM6C4Ej7" role="1tU5fm" />
                  </node>
                  <node concept="gl6BB" id="6E5fMGvfKOw" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6E5fMGvfKOx" role="1tU5fm" />
                  </node>
                </node>
                <node concept="3cmrfG" id="3JXBM6C4DOa" role="1MDeny">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="5jVx7S22QGW">
    <property role="3GE5qa" value="proof.reasoning" />
    <ref role="1M2myG" to="jfgh:3JXBM6C3Pwi" resolve="Assumption" />
    <node concept="9S07l" id="5jVx7S22QGX" role="9Vyp8">
      <node concept="3clFbS" id="5jVx7S22QGY" role="2VODD2">
        <node concept="3clFbF" id="5jVx7S22QO7" role="3cqZAp">
          <node concept="1Wc70l" id="5jVx7S22S$w" role="3clFbG">
            <node concept="3clFbC" id="5jVx7S22VSB" role="3uHU7w">
              <node concept="3cmrfG" id="5jVx7S22Wl1" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="5jVx7S22T0M" role="3uHU7B">
                <node concept="EsrRn" id="5jVx7S22SJQ" role="2Oq$k0" />
                <node concept="2bSWHS" id="5jVx7S22Tz3" role="2OqNvi" />
              </node>
            </node>
            <node concept="2OqwBi" id="5jVx7S22R3d" role="3uHU7B">
              <node concept="nLn13" id="5jVx7S22QO6" role="2Oq$k0" />
              <node concept="1mIQ4w" id="5jVx7S22Rfk" role="2OqNvi">
                <node concept="chp4Y" id="5jVx7S22RrK" role="cj9EA">
                  <ref role="cht4Q" to="jfgh:3JXBM6C3UQ$" resolve="SubProof" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="5jVx7S230S1">
    <property role="3GE5qa" value="proof.reasoning" />
    <ref role="1M2myG" to="jfgh:3JXBM6C3FsN" resolve="Reference" />
    <node concept="1N5Pfh" id="5jVx7S230S2" role="1Mr941">
      <ref role="1N5Vy1" to="jfgh:3JXBM6C3FuH" resolve="reasoning" />
      <node concept="3dgokm" id="5jVx7S230S6" role="1N6uqs">
        <node concept="3clFbS" id="5jVx7S230S7" role="2VODD2">
          <node concept="3cpWs8" id="5p9vXslDHus" role="3cqZAp">
            <node concept="3cpWsn" id="5p9vXslDHut" role="3cpWs9">
              <property role="TrG5h" value="scope" />
              <node concept="3uibUv" id="5p9vXslDLpO" role="1tU5fm">
                <ref role="3uigEE" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
              </node>
              <node concept="2ShNRf" id="5p9vXslDHuu" role="33vP2m">
                <node concept="YeOm9" id="5p9vXslDHuv" role="2ShVmc">
                  <node concept="1Y3b0j" id="5p9vXslDHuw" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                    <ref role="37wK5l" to="o8zo:4IP40Bi3e_T" resolve="ListScope" />
                    <node concept="2OqwBi" id="5p9vXslDHux" role="37wK5m">
                      <node concept="2OqwBi" id="5p9vXslDHuy" role="2Oq$k0">
                        <node concept="2rP1CM" id="5p9vXslDHuz" role="2Oq$k0" />
                        <node concept="2Xjw5R" id="5p9vXslDHu$" role="2OqNvi">
                          <node concept="1xMEDy" id="5p9vXslDHu_" role="1xVPHs">
                            <node concept="chp4Y" id="5p9vXslDHuA" role="ri$Ld">
                              <ref role="cht4Q" to="jfgh:3JXBM6C3UQB" resolve="Node" />
                            </node>
                          </node>
                          <node concept="1xIGOp" id="5p9vXslDHuB" role="1xVPHs" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="5p9vXslDHuC" role="2OqNvi">
                        <ref role="37wK5l" to="qd7f:5jVx7S20nJ_" resolve="allInScope" />
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="5p9vXslDHuD" role="1B3o_S" />
                    <node concept="3clFb_" id="5p9vXslDHuE" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="getName" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="3Tm1VV" id="5p9vXslDHuF" role="1B3o_S" />
                      <node concept="3uibUv" id="5p9vXslDHuG" role="3clF45">
                        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                      </node>
                      <node concept="37vLTG" id="5p9vXslDHuH" role="3clF46">
                        <property role="TrG5h" value="n" />
                        <node concept="3Tqbb2" id="5p9vXslDHuI" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="5p9vXslDHuJ" role="3clF47">
                        <node concept="3clFbF" id="5p9vXslDHuK" role="3cqZAp">
                          <node concept="2YIFZM" id="5p9vXslDHuL" role="3clFbG">
                            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                            <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                            <node concept="2OqwBi" id="5p9vXslDHuM" role="37wK5m">
                              <node concept="1PxgMI" id="5p9vXslDHuN" role="2Oq$k0">
                                <property role="1BlNFB" value="true" />
                                <node concept="chp4Y" id="5p9vXslDHuO" role="3oSUPX">
                                  <ref role="cht4Q" to="jfgh:3JXBM6C3UQB" resolve="Node" />
                                </node>
                                <node concept="37vLTw" id="5p9vXslDHuP" role="1m5AlR">
                                  <ref role="3cqZAo" node="5p9vXslDHuH" resolve="n" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="5p9vXslDHuQ" role="2OqNvi">
                                <ref role="3TsBF5" to="jfgh:3JXBM6C54BE" resolve="sequenceNum" />
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
          <node concept="3clFbF" id="5jVx7S230V1" role="3cqZAp">
            <node concept="37vLTw" id="5p9vXslDHuR" role="3clFbG">
              <ref role="3cqZAo" node="5p9vXslDHut" resolve="scope" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3w0n0hzhUPi">
    <property role="3GE5qa" value="proof" />
    <ref role="1M2myG" to="jfgh:3w0n0hzgWvH" resolve="AbstractProof" />
    <node concept="EnEH3" id="3JXBM6C4VbE" role="1MhHOB">
      <ref role="EomxK" to="jfgh:3JXBM6C4nuA" resolve="contentSize" />
      <node concept="Eqf_E" id="3JXBM6C4VbG" role="EtsB7">
        <node concept="3clFbS" id="3JXBM6C4VbH" role="2VODD2">
          <node concept="3clFbF" id="3JXBM6C4VsJ" role="3cqZAp">
            <node concept="2OqwBi" id="3JXBM6C4VsQ" role="3clFbG">
              <node concept="2OqwBi" id="3JXBM6C4VsR" role="2Oq$k0">
                <node concept="EsrRn" id="3JXBM6C4VsS" role="2Oq$k0" />
                <node concept="3Tsc0h" id="3JXBM6C4VsT" role="2OqNvi">
                  <ref role="3TtcxE" to="jfgh:3JXBM6C4wQA" resolve="content" />
                </node>
              </node>
              <node concept="1MD8d$" id="3JXBM6C4VsU" role="2OqNvi">
                <node concept="1bVj0M" id="3JXBM6C4VsV" role="23t8la">
                  <node concept="3clFbS" id="3JXBM6C4VsW" role="1bW5cS">
                    <node concept="3clFbF" id="3JXBM6C4VsX" role="3cqZAp">
                      <node concept="3cpWs3" id="3JXBM6C4VsY" role="3clFbG">
                        <node concept="2OqwBi" id="3JXBM6C4VsZ" role="3uHU7w">
                          <node concept="37vLTw" id="3JXBM6C4Vt0" role="2Oq$k0">
                            <ref role="3cqZAo" node="6E5fMGvfKOy" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="3JXBM6C4Vt1" role="2OqNvi">
                            <ref role="3TsBF5" to="jfgh:3JXBM6C4nuA" resolve="contentSize" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="3JXBM6C4Vt2" role="3uHU7B">
                          <ref role="3cqZAo" node="3JXBM6C4Vt3" resolve="s" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTG" id="3JXBM6C4Vt3" role="1bW2Oz">
                    <property role="TrG5h" value="s" />
                    <node concept="10Oyi0" id="3JXBM6C4Vt4" role="1tU5fm" />
                  </node>
                  <node concept="gl6BB" id="6E5fMGvfKOy" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6E5fMGvfKOz" role="1tU5fm" />
                  </node>
                </node>
                <node concept="3cmrfG" id="3JXBM6C4Vt7" role="1MDeny">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

