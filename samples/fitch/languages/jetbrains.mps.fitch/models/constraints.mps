<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3e3289bd-0103-48e0-beb3-89796cdeaf7c(jetbrains.mps.fitch.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="4" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="jfgh" ref="r:2003997c-f9a6-418f-99d4-03e1285a3e13(jetbrains.mps.fitch.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpfp" ref="r:00000000-0000-4000-0000-011c89590519(jetbrains.mps.baseLanguage.regexp.jetbrains.mps.regexp.accessory)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
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
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1147468630220" name="propertyGetter" index="EtsB7" />
        <child id="1212097481299" name="propertyValidator" index="QCWH9" />
      </concept>
      <concept id="1147467790433" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyGetter" flags="in" index="Eqf_E" />
      <concept id="1147468365020" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" flags="nn" index="EsrRn" />
      <concept id="1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" flags="in" index="QB0g5" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213098023997" name="property" index="1MhHOB" />
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
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145572800087" name="jetbrains.mps.lang.smodel.structure.Node_GetPrevSiblingsOperation" flags="nn" index="2Ttrtt" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
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
    <language id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp">
      <concept id="1174482804200" name="jetbrains.mps.baseLanguage.regexp.structure.PlusRegexp" flags="ng" index="1OClNT" />
      <concept id="1174485235885" name="jetbrains.mps.baseLanguage.regexp.structure.UnaryRegexp" flags="ng" index="1OLBAW">
        <child id="1174485243418" name="regexp" index="1OLDsb" />
      </concept>
      <concept id="1174510540317" name="jetbrains.mps.baseLanguage.regexp.structure.InlineRegexpExpression" flags="nn" index="1Qi9sc">
        <child id="1174510571016" name="regexp" index="1QigWp" />
      </concept>
      <concept id="1174512414484" name="jetbrains.mps.baseLanguage.regexp.structure.MatchRegexpStatement" flags="nn" index="1QpiS5">
        <child id="1174512427594" name="body" index="1Qpmdr" />
        <child id="1174512569438" name="expr" index="1QpSPf" />
      </concept>
      <concept id="1174555732504" name="jetbrains.mps.baseLanguage.regexp.structure.PredefinedSymbolClassRegexp" flags="ng" index="1SYyG9">
        <reference id="1174555843709" name="symbolClass" index="1SYXPG" />
      </concept>
      <concept id="1174653354106" name="jetbrains.mps.baseLanguage.regexp.structure.RegexpUsingConstruction" flags="ng" index="1YMW5F">
        <child id="1174653387388" name="regexp" index="1YN4dH" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
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
                                <ref role="3cqZAo" node="3JXBM6C5wNx" resolve="it" />
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
                    <node concept="Rh6nW" id="3JXBM6C5wNx" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="3JXBM6C5wNy" role="1tU5fm" />
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
                            <ref role="3cqZAo" node="3JXBM6C4Dvl" resolve="it" />
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
                  <node concept="Rh6nW" id="3JXBM6C4Dvl" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3JXBM6C4Dvm" role="1tU5fm" />
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
  <node concept="1M2fIO" id="3JXBM6C4VbD">
    <property role="3GE5qa" value="proof" />
    <ref role="1M2myG" to="jfgh:3JXBM6C3Fs$" resolve="Proof" />
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
                            <ref role="3cqZAo" node="3JXBM6C4Vt5" resolve="it" />
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
                  <node concept="Rh6nW" id="3JXBM6C4Vt5" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3JXBM6C4Vt6" role="1tU5fm" />
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
  <node concept="1M2fIO" id="3JXBM6C7aaV">
    <property role="3GE5qa" value="sentence" />
    <ref role="1M2myG" to="jfgh:3JXBM6C3Cn8" resolve="Constant" />
    <node concept="EnEH3" id="3JXBM6C7aaW" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="3JXBM6C7aaY" role="QCWH9">
        <node concept="3clFbS" id="3JXBM6C7aaZ" role="2VODD2">
          <node concept="1QpiS5" id="3JXBM6C7ai7" role="3cqZAp">
            <node concept="1Qi9sc" id="3JXBM6C7ai8" role="1YN4dH">
              <node concept="1OClNT" id="3JXBM6C7eeD" role="1QigWp">
                <node concept="1SYyG9" id="3JXBM6C7emg" role="1OLDsb">
                  <ref role="1SYXPG" to="tpfp:h5SUJUw" resolve="\w" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="3JXBM6C7aia" role="1Qpmdr">
              <node concept="3cpWs6" id="3JXBM6C7aBY" role="3cqZAp">
                <node concept="3clFbT" id="3JXBM6C7aJi" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="1Wqviy" id="3JXBM6C7apv" role="1QpSPf" />
          </node>
          <node concept="3cpWs6" id="3JXBM6C7aYb" role="3cqZAp">
            <node concept="3clFbT" id="3JXBM6C7bdg" role="3cqZAk">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

